-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Nov 2024 pada 07.13
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beassiswa_farrel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_beasiswa`
--

CREATE TABLE `daftar_beasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `no_hp` varchar(55) NOT NULL,
  `semester` int(11) NOT NULL,
  `last_ipk` float NOT NULL,
  `beasiswa` varchar(55) NOT NULL,
  `syarat_berkas` varchar(55) NOT NULL,
  `status_ajuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `daftar_beasiswa`
--

INSERT INTO `daftar_beasiswa` (`id`, `nama`, `email`, `no_hp`, `semester`, `last_ipk`, `beasiswa`, `syarat_berkas`, `status_ajuan`) VALUES
(12, 'Muhammad Aqilla Farrel Hussain', 'farrelhussain@gmail.com', '082134794024', 8, 3.25, 'Akademik', '18102275 Registrasi _ Telkom University.pdf', 0),
(13, 'Muhammad Syarif Hidayatullah', 'syarifhidayatullah@gmail.com', '082134794024', 8, 3.39, 'Non Akademik', 'Formulir-Pendaftaran-Sidang-FIF-2021.pdf', 0),
(14, 'Andi Pratama', 'andi.pratama123@gmail.com', '082134794024', 8, 3.53, 'Lainnya', 'LOA CENTIVE 2019 Submission 22.pdf', 0),
(15, 'Siti Rahmawati', 'siti.rahmawati87@gmail.com', '082134794024', 7, 3.35, 'Akademik', '18102275 Nilai _ Telkom University.pdf', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`id`, `nama`, `email`) VALUES
(1, 'Muhammad Aqilla Farrel Hussain', 'farrelhussain@gmail.com'),
(2, 'Muhammad Syarif Hidayatullah', 'syarifhidayatullah@gmail.com'),
(3, 'Andi Pratama', 'andi.pratama123@gmail.com'),
(4, 'Siti Rahmawati', 'siti.rahmawati87@gmail.com'),
(5, 'Budi Santoso', 'budi.santoso456@gmail.com'),
(6, 'Rina Kartika', 'rina.kartika89@gmail.com'),
(7, 'Agus Setiawan', 'agus.setiawan01@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_beasiswa`
--
ALTER TABLE `daftar_beasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar_beasiswa`
--
ALTER TABLE `daftar_beasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
