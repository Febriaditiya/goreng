-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2022 pada 10.28
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_antrian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `antrian`
--

CREATE TABLE `antrian` (
  `id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `no_antrian` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `waktu_panggil` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `waktu_selesai` varchar(20) DEFAULT NULL,
  `pelayanan_id` int(11) DEFAULT NULL,
  `loket_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `antrian`
--

INSERT INTO `antrian` (`id`, `tanggal`, `no_antrian`, `status`, `waktu_panggil`, `waktu_selesai`, `pelayanan_id`, `loket_id`) VALUES
(1, '2022-07-02 09:14:24', NULL, NULL, '2022-07-02 07:14:40', NULL, 1, 1),
(2, '2022-07-02 09:35:05', NULL, NULL, '2022-07-02 07:35:15', NULL, 2, 2),
(3, '2022-07-02 00:00:00', NULL, NULL, '2022-07-02 07:42:04', NULL, 3, 3),
(4, '2022-07-05 00:00:00', NULL, NULL, '2022-07-05 06:30:17', NULL, 4, 4),
(5, '2022-07-05 00:00:00', NULL, NULL, '2022-07-05 06:30:47', NULL, 5, 5),
(6, '2022-07-05 00:00:00', NULL, NULL, '2022-07-05 06:31:55', NULL, 6, 6),
(7, '2022-07-05 00:00:00', NULL, NULL, '2022-07-05 06:32:38', NULL, 7, 7),
(8, '2022-07-05 00:00:00', NULL, NULL, '2022-07-05 06:33:17', NULL, 8, 8),
(9, '2022-07-05 00:00:00', NULL, NULL, '2022-07-05 06:33:49', NULL, 9, 9),
(10, '2022-07-05 00:00:00', NULL, NULL, '2022-07-05 06:34:16', NULL, 10, 10),
(11, '2022-07-05 00:00:00', NULL, NULL, '2022-07-05 06:57:02', NULL, 11, 11),
(12, '2022-07-05 00:00:00', NULL, NULL, '2022-07-05 07:06:52', NULL, 12, 12),
(13, '2022-07-05 00:00:00', NULL, NULL, '2022-07-05 07:12:38', NULL, 13, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `loket`
--

CREATE TABLE `loket` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `keterangan` tinytext DEFAULT NULL,
  `pelayanan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `loket`
--

INSERT INTO `loket` (`id`, `nama`, `keterangan`, `pelayanan_id`) VALUES
(1, 'Fajar Firmansyah', NULL, 1),
(2, 'Maman', NULL, 2),
(3, 'MUHAMMAD GILANG AL AKBAR', NULL, 3),
(4, 'kinje', NULL, 4),
(5, 'Usman a', NULL, 5),
(6, 'Jumar', NULL, 6),
(7, 'TASLIM', NULL, 7),
(8, 'anrol', NULL, 8),
(9, '', NULL, 9),
(10, 'll', NULL, 10),
(11, 'kinje 12', NULL, 11),
(12, 'qqqq', NULL, 12),
(13, 'kllkl', NULL, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelayanan`
--

CREATE TABLE `pelayanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `keterangan` tinytext DEFAULT NULL,
  `kode` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelayanan`
--

INSERT INTO `pelayanan` (`id`, `nama`, `keterangan`, `kode`) VALUES
(1, 'Fajar Firmansyah', NULL, '01'),
(2, 'Maman', NULL, '02'),
(3, 'MUHAMMAD GILANG AL AKBAR', NULL, '03'),
(4, 'kinje', NULL, '04'),
(5, 'Usman a', NULL, '05'),
(6, 'Jumar', NULL, '06'),
(7, 'TASLIM', NULL, '07'),
(8, 'anrol', NULL, '08'),
(9, '', NULL, '09'),
(10, 'll', NULL, '10'),
(11, 'kinje 12', NULL, '11'),
(12, 'qqqq', NULL, '12'),
(13, 'kllkl', NULL, '13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `antrian`
--
ALTER TABLE `antrian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelayanan_id` (`pelayanan_id`),
  ADD KEY `loket_id` (`loket_id`);

--
-- Indeks untuk tabel `loket`
--
ALTER TABLE `loket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelayanan_id` (`pelayanan_id`);

--
-- Indeks untuk tabel `pelayanan`
--
ALTER TABLE `pelayanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `antrian`
--
ALTER TABLE `antrian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `loket`
--
ALTER TABLE `loket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pelayanan`
--
ALTER TABLE `pelayanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `antrian`
--
ALTER TABLE `antrian`
  ADD CONSTRAINT `antrian_ibfk_1` FOREIGN KEY (`pelayanan_id`) REFERENCES `pelayanan` (`id`),
  ADD CONSTRAINT `antrian_ibfk_2` FOREIGN KEY (`loket_id`) REFERENCES `loket` (`pelayanan_id`);

--
-- Ketidakleluasaan untuk tabel `loket`
--
ALTER TABLE `loket`
  ADD CONSTRAINT `loket_ibfk_1` FOREIGN KEY (`pelayanan_id`) REFERENCES `pelayanan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
