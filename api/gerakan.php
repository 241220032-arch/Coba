<?php
/**
 * api/gerakan.php
 * Endpoint: GET /api/gerakan.php?kategori=dewasa|anak
 * Mengembalikan daftar gerakan terurut (F-01).
 */
header('Content-Type: application/json; charset=utf-8');
require_once __DIR__ . '/../config/helpers.php';

$kategori_nama = $_GET['kategori'] ?? 'dewasa';
$kategori_nama = in_array($kategori_nama, ['dewasa', 'anak']) ? $kategori_nama : 'dewasa';

$id_kategori = get_kategori_id($pdo, $kategori_nama);
if (!$id_kategori) {
    http_response_code(404);
    echo json_encode(['error' => 'Kategori tidak ditemukan']);
    exit;
}

$gerakan = get_gerakan_list($pdo, $id_kategori);

echo json_encode([
    'kategori' => $kategori_nama,
    'data'     => $gerakan,
]);
