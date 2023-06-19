## how to build

```bash
apktool b ./src -o out.apk
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore out.apk alias_name
adb install out.apk
```