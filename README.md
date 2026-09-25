# Ali Games Service — GitHub Ready

Aplikasi bon tanda terima service PlayStation untuk **Ali Games Store Bandung**.

## Fitur

- Bon service PlayStation berbasis HTML/CSS/JavaScript.
- Logo Ali Games tertanam langsung di aplikasi.
- Data toko dan WhatsApp sudah disiapkan.
- Form nomor bon, tanggal, pelanggan, WhatsApp, console, biaya, masalah, dan catatan.
- Tanda tangan pelanggan dan teknisi menggunakan canvas.
- Upload foto bukti dari galeri.
- Tombol cetak melalui Android Print Framework.
- Project Android Studio siap dibuka.
- GitHub Actions otomatis membuat **APK debug** setiap push ke `main`/`master` dan menyediakan APK sebagai artifact.

## Struktur

```text
AliGamesService/
├── .github/workflows/build-apk.yml
├── .gitignore
├── app/
│   ├── build.gradle
│   └── src/main/
│       ├── AndroidManifest.xml
│       ├── assets/index.html
│       ├── java/com/aligames/service/MainActivity.java
│       └── res/values/
├── build.gradle
├── gradle.properties
└── settings.gradle
```

## Upload ke GitHub

1. Buat repository baru di GitHub, misalnya `AliGamesService`.
2. Upload **isi folder project ini**, bukan folder ZIP-nya.
3. Pastikan folder `.github/workflows/build-apk.yml` ikut ter-upload.
4. Setelah push ke branch `main` atau `master`, buka tab **Actions** di repository.
5. Pilih workflow **Build APK**.
6. Setelah selesai, buka hasil workflow dan bagian **Artifacts**.
7. Download `AliGamesService-debug-apk` untuk mendapatkan `app-debug.apk`.

Workflow juga bisa dijalankan manual dari **Actions → Build APK → Run workflow**.

## Membuka di Android Studio

1. Buka Android Studio.
2. Pilih **Open** dan pilih folder project ini.
3. Tunggu Gradle Sync selesai.
4. Pilih konfigurasi **Build APK** jika tersedia.
5. Tekan **Run ▶**.
6. APK debug akan berada di:

```text
app/build/outputs/apk/debug/app-debug.apk
```

> Catatan: project ini menggunakan Android Gradle Plugin 8.6.1, compile/target SDK 35, dan Java 17.

## GitHub Actions

Workflow berada di `.github/workflows/build-apk.yml` dan melakukan:

1. Checkout source.
2. Menyiapkan Java 17.
3. Menyiapkan Android SDK.
4. Menginstal Android platform 35 dan Build Tools 35.0.0.
5. Menginstal Gradle 8.7.
6. Menjalankan `assembleDebug`.
7. Mengunggah `app-debug.apk` sebagai artifact.

APK yang dihasilkan adalah **debug APK**, cocok untuk pengujian dan instalasi langsung pada perangkat Android. Untuk rilis Play Store, diperlukan proses signing release dengan keystore yang aman.

## Informasi Toko

**Ali Games Store Bandung**  
Jl. A Yani No. 238, Jaya Plaza Lantai Dasar Blok I No. 10  
WhatsApp: +62895-7086-29977
# bon
