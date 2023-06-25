#include <jni.h>
#include <android/log.h>
#include <dlfcn.h>
#include <unistd.h>
#include <string>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <sys/mman.h>

#define LOGI(...) \
  ((void)__android_log_print(ANDROID_LOG_INFO, "zombieCafeExtension::", __VA_ARGS__))

#define LIBRARY_ADDRESS_BY_HANDLE(dlhandle) ((NULL == dlhandle) ? NULL : (void*)*(size_t const*)(dlhandle))


#define _SYS_PAGE_SIZE_ (sysconf(_SC_PAGE_SIZE))
#define _PAGE_START_OF_(x) ((uintptr_t)x & ~(uintptr_t)(_SYS_PAGE_SIZE_ - 1))
#define _PAGE_END_OF_(x, len) (_PAGE_START_OF_((uintptr_t)x + len - 1))
#define _PAGE_LEN_OF_(x, len) (_PAGE_END_OF_(x, len) - _PAGE_START_OF_(x) + _SYS_PAGE_SIZE_)
#define _PAGE_OFFSET_OF_(x) ((uintptr_t)x - _PAGE_START_OF_(x))

int setAddressProtection(void *address, size_t length, int protection)
    {
        uintptr_t pageStart = _PAGE_START_OF_(address);
        uintptr_t pageLen = _PAGE_LEN_OF_(address, length);
        int ret = mprotect(reinterpret_cast<void *>(pageStart), pageLen, protection);
        return ret;
    }

typedef jint (*jni_OnLoad)(JavaVM* vm, void* reserved);
JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {
  LOGI("JNI_OnLoad CALLED!!!!!");

  void* handle = dlopen("libZombieCafeAndroid.so", RTLD_LAZY);
  void* p_onLoad = dlsym(handle, "JNI_OnLoad");
  

  Dl_info info;
  
  dladdr(p_onLoad, &info);
  int baseAddress = (int)info.dli_fbase;

  LOGI("Info Address: %x", info.dli_fbase);
  LOGI("Read at address: %s", (char*)(info.dli_fbase));


  
  void* address = (void*)(baseAddress + 0x1a14dc);
  LOGI("Reading with offset: %s", (char*)address);
  LOGI("Page address: %x", _PAGE_START_OF_(address));

  
  int protection_result = setAddressProtection(address, 10, PROT_READ | PROT_WRITE | PROT_EXEC);
  LOGI("result: %d", protection_result);
  LOGI("err: %d", errno);


  const char source[] = "Zombie Cafe Revival!\0";
  std::memcpy(address, &source, 21);

  return JNI_VERSION_1_4;
}