KasWarga - Sistem Manajemen Keuangan RT/RW

KasWarga adalah aplikasi web berbasis PHP dan MySQL untuk mengelola keuangan kas warga (iuran rutin dan non rutin, catatan kas, laporan, dan verifikasi pembayaran) yang berjalan di XAMPP.

Fitur Utama
Dashboard kas berupa ringkasan saldo, total pemasukan dan pengeluaran, serta grafik bulanan dan tahunan.
Manajemen iuran rutin dan non-rutin lengkap dengan upload bukti pembayaran.
Catatan kas pemasukan dan pengeluaran yang terintegrasi dengan laporan.
Laporan bulanan dan tahunan kas warga.
Modul role pengguna yaitu Ketua, Bendahara, Sekretaris, dan Warga dengan hak akses berbeda.
Verifikasi pembayaran dan riwayat oleh Sekretaris.

Kebutuhan Sistem
XAMPP dengan Apache dan MySQL, direkomendasikan PHP 8.0 ke atas dan MariaDB 10.4 ke atas.
Browser modern seperti Chrome, Edge, atau Firefox versi terbaru.
Sistem operasi Windows karena dikembangkan menggunakan Windows dan XAMPP.

Instalasi di XAMPP

Langkah pertama clone atau download project.
Pastikan XAMPP terinstall di C:\xampp.
Clone repository ke folder htdocs atau extract file ZIP.
Lokasi akhir yang disarankan adalah C:\xampp\htdocs\kaswarga.
Di dalamnya terdapat folder kaswarga, Database, uploads, dan folder pendukung lainnya.

Struktur utama folder adalah sebagai berikut.
C:\xampp\htdocs\kaswarga
Database
kaswarga
Bendahara
Sekretaris
Daftar login
uploads\iuran_warga

Langkah kedua menyalakan Apache dan MySQL.
Buka XAMPP Control Panel.
Klik Start pada Apache dan MySQL.
Pastikan status berwarna hijau atau running.

Langkah ketiga setup database.
Database bernama kaswarga sudah tersedia, cukup pastikan nama dan koneksinya sesuai.
Buka [http://localhost/phpmyadmin](http://localhost/phpmyadmin).
Pastikan terdapat database kaswarga dengan tabel users, iuran_rutin, iuran_nonrutin, iuran_warga, catatan, dan tabel pendukung lainnya.
Jika database belum ada, import file SQL yang disertakan di repository, misalnya kaswarga_database.sql.

Langkah keempat konfigurasi koneksi database.
Edit file Database/koneksi.php di root project dengan pengaturan host localhost, user root, password kosong, dan database kaswarga.
File ini digunakan oleh seluruh modul aplikasi, sehingga jika berpindah server cukup mengubah konfigurasi di file ini saja.

Langkah kelima konfigurasi folder upload.
Pastikan folder uploads/iuran_warga sudah ada di dalam project.
Pada Windows pastikan folder tidak dalam kondisi read-only.
Jika dipindahkan ke Linux hosting, atur permission folder agar dapat ditulis.

Cara Menggunakan Aplikasi

Akses halaman login melalui browser dengan alamat [http://localhost/kaswarga/kaswarga/Daftar](http://localhost/kaswarga/kaswarga/Daftar) login/Login.php.
Login menggunakan akun yang sudah tersedia di tabel users seperti Bendahara, Ketua, Sekretaris, atau Warga dengan password sesuai yang ada di database.

Role dan Alur Dasar

Bendahara
Login sebagai Bendahara.
Mengakses dashboard bendahara untuk melihat ringkasan saldo, total pemasukan dan pengeluaran, serta grafik kas.
Mengelola pembayaran iuran rutin dan non rutin.
Mencatat pemasukan dan pengeluaran kas umum.
Melihat dan mencetak laporan serta grafik bulanan dan tahunan.

Sekretaris
Login sebagai Sekretaris.
Melihat riwayat pembayaran iuran dari warga.
Melakukan verifikasi bukti pembayaran dengan status diterima atau ditolak.

Ketua
Login sebagai Ketua.
Mengakses dashboard ketua untuk monitoring.
Hanya dapat melihat data tanpa mengubah atau menghapus.

Warga
Login sebagai Warga jika modul diaktifkan.
Melihat status pembayaran iuran pribadi.
Mengunggah bukti pembayaran sesuai ketentuan.

Troubleshooting Umum

Jika muncul error undefined variable koneksi atau mysqli_query NULL, periksa kembali file koneksi sudah di-include dengan path yang benar.
Jika sidebar atau dropdown tidak berfungsi, pastikan file JavaScript termuat dengan benar dan tidak ada error di console browser.
Jika grafik kosong padahal data ada, periksa tabel catatan dan iuran_warga serta kesesuaian data tanggal bulan dan tahun.
Jika login selalu gagal, periksa tabel users dan pastikan username, password, serta metode hash yang digunakan sesuai dengan script login.

Kontribusi dan Lisensi

Pull request terbuka untuk perbaikan bug, penambahan fitur, atau dokumentasi.
Disarankan membuat branch baru sebelum mengirim pull request.
Proyek ini digunakan untuk pembelajaran dan tugas kuliah, lisensi dapat disesuaikan sesuai kebutuhan repository GitHub.
