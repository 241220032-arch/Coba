<?php
require_once __DIR__ . '/config/helpers.php';
$kelompok = get_kelompok($pdo);

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
$kategori = $_GET['kategori'] ?? 'dewasa';
$kategori = in_array($kategori, ['dewasa', 'anak']) ? $kategori : 'dewasa';

if ($id <= 0) {
    $id_kat = get_kategori_id($pdo, $kategori);
    $list = $id_kat ? get_gerakan_list($pdo, $id_kat) : [];
    $id = $list[0]['id'] ?? 0;
}
?>
<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Detail Gerakan | <?= e($kelompok['nama_kelompok']) ?></title>
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body data-kategori="<?= e($kategori) ?>" data-id="<?= (int)$id ?>">
<?php include __DIR__ . '/partials/header.php'; ?>

<main class="container">
  <nav class="breadcrumb">
    <a href="index.php">Beranda</a> /
    <a href="daftar.php?kategori=<?= e($kategori) ?>">Daftar Gerakan</a> /
    <span id="bc-current">Detail</span>
  </nav>

  <article id="detail-content" class="detail-card">
    <p class="loading">Memuat detail gerakan...</p>
  </article>

  <div class="nav-controls">
    <button id="btn-prev" class="btn btn-secondary">⬅ Sebelumnya</button>
    <button id="btn-autoplay" class="btn btn-primary">▶ Putar Otomatis</button>
    <button id="btn-next" class="btn btn-secondary">Berikutnya ➡</button>
  </div>
</main>

<?php include __DIR__ . '/partials/footer.php'; ?>
<script src="assets/js/app.js"></script>
<script>
  document.addEventListener('DOMContentLoaded', () => {
    SholatApp.renderDetail(<?= (int)$id ?>, '<?= e($kategori) ?>');
  });
</script>
</body>
</html>
