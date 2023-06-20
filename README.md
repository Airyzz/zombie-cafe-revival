## how to build

```bash
go run ./tool/build_tool/ -i src/ -o build/ && \
apktool b ./build -o ./build/out/out.apk && \
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore debug.keystore -storepass zombiecafe ./build/out/out.apk alias_name && \
adb install ./build/out/out.apk
```