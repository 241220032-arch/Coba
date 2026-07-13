<?php
/**
 * api/detail.php
 * Endpoint: GET /api/detail.php?id=<id_gerakan>
 * Mengembalikan detail satu gerakan beserta bacaan (Arab/Latin/terjemahan/audio),
 * video opsional, serta id gerakan sebelumnya/berikutnya (F-02 s.d. F-05).
 */
header('Content-Type: application/json; charset=utf-8');
require_once __DIR__ . '/../config/helpers.php';

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
if ($id <= 0) {
    http_response_code(400);
    echo json_encode(['error' => 'Parameter id tidak valid']);
    exit;
}

$detail = get_gerakan_detail($pdo, $id);
if (!$detail) {
    http_response_code(404);
    echo json_encode(['error' => 'Gerakan tidak ditemukan']);
    exit;
}

echo json_encode(['data' => $detail]);
