## how to build

```bash
apktool b ./src -o ./out/out.apk && jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore debug.keystore -storepass zombiecafe ./out/out.apk alias_name && adb install ./out/out.apk
```