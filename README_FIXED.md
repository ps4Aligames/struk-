# Ali Games Service - fixed Android project

Perbaikan:
- Launcher activity (`MainActivity`) dipastikan memakai `MAIN` + `LAUNCHER`.
- Ditambahkan launcher icon dan `android:icon`/`android:roundIcon`.
- Nama aplikasi menggunakan `@string/app_name`.
- Workflow GitHub Actions memakai JDK 17 + Gradle 8.7 dan SDK Android 35 yang sudah tersedia di runner; tidak menjalankan `sdkmanager`.
- Build menjalankan `clean assembleDebug` dan memverifikasi `launchable-activity`.

Artifact GitHub Actions: `AliGamesService-debug-apk`
