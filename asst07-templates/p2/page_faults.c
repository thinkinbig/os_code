#define _POSIX_C_SOURCE 200112L
#include "page_faults.h"
#include <assert.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>

typedef enum {
    // A zeroed memory page.
    VMA_TYPE_NULL,
    // A memory mapped file.
    VMA_TYPE_FILE
} VMAType;

typedef struct {
    VMAType type;

    uint32_t virtualStart;
    uint32_t length;

    ReadWrite accessMode;
    PrivilegeLevel privileges;

    // The file name (only for type == VMA_TYPE_FILE)
    const char* fileName;
} VMA;

static VMA _vmas[] = {
    { .type = VMA_TYPE_NULL,
      .virtualStart = 0x10000,
      .length = 0x8000,
      .accessMode = ACCESS_WRITE,
      .privileges = USER_MODE },
    { .type = VMA_TYPE_FILE,
      .virtualStart = 0x30000,
      .length = 0x8000,
      .accessMode = ACCESS_READ,
      .privileges = USER_MODE,
      .fileName = "/tmp/tmpfile" },
    { .type = VMA_TYPE_FILE,
      .virtualStart = 0x8563000,
      .length = 0x3000,
      .accessMode = ACCESS_WRITE,
      .privileges = KERNEL_MODE,
      .fileName = "/kernel" },
};

// Returns the VMA for the specified address. Returns NULL if the address is
// not within a VMA.
VMA* _getVMA(uint32_t address)
{
    const size_t nvmas = sizeof(_vmas) / sizeof(VMA);
    for (size_t i = 0; i < nvmas; ++i) {
        if ((_vmas[i].virtualStart <= address) &&
            (address < _vmas[i].virtualStart + _vmas[i].length)) {
            return &_vmas[i];
        }
    }

    return NULL;
}

// (Pseudo) Returns the address of a zeroed memory page.
uint32_t _getZeroedPage()
{
    static uint32_t physicalAddressCounter = 0x10000;

    physicalAddressCounter += 0x1000;
    return physicalAddressCounter;
}

// (Pseudo) Returns the address of the page which contains the requested file
// contents.
uint32_t _getFilePage(const char* fileName, uint32_t inFileOffset)
{
    assert((inFileOffset & OFFSET_MASK) == 0);

    if (!strcmp("/tmp/tmpfile", fileName)) {
        return 0x3740000 + inFileOffset;
    } else if (!strcmp("/kernel", fileName)) {
        return 0x1300000 + inFileOffset;
    } else {
        printf("The file is not mapped: %s\n", fileName);
        return 0;
    }
}

// (Pseudo) Stores a page on disk and returns the new disk address.
uint32_t _storeOnDisk(uint32_t physAddress)
{
    assert((physAddress & OFFSET_MASK) == 0);
    static uint32_t diskBlockCounter = 0x1ff000;

    diskBlockCounter += 0x1000;
    return diskBlockCounter;
}

// (Pseudo) Loads a block from the disk to a memory page and returns
// the physical address.
uint32_t _loadFromDisk(uint32_t diskAddress)
{
    assert((diskAddress & OFFSET_MASK) == 0);
    // Assuming that we do not that many swap operations in our test code.
    assert(0x200000 <= diskAddress && diskAddress < 0x280000);
    static uint32_t memoryAddressCounter = 0x61f000;

    memoryAddressCounter += 0x1000;
    return memoryAddressCounter;
}

// Called whenever an access to a non-present page occurs. The handler
// should not be called for access violations.
int handlePageFault(uint32_t virtualBase, uint32_t pte)
{
    assert(_getOffset(virtualBase) == 0);
    assert(!(pte & PAGE_PRESENT_MASK));

    // ----------------
    // Update the page table entry so it can be translated by the MMU
    // (if access is valid). Return 1 on success, -1 on any error, and 0 if
    // the accessed address is not part of a VMA and thus invalid.
    // ----------------

    if (pte & PAGE_SWAPPED_MASK) {
        // The page is swapped to disk. Load it.
        uint32_t diskAddress  = _getVirtualBase(pte);
        uint32_t physicalBase = _loadFromDisk(diskAddress);

        // Set the page table entry to the physical address to where
        // we loaded the block from disk.
        pte = physicalBase | (pte & PRESERVED_BITS_ON_SWAP) | PAGE_PRESENT_MASK;
        _setPte(virtualBase, pte);

        return 1;
    }


    VMA *vma = _getVMA(virtualBase);
    if (vma) {
        uint32_t physicalBase;
        switch (vma->type) {
            case VMA_TYPE_NULL:
                physicalBase = _getZeroedPage();
                break;

            case VMA_TYPE_FILE: {
                uint32_t fileOffset = virtualBase - vma->virtualStart;
                physicalBase = _getFilePage(vma->fileName, fileOffset);
                break;
            }

            default:
                return -1;
        }

        // Since we do not have a pte with correct permissions for this page
        // we create a fresh one with mapPage.
        mapPage(virtualBase, physicalBase, vma->accessMode, vma->privileges);

        return 1;
    }

    return 0;
}

int swapOut(uint32_t virtualBase)
{
    if (_getOffset(virtualBase) != 0) {
        return -1;
    }

    // ----------------
    // Swap out the page to disk with _storeOnDisk(). Save the disk offset in
    // the PTE. Return 0 on success, -1 otherwise.
    // ----------------
    uint32_t pte = _getPte(virtualBase);

    if (!(pte & PAGE_PRESENT_MASK)) {
        return -1;
    }

    assert(!(pte & PAGE_SWAPPED_MASK));

    uint32_t physicalBase = _getVirtualBase(pte);
    uint32_t diskAddress = _storeOnDisk(physicalBase);

    // We store the disk address in the page table entry. The entry is not
    // present, so our MMU will ignore the physical address part of the PTE.
    // We preserve the access bits, so they do not need to be restored later.
    pte = diskAddress | PAGE_SWAPPED_MASK | (pte & PRESERVED_BITS_ON_SWAP);
    _setPte(virtualBase, pte);

    return 0;
}
