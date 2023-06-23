#include <jni.h>
#include <android/log.h>
#include <dlfcn.h>

#include <string>

#define LOGI(...) \
  ((void)__android_log_print(ANDROID_LOG_INFO, "zombieCafeAndroid::", __VA_ARGS__))

void* libHandle = nullptr;

void* getLibHandle() {
  if(libHandle  == nullptr) {
    libHandle = dlopen("libZombieCafeAndroid_original.so", RTLD_LAZY);
    LOGI("Successfully loaded libZombieCafeAndroid_original.so");
  }
  
  if(libHandle == nullptr) {
    LOGI("Failed to get handle for libZombieCafeAndroid_original.so");
  }

  return libHandle;
}

typedef jint (*jni_OnLoad)(JavaVM* vm, void* reserved);
JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {
  LOGI("JNI_OnLoad CALLED!!!!!");
  void* handle = getLibHandle();

  if(handle) {
    auto p_onLoad = (jni_OnLoad)dlsym(handle, "JNI_OnLoad");
    if(p_onLoad != nullptr) {
      return p_onLoad(vm, reserved);
    } else {
      LOGI("Failed to get pointer for func createGame");
    }
  }
}

typedef void (*CapcomRenderer_createGame_t)(JNIEnv* env, jobject object, int x, int y, float xScale, float yScale);
extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_CapcomRenderer_CreateGame(JNIEnv* env, jobject object, int x, int y, float xScale, float yScale) {
  LOGI("Calling CapcomRenderer_CreateGame");
  void* handle = getLibHandle();
  if(handle) {
    auto p_createGame = (CapcomRenderer_createGame_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_CapcomRenderer_CreateGame");
    if(p_createGame != nullptr) {
      p_createGame(env, object, x, y, xScale, yScale);
    } else {
      LOGI("Failed to get pointer for func createGame");
    }
  
  }

  LOGI("Finished Calling CapcomRenderer_CreateGame");
}

typedef void (*ZombieCafeAndroid_setDeviceModel_t)(JNIEnv* env, jobject object, jstring x);
extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_setDeviceModel(JNIEnv* env, jobject object, jstring deviceModel) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_setDeviceModel = (ZombieCafeAndroid_setDeviceModel_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_setDeviceModel");
    if(p_setDeviceModel != nullptr) {
      p_setDeviceModel(env, object, deviceModel);
    } else {
      LOGI("Failed to get pointer for func setDeviceModel");
    }
  
  } else {
    LOGI("Failed to get pointer for lib");
  }
}

typedef void (*SoundManager_setEnabled_t)(JNIEnv* env, jobject object, bool enabled);
extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_SoundManager_setEnabled(JNIEnv* env, jobject object, bool enabled) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_setEnabled = (SoundManager_setEnabled_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_SoundManager_setEnabled");
    if(p_setEnabled != nullptr) {
      p_setEnabled(env, object, enabled);
    } else {
      LOGI("Failed to get pointer for func SoundManager_setEnabled");
    }
  
  } else {
    LOGI("Failed to get pointer for lib");
  }
}


typedef void (*CapcomRenderer_render_t)(JNIEnv* env, jobject object, int delta);
CapcomRenderer_render_t renderFunc;
extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_CapcomRenderer_render(JNIEnv* env, jobject object, int delta) {

  if(renderFunc != nullptr) {
    renderFunc(env, object, delta);
    return;
  }
  
  void* handle = getLibHandle();
  if(handle) {
    renderFunc = (CapcomRenderer_render_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_CapcomRenderer_render");
    if(renderFunc != nullptr) {
      LOGI("Rendering about to call func: %x", renderFunc);
      renderFunc(env, object, delta);
      LOGI("Rendering func called");
    } else {
      LOGI("Failed to get pointer for func CapcomRenderer_render");
    }
  
  } else {
    LOGI("Failed to get pointer for lib");
  }
}

typedef int (*ZombieCafeAndroid_CheckIfInHelpScreen_t)(JNIEnv* env, jobject object);
extern "C" JNIEXPORT int JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_CheckIfInHelpScreen(JNIEnv* env, jobject object) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_setEnabled = (ZombieCafeAndroid_CheckIfInHelpScreen_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_CheckIfInHelpScreen");
    if(p_setEnabled != nullptr) {
      return p_setEnabled(env, object);
    } else {
      LOGI("Failed to get pointer for func ZombieCafeAndroid_CheckIfInHelpScreen_t");
    }
  
  } else {
    LOGI("Failed to get pointer for lib");
  }
}