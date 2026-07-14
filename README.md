# Tuntunan Tata Cara Sholat — Aplikasi Web (PHP Native + MySQL)

Aplikasi web edukatif penyaji tuntunan tata cara sholat sesuai sunnah Rasulullah ﷺ,
dengan rujukan gerakan & bacaan dari **Himpunan Putusan Tarjih (HPT) Muhammadiyah**.

Dibangun untuk mata kuliah **AIK 4**, Program Studi Teknik Informatika, 
Universitas Muhammadiyah Pontianak (Dosen: Dedy Susanto, S.Pd.I., M.M.).

Stack yang digunakan: **Opsi A (PHP Native)**
- Front-end: HTML5, CSS3 (mobile-first responsive), Vanilla JavaScript
- Back-end: PHP Native dengan PDO (MySQL)
- Database: MySQL / MariaDB

## ✨ Fitur (sesuai modul F-01 s.d. F-09)

| Kode | Fitur |
|------|-------|
| F-01 | Daftar gerakan sholat urut (qiyam → salam), dapat diklik |
| F-02 | Detail gerakan: gambar + bacaan Arab/Latin/terjemahan |
| F-03 | Pemutar audio MP3 untuk tiap bacaan |
| F-04 | Tombol opsional menampilkan video gerakan/bacaan |
| F-05 | Navigasi Next/Previous antar-gerakan |
| F-06 | Autoplay berurutan (gerakan + audio) |
| F-07 | Mode Dewasa & Anak-anak |
| F-08 | Identitas (Nama Kelompok, Prodi, Mata Kuliah, Dosen) di header tiap halaman |
| F-09 | Konten gerakan/bacaan diambil dari database, bukan hardcode HTML |

## 📁 Struktur Folder

```
sholat-app/
├── api/                  # Endpoint backend (JSON)
│   ├── gerakan.php       # GET daftar gerakan per kategori
│   └── detail.php        # GET detail gerakan + bacaan
├── assets/
│   ├── css/style.css     # Styling responsif mobile-first
│   ├── js/app.js         # Logika front-end (fetch, render, navigasi, autoplay)
│   ├── img/{dewasa,anak}/  # Gambar tiap gerakan (tambahkan file Anda)
│   ├── audio/{dewasa,anak}/ # File MP3 bacaan (tambahkan file Anda)
│   └── video/            # Video opsional
├── config/
│   ├── db.php            # Koneksi PDO MySQL
│   └── helpers.php       # Fungsi bantu query database
├── database/
│   ├── schema.sql        # DDL: tabel kelompok, kategori, gerakan, bacaan
│   └── seed.sql          # Data awal (13 gerakan x 2 mode + bacaan)
├── partials/
│   ├── header.php        # Header identitas kelompok (F-08)
│   └── footer.php
├── index.php             # Beranda — pemilihan mode
├── daftar.php            # Daftar gerakan (F-01)
└── detail.php            # Detail gerakan + navigasi + autoplay
```

## 🚀 Instalasi & Menjalankan (Lokal)

1. **Siapkan database**
   ```bash
   mysql -u root -p < database/schema.sql
   mysql -u root -p < database/seed.sql
   ```
2. **Atur kredensial database** — edit `config/db.php` atau set environment variable:
   `DB_HOST`, `DB_NAME`, `DB_USER`, `DB_PASS`.
3. **Jalankan server PHP bawaan** (atau gunakan XAMPP/Laragon):
   ```bash
   php -S localhost:8000
   ```
4. Buka `http://localhost:8000` di browser.
5. Tambahkan file gambar/audio/video Anda ke folder `assets/img`, `assets/audio`,
   `assets/video` sesuai nama file pada `database/seed.sql`, atau perbarui kolom
   `gambar_url` / `audio_url` / `video_url` di database agar sesuai aset Anda.

## ☁️ Deployment

Aplikasi dapat di-deploy ke hosting PHP+MySQL gratis seperti **InfinityFree**,
shared hosting kampus, atau platform seperti **Railway/Render** (gunakan add-on MySQL).
Setelah deploy:
1. Import `schema.sql` dan `seed.sql` ke database hosting.
2. Set kredensial DB di `config/db.php` sesuai panel hosting.
3. Upload seluruh folder via FTP/Git deploy.
4. Tempelkan URL live ke README ini dan ke Google Classroom.

## 👥 Tim Pengembang (lengkapi sesuai kelompok Anda)

| Peran | Nama | NIM |
|-------|------|-----|
| Ketua Tim / Project Manager | ... | ... |
| Front-end Developer | ... | ... |
| Back-end Developer | ... | ... |
| Database & Content Engineer | ... | ... |
| QA, Dokumentasi & Deployment | ... | ... |

## 📚 Sumber Konten

Seluruh teks Arab, transliterasi Latin, terjemahan, dan tata cara gerakan merujuk pada
**Himpunan Putusan Tarjih (HPT) Muhammadiyah — Kitab Shalat**, PP Muhammadiyah, Yogyakarta:
Suara Muhammadiyah. **Mohon verifikasi ulang setiap bacaan pada `database/seed.sql`
terhadap sumber resmi HPT sebelum dipublikasikan**, dan lengkapi referensi pada laporan
kelompok (BAB V) sesuai ketentuan modul.

## 🔗 URL Live & Repositori

- URL Aplikasi Daring: `(isi setelah deployment)`
- Repositori GitHub: `(isi tautan repo kelompok)`
