-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2021 pada 11.17
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbadmin`
--

CREATE TABLE `tbadmin` (
  `kdadmin` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kategori` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbadmin`
--

INSERT INTO `tbadmin` (`kdadmin`, `username`, `password`, `nama`, `kategori`) VALUES
(1, 'berniman', 'berniman', 'BERNIMAN GOFINDO MALAU', '1'),
(2, 'gofindo', 'gofindo', 'BERNIMAN GOFINDO MALAU', '2'),
(3, 'malau', 'malau', 'BERNIMAN GOFINDO MALAU', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbdetailwisata`
--

CREATE TABLE `tbdetailwisata` (
  `kdwisata` int(10) NOT NULL,
  `g1` blob NOT NULL,
  `g2` blob NOT NULL,
  `g3` blob NOT NULL,
  `g4` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbdetailwisata`
--

INSERT INTO `tbdetailwisata` (`kdwisata`, `g1`, `g2`, `g3`, `g4`) VALUES
(1, 0x61322e706e67, 0x61332e706e67, 0x61342e706e67, 0x61352e706e67),
(4, 0x77312e706e67, 0x77342e706e67, 0x77352e706e67, 0x77362e706e67),
(5, 0x67322e706e67, 0x67332e706e67, 0x67342e706e67, 0x67352e706e67),
(6, 0x70322e706e67, 0x70332e706e67, 0x70342e706e67, 0x70352e706e67),
(7, 0x74322e706e67, 0x74332e706e67, 0x74342e706e67, 0x74352e706e67),
(8, 0x63322e706e67, 0x63332e706e67, 0x63342e706e67, 0x63352e706e67),
(9, 0x6b322e706e67, 0x6b332e706e67, 0x6b342e706e67, 0x6b352e706e67);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbkategori`
--

CREATE TABLE `tbkategori` (
  `kdkategori` int(10) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbkategori`
--

INSERT INTO `tbkategori` (`kdkategori`, `kategori`, `ket`) VALUES
(1, 'Pendakian', 'Wisata Alam'),
(2, 'Air Terjun', 'Wisata Alam'),
(3, 'Goa', 'Wisata Alam'),
(4, 'Pemandian', 'Wisata Alam'),
(5, 'Taman', 'Wisata Edukasi'),
(6, 'Candi', 'Wisata Edukasi'),
(7, 'Kampung Wisata', 'Wisata Edukasi'),
(8, 'Cafe', 'Wisata Tongkrongan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbtongkrongan`
--

CREATE TABLE `tbtongkrongan` (
  `kdcafe` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ket` longtext NOT NULL,
  `lokasi` longtext NOT NULL,
  `cover` varchar(100) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `kdkategori` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbtongkrongan`
--

INSERT INTO `tbtongkrongan` (`kdcafe`, `nama`, `ket`, `lokasi`, `cover`, `waktu`, `tgl`, `kdkategori`) VALUES
(1, 'Eazy Coffee', 'Desain eksterior Eazy Coffee tampak sangat minimalis dengan didominasi warna putih. Meski tampak kecil dari luar, ternyata bagian dalamnya cukup luas untuk nongkrong. Interiornya bernuansa rustic, tak kalah Instagramable dibanding kafe lainnya.', 'pangururan, samosir, sumatera utara', 'cafe2.png', '13.00-22.00', '2021-08-22', 8),
(2, 'Classic.co', 'Classic Coffee adalah kedai kopi baru yang ada di onan Runggu, Samosir. Mencampur konsep klasik dan industrial menjadikan kedai kopi ini memiliki vibes tersendiri. Ada beberapa varian kopi mulai dari Espresso based, single origin dan juga non Coffee. Beberapa menu makanan yang beda dari yang lain seperti Ricebowl Babat, Ricebowl Paru dan masih banyak lagi, dari menu Snack kalian bisa coba. Tersedia tempat indoor dan outdoor yang tentunya nyaman, Instagramable, dan cocok untuk santai, meeting dan juga bisa mengadakan acara ulang tahun, photosesion, nonton bareng.', 'Onan Runggu. Samosir, Sumatera Utara, Indonesia', 'cafe1.png', '24 jam', '2021-07-01', 8),
(3, 'Culino Coffee & Eaters', 'Culino coffee & eatery yang berlokasi dekat taman alun alun Parapat jalan joseph. Sinaga no. 15  kecamatan Girsang Simpangan Bolon kabupaten Simalungun Sumatera Utara, indonesia. Kami menyajikan menu minuman dan berbagai menu makanan khas dari cafe kami yang cukup terjangkau harganya dengan rasa yang berkualitas no satu, di tempat kami menyediakan fasilitas full ac yang membuat anda sejuk dan santai menikmati menu sajian dari cafe kami, silahkan datang dan kunjungi cafe kami.', 'Jl.Joseph. Sinaga no. 15  kecamatan Girsang Simpangan Bolon kabupaten Simalungun Sumatera Utara, indonesia', 'cafe4.png', '08.00 - 22.00', '2021-08-22', 8),
(4, 'Sumber Biru Cafe', 'Bersantai di warung sungai akan semakin nikmat jika sembari menyantap berbagai kuliner yang disediakan oleh beberapa warung yang berjejer di dalam lokasi wisata. Harga makanan yang dijualpun relatif murah. Ada beragam menu yang bisa anda nikmati seperti nasi goreng, nasi jagung, penyetan, bakso, pop mie, tahu tek dan lain-lain. Jenis minumannya pun bervariasi mulai dari teh tarik, es teh, es jeruk, dan masih banyak lagi. Jangan lupa, anda juga bisa mencoba kopi khas Toba disana, \"Kopi Excelsa\". ', 'Sijambur, Kecamatan Ajibata,Kab. Toba Samosir, Sumatera Utara', 'cafe3.png', '08.00 - 20.00', '2021-08-22', 8),
(5, 'Classic.co', 'Classic Coffee adalah kedai kopi baru yang ada di onan Runggu, Samosir. Mencampur konsep klasik dan industrial menjadikan kedai kopi ini memiliki vibes tersendiri. Ada beberapa varian kopi mulai dari Espresso based, single origin dan juga non Coffee. Beberapa menu makanan yang beda dari yang lain seperti Ricebowl Babat, Ricebowl Paru dan masih banyak lagi, dari menu Snack kalian bisa coba. Tersedia tempat indoor dan outdoor yang tentunya nyaman, Instagramable, dan cocok untuk santai, meeting dan juga bisa mengadakan acara ulang tahun, photosesion, nonton bareng.', 'Onan Runggu. Samosir, Sumatera Utara, Indonesia', 'cafe1.png', '24 jam', '2021-08-22', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbwisata`
--

CREATE TABLE `tbwisata` (
  `kdwisata` int(10) NOT NULL,
  `kdkategori` int(10) NOT NULL,
  `wisata` varchar(50) NOT NULL,
  `lokasi` mediumtext NOT NULL,
  `ket1` longtext NOT NULL,
  `ket2` longtext NOT NULL,
  `image` blob NOT NULL,
  `akses` longtext NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `tiket` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbwisata`
--

INSERT INTO `tbwisata` (`kdwisata`, `kdkategori`, `wisata`, `lokasi`, `ket1`, `ket2`, `image`, `akses`, `waktu`, `tiket`) VALUES
(1, 2, 'Sipiso-Piso', 'Desa Tongging, kecamatan Merek, Kabupaten Karo, Sumatera Utara. ', 'Air terjun ini merupakan salah satu objek wisata andalan provinsi sumatera utara. Dan salah satu air terjun tertinggi di indonesia dengan ketinggian 120 meter. Terletak di Desa Tongging, kecamatan Merek, Kabupaten Karo, Sumatera Utara. ', 'Lokasi air terjun ini berada tidak jauh dari danau terbesar di Indonesia, yaitu Danau Toba. Air terjun yang berada pada ketinggian 800 meter ini terbentuk dari sungai bawah tanah di plato Karo yang mengalir melalui sebuah goa disisi kawah danau Toba. Air yang keluar dari goa yang berukuran tidak begitu besar itu sangat deras apalagi jatuh pada ketinggian 120 meter, membuat air terjun ini begitu indah. Kata “piso” berarti pisau, karena memang air terjun ini bila dilihat dari jauh bentuknya seperti pisau, kecil dan panjang.', 0x61312e706e67, 'Transportasi Darat', '24 jam', 15000),
(4, 1, 'Gunung Sibuatan', 'Sumatera Utara, Indonesia', 'Mendaki Gunung Sibuatan yang merupakan gunung tertinggi di Provinsi Sumatera Utara akan memberikan kesan, pengalaman tersendiri, berbeda dibandingkan gunung lainnya. Dari base camp hingga puncak, para pendaki akan melewati hutan dengan pohon-pohon tinggi, kemudian hutan lumut, hingga ke puncak. Hanya beberapa menit menjelang puncak, pepohonan akan berkurang, tetapi itu pun masih cukup hijau. Karena itu, berbeda dibandingkan gunung lainnya di Sumatera Utara dimana ketika telah mencapai puncak para pendaki bisa memandang bebas panorama alam sekitar gunung. Ketika mendaki Gunung Sibuatan, para pendaki tidak akan mendapatkan pemandangan seperti itu.', 'Mendaki Gunung Sibuatan susah-susah gampang. Hal ini karena puncak Gunung Sibuatan masih ditumbuhi pohon, semak cukup rapat. Hanya pada beberapa lokasi saja, bisa memandang jauh hingga Danau Toba. Itu pun jika cuaca cukup cerah. Jika mendung atau berkabut, dipastikan para pendaki tidak akan dapat melihat pemandangan menakjubkan tersebut.', 0x77322e706e67, 'Transportasi Darat', '24 jam', 20000),
(5, 3, 'Seribu Goa Humbang Hasundutan', 'Dolok Pinapan,Pakkat, Humbahas, Sumatera Utara', 'Gua Pinapan merupakan salah satu gua dari Cagar Wisata Alam Baru Seribu Gua di Desa Banuarea Kecamatan Pakkat, tepatnya di kaki Gunung Dolok Pinapan, sekitar 45 km dari Doloksanggul.Akses menuju Desa Banuarea bisa dari simpang Parbotihan, Kecamatan Onanganjang, melewati Desa Panggugunan, Pulogodang dan Desa Sipagabu, terhampar sawah dan pohon durian, ambacang, petai dan aneka tumbuhan bio diversity.', 'Selain itu bisa juga melalui Pakkat, setelah melewati Desa Laksa dan Sijarango, sekitar 40 menit kita akan sampai di kawasan Gua Banuarea.Pertama sekali kita akan disambut Gua Jabi-jabi, salah satu gua di antara ribuan gua disitu. Setelah menelusuri jalan berliku dan menanjak, kita akan tiba di simpang, tempat pemberhentian kendaraan menuju Gua Pinapan yang eksotis itu.Dengan jalan kaki sekitar 500 meter melewati jalan mendatar lalu terjal, kita akan tiba di Gua Pinapan.dengan keragaman pototensi bio, geo dan culture diversity menjadi obyek pendukung kawasan Danau Toba sebagai destinasi wisata super prioritas.', 0x67312e706e67, 'Transportasi Darat, Jalan Kaki', '24 jam', 111111),
(6, 4, 'Air Panas Sipoholon, ', 'l. Tarutung, Tapian Nauli, Sipoholon, Kabupaten Tapanuli Utara, Sumatera Utara', 'Obyek wisata Pemandian Alam Air Panas Sipoholon mempunyai lokasi yang tepatnya berada di Jl. Tarutung, Tapian Nauli, Sipoholon, Kabupaten Tapanuli Utara, Sumatera Utara. Banyak wisatawan dari berbagai daerah datang kesana terutama saat hari libur atau akhir pekan, salah satu alasannya adalah karena mereka ingin merasakan sensasi berendam di pemandian yang mirip dengan Pemandian Pamukkale yang ada di Turki.', 'Tidak bisa dipungkiri bahwa Air Panas Sipoholon memang mirip dengan Pamukkale, hal ini dilihat dari setiap sudutnya ada pegunungan pasir yang memancarkan warna putih bak kapas. Selain itu, aliran air panas di sana suhunya mencapai 40 hingga 70 derajat celcius. Suasana ini membuat siapa saja yang datang tidak mau beranjak tentunya.', 0x70312e706e67, 'Transportasi Darat', '24 jam', 20000),
(7, 5, 'Taman Bunga Sapo Juma', 'Desa Tongging, Karo, Sumatera Utara', 'Lokasi wisata tak jauh kok dari air terjun tertinggi di Indonesia yaitu air terjun Sipiso Piso Medan jaraknya hanya 900 meter, hanya berjalan kaki bisa mencapai lokasi wisata dalam 14 menit. Objek wisata Sumatra Utara ini sebenarnya berupa resort atau penginapan villa dan guest house yang sekitarnya terdapat taman bunga dirawat baik oleh pengelola resort. Di Sapo Juma Medan, terdapat juga lokasi camping ground menarik yang dikelola oleh pemilik resort. Nah menjadi latar belakang penginapan-nya yakni danau Toba, lantaran lokasi resort berada di pinggiran danau Toba.', 'Sekilas terlihat resort yang dijadikan destinasi wisata sangat mirip Resort Giri Tirta Kahuripan Purwakarta, namun membedakannya yakni Giri Tirta kombinasi sempurna antara wahana dan lanskap perkebunan diatas dataran tinggi, sedangkan Sapo Juma lebih ke arah wisata taman dan lanskap perbukitan. Suasana kondusif relatif tenang serta menampilkan keindahan danau Toba ialah hal yang bakal teman-teman dapatkan.', 0x74312e706e67, 'Transportasi Darat', '24 jam', 10000),
(8, 6, 'Biara Bahal I-III', 'Desa Bahal, Kecamatan Portibi, Kabupaten Padang Lawas Utara, Sumatera Utara', 'Biara Bahal I berada do Desa Bahal, Kecamatan Portibi, Kabupaten Padang Lawas Utara, atau sekitar 500 meter arah tenggara dari Biara Pulo. Di halaman biara ini terdapat lima bangunan yang terdiri dari sebuah biara induk, sebuah bangunan tanpa atap yang diidentifkasi sebagai mandapa yang terletak di depan biara induk. Lalu ada sebuah biara perwara yang terletak di sebelah timur laut biara induk.\r\n\r\n', 'Serta ada dua buah bangunan lain yang terletak di sebelah barat daya mandapa (sebuah bangunan yang berfungsi sebagai aula dapat berupa bangunan berdinding atau tidak berdinding).\r\n\r\n', 0x63312e706e67, 'Transportasi Darat', '24 jam', 1000),
(9, 7, 'Tomok', 'Tomok, Kecamatan Simanindo, Samosir, Sumatera Utara', 'Destinasi wisata yang ada di Indonesia, tidak hanya menawarkan pesona keindahan dari pantai, perbukitan atau pegunungan. Namun ada juga desa atau perkampungan yang dijadikan sebagai desa kunjungan wisata, seperti di Desa Wisata Tomok. Tomok adalah sebuah desa kecil yang terletak di pesisir timur Pulau Samosir, Danau Toba, Sumatra Utara.', 'Desa ini sangat menggantungkan kehidupan masyarakatnya pada bidang agraris, perdagangan dan pariwisata. Desa yang wilayahnya tidak terlalu luas ini tampaknya sudah cukup mendapat pengaruh modernitas yang lumayan besar di kalangan masyarakatnya. Hal ini terbukti dengan persandingan antara makam, gereja tua, becak motor dan kehidupan masyarakatnya banyak yang sudah menguasai penggunaan bahasa Inggris pada saat bertemu dengan wisatawan asing lhoo.', 0x6b312e706e67, 'Transportasi Darat, Transportasi Air', '24 jam', 12345);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbadmin`
--
ALTER TABLE `tbadmin`
  ADD PRIMARY KEY (`kdadmin`);

--
-- Indeks untuk tabel `tbdetailwisata`
--
ALTER TABLE `tbdetailwisata`
  ADD PRIMARY KEY (`kdwisata`),
  ADD KEY `kdwisata` (`kdwisata`);

--
-- Indeks untuk tabel `tbkategori`
--
ALTER TABLE `tbkategori`
  ADD PRIMARY KEY (`kdkategori`);

--
-- Indeks untuk tabel `tbtongkrongan`
--
ALTER TABLE `tbtongkrongan`
  ADD PRIMARY KEY (`kdcafe`),
  ADD KEY `kdkategori` (`kdkategori`);

--
-- Indeks untuk tabel `tbwisata`
--
ALTER TABLE `tbwisata`
  ADD PRIMARY KEY (`kdwisata`),
  ADD KEY `kdkategori` (`kdkategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbadmin`
--
ALTER TABLE `tbadmin`
  MODIFY `kdadmin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbdetailwisata`
--
ALTER TABLE `tbdetailwisata`
  MODIFY `kdwisata` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbkategori`
--
ALTER TABLE `tbkategori`
  MODIFY `kdkategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbtongkrongan`
--
ALTER TABLE `tbtongkrongan`
  MODIFY `kdcafe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbwisata`
--
ALTER TABLE `tbwisata`
  MODIFY `kdwisata` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbdetailwisata`
--
ALTER TABLE `tbdetailwisata`
  ADD CONSTRAINT `tbdetailwisata_ibfk_1` FOREIGN KEY (`kdwisata`) REFERENCES `tbwisata` (`kdwisata`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbtongkrongan`
--
ALTER TABLE `tbtongkrongan`
  ADD CONSTRAINT `tbtongkrongan_ibfk_1` FOREIGN KEY (`kdkategori`) REFERENCES `tbkategori` (`kdkategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbwisata`
--
ALTER TABLE `tbwisata`
  ADD CONSTRAINT `tbwisata_ibfk_1` FOREIGN KEY (`kdkategori`) REFERENCES `tbkategori` (`kdkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
