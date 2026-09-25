@echo off
setlocal
cd /d "%~dp0"
echo === Ali Games Service - Build APK ===
if not exist "%ANDROID_HOME%" if not exist "%ANDROID_SDK_ROOT%" echo Android SDK belum terdeteksi. Buka project ini sekali di Android Studio, lalu coba lagi.
if exist "%~dp0gradlew.bat" (
  call "%~dp0gradlew.bat" assembleDebug
) else (
  echo Gradle Wrapper belum tersedia. Cara termudah: buka folder ini di Android Studio lalu Build ^> Build APK(s).
  pause
  exit /b 1
)
if exist "app\build\outputs\apk\debug\app-debug.apk" (
 echo.
 echo APK berhasil dibuat:
 echo %~dp0app\build\outputs\apk\debug\app-debug.apk
) else (
 echo Build selesai tetapi APK tidak ditemukan.
)
pause
