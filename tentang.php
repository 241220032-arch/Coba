<?php
require_once __DIR__ . '/config/helpers.php';
$kelompok = get_kelompok($pdo);
$anggota  = get_anggota($pdo, (int)($kelompok['id'] ?? 1));
?>
<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tentang Kelompok | <?= e($kelompok['nama_kelompok']) ?></title>
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<?php include __DIR__ . '/partials/header.php'; ?>

<main class="container">
  <nav class="breadcrumb"><a href="index.php">Beranda</a> / Tentang Kelompok</nav>

  <div class="page-title-row">
    <h1>Tentang Kelompok</h1>
  </div>

  <div class="detail-card">
    <p><strong>Nama Kelompok:</strong> <?= e($kelompok['nama_kelompok']) ?></p>
    <p><strong>Program Studi:</strong> <?= e($kelompok['prodi']) ?></p>
    <p><strong>Mata Kuliah:</strong> <?= e($kelompok['mata_kuliah']) ?></p>
    <p><strong>Dosen Pengampu:</strong> <?= e($kelompok['dosen']) ?></p>
  </div>

  <h2 style="color:var(--green-900);font-size:1.05rem;margin:24px 0 12px;">Anggota Kelompok</h2>
  <ul class="gerakan-list">
    <?php if (empty($anggota)): ?>
      <li class="loading">Belum ada data anggota.</li>
    <?php else: foreach ($anggota as $i => $a): ?>
      <li class="gerakan-item" style="cursor:default;">
        <span class="gerakan-num"><?= $i + 1 ?></span>
        <span class="gerakan-name">
          <?= e($a['nama']) ?>
          <?php if (!empty($a['nim'])): ?> &middot; NIM: <?= e($a['nim']) ?><?php endif; ?>
          <?php if (!empty($a['peran'])): ?><br><small style="color:var(--ink-600);font-weight:400;"><?= e($a['peran']) ?></small><?php endif; ?>
        </span>
      </li>
    <?php endforeach; endif; ?>
  </ul>
</main>

<?php include __DIR__ . '/partials/footer.php'; ?>
</body>
</html>
