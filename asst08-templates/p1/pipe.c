// This changes the way some includes behave.
// This should stay before any include.
#define _GNU_SOURCE

#include "pipe.h"
#include <sys/wait.h> /* For waitpid */
#include <unistd.h> /* For fork, pipe */
#include <stdlib.h> /* For exit */
#include <stdio.h>
#include <fcntl.h>
#include <errno.h>

#define READ_END  0
#define WRITE_END 1


int run_program(char *file_path, char *argv[])
{

    if ((file_path == NULL) || (argv == NULL)) {
        return -1;
    }

    int fd[2];
    if (pipe(fd) == -1) {
        return -1;
    }

    int child_pid = fork();
    if (child_pid == -1) {
        close(fd[READ_END]);
        close(fd[WRITE_END]);
        return -1;
    } else if (child_pid == 0) {

        // We only reach this point as a result of failure from execvp
        close(fd[READ_END]);

        // Replace program
        execvp(file_path, argv);

        if (write(fd[WRITE_END], &errno, sizeof(errno)) < 0) {
            exit(1);
        }

        printf("execvp failure\n");

        exit(0);

        printf("exit failed?\n");
    } else {

        close(fd[WRITE_END]);

        int status, hadError = 0;

        int waitError = waitpid(child_pid, &status, 0);
        if (waitError == -1) {
            // Error while waiting for child.
            hadError = 1;
        } else if (!WIFEXITED(status)) {
            // Our child exited with another problem (e.g., a segmentation fault)
            // We use the error code ECANCELED to signal this.
            hadError = 1;
            errno = ECANCELED;
        } else if (read(fd[READ_END], &errno, sizeof(errno)) > 0) {
            // The child sent us an error number on the pipe. We directly write
            // the error code to errno.
            hadError = 1;

        }

        // Clean up the leftover read end of the pipe. At this point errno is
        // set to the value we would like to present to the caller of this
        // function. Since the close call could change errno, we save and
        // restore it.
        const int oldError = errno;
        close(fd[READ_END]);
        errno = oldError;

        return hadError ? -1 : WEXITSTATUS(status);
    }
}
