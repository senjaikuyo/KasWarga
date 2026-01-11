<?php 
include '../../../Database/koneksi.php';
session_start();

if (!isset($_SESSION["nama"])) {
    echo "<script>alert('User belum login');</script>";
    header("Location: ../../Daftar login/Login.php");
    exit;
}

$nik  = $_SESSION["nik"] ?? "";
$nama = $_SESSION["nama"] ?? "";

// ====== RINGKASAN ATAS (TAHUN AKTIF) ======
$tahun = $_GET["tahun"] ?? date("Y");

// total pemasukan tahun ini
$rowMasukTh = mysqli_fetch_assoc(
    mysqli_query($koneksi, "SELECT SUM(jumlah) AS total FROM catatan 
                            WHERE kategori='pemasukan' AND YEAR(tanggal)='$tahun'")
);
$totalpemasukan = $rowMasukTh["total"] ?? 0;

// total pengeluaran tahun ini
$rowKeluarTh = mysqli_fetch_assoc(
    mysqli_query($koneksi, "SELECT SUM(jumlah) AS total FROM catatan 
                            WHERE kategori='pengeluaran' AND YEAR(tanggal)='$tahun'")
);
$totalpengeluaran = $rowKeluarTh["total"] ?? 0;

// total semua waktu untuk saldo
$rowMasukAll = mysqli_fetch_assoc(
    mysqli_query($koneksi, "SELECT SUM(jumlah) AS total FROM catatan WHERE kategori='pemasukan'")
);
$uangmasuk = $rowMasukAll["total"] ?? 0;

$rowKeluarAll = mysqli_fetch_assoc(
    mysqli_query($koneksi, "SELECT SUM(jumlah) AS total FROM catatan WHERE kategori='pengeluaran'")
);
$uangkeluar = $rowKeluarAll["total"] ?? 0;

$saldoakhir = $uangmasuk - $uangkeluar;

// ================= GRAFIK BULANAN =================
$pemasukan = [];
$pengeluaran = [];
for ($i = 1; $i <= 12; $i++) {
    $q1 = mysqli_query($koneksi, "SELECT SUM(jumlah) AS total FROM catatan 
                                  WHERE kategori='pemasukan' 
                                    AND MONTH(tanggal)=$i 
                                    AND YEAR(tanggal)='$tahun'");
    $r1 = mysqli_fetch_assoc($q1);
    $pemasukan[$i] = $r1["total"] ?? 0;

    $q2 = mysqli_query($koneksi, "SELECT SUM(jumlah) AS total FROM catatan 
                                  WHERE kategori='pengeluaran' 
                                    AND MONTH(tanggal)=$i 
                                    AND YEAR(tanggal)='$tahun'");
    $r2 = mysqli_fetch_assoc($q2);
    $pengeluaran[$i] = $r2["total"] ?? 0;
}

$maxValBulanan = max(max($pemasukan), max($pengeluaran), 1);
$maxYBulanan   = 90;

function convYBulanan($nilai, $maxVal, $maxY) {
    if ($maxVal <= 0) return $maxY;
    return $maxY - ($nilai / $maxVal * $maxY);
}

$pointsMasukB   = "";
$circlesMasukB  = "";
$pointsKeluarB  = "";
$circlesKeluarB = "";
$xBaseB = 26;
$xStepB = 24;

$namaBulan = [
    1 => "Jan", 2 => "Feb", 3 => "Mar", 4 => "Apr",
    5 => "Mei", 6 => "Jun", 7 => "Jul", 8 => "Agu",
    9 => "Sep", 10 => "Okt", 11 => "Nov", 12 => "Des"
];

for ($i = 1; $i <= 12; $i++) {
    $x  = $xBaseB + ($i - 1) * $xStepB;
    $yM = convYBulanan($pemasukan[$i], $maxValBulanan, $maxYBulanan);
    $yK = convYBulanan($pengeluaran[$i], $maxValBulanan, $maxYBulanan);

    $pointsMasukB  .= "$x,$yM ";
    $circlesMasukB .= "<circle cx='$x' cy='$yM' r='3' class='point' data-type='Pemasukan' data-bulan='{$namaBulan[$i]}' data-nilai='{$pemasukan[$i]}' fill='#22c55e'></circle>";

    $pointsKeluarB  .= "$x,$yK ";
    $circlesKeluarB .= "<circle cx='$x' cy='$yK' r='3' class='point' data-type='Pengeluaran' data-bulan='{$namaBulan[$i]}' data-nilai='{$pengeluaran[$i]}' fill='#ef4444'></circle>";
}

// ================= GRAFIK TAHUNAN =================
$TahunQ = mysqli_query($koneksi, "SELECT DISTINCT YEAR(tanggal) AS tahun FROM catatan ORDER BY tahun ASC");
$daftarTahun = [];
while ($row = mysqli_fetch_assoc($TahunQ)) {
    $daftarTahun[] = $row["tahun"];
}

$pemasukanTahunan   = [];
$pengeluaranTahunan = [];

foreach ($daftarTahun as $th) {
    $q1 = mysqli_query($koneksi, "SELECT SUM(jumlah) AS total FROM catatan 
                                  WHERE kategori='pemasukan' AND YEAR(tanggal)=$th");
    $r1 = mysqli_fetch_assoc($q1);
    $pemasukanTahunan[$th] = $r1["total"] ?? 0;

    $q2 = mysqli_query($koneksi, "SELECT SUM(jumlah) AS total FROM catatan 
                                  WHERE kategori='pengeluaran' AND YEAR(tanggal)=$th");
    $r2 = mysqli_fetch_assoc($q2);
    $pengeluaranTahunan[$th] = $r2["total"] ?? 0;
}

$jumlahTahun = count($daftarTahun);
$xStartT = 17;
$xGapT   = $jumlahTahun > 1 ? (283 - 17) / ($jumlahTahun - 1) : 0;

$maxValTahunan = max(
    !empty($pemasukanTahunan)   ? max($pemasukanTahunan)   : 0,
    !empty($pengeluaranTahunan) ? max($pengeluaranTahunan) : 0,
    1
);
$maxYTahunan = 90;

function convYTahunan($val, $maxVal, $maxY) {
    if ($maxVal <= 0) return $maxY;
    return $maxY - ($val / $maxVal * $maxY);
}

$pointsMasukT   = "";
$circlesMasukT  = "";
$pointsKeluarT  = "";
$circlesKeluarT = "";

$i = 0;
foreach ($daftarTahun as $th) {
    $x  = $xStartT + $xGapT * $i;
    $yM = convYTahunan($pemasukanTahunan[$th], $maxValTahunan, $maxYTahunan);
    $yK = convYTahunan($pengeluaranTahunan[$th], $maxValTahunan, $maxYTahunan);

    $pointsMasukT  .= "$x,$yM ";
    $circlesMasukT .= "<circle cx='$x' cy='$yM' r='3' data-tahun='$th' data-nilai='{$pemasukanTahunan[$th]}' fill='#22c55e'></circle>";

    $pointsKeluarT  .= "$x,$yK ";
    $circlesKeluarT .= "<circle cx='$x' cy='$yK' r='3' data-tahun='$th' data-nilai='{$pengeluaranTahunan[$th]}' fill='#ef4444'></circle>";
    $i++;
}

// ================= PIE CHART PROPORSI =================
$qMasukPie  = mysqli_query($koneksi, "SELECT SUM(jumlah) AS total FROM catatan WHERE kategori='pemasukan'");
$rMasukPie  = mysqli_fetch_assoc($qMasukPie);
$pieMasuk   = $rMasukPie["total"] ?? 0;

$qKeluarPie = mysqli_query($koneksi, "SELECT SUM(jumlah) AS total FROM catatan WHERE kategori='pengeluaran'");
$rKeluarPie = mysqli_fetch_assoc($qKeluarPie);
$pieKeluar  = $rKeluarPie["total"] ?? 0;

$totalPie     = $pieMasuk + $pieKeluar;
$persenMasuk  = $totalPie > 0 ? ($pieMasuk / $totalPie * 100) : 0;
$persenKeluar = 100 - $persenMasuk;

// ================= TRANSAKSI REAL-TIME =================
$transaksiQ = mysqli_query($koneksi, "SELECT tanggal, nama AS nama_warga, uraian AS deskripsi,
    CASE WHEN kategori='pemasukan' THEN jumlah ELSE 0 END AS masuk,
    CASE WHEN kategori='pengeluaran' THEN jumlah ELSE 0 END AS keluar
    FROM catatan ORDER BY tanggal DESC LIMIT 10");
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
    <link rel="shortcut icon" href="../../../foto/ICONB.png" type="image/x-icon">
</head>
<body>
<!--SIDEBAR-->
<aside class="sidebar">
    <header class="sidebar-header">
        <a href="#" class="header-logo">
            <img src="../../../foto/ICON.png" alt="KasWarga">
        </a>
        <button class="sidebar-toggler">
            <i class="fa-solid fa-chevron-left toggle-icon"></i>
        </button>
    </header>

    <nav class="sidebar-nav">
        <ul class="nav-list primary-nav">
            <li class="nav-item">
                <a href="dashboard.php" class="nav-link">
                    <i class="fa-solid fa-house"></i>
                    <span class="nav-label">Dashboard</span>
                </a>
            </li>

            <li class="nav-item dropdown-container">
                <a href="#" class="nav-link dropdown-toggle">
                    <i class="fa-solid fa-thumbtack"></i>
                    <span class="nav-label">Fitur</span>
                    <i class="fa-solid fa-chevron-down dropdown-icon"></i>
                </a>
                <ul class="dropdown-menu">
                    <li class="nav-item">
                        <a href="../status pembayaran/status_pembayaran.php" class="nav-link dropdown-link">Catatan Iuran</a>
                    </li>
                    <li class="nav-item">
                        <a href="../catatan pemasukan dan pengeluaran/catatan pemasukan dan pengeluaran.php" class="nav-link dropdown-link">Catatan Keuangan</a>
                    </li>
                    <li class="nav-item">
                        <a href="../pembayaran/pembayaran.php" class="nav-link dropdown-link">Pembayaran</a>
                    </li>
                </ul>
            </li>

            <li class="nav-item dropdown-container">
                <a href="#" class="nav-link dropdown-toggle">
                    <i class="fa-solid fa-line-chart"></i>
                    <span class="nav-label">Grafik</span>
                    <i class="fa-solid fa-chevron-down dropdown-icon"></i>
                </a>
                <ul class="dropdown-menu">
                    <li class="nav-item">
                        <a href="../Grafik/grafik_bulanan.php" class="nav-link dropdown-link">Bulanan</a>
                    </li>
                    <li class="nav-item">
                        <a href="../Grafik/Grafik_tahunan.php" class="nav-link dropdown-link">Tahunan</a>
                    </li>
                </ul>
            </li>

            <li class="nav-item dropdown-container">
                <a href="#" class="nav-link dropdown-toggle">
                    <i class="fa-solid fa-book"></i>
                    <span class="nav-label">Laporan</span>
                    <i class="fa-solid fa-chevron-down dropdown-icon"></i>
                </a>
                <ul class="dropdown-menu">
                    <li class="nav-item">
                        <a href="../Laporan/laporan bulanan.php" class="nav-link dropdown-link">Bulanan</a>
                    </li>
                    <li class="nav-item">
                        <a href="../Laporan/laporan tahunan.php" class="nav-link dropdown-link">Tahunan</a>
                    </li>
                </ul>
            </li>

            <li class="nav-item dropdown-container">
                <a href="#" class="nav-link dropdown-toggle">
                    <i class="fa-solid fa-cog"></i>
                    <span class="nav-label">Pengaturan</span>
                    <i class="fa-solid fa-chevron-down dropdown-icon"></i>
                </a>
                <ul class="dropdown-menu">
                    <li class="nav-item">
                        <a href="../../Daftar login/logout.php" class="nav-link dropdown-link">Keluar</a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
</aside>

<!-- PAGE CONTENT -->
<div class="container">
    <h1>Selamat Datang, <?php echo htmlspecialchars($nama); ?>!!!</h1>

    <h1>Ringkasan Kas</h1>
    <div class="summary-box">
        <div class="card">
            <h4>Pemasukan Tahun <?php echo $tahun; ?></h4>
            <strong>Rp <?php echo number_format($totalpemasukan, 0, ",", "."); ?></strong>
        </div>
        <div class="card">
            <h4>Pengeluaran Tahun <?php echo $tahun; ?></h4>
            <strong>Rp <?php echo number_format($totalpengeluaran, 0, ",", "."); ?></strong>
        </div>
        <div class="card">
            <h4>Sisa Saldo</h4>
            <strong>Rp <?php echo number_format($saldoakhir, 0, ",", "."); ?></strong>
        </div>
    </div>

    <div class="chart-wrapper">
        <div class="chart-grid">
            <div class="chart-box">
                <h3>Pemasukan Bulanan (<?php echo $tahun; ?>)</h3>
                <div class="grid-lines">
                    <svg class="line" viewBox="0 0 300 100" preserveAspectRatio="none">
                        <polyline points="<?php echo trim($pointsMasukB); ?>" fill="none" stroke="rgba(34,197,94,0.95)" stroke-width="3"></polyline>
                        <?php echo $circlesMasukB; ?>
                    </svg>
                </div>
                <div class="month-labels">
                    <?php foreach ($namaBulan as $nb) : ?>
                        <span class="merk"><?php echo $nb; ?></span>
                    <?php endforeach; ?>
                </div>
            </div>

            <div class="chart-box">
                <h3>Pengeluaran Bulanan (<?php echo $tahun; ?>)</h3>
                <div class="grid-lines">
                    <svg class="line" viewBox="0 0 300 100" preserveAspectRatio="none">
                        <polyline points="<?php echo trim($pointsKeluarB); ?>" fill="none" stroke="rgba(239,68,68,0.95)" stroke-width="3"></polyline>
                        <?php echo $circlesKeluarB; ?>
                    </svg>
                </div>
                <div class="month-labels">
                    <?php foreach ($namaBulan as $nb) : ?>
                        <span class="merk"><?php echo $nb; ?></span>
                    <?php endforeach; ?>
                </div>
            </div>

            <div class="chart-box">
                <h3>Pemasukan Tahunan</h3>
                <div class="grid-lines">
                    <svg class="line" viewBox="0 0 300 100" preserveAspectRatio="none">
                        <polyline points="<?php echo trim($pointsMasukT); ?>" fill="none" stroke="rgba(34,197,94,0.95)" stroke-width="3"></polyline>
                        <?php echo $circlesMasukT; ?>
                    </svg>
                </div>
                <div class="month-labels">
                    <?php foreach ($daftarTahun as $th) : ?>
                        <span class="merk"><?php echo $th; ?></span>
                    <?php endforeach; ?>
                </div>
            </div>

            <div class="chart-box">
                <h3>Pengeluaran Tahunan</h3>
                <div class="grid-lines">
                    <svg class="line" viewBox="0 0 300 100" preserveAspectRatio="none">
                        <polyline points="<?php echo trim($pointsKeluarT); ?>" fill="none" stroke="rgba(239,68,68,0.95)" stroke-width="3"></polyline>
                        <?php echo $circlesKeluarT; ?>
                    </svg>
                </div>
                <div class="month-labels">
                    <?php foreach ($daftarTahun as $th) : ?>
                        <span class="merk"><?php echo $th; ?></span>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>

        <div class="chart-box pie">
            <h3>Proporsi Pemasukan Pengeluaran</h3>
            <div class="circle-chart"
                 style="background: conic-gradient(#22c55e <?php echo $persenMasuk; ?>%, #ef4444 0 100%);">
            </div>
            <div class="mini-circle">
                <p><span class="green"></span> Pemasukan <?php echo round($persenMasuk); ?>%</p>
                <p><span class="red"></span> Pengeluaran <?php echo round($persenKeluar); ?>%</p>
                <p style="margin-top:8px;">
                    Total Pemasukan: Rp <?php echo number_format($pieMasuk, 0, ",", "."); ?><br>
                    Total Pengeluaran: Rp <?php echo number_format($pieKeluar, 0, ",", "."); ?>
                </p>
            </div>
        </div>
    </div>

    <div class="table-section">
        <h2>Transaksi Real-Time</h2>
        <table>
            <thead>
                <tr>
                    <th>Tanggal</th>
                    <th>Nama Warga</th>
                    <th>Deskripsi</th>
                    <th>Pemasukan</th>
                    <th>Pengeluaran</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($t = mysqli_fetch_assoc($transaksiQ)) : ?>
                    <tr>
                        <td><?php echo date("d/m/y", strtotime($t["tanggal"])); ?></td>
                        <td><?php echo htmlspecialchars($t["nama_warga"] ?? "-"); ?></td>
                        <td><?php echo htmlspecialchars($t["deskripsi"] ?? "-"); ?></td>
                        <td>Rp. <?php echo number_format($t["masuk"], 0, ",", "."); ?></td>
                        <td>Rp. <?php echo number_format($t["keluar"], 0, ",", "."); ?></td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
</div>

<script src="dashboard_ok.js"></script>
</body>
</html>
