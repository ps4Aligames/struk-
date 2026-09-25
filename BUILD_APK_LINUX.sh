#!/bin/sh
cd "$(dirname "$0")"
if [ -x ./gradlew ]; then ./gradlew assembleDebug; else echo "Buka project di Android Studio lalu Build > Build APK(s)."; exit 1; fi
printf '\nAPK: %s\n' "$(pwd)/app/build/outputs/apk/debug/app-debug.apk"
