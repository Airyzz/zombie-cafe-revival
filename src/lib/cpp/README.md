Generate make file:

```
mkdir build
cmake .. -DCMAKE_TOOLCHAIN_FILE=$NDK_HOME/build/cmake/android.toolchain.cmake  -DANDROID_ABI=armeabi-v7a -DANDROID_PLATFORM=android-8
make
```