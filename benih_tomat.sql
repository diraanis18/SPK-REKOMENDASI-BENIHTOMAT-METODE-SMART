-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Feb 2023 pada 05.49
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `benih_tomat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `kode_alternatif` varchar(10) NOT NULL,
  `nama_alternatif` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `kode_alternatif`, `nama_alternatif`, `username`) VALUES
(1, 'A1', 'Karuna', 'dira'),
(2, 'A2', 'Rempai', 'dira'),
(3, 'A3', 'Fiesta F1', 'dira'),
(4, 'A4', 'Biromaru F1', 'dira'),
(5, 'A5', 'Tinatoon F1', 'dira'),
(6, 'A6', 'Citra Asia F1', 'dira'),
(7, 'A7', 'Ayuni F1', 'dira'),
(8, 'A8', 'Hanavi F1', 'dira'),
(9, 'A9', 'Servo F1', 'dira'),
(10, 'A10', 'Gustavi F1', 'dira'),
(11, 'A11', 'Gandhi F1', 'dira'),
(12, 'A12', 'Isyana', 'dira'),
(13, 'A13', 'Napu F1', 'dira');

-- --------------------------------------------------------

--
-- Struktur dari tabel `checked`
--

CREATE TABLE `checked` (
  `id_checked` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `checked`
--

INSERT INTO `checked` (`id_checked`, `id_alternatif`, `username`) VALUES
(1, 1, 'dira'),
(2, 2, 'dira'),
(3, 3, 'dira'),
(4, 4, 'dira'),
(5, 5, 'dira'),
(6, 6, 'dira'),
(7, 7, 'dira'),
(8, 8, 'dira'),
(9, 9, 'dira'),
(10, 10, 'dira'),
(11, 11, 'dira'),
(12, 12, 'dira'),
(13, 13, 'dira');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kode_kriteria` varchar(10) NOT NULL,
  `nama_kriteria` varchar(25) NOT NULL,
  `jenis_kriteria` set('Benefit','Cost') NOT NULL,
  `bobot_kriteria` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode_kriteria`, `nama_kriteria`, `jenis_kriteria`, `bobot_kriteria`) VALUES
(1, 'C1', 'Rekomendasi Dataran', 'Cost', 0.1),
(2, 'C2', 'Umur Panen', 'Cost', 0.15),
(3, 'C3', 'Potensi Hasil', 'Benefit', 0.3),
(4, 'C4', 'Potensi Berat', 'Benefit', 0.25),
(5, 'C5', 'Ketahanan Penyakit', 'Benefit', 0.2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matriks`
--

CREATE TABLE `matriks` (
  `id_matriks` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_subkriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matriks`
--

INSERT INTO `matriks` (`id_matriks`, `id_alternatif`, `id_kriteria`, `id_subkriteria`) VALUES
(1, 1, 1, 3),
(2, 1, 2, 6),
(3, 1, 3, 12),
(4, 1, 4, 16),
(5, 1, 5, 22),
(6, 2, 1, 3),
(7, 2, 2, 6),
(8, 2, 3, 12),
(9, 2, 4, 17),
(10, 2, 5, 22),
(11, 3, 1, 2),
(12, 3, 2, 6),
(13, 3, 3, 10),
(14, 3, 4, 16),
(15, 3, 5, 19),
(16, 4, 1, 2),
(17, 4, 2, 5),
(18, 4, 3, 10),
(19, 4, 4, 15),
(20, 4, 5, 19),
(21, 6, 1, 2),
(22, 6, 2, 5),
(23, 6, 3, 11),
(24, 6, 4, 15),
(25, 6, 5, 19),
(26, 7, 1, 1),
(27, 7, 2, 4),
(28, 7, 3, 11),
(29, 7, 4, 15),
(30, 7, 5, 22),
(31, 8, 1, 1),
(32, 8, 2, 4),
(33, 8, 3, 10),
(34, 8, 4, 13),
(35, 8, 5, 22),
(36, 9, 1, 1),
(37, 9, 2, 5),
(38, 9, 3, 11),
(39, 9, 4, 16),
(40, 9, 5, 21),
(41, 10, 1, 1),
(42, 10, 2, 5),
(43, 10, 3, 12),
(44, 10, 4, 15),
(45, 10, 5, 21),
(46, 11, 1, 2),
(47, 11, 2, 7),
(48, 11, 3, 9),
(49, 11, 4, 13),
(50, 11, 5, 21),
(51, 12, 1, 2),
(52, 12, 2, 5),
(53, 12, 3, 11),
(54, 12, 4, 16),
(55, 12, 5, 20),
(56, 13, 1, 1),
(57, 13, 2, 5),
(58, 13, 3, 11),
(59, 13, 4, 16),
(60, 13, 5, 20),
(61, 5, 1, 1),
(62, 5, 2, 5),
(63, 5, 3, 10),
(64, 5, 4, 15),
(65, 5, 5, 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` set('User','Admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Dira Anis AR', 'dira', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peringkat`
--

CREATE TABLE `peringkat` (
  `id_peringkat` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai_peringkat` float NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peringkat`
--

INSERT INTO `peringkat` (`id_peringkat`, `id_alternatif`, `nilai_peringkat`, `username`) VALUES
(1, 1, 0.263, 'dira'),
(2, 2, 0.2, 'dira'),
(3, 3, 0.613, 'dira'),
(4, 4, 0.625, 'dira'),
(5, 5, 0.575, 'dira'),
(6, 6, 0.525, 'dira'),
(7, 7, 0.225, 'dira'),
(8, 8, 0.45, 'dira'),
(9, 9, 0.279, 'dira'),
(10, 10, 0.242, 'dira'),
(11, 11, 0.817, 'dira'),
(12, 12, 0.396, 'dira'),
(13, 13, 0.346, 'dira');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_subkriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama_subkriteria` varchar(30) NOT NULL,
  `nilai_subkriteria` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `subkriteria`
--

INSERT INTO `subkriteria` (`id_subkriteria`, `id_kriteria`, `nama_subkriteria`, `nilai_subkriteria`) VALUES
(1, 1, 'Dataran Rendah', 5),
(2, 1, 'Dataran Menengah', 4),
(3, 1, 'Dataran Tinggi', 3),
(4, 2, '50 - 60 HST', 5),
(5, 2, '61 - 70 HST', 4),
(6, 2, '71 - 80 HST', 3),
(7, 2, '81 - 90 HST', 2),
(8, 2, '91 - 100 HST', 1),
(9, 3, '&gt;81 ton/ha', 5),
(10, 3, '71 - 80 ton/ha', 4),
(11, 3, '61 - 70 ton/ha', 3),
(12, 3, '50 - 60 ton/ha', 2),
(13, 4, '&gt;111 gr/buah', 5),
(14, 4, '91 - 110 gr/buah', 4),
(15, 4, '71 - 90 gr/buah', 3),
(16, 4, '51 - 70 gr/buah', 2),
(17, 4, '25 - 50 gr/buah', 1),
(18, 5, 'Tahan 5 atau lebih penyakit', 5),
(19, 5, 'Tahan 4 penyakit', 4),
(20, 5, 'Tahan 3 Penyakit ', 3),
(21, 5, 'Tahan 2 Penyakit', 2),
(22, 5, 'Tahan 1 Penyakit', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `checked`
--
ALTER TABLE `checked`
  ADD PRIMARY KEY (`id_checked`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `matriks`
--
ALTER TABLE `matriks`
  ADD PRIMARY KEY (`id_matriks`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `peringkat`
--
ALTER TABLE `peringkat`
  ADD PRIMARY KEY (`id_peringkat`);

--
-- Indeks untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `checked`
--
ALTER TABLE `checked`
  MODIFY `id_checked` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `matriks`
--
ALTER TABLE `matriks`
  MODIFY `id_matriks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `peringkat`
--
ALTER TABLE `peringkat`
  MODIFY `id_peringkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
