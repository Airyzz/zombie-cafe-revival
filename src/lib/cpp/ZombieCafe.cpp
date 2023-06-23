#include <jni.h>
#include <android/log.h>
#include <dlfcn.h>

#include <string>

#define LOGI(...) \
  ((void)__android_log_print(ANDROID_LOG_INFO, "zombieCafeAndroid::", __VA_ARGS__))

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_CapcomRenderer_CreateGame(JNIEnv* env,
                                                 jobject, int x, int y, float xScale, float yScale) {
  LOGI("Creating Game");
}

typedef void (*setDeviceModel_t)(JNIEnv* env, jobject object, jstring x);

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_setDeviceModel(JNIEnv* env,
                                                 jobject object, jstring deviceModel) {

  LOGI("Setting device model: %s", env->GetStringUTFChars(deviceModel, 0));

  std::string lib = "libZombieCafeAndroid_original.so";
  void* handle = dlopen(lib.c_str(), RTLD_LAZY);

  if(handle) {
    LOGI("Handle grabbed: OK");
  
    auto p_setDeviceModel = (setDeviceModel_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_setDeviceModel");
    if(p_setDeviceModel != nullptr) {
      LOGI("Grabbed pointer to function: OK");
      LOGI("Calling func");
      p_setDeviceModel(env, object, deviceModel);
    } else {
      LOGI("Grabbed pointer to function: NO!");
    }
  
  } else {
    LOGI("Handle grabbed: NO!!");
  }
}