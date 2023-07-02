#include <unistd.h>

namespace Memory {
    void* getBaseAddress();
    bool setProtection(void* address, size_t length, int protection);
    bool setNop(void* address, size_t length);
    void *memcpyProtected(void *, const void *, size_t);
}
