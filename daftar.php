<?php
require_once __DIR__ . '/config/helpers.php';
$kelompok = get_kelompok($pdo);

$kategori = $_GET['kategori'] ?? 'dewasa';
$kategori = in_array($kategori, ['dewasa', 'anak']) ? $kategori : 'dewasa';
$label = $kategori === 'dewasa' ? 'Dewasa' : 'Anak-anak';
?>
<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Daftar Gerakan (<?= e($label) ?>) | <?= e($kelompok['nama_kelompok']) ?></title>
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body data-kategori="<?= e($kategori) ?>">
<?php include __DIR__ . '/partials/header.php'; ?>

<main class="container">
  <nav class="breadcrumb"><a href="index.php">Beranda</a> / Daftar Gerakan</nav>

  <div class="page-title-row">
    <h1>Daftar Gerakan Sholat <span class="badge badge-<?= e($kategori) ?>">Mode <?= e($label) ?></span></h1>
    <div class="mode-switch">
      <a href="daftar.php?kategori=dewasa" class="<?= $kategori==='dewasa'?'active':'' ?>">Dewasa</a>
      <a href="daftar.php?kategori=anak" class="<?= $kategori==='anak'?'active':'' ?>">Anak-anak</a>
    </div>
  </div>

  <ul id="gerakan-list" class="gerakan-list">
    <li class="loading">Memuat daftar gerakan...</li>
  </ul>
</main>

<?php include __DIR__ . '/partials/footer.php'; ?>
<script src="assets/js/app.js"></script>
<script>
  document.addEventListener('DOMContentLoaded', () => {
    SholatApp.renderGerakanList('<?= e($kategori) ?>');
  });
</script>
</body>
</html>
