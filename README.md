# Ali Games Service - Android APK

Project Android Studio untuk menjalankan `index.html` terbaru sebagai aplikasi WebView.

## Build APK lewat GitHub Actions
1. Upload isi folder project ini ke repository GitHub.
2. Buka **Actions**.
3. Pilih **Build APK**.
4. Klik **Run workflow**.
5. Setelah selesai, download artifact **AliGamesService-debug-apk**.

Workflow sengaja tidak memakai `android-actions/setup-android` karena pada sebagian runner tindakan tersebut dapat gagal pada tahap setup SDK. Workflow menggunakan Android SDK yang sudah tersedia di `ubuntu-latest`, lalu menjalankan `sdkmanager` secara langsung.

## Build di Windows
Jalankan `BUILD_APK_WINDOWS.bat` dari folder project setelah Android Studio/SDK tersedia.
