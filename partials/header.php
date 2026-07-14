<?php
/**
 * partials/header.php
 * Header identitas: Nama Kelompok, Prodi, Mata Kuliah, Dosen (F-08).
 * Wajib tampil di setiap halaman utama.
 */
?>
<header class="site-header">
  <div class="container header-inner">
    <a href="index.php" class="brand">
      <span class="brand-icon">🕌</span>
      <span class="brand-text">Tuntunan Tata Cara Sholat</span>
    </a>
    <div class="identity">
      <strong><?= e($kelompok['nama_kelompok']) ?></strong>
      <span><?= e($kelompok['prodi']) ?></span>
      <span><?= e($kelompok['mata_kuliah']) ?></span>
      <span>Dosen: <?= e($kelompok['dosen']) ?></span>
      <a href="tentang.php" style="text-decoration:underline;font-weight:600;">Tentang Kelompok</a>
    </div>
  </div>
</header>
