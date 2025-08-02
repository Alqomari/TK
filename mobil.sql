-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Agu 2024 pada 06.55
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datamobil`
--

CREATE TABLE `datamobil` (
  `idmobil` varchar(20) NOT NULL,
  `merk` varchar(25) NOT NULL,
  `usiamobil` varchar(20) NOT NULL,
  `noRangka` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `datamobil`
--

INSERT INTO `datamobil` (`idmobil`, `merk`, `usiamobil`, `noRangka`) VALUES
('MB001', 'Yaris', '4', 'KL1672'),
('MB002', 'Jazz', '6', 'BK672'),
('MB003', 'Brio', '2', 'KF6572');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasilsaw`
--

CREATE TABLE `hasilsaw` (
  `IDmobil` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `SkorTotal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hasilsaw`
--

INSERT INTO `hasilsaw` (`IDmobil`, `merk`, `SkorTotal`) VALUES
('MB01', 'Yaris', '0,758'),
('MB03', 'Brio', '0,713'),
('MB04', 'Agya', '0,594'),
('MB05', 'Ayla', '0,575'),
('MB02', 'Jazz', '0,498');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `IDKriteria` varchar(50) NOT NULL,
  `NamaKriteria` varchar(50) NOT NULL,
  `Bobot` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`IDKriteria`, `NamaKriteria`, `Bobot`) VALUES
('K01', 'Jarak', 50.00),
('K02', 'Harga', 30.00),
('K03', 'Konsumsi BBM', 5.00),
('K04', 'Usia Mobil', 15.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilaikriteria`
--

CREATE TABLE `nilaikriteria` (
  `IDNilaiKriteria` varchar(50) NOT NULL,
  `IDmobil` varchar(50) NOT NULL,
  `merk` varchar(50) DEFAULT NULL,
  `jarak` decimal(10,1) DEFAULT NULL,
  `harga` decimal(30,1) NOT NULL,
  `usiamobil` decimal(10,1) DEFAULT NULL,
  `bbm` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nilaikriteria`
--

INSERT INTO `nilaikriteria` (`IDNilaiKriteria`, `IDmobil`, `merk`, `jarak`, `harga`, `usiamobil`, `bbm`) VALUES
('NK001', 'MB03', 'Brio', 20.0, 30000000.0, 2.0, 6.0),
('NK002', 'MB04', 'Agya', 40.0, 45000000.0, 3.0, 3.0),
('NK004', 'MB01', 'Yaris', 30.0, 60000000.0, 2.0, 2.0),
('NK005', 'MB02', 'Jazz', 50.0, 50000000.0, 2.0, 5.0),
('NK006', 'MB05', 'Ayla', 100.0, 80000000.0, 3.0, 3.0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`username`, `password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datamobil`
--
ALTER TABLE `datamobil`
  ADD PRIMARY KEY (`idmobil`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`IDKriteria`);

--
-- Indeks untuk tabel `nilaikriteria`
--
ALTER TABLE `nilaikriteria`
  ADD PRIMARY KEY (`IDNilaiKriteria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
