-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2017 at 04:53 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `serumah`
--
CREATE DATABASE IF NOT EXISTS `serumah` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `serumah`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '53rum4h');

-- --------------------------------------------------------

--
-- Table structure for table `ambil_makul`
--

CREATE TABLE IF NOT EXISTS `ambil_makul` (
  `id_user` int(11) NOT NULL,
  `id_makul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `makul`
--

CREATE TABLE IF NOT EXISTS `makul` (
  `id_makul` int(11) NOT NULL AUTO_INCREMENT,
  `kode_makul` varchar(10) NOT NULL,
  `nama_makul` varchar(50) NOT NULL,
  `tipe_makul` tinyint(1) NOT NULL,
  `semester` int(1) NOT NULL,
  `deskripsi_makul` text NOT NULL,
  `prasyarat` varchar(25) DEFAULT NULL,
  `sks` int(1) NOT NULL,
  `teori` int(1) NOT NULL,
  `praktikum` int(1) NOT NULL,
  `diperbarui` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_makul`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `makul`
--

INSERT INTO `makul` (`id_makul`, `kode_makul`, `nama_makul`, `tipe_makul`, `semester`, `deskripsi_makul`, `prasyarat`, `sks`, `teori`, `praktikum`, `diperbarui`) VALUES
(1, '0953112010', 'Pendidikan Agama', 0, 1, 'Pendidikan agama adalah pendidikan yang memberikan pengetahuan dan membentuk sikap, kepribadian, dan keterampilan peserta didik dalam mengamalkan ajaran agamanya, yang dilaksanakan sekurang-kurangnya melalui mata pelajaran/kuliah pada semua jalur, jenjang, dan jenis pendidikan\r\n', NULL, 2, 2, 0, '2016-12-11 08:49:12'),
(2, '0953134803', 'Konsep Pemrograman', 0, 1, 'Selamat datang di kuliah Pemrograman Dasar. Kuliah  ini bertujuan untuk menambah suplemen ilmu dan pengetahuan pada matakuliah Pemrograman Dasar. Peserta kuliah diharapkan memiliki pengetahuan yang cukup dalam logika berpikir dan logika matematika. Semoga ilmu dan pengetahuan yang kita peroleh dari perkuliahan ini dapat bermanfaat bagi diri sendiri dan orang lain.\r\n', NULL, 4, 3, 1, '2016-12-11 08:49:12'),
(3, '0953123201', 'Sistem Digital', 0, 1, 'Melakukan pengkajian prinsip dasar teori informasi dan penerapan untuk karakterisasi sumber dan penghitungan kapasitas kanal, konsep dasar ruang sinyal serta kaitannya dengan pengiriman dan penerimaan informasi, teknik pengiriman dan penerimaan dengan sinyal bandpass dan baseband, teknik ekualisasi, serta analisis unjuk kerjanya.\r\n', NULL, 3, 2, 1, '2016-12-11 08:49:12'),
(4, '0953123001', 'Kalkulus I', 0, 1, 'Mengaji tentang vektor dimensi dua dan tiga, fungsi real dengan dua peubah (pengertian, limit dan kekontinuan, turunan parsial, aljabar turunan dan aturan rantai, turunan parsial tingkat tinggi, Teorema Taylor, masalah maksimum dan minimum, Metode Lagrange), fungsi bernilai vektor (pengertian, limit dan kekontinuan, turunan parsial, aljabar turunan, turunan parsial tingkat tinggi, tensor), integral lipat, integral garis dan integral permukaan, teorema integral (Teorema Green, Gauss, dan Stokes) melalui pembelajaran aktif berbantuan ICT dengan metode ceramah, tanya jawab, dan diskusi\r\n', NULL, 3, 3, 0, '2016-12-11 08:49:12'),
(5, '0953123000', 'Fisika', 0, 1, 'Mata kuliah Fisika dasar merupakan ilmu yang mendasari untuk pengembanganrekayasa, desain, perencanaan, teknologi dan mempunyai peranpenting dalam berbagai disiplin serta memajukan daya pikir manusia. Perkembanganpesat di bidang teknologi dewasa ini tidak lepas dari ilmu-ilmu fisika.Untuk menguasai dan menciptakan teknologi di masa depan diperlukan penguasaanfisika yang kuat.\r\n', NULL, 3, 3, 0, '2016-12-11 08:49:12'),
(6, '0953142005', 'Bahasa Inggris I', 0, 1, 'Matakuliah ini membekali mahasiswa pada keterampilan dan komponen bahasa pada level dasar (pre-intermediate). Matakuliah ini juga memperkenalkan tes terstandarisasi yang memuat latihan keterampilan membaca (reading skills), menyimak (listening comprehension) dan tata bahasa dan kosakata (structure and vocabulary) yang diarahkan untuk persiapan test bahasa inggris standar Internasional. Semua kegiatan perkuliahan akan disajikan dengan cara ceramah dan diskusi.\r\n', NULL, 2, 2, 0, '2016-12-11 08:49:12'),
(7, '0953112011', 'Bahasa Indonesia', 0, 1, 'Mata  Kuliah  Bahasa  Indonesia  merupakan  pelajaran  yang  mengembangkan  kemampuan  mahasiswa dalam  berbahasa Indonesia  dengan  baik  dan benar,  karena  penguasaan  atas bahasa Indonesia  dapat dijadikan  ukuran  nasionalisme  seseorang  sebagai  bangsa  Indonesia.  Selain  itu,  mata  kuliah  ini  juga bertujuan untuk  mengembangkan  kemampuan mahasiswa  dalam  mengorganisir  ide-ide  atau  konsep-konsep  untuk  dikomunikasikan  kepada  pihak  lain  sehingga  terjalin  interaksi  antaride  yang berkesinambungan dan menghasilkan proses transfer ilmu dan pengelolaan yang berjalan efektif. \r\n', NULL, 2, 2, 0, '2016-12-11 08:49:12'),
(8, '0953122004', 'Statistika', 0, 1, 'Mata kuliah ini berisi tentang konsep dasar statistika deskriptif yang meliputi penyajian data, perhitungan nilai tengah dan variabilitas serta mengkaji selang kepercayaan, angka indeks dan time series. Metode pembelajaran yang sering digunakan adalah ceramah dan diskusi serta PBL (problem based learning)\r\n', NULL, 2, 2, 0, '2016-12-11 08:49:12'),
(9, '0953223004', 'Kalkulus II', 0, 2, 'Mengaji tentang vektor dimensi dua dan tiga, fungsi real dengan dua peubah (pengertian, limit dan kekontinuan, turunan parsial, aljabar turunan dan aturan rantai, turunan parsial tingkat tinggi, Teorema Taylor, masalah maksimum dan minimum, Metode Lagrange), fungsi bernilai vektor (pengertian, limit dan kekontinuan, turunan parsial, aljabar turunan, turunan parsial tingkat tinggi, tensor), integral lipat, integral garis dan integral permukaan, teorema integral (Teorema Green, Gauss, dan Stokes) melalui pembelajaran aktif berbantuan ICT dengan metode ceramah, tanya jawab, dan diskusi\r\n', 'KAL I', 3, 3, 0, '2016-12-11 09:13:53'),
(10, '0953223600', 'Metematika Diskrit I', 0, 2, 'Matematika Diskrit merupakan mata kuliah dasar yang berisi dasar-dasar logika matematika yang diperlukan untuk pembelajaran lebih lanjut di bidang Ilmu Komputer. \r\n', NULL, 3, 3, 0, '2016-12-11 09:13:53'),
(11, '0953233100', 'Struktur Data dan Algoritma I', 0, 2, 'Matakuliah ini membekali mahasiswa agar mahasiswa dapat menguasai dan mampu memahami teori dasar struktur dan penanganan data, serta menyusun algoritma dan pemanfaatan bentuk struktur tersebut, meningkatkan pemahaman struktur data dan penanganan data bagi perencanaan algoritma dan menyusun program\r\n', NULL, 3, 2, 1, '2016-12-11 09:13:53'),
(12, '0953222601', 'Probabilitas', 0, 2, 'Probabilitas adalah suatu nilai yang digunakan untuk mengukur tingkat terjadinya suatu kejadian yang acak. Kata probabilitas itu sendiri sering disebut dengan peluang atau kemungkinan. Probabilitas secara umum merupakan peluang bahwa sesuatu akan terjadi.\r\n', NULL, 2, 2, 0, '2016-12-11 09:13:53'),
(13, '0953233201', 'Organisasi Sistem Komputer', 0, 2, 'Mata kuliah ini membahas konsep arsitektur komputer ditinjau dari level lojik digital (fisik), level microprogramming, dan level operating system. Secara fisik, akan membahas konfigurasi hubungan prosesor, memori, dan IO. Prosesor akan membahas tentang organisasi internal dan eksternalnya. Memori akan membahas memori utama dan memori sekunder (elektronik, magnetik, dan optik) dari teknologi dasar, fitur, dan penggunaannya dalam sistem komputer. \r\n', 'SD', 3, 2, 1, '2016-12-11 09:13:53'),
(14, '0953212012', 'Pendidikan Kewarganegaraan', 0, 2, 'Mata Kuliah Pendidikan Kewarganegaraan merupakan pelajaran yang menyelenggarakan pendidikan kebangsaan, demokrasi, hukum, multikultural dan kewarganegaraan bagi mahasiswa guna mendukung terwujudnya warga Negara yang sadar akan hak dan kewajiban, serta cerdas, terampil dan berkarakter sehingga dapat diandalkan untuk membangun bangsa dan Negara berdasarkan Pancasila dan UUD 1945 sesuai bidang keilmuan dan profesinya.\r\n', NULL, 2, 2, 0, '2016-12-11 09:13:53'),
(15, '0953252009', 'Ilmu Sosial Budaya Dasar', 0, 2, 'Ilmu Sosial Budaya Dasar (ISBD) merupakan salah satu mata kuliah wajib bagi mahasiswa di perguruan tinggi. Ilmu Sosial Budaya Dasar (ISBD) pada awalnya merupakan gabungan dari mata kuliah Ilmu Sosial Dasar (ISD) dan Ilmu Budaya Dasar (IBD). Mata kuliah tersebut merupakan Mata Kuliah Umum (MKU) yang biasa diterapkan pada setiap perguruan tinggi yang ada\r\n', NULL, 2, 2, 0, '2016-12-11 09:13:53'),
(16, '0953242008', 'Bahasa Inggris II', 0, 2, 'Matakuliah ini membekali mahasiswa pada keterampilan dan komponen bahasa pada level dasar (pre-intermediate). Matakuliah ini juga memperkenalkan tes terstandarisasi yang memuat latihan keterampilan membaca (reading skills), menyimak (listening comprehension) dan tata bahasa dan kosakata (structure and vocabulary) yang diarahkan untuk persiapan test bahasa inggris standar Internasional. Semua kegiatan perkuliahan akan disajikan dengan cara ceramah dan diskusi.\r\n', NULL, 2, 2, 0, '2016-12-11 09:13:53'),
(17, '0953322603', 'Matematika Diskrit II', 0, 3, 'Matematika Diskrit merupakan mata kuliah dasar yang berisi dasar-dasar logika matematika yang diperlukan untuk pembelajaran lebih lanjut di bidang Ilmu Komputer. \r\n', 'MD I', 2, 2, 0, '2016-12-11 09:21:26'),
(18, '0953333101', 'Struktur Data dan Algoritma II', 0, 3, 'Matakuliah ini membekali mahasiswa agar mahasiswa dapat menguasai dan mampu memahami teori dasar struktur dan penanganan data, serta menyusun algoritma dan pemanfaatan bentuk struktur tersebut, meningkatkan pemahaman struktur data dan penanganan data bagi perencanaan algoritma dan menyusun program\r\n', 'SDA I', 3, 2, 1, '2016-12-11 09:21:26'),
(19, '0953334400', 'Basis Data', 0, 3, 'Matakuliah ini membekali mahasiswa agar mahasiswa dapat menguasai dan mampu memahami teori dasar struktur dan penanganan data, serta menyusun algoritma dan pemanfaatan bentuk struktur tersebut, meningkatkan pemahaman struktur data dan penanganan data bagi perencanaan algoritma dan menyusun program\r\n', NULL, 4, 3, 1, '2016-12-11 09:21:26'),
(20, '0953333203', 'Sistem Operasi', 0, 3, 'Mata kuliah ini mempelajari overview berbagai sistem operasi, manajemen proses dan thread, manajemen memori, manajemen penyimpanan, serta mendemonstrasikan proses implementasi materi-materi tersebut secara sederhana.\r\n', 'OSK', 3, 2, 1, '2016-12-11 09:21:26'),
(21, '0953333801', 'Pemrograman Beorientasi Objek', 0, 3, 'PBO (Pemrograman Berorientasi Objek) sangatlah diperlukan oleh seorang program. Oleh karena itu untuk menambah pengetahuan, saya tidak mau kikir soal ilmu.\r\n', 'KP', 3, 2, 1, '2016-12-11 09:21:26'),
(22, '0953312010', 'Pendidikan Pancasila', 0, 3, 'Mempelajari tentang memahami pancasila, menghayati dan mengamalkan nilai-nilainya, menghayati dan mengamalkan sistem kenegaraan Republik Indonesia berdasarkan uud 1945, memahami dan menghayati nilai-nilai sejarah perjuangan bangsa serta memahami usaha mewujudkan cita-cita bangsa Indonesia dan menerapkan nilai-nilai Pancasila dalam kehidupan sehari-hari\r\n', NULL, 2, 2, 0, '2016-12-11 09:21:26'),
(23, '0953323602', 'Aljabar Linier', 0, 3, 'Memberikan pengetahuan tentang konsep dasar Aljabar Linear. Agar mahasiswa memahami ruang vektor serta menguasai berbagai jenis operasi dalam ruang vektor, serta dapat menjelaskan vektor sebagai anggota dari sebuah ruang vektor dan berbagai sifat yang dimilikinya, selain dari itu agar mahasiswa dapat melakukan operasi=operasi matriks, termasuk determinan, transformasi linier, dan persamaan linier.\r\n', 'KAL II', 3, 3, 0, '2016-12-11 09:21:26'),
(24, '0953423604', 'Metode Numerik', 0, 4, 'Metode  Numerik adalah teknik-teknik yang digunakan untuk memformulasikan masalah matematis agar dapat dipecahkan  dengan operasi perhitungan. Metode numerik secara umum merupakan salah satu mata kuliah yang diajarkan di jurusan pendidikan matematika maupun matematika murni.\r\n', 'KAL II, AL', 3, 2, 1, '2016-12-11 09:26:41'),
(25, '0953422605', 'Riset Operasi', 0, 4, 'To Be Added', 'AL', 2, 2, 0, '2016-12-11 09:26:41'),
(26, '0953434203', 'Jaringan Komputer', 0, 4, 'Jaringan komputer adalah sebuah sistem yang terdiri atas komputer, perangkat komputer, dan perangkat jaringan yang saling terhubung menggunakan media komunikasi/telekomunikasi dengan memakai protokol yang bekerja bersama-sama untuk mencapai suatu tujuan yang sama.\r\n', 'SO', 4, 2, 2, '2016-12-11 09:26:41'),
(27, '0953433802', 'Pemrograman Web', 0, 4, 'Mata kuliah pemrograman web, mempelajari bahasa pemrograman PHP (hypertext preprocessor). Php merupakan bahasa pemrograman bersifat server side artinya berbentuk script yang disimpan dan dijalankan pada komputer server (web server) sedangkan hasilnya dikirim ke komputer client melalui browser dalam  bentuk script HTML (Hypertext Mark Up Language).\r\n', 'BD, PBO', 3, 2, 1, '2016-12-11 09:26:41'),
(28, '0953434700', 'Rekayasa Perangkat Lunak', 0, 4, 'Matakuliah ini mempelajari berbagai ragam teknik dalam merekayasa perangkat lunak, merancang program/perangkat lunak berdasarkan studi kasus dalam kehidupan nyata, Pemanfaatan power designer untukmembuat desain sistem dan alir data dan menggunakan bahasa pemrograman untuk membuat program/perangkat lunak.\r\n', 'PBO', 4, 3, 1, '2016-12-11 09:26:41'),
(29, '0953523604', 'Teori Bahasa dan Automata', 0, 5, 'Teori bahasa membicarakan bahasa formal (formal language), terutama untuk kepentingan perancangan kompilator (compiler) dan pemroses naskah (text processor). Bahasa formal adalah kumpulan kalimat. Semua kalimat dalam sebuah bahasa dibangkitkan oleh sebuah tata bahasa (grammar) yang sama. Sebuah bahasa formal bisa dibangkitkan oleh dua atau lebih tata bahasa berbeda.\r\n', 'MD II', 3, 3, 0, '2016-12-11 09:36:15'),
(30, '0953533701', 'Analisis dan Perancangan Sistem', 0, 5, 'Agar mahasiswa mwmahami struktur organisasi dan perlengkapan dari suatu instalasi komputer, dapat menjelaskan organisasi dari suatu instalasi komputer yang meliputi: Hardware, software, braindware, mampu merencanakan suatu instalasi komputer.\r\n', 'BD', 3, 2, 1, '2016-12-11 09:36:15'),
(31, '0953533401', 'Manajemen Proyek', 0, 5, 'Manajemen Proyek adalah sebuah proses untuk mencapai tujuan dengan menggunakan empat fungsi utama yaitu planning, organizing, actuating, controling ( POAC ) yang didasarkan pada sumberdaya yang dimiliki.\r\n', 'RPL, JK', 3, 2, 1, '2016-12-11 09:36:15'),
(32, '0953532702', 'Pengujian Perangkat Lunak', 0, 5, 'Mata kuliah ini membahas karakteristik sistem perangkat lunak dan prinsip-prinsip manajemen proyek yang meliputi requirements elicitation, software effort estimation, professional ethics, quality control, planning dan scheduling in software life cycle processes, team effort dan risk management.\r\n', 'RPL', 2, 2, 0, '2016-12-11 09:36:15'),
(33, '0953633502', 'Pengolahan Sinyal Digital', 0, 5, 'Mata kuliah ini membahas karakteristik sistem perangkat lunak dan prinsip-prinsip manajemen proyek yang meliputi requirements elicitation, software effort estimation, professional ethics, quality control, planning dan scheduling in software life cycle processes, team effort dan risk management.\r\n', 'KAL II, AL', 3, 2, 1, '2016-12-11 09:36:15'),
(34, '0953533302', 'Artificial Intelligence', 0, 5, 'Kecerdasan Buatan adalah salah bidang study yang berhubungan dengan pemanfaatan mesin untuk memecahkan persoalan yang rumit dengan cara yang lebih manusiawi.\r\n', 'PROB, MD II', 3, 3, 0, '2016-12-11 09:36:15'),
(35, '0953643005', 'Metode Penelitian', 0, 6, 'Metodologi penelitian adalah suatu cabang ilmu yang membahas tentang cara atau metode yang digunakan dalam kegiatan penelitian. Pengertian mencari tidak lain adalah mencari jawaban, yang dapat berarti menemukan atau menguji.\r\n', NULL, 3, 2, 1, '2016-12-11 17:11:29'),
(36, '0953633206', 'Manajemen Jaringan', 0, 6, 'Materi kuliah membahas mengenai teknologi manajemen jaringan komputer secara umum dan standar yang terkait, seperti SNMP (simple Network Management Protocol). Dalam pembahasannya, materi ini akan memberikan kemampuan bagi mahasiswa bagaimana memahami isu teknologi, desan dan implementasi jaringan, pengontrolan jaringan, manajemen SNMP dan lainnya yang berkaitan dengan Teknologi Manajemen Jaringan Komputer.\r\n', 'JK', 3, 2, 1, '2016-12-11 17:11:29'),
(37, '0953633205', 'Sistem Terdistribusi', 0, 6, 'Matakuliah ini mengajarkan konsep dan pengertian sistem terdistribusi, model-model arsitekturnya, protokol yang digunakan, keamanaannya, pemrograman remote invocation& object terdistribusi, sinkronisasi, replikasi, dan transaksi, hingga quality of service, beserta contoh kasusnya. \r\n', 'BD, JK', 3, 2, 1, '2016-12-11 17:11:29'),
(38, '0953642503', 'Interaksi Manusia dan Komputer', 0, 6, 'To Be Added', 'PBO, PW', 2, 2, 0, '2016-12-11 17:11:29'),
(39, '0953633101', 'Desain dan Analisis Algoritma', 0, 6, 'mata  kuliah  Desain  dan Analisis  Algoritma  yang  menerangkan  tentang pengertian-pengertian  Algoritma,Desain dan Analisis Algoritma, Jenis-jenis Algoritma serta penggunaan Algoritma yang dibuat dalam bentuk tugas 1 dengan tujuan agar mahasiswa dapat mengerti tentang   apa   itu   Algoritma,   Desain   dan   Analisis   Algoritmaserta   jenis-jenis algoritma dan penggunaannya.\r\n', 'SDA II', 3, 3, 0, '2016-12-11 17:11:29'),
(40, '0953733901', 'Kerja Praktek', 0, 7, 'Kuliah Kerja Praktek (KKP) merupakan kegiatan yang dilaksanakan oleh mahasiswa berupa magang atau observasi di perusahaan atau instansi pemerintah secara terbimbing dan terpau sebagai persyaratan kelulusan.\r\n', '90 SKS', 3, 0, 3, '2016-12-11 17:14:49'),
(41, '0953712012', 'Etika Profesi', 0, 7, 'Etika Profesi adalah sikap hidup berupa keadilan untuk memberikan pelayanan profesional terhadap masyarakat dengan ketertiban penuh dan keahlian sebagai pelayanan dalam rangka melaksanakan tugas berupa kewajiban terhadap masyarakat.\r\n', NULL, 2, 2, 0, '2016-12-11 17:14:49'),
(42, '0953712406', 'Kewirausahaan', 0, 7, 'Mata Kuliah Kewirausahaan merupakan pelajaran yang membentuk karakter wirausaha atau minimal mahasiswa menambah pengetahuan mahasiswa mengenai seluk-beluk bisnis baik dari sisi soft skill maupun hard skill sehingga mahasiswa mampu memanfaatkan peluang-peluang  yang ada di sekitarnya dalam menciptakan usaha sendiri setelah lulus maupun saat masih kuliah.\r\n', NULL, 2, 2, 0, '2016-12-11 17:14:49'),
(43, '0953812013', 'KKN', 0, 8, 'Memberikan ketrampilan kepada mahasiswa melalui pengalaman langsung/praktek kerja tentang cara-cara mengintegrasikan dan mengamplikasikan berbagai ilmu dalam merumuskan serta memecahkan permasalahan pembangunan : Hakekat  masalah, tekhnik memecahkan masalah pemangunan, pemecahan masalah pembangunan secara pragmatis berdasarkan ilmu, teknologi dan seni, menggerakkan masyarakat dalam pertisipasinya untuk memecahkan masalah pembangunan.\r\n', '110 SKS', 2, 0, 2, '2016-12-11 17:14:49'),
(44, '0953836902', 'Tugas Akhir', 0, 8, 'Tugas Akhir (TA) atau skripsi bertujuan untuk memenuhi salah satu syarat memperoleh gelar Sarjana bagi mahasiswa Program S1. Ujian diselenggarakan di akhir masa studi dengan mengikutsertakan di dalamnya beberapa pertanyaan teori yang relevan dengan disiplin ilmu masing-masing program studi. Ujian dilaksanakan secara lisan dihadapan majelis penguji yang terdiri dari dosen pembimbing dan dua orang dosen penguji independen.\r\n', '110 SKS', 6, 0, 6, '2016-12-11 17:14:49'),
(45, '0953523300', 'Logika Samar', 1, 3, 'Logika fuzzy, ada yang menyebutkan samar, atau kabur, merupakan pengembangan logika klasik yang hanya mempunyai 2 nilai kebenaran: True/False, Benar/Salah, 1/0. Nilai kebenaran logika fuzzy diperluas menjadi dalam suatu interval tertentu, umumnya [0, 1].\r\n', 'MD I, KAL II', 3, 3, 0, '2016-12-11 17:18:51'),
(46, '0953623607', 'Metode Formal', 1, 3, 'metode formal adalah istilah yang diterapkan untuk analisis perangkat lunak (dan perangkat keras komputer) yang hasilnya diperoleh murni melalui penggunaan metode matematika yang ketat.\r\n', 'SDA I', 3, 2, 1, '2016-12-11 17:18:51'),
(47, '0953433501', 'Teknik Multimedia', 1, 4, 'Program Multimedia dirancang khusus untuk menyiapkan mahasiswa agar mampu menyampaikan pesan yang digunakan melalui berbagai media yang ada, seperti media audio, video, teks, grafik, dan animasi. Berbagai produk multimedia dapat dijumpai berupa media televisi, multimedia interaktif dan berbagai unsur kreatif yang digunakan dalam menyampaikan pesan agar lebih menarik.\r\n', NULL, 3, 2, 1, '2016-12-11 17:18:51'),
(48, '0953433500', 'Komputer Grafik', 1, 4, 'Grafik Komputer adalah suatu proses pembuatan, penyimpanan dan manipulasi model dan citra. Model berasal dari beberapa bidang seperti fisik, matematik, artistik dan bahkan struktur abstrak.\r\n', 'AL, KP', 3, 2, 1, '2016-12-11 17:18:51'),
(49, '0953432205', 'Open Source', 1, 4, 'Open Source merupakan gabungan dari kata Open yang berarti terbuka, dan Source yang berarti Kode/Sumber. Jadi, Open Source merupakan suatu istilah untuk perangkat lunak yang memberikan kebebasan kode programnya untuk dilihat, diketahui sistem kerjanya, dan dimodifikasi oleh orang lain.\r\n', 'SO', 2, 2, 0, '2016-12-11 17:18:51'),
(50, '0953533803', 'Mobile App Development', 1, 5, 'Program Pengembangan Aplikasi Mobile akan mengajarkan kamu segala hal tentang bagaimana membuat ssebuah aplikasi yang bagus.\r\n', 'PBO', 3, 2, 1, '2016-12-11 17:30:49'),
(51, '0953533403', 'Manajemen Sistem Informasi', 1, 5, 'Mata Kuliah Sistem Informasi Manajemen (SIM) ini dirancang untuk memberi pengetahuan mendasar kepada mahasiswa tentang philosopy dan skills yang diperlukan bagi pengembangan dan pemanfaatan sistem informasi yang berbasis Komputer (computer – based information sistem).\r\n', 'BD, JK', 3, 3, 0, '2016-12-11 17:30:49'),
(52, '0953533301', 'Jaringan Syaraf Tiruan', 1, 5, 'Mata kuliah Jaringan syaraf tiruan membahas tentang perosesan data yang meniru cara kerja sistem syaraf Biologi. Diawali dengan perceptron yang menggambarkan pemrosesan input ke output secara langsung.\r\n', 'AI', 3, 2, 1, '2016-12-11 17:30:49'),
(53, '0953533206', 'Wireless and Mobile Computing', 1, 5, 'Mata Kuliah ini merupakan pengajaran lanjutan dari salah satu bentuk komunikasi yang ada dalam dunia nyata yang berkembang pesat pada saat ini, dengan mata kuliah ini diharapkan mahasiswa dapat membuka cakrawala pemikiran dalam memamdang suatu teknologi yang cenderung baru.\r\n', 'JK, PBO', 3, 2, 1, '2016-12-11 17:30:49'),
(54, '0953533102', 'Kriptografi dan Keamanan Informasi', 1, 5, 'Mata kuliah ini membahas kriptografi (dari pendekatan klasik sampai teknik modern) dan keamanan informasi yang meliputi berbagai aspek seperti penerapan teknik kriptografi dan sifat-sifat keamanan. Materi yang dibahas antara lain teknik enkripsi klasik, block cipher dan DES, finite fields, AES, enkripsi simetris, public key cryptography dan RSA, otentikasi pesan, tandatangan dijital serta protokol otentikasi\r\n', 'AL', 3, 3, 0, '2016-12-11 17:30:49'),
(55, '0953534401', 'Basis Data Lanjut', 1, 5, 'Mata kuliah ini merupakan kelanjutan dari mata kuliah Basis Data. Tujuan utama mata kuliah ini adalah memperkenalkan secara langsung kepada mahasiswa tentang lingkungan database client server serta berbagai pengetahuan untuk mengelola basis data server dengan menggunakan perintah-perintah SQL menggunakan tools Oracle. \r\n', 'BD', 4, 3, 1, '2016-12-11 17:30:49'),
(56, '0953633610', 'Simulasi dan Pemodelan', 1, 6, 'Pemodelan dan Simulasi yaitu agar dapat mempelajari suatu sistem dengan memanfaatkan komputer untuk meniru perilaku sistem tersebut. Cara mempelajari suatu sistem yaitu dengan pengamatan langsung atau pengamatan model dari sistem tersebut.\r\n', 'PROB', 3, 2, 1, '2016-12-11 17:30:49'),
(57, '0953622609', 'Teknik Kompilasi', 1, 6, 'Mengetahui Penerapan konsep ilmu komputer pada perilaku komputer yaitu algoritma, arsitektur komputer, stuktur data maupun penerapan teori bahasa dan automata\r\n', 'TBA', 2, 1, 1, '2016-12-11 17:30:49'),
(58, '0953432204', 'Komputasi Grid', 1, 6, 'Grid computing sebenarnya merupakan sebuah aplikasi pengembangan dari jaringan komputer (network). Hanya saja, tidak seperti jaringan komputer konvensional yang berfokus pada komunikasi antar pirati, aplikasi pada grid computing dirancang untuk memanfaatkan sumber daya pada terminal dalam jaringannya. \r\n', NULL, 2, 2, 0, '2016-12-11 17:30:49'),
(59, '0953623608', 'Natural Language Processing', 1, 6, 'Memberikan pengetahuan dasar dan pemahaman tentang konsep dan teknik Natural Language Processing terkini serta pengetahuan tentang batasan – batasan dari teknik – teknik tersebut.\r\n', 'TBA', 3, 3, 0, '2016-12-11 17:30:49'),
(60, '0953633703', 'Jaminan Mutu Perangkat Lunak', 1, 6, 'Mata kuliah yang membahas bagaimana melakukan penjaminan kualitas software, termasuk didalamnya software testing dan software defect prediction. \r\n', 'RPL', 3, 3, 0, '2016-12-11 17:30:49'),
(61, '0953633303', 'Sistem Pakar', 1, 6, 'Mata kuliah ini memberikan konsep dasar, pengetahuan dan kemampuan dalam manajemen projek perangkat lunak yang meliputi: manajemen perencanaan proyek, ruang lingkup, estimasi waktu, estimasi biaya, estimasi sumber daya, koordinasi sumber daya, kualitas dan resiko projek, pengadaan projek dan komunikasi projek. Disamping itu mata kuliah ini juga memberikan wawasan dan kemampuan dalam mengantisipasi perubahan organisasi terutama yang berhubungan proyek perangkat lunak di masyarakat. \r\n', 'AI', 3, 3, 0, '2016-12-11 17:30:49'),
(62, '0953633304', 'Sistem Pendukung Keputusan', 1, 6, 'Mata kuliah ini memberikan konsep dasar, pengetahuan dan kemampuan dalam manajemen projek perangkat lunak yang meliputi: manajemen perencanaan proyek, ruang lingkup, estimasi waktu, estimasi biaya, estimasi sumber daya, koordinasi sumber daya, kualitas dan resiko projek, pengadaan projek dan komunikasi projek. Disamping itu mata kuliah ini juga memberikan wawasan dan kemampuan dalam mengantisipasi perubahan organisasi terutama yang berhubungan proyek perangkat lunak di masyarakat. \r\n', 'AI', 3, 3, 0, '2016-12-11 17:30:49'),
(63, '0953633704', 'Proyek Perangkat Lunak', 1, 6, 'Mata kuliah ini memberikan konsep dasar, pengetahuan dan kemampuan dalam manajemen projek perangkat lunak yang meliputi: manajemen perencanaan proyek, ruang lingkup, estimasi waktu, estimasi biaya, estimasi sumber daya, koordinasi sumber daya, kualitas dan resiko projek, pengadaan projek dan komunikasi projek. Disamping itu mata kuliah ini juga memberikan wawasan dan kemampuan dalam mengantisipasi perubahan organisasi terutama yang berhubungan proyek perangkat lunak di masyarakat. \r\n', 'RPL', 3, 1, 2, '2016-12-11 17:30:49'),
(64, '0953732805', 'Semantic Web', 1, 7, 'Web Semantik merujuk kepada kemampuan aplikasi komputer untuk lebih memahami bahasa manusia, bukan hanya bahasa yang baku dari para penggunanya tetapi juga bahasa yang lebih kompleks, seperti dalam bahasa percakapan sehingga memudahkan penggunanya untuk berkomunikasi dengan mesin.\r\n', 'PW', 2, 2, 0, '2016-12-11 17:30:49'),
(65, '0953733804', 'Data Mining', 1, 7, 'Dalam kuliah ini akan dibicarakan dasar-dasar citra digital, Transformasi citra, ruang warna, peningkatan kualitas citra, segmentasi citra, ekstraksi ciri, representasi dan deskripsi serta pengenalan dan interpretasi. Contoh-contoh kasus akan dibicarakan dalam kelas atau sebagai tugas.\r\n', 'AL, STAT, BD', 3, 2, 1, '2016-12-11 17:30:49'),
(66, '0953733504', 'Pengolahan Citra Digital', 1, 7, 'Dalam kuliah ini akan dibicarakan dasar-dasar citra digital, Transformasi citra, ruang warna, peningkatan kualitas citra, segmentasi citra, ekstraksi ciri, representasi dan deskripsi serta pengenalan dan interpretasi. Contoh-contoh kasus akan dibicarakan dalam kelas atau sebagai tugas.\r\n', 'AL, STAT', 3, 3, 0, '2016-12-11 17:30:49'),
(67, '0953733407', 'E-Commerce', 1, 7, 'Perkembangan teknologi (tele)komunikasi dan komputer menyebabkan terjadinya perubahan kultur kita sehari-hari. Dalam era yang disebut “information age” ini, media elektronik menjadi salah satu media andalan untuk melakukan komunikasi dan bisnis. E commerce merupakan extension t dari commerce dengan mengeksploitasi media elektronik. Meskipun penggunaan media elektronik ini belum dimengerti, akan tetapi desakan bisnis menyebabkan para pelaku bisnis mau tidak mau harus menggunakan media elektronik ini. \r\n', 'PW', 3, 3, 0, '2016-12-11 17:30:49'),
(68, '0953533404', 'Sistem Informasi Geografis', 1, 7, 'Sistem Informasi Geografi (SIG) atau Geographic Information System (GIS) adalah suatu sistem informasi yang dirancang untuk bekerja dengan data yang bereferensi spasial atau berkoordinat geografi atau dengan kata lain suatu SIG adalah suatu sistem basis data dengan kemampuan khusus untuk menangani data yang bereferensi keruangan (spasial) bersamaan dengan seperangkat operasi kerja (Barus dan Wiradisastra, 2000). Sedangkan menurut Anon (2001) Sistem Informasi geografi adalah suatu sistem Informasi yang dapat memadukan antara data grafis (spasial) dengan data teks (atribut) objek yang dihubungkan secara geogrfis di bumi (georeference). \r\n', 'PBO', 3, 2, 1, '2016-12-11 17:30:49'),
(69, '0953033900', 'Kapita Selekta Ilmu Komputer', 1, 0, 'Mata kuliah Kapita Selekta membahas mengenai topik-topik tertentu di bidang Informatika yang dapat dijadikan referensi pengerjaan Tugas Akhir.', '90 SKS', 2, 2, 0, '2016-12-11 17:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `id_review` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isi_review` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_makul` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `membantu` int(4) NOT NULL,
  `tidak_membantu` int(4) NOT NULL,
  PRIMARY KEY (`id_review`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'M0514012', '123456', 'Berton Arie P A'),
(2, 'M0514018', '123456', 'Fransiska Meilani'),
(3, 'M0514019', '123456', 'Hanif Sulthan Rizqullah'),
(4, 'M0514035', '123456', 'Nadya Mareta'),
(5, 'M0514039', '123456', 'Nurcahyo Dwi Nugroho');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
