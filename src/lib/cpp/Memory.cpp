#include "Memory.h"
#include <dlfcn.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdlib.h>
#include <cstdint>
#include <cstring>
#include <android/log.h>

#define LOGI(...) \
  ((void)__android_log_print(ANDROID_LOG_INFO, "zombieCafeExtension Memory::", __VA_ARGS__))



namespace Memory {
    
    #define LIBRARY_ADDRESS_BY_HANDLE(dlhandle) ((NULL == dlhandle) ? NULL : (void*)*(size_t const*)(dlhandle))
    #define _SYS_PAGE_SIZE_ (sysconf(_SC_PAGE_SIZE))
    #define _PAGE_START_OF_(x) ((uintptr_t)x & ~(uintptr_t)(_SYS_PAGE_SIZE_ - 1))
    #define _PAGE_END_OF_(x, len) (_PAGE_START_OF_((uintptr_t)x + len - 1))
    #define _PAGE_LEN_OF_(x, len) (_PAGE_END_OF_(x, len) - _PAGE_START_OF_(x) + _SYS_PAGE_SIZE_)
    #define _PAGE_OFFSET_OF_(x) ((uintptr_t)x - _PAGE_START_OF_(x))

    void* getBaseAddress() {
        void* handle = dlopen("libZombieCafeAndroid.so", RTLD_LAZY);
        void* p_onLoad = dlsym(handle, "JNI_OnLoad");
        Dl_info info;
  
        dladdr(p_onLoad, &info);
        return info.dli_fbase;
    }

    bool setProtection(void* address, size_t length, int protection) {
        uintptr_t pageStart = _PAGE_START_OF_(address);
        uintptr_t pageLen = _PAGE_LEN_OF_(address, length);
        int ret = mprotect(reinterpret_cast<void *>(pageStart), pageLen, protection);
        return ret == 0;
    }

    bool setNop(void* address, size_t length) {
        void* buf = malloc(length);
        for(int i = 0; i < length; i += 1) {
            char byte = i % 2 == 0 ? 0x00 : 0xBf;
            LOGI("Filling nop: %x", (int)byte);
            *(char*)(((int)buf) + i) = byte;
        }   

        LOGI("Created nop: %x", *(int*)buf);

        setProtection(address, length, PROT_READ | PROT_WRITE | PROT_EXEC);
        std::memcpy(address, buf, length);

        return true;
    }   

    void *memcpyProtected(void * to, const void * from, size_t len) {
        setProtection(to, len, PROT_READ | PROT_WRITE | PROT_EXEC);
        return std::memcpy(to, from, len);
    }
}