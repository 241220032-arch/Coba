-- =========================================================
-- Skema Basis Data: Aplikasi Tuntunan Tata Cara Sholat
-- Sumber acuan: Himpunan Putusan Tarjih (HPT) Muhammadiyah
-- =========================================================

CREATE DATABASE IF NOT EXISTS tatacara_sholat
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

USE tatacara_sholat;

-- -------------------------------------------------
-- Tabel: kelompok (identitas yang tampil di header)
-- -------------------------------------------------
CREATE TABLE IF NOT EXISTS kelompok (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama_kelompok   VARCHAR(100) NOT NULL,
  prodi           VARCHAR(150) NOT NULL,
  mata_kuliah     VARCHAR(150) NOT NULL,
  dosen           VARCHAR(150) NOT NULL
) ENGINE=InnoDB;

-- -------------------------------------------------
-- Tabel: kategori (segmen pengguna: dewasa | anak)
-- -------------------------------------------------
CREATE TABLE IF NOT EXISTS kategori (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(20) NOT NULL UNIQUE  -- 'dewasa' atau 'anak'
) ENGINE=InnoDB;

-- -------------------------------------------------
-- Tabel: gerakan (satu baris per gerakan sholat)
-- -------------------------------------------------
CREATE TABLE IF NOT EXISTS gerakan (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_kategori INT NOT NULL,
  nama        VARCHAR(150) NOT NULL,
  urutan      SMALLINT NOT NULL,
  deskripsi   TEXT,
  gambar_url  VARCHAR(255),
  video_url   VARCHAR(255),
  FOREIGN KEY (id_kategori) REFERENCES kategori(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- -------------------------------------------------
-- Tabel: bacaan (bacaan yang menempel pada gerakan)
-- -------------------------------------------------
CREATE TABLE IF NOT EXISTS bacaan (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_gerakan  INT NOT NULL,
  urutan      SMALLINT NOT NULL,
  teks_arab   TEXT,
  teks_latin  TEXT,
  terjemahan  TEXT,
  audio_url   VARCHAR(255),
  sumber      VARCHAR(150) DEFAULT 'HPT Muhammadiyah - Kitab Shalat',
  FOREIGN KEY (id_gerakan) REFERENCES gerakan(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE INDEX idx_gerakan_kategori ON gerakan(id_kategori, urutan);
CREATE INDEX idx_bacaan_gerakan ON bacaan(id_gerakan, urutan);

-- -------------------------------------------------
-- Tabel: anggota (daftar anggota kelompok & peran)
-- -------------------------------------------------
CREATE TABLE IF NOT EXISTS anggota (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_kelompok INT NOT NULL,
  nama        VARCHAR(150) NOT NULL,
  nim         VARCHAR(30) DEFAULT NULL,
  peran       VARCHAR(100) DEFAULT NULL,
  urutan      SMALLINT DEFAULT 0,
  FOREIGN KEY (id_kelompok) REFERENCES kelompok(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE INDEX idx_anggota_kelompok ON anggota(id_kelompok, urutan);
