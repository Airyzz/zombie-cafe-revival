![test](/src/assets/images/banner.png)
# Zombie Cafe Revival
An effort to reverse engineer and revive the game, reimplementing online services, fixing crashes and adding new content.

Check out [my article](https://airyz.xyz/p/zombie-cafe-revival/) for some more detail in to the technical side of things!

## Building

### Requirements
 - cmake
 - make
 - go
 - apktool
 - jarsigner

### LibZombieCafeExtension
LibZombieCafeExtension is an extra library that applies runtime patches to the games `libZombieCafeAndroid.so`

```bash
cd src/lib/cpp
mkdir build
cd build
cmake ../ -DCMAKE_TOOLCHAIN_FILE=$NDK_HOME/build/cmake/android.toolchain.cmake  -DANDROID_ABI=armeabi-v7a -DANDROID_PLATFORM=android-8

make
```

### Running tools
Part of the build process for this project is running custom tools to convert human readable file structure in to the games expected file formats. 

```bash
go run ./tool/build_tool/ -i src/ -o build/

cp src/lib/cpp/build/libZombieCafeExtension.so ./build/lib/armeabi/libZombieCafeExtension.so

apktool b ./build -o ./build/out/out.apk

jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore debug.keystore -storepass zombiecafe ./build/out/out.apk alias_name

adb install ./build/out/out.apk
```