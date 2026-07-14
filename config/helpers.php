<?php
/**
 * config/helpers.php
 * Kumpulan fungsi bantu yang dipakai backend (PHP Native, PDO).
 */
require_once __DIR__ . '/db.php';

function get_kelompok(PDO $pdo): array {
    $stmt = $pdo->query("SELECT * FROM kelompok ORDER BY id ASC LIMIT 1");
    $row = $stmt->fetch();
    return $row ?: [
        'nama_kelompok' => 'Kelompok 1',
        'prodi'         => 'Manajemen Bisnis Syariah',
        'mata_kuliah'   => 'Pengembangan Aplikasi Web',
        'dosen'         => 'Dedy Susanto, S.Pd.I., M.M.',
    ];
}

function get_kategori_id(PDO $pdo, string $nama): ?int {
    $stmt = $pdo->prepare("SELECT id FROM kategori WHERE nama = ? LIMIT 1");
    $stmt->execute([$nama]);
    $row = $stmt->fetch();
    return $row ? (int)$row['id'] : null;
}

function get_gerakan_list(PDO $pdo, int $id_kategori): array {
    $stmt = $pdo->prepare("SELECT id, nama, urutan, gambar_url FROM gerakan WHERE id_kategori = ? ORDER BY urutan ASC");
    $stmt->execute([$id_kategori]);
    return $stmt->fetchAll();
}

function get_gerakan_detail(PDO $pdo, int $id_gerakan): ?array {
    $stmt = $pdo->prepare("SELECT * FROM gerakan WHERE id = ? LIMIT 1");
    $stmt->execute([$id_gerakan]);
    $gerakan = $stmt->fetch();
    if (!$gerakan) return null;

    $stmt2 = $pdo->prepare("SELECT * FROM bacaan WHERE id_gerakan = ? ORDER BY urutan ASC");
    $stmt2->execute([$id_gerakan]);
    $gerakan['bacaan'] = $stmt2->fetchAll();

    // Tetangga (untuk Next/Previous)
    $stmt3 = $pdo->prepare("SELECT id FROM gerakan WHERE id_kategori = ? AND urutan < (SELECT urutan FROM gerakan WHERE id=?) ORDER BY urutan DESC LIMIT 1");
    $stmt3->execute([$gerakan['id_kategori'], $id_gerakan]);
    $prev = $stmt3->fetch();

    $stmt4 = $pdo->prepare("SELECT id FROM gerakan WHERE id_kategori = ? AND urutan > (SELECT urutan FROM gerakan WHERE id=?) ORDER BY urutan ASC LIMIT 1");
    $stmt4->execute([$gerakan['id_kategori'], $id_gerakan]);
    $next = $stmt4->fetch();

    $gerakan['prev_id'] = $prev ? (int)$prev['id'] : null;
    $gerakan['next_id'] = $next ? (int)$next['id'] : null;

    return $gerakan;
}

function get_anggota(PDO $pdo, int $id_kelompok): array {
    $stmt = $pdo->prepare("SELECT nama, nim, peran FROM anggota WHERE id_kelompok = ? ORDER BY urutan ASC");
    $stmt->execute([$id_kelompok]);
    return $stmt->fetchAll();
}

function e(string $str): string {
    return htmlspecialchars($str, ENT_QUOTES, 'UTF-8');
}
