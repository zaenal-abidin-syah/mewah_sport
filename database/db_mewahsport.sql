-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 06:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mewahsport`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(10) NOT NULL,
  `nm_admin` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nm_admin`, `username`, `email`, `password`) VALUES
(1, 'administrator', 'admin', 'admin@gmail.com', 'admin'),
(2, 'akbar', 'akbar', 'akbar@gmail.com', 'akbar'),
(3, ' arif', 'arif', 'arif@gmail.com', 'arif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id_detail_order` int(10) NOT NULL,
  `id_order` int(10) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `nm_produk` varchar(50) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `jml_order` int(3) NOT NULL,
  `berat` int(10) NOT NULL,
  `subberat` int(10) NOT NULL,
  `subharga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id_detail_order`, `id_order`, `id_produk`, `nm_produk`, `harga`, `jml_order`, `berat`, `subberat`, `subharga`) VALUES
(63, 95, 55, 'Aston Martin DB11', '7700000000', 1, 1770, 1770, '7700000000'),
(64, 95, 57, 'Ferrari 812 Superfast', '14900000000', 1, 1630, 1630, '14900000000'),
(65, 96, 55, 'Aston Martin DB11', '7700000000', 1, 1770, 1770, '7700000000'),
(66, 96, 58, 'Mercedes-Benz AMG GT', '3400000000', 1, 1575, 1575, '3400000000'),
(68, 98, 55, 'Aston Martin DB11', '7700000000', 1, 1770, 1770, '7700000000'),
(69, 99, 58, 'Mercedes-Benz AMG GT', '3400000000', 1, 1575, 1575, '3400000000'),
(70, 100, 58, 'Mercedes-Benz AMG GT', '3400000000', 2, 1575, 3150, '6800000000'),
(71, 101, 55, 'Aston Martin DB11', '7700000000', 1, 1770, 1770, '7700000000'),
(72, 101, 66, 'McLaren 765LT ', '40000000000', 1, 1330, 1330, '40000000000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kat_pos`
--

CREATE TABLE `tbl_kat_pos` (
  `id_kategori` int(10) NOT NULL,
  `nm_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kat_pos`
--

INSERT INTO `tbl_kat_pos` (`id_kategori`, `nm_kategori`) VALUES
(6, 'Dekorasi Apartemen'),
(7, 'Desain Dapur'),
(8, 'Desain Kamar Mandi'),
(9, 'Desain Kamar Tidur'),
(10, 'Desain Ruang Tamu'),
(11, 'Design Ruang Makan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kat_produk`
--

CREATE TABLE `tbl_kat_produk` (
  `id_kategori` int(10) NOT NULL,
  `nm_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kat_produk`
--

INSERT INTO `tbl_kat_produk` (`id_kategori`, `nm_kategori`) VALUES
(14, 'Grand Tourer (GT)'),
(15, 'Super Car'),
(16, 'Sport Coupe'),
(17, 'Hyper Car');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(10) NOT NULL,
  `id_pelanggan` int(10) NOT NULL,
  `nm_penerima` varchar(30) NOT NULL DEFAULT '',
  `telp` varchar(13) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `alamat_pengiriman` varchar(50) NOT NULL,
  `tgl_order` date NOT NULL,
  `ongkir` int(10) NOT NULL,
  `total_order` varchar(100) NOT NULL,
  `status` varchar(30) DEFAULT 'Belum Dibayar'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `id_pelanggan`, `nm_penerima`, `telp`, `provinsi`, `kota`, `kode_pos`, `alamat_pengiriman`, `tgl_order`, `ongkir`, `total_order`, `status`) VALUES
(95, 9, 'rifqi', '2', '6', '152', 21, '21edw', '2024-05-18', 750000, '2147483647', 'Belum Dibayar'),
(96, 9, 'akbar', '77', '6', '151', 6757, 'hjh', '2024-05-18', 425000, '11100425000', 'Produk Diterima'),
(98, 9, 'akbar', '098', '6', '151', 686, 'gygyg', '2024-06-07', 425000, '7700425000', 'Belum Dibayar'),
(99, 9, 'akbar', '343', '6', '151', 77, 'jds', '2024-06-07', 425000, '3400425000', 'Belum Dibayar'),
(100, 9, 'akbar', '90809', '6', '152', 78, 'fffv', '2024-06-07', 425000, '5440425000', 'Belum Dibayar'),
(101, 9, 'akbar', '71297', '6', '151', 788, 'fyufuy', '2024-06-07', 425000, '39700425000', 'Belum Dibayar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(10) NOT NULL,
  `nm_pelanggan` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nm_pelanggan`, `username`, `email`, `password`) VALUES
(1, 'Arif Nur R', 'arifnur', 'arif@gmail.com', '123'),
(2, 'Arief Gilang', 'ariefgilan', 'arief@gmail.com', '123'),
(4, ' Bintang Reny', 'Bintang', 'Bintangre10@gmail.com', 'Kepo56789_'),
(5, ' Rizal Wijoyo', 'Rizal', 'Wijal16@gmail.com', 'Kambing123'),
(6, ' aris Juliyanto', 'aris', 'aris@gmail.com', '12345'),
(7, ' Wisnu', 'Ajik', 'wisnu@gmail.com', '123456'),
(9, ' akbar', 'akbar', 'akbar@gmail.com', 'akbar'),
(12, ' arif', 'arif', 'arif@gmail.com', 'arif'),
(13, 'rifqi', 'rifqi', 'rifqi@gmail.com', 'rifqi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembayaran`
--

CREATE TABLE `tbl_pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `id_order` int(10) NOT NULL,
  `nm_pembayar` varchar(30) NOT NULL,
  `nm_bank` varchar(20) NOT NULL,
  `jml_pembayaran` varchar(100) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bukti_transfer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pembayaran`
--

INSERT INTO `tbl_pembayaran` (`id_pembayaran`, `id_order`, `nm_pembayar`, `nm_bank`, `jml_pembayaran`, `tgl_bayar`, `bukti_transfer`) VALUES
(14, 96, 'akbar', 'BRI', '11100425000', '2024-05-18', 'coc-th10-war-base-link.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos`
--

CREATE TABLE `tbl_pos` (
  `id_pos` int(10) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` longtext NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pos`
--

INSERT INTO `tbl_pos` (`id_pos`, `id_kategori`, `judul`, `isi`, `gambar`, `tgl`) VALUES
(16, 6, 'Ruang Tamu Apartemen Bohemian Minimalis', '<p>Penggunaan kayu sebagai material dan warna lantai dapat menjadi pilihan untuk ruang tamu apartemen bergaya bohemian minimallis. Kehadiran sofa polos berwarna abu-abu, hijau, atau coklat juga merupakan pilihan yang tepat.</p>\r\n<p>Gunakan warna putih atau warna netral untuk bagian dinding, atau gunakan wallpaper atau kain motif yang dibentangkan pada salah satu bagiannya. Aksen boho yang khas sudah bisa Anda dapatkan di ruang tamu apartemen mungil Anda.</p>\r\n<p>Hadirkan juga karpet dan sofa bantal yang memiliki motif dan pola unik serta warna yang beragam. Tanaman juga bisa ditambahkan sebagai elemen dekoratif alami yang memberikan kesan sejuk dan segar.</p>\r\n<p>sumber : https://interiordesign.id/apartemen-bohemian-minimalis/</p>', '1.jpg', '2019-12-09'),
(17, 6, 'Mengenal Gaya Bohemian', '<p>Bohemian, atau yang akrab disebut boho, adalah gaya yang mencerminkan kepribadian yang bebas, dengan penggunaan banyak pola, warna dan juga motif.</p>\r\n<p>Beragam motif dan pola pada gaya ini sengaja dikombinasikan agar tampak saling menabrak satu sama lain, acak, dan tidak beraturan.</p>\r\n<p>sumber : https://interiordesign.id/apartemen-bohemian-minimalis/</p>', '2.jpg', '2019-12-10'),
(18, 6, 'Desain Apartemen Studio Gaya Skandinavian', '<p>Skandinavian adalah jurus yang tepat mengubah tampilan rumah maupun apartemen menjadi cantik, luas, dan fungsional, dengan kenyamanan ekstra. Anda bisa menggunakan coba gaya interior ala Nordic ini untuk mendapatkan kesan simpel dan mewah sekaligus.</p>\r\n<p>Cukup hadirkan dinding dengan warna cat putih yang dominan, serta penggunaan furniture dengan model yang khas dan desain yang compact, apartemen kecil Anda bisa terlihat lebih minimalis, simpel, dan tidak kehilangan gaya. Pencahayaan juga merupakan salah satu elemen kunci dalam interior skandinavia. Pencahayaan yang sesuai mampu melahirkan kesan luas dan nyaman ke dalam ruangan kecil.</p>\r\n<p>Install pencahayaan terbaik di apartemen studio Anda. Dengan penchayaan yng tepat, apartemen studio bakalan terasa luas, bersih, dan nyaman.</p>\r\n<p>sumber : https://interiordesign.id/ide-desain-apartemen-studio/</p>', '3.jpg', '2019-12-11'),
(19, 7, 'Gaya Desain Untuk Dapur Khas Eropa ', '<p>Desain mediterania terkenal sebagai gaya desain khas Eropa. Pengaruh gaya ini bisa terlihat dan sangat tipikal digunakan sebagai pilihan gaya desain rumah-rumah di Eropa, khususnya Italia, Yunani dan Spanyol.</p>\r\n<p>Gaya interior Mediterania ini banyak memasukan unsur-unsur alam yang menjadi karakter dan ciri khasnya. Ia banyak bermain dengan pola warna. Mediterania sangat cocok untuk menampilkan ruangan yang sederhana namun mampu memperlihatkan kesan mewah.</p>\r\n<p>Tidak hanya itu, gaya mediterania juga sangat cocok untuk Negara Indonesia yang beriklim tropis. Sentuhan natural dan dominasi material kayu, mampu merefleksikan kekhasan alam khas pantai Eropa selatan. Konsep desain yang berhasil membawa kenyamanan dan cita rasa unik pada rancangan sebuah ruang.</p>\r\n<p>Selain pure-mediterania, terdapat juga konsep desain mod-mediterania. Ia adalah gaya desain interior modern-mediterania.</p>\r\n<p>Ini merupakan gaya desain eklektik yang memadukan unsur modern dengan tradisional khas Mediterania. Tampilan ruang yang kaya warna, simpel, elegan dan mengedepankan kenyamanan.</p>\r\n<p>sumber : https://interiordesign.id/desain-dapur-gaya-mediterania/</p>', '4.jpg', '2019-12-12'),
(20, 7, 'Inspirasi Desain mediterania Untuk Dapur', '<p>Desain mediterania terkenal sebagai gaya desain khas Eropa. Pengaruh gaya ini bisa terlihat dan sangat tipikal digunakan sebagai pilihan gaya desain rumah-rumah di Eropa, khususnya Italia, Yunani dan Spanyol.</p>\r\n<p>Gaya interior Mediterania ini banyak memasukan unsur-unsur alam yang menjadi karakter dan ciri khasnya. Ia banyak bermain dengan pola warna. Mediterania sangat cocok untuk menampilkan ruangan yang sederhana namun mampu memperlihatkan kesan mewah.</p>\r\n<p>Tidak hanya itu, gaya mediterania juga sangat cocok untuk Negara Indonesia yang beriklim tropis. Sentuhan natural dan dominasi material kayu, mampu merefleksikan kekhasan alam khas pantai Eropa selatan. Konsep desain yang berhasil membawa kenyamanan dan cita rasa unik pada rancangan sebuah ruang.</p>\r\n<p>Selain pure-mediterania, terdapat juga konsep desain mod-mediterania. Ia adalah gaya desain interior modern-mediterania.</p>\r\n<p>Ini merupakan gaya desain eklektik yang memadukan unsur modern dengan tradisional khas Mediterania. Tampilan ruang yang kaya warna, simpel, elegan dan mengedepankan kenyamanan.</p>\r\n<p>sumber : https://interiordesign.id/desain-dapur-gaya-mediterania/</p>', '5.jpg', '2019-12-13'),
(21, 7, 'Desain dapur dinding batu gaya Rustic', '<p>Kombinasi kayu dan sedikit ornamen besi menjadikan gaya desain rustic mampu menampilkan kesan hangat. Langit-langit yang terekspose memberikan ruang lapang untuk keperluan sirkulasi udara yang sangat penting saat merancang ruang dapur. Sirkulasi ini melahirkan suasana hangat dan jauh dari kesan pengap.</p>\r\n<p>sumber : https://interiordesign.id/desain-dapur-dinding-batu-yang-hangat-nyaman/</p>\r\n<p>&nbsp;</p>', '6.jpg', '2019-12-14'),
(22, 7, 'Desain dapur dinding batu gaya modern', '<p>Pilihan warna netral juga cocok dikombinasikan dengan dinding batu. Kesan elegan terpancar ketika memasuki runag dapur anda. Apalagi dengan konsep lantai terbuka rumah atau apartemen kecil seperti tampak pada gambar. Benar-benar desain ruang yang sangat liveable.</p>\r\n<p>sumber : https://interiordesign.id/desain-dapur-dinding-batu-yang-hangat-nyaman/</p>', '7.jpg', '2019-12-15'),
(23, 8, 'Tata Ruang Kamar Mandi Gaya Rustic', '<p>Seperti sama-sama kita ketahui, gaya desain rustic adalah perumpamaan tata ruang yang identik dengan suasana pedesaan. Suasana natural bin alami yang di kedepankannya, ditandai dengan penggunaan material kayu yang dominan.</p>\r\n<p>Tata ruang kamar mandi gaya rustic sangat cocok digunakan jika konsep desain interior rumah Anda juga menerapkan gagasan desain ini.</p>\r\n<p>Konsep interior rustic menampilkan suasana alami dan menyenangkan.</p>\r\n<p>sumber : https://interiordesign.id/5-model-tata-ruang-kamar-mandi-berdasarkan-konsep-desain-interior/</p>\r\n<p>&nbsp;</p>', '8.jpg', '2019-12-16'),
(24, 8, 'Tata Ruang Kamar Mandi Gaya Eklektik', '<p>Dalam desain interior, eklektik merupakan perpaduan dari dua atau lebih konsep interior. Gaya ini menawarkan fleksibilitas dan keluwesan dalam menerapkan berbagai gagasan dekorasi.</p>\r\n<p>Tidak terkecuali pada area kamar mandi, gaya eklektik menjamin memberikan kemudahan dan suasana yang tidak kaku pada ruangan kecil ini.</p>\r\n<p>Dengan model tata ruang seperti ini, dekorasi dan penataan kamar mandi bisa disesuaikan dengan suasana yang ingin dihadirkan. Mulai dari furniture, pemilihan warna, hingga gaya dekorasi yang menjadi selera Anda.</p>\r\n<p>sumber : https://interiordesign.id/5-model-tata-ruang-kamar-mandi-berdasarkan-konsep-desain-interior/</p>', '9.jpg', '2019-12-17'),
(25, 8, 'Tata Ruang Kamar Mandi Minimalis Modern', '<p>Ini adalah tata ruang kamar mandi yang paling populer dan paling banyak digunakan saat sekarang. Gaya ini dianggap paling mewakili gaya hidup modern yang simpel, sederhana, luwes, dan serba instan.</p>\r\n<p>Desain kamar mandi seperti ini tentu menawarkan ketenangan dan layout interior yang tidak neko-neko, dengan pengutamaan pada fungsi, efektivitas, serta efisiensi, baik dekorasi secara keseluruhan maupun juga pada penggunaan furniture yang digunakan.</p>\r\n<p>sumber : https://interiordesign.id/5-model-tata-ruang-kamar-mandi-berdasarkan-konsep-desain-interior/</p>', '10.jpg', '2019-12-18'),
(26, 9, 'Room Divider Kaca Berbingkai Besi', '<p>Room divider dari kaca berbingkai besi hitam yang tampak seperti dalam gambar, bisa menjadi pilihan menarik untuk mendapatkan area kamar tidur dengan privasi yang cukup terjaga.</p>\r\n<p>Selain sanggup mengurangi kebisingan yang dibutuhkan untuk kenyamanan saat Anda tidur, model pemisah ruangan dari kaca berbingkai besi ini juga menampilkan visualisasi interior gaya industrial yang cukup unik.</p>\r\n<p>sumber : https://interiordesign.id/5-desain-cara-kreatif-bagaimana-memisahkan-area-kamar-tidur-dengan-area-lain-pada-ruangan-open-space/</p>', '11.jpg', '2019-12-20'),
(27, 9, 'Room Divider dari Tirai atau Gorden', '<p>Memberikan batasan area tidur menggunakan tirai atau gorden mungkin tidak membuat ruang menjadi kedap suara. Namun, konsep pembatas dengan menggunakan tirai atau gorden ini, merupakan alternatif paling mudah, murah, serta cukup praktis.</p>\r\n<p>sumber : https://interiordesign.id/5-desain-cara-kreatif-bagaimana-memisahkan-area-kamar-tidur-dengan-area-lain-pada-ruangan-open-space/</p>', '12.jpg', '2019-12-21'),
(28, 9, 'Inspirasi Kamar Tidur Dengan Cat Berwarna Cokelat', '<p>Warna klasik ini tidak saja mampu melahirkan kesan sederhana dan nyaman, tetapi juga romantis.</p>\r\n<p>Warna coklat yang hangat sangat cocok untuk menampilkan suasana yang romantis. Dan jika anda menginginkan tampilan kamar terasa lebih dramatis, warna dark brown atau cokelat tua bisa jadi pilihan.</p>\r\n<p>Namun, karena karakternya yang gelap, ketimbang mewarnai seluruh bagian dinding kamar dengan cokelat tua, sebaiknya gunakan warna ini hanya sebagai aksen saja. Sementara untuk warna utamanya, anda bisa mencoba warna putih atau abu-abu, atau warna-warna netral lainnya.</p>\r\n<p>sumber : https://interiordesign.id/ide-warna-cat-kamar-tidur-romantis/</p>', '13.jpg', '2019-12-22'),
(29, 9, 'Desain Kamar Tidur Artistik', '<p>Bagi para pecinta seni, menunjukkan kepribadian dalam kamar tidur adalah bagian dari kreativitas. Penampilan kamar tidur yang unik dan nyeni adalah pilihan yang tepat. Desain kamar tidur dengan berbagai perabotan dan aksesori &ldquo;do-it-Yourself&rdquo; membuktikan hal tersebut. Memanfaatkan barang tidak terpakai, gunakan kembali dan jadikan sesuatu yang pantas digunakan di kamar tidur Anda.</p>\r\n<p>sumber : https://interiordesign.id/tip-desain-kamar-tidur/</p>', '14.jpg', '2019-12-23'),
(30, 9, 'Desain Kamar Tidur Feminin', '<p>Feminin tidak selalu didominasi oleh aneka deretan barang dan dekorasi berwarna merah muda. Terutama bagi Anda yang tidak terlalu menyukai warna merah muda, Anda bisa mengkreasikan kamar feminin dengan sentuhan yang sedikit berbeda.</p>\r\n<p>Nuansa feminin tetap dapat ditampilkan dengan memadukan furnitur minimalis kayu, sprei berwarna putih, sarung bantal berwarna coklat yang juga mampu mewakili kesan feminin</p>\r\n<p>sumber : https://interiordesign.id/tip-desain-kamar-tidur/</p>', '15.jpg', '2019-12-24'),
(31, 10, 'Desain Ruang yang Mewah dan Elegan', '<p>Apa yang membuat ruang tamu gaya Mediterania terlihat begitu mewah dan elegan? Tetapi sekaligus memiliki penampilan yang sangat berbeda dengan desain klasik?</p>\r\n<p>Gaya Mediterania mungkin bukan desain yang murah dan terjangkau. Unsur desain dan elemen dekoratif ruang yang digunakan merupakan campuran elemen-elemen vintage dengan material kualitas tinggi yang cukup mahal.</p>\r\n<p>Gaya desain ini memanfaatkan penggunaan kayu berkualitas tinggi dan menggabungkannya dengan banyak furniture dan dekorasi, serta dinding yang selaras dalam skema warna. Ia melahirkan penampilan ruang yang terlihat sangat berkelas.</p>\r\n<p>sumber : https://interiordesign.id/desain-ruang-tamu-gaya-mediterania/</p>', '16.jpg', '2019-12-26'),
(32, 10, 'Ruang Tamu Lesehan ala Jepang Tradisional', '<p>Jika Anda sangat menginginkan gaya Jepang yang dominan dan kentara, konsep Jepang tradisional bisa jadi pilihan.</p>\r\n<p>Namun, meski tradisional, ia tetap bisa selaras dan terlihat kontemporer dengan pemilihan dan penggunaan elemen desain yang sesuai dan seimbang.</p>\r\n<p>sumber : https://interiordesign.id/ruang-tamu-lesehan-ala-jepang/</p>', '17.jpg', '2019-12-27'),
(33, 10, 'Desain Ruang Tamu Gaya Varsity Park', '<p>Desain ruang tamu yang terletak di pojok ruangan adalah contoh sempurna bagaimana implementasi gagasan untuk sebuah ruang yang memiliki ukuran kecil. Memadukan warna menjadi sesuatu yang sangat signifikan daam mengubah suasana ruang tamu seperti ini. Ungu, krem, dan putih mampu menciptakan suasana yang nyaman, atau anda bisa tentukan sendiri paduan warna yang menjadi kegemaran anda.</p>\r\n<p>sumber : https://interiordesign.id/7-desain-ruang-tamu-yang-akan-membuat-para-tamu-anda-enggan-pulang/</p>', '18.jpg', '2019-12-28'),
(34, 11, 'Konsep Desain Informal Untuk Ruang Makan', '<p>Ketika orang-orang lebih menyukai kenyamanan dibanding formalitas, desain ruang makan terbuka menjadi pilihan paling logis. Ruang makan tanpa sekat dan menyatu dengan ruangan lainnya ini dianggap sebagai sebuah gagasan desain yang jauh dari suasana kaku dan formal.</p>\r\n<p>Ruang makan formal yang menawarkan kehangatan dan keseriusan saat aktivitas makan bersama, memang sudah tidak mungkin didapatkan dengan mudah. Meski menawarkan suasana ruang yang ekslusif, menikmati sajian tanpa distraksi apapun, klaim besar sebagai sumber kebahagiaan yang bisa meningkatkan family bonding, konsep desain ruang makan yang terpisah merupakan investasi yang sangat mahal.</p>\r\n<p>Saatnya mengubah mindset dan bahkan kultur. Di saat semua orang lebih menginginkan suasana santai, informal, dan lebih mementingkan kenyamanan, ruang makan terbuka yang dirancang dengan kesederhanaan dan jauh dari kesan ekslusif, merupakan pilihan tepat.</p>\r\n<p>sumber : https://interiordesign.id/desain-ruang-makan-terbuka/</p>\r\n<p>&nbsp;</p>', '19.jpg', '2019-12-29'),
(35, 11, 'Ruang Makan Kecil Gaya Eklektik', '<p>Untuk mencapai tampilan atau visualisasi gaya bohemian dengan mudah dan efisien, cobalah gunakan kursi dengan berbagai varian warna, bahan, bentuk dan juga model. Kombinasi tersebut akan mendatangkan sesuatu yang terlihat sangat unik dan anti mainstream.</p>\r\n<p>Penggunaan kursi kayu tua juga dapat menjadi alternatif yang baik. Pemakaian warna-warna yang cenderung terang alias ngejreng, seperti warna kuning, merah, biru, pink atau hijau, adalah ciri lain interior bohemian.</p>\r\n<p>Gaya interior bohemian memperbolehkan kombinasi. Hal ini bertujuan untuk menampilkan kesan dan cita rasa eklektik pada interior ruangan. Selain itu, gaya desain interior ini juga memiliki kecenderungan membawa warna dalam dosis dan kadar yang beragam. Gaya eklektik yang memungkinkan penerapan beragam elemen desain yang bisa memperlihatkan penampilan yang ruang tampak semakin unik serta berbeda.</p>\r\n<p>sumber : https://interiordesign.id/desain-ruang-makan-kecil-gaya-bohemian/</p>\r\n<p>&nbsp;</p>', '20.jpg', '2019-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(10) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `nm_produk` varchar(50) NOT NULL,
  `berat` int(10) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `stok` int(3) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `negara` varchar(30) NOT NULL,
  `merek` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `id_kategori`, `nm_produk`, `berat`, `harga`, `stok`, `gambar`, `deskripsi`, `negara`, `merek`) VALUES
(55, 14, 'Aston Martin DB11', 1770, '7700000000', 14, '1.Aston Martin DB11.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> V8 twin-turbocharged 4.0 liter</li>\r\n<li><strong>Tenaga:</strong> 510 hp</li>\r\n<li><strong>Torsi:</strong> 690 Nm</li>\r\n<li><strong>Transmisi:</strong> 8-percepatan otomatis</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 4,0 detik</li>\r\n<li><strong>Kecepatan Maksimum:</strong> 308 km/jam</li>\r\n<li><strong>Berat:</strong> 1.770 kg</li>\r\n<li><strong>Harga:</strong> Rp 7,7 Milyar</li>\r\n</ul>\r\n<p><strong>Desain:</strong></p>\r\n<p>Aston Martin DB11 adalah mobil sport mewah dengan desain yang elegan dan agresif. Desain eksteriornya ramping dan berotot, dengan garis-garis yang tajam dan lampu depan LED yang ramping. Interiornya mewah dan nyaman, dengan bahan-bahan berkualitas tinggi seperti kulit dan kayu.</p>\r\n<p><strong>Mesin:</strong></p>\r\n<p>DB11 dibekali dengan mesin V8 twin-turbocharged berkapasitas 4.0 liter yang menghasilkan tenaga 510 hp dan torsi 690 Nm. Mesin ini dikawinkan dengan transmisi otomatis 8-percepatan yang responsif.</p>\r\n<p><strong>Performa:</strong></p>\r\n<p>DB11 mampu berakselerasi dari 0-100 km/jam dalam waktu 4,0 detik dan mencapai kecepatan maksimum 308 km/jam. Mobil ini juga memiliki handling yang luar biasa dan stabilitas yang tinggi.</p>\r\n<p><strong>Fitur:</strong></p>\r\n<p>DB11 dilengkapi dengan berbagai fitur canggih, termasuk:</p>\r\n<ul>\r\n<li>Suspensi adaptif</li>\r\n<li>Rem karbon keramik</li>\r\n<li>Sistem infotainment dengan layar sentuh 10,25 inci</li>\r\n<li>Berbagai fitur keselamatan dan bantuan pengemudi</li>\r\n</ul>', 'Inggris', 'Aston Martin'),
(56, 14, 'Aston Martin Vanquish', 1870, '12000000000', 20, '2.Aston Martin Vanquish.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> V12 twin-turbocharged 5.9 liter</li>\r\n<li><strong>Tenaga:</strong> 625 hp</li>\r\n<li><strong>Torsi:</strong> 730 Nm</li>\r\n<li><strong>Transmisi:</strong> 8-percepatan otomatis</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 3,5 detik</li>\r\n<li><strong>Kecepatan Maksimum:</strong> 324 km/jam</li>\r\n<li><strong>Berat:</strong> 1.870 kg</li>\r\n<li><strong>Harga:</strong> Rp 12 Milyar</li>\r\n</ul>\r\n<p><strong>Desain:</strong></p>\r\n<p>Aston Martin Vanquish adalah mobil sport mewah Grand Tourer dengan desain yang elegan dan agresif. Desain eksteriornya ramping dan berotot, dengan garis-garis yang tajam dan lampu depan LED yang ramping. Interiornya mewah dan nyaman, dengan bahan-bahan berkualitas tinggi seperti kulit dan kayu.</p>\r\n<p><strong>Mesin:</strong></p>\r\n<p>Vanquish ditenagai oleh mesin V12 twin-turbocharged berkapasitas 5.9 liter yang menghasilkan tenaga 625 hp dan torsi 730 Nm. Mesin ini dikawinkan dengan transmisi otomatis 8-percepatan yang responsif.</p>\r\n<p><strong>Performa:</strong></p>\r\n<p>Vanquish mampu berakselerasi dari 0-100 km/jam dalam waktu 3,5 detik dan mencapai kecepatan maksimum 324 km/jam. Mobil ini juga memiliki handling yang luar biasa dan stabilitas yang tinggi.</p>\r\n<p><strong>Fitur:</strong></p>\r\n<p>Vanquish dilengkapi dengan berbagai fitur canggih, termasuk:</p>\r\n<ul>\r\n<li>Suspensi adaptif</li>\r\n<li>Rem karbon keramik</li>\r\n<li>Sistem infotainment dengan layar sentuh 10,25 inci</li>\r\n<li>Berbagai fitur keselamatan dan bantuan pengemudi</li>\r\n</ul>', 'Inggris', 'Aston Martin'),
(57, 14, 'Ferrari 812 Superfast', 1630, '14900000000', 17, '3.Ferrari 812 Superfast.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> V12 naturally-aspirated 6.5 liter</li>\r\n<li><strong>Tenaga:</strong> 800 hp</li>\r\n<li><strong>Torsi:</strong> 718 Nm</li>\r\n<li><strong>Transmisi:</strong> 7-percepatan otomatis</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 2,9 detik</li>\r\n<li><strong>Kecepatan Maksimum:</strong> 350 km/jam</li>\r\n<li><strong>Berat:</strong> 1.630 kg</li>\r\n<li><strong>Harga:</strong> Rp 14,9 Milyar</li>\r\n</ul>\r\n<p><strong>Desain:</strong></p>\r\n<p>Ferrari 812 Superfast adalah mobil sport mewah Grand Tourer dengan desain yang elegan dan agresif. Desain eksteriornya ramping dan berotot, dengan garis-garis tajam dan lampu depan LED yang ramping. Interiornya mewah dan nyaman, dengan bahan-bahan berkualitas tinggi seperti kulit dan Alcantara.</p>\r\n<p><strong>Mesin:</strong></p>\r\n<p>812 Superfast ditenagai oleh mesin V12 naturally-aspirated berkapasitas 6.5 liter yang menghasilkan tenaga 800 hp dan torsi 718 Nm. Mesin ini dikawinkan dengan transmisi otomatis 7-percepatan yang responsif.</p>\r\n<p><strong>Performa:</strong></p>\r\n<p>812 Superfast mampu berakselerasi dari 0-100 km/jam dalam waktu 2,9 detik dan mencapai kecepatan maksimum 350 km/jam. Mobil ini juga memiliki handling yang luar biasa dan stabilitas yang tinggi.</p>\r\n<p><strong>Fitur:</strong></p>\r\n<p>812 Superfast dilengkapi dengan berbagai fitur canggih, termasuk:</p>\r\n<ul>\r\n<li>Suspensi adaptif</li>\r\n<li>Rem karbon keramik</li>\r\n<li>Sistem infotainment dengan layar sentuh 10,25 inci</li>\r\n<li>Berbagai fitur keselamatan dan bantuan pengemudi</li>\r\n</ul>', 'Italia', 'Ferrari'),
(58, 14, 'Mercedes-Benz AMG GT', 1575, '3400000000', 16, '4.Mercedes-Benz AMG GT.jpg', '<p><strong>Desain:</strong></p>\r\n<p>Mercedes-AMG GT adalah mobil sport mewah dengan desain yang stylish dan agresif. Desain eksteriornya ramping dan berotot, dengan garis-garis tajam dan lampu depan LED yang ramping. Interiornya mewah dan nyaman, dengan bahan-bahan berkualitas tinggi seperti kulit dan Alcantara.</p>\r\n<p><strong>Mesin:</strong></p>\r\n<p>Mercedes-AMG GT 2024 tersedia dengan Mesin V6 twin-turbocharged 2.999 cc menghasilkan tenaga 435 hp dan torsi 521 Nm.</p>\r\n<p><strong>Performa:</strong></p>\r\n<p>Performa Mercedes-AMG GT memiliki&nbsp;Akselerasi 0-100 km/jam dalam 4,7 detik, kecepatan maksimum 290 km/jam.</p>\r\n<p><strong>Fitur:</strong></p>\r\n<p>Mercedes-AMG GT dilengkapi dengan berbagai fitur canggih, termasuk:</p>\r\n<ul>\r\n<li>Suspensi adaptif</li>\r\n<li>Rem karbon keramik (opsional)</li>\r\n<li>Sistem infotainment MBUX dengan layar sentuh 12,3 inci dan layar instrumen digital 12,3 inci</li>\r\n<li>Berbagai fitur keselamatan dan bantuan pengemudi</li>\r\n</ul>', 'Jerman', 'Mercedes-Benz'),
(59, 14, 'Bentley Continental ', 2250, '6500000000', 20, '5.Bentley Continental.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> V6 3.0L Twin-Turbocharged / V8 4.0L Twin-Turbocharged / W12 6.0L Twin-Turbocharged</li>\r\n<li><strong>Tenaga:</strong> 450 hp - 650 hp</li>\r\n<li><strong>Torsi:</strong> 660 Nm - 900 Nm</li>\r\n<li><strong>Transmisi:</strong> 8-Speed Automatic</li>\r\n<li><strong>Akselerasi (0-100 km/h):</strong> 4.0 - 4.8 detik</li>\r\n<li><strong>Kecepatan Tertinggi:</strong> 305 km/h - 333 km/h</li>\r\n<li><strong>Kapasitas Tangki:</strong> 83 L</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Desain</strong></p>\r\n<p><br />Bentley Continental adalah mobil Grand Tourer (GT) mewah yang diproduksi oleh Bentley Motors Limited di Crewe, Inggris. Dikenal dengan desainnya yang elegan, interior yang mewah, dan performa yang mumpuni, Continental merupakan salah satu mobil paling ikonik di dunia.</p>\r\n<p><strong>Fitur Utama:</strong></p>\r\n<ul>\r\n<li>Desain eksterior yang elegan dan sporty</li>\r\n<li>Interior yang mewah dan nyaman dengan bahan berkualitas tinggi</li>\r\n<li>Sistem audio premium dengan speaker Naim</li>\r\n<li>Layar sentuh infotainment yang besar dan intuitif</li>\r\n<li>Berbagai fitur keselamatan dan bantuan pengemudi</li>\r\n<li>Pilihan mesin yang bertenaga dan efisien</li>\r\n</ul>', 'Inggris', 'Bantley'),
(60, 15, 'Ferrari SF90 Stradale', 1540, '16900000000', 20, '1.Ferrari SF90 Stradale.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> V8 3.990 cc twin-turbocharged</li>\r\n<li><strong>Tenaga:</strong> 769 hp (total) - 574 hp (mesin bensin) + 220 hp (motor listrik)</li>\r\n<li><strong>Torsi:</strong> 800 Nm</li>\r\n<li><strong>Transmisi:</strong> Otomatis 8-percepatan</li>\r\n<li><strong>Penggerak:</strong> 4 roda (AWD)</li>\r\n<li><strong>Kapasitas baterai:</strong> 7,9 kWh</li>\r\n<li><strong>Jarak tempuh listrik:</strong> 25 km</li>\r\n<li><strong>Kecepatan tertinggi:</strong> 340 km/jam</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 2,5 detik</li>\r\n<li><strong>Emisi CO2:</strong> 154 g/km</li>\r\n<li><strong>Konsumsi bahan bakar:</strong> 6,1 l/100 km</li>\r\n</ul>\r\n<p><strong>Desain :</strong></p>\r\n<p>Ferrari SF90 Stradale adalah mobil sport plug-in hybrid (PHEV) berperforma tinggi yang diproduksi oleh Ferrari. Mobil ini merupakan Ferrari pertama yang menggunakan teknologi PHEV, menggabungkan mesin bensin V8 bertenaga 769 hp dengan tiga motor listrik yang menghasilkan total 220 hp.</p>\r\n<p>SF90 Stradale menawarkan performa yang luar biasa, dengan akselerasi 0-100 km/jam dalam 2,5 detik dan kecepatan tertinggi 340 km/jam. Mobil ini juga memiliki emisi CO2 yang rendah, dengan konsumsi bahan bakar 6,1 l/100 km dan emisi CO2 154 g/km.</p>\r\n<p><strong>Fitur Utama:</strong></p>\r\n<ul>\r\n<li><strong>Teknologi PHEV:</strong> SF90 Stradale dapat dijalankan dalam mode hanya listrik, mode hybrid, atau mode performa maksimum.</li>\r\n<li><strong>Aerodinamika aktif:</strong> Mobil ini memiliki berbagai komponen aerodinamis yang dapat menyesuaikan diri untuk meningkatkan performa dan efisiensi.</li>\r\n<li><strong>Sistem suspensi adaptif:</strong> SF90 Stradale dilengkapi dengan sistem suspensi adaptif yang dapat diatur sesuai dengan kondisi jalan.</li>\r\n<li><strong>Sistem rem karbon-keramik:</strong> Mobil ini memiliki sistem rem karbon-keramik yang kuat dan tahan lama.</li>\r\n<li><strong>Interior mewah:</strong> SF90 Stradale memiliki interior yang mewah dengan bahan-bahan berkualitas tinggi dan teknologi canggih.</li>\r\n</ul>', 'Italia', 'Ferrari'),
(61, 15, 'Lamborghini Revuelto', 1500, '31937400000', 20, '2.Lamborghini Revuelto.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> V10 5.2 liter</li>\r\n<li><strong>Tenaga:</strong> 610 hp</li>\r\n<li><strong>Torsi:</strong> 560 Nm</li>\r\n<li><strong>Transmisi:</strong> Otomatis 7-percepatan</li>\r\n<li><strong>Penggerak:</strong> 4 roda (AWD)</li>\r\n<li><strong>Kecepatan tertinggi:</strong> 320 km/jam</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 3,2 detik</li>\r\n</ul>\r\n<p><strong>Desain :</strong></p>\r\n<p>Lamborghini Revuelto adalah mobil sport dua pintu bertenaga tinggi yang didesain oleh Lamborghini Centro Stile. Mobil ini didasarkan pada platform Lamborghini Hurac&aacute;n dan menggunakan mesin V10 5.2 liter yang menghasilkan 610 hp.</p>\r\n<p>Revuelto memiliki desain yang agresif dan modern dengan garis-garis yang tajam dan sudut-sudut yang menonjol. Mobil ini juga dilengkapi dengan berbagai fitur aerodinamis yang membantu meningkatkan performa dan stabilitas.</p>\r\n<p><strong>Fitur Utama:</strong></p>\r\n<ul>\r\n<li><strong>Desain agresif dan modern</strong></li>\r\n<li><strong>Mesin V10 yang bertenaga</strong></li>\r\n<li><strong>Penggerak 4 roda (AWD)</strong></li>\r\n<li><strong>Performa yang luar biasa</strong></li>\r\n<li><strong>Fitur aerodinamis canggih</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>', 'Italia', 'Lamborghini'),
(62, 15, 'McLaren Artura', 1395, '32500000000', 20, '3.McLaren Artura.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> V6 3.0 liter twin-turbocharged + motor listrik</li>\r\n<li><strong>Tenaga:</strong> 680 hp (total) - 585 hp (mesin bensin) + 95 hp (motor listrik)</li>\r\n<li><strong>Torsi:</strong> 720 Nm</li>\r\n<li><strong>Transmisi:</strong> Otomatis 8-percepatan</li>\r\n<li><strong>Penggerak:</strong> 4 roda (AWD)</li>\r\n<li><strong>Kecepatan tertinggi:</strong> 330 km/jam</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 2,9 detik</li>\r\n<li><strong>Emisi CO2:</strong> 181 g/km</li>\r\n<li><strong>Konsumsi bahan bakar:</strong> 7,2 l/100 km</li>\r\n<li><strong>Jarak tempuh listrik:</strong> 30 km</li>\r\n</ul>\r\n<p><strong>Desain</strong> :</p>\r\n<p>McLaren Artura adalah supercar hybrid performa tinggi yang diproduksi oleh McLaren Automotive. Mobil ini diluncurkan pada tahun 2021 dan merupakan model pertama McLaren yang menggunakan powertrain hybrid.</p>\r\n<p>Artura memiliki desain yang futuristik dan aerodinamis, dengan bodi serat karbon yang ringan dan kokpit bergaya F1. Mobil ini juga dilengkapi dengan berbagai fitur teknologi canggih, termasuk sistem suspensi adaptif, pengereman karbon-keramik, dan sistem kontrol traksi elektronik.<br /><br /></p>\r\n<p><strong>Fitur Utama:</strong></p>\r\n<ul>\r\n<li>Powertrain hybrid yang bertenaga dan efisien</li>\r\n<li>Desain yang futuristik dan aerodinamis</li>\r\n<li>Kokpit bergaya F1</li>\r\n<li>Suspensi adaptif</li>\r\n<li>Pengereman karbon-keramik</li>\r\n<li>Sistem kontrol traksi elektronik</li>\r\n<li>Teknologi canggih</li>\r\n</ul>', 'Inggris', 'Mclaren'),
(63, 15, 'Chevrolet Corvette Z06', 1560, '51600000000', 20, '4.Chevrolet Corvette Z06.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> V8 5.2 liter twin-turbocharged</li>\r\n<li><strong>Tenaga:</strong> 670 hp</li>\r\n<li><strong>Torsi:</strong> 819 Nm</li>\r\n<li><strong>Transmisi:</strong> Otomatis 8-percepatan</li>\r\n<li><strong>Penggerak:</strong> RWD (Rear Wheel Drive)</li>\r\n<li><strong>Kecepatan tertinggi:</strong> 338 km/jam</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 2,8 detik</li>\r\n<li><strong>Emisi CO2:</strong> 298 g/km</li>\r\n<li><strong>Konsumsi bahan bakar:</strong> 13,8 l/100 km</li>\r\n</ul>\r\n<p><strong>Desain</strong> :</p>\r\n<p>Chevrolet Corvette Z06 adalah mobil sport performa tinggi yang diproduksi oleh Chevrolet. Mobil ini diluncurkan pada tahun 2022 dan merupakan versi performa tinggi dari Chevrolet Corvette C8.</p>\r\n<p>Z06 memiliki desain yang agresif dan aerodinamis, dengan bodi serat karbon yang ringan dan spoiler belakang yang besar. Mobil ini juga dilengkapi dengan berbagai fitur teknologi canggih, termasuk sistem suspensi adaptif, pengereman karbon-keramik, dan sistem kontrol traksi elektronik.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Fitur Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin V8 yang bertenaga</strong></li>\r\n<li><strong>Desain yang agresif dan aerodinamis</strong></li>\r\n<li><strong>Bodi serat karbon yang ringan</strong></li>\r\n<li><strong>Spoiler belakang yang besar</strong></li>\r\n<li><strong>Suspensi adaptif</strong></li>\r\n<li><strong>Pengereman karbon-keramik</strong></li>\r\n<li><strong>Sistem kontrol traksi elektronik</strong></li>\r\n<li><strong>Teknologi canggih</strong></li>\r\n</ul>', 'Amerika', 'Chevrolet'),
(64, 15, 'Maserati MC20 ', 1500, '14900000000', 19, '5.Maserati MC20.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> V6 3.0 liter twin-turbocharged</li>\r\n<li><strong>Tenaga:</strong> 630 hp</li>\r\n<li><strong>Torsi:</strong> 730 Nm</li>\r\n<li><strong>Transmisi:</strong> Otomatis 8-percepatan</li>\r\n<li><strong>Penggerak:</strong> RWD (Rear Wheel Drive)</li>\r\n<li><strong>Kecepatan tertinggi:</strong> 325 km/jam</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 2,9 detik</li>\r\n<li><strong>Emisi CO2:</strong> 261 g/km</li>\r\n<li><strong>Konsumsi bahan bakar:</strong> 12,2 l/100 km</li>\r\n</ul>\r\n<p><strong>Desain</strong>&nbsp;:</p>\r\n<p>Maserati MC20 adalah supercar berperforma tinggi yang diproduksi oleh Maserati. Mobil ini diluncurkan pada tahun 2020 dan merupakan model pertama Maserati yang menggunakan powertrain mid-engine.</p>\r\n<p>MC20 memiliki desain yang futuristik dan aerodinamis, dengan bodi serat karbon yang ringan dan kokpit bergaya F1. Mobil ini juga dilengkapi dengan berbagai fitur teknologi canggih, termasuk sistem suspensi adaptif, pengereman karbon-keramik, dan sistem kontrol traksi elektronik.</p>\r\n<p><strong>Fitur Utama:</strong></p>\r\n<ul>\r\n<li>Powertrain mid-engine yang bertenaga</li>\r\n<li>Desain yang futuristik dan aerodinamis</li>\r\n<li>Bodi serat karbon yang ringan</li>\r\n<li>Kokpit bergaya F1</li>\r\n<li>Suspensi adaptif</li>\r\n<li>Pengereman karbon-keramik</li>\r\n<li>Sistem kontrol traksi elektronik</li>\r\n<li>Teknologi canggih</li>\r\n</ul>', 'Italia', 'Maserati'),
(65, 16, 'Porsche 911 GT3', 1435, '3700000000', 20, '1.Porsche 911 GT3.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li>Mesin: Boxer enam silinder naturally aspirated 4.0 liter</li>\r\n<li>Tenaga: 502 hp</li>\r\n<li>Torsi: 465 Nm</li>\r\n<li>Transmisi: PDK 7-percepatan</li>\r\n<li>Akselerasi 0-100 km/jam: 3,4 detik</li>\r\n<li>Kecepatan maksimum: 318 km/jam</li>\r\n<li>Kapasitas tangki bahan bakar: 64 liter</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>Deskripsi:</p>\r\n<p>Porsche 911 GT3 adalah varian performa tinggi dari mobil sport ikonik Porsche 911. Didesain untuk menghadirkan pengalaman berkendara yang presisi dan penuh adrenalin, GT3 merupakan pilihan ideal bagi para pecinta kecepatan dan pengendara yang menginginkan performa balap di jalanan umum.</p>\r\n<p><strong>Mesin dan Performa</strong></p>\r\n<p>Hati dari 911 GT3 adalah mesin boxer enam silinder naturally aspirated berkapasitas 4.0 liter yang menghasilkan tenaga 502 hp dan torsi 465 Nm. Tenaga ini dikawinkan dengan transmisi PDK 7-percepatan yang responsif, memungkinkan akselerasi 0-100 km/jam dalam waktu 3,4 detik dan kecepatan maksimum 318 km/jam.</p>\r\n<p><strong>Desain Aerodinamis</strong></p>\r\n<p>Desain eksterior 911 GT3 fokus pada aerodinamis untuk meningkatkan performa dan stabilitas. Dilengkapi dengan splitter depan yang agresif, sayap belakang yang dapat disesuaikan, dan diffuser belakang yang besar, GT3 mampu menghasilkan downforce yang signifikan untuk mencengkeram jalan dengan optimal saat menikung di kecepatan tinggi.</p>\r\n<p><strong>Interior Berfokus pada Pengendara</strong></p>\r\n<p>Interior 911 GT3 dirancang untuk memberikan pengalaman berkendara yang fokus pada pengendara. Kursi bucket yang ringan dan suportif, setir sport yang presisi, dan panel instrumen yang intuitif semuanya dirancang untuk membantu pengemudi memaksimalkan performa mobil.</p>\r\n<p><strong>Fitur Teknologi</strong></p>\r\n<p>Meskipun berfokus pada performa, 911 GT3 juga dilengkapi dengan berbagai fitur teknologi canggih, termasuk:</p>\r\n<ul>\r\n<li>Suspensi Porsche Active Suspension Management (PASM) yang dapat disesuaikan untuk berbagai kondisi jalan</li>\r\n<li>Rem keramik Porsche Ceramic Composite Brakes (PCCB) yang kuat dan tahan panas</li>\r\n<li>Sistem kontrol traksi Porsche Traction Management (PTM) yang membantu menjaga stabilitas saat berakselerasi</li>\r\n<li>Sistem infotainment Porsche Communication Management (PCM) dengan layar sentuh dan navigasi</li>\r\n</ul>', 'Jerman', 'Porsche'),
(66, 16, 'McLaren 765LT ', 1330, '40000000000', 19, '2.McLaren 765LT.jpg', '<p><strong>Deskripsi</strong> :</p>\r\n<p>McLaren 765LT adalah supercar edisi terbatas yang dirancang untuk menghadirkan pengalaman berkendara yang ekstrem dan performa yang tak tertandingi. Dibuat berdasarkan model 720S, 765LT telah dioptimalkan untuk bobot yang lebih ringan, aerodinamis yang lebih baik, dan performa mesin yang lebih tinggi.</p>\r\n<p><strong>Mesin dan Performa</strong></p>\r\n<p>Hati dari 765LT adalah mesin V8 twin-turbocharged 4.0 liter yang menghasilkan tenaga 765 hp dan torsi 800 Nm. Tenaga ini dikawinkan dengan transmisi 7-speed Seamless Shift Gearbox (SSG) yang responsif, memungkinkan akselerasi 0-100 km/jam dalam waktu 2,8 detik dan kecepatan maksimum 330 km/jam.</p>\r\n<p><strong>Desain Aerodinamis</strong></p>\r\n<p>Desain eksterior 765LT fokus pada aerodinamis untuk meningkatkan performa dan downforce. Dilengkapi dengan splitter depan yang agresif, sayap belakang yang dapat disesuaikan, diffuser belakang yang besar, dan side skirts yang panjang, 765LT mampu menghasilkan downforce 40% lebih banyak dibandingkan 720S.</p>\r\n<p><strong>Interior Berfokus pada Pengendara</strong></p>\r\n<p>Interior 765LT dirancang untuk memberikan pengalaman berkendara yang fokus pada pengendara. Kursi bucket yang ringan dan suportif, setir sport yang presisi, dan panel instrumen yang intuitif semuanya dirancang untuk membantu pengemudi memaksimalkan performa mobil.</p>\r\n<p><strong>Fitur Teknologi</strong></p>\r\n<p>Meskipun berfokus pada performa, 765LT juga dilengkapi dengan berbagai fitur teknologi canggih, termasuk:</p>\r\n<ul>\r\n<li>Suspensi McLaren Active Suspension Control (ASC) yang dapat disesuaikan untuk berbagai kondisi jalan</li>\r\n<li>Rem karbon keramik McLaren Ceramic Brakes (CCB) yang kuat dan tahan panas</li>\r\n<li>Sistem kontrol traksi McLaren Traction Control System (MTC) yang membantu menjaga stabilitas saat berakselerasi</li>\r\n<li>Sistem infotainment McLaren Infotainment System (MIS) dengan layar sentuh dan navigasi</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li>Mesin: V8 twin-turbocharged 4.0 liter</li>\r\n<li>Tenaga: 765 hp</li>\r\n<li>Torsi: 800 Nm</li>\r\n<li>Transmisi: 7-speed Seamless Shift Gearbox (SSG)</li>\r\n<li>Akselerasi 0-100 km/jam: 2,8 detik</li>\r\n<li>Kecepatan maksimum: 330 km/jam</li>\r\n<li>Kapasitas tangki bahan bakar: 75 liter</li>\r\n<li><strong>Berat</strong>: 1.330 kg</li>\r\n</ul>', 'Inggris', 'McLaren'),
(67, 16, 'Audi TT Coupe', 1335, '1200000000', 18, '3.Audi TT Coupe.jpg', '<p><strong>Deskripsi :</strong></p>\r\n<p>Audi TT Coupe adalah mobil sport coupe dua pintu yang memadukan desain menawan, teknologi canggih, dan performa memukau. Diperkenalkan pada tahun 1998, TT Coupe telah menjadi ikon desain otomotif modern dan digemari oleh para pecinta mobil sport di seluruh dunia.</p>\r\n<p><strong>Desain</strong></p>\r\n<p>Desain Audi TT Coupe terkenal dengan garis-garisnya yang tajam dan lekuk bodinya yang aerodinamis. Lampu depan LED khas Audi dan gril Singleframe yang ikonik memberikan tampilan yang sporty dan agresif. Interiornya pun tak kalah menarik, dengan desain yang minimalis dan modern, serta material berkualitas tinggi yang memberikan rasa nyaman dan mewah.</p>\r\n<p><strong>Mesin dan Performa</strong></p>\r\n<p>Audi TT Coupe tersedia dengan berbagai pilihan mesin, mulai dari mesin bensin 1.8 liter TFSI yang menghasilkan tenaga 180 hp hingga mesin bensin 2.5 liter TFSI quattro yang menghasilkan tenaga 400 hp. Semua mesin dipadukan dengan transmisi otomatis S tronic yang responsif dan sistem penggerak empat roda quattro yang memberikan handling yang stabil dan performa yang optimal di segala kondisi jalan.</p>\r\n<p><strong>Fitur Teknologi</strong></p>\r\n<p>Audi TT Coupe dilengkapi dengan berbagai fitur teknologi canggih, seperti:</p>\r\n<ul>\r\n<li>Virtual Cockpit: panel instrumen digital yang dapat dikonfigurasi sesuai dengan kebutuhan pengemudi</li>\r\n<li>MMI Navigation Plus: sistem navigasi satelit dengan layar sentuh dan kontrol suara</li>\r\n<li>Audi connect: layanan online yang memungkinkan pengemudi untuk terhubung dengan internet dan berbagai aplikasi</li>\r\n<li>Bang &amp; Olufsen sound system: sistem audio premium dengan suara yang jernih dan powerful</li>\r\n</ul>\r\n<p><strong>Spesifikasi Utama Audi TT Coupe:</strong></p>\r\n<p><strong>Mesin:</strong></p>\r\n<ul>\r\n<li><strong>Tipe Mesin:</strong> Inline 4-silinder</li>\r\n<li><strong>Kapasitas Mesin:</strong> 1984 cc</li>\r\n<li><strong>Tenaga Maksimum:</strong></li>\r\n<ul>\r\n<li>245 hp (180 kW) pada 5250 - 6500 rpm (versi global)</li>\r\n<li>335 hp (versi Indonesia)</li>\r\n</ul>\r\n<li><strong>Torsi Maksimum:</strong></li>\r\n<ul>\r\n<li>370 Nm (272.9 lb-ft) pada 1600 - 4300 rpm (versi global)</li>\r\n<li>450 Nm (versi Indonesia)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Transmisi:</strong></p>\r\n<ul>\r\n<li><strong>Jenis Transmisi:</strong> 6-Percepatan Otomatis</li>\r\n</ul>\r\n<p><strong>Performa:</strong></p>\r\n<ul>\r\n<li><strong>Kecepatan Maksimum:</strong> 250 km/jam</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 5.3 detik (versi global) 4.5 detik (versi Indonesia)</li>\r\n</ul>\r\n<p><strong>Dimensi:</strong></p>\r\n<ul>\r\n<li><strong>Panjang:</strong> 4177 mm</li>\r\n<li><strong>Lebar:</strong> 1832 mm</li>\r\n<li><strong>Tinggi:</strong> 1353 mm</li>\r\n<li><strong>Jarak Sumbu Roda:</strong> 2505 mm</li>\r\n</ul>\r\n<p><strong>Lain-lain:</strong></p>\r\n<p><strong>Kapasitas Tangki Bahan Bakar:</strong> 55 liter</p>', 'Jerman', 'Audi'),
(68, 16, 'Lamborghini Aventador', 1575, '19000000000', 20, '4.Lamborghini Aventador.jpg', '<p><strong>Deskripsi :</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Lamborghini Aventador adalah supercar ikonik yang dikenal dengan desainnya yang agresif, performa yang luar biasa, dan suara mesin yang menggelegar. Diperkenalkan pada tahun 2011, Aventador telah menjadi simbol kemewahan dan performa tinggi di dunia otomotif.</p>\r\n<p><strong>Desain</strong></p>\r\n<p>Desain Lamborghini Aventador terinspirasi dari pesawat tempur dan menampilkan garis-garis tajam, lekuk bodi yang aerodinamis, dan lampu depan dan belakang LED yang futuristik. Material ringan seperti serat karbon digunakan secara ekstensif untuk mengurangi bobot dan meningkatkan performa.</p>\r\n<p><strong>Mesin dan Performa</strong></p>\r\n<p>Lamborghini Aventador tersedia dengan beberapa pilihan mesin V12 yang menghasilkan tenaga luar biasa. Model dasar Aventador LP700-4 dibekali mesin V12 6.5 liter yang menghasilkan tenaga 700 hp dan torsi 690 Nm. Versi yang lebih ekstrem seperti Aventador SVJ dan Aventador S Roadster mampu menghasilkan tenaga hingga 840 hp dan torsi 900 Nm.</p>\r\n<p><strong>Fitur Teknologi</strong></p>\r\n<p>Lamborghini Aventador dilengkapi dengan berbagai fitur teknologi canggih, termasuk:</p>\r\n<ul>\r\n<li>Sistem penggerak empat roda permanen (AWD) yang memberikan handling dan traksi yang optimal</li>\r\n<li>Suspensi adaptif yang dapat disesuaikan dengan berbagai kondisi jalan</li>\r\n<li>Rem karbon keramik yang kuat dan tahan panas</li>\r\n<li>Sistem infotainment dengan layar sentuh dan navigasi</li>\r\n</ul>\r\n<p><strong>Spesifikasi Utama Lamborghini Aventador:</strong></p>\r\n<p><strong>Mesin:</strong></p>\r\n<ul>\r\n<li><strong>Tipe Mesin:</strong> V12 60&deg;</li>\r\n<li><strong>Kapasitas Mesin:</strong> 6498 cc</li>\r\n<li><strong>Tenaga Maksimum:</strong></li>\r\n<ul>\r\n<li>700 hp (515 kW) pada 6500 rpm (Aventador LP 700-4)</li>\r\n<li>750 hp (552 kW) pada 8400 rpm (Aventador SVJ)</li>\r\n<li>765 hp (566 kW) pada 8500 rpm (Aventador S Roadster)</li>\r\n</ul>\r\n<li><strong>Torsi Maksimum:</strong></li>\r\n<ul>\r\n<li>690 Nm (510 lb-ft) pada 5500 rpm (Aventador LP 700-4)</li>\r\n<li>750 Nm (553 lb-ft) pada 6500 rpm (Aventador SVJ)</li>\r\n<li>750 Nm (553 lb-ft) pada 6750 rpm (Aventador S Roadster)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Transmisi:</strong></p>\r\n<ul>\r\n<li><strong>Jenis Transmisi:</strong> 7-Percepatan Otomatis ISR</li>\r\n</ul>\r\n<p><strong>Performa:</strong></p>\r\n<ul>\r\n<li><strong>Kecepatan Maksimum:</strong></li>\r\n<ul>\r\n<li>350 km/jam (Aventador LP 700-4)</li>\r\n<li>350 km/jam (Aventador SVJ)</li>\r\n<li>350 km/jam (Aventador S Roadster)</li>\r\n</ul>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong></li>\r\n<ul>\r\n<li>2,9 detik (Aventador LP 700-4)</li>\r\n<li>2,8 detik (Aventador SVJ)</li>\r\n<li>2,9 detik (Aventador S Roadster)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Dimensi:</strong></p>\r\n<ul>\r\n<li><strong>Panjang:</strong> 4835 mm</li>\r\n<li><strong>Lebar:</strong> 2030 mm</li>\r\n<li><strong>Tinggi:</strong> 1136 mm</li>\r\n<li><strong>Jarak Sumbu Roda:</strong> 2700 mm</li>\r\n</ul>\r\n<p><strong>Kapasitas Tangki Bahan Bakar:</strong> 90 liter</p>\r\n<p><strong>Fitur Lainnya:</strong></p>\r\n<ul>\r\n<li>Penggerak empat roda (AWD)</li>\r\n<li>Suspensi adaptif</li>\r\n<li>Rem karbon keramik</li>\r\n<li>Sistem infotainment dengan layar sentuh</li>\r\n<li>Berbagai fitur keselamatan dan bantuan pengemudi</li>\r\n</ul>', 'Italia', 'Lamborghini'),
(71, 16, 'BMW M4 Coupe', 1700, '2400000000', 20, '5.BMW M4 Coupe.jpg', '<p><strong>Deskripsi:</strong></p>\r\n<p>BMW M4 Coupe adalah mobil sport coupe dua pintu yang memadukan performa tinggi dan handling yang presisi dengan kenyamanan dan kemewahan khas BMW. Diperkenalkan pada tahun 2014, M4 Coupe telah menjadi pilihan populer bagi para pecinta mobil sport yang menginginkan performa terbaik tanpa mengorbankan kenyamanan sehari-hari.</p>\r\n<p><strong>Desain</strong></p>\r\n<p>Desain BMW M4 Coupe menggabungkan estetika sporty dengan sentuhan keanggunan. Grille depan khas BMW, lampu depan LED adaptif, dan bumper depan agresif memberikan tampilan yang sporty dan agresif. Di bagian belakang, lampu belakang LED dan diffuser belakang sporty memberikan sentuhan akhir yang menawan.</p>\r\n<p><strong>Fitur Teknologi</strong></p>\r\n<p>BMW M4 Coupe dilengkapi dengan berbagai fitur teknologi canggih, termasuk:</p>\r\n<ul>\r\n<li>Layar sentuh 12,3 inci dengan sistem infotainment iDrive</li>\r\n<li>Sistem audio Harman Kardon premium</li>\r\n<li>Head-up display</li>\r\n<li>Kursi sport yang dapat disesuaikan dengan ventilasi dan pemanas</li>\r\n<li>Sistem bantuan pengemudi seperti Active Cruise Control dan Lane Departure Warning</li>\r\n</ul>\r\n<p><strong>Spesifikasi Utama BMW M4 Coupe:</strong></p>\r\n<p><strong>Mesin:</strong></p>\r\n<ul>\r\n<li><strong>Tipe Mesin:</strong> Inline 6-silinder twin-turbocharged</li>\r\n<li><strong>Kapasitas Mesin:</strong> 2998 cc</li>\r\n<li><strong>Tenaga Maksimum:</strong></li>\r\n<ul>\r\n<li>431 hp (317 kW) pada 5600-6500 rpm</li>\r\n<li>510 hp (375 kW) pada 6250-7000 rpm (versi Competition)</li>\r\n</ul>\r\n<li><strong>Torsi Maksimum:</strong></li>\r\n<ul>\r\n<li>550 Nm (406 lb-ft) pada 1600-5600 rpm</li>\r\n<li>650 Nm (479 lb-ft) pada 2750-5500 rpm (versi Competition)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Dimensi:</strong></p>\r\n<ul>\r\n<li><strong>Panjang:</strong> 4780 mm</li>\r\n<li><strong>Lebar:</strong> 1852 mm</li>\r\n<li><strong>Tinggi:</strong> 1392 mm</li>\r\n<li><strong>Jarak Sumbu Roda:</strong> 2851 mm</li>\r\n</ul>\r\n<p><strong>Kapasitas Tangki Bahan Bakar:</strong> 65 liter</p>\r\n<p><strong>Fitur Lainnya:</strong></p>\r\n<ul>\r\n<li>Penggerak empat roda xDrive (opsional)</li>\r\n<li>Suspensi adaptif M Sport</li>\r\n<li>Rem M Sport</li>\r\n<li>Sistem infotainment iDrive 8.6 dengan layar sentuh 12,3 inci</li>\r\n<li>Berbagai fitur keselamatan dan bantuan pengemudi</li>\r\n</ul>', 'Jerman', 'BMW'),
(72, 17, 'Bugatti Chiron', 1964, '100000000000', 10, 'Bugatti Chiron.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> W16 8.0 liter quad-turbocharged</li>\r\n<li><strong>Tenaga:</strong> 1.500 hp</li>\r\n<li><strong>Torsi:</strong> 1.600 Nm</li>\r\n<li><strong>Transmisi:</strong> Otomatis 7-percepatan</li>\r\n<li><strong>Penggerak:</strong> 4 roda (AWD)</li>\r\n<li><strong>Kecepatan tertinggi:</strong> 420 km/jam (dengan opsi Chiron Super Sport 300+)</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 2,4 detik</li>\r\n<li><strong>Emisi CO2:</strong> 458 g/km</li>\r\n<li><strong>Konsumsi bahan bakar:</strong> 23,1 l/100 km</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Deskripsi:</strong></p>\r\n<p>Bugatti Chiron adalah hypercar berperforma tinggi yang diproduksi oleh Bugatti Automobiles S.A.S. Mobil ini diluncurkan pada tahun 2016 dan merupakan penerus dari Bugatti Veyron.</p>\r\n<p>Chiron memiliki desain yang agresif dan aerodinamis, dengan bodi serat karbon yang ringan dan spoiler belakang yang besar. Mobil ini juga dilengkapi dengan berbagai fitur teknologi canggih, termasuk sistem suspensi adaptif, pengereman karbon-keramik, dan sistem kontrol traksi elektronik.</p>\r\n<p>Fitur Utama:</p>\r\n<ul>\r\n<li>Mesin W16 yang sangat bertenaga</li>\r\n<li>Desain yang agresif dan aerodinamis</li>\r\n<li>Bodi serat karbon yang ringan</li>\r\n<li>Spoiler belakang yang besar</li>\r\n<li>Suspensi adaptif</li>\r\n<li>Pengereman karbon-keramik</li>\r\n<li>Sistem kontrol traksi elektronik</li>\r\n<li>Teknologi canggih</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'Prancis', 'Bugatti'),
(73, 17, 'McLaren Senna', 1198, '37500000000', 10, 'McLaren Senna.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> V8 4.0 liter twin-turbocharged</li>\r\n<li><strong>Tenaga:</strong> 800 hp</li>\r\n<li><strong>Torsi:</strong> 800 Nm</li>\r\n<li><strong>Transmisi:</strong> Otomatis 7-percepatan</li>\r\n<li><strong>Penggerak:</strong> RWD (Rear Wheel Drive)</li>\r\n<li><strong>Kecepatan tertinggi:</strong> 335 km/jam</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 2,8 detik</li>\r\n<li><strong>Emisi CO2:</strong> 261 g/km</li>\r\n<li><strong>Konsumsi bahan bakar:</strong> 12,2 l/100 km</li>\r\n</ul>\r\n<p><strong>Deskripsi:</strong></p>\r\n<p>McLaren Senna adalah supercar berperforma tinggi yang diproduksi oleh McLaren Automotive. Mobil ini diluncurkan pada tahun 2018 dan merupakan model track-focused yang terinspirasi dari McLaren Senna GTR, mobil balap McLaren F1 yang ikonik.</p>\r\n<p>Senna memiliki desain yang agresif dan aerodinamis, dengan bodi serat karbon yang ringan dan sayap belakang yang besar. Mobil ini juga dilengkapi dengan berbagai fitur teknologi canggih, termasuk sistem suspensi adaptif, pengereman karbon-keramik, dan sistem kontrol traksi elektronik.</p>\r\n<p><strong>Fitur Utama:</strong></p>\r\n<ul>\r\n<li>Mesin V8 yang sangat bertenaga</li>\r\n<li>Desain yang agresif dan aerodinamis</li>\r\n<li>Bodi serat karbon yang ringan</li>\r\n<li>Sayap belakang yang besar</li>\r\n<li>Suspensi adaptif</li>\r\n<li>Pengereman karbon-keramik</li>\r\n<li>Sistem kontrol traksi elektronik</li>\r\n<li>Teknologi canggih</li>\r\n</ul>', 'Inggris', 'Mclaren'),
(74, 17, 'Ferrari LaFerrari', 1405, '22463000000', 10, 'Ferrari LaFerrari.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> V12 6.3 liter naturally aspirated + motor listrik</li>\r\n<li><strong>Tenaga:</strong> 950 hp (total) - 800 hp (mesin bensin) + 150 hp (motor listrik)</li>\r\n<li><strong>Torsi:</strong> 900 Nm</li>\r\n<li><strong>Transmisi:</strong> Otomatis 7-percepatan</li>\r\n<li><strong>Penggerak:</strong> RWD (Rear Wheel Drive)</li>\r\n<li><strong>Kecepatan tertinggi:</strong> 350 km/jam</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 2,4 detik</li>\r\n<li><strong>Emisi CO2:</strong> 240 g/km</li>\r\n<li><strong>Konsumsi bahan bakar:</strong> 11,4 l/100 km</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Deskripsi:</strong></p>\r\n<p>Ferrari LaFerrari adalah hypercar hybrid performa tinggi yang diproduksi oleh Ferrari S.p.A. Mobil ini diluncurkan pada tahun 2013 dan merupakan model flagship Ferrari saat itu.</p>\r\n<p>LaFerrari memiliki desain yang futuristik dan aerodinamis, dengan bodi serat karbon yang ringan dan spoiler belakang yang besar. Mobil ini juga dilengkapi dengan berbagai fitur teknologi canggih, termasuk sistem suspensi adaptif, pengereman karbon-keramik, dan sistem kontrol traksi elektronik.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Fitur Utama:</strong></p>\r\n<ul>\r\n<li>Powertrain hybrid yang bertenaga</li>\r\n<li>Desain yang futuristik dan aerodinamis</li>\r\n<li>Bodi serat karbon yang ringan</li>\r\n<li>Spoiler belakang yang besar</li>\r\n<li>Suspensi adaptif</li>\r\n<li>Pengereman karbon-keramik</li>\r\n<li>Sistem kontrol traksi elektronik</li>\r\n<li>Teknologi canggih</li>\r\n</ul>', 'Italia', 'Ferrari'),
(75, 17, 'Zenvo TSR-S', 1590, '25672000000', 10, 'Zenvo TSR-S.jpg', '<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Mesin:</strong> V8 5.8 liter twin-turbocharged</li>\r\n<li><strong>Tenaga:</strong> 1.177 hp</li>\r\n<li><strong>Torsi:</strong> 1.100 Nm</li>\r\n<li><strong>Transmisi:</strong> Otomatis 7-percepatan</li>\r\n<li><strong>Penggerak:</strong> RWD (Rear Wheel Drive)</li>\r\n<li><strong>Kecepatan tertinggi:</strong> 350 km/jam (secara elektronik dibatasi)</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 2,8 detik</li>\r\n</ul>\r\n<p>Deskripsi:</p>\r\n<p>Zenvo TSR-S adalah hypercar berperforma tinggi yang diproduksi oleh Zenvo Automotive AB, sebuah perusahaan otomotif asal Denmark. Mobil ini diluncurkan pada tahun 2018 dan merupakan model flagship Zenvo saat ini.</p>\r\n<p>TSR-S memiliki desain yang futuristik dan aerodinamis, dengan bodi serat karbon yang ringan dan sayap belakang yang besar. Mobil ini juga dilengkapi dengan berbagai fitur teknologi canggih, termasuk sistem suspensi adaptif, pengereman karbon-keramik, dan sistem kontrol traksi elektronik.</p>\r\n<p><strong>Fitur Utama:</strong></p>\r\n<ul>\r\n<li>Mesin V8 yang sangat bertenaga</li>\r\n<li>Desain yang futuristik dan aerodinamis</li>\r\n<li>Bodi serat karbon yang ringan</li>\r\n<li>Sayap belakang yang besar</li>\r\n<li>Suspensi adaptif</li>\r\n<li>Pengereman karbon-keramik</li>\r\n<li>Sistem kontrol traksi elektronik</li>\r\n<li>Teknologi canggih</li>\r\n<li>Fitur unik seperti \"Centripedal Force Vectoring\" dan \"Active Stabilizer System\"</li>\r\n</ul>', 'Denmark', 'Zenvo'),
(76, 17, 'Pininfarina Battista', 1966, '100000000000', 10, 'Pininfarina Battista.jpg', '<p>&nbsp;</p>\r\n<p><strong>Spesifikasi Utama:</strong></p>\r\n<ul>\r\n<li><strong>Powertrain:</strong> Listrik murni</li>\r\n<li><strong>Motor:</strong> 4 motor listrik</li>\r\n<li><strong>Tenaga:</strong> 1.874 hp</li>\r\n<li><strong>Torsi:</strong> 2.300 Nm</li>\r\n<li><strong>Baterai:</strong> Lithium-ion 120 kWh</li>\r\n<li><strong>Jangkauan:</strong> 500 km (WLTP)</li>\r\n<li><strong>Akselerasi 0-100 km/jam:</strong> 1,9 detik</li>\r\n<li><strong>Kecepatan tertinggi:</strong> 350 km/jam (secara elektronik dibatasi)</li>\r\n<li><strong>Waktu pengisian daya:</strong> 2 jam (DC fast charging)</li>\r\n<li><strong>Emisi CO2:</strong> 0 g/km</li>\r\n</ul>\r\n<p><strong>Deskripsi:</strong></p>\r\n<p>Pininfarina Battista adalah hypercar listrik berperforma tinggi yang diproduksi oleh Automobili Pininfarina S.p.A., sebuah perusahaan otomotif asal Italia. Mobil ini diluncurkan pada tahun 2018 dan merupakan model pertama yang diproduksi secara massal oleh Pininfarina.</p>\r\n<p>Battista memiliki desain yang futuristik dan aerodinamis, dengan bodi serat karbon yang ringan dan spoiler belakang yang besar. Mobil ini juga dilengkapi dengan berbagai fitur teknologi canggih, termasuk sistem suspensi adaptif, pengereman karbon-keramik, dan sistem kontrol traksi elektronik.</p>\r\n<p><strong>Fitur Utama:</strong></p>\r\n<ul>\r\n<li>Powertrain listrik yang sangat bertenaga</li>\r\n<li>Desain yang futuristik dan aerodinamis</li>\r\n<li>Bodi serat karbon yang ringan</li>\r\n<li>Spoiler belakang yang besar</li>\r\n<li>Suspensi adaptif</li>\r\n<li>Pengereman karbon-keramik</li>\r\n<li>Sistem kontrol traksi elektronik</li>\r\n<li>Teknologi canggih</li>\r\n<li>Interior mewah dengan material premium</li>\r\n<li>Fitur-fitur modern seperti autopilot dan konektivitas 5G</li>\r\n</ul>', 'Italia', 'Pininfarina');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_test_drive`
--

CREATE TABLE `tbl_test_drive` (
  `id_test_drive` int(10) NOT NULL,
  `id_pelanggan` int(10) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `provinsi` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cabang` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nomor_telepon` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `catatan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_test_drive`
--

INSERT INTO `tbl_test_drive` (`id_test_drive`, `id_pelanggan`, `id_produk`, `provinsi`, `cabang`, `tanggal`, `waktu`, `nama`, `nomor_telepon`, `email`, `catatan`) VALUES
(1, 12, 55, 'jawa-timur', 'surabaya', '2024-05-20', '03:00', 'arif', '08675893251', 'arif@gmail.com', 'mobil sangat bagus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id_detail_order`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tbl_kat_pos`
--
ALTER TABLE `tbl_kat_pos`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_kat_produk`
--
ALTER TABLE `tbl_kat_produk`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_order2` (`id_order`);

--
-- Indexes for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD PRIMARY KEY (`id_pos`),
  ADD KEY `id_kat_pos` (`id_kategori`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tbl_test_drive`
--
ALTER TABLE `tbl_test_drive`
  ADD PRIMARY KEY (`id_test_drive`),
  ADD KEY `id_pelanggan` (`id_pelanggan`) USING BTREE,
  ADD KEY `id_produk` (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  MODIFY `id_detail_order` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tbl_kat_pos`
--
ALTER TABLE `tbl_kat_pos`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_kat_produk`
--
ALTER TABLE `tbl_kat_produk`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  MODIFY `id_pos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_test_drive`
--
ALTER TABLE `tbl_test_drive`
  MODIFY `id_test_drive` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD CONSTRAINT `id_order` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_produk` FOREIGN KEY (`id_produk`) REFERENCES `tbl_produk` (`id_produk`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `id_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `tbl_pelanggan` (`id_pelanggan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD CONSTRAINT `id_order2` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD CONSTRAINT `id_kat_pos` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kat_pos` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD CONSTRAINT `id_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kat_produk` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
