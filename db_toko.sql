-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Okt 2024 pada 09.11
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `expired` date NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `expired`, `tgl_input`, `tgl_update`) VALUES
(10, 'BR001', 5, 'Lemon Sky', '-', '0', '20000', 'PCS', '99999999999999', '0000-00-00', '3 May 2024, 19:11', '3 May 2024, 19:13'),
(11, 'BR002', 5, 'Signature TJ', '-', '0', '20000', 'PCS', '99999999999999', '0000-00-00', '3 May 2024, 19:11', '2024-05-12'),
(12, 'BR003', 5, 'flychee', '-', '0', '20000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(13, 'BR004', 5, 'Mango Paradice', '-', '0', '20000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(14, 'BR005', 5, 'Black Tea', '-', '0', '15000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(15, 'BR006', 5, 'Peachek', '-', '0', '20000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(16, 'BR007', 1, 'es kopi susu', '-', '0', '10000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(17, 'BR008', 1, 'kopi ijo waris', '-', '0', '7000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(18, 'BR009', 1, 'kopi tj', '-', '0', '6000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(19, 'BR010', 1, 'kopi susu tj', '-', '0', '8000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(20, 'BR011', 1, 'matcha', '-', '0', '13000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(21, 'BR012', 1, 'taro', '-', '0', '13000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(22, 'BR013', 1, 'thai tea', '-', '0', '13000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(23, 'BR014', 1, 'nenen', '-', '0', '10000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(24, 'BR015', 1, 'red valvet', '-', '0', '13000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(25, 'BR016', 1, 'es soklat', '-', '0', '10000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(26, 'BR017', 1, 'milo', '-', '0', '8000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(27, 'BR018', 1, 'es teh', '-', '0', '6000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(28, 'BR019', 1, 'es teh susu', '-', '0', '8000', 'PCS', '99999999999996', '0000-00-00', '2024-05-12', '2024-05-12'),
(29, 'BR020', 1, 'leci tea', '-', '0', '13000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(30, 'BR021', 1, 'kubisu', '-', '0', '7000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(31, 'BR022', 1, 'joshua', '-', '0', '7000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(32, 'BR023', 1, 'lemon squash', '-', '0', '15000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(33, 'BR024', 1, 'leci squash', '-', '0', '15000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(34, 'BR025', 1, 'mango squash', '-', '0', '15000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '2024-05-12'),
(35, 'BR026', 4, 'Ke Ri', 'ketan', '0', '6000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '12 May 2024, 16:27'),
(36, 'BR027', 4, 'Ke Susu', 'ketan', '0', '6000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '12 May 2024, 16:27'),
(37, 'BR028', 4, 'Ke Cokot Mas', 'ketan', '0', '7000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '12 May 2024, 16:27'),
(38, 'BR029', 4, 'Cok Keju', 'ketan', '0', '8000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '12 May 2024, 16:26'),
(39, 'BR030', 4, 'Ke Ju Su', 'ketan', '0', '9000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '12 May 2024, 16:26'),
(40, 'BR031', 4, 'Ke Crot Tan', 'ketan', '0', '9000', 'PCS', '99999999999999', '0000-00-00', '2024-05-12', '12 May 2024, 16:26'),
(41, 'BR032', 4, 'Ke Crot Tan peJu', 'ketan', '0', '10000', 'PCS', '99999999999996', '0000-00-00', '2024-05-12', '12 May 2024, 16:26'),
(45, 'BR035', 1, 'kopi', 'good day', '5000', '6000', 'PCS', '16', '2028-07-08', '9 October 2024, 18:30', '9 October 2024, 18:51'),
(46, 'BR036', 1, 'susu coklat', 'ultramilk', '4000', '5000', 'PCS', '31', '2026-03-05', '9 October 2024, 18:48', '9 October 2024, 18:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Beverage (Minuman)', '3 May 2024, 18:19'),
(2, 'Food (Makanan)', '3 May 2024, 18:19'),
(3, 'Snackk', '3 May 2024, 18:19'),
(4, 'Ketan', '3 May 2024, 18:19'),
(5, 'Cocktail', '3 May 2024, 18:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'simkanti', 'alamat', '00000000', 'KedaiKopiTanahJawa@gmail.com', '1728473179Logo Polinema.png', '0000000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(19, 'BR035', 1, '1', '6000', '9 October 2024, 18:32', '10-2024'),
(20, 'BR035', 1, '3', '18000', '9 October 2024, 18:32', '10-2024'),
(21, 'BR036', 1, '100', '500000', '9 October 2024, 18:53', '10-2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(34, 'BR036', 1, '100', '500000', '9 October 2024, 18:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Simkanti', 'Polinema', '082', 'JTI');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
