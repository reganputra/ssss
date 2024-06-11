-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2024 pada 15.12
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ponpes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `nama_event` varchar(100) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id_event`, `nama_event`, `gambar`) VALUES
(1, 'event1', 'pengajian.jpg'),
(2, 'event2', 'santri mengajar.jpg'),
(3, 'event3', 'hari santri.jpg'),
(4, 'event4', 'Kajian ahad.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta_terdaftar`
--

CREATE TABLE `peserta_terdaftar` (
  `id_terdaftar` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telpon` int(13) NOT NULL,
  `kelamin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peserta_terdaftar`
--

INSERT INTO `peserta_terdaftar` (`id_terdaftar`, `id_event`, `nama`, `email`, `telpon`, `kelamin`) VALUES
(1, 4, 'aqsa', 'aqsa@gmail.com', 123, 'laki'),
(2, 1, 'aqsa', 'aqsa@gmail.com', 123, 'laki'),
(3, 2, 'aqsa', 'aqsa@gmail.com', 123, 'laki'),
(4, 4, 'aqsa', 'aqsa@gmail.com', 123, 'laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `santri`
--

CREATE TABLE `santri` (
  `idSantri` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `santri`
--

INSERT INTO `santri` (`idSantri`, `nama`, `jenis_kelamin`, `alamat`, `tempat_lahir`, `tgl_lahir`) VALUES
(0, 'Rusdi Bimantara', 'Laki-laki', 'Jl. Kamboja No. 10', 'Denpasar', '2010-10-24'),
(1, 'Muhammad Asyraf', 'Laki-laki', 'Jl Gunung anyar 10', 'Magetan', '10 Juni 2003'),
(2, 'Aqsa Prima', 'Laki-laki', 'Jl Semolowaru 20', 'Surabaya', '11 April 2001'),
(3, 'Regan Putra', 'Laki-laki', 'Jl hayam wuruk 2', 'Surabaya', '11 November 200'),
(4, 'Daniel Perdana', 'Laki-laki', 'Medokan astri timur 11', 'Surabaya', '20 Mei 2002'),
(5, 'Brahma Faiq', 'Laki-laki', 'Jl Taman sidoarjo 10', 'Sidoarjo', '21 Desember 200'),
(6, 'Yudhistira nanda', 'Laki-laki', 'Jl Medokan Asri 20', 'Surabaya', '13 Maret 1999'),
(7, 'Septianto Bagus', 'Laki-laki', 'Jl Medokan Asri 30', 'Bojonegoro', '15 Mei 2000'),
(8, 'Ahmad Fauzi', 'Laki-laki', 'Jl. Merpati No. 1', 'Jakarta', '2001-01-15'),
(9, 'Budi Santoso', 'Laki-laki', 'Jl. Melati No. 2', 'Bandung', '2002-02-16'),
(10, 'Chandra Wijaya', 'Laki-laki', 'Jl. Mawar No. 3', 'Surabaya', '2003-03-17'),
(11, 'Dewi Lestari', 'Perempuan', 'Jl. Kenanga No. 4', 'Semarang', '2004-04-18'),
(12, 'Eko Prasetyo', 'Laki-laki', 'Jl. Flamboyan No. 5', 'Yogyakarta', '2005-05-19'),
(13, 'Fani Susanti', 'Perempuan', 'Jl. Cempaka No. 6', 'Palembang', '2006-06-20'),
(14, 'Gita Ananda', 'Perempuan', 'Jl. Anggrek No. 7', 'Medan', '2007-07-21'),
(15, 'Hendra Gunawan', 'Laki-laki', 'Jl. Dahlia No. 8', 'Makassar', '2008-08-22'),
(16, 'Indra Kurniawan', 'Laki-laki', 'Jl. Melur No. 9', 'Balikpapan', '2009-09-23'),
(18, 'Kirana Ayu', 'Perempuan', 'Jl. Teratai No. 11', 'Malang', '2011-11-25'),
(19, 'Lia Anggraini', 'Perempuan', 'Jl. Kenanga No. 12', 'Pontianak', '2012-12-26'),
(20, 'Maya Sari', 'Perempuan', 'Jl. Seroja No. 13', 'Banjarmasin', '2013-01-27'),
(21, 'Nina Agustina', 'Perempuan', 'Jl. Aster No. 14', 'Pekanbaru', '2014-02-28'),
(22, 'Oka Permana', 'Laki-laki', 'Jl. Melati No. 15', 'Manado', '2015-03-01'),
(23, 'Putu Wira', 'Laki-laki', 'Jl. Mawar No. 16', 'Mataram', '2016-04-02'),
(24, 'Qori Saputra', 'Laki-laki', 'Jl. Kenanga No. 17', 'Jayapura', '2017-05-03'),
(25, 'Rina Marlina', 'Perempuan', 'Jl. Flamboyan No. 18', 'Bandar Lampung', '2018-06-04'),
(26, 'Sari Anggita', 'Perempuan', 'Jl. Cempaka No. 19', 'Kupang', '2019-07-05'),
(27, 'Tini Handayani', 'Perempuan', 'Jl. Anggrek No. 20', 'Ambon', '2020-08-06'),
(28, 'Umar Hadi', 'Laki-laki', 'Jl. Dahlia No. 21', 'Palangkaraya', '2000-09-07'),
(29, 'Vina Wulandari', 'Perempuan', 'Jl. Melur No. 22', 'Palu', '2001-10-08'),
(30, 'Wira Santoso', 'Laki-laki', 'Jl. Kamboja No. 23', 'Samarinda', '2002-11-09'),
(31, 'Suwito', 'Laki-laki', 'Jl Barata Jaya 41', 'Jombang', '9 Desember 2000'),
(32, 'Widi Purnama', 'Perempuan', 'Jl. Kenanga No. 101', 'Surabaya', '2017-05-26'),
(33, 'Xavi Adrian', 'Laki-laki', 'Jl. Flamboyan No. 102', 'Malang', '2018-06-27'),
(34, 'Yusuf Maulana', 'Laki-laki', 'Jl. Cempaka No. 103', 'Pasuruan', '2019-07-28'),
(35, 'Zahra Amalia', 'Perempuan', 'Jl. Anggrek No. 104', 'Probolinggo', '2020-08-29'),
(36, 'Aldi Saputra', 'Laki-laki', 'Jl. Dahlia No. 105', 'Blitar', '2000-09-30'),
(37, 'Bella Rahmawati', 'Perempuan', 'Jl. Melur No. 106', 'Madiun', '2001-10-31'),
(38, 'Cindy Pratiwi', 'Perempuan', 'Jl. Kamboja No. 107', 'Surabaya', '2002-11-01'),
(39, 'Deni Suryadi', 'Laki-laki', 'Jl. Teratai No. 108', 'Malang', '2003-12-02'),
(40, 'Elisa Putri', 'Perempuan', 'Jl. Seroja No. 109', 'Pasuruan', '2004-01-03'),
(41, 'Fahri Ramadhan', 'Laki-laki', 'Jl. Aster No. 110', 'Probolinggo', '2005-02-04'),
(42, 'Gilang Saputra', 'Laki-laki', 'Jl. Melati No. 111', 'Blitar', '2006-03-05'),
(43, 'Hana Pratiwi', 'Perempuan', 'Jl. Mawar No. 112', 'Madiun', '2007-04-06'),
(44, 'Irfan Maulana', 'Laki-laki', 'Jl. Kenanga No. 113', 'Surabaya', '2008-05-07'),
(45, 'Jeni Wulandari', 'Perempuan', 'Jl. Flamboyan No. 114', 'Malang', '2009-06-08'),
(46, 'Kurnia Ramadhan', 'Laki-laki', 'Jl. Cempaka No. 115', 'Pasuruan', '2010-07-09'),
(47, 'Lutfi Pratama', 'Laki-laki', 'Jl. Anggrek No. 116', 'Probolinggo', '2011-08-10'),
(48, 'Mega Lestari', 'Perempuan', 'Jl. Dahlia No. 117', 'Blitar', '2012-09-11'),
(49, 'Nanda Saputra', 'Laki-laki', 'Jl. Melur No. 118', 'Madiun', '2013-10-12'),
(50, 'Oki Maulana', 'Laki-laki', 'Jl. Kamboja No. 119', 'Surabaya', '2014-11-13'),
(51, 'Putu Widi', 'Laki-laki', 'Jl. Teratai No. 120', 'Malang', '2015-12-14'),
(52, 'Qori Pratama', 'Laki-laki', 'Jl. Seroja No. 121', 'Pasuruan', '2016-01-15'),
(53, 'Rara Lestari', 'Perempuan', 'Jl. Aster No. 122', 'Probolinggo', '2017-02-16'),
(54, 'Sandi Wijaya', 'Laki-laki', 'Jl. Melati No. 123', 'Blitar', '2018-03-17'),
(55, 'Tia Nurjanah', 'Perempuan', 'Jl. Mawar No. 124', 'Madiun', '2019-04-18'),
(56, 'Udin Purnama', 'Laki-laki', 'Jl. Kenanga No. 125', 'Surabaya', '2020-05-19'),
(57, 'Vita Anggraini', 'Perempuan', 'Jl. Flamboyan No. 126', 'Malang', '2000-06-20'),
(58, 'Wira Saputra', 'Laki-laki', 'Jl. Cempaka No. 127', 'Pasuruan', '2001-07-21'),
(59, 'Xena Pertiwi', 'Perempuan', 'Jl. Anggrek No. 128', 'Probolinggo', '2002-08-22'),
(60, 'Yuli Pratama', 'Perempuan', 'Jl. Dahlia No. 129', 'Blitar', '2003-09-23'),
(61, 'Zaki Rahman', 'Laki-laki', 'Jl. Melur No. 130', 'Madiun', '2004-10-24'),
(62, 'Ahmad Pratama', 'Laki-laki', 'Jl. Kamboja No. 131', 'Surabaya', '2005-11-25'),
(63, 'Budi Wibowo', 'Laki-laki', 'Jl. Teratai No. 132', 'Malang', '2006-12-26'),
(64, 'Citra Ramadhani', 'Perempuan', 'Jl. Seroja No. 133', 'Pasuruan', '2007-01-27'),
(65, 'Dika Maulana', 'Laki-laki', 'Jl. Aster No. 134', 'Probolinggo', '2008-02-28'),
(66, 'Eka Ramadhani', 'Perempuan', 'Jl. Melati No. 135', 'Blitar', '2009-03-01'),
(67, 'Faisal Pratama', 'Laki-laki', 'Jl. Mawar No. 136', 'Madiun', '2010-04-02'),
(68, 'Gita Wulandari', 'Perempuan', 'Jl. Kenanga No. 137', 'Surabaya', '2011-05-03'),
(69, 'Hana Wibowo', 'Perempuan', 'Jl. Flamboyan No. 138', 'Malang', '2012-06-04'),
(70, 'Indra Maulana', 'Laki-laki', 'Jl. Cempaka No. 139', 'Pasuruan', '2013-07-05'),
(71, 'Joko Rahman', 'Laki-laki', 'Jl. Anggrek No. 140', 'Probolinggo', '2014-08-06'),
(72, 'Kiki Ramadhani', 'Perempuan', 'Jl. Dahlia No. 141', 'Blitar', '2015-09-07'),
(73, 'Lina Pratama', 'Perempuan', 'Jl. Melur No. 142', 'Madiun', '2016-10-08'),
(74, 'Mukti Rahman', 'Laki-laki', 'Jl. Kamboja No. 143', 'Surabaya', '2017-11-09'),
(75, 'Nia Pratiwi', 'Perempuan', 'Jl. Teratai No. 144', 'Malang', '2018-12-10'),
(76, 'Oman Purnama', 'Laki-laki', 'Jl. Seroja No. 145', 'Pasuruan', '2019-01-11'),
(77, 'Pipit Wulandari', 'Perempuan', 'Jl. Aster No. 146', 'Probolinggo', '2020-02-12'),
(78, 'Qomarudin Pratama', 'Laki-laki', 'Jl. Melati No. 147', 'Blitar', '2000-03-13'),
(79, 'Rini Pertiwi', 'Perempuan', 'Jl. Mawar No. 148', 'Madiun', '2001-04-14'),
(80, 'Susi Pratama', 'Perempuan', 'Jl. Kenanga No. 149', 'Surabaya', '2002-05-15'),
(81, 'Taufik Ramadhani', 'Laki-laki', 'Jl. Flamboyan No. 150', 'Malang', '2003-06-16'),
(82, 'Umar Maulana', 'Laki-laki', 'Jl. Cempaka No. 151', 'Pasuruan', '2004-07-17'),
(83, 'Vina Wibowo', 'Perempuan', 'Jl. Anggrek No. 152', 'Probolinggo', '2005-08-18'),
(84, 'Widi Ramadhani', 'Perempuan', 'Jl. Dahlia No. 153', 'Blitar', '2006-09-19'),
(85, 'Xavier Pratama', 'Laki-laki', 'Jl. Melur No. 154', 'Madiun', '2007-10-20'),
(86, 'Yuda Wibowo', 'Laki-laki', 'Jl. Kamboja No. 155', 'Surabaya', '2008-11-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ustad`
--

CREATE TABLE `ustad` (
  `idUstad` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ustad`
--

INSERT INTO `ustad` (`idUstad`, `nama`, `jenis_kelamin`, `alamat`, `tempat_lahir`, `tgl_lahir`) VALUES
(1, 'Ustad Ahmad Fauzi', 'Laki-laki', 'Jl. Merpati No. 1', 'Jakarta', '1975-01-15'),
(2, 'Ustad Budi Santoso', 'Laki-laki', 'Jl. Melati No. 2', 'Bandung', '1976-02-16'),
(3, 'Ustad Chandra Wijaya', 'Laki-laki', 'Jl. Mawar No. 3', 'Surabaya', '1977-03-17'),
(4, 'Ustad Dedi Lestari', 'Laki-laki', 'Jl. Kenanga No. 4', 'Semarang', '1978-04-18'),
(5, 'Ustad Eko Prasetyo', 'Laki-laki', 'Jl. Flamboyan No. 5', 'Yogyakarta', '1979-05-19'),
(6, 'Ustad Fahri Susanto', 'Laki-laki', 'Jl. Cempaka No. 6', 'Palembang', '1980-06-20'),
(7, 'Ustad Gani Ananda', 'Laki-laki', 'Jl. Anggrek No. 7', 'Medan', '1981-07-21'),
(8, 'Ustad Hendra Gunawan', 'Laki-laki', 'Jl. Dahlia No. 8', 'Makassar', '1982-08-22'),
(9, 'Ustad Indra Kurniawan', 'Laki-laki', 'Jl. Melur No. 9', 'Balikpapan', '1983-09-23'),
(10, 'Ustad Joko Widodo', 'Laki-laki', 'Jl. Kamboja No. 10', 'Denpasar', '1984-10-24'),
(11, 'Ustad Udin Melayang', 'Laki-laki', 'Jl. Teratai No. 11', 'Malang', '1985-11-25'),
(12, 'Ustad Luki Anggraini', 'Laki-laki', 'Jl. Kenanga No. 12', 'Pontianak', '1986-12-26'),
(13, 'Ustad Mahmud Sari', 'Laki-laki', 'Jl. Seroja No. 13', 'Banjarmasin', '1987-01-27'),
(14, 'Ustad Fuad Amba', 'Laki-laki', 'Jl. Aster No. 14', 'Pekanbaru', '1988-02-28'),
(15, 'Ustad Oka Permana', 'Laki-laki', 'Jl. Melati No. 15', 'Manado', '1989-03-01'),
(16, 'Ustad Putu Wira', 'Laki-laki', 'Jl. Mawar No. 16', 'Mataram', '1990-04-02'),
(17, 'Ustad Qori Saputra', 'Laki-laki', 'Jl. Kenanga No. 17', 'Jayapura', '1991-05-03'),
(18, 'Ustad Roni Marlina', 'Laki-laki', 'Jl. Flamboyan No. 18', 'Bandar Lampung', '1992-06-04'),
(19, 'Ustad Ironi Basikal', 'Laki-laki', 'Jl. Cempaka No. 19', 'Kupang', '1993-07-05'),
(20, 'Ustad Tono Handayani', 'Laki-laki', 'Jl. Anggrek No. 20', 'Ambon', '1994-08-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ustadzah`
--

CREATE TABLE `ustadzah` (
  `idUstadzah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ustadzah`
--

INSERT INTO `ustadzah` (`idUstadzah`, `nama`, `jenis_kelamin`, `alamat`, `tempat_lahir`, `tgl_lahir`) VALUES
(1, 'Ustadzah Aisyah Lestari', 'Perempuan', 'Jl. Melati No. 21', 'Jakarta', '1975-01-15'),
(2, 'Ustadzah Bella Rahmawati', 'Perempuan', 'Jl. Mawar No. 22', 'Bandung', '1976-02-16'),
(3, 'Ustadzah Citra Wijaya', 'Perempuan', 'Jl. Kenanga No. 23', 'Surabaya', '1977-03-17'),
(4, 'Ustadzah Dina Prasetyo', 'Perempuan', 'Jl. Flamboyan No. 24', 'Semarang', '1978-04-18'),
(5, 'Ustadzah Elly Susanti', 'Perempuan', 'Jl. Cempaka No. 25', 'Yogyakarta', '1979-05-19'),
(6, 'Ustadzah Farah Ananda', 'Perempuan', 'Jl. Anggrek No. 26', 'Palembang', '1980-06-20'),
(7, 'Ustadzah Gita Gunawan', 'Perempuan', 'Jl. Dahlia No. 27', 'Medan', '1981-07-21'),
(8, 'Ustadzah Hana Kurniawan', 'Perempuan', 'Jl. Melur No. 28', 'Makassar', '1982-08-22'),
(9, 'Ustadzah Indah Widodo', 'Perempuan', 'Jl. Kamboja No. 29', 'Balikpapan', '1983-09-23'),
(10, 'Ustadzah Jeni Ayu', 'Perempuan', 'Jl. Teratai No. 30', 'Denpasar', '1984-10-24'),
(11, 'Ustadzah Karina Anggraini', 'Perempuan', 'Jl. Seroja No. 31', 'Malang', '1985-11-25'),
(12, 'Ustadzah Lina Sari', 'Perempuan', 'Jl. Aster No. 32', 'Pontianak', '1986-12-26'),
(13, 'Ustadzah Mira Agustina', 'Perempuan', 'Jl. Melati No. 33', 'Banjarmasin', '1987-01-27'),
(14, 'Ustadzah Nana Permana', 'Perempuan', 'Jl. Mawar No. 34', 'Pekanbaru', '1988-02-28'),
(15, 'Ustadzah Opi Wira', 'Perempuan', 'Jl. Kenanga No. 35', 'Manado', '1989-03-01'),
(16, 'Ustadzah Putri Saputra', 'Perempuan', 'Jl. Flamboyan No. 36', 'Mataram', '1990-04-02'),
(17, 'Ustadzah Qori Marlina', 'Perempuan', 'Jl. Cempaka No. 37', 'Jayapura', '1991-05-03'),
(18, 'Ustadzah Rina Anggita', 'Perempuan', 'Jl. Anggrek No. 38', 'Bandar Lampung', '1992-06-04'),
(19, 'Ustadzah Siti Handayani', 'Perempuan', 'Jl. Dahlia No. 39', 'Kupang', '1993-07-05'),
(20, 'Ustadzah Tia Nurjanah', 'Laki-laki', 'Jl. Melur No. 40', 'Ambon', '1994-08-06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indeks untuk tabel `peserta_terdaftar`
--
ALTER TABLE `peserta_terdaftar`
  ADD PRIMARY KEY (`id_terdaftar`);

--
-- Indeks untuk tabel `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`idSantri`);

--
-- Indeks untuk tabel `ustad`
--
ALTER TABLE `ustad`
  ADD PRIMARY KEY (`idUstad`);

--
-- Indeks untuk tabel `ustadzah`
--
ALTER TABLE `ustadzah`
  ADD PRIMARY KEY (`idUstadzah`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `peserta_terdaftar`
--
ALTER TABLE `peserta_terdaftar`
  MODIFY `id_terdaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `santri`
--
ALTER TABLE `santri`
  MODIFY `idSantri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `ustad`
--
ALTER TABLE `ustad`
  MODIFY `idUstad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `ustadzah`
--
ALTER TABLE `ustadzah`
  MODIFY `idUstadzah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
