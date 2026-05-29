# 💰 KasWarga — Sistem Manajemen Keuangan RT/RW

<div align="center">

![KasWarga Banner](https://img.shields.io/badge/KasWarga-v1.0.0-4CAF50?style=for-the-badge&logo=php&logoColor=white)
![PHP](https://img.shields.io/badge/PHP-8.0+-777BB4?style=for-the-badge&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-MariaDB_10.4+-00758F?style=for-the-badge&logo=mysql&logoColor=white)
![XAMPP](https://img.shields.io/badge/XAMPP-Windows-FB7A24?style=for-the-badge&logo=xampp&logoColor=white)
![License](https://img.shields.io/badge/License-Akademik-blue?style=for-the-badge)

**Aplikasi web berbasis PHP & MySQL untuk mengelola keuangan kas warga RT/RW secara modern, transparan, dan terorganisir.**

[🚀 Mulai Instalasi](#-instalasi) · [📖 Dokumentasi](#-cara-penggunaan) · [🐛 Troubleshooting](#-troubleshooting) · [🤝 Kontribusi](#-kontribusi)

</div>

---

## 📋 Daftar Isi

- [✨ Fitur Utama](#-fitur-utama)
- [🔧 Kebutuhan Sistem](#-kebutuhan-sistem)
- [📦 Instalasi](#-instalasi)
- [🗂️ Struktur Folder](#️-struktur-folder)
- [👥 Role & Alur Pengguna](#-role--alur-pengguna)
- [🚨 Troubleshooting](#-troubleshooting)
- [🤝 Kontribusi](#-kontribusi)
- [📄 Lisensi](#-lisensi)

---

## ✨ Fitur Utama

| Fitur | Deskripsi |
|-------|-----------|
| 📊 **Dashboard Kas** | Ringkasan saldo, total pemasukan & pengeluaran, grafik bulanan dan tahunan |
| 💳 **Manajemen Iuran** | Iuran rutin & non-rutin lengkap dengan upload bukti pembayaran |
| 📒 **Catatan Kas** | Pemasukan dan pengeluaran terintegrasi dengan laporan |
| 📈 **Laporan** | Laporan bulanan dan tahunan kas warga yang dapat dicetak |
| 🔐 **Manajemen Role** | Ketua, Bendahara, Sekretaris, dan Warga dengan hak akses berbeda |
| ✅ **Verifikasi Pembayaran** | Sekretaris dapat memverifikasi bukti pembayaran warga |

---

## 🔧 Kebutuhan Sistem

```
✅ XAMPP (Apache + MySQL)
✅ PHP >= 8.0
✅ MariaDB >= 10.4
✅ Browser modern (Chrome / Edge / Firefox terbaru)
✅ Sistem Operasi: Windows
```

> ⚠️ **Catatan:** Aplikasi dikembangkan di lingkungan Windows dengan XAMPP. Penggunaan di Linux hosting memerlukan penyesuaian permission folder.

---

## 📦 Instalasi

### Langkah 1 — Clone atau Download Project

```bash
# Clone via Git
git clone https://github.com/username/kaswarga.git C:\xampp\htdocs\kaswarga

# atau extract file ZIP ke:
C:\xampp\htdocs\kaswarga
```

Pastikan struktur akhir seperti berikut:

```
C:\xampp\htdocs\kaswarga\
│
├── 📁 kaswarga\
├── 📁 Database\
│   └── koneksi.php
├── 📁 Bendahara\
├── 📁 Sekretaris\
├── 📁 Daftar login\
│   └── Login.php
└── 📁 uploads\
    └── iuran_warga\
```

---

### Langkah 2 — Jalankan XAMPP

1. Buka **XAMPP Control Panel**
2. Klik **Start** pada **Apache** dan **MySQL**
3. Pastikan status berwarna **hijau** (running) ✅

---

### Langkah 3 — Setup Database

1. Buka **phpMyAdmin** di browser:
   ```
   http://localhost/phpmyadmin
   ```

2. Pastikan terdapat database `kaswarga` dengan tabel berikut:

   | Tabel | Keterangan |
   |-------|-----------|
   | `users` | Data pengguna & role |
   | `iuran_rutin` | Data iuran bulanan warga |
   | `iuran_nonrutin` | Data iuran non-rutin / insidental |
   | `iuran_warga` | Riwayat pembayaran warga |
   | `catatan` | Catatan pemasukan & pengeluaran umum |

3. Jika database **belum ada**, import file SQL:
   ```
   phpmyadmin → Import → Pilih file: kaswarga_database.sql → Go
   ```

---

### Langkah 4 — Konfigurasi Koneksi Database

Edit file **`Database/koneksi.php`**:

```php
<?php
$host     = "localhost";
$user     = "root";
$password = "";          // kosong untuk XAMPP default
$database = "kaswarga";

$koneksi = mysqli_connect($host, $user, $password, $database);

if (!$koneksi) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>
```

> 💡 File ini digunakan oleh **seluruh modul aplikasi**. Cukup ubah di sini jika berpindah server.

---

### Langkah 5 — Konfigurasi Folder Upload

Pastikan folder `uploads/iuran_warga/` sudah ada dan dapat ditulis:

**Windows (XAMPP):**
```
Pastikan folder tidak dalam kondisi Read-Only
Klik kanan folder → Properties → Hilangkan centang Read-Only
```

**Linux Hosting:**
```bash
chmod 755 uploads/iuran_warga/
# atau jika perlu
chmod 777 uploads/iuran_warga/
```

---

### ✅ Verifikasi Instalasi

Buka browser dan akses:

```
http://localhost/kaswarga/kaswarga/Daftar login/Login.php
```

Jika halaman login muncul, instalasi berhasil! 🎉

---

## 👥 Role & Alur Pengguna

### 🏦 Bendahara
```
Login → Dashboard Bendahara
  ├── Lihat ringkasan saldo, pemasukan & pengeluaran
  ├── Kelola iuran rutin & non-rutin
  ├── Catat pemasukan & pengeluaran kas umum
  └── Lihat & cetak laporan (bulanan / tahunan)
```

### 📋 Sekretaris
```
Login → Dashboard Sekretaris
  ├── Lihat riwayat pembayaran iuran warga
  └── Verifikasi bukti pembayaran
        ├── ✅ Terima pembayaran
        └── ❌ Tolak pembayaran
```

### 👑 Ketua
```
Login → Dashboard Ketua
  └── Monitoring data (view only, tidak dapat mengubah atau menghapus)
```

### 🏠 Warga
```
Login → Dashboard Warga
  ├── Lihat status pembayaran iuran pribadi
  └── Upload bukti pembayaran
```

---

## 🚨 Troubleshooting

### ❌ Error: `undefined variable koneksi` atau `mysqli_query NULL`
```
Penyebab : File koneksi.php tidak ter-include dengan benar
Solusi   : Periksa path include di setiap file PHP
           Pastikan: include '../Database/koneksi.php';
```

### ❌ Sidebar atau dropdown tidak berfungsi
```
Penyebab : File JavaScript tidak termuat
Solusi   : Buka DevTools browser (F12) → Console
           Periksa error JavaScript dan pastikan path file .js benar
```

### ❌ Grafik kosong padahal data ada
```
Penyebab : Format tanggal tidak sesuai di tabel catatan / iuran_warga
Solusi   : Periksa kolom tanggal, pastikan format YYYY-MM-DD
           Verifikasi kesesuaian bulan dan tahun pada query
```

### ❌ Login selalu gagal
```
Penyebab : Username/password tidak sesuai atau metode hash berbeda
Solusi   : Buka phpMyAdmin → Tabel users → Periksa data
           Pastikan metode hash password di script login sesuai
           (MD5 / bcrypt / plain teks)
```

---

## 🤝 Kontribusi

Kontribusi sangat terbuka! Berikut cara berkontribusi:

```bash
# 1. Fork repository ini

# 2. Buat branch baru
git checkout -b fitur/nama-fitur-baru

# 3. Commit perubahan
git commit -m "Tambah: nama fitur baru"

# 4. Push ke branch
git push origin fitur/nama-fitur-baru

# 5. Buat Pull Request
```

**Jenis kontribusi yang diterima:**
- 🐛 Perbaikan bug
- ✨ Penambahan fitur baru
- 📖 Perbaikan dokumentasi
- 🎨 Peningkatan UI/UX
- ⚡ Optimasi performa

---

## 📄 Lisensi

Proyek ini dibuat untuk **keperluan pembelajaran dan tugas kuliah**.  
Lisensi dapat disesuaikan sesuai kebutuhan repository GitHub Anda.

---

<div align="center">

Dibuat dengan ❤️ untuk kemudahan manajemen keuangan RT/RW

⭐ **Jangan lupa beri bintang jika project ini membantu!** ⭐

</div>
