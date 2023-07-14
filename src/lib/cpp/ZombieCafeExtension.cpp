#include <jni.h>
#include <android/log.h>
#include <dlfcn.h>
#include <unistd.h>
#include <string>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <sys/mman.h>
#include "Memory.h"

#define LOGI(...) \
  ((void)__android_log_print(ANDROID_LOG_INFO, "zombieCafeExtension::", __VA_ARGS__))


typedef jint (*jni_OnLoad)(JavaVM* vm, void* reserved);
JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {
  LOGI("Zombie Cafe Extension Loaded!");
  int base = (int)Memory::getBaseAddress(); 
  
  const char* infoStr = "ZCR - %s\0";
  Memory::memcpyProtected((void*)(base + 0x1a14dc), infoStr, strlen(infoStr) + 1);

                          //http://zombiecafe.capcomcanada.com/updater/%s
  const char* updaterUrl = "https://zc.airyz.xyz/v1/updater/%s\0";
  Memory::memcpyProtected((void*)(base + 0x1a6610), updaterUrl, strlen(updaterUrl) + 1);

                    //http://zombiecafe.capcomcanada.com/x
  const char* xUrl = "https://zc.airyz.xyz/v1/x\0";
  Memory::memcpyProtected((void*)(base + 0x1a839c), xUrl, strlen(xUrl) + 1);

                      //http://zombiecafe.capcomcanada.com/zca
  const char* zcaUrl = "https://zc.airyz.xyz/v1/zca\0";
  Memory::memcpyProtected((void*)(base + 0x1a842c), zcaUrl, strlen(zcaUrl) + 1);


  Memory::setNop((void*)(base + 0x9dee8), 4);
  
  //Nop delete texture (this will cause memory leak, fix this!!!)
  Memory::setNop((void*)(base + 0x13d530), 4);
  Memory::setNop((void*)(base + 0x13d550), 4);
  Memory::setNop((void*)(base + 0x13d9e8), 4);
  Memory::setNop((void*)(base + 0x13d9ee), 4);

  return JNI_VERSION_1_4;
}