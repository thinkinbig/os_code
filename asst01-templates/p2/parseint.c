#include "parseint.h"
#include <stddef.h> // For NULL

/*
 * Returns the value of c or -1 on error
 */
int parseDecimalChar(char c)
{
    if (('0' <= c) && (c <= '9')) {
        return c - '0';
    } else {
        return -1;
    }
}

/*
 * Parses a non-negative integer, interpreted as octal when starting with 0,
 * decimal otherwise. Returns -1 on error.
 */
int parseInt(char *string)
{
    int radix;
    int value = 0;
    int digit;

    if ((string == NULL) || (!*string)) {
        // A null pointer cannot be converted.
        // An empty string is not a number.
        return -1;
    }

    radix = (*string == '0') ? 8 : 10;
    while (*string) {
        value *= radix;
        digit = parseDecimalChar(*string);
        if ((digit < 0) || (digit >= radix)) {
            return -1;
        }
        value += digit;
        string++;
    }

    return value;
}
