-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2022 pada 03.48
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbberita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(4, 'kuliah daring', '2017-01-24 01:31:13', 1, 'Administrator', 0, 'a5a076e5aba981105937f640da2a5eaa.jpg'),
(5, 'alumni sukses', '2021-03-24 02:35:39', 1, 'Administrator', 0, 'a468a6be68d2061e1169ba9dc006bd5a.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(10, 'me', 'me@gmail.com', NULL, 'test admin', '2022-12-21 13:59:04', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Biografi', '2022-12-22 05:49:04'),
(2, 'Teknologi', '2022-12-22 05:50:01'),
(3, 'Tips and Triks', '2022-12-22 05:59:39'),
(4, 'Aksi', '2022-12-22 06:59:39'),
(5, 'Petualangan', '2022-12-22 07:23:20'),
(6, 'Sience', '2022-12-22 08:59:00'),
(7, 'Ibu dan Anak', '2022-12-22 07:00:59'),
(8, 'Penelitian', '2022-12-22 06:19:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Administrator', 'Hanya ADMIN', 'L', 'admin', '21232f297a57a5a743894a0e4a801fc3', '-', 'admin@gmail.com', '083878034992', 'facebook.com', 'twitter.com', '', '', 1, '1', '2022-12-21 06:07:55', '1376fab62abf4f185388683e1d7ddf6b.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post_rating`
--

CREATE TABLE `tbl_post_rating` (
  `rate_id` int(11) NOT NULL,
  `rate_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `rate_ip` varchar(40) DEFAULT NULL,
  `rate_point` int(11) DEFAULT NULL,
  `rate_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `views_id` int(11) NOT NULL,
  `views_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `views_ip` varchar(40) DEFAULT NULL,
  `views_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- --------------------------------------------------------
--


--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(200) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(250) DEFAULT NULL,
  `tulisan_rating` int(11) DEFAULT 0,
  `tulisan_status` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`, `tulisan_rating`, `tulisan_status`) VALUES
(42, 'PKM AI', '<p>Merupakan program penulisan artikel ilmiah yang bersumber dari hasil kegiatan<br />\r\nkelompok mahasiswa dalam bidang pendidikan, penelitian atau pengabdian kepada<br />\r\nmasyarakat (misalnya studi kasus, praktik lapang, KKN, PKM, magang).<br />\r\n&nbsp;</p>\r\n', '2018-04-23 04:45:59', 5, 'Penelitian', 1, '77bdb284b1d4315a1b0714485e529c22.jpg', 0, '', 0, 'pkm-ai.html', 0, '1'),
(49, 'PKM K', '<p>Merupakan program pengembangan ketrampilan mahasiswa dalam berwirausaha dan<br />\r\nberorientasi pada profit. Komoditas usaha yang dihasilkan dapat berupa barang atau jasa<br />\r\nyang selanjutnya merupakan salah satu modal dasar mahasiswa berwirausaha dan<br />\r\nmemasuki pasar. Jadi pemeran utama berwirausaha dalam hal ini adalah mahasiswa,<br />\r\nbukan masyarakat, ataupun mitra lainnya<br />\r\n&nbsp;</p>\r\n', '2018-04-23 04:48:53', 5, 'Penelitian', 0, '7e1282445555003538b03324fb2d79c5.jpg', 0, '', 0, 'pkm-k.html', 0, '1'),
(50, 'PKM GT', '<p>Merupakan program penulisan ide atau gagasan visioner kelompok mahasiswa, berupa<br />\r\nkonsep yang memuat strategi solutif tentang sesuatu persoalan regional atau bahkan<br />\r\nnasional. Gagasan yang dituliskan dapat mengacu kepada isu aktual yang ada di<br />\r\nmasyarakat dan memerlukan solusi sistemik berjangka panjang berdasarkan hasil karya<br />\r\npikir yang cerdas dan implementatif.<br />\r\n&nbsp;</p>\r\n', '2018-04-23 04:49:23', 5, 'Penelitian', 0, 'c16b8777e979133f26372c52dc0c7bf6.jpg', 0, '', 0, 'pkm-gt.html', 0, '1'),
(51, 'PKM M', '<p>Merupakan program penerapan ilmu pengetahuan, teknologi dan seni dalam upaya<br />\r\npeningkatan kinerja, membangun keterampilan usaha, penataan dan perbaikan<br />\r\nlingkungan, penguatan kelembagaan masyarakat, sosialisasi penggunaan obat secara<br />\r\nrasional, pengenalan dan pemahaman aspek hukum adat, upaya penyembuhan buta aksara<br />\r\ndan lain-lain bagi masyarakat baik formal maupun non-formal, yang sementara ini dinilai<br />\r\nkurang produktif. Disyaratkan dalam Proposal program ini adanya komitmen<br />\r\nbekerjasama secara tertulis dari komponen masyarakat yang akan dibantu/menjadi<br />\r\nkhalayak sasaran. Mitra PKMM-M adalah masyarakat yang tidak berorientasi profit.<br />\r\n&nbsp;</p>\r\n', '2018-04-23 04:49:48', 5, 'Penelitian', 0, 'bc60c8f7c9a91261019d61be2fe094d1.jpg', 0, '', 0, 'pkm-m.html', 0, '1'),
(52, 'PKM P', '<p>Merupakan program penelitian yang dimaksudkan untuk mampu menjawab berbagai<br />\r\nmacam permasalahan keilmuan. Program ini dikelompokan menjadi penelitian bidang<br />\r\neksakta (PKM- PE) dan sosial humaniora (PKM-SH).<br />\r\nPKM-PE merupakan program penelitian yang dimaksudkan untuk mampu menjawab<br />\r\nberbagai macam permasalahan yang berkaitan dengan isu terkini bidang eksakta,<br />\r\nmisalnya mengidentifikasi faktor penentu mutu produk, inventarisasi atau eksplorasi<br />\r\nsumber daya, modifikasi produk, identifikasi dan pengujian khasiat senyawa kimia bahan<br />\r\nalam.<br />\r\nPKM-PSH merupakan program penelitian untuk memecahkan masalah sosial humaniora,<br />\r\nmisalnya survei kesehatan anak jalanan, metode pembelajaran aksara daerah di siswa<br />\r\nsekolah dasar, pengembangan metode pembelajaran, laju pertumbuhan ekonomi di<br />\r\nsentra kerajinan, permasalahan psikologi, budaya, seni yang mewarnai perilaku<br />\r\nmasyarakat dan hal-hal yang berkaitan dengan kearifan lokal.<br />\r\n&nbsp;</p>\r\n', '2018-04-23 04:50:18', 5, 'Penelitian', 1, 'e1051dfe815a8035289fba29c110eca6.jpg', 0, '', 0, 'pkm-p.html', 0, '1'),
(53, 'PKM T', '<p>Merupakan program bantuan teknologi (mutu bahan baku, prototipe, model, peralatan<br />\r\natau proses produksi, pengolahan limbah, sistem jaminan mutu, kemasan dan lain-lain)<br />\r\natau manajemen (perbaikan mutu kinerja SDM, pemasaran, pembukuan, status usaha,<br />\r\nHaKI dan lain-lain) atau lainnya bagi industri berskala mikro atau kecil (industri<br />\r\nrumahan, pedagang kecil atau koperasi), menengah atau bahkan berskala besar, yang<br />\r\nmenyangkut kepentingan masyarakat luas dan sesuai dengan kebutuhan calon mitra<br />\r\nprogram. Mitra program yang dimaksud dalam hal ini adalah kelompok masyarakat yang<br />\r\nberorientasi pada profit, misalnya: pedagang, klinik bersalin, penyedia jasa dan sebagainya.<br />\r\nPKM-T mewajibkan mahasiswa bertukar pikiran dengan mitra terlebih dahulu, karena<br />\r\nproduk PKM-T merupakan solusi atas persoalan prioritas mitra. Dengan demikian, di<br />\r\ndalam usul program harus dilampirkan Surat Pernyataan Kesediaan Bekerjasama dari<br />\r\nMitra.<br />\r\n&nbsp;</p>\r\n', '2018-04-23 04:50:45', 5, 'Penelitian', 1, '567c6b14855a0a50f769baf56efe0eb6.jpg', 0, '', 0, 'pkm-t.html', 0, '1'),
(54, 'Berita LOMBA MAHASISWA', '<p>Merupakan program penciptaan yang didasari atas karsa dan nalar mahasiswa, bersifat<br />\r\nkonstruktif serta menghasilkan suatu sistem, desain, model/barang atau prototipe dan<br />\r\nsejenisnya. Karya cipta tersebut bisa saja belum memberikan nilai kemanfaatan langsung<br />\r\nbagi pihak lain.<br />\r\n&nbsp;</p>\r\n', '2018-04-23 04:51:09', 2, 'Teknologi', 0, '4ff3ae84a64924828cf2b1b14ac8a731.jpg', 0, '', 0, 'berita-lomba-mahasiswa.html', 0, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `nim` int(10) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nim`, `nama_user`, `email`, `password`) VALUES
(1, 12321, 'me', 'me@gmail.', '827ccb0eea8a706c4c34a16891f84e7b');


--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indeks untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`views_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=949;

--
-- AUTO_INCREMENT untuk tabel `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `views_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
