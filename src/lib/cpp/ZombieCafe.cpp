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

typedef void (*voidFunc_t)(JNIEnv* env, jobject object);
void genericVoidCall(JNIEnv* env, jobject object, const char* funcName) {
  LOGI("\t\t\tCalling hooked function: %s", funcName);
  void* handle = getLibHandle();
  if(handle) {
    auto func = (voidFunc_t)dlsym(handle, funcName);
    if(func != nullptr) {
      func(env, object);
    } else {
      LOGI("Failed to get pointer for func %s", funcName);
    }
  } else {
    LOGI("Failed to get pointer for lib");
  }
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_DialogCallBack(JNIEnv* env, jobject object) {
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_DialogCallBack");
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_ClearDialogFlag(JNIEnv* env, jobject object) {
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_ClearDialogFlag");
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_InitMethodCalls(JNIEnv* env, jobject object) {
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_InitMethodCalls");
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_ReloadTask_reloadTextures(JNIEnv* env, jobject object) {
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_ReloadTask_reloadTextures");
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_SmurfsRenderer_setTexture(JNIEnv* env, jobject object) {
  LOGI("SMURFS RENDERER SET TEXTYRE CALL");
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_SmurfsRenderer_setTexture");
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_WatchedTrailer(JNIEnv* env, jobject object) {
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_WatchedTrailer");
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_OnFriendScreen(JNIEnv* env, jobject object) {
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_OnFriendScreen");
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_updateAccelerometer(JNIEnv* env, jobject object) {
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_updateAccelerometer");
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_deviceShaken(JNIEnv* env, jobject object) {
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_deviceShaken");
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_pause(JNIEnv* env, jobject object) {
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_deviceShaken");
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_SmurfsGLSurfaceView_DebugGame(JNIEnv* env, jobject object) {
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_SmurfsGLSurfaceView_DebugGame");
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_StartNotifications(JNIEnv* env, jobject object) {
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_StartNotifications");
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_FacebookCallback(JNIEnv* env, jobject object) {
  genericVoidCall(env, object, "Java_com_capcom_zombiecafeandroid_FacebookCallback");
}



typedef jint (*jni_OnLoad)(JavaVM* vm, void* reserved);
JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {
  LOGI("JNI_OnLoad CALLED!!!!!");
  void* handle = getLibHandle();

  if(handle) {
    auto p_onLoad = (jni_OnLoad)dlsym(handle, "JNI_OnLoad");
    if(p_onLoad != nullptr) {
      JNIEnv* env;
      vm->GetEnv((void**)&env, JNI_VERSION_1_4);

      LOGI("Got environment: %x", env);

      jclass cls = env->FindClass("com/capcom/zombiecafeandroid/CC_Android");
  
      LOGI("Got class: %x", cls);

      // jmethodID id = env->GetMethodID(cls, "fromNative_loadTexture", "(Ljava/lang/String;Z)[I");
      // LOGI("Got method ID: %x", id);

      return p_onLoad(vm, reserved);
    } else {
      LOGI("Failed to get pointer for func JNI_OnLoad");
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

  return 0;
}

typedef jboolean (*ZombieCafeAndroid_CheckDoneLoading_t)(JNIEnv* env, jobject object);
extern "C" JNIEXPORT jboolean JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_CheckDoneLoading(JNIEnv* env, jobject object) {
  void* handle = getLibHandle();
  LOGI("Calling func ZombieCafeAndroid_CheckDoneLoading_t");
  if(handle) {
    auto p_CheckDoneLoading = (ZombieCafeAndroid_CheckDoneLoading_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_CheckDoneLoading");
    if(p_CheckDoneLoading != nullptr) {
      return p_CheckDoneLoading(env, object);
    } else {
      LOGI("Failed to get pointer for func ZombieCafeAndroid_CheckDoneLoading_t");
    }
  
  } else {
    LOGI("Failed to get pointer for lib");
  }

  return 0;
}

typedef void (*ZombieCafeAndroid_mouseDown_t)(JNIEnv* env, jobject object, float f2, float f3, int i3);
extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_mouseDown(JNIEnv* env, jobject object, float f2, float f3, int i3) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_mouseDown = (ZombieCafeAndroid_mouseDown_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_mouseDown");
    if(p_mouseDown != nullptr) {
      p_mouseDown(env, object, f2, f3, i3);
    } else {
      LOGI("Failed to get pointer for func ZombieCafeAndroid_mouseDown_t");
    }
  } else {
    LOGI("Failed to get pointer for lib");
  }
}

typedef void (*ZombieCafeAndroid_mouseUp_t)(JNIEnv* env, jobject object, float f2, float f3, int i3);
extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_mouseUp(JNIEnv* env, jobject object, float f2, float f3, int i3) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_mouseDown = (ZombieCafeAndroid_mouseUp_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_mouseUp");
    if(p_mouseDown != nullptr) {
      p_mouseDown(env, object, f2, f3, i3);
    } else {
      LOGI("Failed to get pointer for func ZombieCafeAndroid_mouseUp_t");
    }
  } else {
    LOGI("Failed to get pointer for lib");
  }
}

typedef void (*ZombieCafeAndroid_mouseMove_t)(JNIEnv* env, jobject object, void* fArray, int i2);
extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_mouseMove(JNIEnv* env, jobject object, void* fArray, int i2) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_mouseMove = (ZombieCafeAndroid_mouseMove_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_mouseMove");
    if(p_mouseMove != nullptr) {
      p_mouseMove(env, object, fArray, i2);
    } else {
      LOGI("Failed to get pointer for func ZombieCafeAndroid_mouseMove_t");
    }
  } else {
    LOGI("Failed to get pointer for lib");
  }
}

typedef jboolean (*ZombieCafe_HandleBackButton_t)(JNIEnv* env, jobject object);
extern "C" JNIEXPORT jboolean JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_HandleBackButton(JNIEnv* env, jobject object) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_func = (ZombieCafe_HandleBackButton_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_HandleBackButton");
    if(p_func != nullptr) {
      return p_func(env, object);
    } else {
      LOGI("Failed to get pointer for func ZombieCafe_HandleBackButton_t");
    }
  } else {
    LOGI("Failed to get pointer for lib");
  }
  return 0;
}

typedef void (*NetworkTask_NewRequestServerCallback_t)(JNIEnv* env, jobject object, jboolean b, jbyteArray arr, int i, int i2);
extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_NetworkTask_NewRequestServerCallback(JNIEnv* env, jobject object, jboolean b, jbyteArray arr, int i, int i2) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_func = (NetworkTask_NewRequestServerCallback_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_NetworkTask_NewRequestServerCallback");
    if(p_func != nullptr) {
      p_func(env, object, b, arr, i, i2);
    } else {
      LOGI("Failed to get pointer for func NetworkTask_NewRequestServerCallback_t");
    }
  } else {
    LOGI("Failed to get pointer for lib");
  }
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_NetworkTaskPost_NewRequestServerCallback(JNIEnv* env, jobject object, jboolean b, jbyteArray arr, int i, int i2) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_func = (NetworkTask_NewRequestServerCallback_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_NetworkTaskPost_NewRequestServerCallback");
    if(p_func != nullptr) {
      p_func(env, object, b, arr, i, i2);
    } else {
      LOGI("Failed to get pointer for func Java_com_capcom_zombiecafeandroid_NetworkTaskPost_NewRequestServerCallback");
    }
  } else {
    LOGI("Failed to get pointer for lib");
  }
}

extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_URLManager_NewRequestServerCallback(JNIEnv* env, jobject object, jboolean b, jbyteArray arr, int i, int i2) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_func = (NetworkTask_NewRequestServerCallback_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_URLManager_NewRequestServerCallback");
    if(p_func != nullptr) {
      p_func(env, object, b, arr, i, i2);
    } else {
      LOGI("Failed to get pointer for func Java_com_capcom_zombiecafeandroid_URLManager_NewRequestServerCallback");
    }
  } else {
    LOGI("Failed to get pointer for lib");
  }
}

typedef void (*URLManager_NewRequestCallback_t)(JNIEnv* env, jobject object, jbyteArray arr, int i);
extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_URLManager_NewRequestCallback(JNIEnv* env, jobject object, jbyteArray arr, int i) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_func = (URLManager_NewRequestCallback_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_URLManager_NewRequestCallback");
    if(p_func != nullptr) {
      p_func(env, object, arr, i);
    } else {
      LOGI("Failed to get pointer for func Java_com_capcom_zombiecafeandroid_URLManager_NewRequestCallback");
    }
  } else {
    LOGI("Failed to get pointer for lib");
  }
}


typedef void (*ZombieCafe_PurchaseToxin_t)(JNIEnv* env, jobject object, int i);
extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_PurchaseAndroidToxin(JNIEnv* env, jobject object, int i) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_func = (ZombieCafe_PurchaseToxin_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_PurchaseAndroidToxin");
    if(p_func != nullptr) {
      p_func(env, object, i);
    } else {
      LOGI("Failed to get pointer for func Java_com_capcom_zombiecafeandroid_ZombieCafeAndroid_PurchaseAndroidToxin");
    }
  } else {
    LOGI("Failed to get pointer for lib");
  }
}

typedef void (*CapcomFacebook_onFacebook_t)(JNIEnv* env, jobject object, jboolean i);
extern "C" JNIEXPORT void JNICALL
Java_com_capcom_zombiecafeandroid_CapcomFacebook_onFacebook(JNIEnv* env, jobject object, int i) {
  void* handle = getLibHandle();
  if(handle) {
    auto p_func = (CapcomFacebook_onFacebook_t)dlsym(handle, "Java_com_capcom_zombiecafeandroid_CapcomFacebook_onFacebook");
    if(p_func != nullptr) {
      p_func(env, object, i);
    } else {
      LOGI("Failed to get pointer for func Java_com_capcom_zombiecafeandroid_CapcomFacebook_onFacebook");
    }
  } else {
    LOGI("Failed to get pointer for lib");
  }
}