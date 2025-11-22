#define _GNU_SOURCE
#include <dlfcn.h>
#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <unistd.h>

int memcmp(const void *s1, const void *s2, size_t n) {
    static int (*real_memcmp)(const void *, const void *, size_t) = NULL;
    if (!real_memcmp) {
        real_memcmp = dlsym(RTLD_NEXT, "memcmp");
    }
    static int depth = 0;
    depth++;
    if (depth == 1) {
        fprintf(stderr, "memcmp n=%zu\n", n);
        const unsigned char *a = s1;
        const unsigned char *b = s2;
        fprintf(stderr, "A: ");
        for (size_t i = 0; i < n; i++) {
            fprintf(stderr, "%02x", a[i]);
        }
        fprintf(stderr, "\nB: ");
        for (size_t i = 0; i < n; i++) {
            fprintf(stderr, "%02x", b[i]);
        }
        fprintf(stderr, "\n");
        fflush(stderr);
    }
    depth--;
    return real_memcmp(s1, s2, n);
}
