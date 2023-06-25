#include <jni.h>
#include <android/log.h>
#include <dlfcn.h>

#include <string>

#define LOGI(...) \
  ((void)__android_log_print(ANDROID_LOG_INFO, "zombieCafeExtension::", __VA_ARGS__))

typedef jint (*jni_OnLoad)(JavaVM* vm, void* reserved);
JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {
  LOGI("JNI_OnLoad CALLED!!!!!");
  return JNI_VERSION_1_4;
}