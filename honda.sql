-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2020 at 10:57 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `honda`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'Penyembelihan Hewan Kurban Idul Adha 2017', '2017-01-22 06:18:01', 'Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. M-Sekolah tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.', '2017-01-22', '2017-01-22', 'M-Sekolah', '08.00 - 11.00 WIB', 'Dihadiri oleh guru-guru, siswa dan pengurus OSIS', 'M Fikri Setiadi'),
(2, 'Peluncuran Website Resmi M-Sekolah', '2017-01-22 06:26:33', 'Peluncuran website resmi  M-Sekolah, sebagai media informasi dan akademik online untuk pelayanan pendidikan yang lebih baik kepada siswa, orangtua, dan masyarakat pada umumnya semakin meningkat.', '2017-01-04', '2017-01-04', 'M-Sekolah', '07.30 - 12.00 WIB', '-', 'M Fikri Setiadi'),
(3, 'Penerimaan Raport Semester Ganjil Tahun Ajaran 2017-2018', '2017-01-22 06:29:49', 'Berakhirnya semester ganjil tahun pelajaran 2016-2017, ditandai dengan pembagian laporan hasil belajar.', '2017-02-17', '2017-02-17', 'M-Sekolah', '07.30 - 12.00 WIB', 'Untuk kelas XI dan XII, pembagian raport dimulai pukul 07.30 WIB. Sedangkan untuk kelas X pada pukul 09.00 WIB. Raport diambil oleh orang tua/wali murid masing-masing.', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
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
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(7, 'BIG BIKE', '2020-09-12 18:41:10', 2, 'admin1', 0, '8ee1955671365dab73ed8341acc8321a.png'),
(8, 'SUPER CUB', '2020-09-12 18:41:31', 2, 'admin1', 0, 'f4927bdbd970de045abd8df4f81ca9ed.png'),
(9, 'SPORT', '2020-09-12 18:41:50', 2, 'admin1', 0, 'b810859c921f2b36a600a6bddf4fa1cc.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_big_bike`
--

CREATE TABLE `tbl_big_bike` (
  `port_id` int(11) NOT NULL,
  `port_judul` varchar(50) NOT NULL,
  `port_deskripsi` text NOT NULL,
  `port_tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `port_author` varchar(50) NOT NULL,
  `port_image` varchar(50) NOT NULL,
  `port_image1` varchar(100) NOT NULL,
  `port_image2` varchar(100) NOT NULL,
  `port_image3` varchar(100) NOT NULL,
  `port_image4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_big_bike`
--

INSERT INTO `tbl_big_bike` (`port_id`, `port_judul`, `port_deskripsi`, `port_tanggal`, `port_author`, `port_image`, `port_image1`, `port_image2`, `port_image3`, `port_image4`) VALUES
(22, 'HONDA GOLD WING 1800', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Honda Gold Wing 2020 </strong>&ndash;&nbsp; Motor ini resmi di boyong Astra Honda Motor (AHM) untuk memuaskan hasrat pecinta touring yang membutuhkan motor bertenaga besar dengan teknologi terbaik di kelasnya. Tak tanggung-tanggung, harganya setara mobil sport Honda Civic Type-R yang sama-sama dibanderol melebihi 1 Miliar Rupiah. Meski sangat mahal, namun motor ini langsung laris manis setelah diperkenalkan pada gelaran Indonesia International Motor Show 2018 yang berlangsung di Jakarta International Expo.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Motor ini memiliki reputasi sangat baik dan dikenal sebagai motor touring yang nyaman dikendarai dan memiliki teknologi canggih yang bisa diadu dengan motor Harley Davidson. Kecanggihan teknologinya bisa dilihat dari segi mesin yang mengusung mesin 6 Silinder dengan kapasitas 1.800cc. Alhasil Honda Gold Wing memiliki tenaga dan torsi sangat besar yang bisa diandalkan saat touring. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">soal dapur pacu, Honda Gold Wing yang dipasarkan di Indonesia mengusung mesin 6 Silinder berkapasitas 1.833cc. Mesin tersebut dilengkapi sistem pendingin cairan yang membuat suhu mesin selalu terjaga saat berakselerasi pada kecepatan tinggi. Tidak ketinggalan teknologi Fuel Injection (PGM-FI) menjadi fitur wajib untuk mengoptimalkan sistem pembakaran Honda Gold Wing. Kemudian untuk transmisinya menggunakan teknologi Seven-speed automatic DCT yang biasanya digunakan pada mobil sport.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Transmisinya sangat canggih, sehingga sebanding dengan harga Honda Gold Wing yang mahal. Kita juga bisa mengaturnya menjadi transmisi manual dengan menekan tombol khusus pada bagian handlebar. Lalu ada pula 4 pilihan Riding Mode yang terdiri dari Tour, Sport, Rain, dan Economy. Setiap modenya terintegrasi pada bagian suspensi yang menggunakan teknologi Electronic Preoload Suspension, sehingga kita bisa menyesuaikan dengan kenyaman berkendara dan kondisi jalan yang kita lalui.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda GOLD WING 1800</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : Liquid-cooled horizontally opposed six-cylinder<br />\r\nKapasitas : 1.833 cc<br />\r\nTenaga Maksimum&nbsp;&nbsp; &nbsp;: 92.9 kW / 5.500 rpm<br />\r\nTorsi Maksimum : 170 Nm / 4.500 rpm<br />\r\nSistem Bahan Bakar : Fuel Injection (PGM-Fi)<br />\r\nTipe Starter : Electric Starter<br />\r\nTipe Transmsi : Seven-speed automatic DCT, plus reverse and walking mode<br />\r\nBore X Stroke : 73 mm x 73 mm<br />\r\nRasio Kompresi : 10.5:1<br />\r\nTipe Kopling : Wet, Multiple with coil springs<br />\r\nKapasitas Oli : 4.4 Liter<br />\r\nPanjang&nbsp;&nbsp; &nbsp;: 2579 mm<br />\r\nLebar : 950 mm<br />\r\nTinggi : 1432 mm<br />\r\nJarak Sumbu Roda : 1698 mm<br />\r\nGround Clearance : 745 mm<br />\r\nBerat : 380 kg<br />\r\nKapasitas Tangki : 21 Liter</span></p>\r\n', '2020-09-12 17:13:24', 'aldian', 'GoldWing1800-2.png', 'GoldWing1800-21.png', 'GoldWing1800-1.png', '', ''),
(23, 'HONDA CRF 1100L AFRICA TWIN ADVENTURE', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CRF1100L Africa Twin Adventure Sports resmi dirilis oleh PT Astra Honda Motor (AHM) pada awal tahun 2020. Motor ini diklaim ditujukan untuk pecinta motor <em>adventure tourer</em> sejati di Indonesia yang mendambakan ketangguhan jelajah jarak jauh.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Motor petualang Honda tersebut kini dibekali dengan beragam fitur terbaru, salah satunya adalah kehadiran sensor <em>Inertial Measurement Unit</em> (IMU). Fitur ini berfungsi untuk mendeteksi posisi motor dalam 6 poros dan dapat terhubung pada fitur lain, yakni ECU dan ABS sehingga motor dapat menyesuaikan kondisi medan yang dilalui.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Selain itu, motor ini juga dilengkapi pengaplikasian 4+2 <em>riding mode</em>. Fitur ini akan membantu pengendara dalam memilih mode yang sesuai dengan jalanan yang dihadapi, seperti mode <em>tour</em>, <em>urban</em>, <em>gravel</em>, dan <em>off-road</em>. Sementara itu, untuk 2 <em>riding mode</em> tambahan merupakan pilihan mode yang dapat diatur sendiri oleh pengendara sesuai kebutuhannya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sejumlah fitur juga disematkan di motor tersebut, seperti <em>cornering ABS</em>, <em>wheelie control</em> dan <em>rear lift control</em>, <em>cruise control</em>, <em>touch screen</em> digital panel meter TFT berukuran 6,5 inch yang mendukung <em>Apple Carplay</em>, dan <em>wind screen</em> dengan 5 level ketinggian.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Toshiyuki Inuma selaku President Director AHM mengungkapkan bahwa kehadiran CRF1100L Africa Twin Adventure Sports meupakan jawaban bagi petualang sejati yang menyukai perjalanan jarak jauh dengan beragam medan jalan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Beralih ke bagian&nbsp;rangka, Africa Twin terbaru ini mendukung tiga sektor utama, yakni performa ketika <em>off-road</em>, kenyamanan saat turing, dan kelincahan saat digunakan harian.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tak hanya itu, sistem elektronik secara keseluruhan mampu mengatasi kondisi apapun, baik melaju di trek aspal atau sedang menjelajah medan <em>off-road</em>. Hal ini berkat adanya <em>Honda Selectable Torque Control</em> (HSTC), yakni&nbsp;sistem yang menawarkan tujuh tahap kontrol (mode)&nbsp;yang memungkinkan pengendara menonaktifkan ABS roda belakang dan mendapat sensasi berkendara sesuai yang diinginkan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CRF 1100L AFRICA TWIN ADVENTURE</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Dimensi (P X L X T) : 2.330 mm x 960 mm x 1.560 mm<br />\r\nJarak Sumbu Roda : 1.575 mm<br />\r\nJarak terendah ke tanah : 210 mm<br />\r\nTinggi tempat duduk : 810 mm (low), 830 mm (high)<br />\r\nBerat : 238 kg (M/T), 248 kg (DCT)<br />\r\nKapasitas Tangki Bensin : 24,8 liter</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Mesin : 4-Tak, 8-Valve, SOHC, Parallel Twin with 270&deg; crank and uni-cam, Pendingin cairan<br />\r\nKapasitas : 1.084<br />\r\nDiameter x Langkah : 92 x 81,5 mm<br />\r\nPerbandingan Kompresi : 10,1: 1<br />\r\nDaya Maksimum : 75 kW (100 dk) /7.500 rpm<br />\r\nTorsi Maksimum : 105 Nm /6.000 rpm<br />\r\nSistem Bahan Bakar : PGM-FI<br />\r\nTransmisi : Manual, 6-percepatan dan DCT, 6-Percepatan<br />\r\nTipe kopling : Wet multiplate with coil springs, Aluminium Cam Assist an Slipper Clutch<br />\r\nKapasitas oli : 3,9 liter (M/T), 4 liter (DCT)<br />\r\nStarter : Elektrik</span></p>\r\n', '2020-09-12 18:11:45', 'admin1', 'CRF1000LAFRICATWIN-21.png', 'CRF1000LAFRICATWIN-22.png', 'CRF1000LAFRICATWIN-1.png', '', ''),
(24, 'HONDA REBEL', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Honda Rebel 500</strong> &ndash; Perusahaan berlambang sayap mengepak ini memiliki moge cruiser murah bernama CMX500 Rebel atau sering disebut sebagai &ldquo;Honda Rebel 500&rdquo;. Motor ini langsung menyita perhatian pecinta otomotif tanah air setelah dirilis pada tahun 2017, dan saat ini menjadi moge Honda terlaris di Indonesia. Harganya dibanderol di bawah 150 Juta Rupiah, sehingga cocok bagi pecinta otomotif yang ingin naik kelas dari motor 250cc atau dibawahnya. Terlebih Honda Rebel 500 menawarkan gaya Cruiser dengan tamilan retro yang nyaman dikendarai.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Kesuksesan Honda Rebel 500 menjadi<a href=\"https://www.otomotifo.com/harga-moge-honda-terbaru/\"><strong> </strong></a>moge Honda terlaris<a href=\"https://www.otomotifo.com/harga-moge-honda-terbaru/\"> </a>di Indonesia memang tidak lepas dari harga Honda Rebel 500 yang murah. Motor ini sangat cocok bagi orang dewasa yang mencari motor dengan tingkat kenyaman terbaik di kelasnya. Honda Rebel 500 memiliki desain layaknya Harley Davidson yang mengadopsi konsep Cruiser yang nyaman dipakai saat touring atau perjalanan jauh. Kapasitas mesinnya memang tak sebesar moge Honda lainnya. Namun performanya sudah lebih dari cukup untuk menunjang setiap perjalanan jarak jauh ataupun dekat.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Mesin dua silinder Parallel Twin Engine menjadi dapur pacu Honda Rebel 500. Mesin tersebut memiliki konfigurasi 8 katup dengan volume silinder berkapasitas 471cc. Tenaga yang dikeluarkannya mencapai 35.2 kW pada putaran mesin 8.500 rpm. Sedangkan torsinya mencapai 45.8 Nm pada 5.500 rpm. Meski tidak terlalu besar, namun tetap mampu diandalkan untuk menempuh perjalanan jauh ataupun dekat dengan kinerja mesin yang responsif dan hemat BBM. Untuk konsumsi bahan bakarnya sendiri mencapai 27 km/liter.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda REBEL</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : Liquid cooled, 4 Stroke, 8 Valve, DOHC with Parallel Twin Engine<br />\r\nKapasitas : 471 cc<br />\r\nTenaga Maksimum&nbsp;&nbsp; &nbsp;: 35.2 kW/ 8500 rpm<br />\r\nTorsi Maksimum&nbsp;&nbsp; &nbsp;: 45.8 Nm/ 5500 rpm<br />\r\nSistem Bahan Bakar : Fuel Injection (PGM-Fi)<br />\r\nTipe Starter : Electric Starter<br />\r\nTipe Transmsi : Constant Mesh 6-Speed<br />\r\nBore X Stroke : 67 x 66.8 mm<br />\r\nRasio Kompresi : 10.7 : 1<br />\r\nTipe Kopling : Wet, Multiple with coil springs<br />\r\nKapasitas Oli : 2.5 Liter<br />\r\nPanjang&nbsp;&nbsp; &nbsp;: 2.188 mm<br />\r\nLebar : 820 mm<br />\r\nTinggi : 1.094 mm<br />\r\nTinggi Tempat Duduk : 690 mm<br />\r\nJarak Sumbu Roda : 1.488 mm<br />\r\nGround Clearance : 136 mm<br />\r\nBerat : 190 kg<br />\r\nKapasitas Tangki : 11.2 Liter</span></p>\r\n', '2020-09-12 17:28:09', 'admin1', 'CMX500REBEL-1.png', 'CMX500REBEL-11.png', 'CMX500REBEL-2.png', 'CMX500REBEL-3.png', ''),
(25, 'HONDA CBR 1000 RR-R', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CBR1000RR SP &ndash; Honda bisa dikatakan memiliki sejuta pesona yang tak pernah tergantikan oleh siapapun, apalagi untuk motor besar atau yang sering di sebut moge, motor satu ini bisa dikatakan dapat membuat siapa saja yang melihatnya akan tergoda untuk bisa memilikinya. Ditambah bentuknya yang besar dengan di balut materail berkualitas, yang di desain gahar mulai dari tampilan depan hingga bagian terkecil, menjadikannya terlihat sempurna.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Selain tampilan dan desain yang gahar, ternyata pada bagian mesin yang dibawanya juga dapat dikatakan gahar, terlebih dengan diperkuat mesin 1000cc, yang dilengkapi adanya fitur canggih berteknologi tinggi, dimana hampir semua fitur teknologi yang dimiliki oleh Superbike Honda, di adopsi semua oleh motor satu ini, yang menjadikan kenrja mesin sewaktu melakukan akselerasi lebih baik, handling lebih tinggi, dan yang terpenting, performa yang dihasilkan lebih mantap.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Dan indovasi pun masih berlanjut pada bagian kakai-kakai yang dapat meredam getaran, dan juga membuat tampilan lebih ciamik pastinya, dikarenakan pada bagian ini, honda menanamkan suspensi jenis Ohlins, yang mana merek tersebbut akan kekutan redamnya yang tak tertandingi, dan dapat menemabah tingkat keseimbangan sewaktu berkendara lebih tinggi. Oleh karena itu, semua spesifikasi yang dibawa dan fitur yang dimiliki olehnya, menjadikan Honda CBR1000RR SP dimasukan kedalam jajaran Motor Premium.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Gahar dan tangguh, kedua kata tersebut mewakili akan performa yang dimiliki oleh CBR1000RR SP, jadi pantas saja Harga Honda CBR1000RR SP dibanderol sangat mahal. Terlebih jika sobat ketahui jeroan dapur pacu yang dimilikinya, Honda meggunakan mesin 4 tak dengan tipe DOHC yang memiliki 4 silinder segaris, dan kubikasi mesin yang mncapai angka 999.8cc, yang dijalankan pada sistem bahan bakar berupa PGM-DFSI (Programmed Dual Stage Fuel Injection), sedangkan untuk perbandingan kompresi mesin, Honda CBR1000RR SP menggunakan 12,3 : 1, yang didukung penuh transmisi manual 6-speed.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Dari racikan mesin seperti itu, Honda dapat menyumbulkan performa yang cukup mantap, hingga maksimum power sampai dengan 133 kW pada setiap putaran mesin 12.250 RPM, sedangkan untuk nilai torsi yang di raihnya mendapat perolehan angka 114 NM pada setiap 10.500 RPM. Meskipun dapat meghasilkan power yang sangat besar, berkat adanya teknologi bahan bakar yang digunakannya, membuat Honda CBR1000RR SP HAnya menghabiskan 17,85 km / liter saja, dan itu masih bisa dikatakan irit untuk seukuran motor besar dengan mesin 1000 cc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CBR1000RR-R</span></p>\r\n\r\n<p><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\">Engine Type: Liquid-Cooled, 4-Stroke, 16-Valve, DOHC Inline 4-Cylinder<br />\r\nDisplacement : 999.8cc<br />\r\nCarburation : PGM-DSFI [Programmed Dual Stage Fuel Injection]<br />\r\nBore x Stroke : 76 mm x 55.1 mm<br />\r\nTransmission Type : 6-Speed<br />\r\nCompression Ratio : 12.3 : 1<br />\r\nMaximum Power : 133 kW/12,250 rpm<br />\r\nMaximum Torque : 114 Nm/10,500 rpm<br />\r\nStarter Type : Electric Starter<br />\r\nOil Capacity : 3.7 Liters<br />\r\nClutch Type : Wet Multiplate with Diaphragm Spring<br />\r\nOverall (L x W x H) : 2,080 mm x 720 mm x 1,141 mm<br />\r\nWheelbase : 1,410 mm<br />\r\nGround Clearance : 130 mm<br />\r\nSeat Height : 820 mm<br />\r\nCurb Weight : 210 kg [ABS Version]<br />\r\nCaster Angle/Trail : 23.0&deg; 3&rsquo;/96 mm<br />\r\nFuel Capacity : 17.5 Liters</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '2020-09-12 17:37:40', 'admin1', 'CBR1000RR-R-22.png', 'CBR1000RR-R-2.png', 'CBR1000RR-R-11.png', '', ''),
(26, 'HONDA CBR 1000 RR ', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">&ldquo;Honda CBR1000RR Fireblade dan Honda CBR1000RR Fireblade SP hadir layaknya motor baru dengan suguhan update teknologi canggih yang akan menghadirkan kebanggaan berkendara tersendiri bagi pemiliknya. Konsep Next Stage Total Control memastikan berkendara menggunakan motor ini akan menjadi sebuah pengalaman yang menyenangkan karena pengendara benar-benar memegang kontrol penuh atas motor yang dikendarainya.&rdquo;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Minimal dan dinamis adalah dua kata yang paling menggambarkan desain dari Honda CBR1000RR Fireblade. Honda ingin membentuk proporsi kompak yang padat serta fairing pada bagian atas dan tengah telah dikurangi ukurannya. Garis karakter yang menjorok ke depan melambangkan gaya agresif serta fokus pada fungsi mekanis, detail dan kualitas saat finishing.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Desain yang dimiliki juga sangat aerodinamis sehingga menjaga kestabilan berkendara saat kecepatan tinggi. Pada sirkuit balapan posisi pengendara terlindungi dari arus angin, sementara pada posisi berkendara normal tekanan udara terdistribusi merata pada bagian tubuh pengendara. Aksen atletis ditonjolkan pada bentuk cover tangki bensin dan dudukan motor.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Keseluruhan pencahayaan menggunakan LED dengan desain lampu depan yang kembar menawarkan lampu jarak jauh dan jarak pendek di keduanya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tampilan display yang dimiliki oleh Honda CBR1000RR Fireblade mengadopsi layar TFT full-colour liquid crystal yang dimiliki Honda RC213V-S. Layar ini secara otomatis menyesuaikan kondisi cahaya sekitar dengan 3 mode fitur; Street, Circuit dan Mechanic yang dapat disesuaikan dengan kebutuhan pengendara.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CBR 1000 RR</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\">Bore &times; Stroke (mm) : 76 x 55<br />\r\nCarburation : PGM-DSFI<br />\r\nCompression Ratio : 13:01<br />\r\nEngine Displacement (cc) : 999cc<br />\r\nEngine Type (cm&sup3;) : Liquid-cooled 4-stroke 16-valve DOHC Inline-4<br />\r\nMax. Power Output : 141kW (189.084 HP )/13,000rpm<br />\r\nMax. Torque :116Nm/11,000rpm<br />\r\nStarter&nbsp; Electric<br />\r\nTyres Front : 120/70ZR17 58W<br />\r\nTyre Size Rear : 190/50ZR17 73W<br />\r\nWheels Front : 17 inch<br />\r\nWheels Rear : 17 inch<br />\r\nCaster Angle : 23.3&deg;<br />\r\nDimensions (L&times;W&times;H) (mm) : 2,065mm x 715mm x 1125mm<br />\r\nFrame type : Diamond; aluminium composite twin spar<br />\r\nFuel Tank Capacity (Litres) : 16L<br />\r\nGround Clearance (mm) : 129mm<br />\r\nKerb Weight (kg) : 195kg<br />\r\nSeat Height (mm) : 820mm<br />\r\nTrail (mm) : 96mm<br />\r\nWheelbase (mm) : 1404mm</span></p>\r\n', '2020-09-12 18:34:21', 'admin1', 'CBR1000RR-12.png', 'CBR1000RR-1.png', 'CBR1000RR-21.png', '', ''),
(27, 'HONDA CB 500 F', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CB500F Terbaru 2019 &ndash;&nbsp;Keputusan Honda untuk menghadirkan 6 unit Moge terbarunya memang tidak salah meskipun terbilang berani namun hadirnya Moge-moge terbaru Honda ini sangat menyita perhatian terutama untuk para Rider pecinta moge.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Desain Honda CB500F memang terlihat cukup fresh, namuntahukah sobat bahwa motor ini sebenarnya memiliki desain yang terinspirasi dari Honda CB650F yang notabene berada di kelas lebih atas. Untuk bagian depan motor ini akan menggunakan desain headlamp&nbsp;V-shape sedangkan untuk lampu utama ini akan menggunakan lampu jenis LED yang siap memberikan pencahayaan yang maksimal.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Perfoma mesin yang tangguh sudah barang tentu menjadi kelebihan Honda CB500F nantinya Honda kan menggunakan mesin DOHC paralel dua silinder 8 katup berkubikasi 471 cc. Mesin tersebut juga bakalan semakin sempurna karena mampu menghasilkan tenaga 35 KW pada 8.500 rpm, sedangkan toehan torsi sendiri mencapai 43 NM pada 7.000 rpm. Perfoma mesin yang mempuni jelas bakal menjadi kelebihan motor yang dibandrol dengan Harga H0nda CB500F 2019 yang mahal tersebut.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Motor 500 cc tersebut juga tidak lupa akan dibekali dengan sistem pemabakaran PGM-FI dengan kata lain selain ramah lingkungan juga memiliki konsumsi bahan bakar yang tetap terkontrol dengan sangat baik. Sedangkan untuk mengimbangi perfoma mesinnya yang besar Honda telah menyiapkan transmisi 6 percepatan guna memberikan tambahan akselerasi yang maksimal. Kali ini Honda akan membekali motor mahalnya dengan sistem starter Elektrik saja.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CB 500 F</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : DOHC Parallel Twin Cylinders 4-stroke 8-valve<br />\r\nKapasitas : 471,0 cc<br />\r\nDiameter Langkah : 67 mm x 66.8 mm<br />\r\nRasio Kompresi : 10.7 : 1<br />\r\nPower Max : 35 kW/8,500 rpm<br />\r\nTorsi Max : 43 Nm/7,000 rpm<br />\r\nStarter : Electric Starter<br />\r\nPendingin : Liquid Cooled<br />\r\nSistem Bahan Bakar : PGM-FI (Programmed Fuel Injection)<br />\r\nTransmsi : 6-speed, return<br />\r\nP x L x T : 2,075 mm x 780 mm x 1,060 mm<br />\r\nBerat Isi : 192 kg<br />\r\nWheelbase : 1447 mm<br />\r\nGround Clearance : &ndash; mm<br />\r\nTinggi Jok : 790 mm<br />\r\nKapasitas tangki : 15.5 Liter</span></p>\r\n', '2020-09-12 17:51:07', 'admin1', 'CB500F-1.png', 'CB500F-11.png', '', '', ''),
(28, 'HONDA CB 650 R', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Honda CB650R</strong> &ndash; Honda baru saja merilis beberapa motor baru pada ajang tahunan EICMA 2018 yang berlangsung di Milan, Italia. Semuanya merupakan moger ber-cc besar, seperti Honda CBR650R, Honda CB500R, dan yang paling keren adalah Honda CB650R. Motor ini mengadopsi desain Neo Sport Cafe yang sebelumnya sudah digunakan Honda CB1000R dan beberapa naked bike Honda lainnya. Desainnya sangat keren, karena terlihat agresif dan sporty. Selain itu, Honda CB650R juga dibekali mesin 4 Silinder yang menjajikan power dan torsi melimpah.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Mesin Honda CB650R dirancang secara khusus untuk meningkatkan respon mesin saat berakselerasi dari idle sampai 8.000 rpm. Performanya sangat beringas, namun diimbangi dengan kenyamanan berkendara yang menjadikan Honda CB650R layak dipakai Touring maupun sebagai kendaraan harian. Tersedia pula beberapa fitur baru yang akan memajakan pengendaranya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Secara keseluruhan desain Honda CB650R memang keren. Terlebih motor ini sudah dilengkapi headlamp berbentuk bundar yang dikelilingi LED. Begitu pula dengan lampu belakang yang sudah LED dan memiliki buritan bergaya agresif senada dengan bagian depan. Sedangkan untuk bagian samping terlihat adanya cover yang berada dibagian samping tangki bensin berkapasitas 15.4 Liter. Rupanya cover tersebut bukan sembarang cover, karena digunakan untuk mendukung sistem pendingin atau sebagai air intake yang nantinya akan meningkatkan efisiensi dan torsi.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CB650R mampu mengeluarkan torsi puncak sebesar 64 Nm pada 8.500 rpm dan tenaga maksimum 70 kW pada 12.000 rpm. Tenaga dan torsi sebesar itu berasal dari mesin 4 Silinder DOHC yang memiliki 16 buah katup dan sistem pendingin udara. Mesin tersebut memiliki kapasitas sebesar 649cc dan didukung sistem pembakaran PGM-FI (Fuel Injection). Performa mesinnya memang responsif dan bisa diandalkan untuk berakselerasi dengan sangat cepat. Sedangkan untuk konsumsi bahan bakarnya sekitar 20.4 km/liter sehingga tergolong irit untuk moge 4 Silinder berkapasitas 649cc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Mesin Honda CB650R dioptimalkan oleh Gearbox 6 percepatan yang didukung fitur Assist &amp; Slipper Clutch. Fitur tersebut berguna untuk meringankan kinerja kopling hingga 12% dan mengurangi hop roda belakang saat menurunkan gigi. Lalu ada pula fitur Honda Selectable Torque Control System (HSTC) yang memberikan kontrol penuh terhadap torsi Honda CB650R. Cara kerja HSTC adalah dengan menyesuaikan tenaga mesin untuk mengoptimalkan torsi di roda belakang. Alhasil HSTC akan mengurangi slip roda belakang, sehinga berkendara semakin aman dan nyaman.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CBR 650 R</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe Mesin : 4-stroke 16-valve DOHC inline-4 cylinder, Liquid-cooled<br />\r\nKapasitas Mesin : 649 cc<br />\r\nTenaga : 70 kW / 12.000 rpm<br />\r\nTorsi : 64 Nm / 8.500 rpm<br />\r\nSistem Pembakaran : PGM-FI Electronic Fuel Injection<br />\r\nTransmisi : 6-Speed<br />\r\nStarter : Electric<br />\r\nBore X Stroke : 67 mm x 46 mm<br />\r\nRasio Kompresi : 11.6:1<br />\r\nTipe Kopling : Wet multiplate, Assist &amp; Slipper Clutch<br />\r\nDimensi (P x L x T) : 2,130 mm x 780 mm x 1,075 mm<br />\r\nTinggi Tempat Duduk : 810 mm<br />\r\nTangki Bensin : 15.4 Liter<br />\r\nBerat : 202 kg<br />\r\nWheelbase : 1,450 mm<br />\r\nGround Clerance : 150 mm</span></p>\r\n', '2020-09-12 17:55:01', 'admin1', 'CB650R-1.png', 'CB650R-11.png', 'CB650R-2.png', '', ''),
(29, 'HONDA CBR 500 R', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Harga Honda CBR500R &ndash; PT AHM Indonesia memang terlihat sangat total dalam menghadirkan semua segmen motornya di Indonesia, hal ini juga bisa terlihat dengan motor ber mesin besar yang sudah bisa dimiliki oleh konsumen Indonesia, salah satunya adalah Honda CBR500R yang sudah diluncurkan ke public pada medio awal tahun 2017 dimana motor sport ini tampil elegant dengan desain full fairing yang dibawanya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CBR500R sendiri merupakan generasi terbaru dari seri Honda CBR500 yang sebelumnya sudah ada, dimana pembaharuan yang ada semakin membuat seri sebelumnya terlihat cukup jauh tertinggal, Honda CBT500R terlihat lebih memiliki karakter yang kuat berkat desain bodynya yang dibuat tajam, perpaduan fitur-fitur modern yang ada pada motor ini juga membuatnya haur ditebus dengan harga mahal oleh calon konsumen.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">untuk ukuran dimensi sendiri motor ini memiliki Dimensi panjang&nbsp;2,081 mm, lebar 756 mm dan tinggi 1,150&nbsp;mm, dengan dimensinya tersebut membuat motor ini memiliki berat sekitar 192 kg, hal ini juga dilengkapi dengan jarak sumbu roda 142 mm yang semakin memberikan akselerasi yangat baik, secara setelah sendiri motor ini akan membawa tinggi tempat duduk 789 mm yang mana sebernanya masih sangat bersahabat dengan postur tubuh mayoritas orang Indonesia, namun jika merasaterlalu tinggi sobat bisa merendahkanya dengan mengubah seting suspensi depan dan belakang.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">motor ini memang sangat menonjolkan sisi dapur pacu, dimana Honda membekali motor nya dengan mesin dengan tipe&nbsp;47 1cc Liquid-Cooled, 4-Stroke, DOHC Parallel&nbsp;Twin&nbsp;Cylinders, mesin tersbut memiliki diameter kali langkah&nbsp;67 mm x 66.8 mm,&nbsp;35 kW pada putaran 8.500 rpm, serta torsi puncak mencapai 43 Nm pada putaran mesin 7.000 rpm dimana motor ini terbialang cukup power full untuk sebuah motor dengan kapasitas 500 cc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CBR 500 R</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : 471cc Liquid-Cooled, 4-Stroke, DOHC Parallel Twin Cylinders<br />\r\nKapasitas : 500 cc<br />\r\nDaya Maksimum : 37.1 kW/8,500 rpm<br />\r\nTorsi Maksimum : 44.5 Nm/7,000 rpm<br />\r\nDiameter X Langkah : 67 mm x 66.8 mm<br />\r\nRasio Kompresi &nbsp;&nbsp; &nbsp;10.7 : 1<br />\r\nSistem Pembakaran : PGM-FI with 34 Throttle Bodies<br />\r\nPengapian : Computer-controlled Digital Transistorized with Electronic Advance<br />\r\nTransmsi : 6 Kecepatan<br />\r\nDimensi (P x L x T) : 2,081 mm x 756 mm x 1,150 mm<br />\r\nBerat : 192 kg<br />\r\nTinggi Tempat Duduk : 789 mm<br />\r\nJarak Terendah ke Tanah : 165 mm<br />\r\nJarak Sumbu Roda : 140 mm<br />\r\nKapasitas tangki : 16.7 Liters</span></p>\r\n', '2020-09-15 06:43:16', 'admin1', 'CBR500R-12.png', 'CBR500R-1.png', 'CBR500R-21.png', '', ''),
(30, 'HONDA CB 500 X', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CB500X hadir dengan desain dengan DNA Adventure yang sangat khas, hal ini semakin diperkuat dengan adanya Visor bagian depan yang menjulang tinggi ala-ala Motor dalam ajang Reli Dakar. Selain itu ada juga lampu depan Honda CB500X 2019 yang berdesain Vshape, sedangkan dibagian samping sobat Otomaniac akan menjumpai duan windshield yang memiliki desain menyatu dengan tangki motor. Untuk Jok sendiri CB500X ini akan menggunakan desain jok bertingkat yang juga akan semakin memberikan kenyamanan berkendara.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sedangkan untuk bagian belakang sendiri Honda CB500X 2019 akan menggunakan bagian belakang yang sporty. Meskipun demikian kami melihat tidak ada yang spesial pada bagian belakang Honda CB500X 2019 ini. Selain itu ada juga lampu sein bagian belakang yang menggunakan lampu LED sangat sesaui dengan Harga Honda CB500X 2019 yang mahal. Untuk sobat yang memiliki tinggi badan dibawah 170 rasanya akan cukup kesulitan karena motor ini akan memiliki tinggi jok 830 mm.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sama halnya dengan motor Adventure lain Honda CB500X 2019 juga akan menggunakan desain posisi menggendara tegap sehingga membuatnya sangat nyaman dikendarai untuk perjalanan jauh. Sedangkan untuk dimensi sendiri dengan Harga Honda CB500X 2019 yang mahal motor ini akan dibekali dengan panjang 2.095 mm lebar 830 mm sedangakan untuk tingginya mencapai 1.290 Mm deimana dengan dimensinya tersebut membuat motor sport yang satu ini memiliki berat total mencapai 196 Kg.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Perfoma mesin yang super tangguh juga akan diimbangi dengan adanya transmisi 6 percepatan yang membuatnya memiliki akselerasi yang sangat tangguh. Dengan Harga Honda CB500x 2019 yang tidak murah motor ini&nbsp; bahkan akan dibekali dengan sistem pembakaran PGM-FI milik Honda yang terkenal akan membuat mesin lebih hemat bahan bakar tanpa mengurangi akselerasinya. Sedangkan untuk mengimbangi kinerja mesin 500 cc Honda telah menyiapkan pendingin cairan yang juga untuk memberi umur yang lama pada mesin.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CB 500 X</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : DOHC Parallel Twin Cylinders 4-stroke 8-valve<br />\r\nKapasitas : 471,0 cc<br />\r\nDiameter Langkah : 67 mm x 66.8 mm<br />\r\nRasio Kompresi : 10.7 : 1<br />\r\nPower Max : 35 kW/8,500 rpm<br />\r\nTorsi Max : 43 Nm/7,000 rpm<br />\r\nStarter : Electric Starter<br />\r\nPendingin : Liquid Cooled<br />\r\nSistem Bahan Bakar : PGM-FI (Programmed Fuel Injection)<br />\r\nTransmsi : 6-speed, return<br />\r\nP x L x T : 2,095 mm x 830 mm x 1,290 mm<br />\r\nBerat Isi : 196 kg<br />\r\nWheelbase : 1421 mm<br />\r\nGround Clearance : &ndash; mm<br />\r\nTinggi Jok : 810 mm<br />\r\nKapasitas tangki : 17 Liter</span></p>\r\n', '2020-09-12 18:01:48', 'admin1', 'CB500X-2.png', 'CB500X-21.png', 'CB500X-1.png', '', ''),
(31, 'HONDA X-ADV', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Honda X-ADV &ndash;</strong> Honda salah satu perusahaan motor yang namanya sudah terkenal di seluruh Indonesia. Sepanjang tahun 2019 memang sudah cukup bayak menghadirkan produk terbarunya dan salah satunya adalah Honda X-ADV. Salah saqtu motor matic terbaru ini memang sudah secara resminya hadir diperkenalkan di Indonesia. Sebetulnya motor satu ini sudah diperkenalkan terlebih dahulu pdi beberapa negara dan salah satunya di tanah air. Untuk motor matic satu ini akan sangat cocok sekali bagi kalian semua yang sangat menyukai dengan berpetualang, karena pada dasarnya memiliki konsep motor adventure.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Jika dilihat dari bentuknya, motor skutik dari Honda satu ini memang sangat keren sekali dan terlihat sangat gahar. Oleh karena itu akan sangat cocok sekali untuk kalian semua yang sangat menyukai dengan berpetualang, selain itu juga sudah dilengkapi dengan cukup banyak teknologo canggih dan modern. Lalu untuk sektor dapur pacunya sudah tidak perlu untuk diragukan kembali, karena sudah dibekali dengan kapasitas mesin yang sangat besar.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda X-ADV telah membekali mesinnya bertipe&nbsp;Liquid-cooled, L2, SOHC dengan kapasitas mesin sebesar 745 cc. Dengan membawakan kapasitas mesin yang sangat besar, Honda X-ADV mampu menghasilkan tenaga maxsimalnya yang mencapai&nbsp;68 Nm pada putaran mesin 4,750 rpm dan untuk torsinya mampu mencapai&nbsp;40.3kW pada putaran mesin 6,250 rpm. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Jika dilihat akan performa yang dihasilkan dengan spesifikasi dapur pacu seperti tersebut, maka dapat dikatakan jika motor skutik ini memiliki tenaga yang sangat mantap betul. Terlebih untuk motor skutik terbaru dari Honda ini sudah di dukung dengan teknologi sangat canggih dan modern. Selian itu juga pada mesin tersebut memiliki diamter x langkah sebesar 77 mm x 80 mm dan sudah di dukung dengan kopling bertipe Wet multiplate Hydraulic Dual clutch (DCT). Bila melihat seperti tersebut, sudah tidak diragukan kembali akan performanya yang sangat sebanding dengan harga Honda X-ADV.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda X-ADV</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : Liquid-cooled, L2, SOHC<br />\r\nKapasitas : 745 cc<br />\r\nDaya Maksimum : 68 Nm / 4,750 rpm<br />\r\nTorsi Maksimum : 40.3kW / 6,250 rpm<br />\r\nDiameter x Langkah : 77 x 80 mm<br />\r\nKopling&nbsp;&nbsp; &nbsp;: Wet multiplate Hydraulic Dual clutch (DCT)<br />\r\nTransmisi : 6-speed<br />\r\nUkuran (P X L X T) : 2245 x 910 x 1375 mm<br />\r\nTinggi Tempat Duduk : 820 mm<br />\r\nJarak Sumbu Roda : 1590 mm<br />\r\nJarak Ke Tanah : 162 mm<br />\r\nBerat : 238 kg<br />\r\nKapasitas Tangki : 13.1 Liter</span></p>\r\n', '2020-09-15 06:47:27', 'admin1', 'HondaXADV-23.png', 'HondaXADV-31.png', 'HondaXADV-12.png', 'HondaXADV-41.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cub`
--

CREATE TABLE `tbl_cub` (
  `port_id` int(11) NOT NULL,
  `port_judul` varchar(200) NOT NULL,
  `port_deskripsi` text NOT NULL,
  `port_tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `port_author` varchar(50) NOT NULL,
  `port_image` varchar(50) NOT NULL,
  `port_image1` varchar(100) NOT NULL,
  `port_image2` varchar(100) NOT NULL,
  `port_image3` varchar(100) NOT NULL,
  `port_image4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cub`
--

INSERT INTO `tbl_cub` (`port_id`, `port_judul`, `port_deskripsi`, `port_tanggal`, `port_author`, `port_image`, `port_image1`, `port_image2`, `port_image3`, `port_image4`) VALUES
(274, 'HONDA C125', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda Super Cub C125 resmi dipasarkan di Jepang. Meski bergaya retro, namun di dalamnya terbenam banyak fitur futuristik. Mau tahu spesifikasi lengkap saudara kandung C110 ini? Simak bahasan berikut:</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>1. Desain</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Super Cub C125 punya tampilan retro tak terbantahkan. Bentuknya persis motor bebek Honda masa lalu. Terlihat dari penggunaan lampu dan spion bulat, jok single seater, serta bodi ramping. Tak ketinggalan, Honda merancang stangnya persis Super Cub C100 yang diproduksi 60 tahun silam. motor ini juga dapat logo sayap khas Honda yang berlatar merah, sebagai identitas klasik. Bodinya pun dibalut warna biru spesial kombinasi putih, layaknya C100. Jok dicat merah agar tampil mentereng di atas kertas, C125 punya dimensi panjang 1.915 mm, lebar 720 mm dan tinggi 1.000 mm. Bobot totalnya mencapai 110 Kg. Seperti motor bebek lain, ukuran roda 17 inci. Ban depannya 70/90 dan belakang 80/90.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>2. Fitur</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Walau tampilannya klasik, Super Cub C125 punya banyak fitur modern. Honda memberikan sistem pencahayaan LED di lampu depan, belakang dan sein. Panel instrumen mengadopsi kombinasi digital dan analog untuk pemberian informasi soal motor ke pengendara dengan lebih jelas. ada pula sistem keyless. Fitur ini menggantikan anak kunci konvensional dengan kenop dan remote pintar. Cara mengaktifkan C125 cukup dengan memasukkan remote ke kantong, kemudian tekan dan putar kenop. Terakhir, pijit tombol starter. Keyless diklaim lebih aman dari maling, lantaran cuma bisa diaktifkan bila remote bawaan ada di sekitar motor. Bukan cuma itu, remote pintar milik C125 pun terintegrasi alarm dan answer back system. Alarm berguna memberi tanda, ketika motor mengalami gejala hendak dicuri (berbunyi bila ada goncangan). Sementara answer back system memudahkan pemilik mencari kendaraan di lokasi parkir. Cukup tekan tombol yang ada di remote, maka motor mengeluarkan suara dan berbunyi seraya memberitahu keberadaannya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>3. Mesin</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sesuai nama, Honda Super Cub C125 menggendong mesin 125 cc. Jantung mekanis berkonfigurasi satu silinder ini tidak dibekali radiator dan masih SOHC. Hanya saja untuk sistem penyemprotan bahan bakar sudah injeksi. Mesin&nbsp; C125 sanggup memuntahkan torsi sampai 10 Nm pada 5.000 rpm dan tenaga maksimal 9,7 PS pada 7.500 rpm. Sebuat catatan performa yang biasa-biasa saja untuk motor 125 cc. Ditambah sistem transmisinya cuma 4-percepatan manual. Honda mengklaim keunggulannya ada di konsumsi bahan bakar yang irit. Berdasar uji internal pakai metode World Motorcycle Test Cycle (WMTC), diperoleh angka 69 Kpl. (Lod/Van)</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-09-12 07:38:49', 'Admin', 'honda_c125-sampul1.png', 'honda_c125-31.png', 'honda_c125-1.png', 'honda_c125-2.png', ''),
(276, 'HONDA CT-125', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CT125 Hunter Cub dibekali dengan pengereman cakram baik depan dan belakang ABS <em>single channel</em> dimana hanya roda depan yang dilengkapi ABS. Mesinnya mirip dengan mesin C125 dan Monkey 125 yakni kubikasi 124 cc, SOHC satu silinder berpendingin udara dimana hadir <em>kick starter</em> dan <em>electric starter</em> untuk melakukan start.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Mesin ini dapat menghasilkan power maksimum 8,8 PS/7000 rpm dan torsi maksimum 1.1 kgf・m/4.500 rpm. Namun mesin CT125 ini masih menggunakan transmisi semi automatic seperti biasanya mesin motor bebek, pindah gear tanpa tekan tuas kopling. Mesin ini memiliki power yang lebih rendah dari power mesin C125 namun dengan torsi yang lebih tinggi dan diperoleh pada rpm yang lebih rendah dari pada C125 Supercub.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Walaupun bentuknya retro sangat, namun semua lampu-lampu baik <em>headlamp, stoplamp,</em> lampu sein pakai LED. Honda CT125 Hunter Cub hadir dengan rak bagasi belakang yang luas, pas buat membawa perlengkapan <em>camping</em> (Motocamping). Namun begitu <em>footpeg</em> pembonceng tetap disediakan, jadi kalau mau duduk di atas rak, orang tetap bisa membonceng di belakang dengan cukup nyaman.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CT125</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Length &times; Width &times; Height 1960 &times; 805 &times; 1085mm<br />\r\nWheelbase 1255mm<br />\r\nMinimum ground clearance 165mm<br />\r\nSeat height 800mm<br />\r\nVehicle weight 120kg<br />\r\nEngine type Air-cooled 4-stroke SOHC single cylinder<br />\r\nTotal displacement 124cc<br />\r\nBore x stroke 52.4 x 57.9mm<br />\r\nCompression ratio 9.3<br />\r\nMaximum output 6.5kW (8.8PS) / 7000rpm<br />\r\nMaximum torque 11N ・ m (1.1kgf ・ m) / 4500rpm<br />\r\n5.3L fuel tank capacity<br />\r\nTransmission type Constant mesh 4-speed return<br />\r\nCaster angle 27 &deg;<br />\r\nTrail 80mm<br />\r\nTire size (front / rear) 80 / 90-17M / C 44P ・ 80 / 90-17M / C 44P<br />\r\nBrake type (front / rear) Single disk / Single disk<br />\r\nRiding capacity 2 people</span></p>\r\n', '2020-09-12 07:26:47', 'Admin', 'honda_ct_1252.png', 'honda_ct_125.png', '', '', ''),
(277, 'HONDA REVO X', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Belum lama ini, PT Astra Honda Motor (AHM) diketahui telah resmi merilis penyegaran dari jajaran seri motor bebek terbarunya yang bernama Honda Revo X.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Motor bebek buatan pabrik asal Jepang yang satu ini memang sengaja dihadirkan kembali dalam bentuk pembaruan yang lebih fresh dengan mengedepankan desain baru dengan kesan aura yang lebih agresif dan sporty.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tentu saja, pembaruan pada Honda Revo X tersebut dilakukan sebagai salah satu upaya pihak AHM dalam menarik minat konsumen agar angka penjualan motor bebek meningkat meskipun kepopulerannya terus berkurang.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Di sisi lain, dipilihnya pembaruan pada varian Revo Series ini memang tak lepas dari riwayatnya yang dinilai cukup laris. Pasalnya, lebih dari satu dekade kemunculannya di Tanah Air, varian dari jajaran keluarga Revo ini telah dibeli lebih dari 5.2 juta konsumen.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sehingga, tak heran jika Honda Revo X ini dihadirkan kembali dalam bentuk yang lebih segar dan tampil lebih agresif serta tentunya dengan harga yang cukup bersahabat.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tentu saja, hal ini akan menjadi sebuah kelebihan tersendiri bagi motor bernama Honda Revo X tersebut?</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Apabila kita mengacu dari segmentasinya sebagai motor bebek yang sudah lama berkiprah di Indonesia, tampaknya Honda Revo X ini memang menjadi salah satu pilihan motor bebek terbaik dengan nilai fungsional tinggi dan terbilang irit di kelasnya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Apalagi, motor bebek dari varian Revo Series yang satu ini dihadirkan kembali dengan tampilan baru yang lebih terkesan agresif dan sporty.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Di mana, Penyegaran dilakukan mulai dari rancangan motor, tapi juga tampilan striping yang lebih futuristik serta desain dial panel meter pada Honda Revo X ini yang kini dibuat lebih modern.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tentu saja, dengan penyegaran yang fokus pada tampilan fisiknya tersebut akan membuat motor ini memiliki daya tarik tersendiri.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sementara itu di sisi lain, untuk bekalan sektor mesin pacunya sendiri masih menggunakan mesin yang lama di mana Honda menyematkan mesin berkapasitas 110 cc pada Honda Revo X yang sudah dilengkapi dengan teknologi&nbsp;<a href=\"https://www.semisena.com/\">PGM-FI</a>&nbsp;yang siap memberikan performa cukup tangguh di kelasnya dan sangat efisien.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Selain itu, beberapa fitur modern pun turut disematkan sebagai penunjang kenyamanan maupun keselamatan pengguna saat mengendarai motor bebek ini.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda Revo X</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe Mesin<br />\r\nSOHC, 4 Langkah, SOHC, Silinder Tunggal<br />\r\nKapasitas Mesin 109,17 cc<br />\r\nSilinder 1<br />\r\nDiameter x Langkah 50 x 55,6 mm</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Perbandingan Kompresi 9,3:1<br />\r\nTenaga Maksimal 6,56kW (8,91 PS) / 7.500 rpm<br />\r\nTorsi Maksimal 8,76 Nm (0,86 kgf.m) / 6.000 rpm<br />\r\nTipe Transmisi Manual, 4 percepatan<br />\r\nTipe Starter<br />\r\nStarter Kaki &amp; Starter Elektrik<br />\r\nSistem Bahan Bakar<br />\r\nInjeksi/PGM-FI (Programmed Fuel Injection)<br />\r\nBahan Bakar Bensin</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Panjang 1.919 mm<br />\r\nLebar 709 mm<br />\r\nTinggi 1.080 mm<br />\r\nJarak Sumbu Roda 1.227 mm<br />\r\nBerat 97,5 kg<br />\r\nKapasitas Tangki 4 L</span></p>\r\n', '2020-09-12 07:58:06', 'Admin', 'revox-sampul.png', 'revox-2.png', 'revox-3.png', 'revox-4.png', 'revox-5.png'),
(278, 'HONDA SUPRA X 125 FI', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Harga Honda Supra X 125 FI &ndash; Salah satu motor legendaris di Indonesia yang tetap esksis sampai sekarang adalah Honda Supra X. Awal mulanya motor ini hadir pada tahun 2005 dengan membawa mesin berkapasitas 100cc, namun kini Honda Supra X sudah berubah menjadi sebuah motor bertenaga 125cc yang dilengkapi sistem pembakaran berteknologi injeksi. Teknologi ijeksi membuat Honda Supra X menjadi salah satu motor bebek paling irit di Indonesia, dan pastinya memiliki peforma bertenaga, berkat mesin berkapasitas 125cc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tidak salah apabila Honda Supra X 125 FI mendapatkan julukan sebagai &ldquo;Rajanya Motor Bebek&rdquo;, pasalnya motor ini tetap menempati kasta tertinggi dikelas motor bebek, meski bersaing sengit melawan motor buatan Yamaha, Suzuki, dan beberapa pabrikan lokal asal India. Kualitas yang selalu terjaga menjadi jaminan akan peforma motor ini, sehingga banyak orang yang jatuh hati padanya, dan tak ragu membelinya meski hargaa Honda Supra X 125 FI tergolong lebih mahal dibandingkan motor bebek buatan Yamaha maupun pabrikan yang lain.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Berbekal mesin canggih dengan teknologi Full Injeksi, semakin memantapkan posisi Supra X 125 FI dipuncak industri motor bebek tanah air. Selain itu, Honda juga menawarkan pembaharuan desain, yang membuat Supra X 125 FI terlihat lebih sporty dan maskulin, apabila dibandingkan seri Supra X 125 yang masih memakai sistem pembakaran karbutorator. Tidak sampai disitu saja, Honda juga memberikan beberapa fitur terbaru untuk meningkatkan kenyamanan dan keamanan pengguna motor bebek ini.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Untuk saat ini, tercatata ada 2 versi Honda Supra X 125 FI, yakni versi CW dan versi SW. Keduanya sama-sama membawa mesin berkapasitas 125cc dengan dukungan teknologi injeksi yang canggih dan irit. Namun yang mebedakan keduanya adalah sektor kaki-kaki, dimana untuk versi CW terlihat lebih sporty, karena memakai velg racing yang dipadukan piringan cakram pada sisi rada depan dan belakang.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda Supra X 125 FI</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe Mesin : 4 langkah, SOHC, Silinder Tunggal<br />\r\nKapasitas Mesin : 125 cc / 124.89 cc<br />\r\nJumlah silinder: Silinder Tunggal<br />\r\nDiameter x Langkah : 52.4 x 57.9 mm<br />\r\nPerbandingan Kompresi : 9.3 : 1<br />\r\nDaya Maksimum : 7.40 kW (10.1 PS) / 8.000 rpm<br />\r\nTorsi Maksimum : 9.30 Nm (0.95 kgf.m) / 4.000 rpm<br />\r\nSistem Starter : Starter kaki dan elektrik<br />\r\nSistem Bahan Bakar : Fuel Injection<br />\r\nTipe Kopling : Multiple wet Clutch with Coil Spring<br />\r\nTipe transmisi : 4 kecepatan, rotari (N &ndash; 1 &ndash; 2 &ndash; 3 &ndash; 4 &ndash; N)</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">PxLxT : 1.918 x 709 x 1.101 mm<br />\r\nBerat : 106 kg<br />\r\nJarak Sumbu Roda : 1.235 mm<br />\r\nJarak terendah ke tanah : 136.5 mm<br />\r\nKapasitas tangki : 4.0 liter</span></p>\r\n', '2020-09-12 07:59:19', 'Admin', 'revox_125fi-sampul1.png', 'revox_125fi-11.png', 'revox_125fi-21.png', '', ''),
(279, 'HONDA SUPRA GTR 150', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Harga Honda Supra GTR 150 &ndash; Persaingan sepeda motor di kelas 150 cc akan semakin ramai dengan hadirnya Supra GTR 150. Motor ini siap bersaing melawan Yamaha Jupiter MX King 150 yang sama-sama mengandalkan mesin bertenaga 150cc. Desain keduanya juga hampir mirip, dan menawarkan desain sporty yang tak dimiliki motor bebek dikelas 110cc ataupun 125cc. Bahkan tampilan luar motor ini jauh lebebih sporty dibandingkan Honda Supra X 125 FI. Tak hanya ini, motor ini juga dibekali teknologi Injeksi sebagai salah satu kelebihannya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Teknologi PGM-FI atau yang kita kenal sebagai Injeksi, merupakan teknologi sistem pembakaran yang mampu mengoptimalkan kinerja mesin, karena memiliki sistem pembakaran lebih sempurna. Hal ini akan berimbas dengan tingkat efesiensi bahan bakar, sehingga pemakaian bahan bakar akan semakin irit. Selain itu, Honda Supra GTR 150 juga dibekali dua buah piringan cakram yang mendiami sisi depan dan belakang. Ban yang dipakainya juga berukuran besar, sehingga handlingnya terasa lebih nyaman.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda Supra GTR 150 merupakan nama lain dari Honda Winner 150 yang terlebih dahulu dipasarkan di Vietnam. Tidak ada perbedaan signifikan antara Supra GTR 150 dan Winner 150. Pasalnya, kedua motor ini sama-sama memiliki mesin berkapasitas 149,16 cc, dan didukung sistem pembakaran fuel injection. Berbekal mesin tersebut, Supra GTR 150 mampu menghasilkan torsi sangat besar, dan didukung tenaga mencapai 15.74 dk. Jadi jangan heran apabila motor ini mampu melaju sangat kencang.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Performa mesin yang dipakainya mampu disejajarkan dengan motor sport 150cc. Agar motor ini bisa bersaing melawan motor 150cc sekelasnya, memang diperlukan teknlogi canggih agar mesin semakin bertenaga dan dapat bermanuver secara lancar ketika melewati padatnya jalan raya. Akan ada dua varian Supra GTR 150 yang bisa sobat beli dengan harga melebihi 20 Juta Rupiah.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda Supra GTR 150</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe mesin: 4 langkah DOHC 4 katup<br />\r\nBore x stroke: 57,3 x 57,8 mm<br />\r\nKapasitas mesin: 149,16 cc<br />\r\nPendinginan: Sistem Pendingin Cairan (Liquid Cooled)<br />\r\nSistem Pembakaran : PGM-FI (Injeksi)<br />\r\nRasio kompresi: 11,3:1<br />\r\nTenaga maksimal: 15,74 dk (11,6 kW)/9.000 rpm<br />\r\nTorsi maksimal: 13,5 Nm/6.500 rpm<br />\r\nStarter: electric &amp; kick starter<br />\r\nSistem kopling: wet multiple with coil spring<br />\r\nSistem pelumasan: basah<br />\r\nKapasitas oli: 1,1 liter<br />\r\nTransmisi: manual 6 percepatan (1-N-2-3-4-5-6)</span><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\">Dimensi (P x L x T): 2.025 x 725 x 1.102 mm<br />\r\nJarak sumbu roda: 1.284 mm<br />\r\nJarak terendah: 150 mm<br />\r\nTinggi jok: 780 mm<br />\r\nBerat kosong: 119 kg<br />\r\nRadius putar: 1.900 mm<br />\r\nKapasitas tangki bensin: 4,5 liter</span></p>\r\n', '2020-09-12 08:08:40', 'Admin', 'supra_gtr-150-sampul1.png', 'supra_gtr-150-11.png', 'supra_gtr-150-21.png', 'supra_gtr-150-31.png', 'supra_gtr-150-41.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2017-01-23 04:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
(3, '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2017-01-23 15:26:06', 'Drs. Joko', 0, 'ab2cb34682bd94f30f2347523112ffb9.pdf'),
(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2017-01-23 15:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
(5, '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2017-01-23 15:27:44', 'Drs. Joko', 0, '329a62b25ad475a148e1546aa3db41de.docx'),
(6, '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2017-01-23 15:28:17', 'Drs. Joko', 0, '8e38ad4948ba13758683dea443fbe6be.docx'),
(7, 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2017-01-25 03:18:53', 'Gunawan, S.Pd', 0, '87ae0f009714ddfdd79e2977b2a64632.pdf'),
(8, 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2017-01-25 03:19:22', 'Gunawan, S.Pd', 0, 'c4e966ba2c6e142155082854dc5b3602.pdf'),
(9, 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2017-01-25 03:21:04', 'Gunawan, S.Pd', 0, '71380b3cf16a17a02382098c028ece9c.pdf'),
(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 03:22:08', 'Gunawan, S.Pd', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 03:22:54', 'Gunawan, S.Pd', 0, 'ea8f3f732576083156e509657614f551.pdf'),
(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 03:23:21', 'Gunawan, S.Pd', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table honda.tbl_galeri: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `honda`.`tbl_galeri`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
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
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(13, 'aldian', 'aldian@gmail', NULL, 'hallo ?', '2020-09-14 06:28:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'MATIC', '2020-08-18 05:49:04'),
(2, 'CUB', '2020-08-18 05:50:01'),
(3, 'SPORT', '2020-08-18 05:59:39'),
(5, 'BIG BIKE', '2020-08-18 06:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_web` varchar(100) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` int(2) DEFAULT 0,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_web`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'M Fikri Setiadi', 'setiadi@mfikri.com', 'mfikri.com', 'Ping!', '2017-07-19 01:33:07', 1, 20, 0),
(4, 'M Fikri Setiadi', 'setiadi@mfikri.com', 'mfikri.com', 'Nice Post :)', '2017-07-19 01:43:39', 1, 20, 0),
(5, 'M Fikri Setiadi', 'setiadi@mfikri.com', 'mfikri.com', '[removed]alert&amp;#40;No Found !&amp;#41;;[removed]', '2017-07-19 01:35:28', 0, 20, 2),
(6, 'Jokowi', 'joko@gmail.com', '', 'Ping !', '2017-07-19 02:48:24', 0, 20, 2),
(7, 'M Fikri Setiadi', NULL, NULL, 'Can I help you?', '2017-08-03 15:11:21', 1, 20, 1),
(8, 'M Fikri Setiadi', NULL, NULL, 'Thank you.', '2017-08-03 15:27:56', 1, 20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_aktivitas`
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
-- Table structure for table `tbl_matic`
--

CREATE TABLE `tbl_matic` (
  `port_id` int(11) NOT NULL,
  `port_judul` varchar(200) NOT NULL,
  `port_deskripsi` text NOT NULL,
  `port_tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `port_author` varchar(50) NOT NULL,
  `port_image` varchar(100) NOT NULL,
  `port_image1` varchar(100) NOT NULL,
  `port_image2` varchar(100) NOT NULL,
  `port_image3` varchar(100) NOT NULL,
  `port_image4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_matic`
--

INSERT INTO `tbl_matic` (`port_id`, `port_judul`, `port_deskripsi`, `port_tanggal`, `port_author`, `port_image`, `port_image1`, `port_image2`, `port_image3`, `port_image4`) VALUES
(143, 'HONDA FORZA', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda Forza 250 dan Spesifikasi&nbsp;&ndash; Pabrikan Honda telah resmi memperkenalkan skutik barunya yang bernama Honda Forza 250. skutik premium buatan pabrik asal Jepang ini resmi dipamerkan pada ajang Osaka Motor Show 2018 yang diselenggarakan pada pertengahan Maret 2018 kemarin.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Dimana, jika mendasarkan atas pemberitaan yang dilansir dari situs Young-machine, Honda Forza 250 ini akan menggunakan mesin 248 cc. sedikit berbeda dengan model Forza 300 yang beberapa waktu lalu diperkenalkan, dimana skutik yang siap bersaing di segmen 250 cc ini justru menggunakan kombinasi warna putih dan biru serta memiliki tampilan lebih segar dan sporty. Sehingga, tak heran jika unit baru buatan Honda ini akan mampu menarik perhatian publik.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Dengan mengusung konsep kekinian, desain fisik pada spesifikasi Honda Forza 250 ini memang memiliki daya tarik tersendiri. tak berbeda jauh dengan Forza 300 yang dipasarkan di Eropa, kali ini skutik premium buatan Honda ini juga akan mengusung konsep desain sporty ala skutik Eropa yang begitu menawan dan terkesan futuristik. hal itu bisa dilihat dari setiap sisi bodi fisiknya. Dimana, jika kita menelusuri dari bagian depan, tampak jelas bahwa Honda Forza 250 ini akan mengusung konsep headlamp modern dengan bentuk unik layaknya tatapan mata tajam dan berbeda dari skutik premium lain pada umumnya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Bahkan, lampu depannya tersebut sudah menggunakan teknologi LED yang siap memancarkan penerangan maksimal. Selain itu, menariknya bahwa Honda Forza 250 ini akan dibekali windshield elektrik yang bisa diatur secara otomatis hanya dengan menekan tombol pengaturannya. tak sampai di situ saja, bahkan sebagaimana dengan beberapa skutik premium lainnya, unit yang satu ini juga menawarkan pijakan kaki yang cukup lebar untuk memberikan keleluasaan gerak kaki ketika berkendara.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda FORZA</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tipe Mesin : Pendinginan Cairan, 4 Langkah, single cylinder<br />\r\nKapasitas Mesin : 249,01 cc<br />\r\nSilinder : 1<br />\r\nDiametr x Langkah : 68 x 68,567 mm<br />\r\nPerbandingan Kompresi : 10,2 : 1<br />\r\nTenaga Maksimal : 17,3 kW / 7500 rpm<br />\r\nTorsi Maksimal : 24 Nm / 6250 rpm<br />\r\nTipe Transmisi : Otomatis<br />\r\nTipe Starter : Elektrik<br />\r\nSistem Bahan Bakar : Fuel Injection (PGM-FI)<br />\r\nBahan Bakar : Bensin<br />\r\nPanjang : 2142 mm<br />\r\nLebar : 754 mm<br />\r\nTinggi : 1472 mm<br />\r\nJarak Sumbu Roda : 1510 mm<br />\r\nTinggi Tempat Duduk : 780 mm<br />\r\nBerat : 182 Kg<br />\r\nKapasitas Tangki : 11.5 L</span></p>\r\n', '2020-09-13 06:48:57', 'admin1', 'forza-sampul1.png', 'forza-21.png', 'forza-31.png', 'forza-11.png', ''),
(144, 'HONDA SH 150 I', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda SH150i&nbsp;2020&ndash; Motor ini merupakan skutik premium yang dipasarkan di Indonesia dengan harga melebihi 40 Juta Rupiah. Harganya sangat mahal dibandingkan motor matic 150cc sekelasnya yang rata-rata dibanderol 20 Jutaan. Walaupun sangat mahal, namun motor matic ini menawarkan desain bergaya eropa yang cocok bagi kaum urban. Sebagian orang mungkin kurang suka dengan desain Honda SH150i, karena terlihat nyeleneh dibandingkan motor matic pada umumnya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Mesinnya cukup bertenaga dan dilengkapi beberapa fitur yang menjadi ciri khas motor Honda, seperti Answer Back System, Idling Stop System, ACG Starter, dll. Semuanya disediakan untuk meningkatkan kenyamanan pengendara Honda SH150i, jadi wajar apabila harganya sangat mahal. Terlebih motor ini diimport langsung dari luar negeri yang otomatis membuat harga Honda SH150i semakin mahal.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Agar semakin nyaman dikendarai, jarak terendah ketanahnya mencapai 146 mm. Selain itu, motor ini juga memiliki jarak sumbu roda 1.340 mm. Pada bagian depan juga tersedia pijakan kaki yang membuat kita semakin nyaman mengendarai Honda SH150i. Di sisi lain, tersedia pula ruang bagasi luas yang bisa menampung satu helm dan beberapa barang bawaan lainnya. Masih pada tempat yang sama, motor ini memiliki tangki bahan bakar yang bisa menampung BBM hingga 7.5 liter. Lalu ada pula LED Headlight yang membuat&nbsp;Honda SH150i terasa semakin eksklusif.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Untuk jantung pacunya, Honda SH150i menggunakan mesin SOHC berkapasitas 153cc yang dioptimalkan oleh sistem pendingin Liquid Cooled. Performanya semakin powerfull dengan hadirnya teknologi eSP (Enhanced Smart Power) dan PGM-Fi yang memaksimalkan sistem pembakaran, sehingga konsumsi bahan bakar semakin efisien dan berguna untuk mengurangi gesekan mesin, sehingga mencegah energi terbuang secara sia-sia. Selain itu, Honda SH150i juga dilengkapi fitur AGC starter yang membuat mesin lebih halus ketika dihidupkan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda SH 150 I</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Dimensi&nbsp;&nbsp; &nbsp;: 2,026 x 740 x 1,158 mm<br />\r\nTinggi Tempat Duduk : 799 mm<br />\r\nJarak Sumbu Roda : 1295 mm<br />\r\nJarak Terendah Ke Tanah&nbsp;&nbsp; &nbsp;: 146 mm<br />\r\nBerat : 136 kg<br />\r\nTipe Mesin : Liquid Cooled, 4stroke, SOHC, eSP<br />\r\nJumlah Silinder&nbsp;&nbsp; &nbsp;: Single Cylinder<br />\r\nVolume Silinder&nbsp;&nbsp; &nbsp;: 153cc<br />\r\nBore X Stroke : 58 x 57.9 mm<br />\r\nRasio Kompresi : 10,6:1<br />\r\nTenaga Maksimum&nbsp;&nbsp; &nbsp;: 10.9 kW/8,250rpm<br />\r\nTorsi Maksimum&nbsp;&nbsp; &nbsp;: 13,9 Nm/6,500rpm<br />\r\nTransmisi : Automatic<br />\r\nSistem Starter : Electric<br />\r\nKapasitas Bahan Bakar : 7.5 liters<br />\r\nSistem Pembakaran : PGM-FI (Programmed Fuel Injection System)</span></p>\r\n', '2020-09-13 07:07:39', 'admin1', 'sh150i-sampul.png', 'sh150i-1.png', 'sh150i-3.png', 'sh150i-2.png', ''),
(145, 'HONDA ADV 150', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda ADV 150 &ndash; Sebagai bentuk jawaban atas kebutuhan masyarakat Indonesia yang memiliki aktivitas tinggi dalam melintasi berbagai kondisi medan jalan, akhirnya PT Astra Honda Motor (AHM) pun memperkenalkan skutik adventure terbarunya yang bernama Honda ADV 150.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Skutik premium ini resmi diluncurkan pada ajang GIIAS 2019 pada 18 Januari 2020 lalu yang mana secara otomatis membuka pasar baru di segmen/genre skutik petualang kelas 150 cc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Guna mempertegas kesan adventure, Honda ADV 150 ini hadir dengan bentuk bodi yang bongsor, layaknya PCX 150 namun memiliki guratan bodi yang lebih tajam dan berotot.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Skutik terbaru buatan pabrikan Jepang ini memiliki konsep desain yang begitu gagah dan berotot dengan balutan konsep modern nan futuristik. Hal itu bisa dilihat dari beberapa sektor bodi fisiknya. mulai dari depan, Honda ADV 150 sendiri tampaknya telah lampu utama atau headlamp dengan bentuk menyipit, seperti mobil Xpander.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tak hanya itu, pada lampu depan tersebut juga sudah dilengkapi teknologi pencahayaan dari lampu Full LED, termasuk juga pada tail light maupun lampu sein. So, tak heran jika skutik ini mampu memberikan penerangan yang lebih baik dan berkualitas serta jauh lebih efisien.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sementara itu, di bagian atas lampu depan pada Honda ADV 150 ini juga sudah dilengkapi dengan kaca pelindung atau Wind Screen yang sangat fleksibel. Pasalnya, kaca pelindung ini memiliki dua posisi ketinggian yang bisa diatur ketinggiannya sesuai kebutuhan pengguna.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda ADV 150</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tipe Mesin : 4 &ndash; Langkah, SOHC, eSP, Idling Stop System<br />\r\nKapasitas Mesin : 150 cc<br />\r\nSilinder : -<br />\r\nDiameter x Langkah : 57,3 x 57,9 mm<br />\r\nPerbandingan Kompresi : 10,6 : 1<br />\r\nTenaga Maksimal : 10,7 kW ( 14,5 PS ) / 8.500 rpm<br />\r\nTorsi Maksimal : 13,8 Nm ( 1,34 kgf.m ) / 6.500 rpm<br />\r\nTipe Transmisi : Otomatis, V-Matic<br />\r\nTipe Starter : Elektrik<br />\r\nSistem Bahan Bakar : PGM &ndash; FI ( Programmed Fuel Injection )<br />\r\nBahan Bakar : Bensin<br />\r\nPanjang : 1.950 mm<br />\r\nLebar : 763 mm<br />\r\nTinggi : 1.153 mm<br />\r\nJarak Sumbu Roda : 1.324 mm<br />\r\nTinggi Tempat Duduk : 795 mm<br />\r\nBerat : 132 kg<br />\r\nKapasitas Tangki : 8 L</span></p>\r\n', '2020-09-13 07:15:22', 'admin1', 'adv150-sampul.png', 'adv150-4.png', 'adv150-3.png', 'adv150-2.png', 'adv150-1.png'),
(146, 'HONDA PCX HYBIRD', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda PCX Hybrid&nbsp;<strong> </strong>&ndash; Perusahaan asal Jepang tersebut telah memperkenalkan All New PCX pada ajang Tokyo Motor Show belum lama ini. Menariknya, Honda merilis dua varian berbeda, yaitu Hybrid dan Listrik. Keduanya mengusung teknologi canggih yang diklaim lebih ramah lingkungan dibandingkan PCX konvesional yang masih menggunakan bahan bakar fosil atau bensin.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">akhirnya Honda memboyong PCX Hybrid ke Indonesia. Sayangnya harga Honda PCX Hybrid lebih mahal dibandingkan PCX standar yang bisa kita dapatkan di bawah 30 Juta Rupiah. Teknologi yang dipakainya memang sangat canggih, jadi wajar apabila harga Honda PCX Hybrid lebih mahal. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">namun tidak ada yang secanggih Honda PCX Hybrid di kelas 150cc. Motor ini mengusung mesin konvesional berkapasitas 149.3cc yang dipadukan dengan motor listrik yang berguna untuk meningkatkan daya maksimum dan torsi maksimum yang dihasilkan mesin PCX Hybrid. Jadi jangan heran apabila performa motor ini lebih cepat dibandingkan PCX standar yang dibanderol jauh lebih murah dibandingkan harga Honda PCX Hybrid. Selain itu, Honda melengkapinya dengan fitur Riding Mode yang sebelumnya tidak dimiliki PCX.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tenaga maksimal yang dihasilkan mesin Honda PCX Hybrid mencapai 10.8 kW pada 8.500 rpm dan ditambah motor listrik yang bisa mengeluarkan tenaga 1.4 kW pada 3.000 rpm. Inilah yang membuat tenaga PCX Hybrid lebih besar dari PCX standar, karena ada motor listrik yang menambah tenaganya. Begitu pula dengan torsi Honda PCX Hybrid yang menapai 13.2 Nm pada 6.500 rpm dan ditambah motor listrik sebesar 4.3 Nm pada 3.000 rpm. Menariknya lagi kita tidak perlu mengisi baterai Lithium- Ion yang digunakan untuk menyimpan tenaga motor listrik tersebut, karena akan terisi otomatis saat mengendarai motor ini.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda PCX HYBIRD</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : 4 Langkah, SOHC, PGM-FI, berpendingin cairan, eSP<br />\r\nKapasitas : 149,3 cc<br />\r\nDaya Maksimum : 10,8 kW (14,7 PS) / 8.500 rpm (Mesin), 1,4 KW / 3.000 rpm (Motor)<br />\r\nTorsi Maksimum : 13,2 N.m (1,35 kgf.m) / 6.500 rpm (Mesin), 4,3 N.m / 3.000 rpm<br />\r\nSistem Bahan Bakar : Fuel Injection<br />\r\nTipe Starter : Electric Starter<br />\r\nTipe Transmsi : Otomatis, V-matic<br />\r\nBore X Stroke : 57,3 x 57,9 mm<br />\r\nPerbandingan Kompresi : 10,6:1<br />\r\nTipe Kopling : Otomatis, sentrifugal, tipe kering<br />\r\nDimensi : 1.923 x 745 x 1.107 mm<br />\r\nBerat : 136 kg<br />\r\nKapasitas Tangki : 8 Liter<br />\r\nJarak Sumbu Roda : 1,313 mm<br />\r\nTinggi Tempat Duduk : 764 mm<br />\r\nGround Clearance : 137 mm</span></p>\r\n', '2020-09-13 07:22:50', 'admin1', 'pcxhybird-sampul.png', 'pcxhybird-1.png', '', '', ''),
(147, 'HONDA PCX', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda PCX 150 &ndash; Generasi ke tiga dari Honda PCX 150 akhirnya resmi dirilis dan diproduksi secara lokal di Indonesia. Skutik premium buatan Honda yang satu ini diperkenalkan oleh PT AHM (Astra Honda Motor) selaku APM produk motor Honda di Indonesia pada 13 Desember 2017 kemarin.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tentu saja, perkenalan Honda PCX 150 buatan pabrik Honda lokal tersebut bakal dibanderol dengan harga yang lebih terjangkau jika dibandingkan dengan unit versi impor utuh (CBU) yang didatangkan dari Vietnam.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tak hanya itu saja, bahkan skutik yang akan segera diproduksi oleh pabrik AHM di Sunter ini dipastikan bakal mendapat sedikit sentuhan pembaruan yang tampak jelas pada beberapa bagian atau sektor.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Yang mana setiap pembaruan pada Honda PCX 150 tersebut memang disesuaikan dengan kebutuhan maupun keinginan para konsumen di Tanah Air.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tak berbeda jauh dengan yang sudah disebutkan di atas, skutik kelas premium buatan pabrik berlogo kepakan sayap ini tampak mengusung konsep desain yang lebih mengedepankan aura futuristik dan aerodinamis. di mana, dari sisi depan terlihat jelas bahwa motor bertajuk Honda PCX 150 ini membawa visor besar beserta desain headlamp modern yang membentuk huruf &ldquo;U&rdquo; dan sudah mengandalkan teknologi LED.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sehingga, selain tampil lebih mewah tentu dengan teknologi lampu depan yang diusungnya tersebut akan membuat pencahayaan menjadi lebih terang dan maksimal. selain itu, untuk memberikan kenyamanan dalam berkendara Honda PCX 150 ini menyediakan ruang pijakan kaki yang didesain sedemikian rupa sehingga membuat gerak kaki menjadi leluasa.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda PCX</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tipe Mesin : 4 Langkah, SOHC, PGM-FI, berpendingin cairan, eSP<br />\r\nKapasitas Mesin : 149.3 cc<br />\r\nSilinder : -<br />\r\nDiameter x Langkah : 57,3 x 57,9 mm<br />\r\nPerbandingan Kompresi : 10,6:1<br />\r\nTenaga Maksimal : 10,8 kW (14,7 PS) / 8.500 rpm<br />\r\nTorsi Maksimal : 13,2 N.m (1,35 kgf.m) / 6.500 rpm<br />\r\nTipe Transmisi : Otomatis, V-Matic<br />\r\nTipe Starter : -<br />\r\nSistem Bahan Bakar : PGM-FI<br />\r\nBahan Bakar : Bensin<br />\r\nPanjang : 1.923 mm<br />\r\nLebar : 745 mm<br />\r\nTinggi : 1.107 mm<br />\r\nJarak Sumbu Roda : 1.313 mm<br />\r\nTinggi Tempat Duduk : 764 mm<br />\r\nBerat : 131 Kg<br />\r\nKapasitas Tangki : 8 L</span></p>\r\n', '2020-09-13 08:11:16', 'admin1', 'pcx-sampul.png', 'pcx-2.png', 'pcx-1.png', 'pcx-3.png', 'pcx-4.png'),
(148, 'HONDA VARIO 150', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Vario 150 2020&nbsp;</strong> &ndash; Salah satu motor matic terlaris di Indonesia adalah All New Honda Vario 150. Motor ini memiliki mesin 150cc yang bertenaga dan irit bahan bakar. Alhasil masyarakat Indonesia rela membelinya, meski harga Honda Vario 150 tersebut melebihi 20 Juta Rupiah. Yah, harganya memang tidak bisa dikatakan murah, namun uang yang kita keluarkan sebanding dengan apa yang kita dapatkan. Terlebih All New Vario 150 menawarkan desain modern dan dilengkapi beragam fitur canggih yang menjadi ciri khas motor Honda.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Bisa dikatakan Vario 150 merupakan motor matic terbaik di Indonesia. Motor ini menawarkan teknologi terdepan yang akan memanjakan penggunanya. Namun daya tarik utamanya adalah kapasitas mesin yang besar, sehingga lebih bertenaga dibandingkan motor matic murah bermesin 110cc ataupun 125cc. Walaupun lebih bertenaga, akan tetapi konsumsi bahan bakarnya sangat irit dan bisa bertahan puluhan kilometer saat terisi bensin penuh.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Pasalnya motor matic terbaik ini memiliki mesin SOHC berkapasitas 150cc yang dilengkapi sistem pendingin cairan. Selain itu, Vario 150 mengadopsi teknologi ESP (Enhanced Smart Power) yang berpadu dengan sistem pembakaran Injeksi (PGM-FI) untuk meningkatkan kinerja mesin menjadi lebih responsif dan lebih hemat bahan bakar. Mesin Vario 150 tersebut bisa mampu menghasilkan daya maksimum sebesar 9.7 kw pada 8.500 rpm. sedangkan torsinya menembus 13.4 Nm pada 5.000 rpm. Tenaga dan torsinya lebih bsar dibandingkan Vario 150 generasi sebelumnya. Alhasil kemampuan akselerasi All New Vario 150 menjadi lebih cepat dan bisa menghasilkan Top Speed lebih tinggi. Menariknya lagi, All New Honda Vario 150 telah dilengkapi teknologi Smart Key System yang membuatnya tidak lagi memerlukan kunci mekanis untuk mengoperasikan kunci stang atau menghidupkan mesin.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda VARIO 150</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : 4 langkah, SOHC dengan pendingin cairan<br />\r\nKapasitas : 150 cc<br />\r\nDaya Maksimum : 9.7 kW (13.1 PS) / 8500 rpm<br />\r\nTorsi Maksimum : 13.4 Nm (1.37 kgf.m) / 5000 rpm<br />\r\nSistem Bahan Bakar : PGM-FI (Programmed Fuel Injection)<br />\r\nTipe Starter : Electric Starter<br />\r\nTipe Transmsi : Otomatis, V-matic<br />\r\nBore X Stroke : 57,3 x 57,9 mm<br />\r\nPerbandingan Kompresi : 10,6 : 1<br />\r\nTipe Kopling : Otomatis, sentrifugal, tipe kering<br />\r\nKapasitas Oli Mesin : Total = 1,7 L ; Berkala = 1,5 L<br />\r\nDimensi&nbsp;&nbsp; &nbsp;: 1.919 x 679 x 1.062 mm<br />\r\nBerat : 112 kg<br />\r\nKapasitas Tangki : 5.5 Liter<br />\r\nJarak Sumbu Roda : 1.280 mm<br />\r\nGround Clearance : 132 mm</span></p>\r\n', '2020-09-13 08:17:08', 'admin1', 'vario150-sampul.png', 'vario150-1.png', 'vario150-2.png', 'vario150-3.png', 'vario150-4.png'),
(149, 'HONDA VARIO 125', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda Vario 125&nbsp; &ndash; Sejak mendapat pembaruan perdana pada tahun 2015 silam, kini Honda Vario 125 kembali mendapat penyegaran di tahun 2018. penyegaran tersebut juga diterapkan pada Vario 150. Namun, hanya saja pada pembahasan ini, Mas Sena akan mengulas secara lebih detail mengenai apa saja pembaruan pada spesifikasi yang diusung Honda Vario 125 model 2018 ini.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Produk terbaru tersebut buatan AHM merupakan senjata terbaru dari AHM untuk bersaing di pasar otomotif, khususnya di segmen skuter matik nasional. selain itu, satu hal yang cukup menarik bahwa Honda Vario 125 kali ini akan hadir dengan desain yang lebih eksklusif dan berjiwa muda. Sehingga, tak kalah dengan skutik premium yang kini segmentasinya tengah naik daun.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sementara itu, untuk sektor dapur pacu, Honda Vario 125 masih mengusung mesin yang sama berkapasitas 125 cc dengan teknologi eSP mengingat teknologi tersebut mampu memaksimalkan proses pembakaran secara efektif dan efisien serta sanggup meminimalisir energi yang terbuang secara sia-sia.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Bahkan, teknologi eSP pada skutik ini terintegrasi dengan fitur ACG Starter yang mampu menghidupkan mesin dengan suara lebih halus. selain itu, skutik ini juga akan dilengkapi beberapa fitur canggih lain dengan fungsionalitas tinggi guna menunjang keselamatan maupun kenyamanan dalam berkendara.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda VARIO 125</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tipe Mesin : 4-Langkah, SOHC, eSP, Pendinginan Cairan<br />\r\nKapasitas Mesin : 124.8 cc<br />\r\nSilinder : -<br />\r\nDiameter x Langkah : 52,4 x 57,9 mm<br />\r\nPerbandingan Kompresi : -<br />\r\nTenaga Maksimal : 8,2 kW (11,1 PS) / 8.500 rpm<br />\r\nTorsi Maksimal : 10,8 Nm (1,1 kgf.m) / 5.000 rpm<br />\r\nTipe Transmisi : Otomatis , V &ndash; Matic<br />\r\nTipe Starter : Elektrik<br />\r\nSistem Bahan Bakar : -<br />\r\nBahan Bakar : Bensin<br />\r\nPanjang : 1919 mm<br />\r\nLebar : 679 mm<br />\r\nTinggi : 1062 mm<br />\r\nJarak Sumbu Roda : 1280 mm<br />\r\nTinggi Tempat Duduk : -<br />\r\nBerat : 111 Kg<br />\r\nKapasitas Tangki : 5.5 L</span></p>\r\n', '2020-09-13 08:23:36', 'admin1', 'vario125-sampul.png', 'vario125-4.png', 'vario125-3.png', 'vario125-2.png', 'vario125-1.png'),
(150, 'HONDA BEAT STREET', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda Beat Street &ndash; Skutik ini memang sengaja diproduksi oleh pihak Honda sebagai pesaing dari Yamaha X-Ride yang sebelumnya sudah dirilis terlebih dahulu dengan mengusung gaya desain adventure.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sehingga Honda Beat Street eSP ini tentu akan sangat cocok bagi para pengguna yang hobi menjelajah di berbagai medan jalan. selain itu, dengan tampilan luarnya yang anti mainstream dibandingkan skutik lain sekelasnya, tentu Honda Beat Street eSP akan lebih memikat perhatian setiap calon penggunanya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Di sisi lain, Honda Beat Street ini pun juga bakal membawa spesifikasi mesin pacu yang handal, yaitu dengan menggendong&nbsp;mesin SOHC eSP&nbsp;berkapasitas 110cc sehingga akan memberikan hasil tenaga mesin yang cukup handal untuk skutik sekelasnya. tak hanya itu saja, Honda Beat Street eSP ini pun juga dilengkapi dengan fitur kenyamanan berupa panel indikator LCD digital modern yang siap memberikan informasi kepada penggunanya terkait keadaan motor.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda BEAT STREET</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tipe Mesin : 4-Stroke, SOHC dengan Pendingin Udara, eSP<br />\r\nKapasitas Mesin : 108.2 cc<br />\r\nSilinder : 1<br />\r\nDiameter x Langkah : 50 x 55,1 mm<br />\r\nPerbandingan Kompresi : 9.5 : 1<br />\r\nTenaga Maksimal : 6.38 kW @7.500 rpm<br />\r\nTorsi Maksimal : 9.01 Nm @6.500 rpm<br />\r\nTipe Transmisi : Otomatis, V-Matic<br />\r\nTipe Starter : Elektrik dan Kick Starter<br />\r\nSistem Bahan Bakar : PGM-FI<br />\r\nBahan Bakar : Bensin<br />\r\nPanjang : 1856 mm<br />\r\nLebar : 741 mm<br />\r\nTinggi : 1054 mm<br />\r\nJarak Sumbu Roda : 1256 mm<br />\r\nTinggi Tempat Duduk : 740 mm<br />\r\nBerat : 89 Kg<br />\r\nKapasitas Tangki : 4 L</span></p>\r\n', '2020-09-13 08:32:40', 'admin1', 'beatstreet-sampul.png', 'beatstreet-1.png', 'beatstreet-2.png', 'beatstreet-3.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
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
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(2, 'admin1', NULL, 'L', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'aldiandwi78@gmail.com', '081936346937', NULL, NULL, NULL, NULL, 1, '1', '2020-09-12 09:33:01', '8fd395fc7f5c62a444ee8bbcd27b40ea.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(1, '2016-08-11 23:52:20', '127.0.0.1', 'Firefox'),
(2, '2016-08-12 17:14:20', '127.0.0.1', 'Firefox'),
(3, '2016-08-13 05:23:19', '127.0.0.1', 'Firefox'),
(4, '2016-08-13 05:27:05', '127.0.0.1', 'Firefox'),
(5, '2016-08-13 05:27:37', '127.0.0.1', 'Firefox'),
(6, '2016-08-13 06:54:58', '127.0.0.1', 'Firefox'),
(7, '2016-08-13 06:55:59', '127.0.0.1', 'Firefox'),
(8, '2016-08-13 07:00:06', '127.0.0.1', 'Firefox'),
(9, '2016-08-13 07:00:34', '127.0.0.1', 'Firefox'),
(10, '2016-09-18 20:24:39', '127.0.0.1', 'Firefox'),
(11, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(12, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(13, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(14, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(15, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(16, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(17, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(18, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(19, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(20, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(21, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(22, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(23, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(24, '2017-02-04 18:06:52', '::1', 'Chrome'),
(25, '2017-02-04 18:07:16', '127.0.0.1', 'Firefox'),
(26, '2017-02-04 18:08:31', '::1', 'Chrome'),
(27, '2017-02-05 19:33:14', '::1', 'Chrome'),
(28, '2017-02-05 20:20:59', '127.0.0.1', 'Firefox'),
(29, '2017-02-06 18:21:08', '::1', 'Chrome'),
(30, '2017-02-09 01:07:51', '::1', 'Chrome'),
(31, '2017-02-10 20:12:05', '::1', 'Chrome'),
(32, '2017-02-20 20:46:21', '::1', 'Chrome'),
(33, '2017-02-22 04:04:16', '::1', 'Chrome'),
(34, '2017-02-27 18:47:25', '::1', 'Chrome'),
(35, '2017-03-02 06:09:25', '::1', 'Chrome'),
(36, '2017-03-04 08:18:51', '::1', 'Chrome'),
(37, '2017-03-12 20:40:32', '::1', 'Chrome'),
(38, '2017-03-13 20:34:32', '::1', 'Chrome'),
(39, '2017-03-23 04:08:15', '::1', 'Firefox'),
(40, '2017-03-25 09:39:02', '::1', 'Firefox'),
(41, '2017-03-25 10:16:45', '::1', 'Firefox'),
(42, '2017-03-28 14:11:23', '::1', 'Firefox'),
(43, '2017-03-29 22:39:17', '::1', 'Firefox'),
(44, '2017-03-30 10:52:11', '::1', 'Firefox'),
(45, '2017-03-31 22:48:46', '::1', 'Firefox'),
(46, '2017-04-06 22:33:58', '::1', 'Firefox'),
(47, '2017-04-08 00:25:37', '::1', 'Firefox'),
(48, '2017-04-08 10:00:14', '::1', 'Firefox'),
(49, '2017-04-09 10:06:03', '::1', 'Firefox'),
(50, '2017-04-10 12:20:50', '::1', 'Firefox'),
(51, '2017-04-11 11:46:50', '117.102.64.98', 'Chrome'),
(52, '2017-04-11 11:46:57', '125.165.129.35', 'Firefox'),
(53, '2017-04-11 12:52:18', '69.171.225.46', 'Other'),
(54, '2017-04-11 12:54:33', '69.171.225.12', 'Other'),
(55, '2017-04-11 12:55:04', '69.171.225.21', 'Other'),
(56, '2017-04-11 12:55:18', '69.171.225.18', 'Other'),
(57, '2017-04-11 13:03:44', '36.83.246.250', 'Chrome'),
(58, '2017-04-11 13:05:55', '202.62.17.121', 'Chrome'),
(59, '2017-04-11 13:06:45', '106.187.46.205', 'Chrome'),
(60, '2017-04-11 13:06:47', '173.252.98.28', 'Other'),
(61, '2017-04-11 13:10:36', '107.167.103.241', 'Opera'),
(62, '2017-04-11 13:16:14', '202.67.41.244', 'Chrome'),
(63, '2017-04-11 13:18:24', '36.72.192.194', 'Chrome'),
(64, '2017-04-11 13:19:40', '112.215.175.62', 'Chrome'),
(65, '2017-04-11 13:20:09', '173.252.102.112', 'Other'),
(66, '2017-04-11 13:20:17', '112.215.154.56', 'Firefox'),
(67, '2017-04-11 13:20:26', '158.140.170.23', 'Chrome'),
(68, '2017-04-11 13:22:33', '36.81.37.52', 'Chrome'),
(69, '2017-04-11 13:23:14', '120.188.65.243', 'Chrome'),
(70, '2017-04-11 13:26:16', '124.153.33.11', 'Chrome'),
(71, '2017-04-11 13:26:21', '112.215.172.240', 'Chrome'),
(72, '2017-04-11 13:27:34', '132.255.240.27', 'Chrome'),
(73, '2017-04-11 13:28:22', '103.213.131.147', 'Chrome'),
(74, '2017-04-11 13:29:38', '36.84.225.114', 'Chrome'),
(75, '2017-04-11 13:29:45', '180.253.158.87', 'Chrome'),
(76, '2017-04-11 13:33:35', '173.252.84.52', 'Other'),
(77, '2017-04-11 13:34:51', '202.67.35.20', 'Chrome'),
(78, '2017-04-11 13:37:02', '202.67.40.210', 'Chrome'),
(79, '2017-04-11 13:39:43', '120.188.76.26', 'Chrome'),
(80, '2017-04-11 13:41:05', '173.252.123.186', 'Other'),
(81, '2017-04-11 13:45:29', '110.139.8.41', 'Mozilla'),
(82, '2017-04-11 13:53:12', '202.80.216.219', 'Chrome'),
(83, '2017-04-11 13:55:16', '223.255.230.13', 'Safari'),
(84, '2017-04-11 13:55:38', '36.78.69.101', 'Chrome'),
(85, '2017-04-11 14:02:53', '180.251.173.137', 'Chrome'),
(86, '2017-04-11 14:03:05', '125.161.185.216', 'Chrome'),
(87, '2017-04-11 14:16:22', '139.192.226.49', 'Chrome'),
(88, '2017-04-11 14:18:10', '107.167.112.88', 'Opera'),
(89, '2017-04-11 14:18:13', '180.247.26.15', 'Chrome'),
(90, '2017-04-11 14:20:04', '204.44.65.210', 'Internet Explorer'),
(91, '2017-04-11 14:22:58', '36.78.96.198', 'Chrome'),
(92, '2017-04-11 14:23:40', '138.197.192.28', 'Chrome'),
(93, '2017-04-11 14:24:07', '112.215.151.61', 'Chrome'),
(94, '2017-04-11 14:25:46', '202.51.104.154', 'Chrome'),
(95, '2017-04-11 14:32:42', '202.67.44.7', 'Firefox'),
(96, '2017-04-11 14:36:53', '118.136.122.84', 'Chrome'),
(97, '2017-04-11 14:39:25', '61.247.21.51', 'Chrome'),
(98, '2017-04-11 14:41:38', '114.124.180.250', 'Chrome'),
(99, '2017-04-11 14:41:55', '120.188.64.226', 'Chrome'),
(100, '2017-04-11 14:43:14', '180.247.204.243', 'Chrome'),
(101, '2017-04-11 14:44:48', '125.161.179.203', 'Chrome'),
(102, '2017-04-11 14:46:06', '114.125.55.58', 'Chrome'),
(103, '2017-04-11 14:50:14', '158.140.182.11', 'Chrome'),
(104, '2017-04-11 14:54:09', '202.67.33.22', 'Chrome'),
(105, '2017-04-11 14:58:44', '120.188.65.30', 'Chrome'),
(106, '2017-04-11 14:59:55', '120.188.77.153', 'Chrome'),
(107, '2017-04-11 15:02:32', '125.167.185.147', 'Mozilla'),
(108, '2017-04-11 15:04:23', '118.136.84.45', 'Chrome'),
(109, '2017-04-11 15:04:41', '110.136.129.138', 'Chrome'),
(110, '2017-04-11 15:04:52', '36.75.108.223', 'Chrome'),
(111, '2017-04-11 15:05:46', '36.72.38.146', 'Chrome'),
(112, '2017-04-11 15:06:31', '120.188.5.85', 'Chrome'),
(113, '2017-04-11 15:09:53', '180.253.90.210', 'Chrome'),
(114, '2017-04-11 15:12:18', '107.167.99.179', 'Opera'),
(115, '2017-04-11 15:12:49', '112.215.171.165', 'Chrome'),
(116, '2017-04-11 15:14:55', '203.166.201.206', 'Chrome'),
(117, '2017-04-11 15:15:21', '107.167.99.208', 'Opera'),
(118, '2017-04-11 15:15:25', '36.73.194.145', 'Mozilla'),
(119, '2017-04-11 15:16:25', '107.167.113.164', 'Opera'),
(120, '2017-04-11 15:16:42', '120.92.32.177', 'Chrome'),
(121, '2017-04-11 15:17:23', '180.245.132.122', 'Chrome'),
(122, '2017-04-11 15:17:56', '120.188.80.236', 'Chrome'),
(123, '2017-04-11 15:17:57', '114.125.89.57', 'Chrome'),
(124, '2017-04-11 15:18:01', '139.0.186.187', 'Chrome'),
(125, '2017-04-11 15:18:25', '125.166.215.131', 'Chrome'),
(126, '2017-04-11 15:18:29', '120.188.6.216', 'Mozilla'),
(127, '2017-04-11 15:19:06', '125.161.98.148', 'Chrome'),
(128, '2017-04-11 15:20:10', '36.73.9.148', 'Chrome'),
(129, '2017-04-11 15:20:15', '114.125.182.65', 'Chrome'),
(130, '2017-04-11 15:21:07', '114.125.40.100', 'Chrome'),
(131, '2017-04-11 15:21:45', '120.188.86.219', 'Chrome'),
(132, '2017-04-11 15:22:35', '118.136.103.194', 'Mozilla'),
(133, '2017-04-11 15:23:47', '36.81.10.230', 'Chrome'),
(134, '2017-04-11 15:23:47', '114.125.164.4', 'Chrome'),
(135, '2017-04-11 15:24:28', '107.167.112.218', 'Chrome'),
(136, '2017-04-11 15:24:50', '107.167.98.132', 'Opera'),
(137, '2017-04-11 15:25:44', '180.246.19.210', 'Chrome'),
(138, '2017-04-11 15:26:12', '120.188.1.85', 'Chrome'),
(139, '2017-04-11 15:27:50', '139.195.66.235', 'Chrome'),
(140, '2017-04-11 15:28:06', '115.178.198.211', 'Chrome'),
(141, '2017-04-11 15:28:17', '115.178.235.88', 'Chrome'),
(142, '2017-04-11 15:28:49', '36.84.87.138', 'Mozilla'),
(143, '2017-04-11 15:29:05', '114.121.232.136', 'Chrome'),
(144, '2017-04-11 15:29:23', '118.96.227.216', 'Chrome'),
(145, '2017-04-11 15:29:45', '36.68.184.231', 'Mozilla'),
(146, '2017-04-11 15:30:18', '120.188.3.198', 'Chrome'),
(147, '2017-04-11 15:32:44', '61.94.133.70', 'Chrome'),
(148, '2017-04-11 15:32:44', '8.37.235.44', 'Safari'),
(149, '2017-04-11 15:33:19', '110.136.254.232', 'Chrome'),
(150, '2017-04-11 15:34:17', '36.83.28.90', 'Chrome'),
(151, '2017-04-11 15:34:25', '120.188.80.239', 'Chrome'),
(152, '2017-04-11 15:34:50', '114.125.72.8', 'Chrome'),
(153, '2017-04-11 15:34:59', '180.247.33.166', 'Safari'),
(154, '2017-04-11 15:35:10', '180.214.232.22', 'Chrome'),
(155, '2017-04-11 15:35:47', '61.5.92.125', 'Chrome'),
(156, '2017-04-11 15:36:22', '36.69.222.51', 'Chrome'),
(157, '2017-04-11 15:36:24', '182.253.139.130', 'Chrome'),
(158, '2017-04-11 15:36:36', '120.188.86.170', 'Chrome'),
(159, '2017-04-11 15:36:56', '139.228.97.115', 'Chrome'),
(160, '2017-04-11 15:37:18', '36.67.61.15', 'Chrome'),
(161, '2017-04-11 15:37:20', '114.4.78.184', 'Chrome'),
(162, '2017-04-11 15:38:09', '202.67.40.221', 'Chrome'),
(163, '2017-04-11 15:39:03', '112.215.172.66', 'Chrome'),
(164, '2017-04-11 15:39:11', '36.74.207.97', 'Chrome'),
(165, '2017-04-11 15:39:36', '64.233.173.4', 'Chrome'),
(166, '2017-04-11 15:40:07', '36.84.136.234', 'Chrome'),
(167, '2017-04-11 15:41:24', '202.62.16.49', 'Chrome'),
(168, '2017-04-11 15:41:28', '125.167.120.95', 'Chrome'),
(169, '2017-04-11 15:41:46', '168.235.207.168', 'Firefox'),
(170, '2017-04-11 15:41:52', '120.188.64.235', 'Chrome'),
(171, '2017-04-11 15:42:10', '120.188.81.204', 'Chrome'),
(172, '2017-04-11 15:42:26', '125.162.245.169', 'Chrome'),
(173, '2017-04-11 15:43:20', '180.242.10.170', 'Chrome'),
(174, '2017-04-11 15:44:03', '64.233.173.6', 'Chrome'),
(175, '2017-04-11 15:44:11', '112.215.174.87', 'Chrome'),
(176, '2017-04-11 15:44:37', '36.71.46.157', 'Chrome'),
(177, '2017-04-11 15:45:07', '103.56.235.74', 'Chrome'),
(178, '2017-04-11 15:45:18', '120.188.66.124', 'Chrome'),
(179, '2017-04-11 15:45:25', '69.171.225.33', 'Other'),
(180, '2017-04-11 15:46:14', '114.125.202.40', 'Chrome'),
(181, '2017-04-11 15:46:45', '120.188.87.93', 'Chrome'),
(182, '2017-04-11 15:46:46', '118.136.85.176', 'Chrome'),
(183, '2017-04-11 15:46:51', '64.233.173.8', 'Chrome'),
(184, '2017-04-11 15:47:32', '36.79.200.132', 'Chrome'),
(185, '2017-04-11 15:48:01', '120.188.35.53', 'Chrome'),
(186, '2017-04-11 15:49:39', '110.138.153.190', 'Chrome'),
(187, '2017-04-11 15:49:44', '114.125.73.228', 'Chrome'),
(188, '2017-04-11 15:49:52', '36.81.119.196', 'Chrome'),
(189, '2017-04-11 15:50:22', '120.188.65.140', 'Chrome'),
(190, '2017-04-11 15:51:05', '125.161.188.27', 'Chrome'),
(191, '2017-04-11 15:51:23', '124.40.251.74', 'Firefox'),
(192, '2017-04-11 15:51:31', '139.228.108.66', 'Chrome'),
(193, '2017-04-11 15:51:33', '180.254.57.164', 'Chrome'),
(194, '2017-04-11 15:53:07', '180.247.95.40', 'Chrome'),
(195, '2017-04-11 15:53:20', '103.205.56.66', 'Chrome'),
(196, '2017-04-11 15:53:20', '103.56.232.196', 'Chrome'),
(197, '2017-04-11 15:53:52', '180.241.167.242', 'Chrome'),
(198, '2017-04-11 15:53:54', '112.215.171.106', 'Chrome'),
(199, '2017-04-11 15:55:12', '114.125.214.65', 'Chrome'),
(200, '2017-04-11 15:55:40', '36.71.48.50', 'Firefox'),
(201, '2017-04-11 15:57:12', '103.9.227.1', 'Chrome'),
(202, '2017-04-11 15:57:16', '202.62.17.134', 'Chrome'),
(203, '2017-04-11 15:57:40', '36.74.110.84', 'Chrome'),
(204, '2017-04-11 15:57:54', '112.215.173.135', 'Chrome'),
(205, '2017-04-11 15:58:17', '36.80.43.86', 'Chrome'),
(206, '2017-04-11 15:59:04', '45.76.207.98', 'Chrome'),
(207, '2017-04-11 15:59:23', '180.214.233.30', 'Chrome'),
(208, '2017-04-11 15:59:28', '36.78.97.242', 'Mozilla'),
(209, '2017-04-11 15:59:58', '61.94.220.130', 'Chrome'),
(210, '2017-04-11 16:00:03', '8.37.230.63', 'Safari'),
(211, '2017-04-11 16:00:20', '125.162.99.169', 'Chrome'),
(212, '2017-04-11 16:00:31', '223.255.227.25', 'Chrome'),
(213, '2017-04-11 16:01:07', '114.121.244.144', 'Chrome'),
(214, '2017-04-11 16:01:24', '114.125.214.143', 'Chrome'),
(215, '2017-04-11 16:01:43', '8.37.235.230', 'Safari'),
(216, '2017-04-11 16:01:49', '120.188.86.129', 'Chrome'),
(217, '2017-04-11 16:02:10', '120.188.74.41', 'Chrome'),
(218, '2017-04-11 16:02:25', '115.178.239.193', 'Chrome'),
(219, '2017-04-11 16:02:49', '202.67.46.8', 'Chrome'),
(220, '2017-04-11 16:02:56', '36.80.211.28', 'Chrome'),
(221, '2017-04-11 16:03:54', '139.195.162.58', 'Chrome'),
(222, '2017-04-11 16:04:16', '202.154.180.10', 'Chrome'),
(223, '2017-04-11 16:04:34', '114.125.184.7', 'Chrome'),
(224, '2017-04-11 16:05:01', '120.188.85.253', 'Chrome'),
(225, '2017-04-11 16:05:32', '139.195.209.21', 'Chrome'),
(226, '2017-04-11 16:05:57', '120.188.33.114', 'Chrome'),
(227, '2017-04-11 16:06:03', '8.37.233.52', 'Safari'),
(228, '2017-04-11 16:06:09', '36.79.130.99', 'Chrome'),
(229, '2017-04-11 16:06:21', '36.74.24.2', 'Chrome'),
(230, '2017-04-11 16:06:43', '114.125.186.131', 'Chrome'),
(231, '2017-04-11 16:06:45', '202.62.17.197', 'Chrome'),
(232, '2017-04-11 16:07:31', '118.96.232.253', 'Chrome'),
(233, '2017-04-11 16:08:05', '36.79.188.51', 'Chrome'),
(234, '2017-04-11 16:08:13', '36.74.122.45', 'Chrome'),
(235, '2017-04-11 16:08:23', '36.84.110.69', 'Chrome'),
(236, '2017-04-11 16:08:23', '112.215.172.153', 'Chrome'),
(237, '2017-04-11 16:08:37', '36.82.30.206', 'Chrome'),
(238, '2017-04-11 16:09:03', '180.214.232.2', 'Chrome'),
(239, '2017-04-11 16:09:38', '107.167.112.128', 'Opera'),
(240, '2017-04-11 16:09:40', '36.70.178.105', 'Chrome'),
(241, '2017-04-11 16:09:55', '139.195.130.19', 'Chrome'),
(242, '2017-04-11 16:10:31', '114.125.57.214', 'Chrome'),
(243, '2017-04-11 16:10:41', '120.188.85.184', 'Chrome'),
(244, '2017-04-11 16:10:52', '125.163.107.41', 'Firefox'),
(245, '2017-04-11 16:11:15', '114.125.41.144', 'Chrome'),
(246, '2017-04-11 16:11:21', '61.94.103.59', 'Chrome'),
(247, '2017-04-11 16:12:08', '36.76.30.210', 'Chrome'),
(248, '2017-04-11 16:12:26', '36.73.134.193', 'Chrome'),
(249, '2017-04-11 16:12:31', '112.215.173.16', 'Chrome'),
(250, '2017-04-11 16:13:18', '120.188.92.195', 'Chrome'),
(251, '2017-04-11 16:13:20', '125.163.92.209', 'Chrome'),
(252, '2017-04-11 16:14:19', '182.253.142.24', 'Chrome'),
(253, '2017-04-11 16:14:28', '120.188.86.148', 'Chrome'),
(254, '2017-04-11 16:14:56', '182.253.163.61', 'Chrome'),
(255, '2017-04-11 16:16:02', '36.74.148.31', 'Chrome'),
(256, '2017-04-11 16:16:57', '8.37.233.156', 'Safari'),
(257, '2017-04-11 16:17:04', '114.125.56.121', 'Firefox'),
(258, '2017-04-11 16:17:12', '158.140.165.20', 'Chrome'),
(259, '2017-04-11 16:17:17', '125.164.97.226', 'Chrome'),
(260, '2017-04-11 16:17:18', '120.188.92.249', 'Chrome'),
(261, '2017-04-11 16:17:26', '118.137.208.31', 'Chrome'),
(262, '2017-04-11 16:17:30', '180.244.71.107', 'Chrome'),
(263, '2017-04-11 16:17:37', '120.188.87.220', 'Chrome'),
(264, '2017-04-11 16:17:57', '112.215.172.199', 'Safari'),
(265, '2017-04-11 16:18:23', '110.138.44.236', 'Chrome'),
(266, '2017-04-11 16:18:35', '168.235.195.254', 'Safari'),
(267, '2017-04-11 16:18:40', '180.245.98.188', 'Chrome'),
(268, '2017-04-11 16:18:58', '114.125.183.102', 'Chrome'),
(269, '2017-04-11 16:19:18', '125.164.38.13', 'Chrome'),
(270, '2017-04-11 16:19:27', '114.121.239.102', 'Chrome'),
(271, '2017-04-11 16:20:03', '168.235.206.137', 'Safari'),
(272, '2017-04-11 16:20:32', '202.80.213.87', 'Chrome'),
(273, '2017-04-11 16:21:18', '180.246.73.3', 'Chrome'),
(274, '2017-04-11 16:22:02', '36.75.32.145', 'Mozilla'),
(275, '2017-04-11 16:22:04', '112.215.154.115', 'Chrome'),
(276, '2017-04-11 16:22:09', '36.73.96.185', 'Mozilla'),
(277, '2017-04-11 16:22:38', '8.37.232.215', 'Safari'),
(278, '2017-04-11 16:22:53', '36.68.233.0', 'Chrome'),
(279, '2017-04-11 16:23:08', '36.84.224.73', 'Chrome'),
(280, '2017-04-11 16:23:29', '66.220.151.86', 'Other'),
(281, '2017-04-11 16:24:01', '120.188.75.121', 'Chrome'),
(282, '2017-04-11 16:24:19', '207.241.226.233', 'Mozilla'),
(283, '2017-04-11 16:24:35', '36.73.181.116', 'Chrome'),
(284, '2017-04-11 16:25:38', '198.186.192.44', 'Other'),
(285, '2017-04-11 16:25:56', '114.4.78.117', 'Chrome'),
(286, '2017-04-11 16:26:38', '36.72.95.85', 'Firefox'),
(287, '2017-04-11 16:27:26', '120.188.81.107', 'Chrome'),
(288, '2017-04-11 16:28:19', '114.124.149.112', 'Chrome'),
(289, '2017-04-11 16:28:29', '114.125.205.41', 'Chrome'),
(290, '2017-04-11 16:28:54', '125.163.78.202', 'Chrome'),
(291, '2017-04-11 16:29:17', '114.125.52.130', 'Firefox'),
(292, '2017-04-11 16:29:45', '114.4.78.150', 'Chrome'),
(293, '2017-04-11 16:29:47', '114.121.156.129', 'Chrome'),
(294, '2017-04-11 16:29:51', '112.215.172.8', 'Chrome'),
(295, '2017-04-11 16:30:30', '114.125.166.163', 'Chrome'),
(296, '2017-04-11 16:30:35', '139.195.187.141', 'Chrome'),
(297, '2017-04-11 16:30:53', '36.72.21.12', 'Chrome'),
(298, '2017-04-11 16:32:34', '8.37.225.108', 'Firefox'),
(299, '2017-04-11 16:32:39', '180.248.6.118', 'Chrome'),
(300, '2017-04-11 16:33:44', '8.37.233.95', 'Safari'),
(301, '2017-04-11 16:34:16', '120.188.80.6', 'Safari'),
(302, '2017-04-11 16:34:52', '211.227.156.112', 'Chrome'),
(303, '2017-04-11 16:34:54', '125.167.187.126', 'Chrome'),
(304, '2017-04-11 16:35:32', '107.167.112.72', 'Chrome'),
(305, '2017-04-11 16:35:57', '112.215.152.98', 'Mozilla'),
(306, '2017-04-11 16:36:06', '180.251.167.150', 'Chrome'),
(307, '2017-04-11 16:36:27', '36.82.76.215', 'Chrome'),
(308, '2017-04-11 16:37:45', '168.235.206.238', 'Safari'),
(309, '2017-04-11 16:38:09', '124.153.33.39', 'Chrome'),
(310, '2017-04-11 16:38:39', '168.235.197.19', 'Firefox'),
(311, '2017-04-11 16:38:44', '36.73.87.46', 'Chrome'),
(312, '2017-04-11 16:38:45', '188.166.218.174', 'Firefox'),
(313, '2017-04-11 16:39:03', '36.78.54.201', 'Firefox'),
(314, '2017-04-11 16:39:24', '139.228.95.10', 'Chrome'),
(315, '2017-04-11 16:39:24', '120.188.80.114', 'Chrome'),
(316, '2017-04-11 16:39:35', '182.253.203.58', 'Chrome'),
(317, '2017-04-11 16:39:54', '36.78.66.34', 'Chrome'),
(318, '2017-04-11 16:40:56', '120.188.79.185', 'Mozilla'),
(319, '2017-04-11 16:41:35', '118.96.235.203', 'Chrome'),
(320, '2017-04-11 16:41:44', '180.253.236.103', 'Chrome'),
(321, '2017-04-11 16:43:18', '125.161.188.207', 'Chrome'),
(322, '2017-04-11 16:44:08', '36.66.72.178', 'Chrome'),
(323, '2017-04-11 16:44:16', '36.84.13.131', 'Chrome'),
(324, '2017-04-11 16:44:46', '112.215.45.240', 'Firefox'),
(325, '2017-04-11 16:45:01', '49.182.76.246', 'Chrome'),
(326, '2017-04-11 16:45:09', '180.247.77.200', 'Chrome'),
(327, '2017-04-11 16:45:19', '36.88.158.84', 'Chrome'),
(328, '2017-04-11 16:45:38', '202.62.17.12', 'Chrome'),
(329, '2017-04-11 16:46:05', '182.253.163.51', 'Firefox'),
(330, '2017-04-11 16:46:11', '139.195.94.117', 'Chrome'),
(331, '2017-04-11 16:46:41', '114.4.83.68', 'Chrome'),
(332, '2017-04-11 16:47:30', '114.125.37.46', 'Safari'),
(333, '2017-04-11 16:47:32', '173.252.74.105', 'Other'),
(334, '2017-04-11 16:49:04', '112.215.200.30', 'Chrome'),
(335, '2017-04-11 16:50:22', '120.188.81.20', 'Chrome'),
(336, '2017-04-11 16:50:32', '120.188.33.140', 'Chrome'),
(337, '2017-04-11 16:51:06', '114.4.79.120', 'Chrome'),
(338, '2017-04-11 16:51:27', '139.194.221.74', 'Chrome'),
(339, '2017-04-11 16:51:29', '120.188.87.99', 'Firefox'),
(340, '2017-04-11 16:51:48', '36.73.62.30', 'Chrome'),
(341, '2017-04-11 16:51:53', '112.215.45.120', 'Firefox'),
(342, '2017-04-11 16:51:54', '112.215.153.184', 'Safari'),
(343, '2017-04-11 16:51:59', '36.78.67.111', 'Chrome'),
(344, '2017-04-11 16:52:31', '120.188.80.165', 'Chrome'),
(345, '2017-04-11 16:52:37', '61.94.100.166', 'Chrome'),
(346, '2017-04-11 16:52:48', '180.252.168.2', 'Chrome'),
(347, '2017-04-11 16:52:50', '36.84.64.22', 'Chrome'),
(348, '2017-04-11 16:52:56', '198.144.107.187', 'Chrome'),
(349, '2017-04-11 16:53:42', '120.188.80.158', 'Chrome'),
(350, '2017-04-11 16:54:47', '180.244.55.126', 'Chrome'),
(351, '2017-04-11 16:55:18', '107.167.112.118', 'Opera'),
(352, '2017-04-11 16:55:43', '36.73.63.156', 'Chrome'),
(353, '2017-04-11 16:56:44', '125.167.92.123', 'Safari'),
(354, '2017-04-11 16:58:15', '180.247.136.78', 'Chrome'),
(355, '2017-04-11 16:59:23', '114.124.148.228', 'Chrome'),
(356, '2017-04-11 16:59:44', '120.188.80.220', 'Chrome'),
(357, '2017-04-11 16:59:50', '180.248.179.126', 'Chrome'),
(358, '2017-04-11 17:00:03', '36.78.194.86', 'Chrome'),
(359, '2017-04-11 17:00:12', '202.67.46.46', 'Chrome'),
(360, '2017-04-11 17:00:34', '113.210.202.42', 'Chrome'),
(361, '2017-04-11 17:01:47', '114.120.233.30', 'Chrome'),
(362, '2017-04-11 17:02:34', '202.182.55.230', 'Chrome'),
(363, '2017-04-11 17:02:44', '180.244.73.72', 'Chrome'),
(364, '2017-04-11 17:03:16', '49.213.16.227', 'Chrome'),
(365, '2017-04-11 17:04:03', '36.73.177.201', 'Chrome'),
(366, '2017-04-11 17:04:12', '112.215.152.124', 'Chrome'),
(367, '2017-04-11 17:08:38', '120.188.0.47', 'Chrome'),
(368, '2017-04-11 17:09:43', '36.84.58.187', 'Chrome'),
(369, '2017-04-11 17:12:18', '111.94.229.133', 'Chrome'),
(370, '2017-04-11 17:12:31', '118.136.18.255', 'Chrome'),
(371, '2017-04-11 17:13:11', '36.74.212.125', 'Chrome'),
(372, '2017-04-11 17:13:20', '103.206.245.142', 'Chrome'),
(373, '2017-04-11 17:14:21', '36.71.129.27', 'Chrome'),
(374, '2017-04-11 17:18:44', '180.252.123.165', 'Chrome'),
(375, '2017-04-11 17:19:01', '180.253.138.223', 'Chrome'),
(376, '2017-04-11 17:19:11', '66.249.79.83', 'Googlebot'),
(377, '2017-04-11 17:19:27', '36.80.242.230', 'Chrome'),
(378, '2017-04-11 17:19:54', '223.255.231.154', 'Chrome'),
(379, '2017-04-11 17:19:55', '114.125.200.74', 'Chrome'),
(380, '2017-04-11 17:21:24', '66.249.79.78', 'Googlebot'),
(381, '2017-04-11 17:21:45', '114.4.83.180', 'Mozilla'),
(382, '2017-04-11 17:23:55', '139.192.11.235', 'Chrome'),
(383, '2017-04-11 17:24:10', '125.160.66.244', 'Firefox'),
(384, '2017-04-11 17:24:17', '112.215.170.139', 'Chrome'),
(385, '2017-04-11 17:25:01', '112.215.153.158', 'Safari'),
(386, '2017-04-11 17:25:29', '110.139.187.176', 'Chrome'),
(387, '2017-04-11 17:25:38', '111.94.122.151', 'Chrome'),
(388, '2017-04-11 17:25:46', '112.215.153.252', 'Chrome'),
(389, '2017-04-11 17:27:24', '112.215.170.48', 'Chrome'),
(390, '2017-04-11 17:28:36', '125.160.51.241', 'Chrome'),
(391, '2017-04-11 17:29:53', '66.249.79.85', 'Googlebot'),
(392, '2017-04-11 17:30:04', '120.188.83.178', 'Chrome'),
(393, '2017-04-11 17:30:26', '112.215.170.170', 'Chrome'),
(394, '2017-04-11 17:30:27', '139.228.17.159', 'Chrome'),
(395, '2017-04-11 17:30:32', '107.167.112.5', 'Opera'),
(396, '2017-04-11 17:31:33', '180.249.17.245', 'Chrome'),
(397, '2017-04-11 17:31:38', '182.253.163.14', 'Chrome'),
(398, '2017-04-11 17:32:08', '202.80.215.217', 'Chrome'),
(399, '2017-04-11 17:32:45', '120.188.95.126', 'Chrome'),
(400, '2017-04-11 17:32:55', '118.136.247.154', 'Firefox'),
(401, '2017-04-11 17:33:04', '66.102.6.211', 'Chrome'),
(402, '2017-04-11 17:33:04', '66.102.6.207', 'Chrome'),
(403, '2017-04-11 17:33:05', '66.102.6.209', 'Chrome'),
(404, '2017-04-11 17:34:10', '36.84.9.122', 'Firefox'),
(405, '2017-04-11 17:34:34', '120.188.94.195', 'Chrome'),
(406, '2017-04-11 17:34:55', '36.84.2.91', 'Chrome'),
(407, '2017-04-11 17:35:12', '125.164.16.170', 'Chrome'),
(408, '2017-04-11 17:35:35', '125.164.15.224', 'Chrome'),
(409, '2017-04-11 17:36:04', '114.125.70.243', 'Chrome'),
(410, '2017-04-11 17:36:29', '180.241.222.250', 'Chrome'),
(411, '2017-04-11 17:36:55', '112.215.44.57', 'Safari'),
(412, '2017-04-11 17:39:53', '114.4.82.125', 'Chrome'),
(413, '2017-04-11 17:39:58', '120.188.5.175', 'Chrome'),
(414, '2017-04-11 17:40:27', '103.233.157.202', 'Chrome'),
(415, '2017-04-11 17:44:13', '37.34.62.205', 'Other'),
(416, '2017-04-11 17:45:37', '120.188.32.191', 'Chrome'),
(417, '2017-04-11 17:46:53', '168.235.198.107', 'Safari'),
(418, '2017-04-11 17:47:00', '36.84.0.75', 'Chrome'),
(419, '2017-04-11 17:47:43', '182.253.163.7', 'Chrome'),
(420, '2017-04-11 17:47:49', '36.68.52.209', 'Safari'),
(421, '2017-04-11 17:48:03', '103.47.132.52', 'Chrome'),
(422, '2017-04-11 17:49:58', '36.66.211.11', 'Chrome'),
(423, '2017-04-11 17:50:12', '112.215.171.166', 'Chrome'),
(424, '2017-04-11 17:51:49', '103.4.167.243', 'Chrome'),
(425, '2017-04-11 17:51:51', '120.188.85.6', 'Chrome'),
(426, '2017-04-11 17:52:02', '120.188.81.83', 'Chrome'),
(427, '2017-04-11 17:52:52', '120.188.83.233', 'Chrome'),
(428, '2017-04-11 17:53:37', '125.165.48.195', 'Firefox'),
(429, '2017-04-11 17:54:20', '203.130.236.249', 'Chrome'),
(430, '2017-04-11 17:54:28', '115.178.238.196', 'Mozilla'),
(431, '2017-04-11 17:54:49', '202.179.189.74', 'Mozilla'),
(432, '2017-04-11 17:56:50', '182.253.62.114', 'Chrome'),
(433, '2017-04-11 17:57:37', '112.215.154.28', 'Chrome'),
(434, '2017-04-11 17:57:53', '110.137.169.204', 'Chrome'),
(435, '2017-04-11 17:57:56', '223.255.227.26', 'Chrome'),
(436, '2017-04-11 17:58:01', '112.215.63.20', 'Chrome'),
(437, '2017-04-11 17:58:46', '139.194.53.216', 'Chrome'),
(438, '2017-04-11 17:59:15', '27.50.17.11', 'Chrome'),
(439, '2017-04-11 17:59:34', '182.253.163.50', 'Firefox'),
(440, '2017-04-11 17:59:47', '36.76.123.254', 'Chrome'),
(441, '2017-04-11 18:00:20', '103.47.132.22', 'Chrome'),
(442, '2017-04-11 18:00:30', '8.37.233.83', 'Safari'),
(443, '2017-04-11 18:00:46', '114.125.180.165', 'Chrome'),
(444, '2017-04-11 18:01:39', '180.252.143.230', 'Chrome'),
(445, '2017-04-11 18:01:45', '163.53.185.146', 'Chrome'),
(446, '2017-04-11 18:02:33', '114.125.207.121', 'Chrome'),
(447, '2017-04-11 18:02:40', '36.72.9.120', 'Chrome'),
(448, '2017-04-11 18:04:44', '61.5.60.185', 'Chrome'),
(449, '2017-04-11 18:04:46', '36.80.153.97', 'Chrome'),
(450, '2017-04-11 18:05:41', '180.252.239.223', 'Chrome'),
(451, '2017-04-11 18:07:10', '120.188.33.120', 'Chrome'),
(452, '2017-04-11 18:07:10', '118.97.50.22', 'Chrome'),
(453, '2017-04-11 18:08:05', '118.97.50.23', 'Chrome'),
(454, '2017-04-11 18:09:09', '36.84.229.118', 'Chrome'),
(455, '2017-04-11 18:09:12', '114.125.11.225', 'Chrome'),
(456, '2017-04-11 18:09:49', '182.23.59.66', 'Firefox'),
(457, '2017-04-11 18:10:16', '118.97.50.24', 'Chrome'),
(458, '2017-04-11 18:10:59', '175.111.91.19', 'Firefox'),
(459, '2017-04-11 18:11:01', '121.101.131.66', 'Chrome'),
(460, '2017-04-11 18:11:16', '2.235.170.197', 'Chrome'),
(461, '2017-04-11 18:11:43', '180.247.185.142', 'Chrome'),
(462, '2017-04-11 18:12:38', '36.80.179.43', 'Firefox'),
(463, '2017-04-11 18:12:53', '36.75.240.166', 'Chrome'),
(464, '2017-04-11 18:13:31', '118.97.241.130', 'Chrome'),
(465, '2017-04-11 18:13:31', '101.128.85.22', 'Chrome'),
(466, '2017-04-11 18:13:48', '182.253.122.110', 'Chrome'),
(467, '2017-04-11 18:14:31', '120.188.65.57', 'Chrome'),
(468, '2017-04-11 18:14:38', '115.164.60.248', 'Chrome'),
(469, '2017-04-11 18:14:42', '180.250.206.226', 'Chrome'),
(470, '2017-04-11 18:15:06', '125.165.103.49', 'Chrome'),
(471, '2017-04-11 18:15:25', '104.237.243.90', 'Firefox'),
(472, '2017-04-11 18:15:30', '180.254.241.158', 'Chrome'),
(473, '2017-04-11 18:15:50', '36.85.5.162', 'Chrome'),
(474, '2017-04-11 18:15:56', '120.188.67.11', 'Chrome'),
(475, '2017-04-11 18:15:58', '38.80.23.2', 'Firefox'),
(476, '2017-04-11 18:16:01', '61.94.194.3', 'Chrome'),
(477, '2017-04-11 18:16:02', '222.124.22.228', 'Chrome'),
(478, '2017-04-11 18:16:07', '180.178.93.249', 'Chrome'),
(479, '2017-04-11 18:16:32', '36.80.213.229', 'Chrome'),
(480, '2017-04-11 18:17:27', '175.184.250.82', 'Chrome'),
(481, '2017-04-11 18:17:56', '103.31.109.2', 'Chrome'),
(482, '2017-04-11 18:18:11', '168.235.202.213', 'Safari'),
(483, '2017-04-11 18:18:43', '120.188.85.102', 'Chrome'),
(484, '2017-04-11 18:18:49', '61.5.84.239', 'Chrome'),
(485, '2017-04-11 18:18:51', '36.73.220.140', 'Chrome'),
(486, '2017-04-11 18:18:57', '180.247.181.120', 'Chrome'),
(487, '2017-04-11 18:19:50', '36.73.22.116', 'Chrome'),
(488, '2017-04-11 18:21:09', '36.84.229.80', 'Chrome'),
(489, '2017-04-11 18:21:23', '120.188.67.170', 'Chrome'),
(490, '2017-04-11 18:21:24', '36.85.13.189', 'Chrome'),
(491, '2017-04-11 18:22:18', '66.96.246.66', 'Chrome'),
(492, '2017-04-11 18:22:48', '111.68.27.251', 'Chrome'),
(493, '2017-04-11 18:23:31', '202.80.212.117', 'Chrome'),
(494, '2017-04-11 18:23:59', '112.215.171.69', 'Mozilla'),
(495, '2017-04-11 18:24:35', '222.124.214.250', 'Chrome'),
(496, '2017-04-11 18:24:53', '140.0.203.15', 'Chrome'),
(497, '2017-04-11 18:24:58', '116.254.126.142', 'Chrome'),
(498, '2017-04-11 18:25:13', '120.188.66.255', 'Chrome'),
(499, '2017-04-11 18:25:33', '168.235.194.213', 'Safari'),
(500, '2017-04-11 18:25:48', '114.125.9.160', 'Safari'),
(501, '2017-04-11 18:25:54', '112.215.201.184', 'Safari'),
(502, '2017-04-11 18:25:57', '125.163.255.80', 'Chrome'),
(503, '2017-04-11 18:26:09', '168.235.200.204', 'Safari'),
(504, '2017-04-11 18:26:37', '128.199.233.142', 'Safari'),
(505, '2017-04-11 18:28:11', '112.215.154.169', 'Firefox'),
(506, '2017-04-11 18:28:25', '168.235.195.242', 'Safari'),
(507, '2017-04-11 18:29:06', '223.25.97.210', 'Chrome'),
(508, '2017-04-11 18:30:24', '203.176.183.20', 'Chrome'),
(509, '2017-04-11 18:30:50', '180.253.126.127', 'Chrome'),
(510, '2017-04-11 18:31:06', '36.78.129.171', 'Chrome'),
(511, '2017-04-11 18:33:51', '14.102.152.234', 'Chrome'),
(512, '2017-04-11 18:34:09', '8.37.230.53', 'Safari'),
(513, '2017-04-11 18:34:27', '112.215.172.183', 'Chrome'),
(514, '2017-04-11 18:35:45', '112.215.65.96', 'Safari'),
(515, '2017-04-11 18:36:42', '110.5.102.56', 'Chrome'),
(516, '2017-04-11 18:37:05', '114.121.246.246', 'Chrome'),
(517, '2017-04-11 18:37:17', '110.139.27.171', 'Chrome'),
(518, '2017-04-11 18:39:05', '120.188.65.207', 'Chrome'),
(519, '2017-04-11 18:39:31', '180.254.64.231', 'Chrome'),
(520, '2017-04-11 18:39:34', '202.133.6.54', 'Chrome'),
(521, '2017-04-11 18:40:40', '36.68.41.249', 'Chrome'),
(522, '2017-04-11 18:43:08', '125.163.57.73', 'Chrome'),
(523, '2017-04-11 18:44:21', '114.121.157.148', 'Chrome'),
(524, '2017-04-11 18:44:46', '140.0.229.214', 'Chrome'),
(525, '2017-04-11 18:46:15', '103.55.216.76', 'Firefox'),
(526, '2017-04-11 18:47:25', '120.188.4.116', 'Chrome'),
(527, '2017-04-11 18:48:03', '202.124.205.203', 'Mozilla'),
(528, '2017-04-11 18:48:11', '202.80.212.84', 'Chrome'),
(529, '2017-04-11 18:48:52', '36.74.26.7', 'Chrome'),
(530, '2017-04-11 18:48:52', '210.57.215.142', 'Chrome'),
(531, '2017-04-11 18:48:56', '202.43.183.130', 'Chrome'),
(532, '2017-04-11 18:49:16', '61.94.50.125', 'Chrome'),
(533, '2017-04-11 18:50:14', '139.192.185.41', 'Chrome'),
(534, '2017-04-11 18:50:46', '36.72.118.174', 'Chrome'),
(535, '2017-04-11 18:51:16', '118.136.225.170', 'Chrome'),
(536, '2017-04-11 18:51:48', '202.67.46.40', 'Chrome'),
(537, '2017-04-11 18:52:04', '182.253.33.51', 'Firefox'),
(538, '2017-04-11 18:52:06', '180.254.26.52', 'Chrome'),
(539, '2017-04-11 18:52:07', '36.66.168.63', 'Chrome'),
(540, '2017-04-11 18:52:24', '112.215.45.116', 'Firefox'),
(541, '2017-04-11 18:52:52', '112.215.172.67', 'Chrome'),
(542, '2017-04-11 18:54:21', '180.245.67.128', 'Chrome'),
(543, '2017-04-11 18:55:01', '36.83.178.178', 'Chrome'),
(544, '2017-04-11 18:55:10', '118.96.213.178', 'Firefox'),
(545, '2017-04-11 18:56:30', '114.125.170.252', 'Chrome'),
(546, '2017-04-11 18:56:43', '124.153.32.100', 'Chrome'),
(547, '2017-04-11 18:57:11', '120.188.74.139', 'Mozilla'),
(548, '2017-04-11 18:57:47', '124.153.33.42', 'Mozilla'),
(549, '2017-04-11 18:58:44', '36.78.128.112', 'Firefox'),
(550, '2017-04-11 18:59:10', '103.228.26.4', 'Chrome'),
(551, '2017-04-11 19:00:17', '36.82.101.17', 'Chrome'),
(552, '2017-04-11 19:01:21', '139.0.54.49', 'Chrome'),
(553, '2017-04-11 19:01:23', '180.252.103.36', 'Mozilla'),
(554, '2017-04-11 19:01:33', '117.102.64.82', 'Firefox'),
(555, '2017-04-11 19:03:59', '202.67.44.8', 'Chrome'),
(556, '2017-04-11 19:04:16', '114.125.26.15', 'Chrome'),
(557, '2017-04-11 19:04:23', '180.246.224.105', 'Chrome'),
(558, '2017-04-11 19:05:05', '112.215.170.35', 'Mozilla'),
(559, '2017-04-11 19:05:33', '180.251.217.107', 'Chrome'),
(560, '2017-04-11 19:06:35', '36.84.39.119', 'Chrome'),
(561, '2017-04-11 19:07:10', '103.241.206.74', 'Chrome'),
(562, '2017-04-11 19:08:18', '203.160.128.8', 'Chrome'),
(563, '2017-04-11 19:09:24', '36.71.230.230', 'Chrome'),
(564, '2017-04-11 19:09:33', '118.136.40.213', 'Chrome'),
(565, '2017-04-11 19:10:26', '8.37.225.146', 'Firefox'),
(566, '2017-04-11 19:10:27', '180.251.6.162', 'Chrome'),
(567, '2017-04-11 19:10:34', '112.215.201.35', 'Chrome'),
(568, '2017-04-11 19:10:40', '120.188.64.132', 'Chrome'),
(569, '2017-04-11 19:11:13', '112.215.151.179', 'Chrome'),
(570, '2017-04-11 19:11:34', '107.167.99.205', 'Opera'),
(571, '2017-04-11 19:11:48', '210.211.18.82', 'Chrome'),
(572, '2017-04-11 19:11:51', '112.215.174.151', 'Chrome'),
(573, '2017-04-11 19:12:02', '120.188.73.159', 'Chrome'),
(574, '2017-04-11 19:13:39', '36.81.46.228', 'Chrome'),
(575, '2017-04-11 19:15:31', '36.77.89.224', 'Chrome'),
(576, '2017-04-11 19:16:10', '107.167.112.144', 'Chrome'),
(577, '2017-04-11 19:16:23', '125.165.178.198', 'Firefox'),
(578, '2017-04-11 19:16:50', '139.192.58.131', 'Chrome'),
(579, '2017-04-11 19:16:54', '36.69.12.48', 'Chrome'),
(580, '2017-04-11 19:17:14', '202.179.190.162', 'Chrome'),
(581, '2017-04-11 19:17:26', '36.78.33.42', 'Chrome'),
(582, '2017-04-11 19:17:48', '103.213.131.160', 'Chrome'),
(583, '2017-04-11 19:17:55', '36.85.24.1', 'Mozilla'),
(584, '2017-04-11 19:18:13', '202.158.89.154', 'Chrome'),
(585, '2017-04-11 19:19:02', '36.70.91.134', 'Firefox'),
(586, '2017-04-11 19:19:15', '114.125.30.235', 'Chrome'),
(587, '2017-04-11 19:19:52', '125.163.174.117', 'Chrome'),
(588, '2017-04-11 19:20:01', '103.17.246.48', 'Firefox'),
(589, '2017-04-11 19:21:22', '36.88.134.156', 'Chrome'),
(590, '2017-04-11 19:22:53', '120.188.5.152', 'Mozilla'),
(591, '2017-04-11 19:23:28', '114.124.33.225', 'Chrome'),
(592, '2017-04-11 19:23:44', '112.215.200.147', 'Chrome'),
(593, '2017-04-11 19:24:23', '180.253.125.143', 'Chrome'),
(594, '2017-04-11 19:24:30', '36.69.83.3', 'Chrome'),
(595, '2017-04-11 19:25:24', '36.68.118.78', 'Firefox'),
(596, '2017-04-11 19:25:36', '180.245.99.108', 'Chrome'),
(597, '2017-04-11 19:26:15', '8.37.225.106', 'Firefox'),
(598, '2017-04-11 19:26:16', '58.10.55.252', 'Chrome'),
(599, '2017-04-11 19:27:07', '36.73.65.61', 'Firefox'),
(600, '2017-04-11 19:27:18', '202.62.18.53', 'Chrome'),
(601, '2017-04-11 19:27:39', '180.243.101.157', 'Chrome'),
(602, '2017-04-11 19:29:40', '180.249.209.233', 'Chrome'),
(603, '2017-04-11 19:31:13', '120.188.7.226', 'Chrome'),
(604, '2017-04-11 19:31:29', '36.85.139.235', 'Firefox'),
(605, '2017-04-11 19:32:43', '203.142.64.87', 'Chrome'),
(606, '2017-04-11 19:33:19', '107.167.112.181', 'Opera'),
(607, '2017-04-11 19:34:05', '182.253.73.4', 'Firefox'),
(608, '2017-04-11 19:34:16', '110.136.57.170', 'Chrome'),
(609, '2017-04-11 19:38:24', '112.215.200.152', 'Mozilla'),
(610, '2017-04-11 19:38:37', '168.235.205.184', 'Safari'),
(611, '2017-04-11 19:39:48', '125.164.109.171', 'Chrome'),
(612, '2017-04-11 19:39:50', '36.73.58.152', 'Chrome'),
(613, '2017-04-11 19:40:16', '202.62.16.15', 'Chrome'),
(614, '2017-04-11 19:41:57', '36.73.54.54', 'Chrome'),
(615, '2017-04-11 19:42:26', '36.80.151.109', 'Firefox'),
(616, '2017-04-11 19:43:14', '202.67.40.199', 'Chrome'),
(617, '2017-04-11 19:43:29', '114.4.83.133', 'Chrome'),
(618, '2017-04-11 19:43:31', '173.193.202.116', 'Firefox'),
(619, '2017-04-11 19:44:18', '202.62.16.181', 'Chrome'),
(620, '2017-04-11 19:45:13', '167.114.233.118', 'Firefox'),
(621, '2017-04-11 19:45:30', '180.241.24.74', 'Chrome'),
(622, '2017-04-11 19:47:01', '125.166.212.190', 'Chrome'),
(623, '2017-04-11 19:47:21', '180.241.179.220', 'Chrome'),
(624, '2017-04-11 19:47:27', '125.167.75.246', 'Chrome'),
(625, '2017-04-11 19:47:48', '168.235.194.226', 'Safari'),
(626, '2017-04-11 19:52:01', '118.97.137.170', 'Chrome'),
(627, '2017-04-11 19:52:53', '180.247.208.196', 'Chrome'),
(628, '2017-04-11 19:54:25', '103.9.124.211', 'Chrome'),
(629, '2017-04-11 19:56:29', '120.188.94.118', 'Chrome'),
(630, '2017-04-11 19:56:33', '36.73.12.186', 'Firefox'),
(631, '2017-04-11 19:56:44', '36.66.254.39', 'Firefox'),
(632, '2017-04-11 19:57:28', '120.188.81.56', 'Chrome'),
(633, '2017-04-11 19:59:02', '36.82.7.245', 'Chrome'),
(634, '2017-04-11 19:59:36', '103.212.43.138', 'Chrome'),
(635, '2017-04-11 20:00:38', '139.193.114.21', 'Chrome'),
(636, '2017-04-11 20:00:50', '112.215.175.249', 'Firefox'),
(637, '2017-04-11 20:01:24', '120.188.33.237', 'Chrome'),
(638, '2017-04-11 20:01:53', '36.80.106.53', 'Chrome'),
(639, '2017-04-11 20:02:10', '36.84.0.88', 'Firefox'),
(640, '2017-04-11 20:03:00', '103.57.192.122', 'Chrome'),
(641, '2017-04-11 20:04:55', '36.72.190.47', 'Firefox'),
(642, '2017-04-11 20:06:41', '125.163.105.25', 'Chrome'),
(643, '2017-04-11 20:07:06', '115.178.234.139', 'Mozilla'),
(644, '2017-04-11 20:07:31', '114.120.234.114', 'Mozilla'),
(645, '2017-04-11 20:08:50', '202.67.46.227', 'Chrome'),
(646, '2017-04-11 20:09:22', '36.77.160.216', 'Chrome'),
(647, '2017-04-11 20:10:14', '139.193.15.145', 'Chrome'),
(648, '2017-04-11 20:10:47', '112.215.172.245', 'Chrome'),
(649, '2017-04-11 20:10:50', '207.241.226.232', 'Mozilla'),
(650, '2017-04-11 20:11:07', '120.188.0.239', 'Chrome'),
(651, '2017-04-11 20:11:09', '180.251.99.141', 'Chrome'),
(652, '2017-04-11 20:11:13', '125.162.56.58', 'Chrome'),
(653, '2017-04-11 20:11:39', '36.72.50.199', 'Chrome'),
(654, '2017-04-11 20:12:20', '139.194.66.128', 'Chrome'),
(655, '2017-04-11 20:12:55', '36.78.127.45', 'Firefox'),
(656, '2017-04-11 20:13:00', '36.74.170.244', 'Chrome'),
(657, '2017-04-11 20:13:59', '36.83.123.80', 'Chrome'),
(658, '2017-04-11 20:14:36', '36.84.13.207', 'Chrome'),
(659, '2017-04-11 20:14:50', '112.198.68.78', 'Chrome'),
(660, '2017-04-11 20:15:20', '180.251.88.168', 'Firefox'),
(661, '2017-04-11 20:15:32', '119.110.69.226', 'Chrome'),
(662, '2017-04-11 20:16:00', '36.85.65.250', 'Chrome'),
(663, '2017-04-11 20:16:43', '112.78.141.82', 'Firefox'),
(664, '2017-04-11 20:16:57', '125.163.59.51', 'Chrome'),
(665, '2017-04-11 20:17:19', '116.197.132.78', 'Firefox'),
(666, '2017-04-11 20:17:39', '120.188.67.180', 'Chrome'),
(667, '2017-04-11 20:18:27', '114.4.83.35', 'Chrome'),
(668, '2017-04-11 20:18:28', '125.162.19.20', 'Firefox'),
(669, '2017-04-11 20:18:29', '182.253.3.140', 'Chrome'),
(670, '2017-04-11 20:21:45', '36.78.130.219', 'Firefox'),
(671, '2017-04-11 20:24:05', '180.246.25.27', 'Firefox'),
(672, '2017-04-11 20:25:03', '202.150.146.82', 'Chrome'),
(673, '2017-04-11 20:25:05', '125.162.222.87', 'Mozilla'),
(674, '2017-04-11 20:25:34', '120.188.86.20', 'Chrome'),
(675, '2017-04-11 20:25:43', '125.163.109.106', 'Chrome'),
(676, '2017-04-11 20:26:12', '120.188.81.160', 'Chrome'),
(677, '2017-04-11 20:29:23', '175.111.89.10', 'Chrome'),
(678, '2017-04-11 20:30:27', '114.121.245.17', 'Mozilla'),
(679, '2017-04-11 20:32:54', '110.139.200.11', 'Chrome'),
(680, '2017-04-11 20:33:00', '114.125.52.89', 'Chrome'),
(681, '2017-04-11 20:33:25', '36.74.177.233', 'Chrome'),
(682, '2017-04-11 20:33:44', '180.254.162.29', 'Firefox'),
(683, '2017-04-11 20:33:53', '125.160.100.4', 'Chrome'),
(684, '2017-04-11 20:34:59', '202.77.111.104', 'Chrome'),
(685, '2017-04-11 20:35:16', '36.69.153.83', 'Chrome'),
(686, '2017-04-11 20:35:19', '180.254.13.225', 'Chrome'),
(687, '2017-04-11 20:35:24', '180.251.214.117', 'Chrome'),
(688, '2017-04-11 20:35:27', '36.74.134.188', 'Chrome'),
(689, '2017-04-11 20:35:41', '107.167.103.167', 'Opera'),
(690, '2017-04-11 20:36:56', '139.193.222.23', 'Chrome'),
(691, '2017-04-11 20:36:59', '182.253.72.87', 'Chrome'),
(692, '2017-04-11 20:37:10', '101.255.64.210', 'Chrome'),
(693, '2017-04-11 20:38:20', '36.69.60.79', 'Chrome'),
(694, '2017-04-11 20:38:34', '36.84.229.27', 'Firefox'),
(695, '2017-04-11 20:41:28', '202.62.16.239', 'Firefox'),
(696, '2017-04-11 20:41:42', '36.81.58.185', 'Chrome'),
(697, '2017-04-11 20:41:44', '112.215.152.52', 'Chrome'),
(698, '2017-04-11 20:42:08', '36.74.224.172', 'Chrome'),
(699, '2017-04-11 20:42:11', '112.215.200.247', 'Mozilla'),
(700, '2017-04-11 20:42:34', '112.215.153.115', 'Chrome'),
(701, '2017-04-11 20:42:58', '223.164.0.178', 'Chrome'),
(702, '2017-04-11 20:42:58', '36.72.62.17', 'Chrome'),
(703, '2017-04-11 20:43:38', '103.209.131.44', 'Firefox'),
(704, '2017-04-11 20:43:43', '139.195.33.29', 'Chrome'),
(705, '2017-04-11 20:44:51', '103.61.248.82', 'Chrome'),
(706, '2017-04-11 20:46:50', '175.103.43.86', 'Chrome'),
(707, '2017-04-11 20:47:49', '120.188.94.79', 'Chrome'),
(708, '2017-04-11 20:47:53', '202.169.46.130', 'Chrome'),
(709, '2017-04-11 20:48:37', '158.140.170.38', 'Chrome'),
(710, '2017-04-11 20:49:55', '180.245.193.140', 'Chrome'),
(711, '2017-04-11 20:50:24', '180.246.157.179', 'Chrome'),
(712, '2017-04-11 20:51:51', '36.76.23.139', 'Chrome'),
(713, '2017-04-11 20:52:06', '202.67.41.213', 'Chrome'),
(714, '2017-04-11 20:52:34', '36.78.163.149', 'Chrome'),
(715, '2017-04-11 20:53:12', '158.140.166.0', 'Chrome'),
(716, '2017-04-11 20:55:36', '207.244.86.209', 'Chrome'),
(717, '2017-04-11 20:56:35', '120.188.79.122', 'Chrome'),
(718, '2017-04-11 20:58:11', '36.73.104.74', 'Chrome'),
(719, '2017-04-11 20:58:21', '222.124.22.251', 'Firefox'),
(720, '2017-04-11 20:58:32', '120.188.93.249', 'Chrome'),
(721, '2017-04-11 21:02:03', '120.188.33.199', 'Chrome'),
(722, '2017-04-11 21:02:06', '125.161.64.96', 'Chrome'),
(723, '2017-04-11 21:03:41', '182.253.122.125', 'Chrome'),
(724, '2017-04-11 21:04:06', '36.68.234.47', 'Chrome'),
(725, '2017-04-11 21:04:33', '36.72.94.211', 'Chrome'),
(726, '2017-04-11 21:04:48', '125.163.125.211', 'Chrome'),
(727, '2017-04-11 21:04:52', '180.248.243.155', 'Chrome'),
(728, '2017-04-11 21:04:58', '182.253.34.175', 'Mozilla'),
(729, '2017-04-11 21:05:28', '103.24.49.225', 'Chrome'),
(730, '2017-04-11 21:06:42', '180.248.250.226', 'Chrome'),
(731, '2017-04-11 21:09:06', '36.84.157.255', 'Chrome'),
(732, '2017-04-11 21:09:09', '202.152.156.210', 'Firefox'),
(733, '2017-04-11 21:09:41', '114.125.53.87', 'Chrome'),
(734, '2017-04-11 21:09:43', '120.188.7.170', 'Chrome'),
(735, '2017-04-11 21:11:29', '152.118.148.226', 'Internet Explorer'),
(736, '2017-04-11 21:11:43', '182.253.188.125', 'Chrome'),
(737, '2017-04-11 21:12:47', '5.254.97.108', 'Chrome'),
(738, '2017-04-11 21:13:23', '120.188.3.109', 'Chrome'),
(739, '2017-04-11 21:14:38', '180.246.199.52', 'Chrome'),
(740, '2017-04-11 21:15:05', '210.211.17.14', 'Chrome'),
(741, '2017-04-11 21:15:59', '36.82.201.211', 'Chrome'),
(742, '2017-04-11 21:16:14', '103.23.102.111', 'Chrome'),
(743, '2017-04-11 21:17:19', '36.81.75.68', 'Chrome'),
(744, '2017-04-11 21:18:59', '114.125.39.153', 'Chrome'),
(745, '2017-04-11 21:20:34', '222.124.52.127', 'Chrome'),
(746, '2017-04-11 21:21:13', '180.248.199.49', 'Chrome'),
(747, '2017-04-11 21:22:00', '125.163.114.139', 'Chrome'),
(748, '2017-04-11 21:25:37', '107.167.99.151', 'Opera'),
(749, '2017-04-11 21:26:05', '114.125.116.95', 'Chrome'),
(750, '2017-04-11 21:26:49', '202.62.18.115', 'Chrome'),
(751, '2017-04-11 21:26:50', '61.8.69.82', 'Chrome'),
(752, '2017-04-11 21:28:31', '113.161.224.83', 'Chrome'),
(753, '2017-04-11 21:28:45', '103.47.132.24', 'Chrome'),
(754, '2017-04-11 21:29:03', '120.188.64.12', 'Chrome'),
(755, '2017-04-11 21:30:03', '103.47.134.26', 'Chrome'),
(756, '2017-04-11 21:30:29', '202.9.85.34', 'Chrome'),
(757, '2017-04-11 21:31:59', '182.253.62.142', 'Chrome'),
(758, '2017-04-11 21:32:07', '36.88.45.251', 'Chrome'),
(759, '2017-04-11 21:32:24', '114.121.133.17', 'Mozilla'),
(760, '2017-04-11 21:33:18', '190.233.193.231', 'Chrome'),
(761, '2017-04-11 21:33:41', '202.80.215.57', 'Chrome'),
(762, '2017-04-11 21:34:18', '115.178.216.124', 'Chrome'),
(763, '2017-04-11 21:37:01', '222.165.226.122', 'Firefox'),
(764, '2017-04-11 21:38:07', '36.82.13.155', 'Chrome'),
(765, '2017-04-11 21:38:30', '202.182.59.185', 'Firefox'),
(766, '2017-04-11 21:38:42', '103.21.206.66', 'Chrome'),
(767, '2017-04-11 21:39:14', '36.69.87.71', 'Chrome'),
(768, '2017-04-11 21:39:42', '43.247.13.202', 'Chrome'),
(769, '2017-04-11 21:40:08', '66.102.7.143', 'Chrome'),
(770, '2017-04-11 21:43:21', '168.235.195.74', 'Safari'),
(771, '2017-04-11 21:44:11', '103.8.12.99', 'Chrome'),
(772, '2017-04-11 21:44:14', '180.252.137.203', 'Chrome'),
(773, '2017-04-11 21:44:27', '36.87.53.20', 'Safari'),
(774, '2017-04-11 21:45:06', '114.125.87.178', 'Chrome'),
(775, '2017-04-11 21:46:04', '158.140.172.34', 'Chrome'),
(776, '2017-04-11 21:46:12', '61.94.132.66', 'Chrome'),
(777, '2017-04-11 21:47:36', '101.255.60.254', 'Chrome'),
(778, '2017-04-11 21:49:09', '36.74.102.19', 'Chrome'),
(779, '2017-04-11 21:49:42', '180.246.244.93', 'Chrome'),
(780, '2017-04-11 21:49:52', '118.97.151.193', 'Firefox'),
(781, '2017-04-11 21:50:01', '117.102.122.242', 'Chrome'),
(782, '2017-04-11 21:50:51', '36.71.249.134', 'Chrome'),
(783, '2017-04-11 21:51:54', '112.215.171.45', 'Chrome'),
(784, '2017-04-11 21:52:18', '103.241.5.116', 'Chrome'),
(785, '2017-04-11 21:52:31', '36.78.103.212', 'Chrome'),
(786, '2017-04-11 21:53:09', '36.72.80.127', 'Chrome'),
(787, '2017-04-11 21:54:12', '36.78.123.228', 'Chrome'),
(788, '2017-04-11 21:54:16', '36.68.235.225', 'Chrome'),
(789, '2017-04-11 21:54:37', '125.161.181.154', 'Firefox'),
(790, '2017-04-11 21:55:13', '36.80.164.131', 'Chrome'),
(791, '2017-04-11 21:56:15', '180.245.211.69', 'Chrome'),
(792, '2017-04-11 21:56:16', '125.167.186.204', 'Chrome'),
(793, '2017-04-11 21:57:34', '114.125.119.153', 'Chrome'),
(794, '2017-04-11 21:59:59', '114.121.234.35', 'Chrome'),
(795, '2017-04-11 22:02:26', '107.167.103.67', 'Opera'),
(796, '2017-04-11 22:02:47', '36.80.9.250', 'Chrome'),
(797, '2017-04-11 22:02:50', '36.88.62.43', 'Chrome'),
(798, '2017-04-11 22:02:57', '114.125.184.105', 'Chrome'),
(799, '2017-04-11 22:03:07', '185.182.81.53', 'Chrome'),
(800, '2017-04-11 22:04:44', '66.102.7.141', 'Chrome'),
(801, '2017-04-11 22:04:57', '36.88.158.219', 'Chrome'),
(802, '2017-04-11 22:06:25', '36.73.34.208', 'Chrome'),
(803, '2017-04-11 22:07:58', '36.74.20.46', 'Chrome'),
(804, '2017-04-11 22:08:28', '36.82.100.128', 'Chrome'),
(805, '2017-04-11 22:09:30', '112.215.65.245', 'Chrome'),
(806, '2017-04-11 22:09:42', '114.4.78.119', 'Chrome'),
(807, '2017-04-11 22:09:46', '110.137.171.177', 'Chrome'),
(808, '2017-04-11 22:09:47', '140.0.198.87', 'Mozilla'),
(809, '2017-04-11 22:10:20', '103.47.134.18', 'Chrome'),
(810, '2017-04-11 22:10:43', '36.66.46.34', 'Chrome'),
(811, '2017-04-11 22:11:32', '180.246.96.230', 'Chrome'),
(812, '2017-04-11 22:13:26', '146.185.31.213', 'Firefox'),
(813, '2017-04-11 22:18:49', '163.53.186.186', 'Firefox'),
(814, '2017-04-11 22:19:24', '202.62.16.98', 'Chrome'),
(815, '2017-04-11 22:21:09', '36.70.200.11', 'Chrome'),
(816, '2017-04-11 22:24:10', '112.215.45.58', 'Chrome'),
(817, '2017-04-11 22:25:14', '66.96.234.91', 'Chrome'),
(818, '2017-04-11 22:25:55', '103.66.199.34', 'Chrome'),
(819, '2017-04-11 22:26:53', '182.253.163.82', 'Chrome'),
(820, '2017-04-11 22:28:37', '103.3.44.1', 'Chrome'),
(821, '2017-04-11 22:29:22', '36.88.90.200', 'Chrome'),
(822, '2017-04-11 22:30:19', '180.254.255.166', 'Chrome'),
(823, '2017-04-11 22:30:24', '115.178.200.226', 'Chrome'),
(824, '2017-04-11 22:30:45', '120.188.1.120', 'Chrome'),
(825, '2017-04-11 22:32:14', '103.195.142.26', 'Chrome'),
(826, '2017-04-11 22:33:33', '120.188.0.9', 'Firefox'),
(827, '2017-04-11 22:35:18', '120.188.81.213', 'Chrome'),
(828, '2017-04-11 22:36:20', '182.253.131.41', 'Mozilla'),
(829, '2017-04-11 22:36:24', '8.37.234.123', 'Chrome'),
(830, '2017-04-11 22:36:27', '36.72.34.63', 'Chrome'),
(831, '2017-04-11 22:36:36', '115.178.239.80', 'Chrome'),
(832, '2017-04-11 22:36:54', '103.58.111.34', 'Chrome'),
(833, '2017-04-11 22:38:16', '8.37.225.224', 'Firefox'),
(834, '2017-04-11 22:38:19', '112.215.200.93', 'Chrome'),
(835, '2017-04-11 22:39:20', '120.188.92.156', 'Chrome'),
(836, '2017-04-11 22:39:27', '114.125.103.119', 'Chrome'),
(837, '2017-04-11 22:40:08', '107.167.112.73', 'Chrome'),
(838, '2017-04-11 22:42:02', '120.188.66.2', 'Chrome'),
(839, '2017-04-11 22:42:44', '36.72.134.144', 'Chrome'),
(840, '2017-04-11 22:43:13', '36.66.215.5', 'Firefox'),
(841, '2017-04-11 22:44:26', '114.125.101.241', 'Chrome'),
(842, '2017-04-11 22:45:36', '182.253.37.186', 'Firefox'),
(843, '2017-04-11 22:46:05', '114.125.117.183', 'Chrome'),
(844, '2017-04-11 22:46:05', '114.125.101.71', 'Chrome'),
(845, '2017-04-11 22:46:05', '114.125.101.255', 'Chrome'),
(846, '2017-04-11 22:47:28', '114.124.34.31', 'Mozilla'),
(847, '2017-04-11 22:48:28', '202.62.17.122', 'Chrome'),
(848, '2017-04-11 22:48:41', '139.192.131.90', 'Chrome'),
(849, '2017-04-11 22:52:52', '120.188.3.158', 'Chrome'),
(850, '2017-04-11 22:53:10', '200.77.128.224', 'Mozilla'),
(851, '2017-04-11 22:54:26', '112.215.151.215', 'Chrome'),
(852, '2017-04-11 22:55:40', '114.4.82.59', 'Chrome'),
(853, '2017-04-11 22:55:50', '36.79.229.121', 'Chrome'),
(854, '2017-04-11 22:57:41', '118.136.224.179', 'Chrome'),
(855, '2017-04-11 23:00:38', '202.67.41.242', 'Chrome'),
(856, '2017-04-11 23:01:11', '36.77.191.150', 'Mozilla'),
(857, '2017-04-11 23:01:26', '125.166.214.129', 'Chrome'),
(858, '2017-04-11 23:03:25', '202.93.231.81', 'Chrome'),
(859, '2017-04-11 23:03:40', '36.68.69.52', 'Chrome'),
(860, '2017-04-11 23:03:59', '112.215.152.222', 'Chrome'),
(861, '2017-04-11 23:04:55', '36.79.42.167', 'Chrome'),
(862, '2017-04-11 23:05:30', '103.47.134.3', 'Chrome'),
(863, '2017-04-11 23:10:29', '139.59.96.104', 'Chrome'),
(864, '2017-04-11 23:11:56', '36.73.101.192', 'Firefox'),
(865, '2017-04-11 23:12:39', '180.252.110.204', 'Chrome'),
(866, '2017-04-11 23:14:25', '36.84.224.105', 'Firefox'),
(867, '2017-04-11 23:15:20', '112.215.172.91', 'Chrome'),
(868, '2017-04-11 23:15:29', '43.252.159.29', 'Chrome'),
(869, '2017-04-11 23:16:19', '114.124.2.201', 'Chrome'),
(870, '2017-04-11 23:16:52', '103.77.50.21', 'Chrome'),
(871, '2017-04-11 23:18:18', '114.125.215.48', 'Mozilla'),
(872, '2017-04-11 23:19:02', '202.62.17.10', 'Chrome'),
(873, '2017-04-11 23:20:03', '202.93.231.70', 'Firefox'),
(874, '2017-04-11 23:20:33', '103.47.134.15', 'Firefox'),
(875, '2017-04-11 23:22:24', '120.188.77.49', 'Firefox'),
(876, '2017-04-11 23:22:51', '120.188.3.239', 'Chrome'),
(877, '2017-04-11 23:24:00', '180.189.162.131', 'Chrome'),
(878, '2017-04-11 23:24:20', '36.83.36.137', 'Chrome'),
(879, '2017-04-11 23:26:02', '175.111.89.42', 'Chrome'),
(880, '2017-04-11 23:26:56', '213.171.207.70', 'Chrome'),
(881, '2017-04-11 23:27:42', '180.252.173.112', 'Chrome'),
(882, '2017-04-11 23:28:22', '115.178.234.185', 'Chrome'),
(883, '2017-04-11 23:28:28', '36.77.83.38', 'Chrome'),
(884, '2017-04-11 23:29:16', '103.248.248.86', 'Chrome'),
(885, '2017-04-11 23:29:32', '180.254.74.221', 'Chrome'),
(886, '2017-04-11 23:29:39', '36.78.55.37', 'Firefox'),
(887, '2017-04-11 23:29:48', '112.78.191.34', 'Chrome'),
(888, '2017-04-11 23:30:04', '120.188.81.161', 'Chrome'),
(889, '2017-04-11 23:30:08', '115.178.201.60', 'Chrome'),
(890, '2017-04-11 23:31:14', '36.72.202.102', 'Chrome'),
(891, '2017-04-11 23:31:58', '120.188.79.93', 'Chrome'),
(892, '2017-04-11 23:33:26', '36.80.202.16', 'Firefox'),
(893, '2017-04-11 23:35:32', '139.194.22.183', 'Chrome'),
(894, '2017-04-11 23:38:11', '120.188.87.248', 'Chrome'),
(895, '2017-04-11 23:38:30', '182.253.163.75', 'Chrome'),
(896, '2017-04-11 23:39:26', '103.213.128.19', 'Chrome'),
(897, '2017-04-11 23:40:11', '202.169.53.3', 'Firefox'),
(898, '2017-04-11 23:41:53', '202.67.40.1', 'Chrome'),
(899, '2017-04-11 23:43:22', '120.188.66.119', 'Chrome'),
(900, '2017-04-11 23:43:42', '36.74.115.169', 'Chrome'),
(901, '2017-04-11 23:46:07', '103.47.132.27', 'Chrome'),
(902, '2017-04-11 23:46:19', '180.241.75.46', 'Mozilla'),
(903, '2017-04-11 23:46:19', '36.84.228.213', 'Chrome'),
(904, '2017-04-11 23:46:44', '118.136.88.249', 'Chrome'),
(905, '2017-04-11 23:49:50', '120.188.83.242', 'Chrome'),
(906, '2017-04-11 23:49:52', '36.77.137.120', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(907, '2017-05-01 12:24:03', '::1', NULL),
(908, '2017-05-01 12:24:53', '::1', NULL),
(909, '2017-05-01 12:25:57', '::1', NULL),
(910, '2017-05-01 17:13:50', '::1', NULL),
(911, '2017-05-01 18:26:09', '::1', NULL),
(912, '2017-05-06 14:43:17', '::1', 'Firefox'),
(913, '2017-05-07 02:18:38', '::1', 'Firefox'),
(914, '2017-05-13 12:19:10', '::1', 'Firefox'),
(915, '2017-05-13 17:08:02', '::1', 'Firefox'),
(916, '2017-05-16 12:30:09', '::1', 'Firefox'),
(917, '2017-05-17 07:46:05', '::1', 'Firefox'),
(918, '2017-05-23 05:01:55', '::1', 'Firefox'),
(919, '2017-06-01 15:37:00', '::1', 'Firefox'),
(920, '2017-06-21 00:48:57', '::1', 'Firefox'),
(921, '2017-06-21 22:58:34', '::1', 'Firefox'),
(922, '2017-06-23 23:00:36', '::1', 'Firefox'),
(923, '2017-06-26 22:25:17', '::1', 'Firefox'),
(924, '2017-07-01 01:10:04', '::1', 'Firefox'),
(925, '2017-08-07 07:32:11', '::1', 'Firefox'),
(926, '2017-08-08 00:45:09', '::1', 'Firefox'),
(927, '2017-08-09 13:04:25', '::1', 'Firefox'),
(928, '2017-08-11 06:56:38', '::1', 'Firefox'),
(929, '2017-08-13 11:29:42', '::1', 'Firefox'),
(930, '2017-08-20 13:28:50', '::1', 'Firefox'),
(931, '2017-08-22 15:56:52', '::1', 'Firefox'),
(932, '2017-08-23 06:24:20', '::1', 'Firefox'),
(933, '2017-08-23 17:00:02', '::1', 'Firefox'),
(934, '2017-08-24 17:00:21', '::1', 'Firefox'),
(935, '2017-08-25 17:10:13', '::1', 'Firefox'),
(936, '2017-08-27 12:43:22', '::1', 'Chrome'),
(937, '2017-08-28 07:35:26', '::1', 'Firefox'),
(938, '2017-08-29 02:15:42', '::1', 'Firefox'),
(939, '2017-09-01 13:51:54', '::1', 'Firefox'),
(940, '2017-09-02 04:50:37', '::1', 'Firefox'),
(941, '2017-09-07 03:28:07', '::1', 'Firefox'),
(942, '2017-10-08 00:24:12', '::1', 'Firefox'),
(943, '2017-10-16 03:19:24', '::1', 'Firefox'),
(944, '2017-10-27 23:18:34', '::1', 'Firefox'),
(945, '2017-10-29 03:44:46', '::1', 'Firefox'),
(946, '2020-08-17 17:25:09', '::1', 'Firefox'),
(947, '2020-08-17 17:26:57', '127.0.0.1', 'Firefox'),
(948, '2020-08-19 05:43:47', '::1', 'Firefox'),
(949, '2020-08-19 17:23:28', '::1', 'Firefox'),
(950, '2020-08-21 06:23:00', '::1', 'Firefox'),
(951, '2020-08-22 14:15:58', '::1', 'Firefox'),
(952, '2020-08-22 17:10:29', '::1', 'Firefox'),
(953, '2020-08-23 17:13:46', '::1', 'Firefox'),
(954, '2020-08-25 02:34:31', '::1', 'Firefox'),
(955, '2020-08-26 01:34:29', '::1', 'Firefox'),
(956, '2020-08-26 16:22:46', '127.0.0.1', 'Firefox'),
(957, '2020-08-27 02:10:51', '::1', 'Firefox'),
(958, '2020-08-27 07:03:08', '127.0.0.1', 'Firefox'),
(959, '2020-08-27 17:01:13', '::1', 'Firefox'),
(960, '2020-08-29 14:03:43', '::1', 'Firefox'),
(961, '2020-08-29 17:00:07', '::1', 'Firefox'),
(962, '2020-08-31 01:53:33', '::1', 'Firefox'),
(963, '2020-08-31 17:00:16', '::1', 'Firefox'),
(964, '2020-09-01 09:41:58', '127.0.0.1', 'Firefox'),
(965, '2020-09-01 17:00:11', '127.0.0.1', 'Firefox'),
(966, '2020-09-02 01:29:12', '::1', 'Firefox'),
(967, '2020-09-02 17:18:01', '::1', 'Firefox'),
(968, '2020-09-03 17:00:12', '::1', 'Firefox'),
(969, '2020-09-04 17:02:34', '::1', 'Firefox'),
(970, '2020-09-05 16:26:06', '127.0.0.1', 'Firefox'),
(971, '2020-09-05 17:00:06', '127.0.0.1', 'Firefox'),
(972, '2020-09-05 17:15:05', '::1', 'Firefox'),
(973, '2020-09-06 18:20:08', '::1', 'Firefox'),
(974, '2020-09-07 11:39:57', '127.0.0.1', 'Firefox'),
(975, '2020-09-08 05:22:44', '127.0.0.1', 'Firefox'),
(976, '2020-09-08 05:24:02', '::1', 'Firefox'),
(977, '2020-09-09 08:09:34', '::1', 'Firefox'),
(978, '2020-09-10 07:42:56', '::1', 'Firefox'),
(979, '2020-09-11 06:33:41', '::1', 'Firefox'),
(980, '2020-09-11 17:08:15', '::1', 'Firefox'),
(981, '2020-09-12 17:17:40', '::1', 'Firefox'),
(982, '2020-09-13 17:00:23', '::1', 'Firefox'),
(983, '2020-09-15 05:47:29', '::1', 'Firefox'),
(984, '2020-09-15 17:02:25', '::1', 'Firefox'),
(985, '2020-09-16 17:06:55', '::1', 'Firefox');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `port_id` int(11) NOT NULL,
  `port_judul` varchar(200) DEFAULT NULL,
  `port_deskripsi` text DEFAULT NULL,
  `port_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `port_author` varchar(40) DEFAULT NULL,
  `port_image` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_portfolio`
--

INSERT INTO `tbl_portfolio` (`port_id`, `port_judul`, `port_deskripsi`, `port_tanggal`, `port_author`, `port_image`) VALUES
(1, 'Aplikasi Online Restaurant', '<p>M-Food merupakan aplikasi yang dirancang khusus untuk order makanan online berbasis web mobile. Dirancang dengan menggunakan jquery mobile dan codeigniter dengan icon dari font awesome sehingga mudah dikembangkan oleh developer manapun.</p>\r\n\r\n<p>Aplikasi ini mengelompokkan menu berdasarkan makanan, minuman, hot promo, dan favorit.</p>\r\n\r\n<p>Adapun fitur dari aplikasi ini adalah sebagai berikut:</p>\r\n\r\n<p>1 Dashboard (Grafik Penjualan, Garfik Pelanggan, Lates Order, Lates Pelanggan)</p>\r\n\r\n<p>2 Management Pengguna</p>\r\n\r\n<p>3 Management Menu (Makanan/Minuman)</p>\r\n\r\n<p>4 Management Pelanggan</p>\r\n\r\n<p>5 Management Order</p>\r\n\r\n<p>6 Management Konfirmasi Pembayaran</p>\r\n\r\n<p>7 Management Rekening Bank</p>\r\n\r\n<p>8 Management Gallery</p>\r\n\r\n<p>9 Management Status Order</p>\r\n\r\n<p>Info lebih lebih lanjut kunjungi www.mfikri.com</p>\r\n', '2017-07-20 03:53:59', 'M Fikri Setiadi', '943df63e4b65040f584f0f8df4897b89.jpg'),
(3, 'Point Of Sale', '<p>Aplikasi Point of sale merupakan sebuah aplikasi yang dirancang khusus untuk mempermudah dan mempercepat proses transakasi penjualan. Dirancang menggunakan framework Codeigniter dengan konsep metro design yang elegan menjadi daya tarik aplikasi ini. Selain itu, basic design dari aplikasi ini menggunakan BOOTSTRAP sehingga memudahkan web developer untuk mengembangkan design aplikasi ini menjadi lebih menarik lagi.</p>\r\n\r\n<p>Proses transakasi penjualan dan pembelian menggunakan AJAX &nbsp;(<em>Asyncronous Javascript and XML</em>). Memungkinkan user berkomunikasi dengan database tanpa <em>reload page</em>.</p>\r\n\r\n<p>Adapun fitur dari aplikasi ini sebagai berikut:</p>\r\n\r\n<p>1. Management data barang</p>\r\n\r\n<p>2. Management data kategori</p>\r\n\r\n<p>3. Management User (Pengguna)</p>\r\n\r\n<p>4. Management Suplier</p>\r\n\r\n<p>5. Transaksi Pembelian</p>\r\n\r\n<p>7. Transaksi Penjualan Eceran dan Grosir</p>\r\n\r\n<p>8. Retur Penjualan</p>\r\n\r\n<p>9. Laporan Data Barang</p>\r\n\r\n<p>10. Laporan Stok Barang</p>\r\n\r\n<p>11. Laporan Penjualan</p>\r\n\r\n<p>12. Laporan Penjualan Per Tanggal</p>\r\n\r\n<p>13. Laporan Penjualan Per Bulan</p>\r\n\r\n<p>14. Laporan Penjualan Per Tahun</p>\r\n\r\n<p>15. Laporan Laba / Rugi</p>\r\n\r\n<p>16. Grafik Stok Barang</p>\r\n\r\n<p>17. Grafik Penjualan Per Bulan</p>\r\n\r\n<p>18. Grafik Penjualan Per Tahun</p>\r\n', '2017-07-20 07:23:14', 'M Fikri Setiadi', 'cdfd50f2629c6bbe82fb131866632484.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_rating`
--

CREATE TABLE `tbl_post_rating` (
  `rate_id` int(11) NOT NULL,
  `rate_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `rate_ip` varchar(40) DEFAULT NULL,
  `rate_point` int(11) DEFAULT NULL,
  `rate_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post_rating`
--

INSERT INTO `tbl_post_rating` (`rate_id`, `rate_tanggal`, `rate_ip`, `rate_point`, `rate_tulisan_id`) VALUES
(2, '2017-08-07 05:58:14', '::1', 1, 30),
(4, '2017-08-07 05:59:03', '::1', 1, 29),
(5, '2017-08-07 06:23:40', '::1', 3, 31),
(6, '2017-08-07 06:26:14', '::1', 4, 28),
(7, '2017-08-08 01:15:56', '::1', 2, 27),
(8, '2017-08-25 18:20:57', '::1', 4, 26),
(9, '2020-08-18 14:37:31', '::1', 2, 32),
(10, '2020-08-18 14:40:01', '::1', 1, 33),
(11, '2020-08-18 14:54:21', '::1', 2, 34),
(12, '2020-08-20 08:59:44', '::1', 2, 35),
(13, '2020-08-26 11:07:11', '::1', 2, 36),
(14, '2020-08-30 07:03:32', '::1', 2, 53),
(15, '2020-08-30 07:06:32', '::1', 2, 54),
(16, '2020-08-30 07:08:22', '::1', 4, 56),
(17, '2020-08-30 07:08:42', '::1', 3, 55),
(18, '2020-08-30 08:00:43', '::1', 1, 58);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `views_id` int(11) NOT NULL,
  `views_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `views_ip` varchar(40) DEFAULT NULL,
  `views_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post_views`
--

INSERT INTO `tbl_post_views` (`views_id`, `views_tanggal`, `views_ip`, `views_tulisan_id`) VALUES
(1, '2017-08-07 07:28:38', '::1', 31),
(2, '2017-08-07 07:28:51', '::1', 30),
(3, '2017-08-07 13:08:57', '::1', 27),
(4, '2017-08-07 15:55:32', '::1', 28),
(5, '2017-08-07 16:02:55', '::1', 29),
(6, '2017-08-08 00:58:17', '::1', 26),
(7, '2017-08-08 01:13:58', '::1', 27),
(8, '2017-08-08 01:16:07', '::1', 30),
(9, '2017-08-09 13:04:36', '::1', 30),
(10, '2017-08-11 06:56:47', '::1', 31),
(11, '2017-08-11 08:42:41', '::1', 30),
(12, '2017-08-11 08:42:47', '::1', 27),
(13, '2017-08-11 08:42:54', '::1', 26),
(14, '2017-08-11 08:43:00', '::1', 28),
(15, '2017-08-11 08:43:07', '::1', 25),
(16, '2017-08-11 08:43:10', '::1', 29),
(17, '2017-08-24 16:39:13', '::1', 31),
(18, '2017-08-24 16:39:13', '::1', 0),
(19, '2017-08-24 16:39:13', '::1', 0),
(20, '2017-08-24 16:39:13', '::1', 0),
(21, '2017-08-24 17:00:21', '::1', 31),
(22, '2017-08-24 17:00:22', '::1', 0),
(23, '2017-08-25 13:49:50', '::1', 30),
(24, '2017-08-25 17:22:19', '::1', 30),
(25, '2017-08-25 17:22:20', '::1', 0),
(26, '2017-08-25 17:25:14', '::1', 27),
(27, '2017-08-25 17:27:37', '::1', 26),
(28, '2017-08-25 17:45:38', '::1', 25),
(29, '2017-08-25 17:54:57', '::1', 29),
(30, '2017-08-25 18:18:38', '::1', 31),
(31, '2017-08-25 18:19:02', '::1', 28),
(32, '2017-08-27 12:43:48', '::1', 30),
(33, '2017-08-27 12:43:49', '::1', 0),
(34, '2017-08-28 07:35:26', '::1', 31),
(35, '2017-08-29 03:13:08', '::1', 30),
(36, '2017-08-29 03:13:09', '::1', 0),
(37, '2017-08-29 03:13:16', '::1', 29),
(38, '2017-08-29 13:44:05', '::1', 31),
(39, '2017-09-01 13:52:01', '::1', 30),
(40, '2017-09-01 13:52:01', '::1', 0),
(41, '2017-09-01 14:00:27', '::1', 25),
(42, '2017-09-02 04:50:46', '::1', 31),
(43, '2017-09-02 04:50:46', '::1', 0),
(44, '2017-09-02 04:51:23', '::1', 28),
(45, '2017-10-08 00:25:57', '::1', 25),
(46, '2017-10-08 00:25:57', '::1', 0),
(47, '2017-10-16 03:19:53', '::1', 31),
(48, '2017-10-16 03:19:54', '::1', 0),
(49, '2017-10-16 03:20:18', '::1', 25),
(50, '2017-10-28 00:13:13', '::1', 30),
(51, '2017-10-28 00:13:14', '::1', 0),
(52, '2017-10-29 04:16:58', '::1', 30),
(53, '2017-10-29 04:16:59', '::1', 0),
(54, '2017-10-29 04:23:42', '::1', 31),
(55, '2020-08-17 17:51:19', '::1', 31),
(56, '2020-08-17 17:51:20', '127.0.0.1', 0),
(57, '2020-08-18 14:37:12', '::1', 32),
(58, '2020-08-18 14:37:14', '::1', 0),
(59, '2020-08-18 14:39:49', '::1', 33),
(60, '2020-08-18 14:53:43', '::1', 34),
(61, '2020-08-19 06:19:41', '::1', 34),
(62, '2020-08-19 06:19:44', '::1', 0),
(63, '2020-08-20 07:56:12', '::1', 35),
(64, '2020-08-20 07:56:13', '::1', 0),
(65, '2020-08-20 13:04:12', '::1', 9),
(66, '2020-08-20 13:06:14', '::1', 8),
(67, '2020-08-20 13:39:27', '::1', 6),
(68, '2020-08-20 14:53:52', '::1', 36),
(69, '2020-08-20 15:01:51', '::1', 37),
(70, '2020-08-23 15:14:46', '::1', 37),
(71, '2020-08-23 15:14:47', '::1', 0),
(72, '2020-08-26 11:06:27', '::1', 37),
(73, '2020-08-26 11:06:28', '::1', 0),
(74, '2020-08-26 11:07:03', '::1', 36),
(75, '2020-08-27 15:48:19', '::1', 0),
(76, '2020-08-27 17:01:16', '::1', 0),
(77, '2020-08-28 07:27:12', '::1', 49),
(78, '2020-08-28 08:17:08', '::1', 50),
(79, '2020-08-28 08:20:16', '::1', 51),
(80, '2020-08-29 14:05:37', '::1', 51),
(81, '2020-08-29 14:05:38', '::1', 0),
(82, '2020-08-29 14:14:00', '::1', 50),
(83, '2020-08-29 14:14:30', '::1', 49),
(84, '2020-08-29 17:08:02', '::1', 51),
(85, '2020-08-29 17:18:15', '::1', 49),
(86, '2020-08-30 06:56:54', '::1', 53),
(87, '2020-08-30 06:56:55', '::1', 0),
(88, '2020-08-30 07:06:27', '::1', 54),
(89, '2020-08-30 07:08:04', '::1', 56),
(90, '2020-08-30 07:08:38', '::1', 55),
(91, '2020-08-30 08:00:30', '::1', 58),
(92, '2020-08-31 10:54:32', '::1', 58),
(93, '2020-08-31 10:54:33', '::1', 0),
(94, '2020-08-31 11:10:27', '::1', 57),
(95, '2020-09-01 01:59:53', '::1', 58),
(96, '2020-09-01 01:59:56', '::1', 0),
(97, '2020-09-06 09:58:35', '::1', 61),
(98, '2020-09-06 09:58:37', '::1', 0),
(99, '2020-09-06 09:58:46', '::1', 55),
(100, '2020-09-06 09:58:54', '::1', 58),
(101, '2020-09-06 09:59:01', '::1', 60),
(102, '2020-09-08 07:13:34', '::1', 61),
(103, '2020-09-08 07:13:35', '::1', 0),
(104, '2020-09-08 07:15:56', '::1', 60),
(105, '2020-09-08 07:18:16', '::1', 58),
(106, '2020-09-08 13:06:36', '127.0.0.1', 60),
(107, '2020-09-08 13:06:37', '127.0.0.1', 0),
(108, '2020-09-12 09:42:23', '::1', 61),
(109, '2020-09-12 09:42:24', '::1', 0),
(110, '2020-09-12 09:42:34', '::1', 60),
(111, '2020-09-13 14:30:59', '::1', 61),
(112, '2020-09-13 14:31:00', '::1', 0),
(113, '2020-09-15 06:04:06', '::1', 70),
(114, '2020-09-15 06:04:08', '::1', 0),
(115, '2020-09-15 06:32:13', '::1', 71),
(116, '2020-09-15 06:37:14', '::1', 72),
(117, '2020-09-15 06:57:44', '::1', 79),
(118, '2020-09-15 13:55:01', '::1', 75),
(119, '2020-09-15 17:02:49', '::1', 79),
(120, '2020-09-15 17:02:50', '::1', 0),
(121, '2020-09-15 17:06:35', '::1', 74),
(122, '2020-09-17 06:03:12', '::1', 79),
(123, '2020-09-17 06:03:15', '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sport`
--

CREATE TABLE `tbl_sport` (
  `port_id` int(11) NOT NULL,
  `port_judul` varchar(50) NOT NULL,
  `port_deskripsi` text NOT NULL,
  `port_tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `port_author` varchar(50) NOT NULL,
  `port_image` varchar(50) NOT NULL,
  `port_image1` varchar(100) NOT NULL,
  `port_image2` varchar(100) NOT NULL,
  `port_image3` varchar(100) NOT NULL,
  `port_image4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sport`
--

INSERT INTO `tbl_sport` (`port_id`, `port_judul`, `port_deskripsi`, `port_tanggal`, `port_author`, `port_image`, `port_image1`, `port_image2`, `port_image3`, `port_image4`) VALUES
(30, 'HONDA MONKEY', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Bagi Anda yang menyukai motor bergaya klasik tempo dulu, PT Astra Honda Motor (AHM) mengeluarkan tipe motor bergaya klasik dengan harga resmi. Tipe motor tersebut adalah Honda Monkey. Motor ini di desain dengan sangat apik, tampak lebih kecil dibandingkan dengan jenis tipe motor lainnya. Walaupun motor ini bergaya klasik tempo dulu, namun mesin yang ditawarkan Honda Monkey ini memiliki fitur yang kekinian.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Seakan menjadi motor kekinian, Honda Monkey mengusung teknologi yang sudah diaplikasikan pada motor terbaru, pada motor klasik mini ini sudah dibekali dengan headlamp serta stoplamp LED. Bentuk speedometer klasik yang bulat juga sudah dibekali dengan digital full LCD dengan informasi odometer dengan dua trip meter serta enam bar indikator bensin.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Motor Honda bergaya mini ini memiliki jarak sumbu roda yang cukup rendah yakni, 1.155 mm dengan ketinggian jok 776 mm dari permukaan tanah. Dari segi keamanan, pada motor yang dibekali dengan pelek 12 inci pada bagian depan dan belakang ini juga sudah dibekali dengan sistem pengereman ABS satu channel.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Selain itu urusan dapur pacu, Honda Monkey telah dibekali mesin 125 cc SOHC yang dapat menghasilkan tenaga maksimal 9,2 dk/7.000 rpm serta torsi maksimal 11 Nm/5.250 rpm.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda Monkey</span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\">Tipe Mesin : Air Cooled, 4 Stroke, SOHC<br />\r\nSistem Suplai Bahan Bakar : PGM-FI (Programmed Fuel Injection System)<br />\r\nKapasitas Silinder : 125 cd<br />\r\nTenaga Maksimal : 6,9 kW / 7.000 rpm<br />\r\nTorsi Maksimal : 11 Nm / 5.250 rpm<br />\r\nRasio Kompresi : 9,3 : 1<br />\r\nKapasitas Minyak Pelumas : 0,9 L<br />\r\nTransmisi : Manual, 4 Speed<br />\r\nTipe Starter : Wet, Multiple Clutch<br />\r\nSistem Pengapian : Full Transistorized, Battery<br />\r\nUkuran (P X L X T) : 1.710 x 755 x 1.029 mm<br />\r\nTinggi Tempat Duduk : 776 mm<br />\r\nJarak Sumbu Roda : 1.155 mm<br />\r\nJarak Ke Tanah : 160 mm<br />\r\nBerat : 107 Kg<br />\r\nKapasitas Tangki : 5,6 L</span></p>\r\n', '2020-09-12 08:22:31', 'Admin', 'monkey-sampul1.png', 'monkey-21.png', 'monkey-11.png', 'monkey-31.png', ''),
(31, 'HONDA SONIC 150 R', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda Sonic 150R 2020 &ndash; Motor ini menjadi penantang Suzuki Satria F150 yang sama-sama memiliki desain underbone dan mesin 150cc. Persaingan keduanya sangat ketat, dan nyatanya Sonic 150R berhasil mengganggu penjualan Satria F150 yang terlebih dahulu dipasarkan di Indonesia. Hal ini tidak lepas dari performa mesin yang dibawanya. Motor ini bisa berlari cepat dengan tenaga dan torsi mengagumkan, sehingga kemampuan akselerasinya bisa menandingi motor sport 150cc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Popularitas motor bebek memang berkurang. Masyarakat Indonesia cenderung membeli motor matic atau motor sport yang harganya tidak berbeda jauh. Namun bagi masbro yang tetap cinta motor bebek, maka Honda Sonic 150R merupakan pilihan paling tepat. Terlebih motor ini dilengkapi beragam teknologi baru yang mengoptimalkan performa mesin dan kenyamanan saat mengendarainya. Desainnya juga keren dan cocok untuk kawula muda yang ingin terlihat gaul.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Agar menambah kesan sporty, Honda Sonic 150R dilengkapi Undercowl yang memiliki desain sporty dan fungsional. Sebenarnya fungsi utama Undercowl tersebut adalah melindungi mesin dari kerikil dan kotoran. Nah untuk mesinnya sendiri menggunakan mesin DOHC 4 Katup yang diadopsi dari mesin balap kelas dunia Honda. Mesin tersebut disempurnakan oleh sistem pendingin cairan dengan kipas otomatis yang akan menyala secara otomatis di suhu 130 derajat. Alhasil performa mesin tetap optimal dan suhu mesin selalu terjaga</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda Sonic 150 R</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : 4 Langkah, DOHC &ndash; 4 Katup, Liquid Cooled with Auto Fan<br />\r\nKapasitas : 149.16 cc<br />\r\nTenaga Maksimum : 11.8 kW (16.0 PS) / 9,000 rpm<br />\r\nTorsi Maksimum : 13.5 Nm (1.38 kgf.m) / 6,500 rpm<br />\r\nSistem Bahan Bakar : Fuel Injection (PGM-Fi)<br />\r\nTipe Starter : Electric Starter<br />\r\nTipe Transmsi : Manual, 6 &ndash; Kecepatan (1-N-2-3-4-5-6)<br />\r\nBore X Stroke : 57.3 x 57.8 mm<br />\r\nPerbandingan Kompresi : 11.3:1<br />\r\nTipe Kopling : Multiple Wet Clutch Coil Spring<br />\r\nDimensi&nbsp;&nbsp; &nbsp;: 1.941 x 669 x 977 mm<br />\r\nBerat : 114 kg<br />\r\nKapasitas Tangki : 4 Liter<br />\r\nJarak Sumbu Roda : 1.350mm<br />\r\nTinggi Tempat Duduk : 762 mm<br />\r\nJarak Sumbu Roda : 1.275 mm</span></p>\r\n', '2020-09-12 08:30:48', 'Admin', 'sonic_150r-sampul.png', 'sonic_150r-1.png', 'sonic_150r-2.png', 'sonic_150r-3.png', 'sonic_150r-4.png'),
(32, 'HONDA CB 150 VERZA', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CB150 Verza &ndash; Inilah motor sport 150cc termurah di Indonesia. Mengapa kami bilang termurah ? karena motor ini dibanderol dibawah 20 Juta Rupiah. Alhasil harganya lebih murah dibandingkan Yamaha Byson ataupun motor sport lainnya. Walaupun murah, namun Honda melengkapinya dengan beragam fitur berkelas yang membuat CB150 Verza mampu bersaing melawan motor yang dibanderol lebih mahal. Sejatinya motor ini merupakan generasi penerus dari Honda Verza. Akan tetapi Honda telah merombaknya habis-habisan sehingga namanya berubah menjadi CB150 Verza.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Masyarakat Indonesia memang sangat menyukai motor sport. Buktinya adalah kedigdayaan Yamaha Vixion dan Honda CB150R StreetFire yang populasinya terus meningkat dari waktu ke waktu. Kehadiran CB150 Verza tidak akan menggangu pasar kedua motor sport 150cc tersebut, karena Honda CB150 Verza ditargetkan untuk menggaet konsumen yang mencari motor sport 150cc murah meriah.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Selanjutnya soal dapur pacu, Honda CB150 Verza menggunakan mesin SOHC 4 Silinder dengan kapasita 150cc. Mesin tersebut telah dilengkapi sistem pembakaran PGM-FI (Programmed Fuel Injection) yang membuat konsumsi bahan bakar semakin irit dan mesin semakin ramah lingkungan. Tenaga yang dikeluarkan cukup besar, namun belum bisa menandingi Honda CB150R StreetFire yang notabennya dibanderol jauh lebih mahal dari harga Honda CB150 Verza. Dimana tenaga maksimumnya mencapai 13.04 PS pada putaran mesin 8.500 rpm.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda Cb 150 Verza</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : 4 Langkah, SOHC, Silinder Tunggal, Pendingin Udara<br />\r\nKapasitas : 149,15<br />\r\nTenaga Maksimum : 9,59kW (13,04 PS) / 8.500 rpm<br />\r\nTorsi Maksimum : 12,73 Nm (1,30 kgf.m) / 6.000 rpm<br />\r\nSistem Bahan Bakar : Fuel Injection (PGM-Fi)<br />\r\nTipe Starter : Starter Kaki &amp; Starter Elektrik<br />\r\nTipe Transmsi : Manual, 5 &ndash; Kecepatan (1-N-2-3-4-5)<br />\r\nBore X Stroke : 57,3 x 57,8 mm<br />\r\nPerbandingan Kompresi : 9,5:1<br />\r\nTipe Kopling : Manual, Multiplate Wet Cluth with Coil Spring<br />\r\nDimensi&nbsp;&nbsp; &nbsp;: 2.056 x 742 x 1.054 mm<br />\r\nBerat : 129 kg (Cast Wheel), dan 128 kg (Spoke Wheel)<br />\r\nKapasitas Tangki : 12,2 Liter<br />\r\nJarak Sumbu Roda : 1.318 mm<br />\r\nTinggi Tempat Duduk : 773 mm<br />\r\nJarak Sumbu Roda : 1.318 mm<br />\r\nJarak Terendah ke Tanah&nbsp;&nbsp; &nbsp;: 156 mm</span></p>\r\n', '2020-09-12 08:37:06', 'Admin', 'cb_150verza-sampul.png', 'cb_150verza-1.png', 'cb_150verza-2.png', 'cb_150verza-3.png', 'cb_150verza-4.png'),
(34, 'HONDA ALL NEW CB 150 R', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Harga Honda&nbsp;CB150R StreetFire<strong><a href=\"https://www.otomaniac.com/ harga-honda-cb150r-streetfire-2 / ‎\">&nbsp;</a></strong>&ndash;&nbsp; Jika dibandingkan dengan generasi sebelumnya maka Honda CB150R Streetfire terlihat lebih agresif dengan desain yang lebih tajam pada semua bagian, motor ini juga telah merevisi dari kekurangan di generasi sebelumnya yakni Honda CB150R, dengan Tagline yang di bubuhkan Honda yakni &ldquo;Peforma Sang Penakluk&rdquo; membuat kesan sangar pada motor ini, Honda CB150R Streetfire di gadang-gadang bakal menguasai penjualan motor sport kelas menengah dengan berbagai fitur andalan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CB150R Streetfire juga sudah memiliki fitur keamanan yang tidak di miliki oleh pendahulunya fitur itu adalah penguncaian pada lubang starter, hal ini membuat Sobat otomotif lebih nyaman meninggalkan kuda besi karena sudah aman dengan fitur ini, dengan kapasitas tangki bensin mencapai 12 liter membuat motor ini nyaman di gunakan dalam perjalanan jauh.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Dengan mesin 150 cc menggunakan silinder tunggal 4 langkah 4katup 6 kecepatan dan menggunkan sisitem pendingin membuat mesin ini terbilang tangguh di kelas nya, dengan kecepatan maksimum mencapai 12,5 kw (16,9PS)/ 900 rpm torsi maksimum 13,8 nm ( 141 kgf.m)/7000 rpm dalam sebuah test motor ini disinyalir dapat memiliki kecepatan 125km/jam&nbsp;dengan tekonologi Roller Rocker Arm yang dimiliki oleh Harga Honda Cb150r Facelift Membuat motor ini hemat bahan bakar, selain cepat motor ini juga hemat bahan bakar.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda mengklaim motor ini mempunyai tingkat konsumsi bahan bakar mencapau 40,8km/ liter angka yang sangat fenomenal untuk motor sport,&nbsp;dibangun dengan rangka diamond steel (truss frame) masih sama dengan CB150R hanya saja di tambah dengan penyangga alumunium yang membuat lebih ringan dan kuat, pada intinya CB150R Facelift selain motor yang kuat dengan tenaga yang besar motor ini juga tirdak terlalu boros motor ini patut di jadikan referensi.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda Cb 150 R</span><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tipe Mesin : 4 langkah, DOHC &ndash; 4 katup<br />\r\nSistem pendinginan : Liquid Cooled Auto<br />\r\nDiameter x Langkah : 57,3 x 57,8 mm<br />\r\nPerbandingan Kompresi : 11.3 : 1<br />\r\nDaya : 12.4 KW (16.9 PS) / 9000 rpm<br />\r\nTorsi : 13,8 Nm (1,41 kgf.m) / 7.000 rpm<br />\r\nSistem Pelumasan : Basah<br />\r\nTipe Kopling : Multiplate wet clutch coil spring<br />\r\nBusi : NGK MR9C-9N atau ND U27EPR-N9<br />\r\nSistem Pembakaran : PGM-FI</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Dimensi: 2.019 x 719x 1.039 mm<br />\r\nBerat : 136 kg<br />\r\nJarak Sumbu Roda : 1.293 mm<br />\r\nJarak terendah ke tanah : 169 mm<br />\r\nKapasitas tangki : 12 Liter</span></p>\r\n', '2020-09-12 08:48:44', 'Admin', 'cb_150r-4.png', 'cb_150r-41.png', 'cb_150r-2.png', 'cb_150r-3.png', 'cb_150r-1.png'),
(35, 'Honda ALL NEW CBR 150R', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">All New Honda CBR 150R&nbsp; &ndash;&nbsp;Ahirnya secara resmi PT Astra Honda Motor (AHM) menjawab teka-teki menggenai edisi terbaru dari Honda CBR 150R yang sudah banyak dinanti konsumen di Tanah Air, dimana secara resmi AHM memperkenalkan All New Honda CBR 150R 2019 sebegai penerus generasi sebelumnya,beberapa penambahan fitur dan juga desain membuat Honda CBR 150R ini tampil kian prima.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">All New Honda CBR 150R tampil dengan desain yang lebih menawan dimana motor Full Fairing ini semakin tampil speedy, agresif dan siap memberikan persaingan baru terutama pada Yamaha Yang menjadi rival berat Honda dikelas motor sport 150cc, All New Honda CBR 150R 2019 hadir dengan tampilan baru dengan mengusung konsep &ldquo;Total Control&rdquo; sekaligus menandai hadirnya warna baru pada motor ini yakni Matte Black, Victory Black Red, Honda Racing Red, dan MotoGP Edition.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Salah satu fitur unggulan adalah adanya fitur penggereman ABS, dengan sudah adanya penggereman tersebut pastinya akan membuat sobat akan merasa nyaman saat melakukan penggereman di berbagai medan dan kondisi, namun dengan adanya fitur penggereman ABS membuat kenaikan sekitar 4 Jutaan pada unit terbaru ini, nah untuk sobat yang penasaran langsung saja simak ulasan lengkap menggenai Spesifikasi All New Honda CBR 150R 2019 Beserta kekurangan dan Kelebihannya berikut ini.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Di Indonesia harga all new Honda CBR 150R 2019 ini di banderol dengan harga mencapai 30 juta rupiah, harga tersebut sangat sepadan dengan perfoma mesin yang di tampilkannya meskipun pada umumnya belum ada perubahan berarti karena terlihat Honda masih nyaman dengan perfoma mesin seri sebelumnya. Yakni dengan memakai mesin motor 4 tak yang berkapasitas 150 cc motor ini juga di lengkapi dengan sistem DOHC dengan 6- speed yang akan memberikan perfoma yang lebih tangguh kepada motor ini.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Dengan memakai jenis mesin motor yang berkapasitas 150cc, motor All new honda CBR 150R 2019 ini mamapu mengeluarkan tenaga maksimumnya sebesar 17,1 Ps dengan putaran pada mesin sebesar 9.000 rpm, lalu untuk torsi maksimum yang mampu dihasilkan hanyalah sebesar 13,7 Nm dengan putaran pada mesin sebesar 7.000 rpm. Tenaga yang dihasilkan tersebut kemudian disalurkan melalui sistem transmisi 6 percepatan, yang dikombinasikan dengan type kopling yang berjenis wet multiplate dengan coil spring membuat motor ini mampu memiliki perfoma yang memadai, honda pun masih akan membekali motornya dengan fitur sisitem bahan bakar PGM-FI yang mana membuatnya memiliki tenaga yang maksimal juga memiliki konsumsi bahan bakar yang sanagt terkontrol.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda Cbr 150 R</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : 4-Langkah, DOHC &ndash; 4 Katup<br />\r\nKapasitas : 149.66 cc<br />\r\nDiameter Langkah : 57,3 x 57,8 mm<br />\r\nRasio Kompresi : 11,3 : 1<br />\r\nPower Max : 12,6 kW (17,1 PS / 9.000 rpm )<br />\r\nTorsi Max : 14,4 Nm (1.47 kgf.m / 7.000 rpm )<br />\r\nTipe Kopling : Wet<br />\r\nSistem Bahan Bakar : PGM-FI<br />\r\nStarter : Electric stater<br />\r\nTransmsi : 6-speed (1-N-2-3-4-5-6)<br />\r\nP x L x T : 1.983 x 694 x 1.038 mm<br />\r\nBerat Isi : 135 kg<br />\r\nTinggi Tempat Duduk : 787 mm<br />\r\nJarak Terendah Ke Tanah : 166 mm<br />\r\nJarak Sumbu Roda : 1.311 mm<br />\r\nKapasitas tangki : 12 Liter</span></p>\r\n', '2020-09-12 08:57:46', 'Admin', 'cbr_150r-sampul1.png', 'cbr_150r-21.png', 'cbr_150r-11.png', 'cbr_150r-31.png', 'cbr_150r-41.png'),
(36, 'HONDA CBR 250RR', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CBR250RR &ndash; Akhir tahun 2016, publik Indonesia akan dihebohkan dengan kehadiran motor sport 250cc terbaru dari Honda, yaitu CBR250RR. Walaupun namanya belum dipastikan akan memiliki nama CBR250RR, namun sejumlah media menyebutnya seperti itu. Anggap saja motor ini memiliki nama CBR250RR yang mencerminkan bahwa Double R yang dimilikinya berarti dua silinder. Asal sobat ketahui, Honda CBR250R yang beredar saat ini hanya memiliki satu silinder, sehingga performanya akan dibawah CBR250RR. Lalu seperti apa spesifikasinya ?</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi motor Honda CBR250RR akan jauh lebih canggih, karena Honda melengkapinya dengan berbagai teknologi terbaru yang siap memanjakan pengendara motor ini. Salah satunya adalah teknologi power mode yang berguna untuk mengataur keluaran power melalui ECU yang tertanam pada motor ini. Lalu ada pula fitur ride by wire yang sering kali kita jumpai pada motor Big Bike buatan Honda.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CBR250RR yang memiliki dua silinder siap menggebrang industri otomotif tanah air. Motor ini kabarnya akan diperkenalkan kepublik pada bulan September atau Oktober 2016. Namun sebelum moto ini dirilis resmi, kabar mengenai spesifikasi dan fitur Honda CBR250RR telah beredar didunia maya. Informasi yang kami dapatkan menyebutkan berbagai fitur canggih yang membuat motor sport 250cc ini mampu bersaing melawan Yamaha R25 dan Kawasaki Ninja 250 FI yang selama ini menjadi primadona di kelas motor sport 250cc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Selain mengubah segi mesin dengan memakai dua buah silinder, Honda juga mengubah desain Honda CBR250RR agar tampil lebih sporty dan tak terkesan sebagai motor jadul. Tampilan luar Honda CBR250R generasi terdahulu memang kalah sporty dibandingkan rival-rivalnya. Pasalnya Yamaha R25 dan Ninja 250 FI lebih terkesan sebagai motor balap yang memiliki tampilan full fairing dengan desian lebih sporty. Tak hanya itu, buritan Yamaha R25 dan Ninja 250 FI juga lebih sporty dan terlihat lebih runcing dibandingkan Honda CBR250R.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda Cbr 250 RR</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : 4-Stroke, 8-Valve, Parallel Twin Cylinder, Liquid Cooled Auto Electric Fan<br />\r\nKapasitas : 249.7 cc<br />\r\nDiameter X Langkah : 62.0 x 41.4 mm<br />\r\nRasio Kompresi &nbsp;&nbsp; &nbsp;11.5 : 1<br />\r\nThrottle System : Throttle-By-Wire System with Accelerator Position Sensor<br />\r\nSistem Bahan Bakar : PGM-FI<br />\r\nStarter : Electric<br />\r\nTransmsi : 6 Speed (1-N-2-3-4-5-6)<br />\r\nDimensi : 2.060 x 724 x 1.098 mm<br />\r\nJarak Sumbu Roda : 1.389 mm<br />\r\nJarak terendah ke tanah : 145 mm<br />\r\nTinggi Tempat Duduk : 790 mm<br />\r\nKapasitas tangki : 14.5 liter</span></p>\r\n', '2020-09-12 09:08:36', 'Admin', 'cbr_250rr-sampul1.png', 'cbr_250rr-21.png', 'cbr_250rr-11.png', 'cbr_250rr-31.png', 'cbr_250rr-41.png'),
(37, 'HONDA CRF 250 RALLY', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CRF 250 Rally &ndash; Tak hanya merilis motor sport, Honda juga merilis motor adventure bertenaga besar yang mereka sebut&nbsp;sebagai &ldquo;Honda CRF 250 Rally&rdquo;. Motor ini menjadi motor adventure termurah yang dipasarkan Honda di Indonesia, karena dibanderol 60 Jutaan. Alhasil motor ini sangat cocok bagi konsumen tanah air yang mencari motor tangguh untuk melewati semua medan jalan. Sebanding dengan harganya yang mahal, motor ini menawarkan segudang fitur unggulan yang tak dimiliki motor adventure sekelasnya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Fitur andalan Honda CRF 250 Rally adalah suspensi depan yang mengadopsi Upside Down. Selain itu, tersedia pula mesin satu silinder berkapasitas 249cc yang diadopsi dari platform mesin yang sama seperti Honda CBR250R. Mesin tersebut tergolong bertenaga dan bisa diajak berakselerasi melewati beragai medan jalan denga torsi sangat besar.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Desain Honda CRF 250 Rally terlihat unik dengan hadirnya Dual Asymmetry LED Headlight dan Floating Wind Screen yang terpasang pada bagian depan. Menariknya lagi, headlamp Honda CRF250 Rally bagaikan dua buah bola mata yang menatap tajam kedepan. Yah, desainnya anti mainstream dan berbeda jauh dengan Kawasaki KLX 250 yang terlihat lebih kalem. Owh yah, headlamp tersebut dibuat menyatu dengan Floating Wind Screen, sehingga meningkatkan aerodinamika motor Adventure yang satu ini.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Pada bagian jantung pacu terpasang mesin 4-Stroke, DOHC dengan satu silinder berkapasitas 249cc. Untuk menstabilan suhu mesin, Honda melengkapinya dengan sistem pendingin Liquid- Cooled. Berbekal msin tersebut, Honda CRF 250 Rally mampu menghasilkan torsi sangat besar, dan power maksimal yang sulit tertandingi rival-rivalnya. Selain itu, Honda CRF250 Rally dilengkapi sistem pembakaran PGM-FI yang membuat kinerja mesin semakin responsif dan irit bahan bakar.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CRF 250 RALLY</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : DOHC, liquid-cooled single-cylinder<br />\r\nKapasitas : 249 cc<br />\r\nTenaga Maksimal : 18,2Kw / 8.500 rpm<br />\r\nTorsi Maksimal : 22,6 Nm / 6750 rpm<br />\r\nDiameter X Langkah : 76mm x 55mm<br />\r\nRasio Kompresi : 10 : 7<br />\r\nSistem Kopling : multi-plate hydraulic<br />\r\nSistem Bahan Bakar : PGM-FI<br />\r\nStarter : Electric<br />\r\nTransmsi : 6 percepatan<br />\r\nDimensi : 2210 mm x 900 mm x 1425 mm<br />\r\nBerat : 155 kg<br />\r\nTinggi Jok : 895 mm<br />\r\nWheelbase : 1.445 mm<br />\r\nKapasitas tangki : 10.1 liter<br />\r\nGround Clearance :270 mm</span></p>\r\n', '2020-09-12 09:14:05', 'Admin', 'crf_250rally-sampul.png', 'crf_250rally-1.png', 'crf_250rally-2.png', '', ''),
(38, 'HONDA CRF 150 L', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CRF150L Terbaru 2020&nbsp;&ndash; PT Astra Honda Motor (AHM) menghadirkan motor trail baru bernama &ldquo;HONDA CRF150L&rdquo;. Motor ini akan bersaing melawan Kawasaki KLX 150 yang selama ini mendominasi pasar motor trail 150cc. Banyak kelebihan yang dimilikinya, dan semuanya tersaji sempurna bagi pecinta otomotif yang menginginkan motor off-road terbaik di kelas 150cc. Salah satu kelebihannya adalah dilengkapi teknologi Fuel Injection yang notabennya tidak dimiliki Kawasaki KLX 150.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Pada bagian tengah Honda CRF150L terpasang tangki bahan bakar berkapasitas 7.2 Liter. Walaupun kapasitasinya lebih kecil dibandingkan motor sport 150cc, namun konsumsi bahan bakar Honda CRF150L sangat irit. Jadi masbro tidak perlu khawatir kehabisan bensin saat berpetualang. Motor ini juga nyaman dikendarai melewati berbagai medan berat, karena memiliki bodi ideal dengan dimensi panjang 2.199 mm, lebar 793 mm, tinggi 1.153 mm dan jarak sumbu roda depan ke belakang mencapai 1.375 mm.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Agar semakin nyaman, Honda CRF150L dirancang secara khusus agar memiliki bobot ringan. Jadi jangan heran apabila beratnya cuma 122 kg. Tentu hal ini membuat kemampuan askelerasi Honda CRF150L semakin meningkat. Alhasil kita bisa mengandalkannya untuk bermanuver melewati berbagai medan jalan. Sayangnya motor ini memiliki satu kekurangan, yaitu tempat duduknya sangat tinggi. Dimana untuk jarak tempat duduknya mencapai 868 mm dan ditambah jarak terendah ke tanah berukuran 285 mm.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Walaupun kurang nyaman dikendarai oleh pecinta otomotif yang memiliki tinggi badan dibawah 170cm, namun Honda CRF150L menawarkan mesin bertenaga yang diadopsi dari mesin Honda Verza 150. Mesin tersebut merupakan mesin SOHC berpendingin udara yang memiliki kapasitas 149.15cc. Tenaga yang dikeluarkannya sebesar 12.91 PS pada putaran 8.000 rpm. Sedangkan untuk torsinya mencapai 12.43 Nm pada putaran 6.500 rpm.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CRF 150 L</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : 4-Langkah, SOHC, Satu Silinder, Pendingin Udara<br />\r\nKapasitas : 149.15 cc<br />\r\nDaya Maksimum : 9,51 kW(12,91 PS)/8.000 rpm<br />\r\nTorsi Maksimum : 12,43 Nm(1,27 kgf.m)/6.500 rpm<br />\r\nBore &times; Stroke : 57.3 x 57.8 mm<br />\r\nRasio Kompresi : 9.5:1<br />\r\nSistem Bahan Bakar : Fuel injection (PGM-FI)<br />\r\nTipe Starter : Pedal dan Elektrik<br />\r\nTipe Transmsi : 5-speed (1 &ndash; N &ndash; 2 &ndash; 3 &ndash; 4 &ndash; 5)<br />\r\nDimensi&nbsp;&nbsp; &nbsp;: 2.119 X 793 X 1.153 mm<br />\r\nBerat : 122 kg<br />\r\nKapasitas Tangki : 7.2 liter<br />\r\nTinggi&nbsp; Tempat Duduk : 869 mm<br />\r\nJarak Sumbu Roda : 1.375 mm<br />\r\nGround Clearance : 285 mm</span></p>\r\n', '2020-09-12 16:58:14', 'aldian', 'crf_150L-sampul1.png', 'crf_150L-31.png', 'crf_150L-11.png', 'crf_150L-21.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
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
  `tulisan_gambar1` varchar(100) NOT NULL,
  `tulisan_gambar2` varchar(100) NOT NULL,
  `tulisan_gambar3` varchar(100) NOT NULL,
  `tulisan_gambar4` varchar(100) NOT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_rating` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_gambar1`, `tulisan_gambar2`, `tulisan_gambar3`, `tulisan_gambar4`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_rating`) VALUES
(70, 'HONDA GOLD WING 1800', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Honda Gold Wing 2020 </strong>&ndash;&nbsp; Motor ini resmi di boyong Astra Honda Motor (AHM) untuk memuaskan hasrat pecinta touring yang membutuhkan motor bertenaga besar dengan teknologi terbaik di kelasnya. Tak tanggung-tanggung, harganya setara mobil sport Honda Civic Type-R yang sama-sama dibanderol melebihi 1 Miliar Rupiah. Meski sangat mahal, namun motor ini langsung laris manis setelah diperkenalkan pada gelaran Indonesia International Motor Show 2018 yang berlangsung di Jakarta International Expo.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Motor ini memiliki reputasi sangat baik dan dikenal sebagai motor touring yang nyaman dikendarai dan memiliki teknologi canggih yang bisa diadu dengan motor Harley Davidson. Kecanggihan teknologinya bisa dilihat dari segi mesin yang mengusung mesin 6 Silinder dengan kapasitas 1.800cc. Alhasil Honda Gold Wing memiliki tenaga dan torsi sangat besar yang bisa diandalkan saat touring. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">soal dapur pacu, Honda Gold Wing yang dipasarkan di Indonesia mengusung mesin 6 Silinder berkapasitas 1.833cc. Mesin tersebut dilengkapi sistem pendingin cairan yang membuat suhu mesin selalu terjaga saat berakselerasi pada kecepatan tinggi. Tidak ketinggalan teknologi Fuel Injection (PGM-FI) menjadi fitur wajib untuk mengoptimalkan sistem pembakaran Honda Gold Wing. Kemudian untuk transmisinya menggunakan teknologi Seven-speed automatic DCT yang biasanya digunakan pada mobil sport.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Transmisinya sangat canggih, sehingga sebanding dengan harga Honda Gold Wing yang mahal. Kita juga bisa mengaturnya menjadi transmisi manual dengan menekan tombol khusus pada bagian handlebar. Lalu ada pula 4 pilihan Riding Mode yang terdiri dari Tour, Sport, Rain, dan Economy. Setiap modenya terintegrasi pada bagian suspensi yang menggunakan teknologi Electronic Preoload Suspension, sehingga kita bisa menyesuaikan dengan kenyaman berkendara dan kondisi jalan yang kita lalui.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda GOLD WING 1800</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : Liquid-cooled horizontally opposed six-cylinder<br />\r\nKapasitas : 1.833 cc<br />\r\nTenaga Maksimum&nbsp;&nbsp; &nbsp;: 92.9 kW / 5.500 rpm<br />\r\nTorsi Maksimum : 170 Nm / 4.500 rpm<br />\r\nSistem Bahan Bakar : Fuel Injection (PGM-Fi)<br />\r\nTipe Starter : Electric Starter<br />\r\nTipe Transmsi : Seven-speed automatic DCT, plus reverse and walking mode<br />\r\nBore X Stroke : 73 mm x 73 mm<br />\r\nRasio Kompresi : 10.5:1<br />\r\nTipe Kopling : Wet, Multiple with coil springs<br />\r\nKapasitas Oli : 4.4 Liter<br />\r\nPanjang&nbsp;&nbsp; &nbsp;: 2579 mm<br />\r\nLebar : 950 mm<br />\r\nTinggi : 1432 mm<br />\r\nJarak Sumbu Roda : 1698 mm<br />\r\nGround Clearance : 745 mm<br />\r\nBerat : 380 kg<br />\r\nKapasitas Tangki : 21 Liter</span></p>\r\n', '2020-09-15 06:03:56', 5, 'BIG BIKE', 1, 'GoldWing1800-2.png', 'GoldWing1800-21.png', 'GoldWing1800-1.png', '', '', 2, 'admin1', 0),
(71, 'HONDA CRF 1100L AFRICA', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CRF1100L Africa Twin Adventure Sports resmi dirilis oleh PT Astra Honda Motor (AHM) pada awal tahun 2020. Motor ini diklaim ditujukan untuk pecinta motor <em>adventure tourer</em> sejati di Indonesia yang mendambakan ketangguhan jelajah jarak jauh.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Motor petualang Honda tersebut kini dibekali dengan beragam fitur terbaru, salah satunya adalah kehadiran sensor <em>Inertial Measurement Unit</em> (IMU). Fitur ini berfungsi untuk mendeteksi posisi motor dalam 6 poros dan dapat terhubung pada fitur lain, yakni ECU dan ABS sehingga motor dapat menyesuaikan kondisi medan yang dilalui.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Selain itu, motor ini juga dilengkapi pengaplikasian 4+2 <em>riding mode</em>. Fitur ini akan membantu pengendara dalam memilih mode yang sesuai dengan jalanan yang dihadapi, seperti mode <em>tour</em>, <em>urban</em>, <em>gravel</em>, dan <em>off-road</em>. Sementara itu, untuk 2 <em>riding mode</em> tambahan merupakan pilihan mode yang dapat diatur sendiri oleh pengendara sesuai kebutuhannya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sejumlah fitur juga disematkan di motor tersebut, seperti <em>cornering ABS</em>, <em>wheelie control</em> dan <em>rear lift control</em>, <em>cruise control</em>, <em>touch screen</em> digital panel meter TFT berukuran 6,5 inch yang mendukung <em>Apple Carplay</em>, dan <em>wind screen</em> dengan 5 level ketinggian.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Toshiyuki Inuma selaku President Director AHM mengungkapkan bahwa kehadiran CRF1100L Africa Twin Adventure Sports meupakan jawaban bagi petualang sejati yang menyukai perjalanan jarak jauh dengan beragam medan jalan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Beralih ke bagian&nbsp;rangka, Africa Twin terbaru ini mendukung tiga sektor utama, yakni performa ketika <em>off-road</em>, kenyamanan saat turing, dan kelincahan saat digunakan harian.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tak hanya itu, sistem elektronik secara keseluruhan mampu mengatasi kondisi apapun, baik melaju di trek aspal atau sedang menjelajah medan <em>off-road</em>. Hal ini berkat adanya <em>Honda Selectable Torque Control</em> (HSTC), yakni&nbsp;sistem yang menawarkan tujuh tahap kontrol (mode)&nbsp;yang memungkinkan pengendara menonaktifkan ABS roda belakang dan mendapat sensasi berkendara sesuai yang diinginkan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CRF 1100L AFRICA TWIN ADVENTURE</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Dimensi (P X L X T) : 2.330 mm x 960 mm x 1.560 mm<br />\r\nJarak Sumbu Roda : 1.575 mm<br />\r\nJarak terendah ke tanah : 210 mm<br />\r\nTinggi tempat duduk : 810 mm (low), 830 mm (high)<br />\r\nBerat : 238 kg (M/T), 248 kg (DCT)<br />\r\nKapasitas Tangki Bensin : 24,8 liter</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Mesin : 4-Tak, 8-Valve, SOHC, Parallel Twin with 270&deg; crank and uni-cam, Pendingin cairan<br />\r\nKapasitas : 1.084<br />\r\nDiameter x Langkah : 92 x 81,5 mm<br />\r\nPerbandingan Kompresi : 10,1: 1<br />\r\nDaya Maksimum : 75 kW (100 dk) /7.500 rpm<br />\r\nTorsi Maksimum : 105 Nm /6.000 rpm<br />\r\nSistem Bahan Bakar : PGM-FI<br />\r\nTransmisi : Manual, 6-percepatan dan DCT, 6-Percepatan<br />\r\nTipe kopling : Wet multiplate with coil springs, Aluminium Cam Assist an Slipper Clutch<br />\r\nKapasitas oli : 3,9 liter (M/T), 4 liter (DCT)<br />\r\nStarter : Elektrik</span></p>\r\n', '2020-09-15 06:31:32', 5, 'BIG BIKE', 1, 'CRF1000LAFRICATWIN-11.png', 'CRF1000LAFRICATWIN-12.png', 'CRF1000LAFRICATWIN-2.png', '', '', 2, 'admin1', 0),
(72, 'HONDA REBEL', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Honda Rebel 500</strong> &ndash; Perusahaan berlambang sayap mengepak ini memiliki moge cruiser murah bernama CMX500 Rebel atau sering disebut sebagai &ldquo;Honda Rebel 500&rdquo;. Motor ini langsung menyita perhatian pecinta otomotif tanah air setelah dirilis pada tahun 2017, dan saat ini menjadi moge Honda terlaris di Indonesia. Harganya dibanderol di bawah 150 Juta Rupiah, sehingga cocok bagi pecinta otomotif yang ingin naik kelas dari motor 250cc atau dibawahnya. Terlebih Honda Rebel 500 menawarkan gaya Cruiser dengan tamilan retro yang nyaman dikendarai.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Kesuksesan Honda Rebel 500 menjadi<a href=\"https://www.otomotifo.com/harga-moge-honda-terbaru/\"><strong> </strong></a>moge Honda terlaris<a href=\"https://www.otomotifo.com/harga-moge-honda-terbaru/\"> </a>di Indonesia memang tidak lepas dari harga Honda Rebel 500 yang murah. Motor ini sangat cocok bagi orang dewasa yang mencari motor dengan tingkat kenyaman terbaik di kelasnya. Honda Rebel 500 memiliki desain layaknya Harley Davidson yang mengadopsi konsep Cruiser yang nyaman dipakai saat touring atau perjalanan jauh. Kapasitas mesinnya memang tak sebesar moge Honda lainnya. Namun performanya sudah lebih dari cukup untuk menunjang setiap perjalanan jarak jauh ataupun dekat.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Mesin dua silinder Parallel Twin Engine menjadi dapur pacu Honda Rebel 500. Mesin tersebut memiliki konfigurasi 8 katup dengan volume silinder berkapasitas 471cc. Tenaga yang dikeluarkannya mencapai 35.2 kW pada putaran mesin 8.500 rpm. Sedangkan torsinya mencapai 45.8 Nm pada 5.500 rpm. Meski tidak terlalu besar, namun tetap mampu diandalkan untuk menempuh perjalanan jauh ataupun dekat dengan kinerja mesin yang responsif dan hemat BBM. Untuk konsumsi bahan bakarnya sendiri mencapai 27 km/liter.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda REBEL</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : Liquid cooled, 4 Stroke, 8 Valve, DOHC with Parallel Twin Engine<br />\r\nKapasitas : 471 cc<br />\r\nTenaga Maksimum&nbsp;&nbsp; &nbsp;: 35.2 kW/ 8500 rpm<br />\r\nTorsi Maksimum&nbsp;&nbsp; &nbsp;: 45.8 Nm/ 5500 rpm<br />\r\nSistem Bahan Bakar : Fuel Injection (PGM-Fi)<br />\r\nTipe Starter : Electric Starter<br />\r\nTipe Transmsi : Constant Mesh 6-Speed<br />\r\nBore X Stroke : 67 x 66.8 mm<br />\r\nRasio Kompresi : 10.7 : 1<br />\r\nTipe Kopling : Wet, Multiple with coil springs<br />\r\nKapasitas Oli : 2.5 Liter<br />\r\nPanjang&nbsp;&nbsp; &nbsp;: 2.188 mm<br />\r\nLebar : 820 mm<br />\r\nTinggi : 1.094 mm<br />\r\nTinggi Tempat Duduk : 690 mm<br />\r\nJarak Sumbu Roda : 1.488 mm<br />\r\nGround Clearance : 136 mm<br />\r\nBerat : 190 kg<br />\r\nKapasitas Tangki : 11.2 Liter</span></p>\r\n', '2020-09-15 06:36:57', 5, 'BIG BIKE', 1, 'CMX500REBEL-1.png', 'CMX500REBEL-11.png', 'CMX500REBEL-2.png', 'CMX500REBEL-3.png', '', 2, 'admin1', 0),
(73, 'HONDA CBR 1000 RR-R', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CBR1000RR SP &ndash; Honda bisa dikatakan memiliki sejuta pesona yang tak pernah tergantikan oleh siapapun, apalagi untuk motor besar atau yang sering di sebut moge, motor satu ini bisa dikatakan dapat membuat siapa saja yang melihatnya akan tergoda untuk bisa memilikinya. Ditambah bentuknya yang besar dengan di balut materail berkualitas, yang di desain gahar mulai dari tampilan depan hingga bagian terkecil, menjadikannya terlihat sempurna.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Selain tampilan dan desain yang gahar, ternyata pada bagian mesin yang dibawanya juga dapat dikatakan gahar, terlebih dengan diperkuat mesin 1000cc, yang dilengkapi adanya fitur canggih berteknologi tinggi, dimana hampir semua fitur teknologi yang dimiliki oleh Superbike Honda, di adopsi semua oleh motor satu ini, yang menjadikan kenrja mesin sewaktu melakukan akselerasi lebih baik, handling lebih tinggi, dan yang terpenting, performa yang dihasilkan lebih mantap.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Dan indovasi pun masih berlanjut pada bagian kakai-kakai yang dapat meredam getaran, dan juga membuat tampilan lebih ciamik pastinya, dikarenakan pada bagian ini, honda menanamkan suspensi jenis Ohlins, yang mana merek tersebbut akan kekutan redamnya yang tak tertandingi, dan dapat menemabah tingkat keseimbangan sewaktu berkendara lebih tinggi. Oleh karena itu, semua spesifikasi yang dibawa dan fitur yang dimiliki olehnya, menjadikan Honda CBR1000RR SP dimasukan kedalam jajaran Motor Premium.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Gahar dan tangguh, kedua kata tersebut mewakili akan performa yang dimiliki oleh CBR1000RR SP, jadi pantas saja Harga Honda CBR1000RR SP dibanderol sangat mahal. Terlebih jika sobat ketahui jeroan dapur pacu yang dimilikinya, Honda meggunakan mesin 4 tak dengan tipe DOHC yang memiliki 4 silinder segaris, dan kubikasi mesin yang mncapai angka 999.8cc, yang dijalankan pada sistem bahan bakar berupa PGM-DFSI (Programmed Dual Stage Fuel Injection), sedangkan untuk perbandingan kompresi mesin, Honda CBR1000RR SP menggunakan 12,3 : 1, yang didukung penuh transmisi manual 6-speed.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Dari racikan mesin seperti itu, Honda dapat menyumbulkan performa yang cukup mantap, hingga maksimum power sampai dengan 133 kW pada setiap putaran mesin 12.250 RPM, sedangkan untuk nilai torsi yang di raihnya mendapat perolehan angka 114 NM pada setiap 10.500 RPM. Meskipun dapat meghasilkan power yang sangat besar, berkat adanya teknologi bahan bakar yang digunakannya, membuat Honda CBR1000RR SP HAnya menghabiskan 17,85 km / liter saja, dan itu masih bisa dikatakan irit untuk seukuran motor besar dengan mesin 1000 cc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CBR1000RR-R</span></p>\r\n\r\n<p><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\">Engine Type: Liquid-Cooled, 4-Stroke, 16-Valve, DOHC Inline 4-Cylinder<br />\r\nDisplacement : 999.8cc<br />\r\nCarburation : PGM-DSFI [Programmed Dual Stage Fuel Injection]<br />\r\nBore x Stroke : 76 mm x 55.1 mm<br />\r\nTransmission Type : 6-Speed<br />\r\nCompression Ratio : 12.3 : 1<br />\r\nMaximum Power : 133 kW/12,250 rpm<br />\r\nMaximum Torque : 114 Nm/10,500 rpm<br />\r\nStarter Type : Electric Starter<br />\r\nOil Capacity : 3.7 Liters<br />\r\nClutch Type : Wet Multiplate with Diaphragm Spring<br />\r\nOverall (L x W x H) : 2,080 mm x 720 mm x 1,141 mm<br />\r\nWheelbase : 1,410 mm<br />\r\nGround Clearance : 130 mm<br />\r\nSeat Height : 820 mm<br />\r\nCurb Weight : 210 kg [ABS Version]<br />\r\nCaster Angle/Trail : 23.0&deg; 3&rsquo;/96 mm<br />\r\nFuel Capacity : 17.5 Liters</span></p>\r\n', '2020-09-15 06:39:06', 5, 'BIG BIKE', 0, 'CBR1000RR-R-2.png', 'CBR1000RR-R-21.png', 'CBR1000RR-R-1.png', '', '', 2, 'admin1', 0),
(74, 'HONDA CBR 1000 RR ', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">&ldquo;Honda CBR1000RR Fireblade dan Honda CBR1000RR Fireblade SP hadir layaknya motor baru dengan suguhan update teknologi canggih yang akan menghadirkan kebanggaan berkendara tersendiri bagi pemiliknya. Konsep Next Stage Total Control memastikan berkendara menggunakan motor ini akan menjadi sebuah pengalaman yang menyenangkan karena pengendara benar-benar memegang kontrol penuh atas motor yang dikendarainya.&rdquo;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Minimal dan dinamis adalah dua kata yang paling menggambarkan desain dari Honda CBR1000RR Fireblade. Honda ingin membentuk proporsi kompak yang padat serta fairing pada bagian atas dan tengah telah dikurangi ukurannya. Garis karakter yang menjorok ke depan melambangkan gaya agresif serta fokus pada fungsi mekanis, detail dan kualitas saat finishing.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Desain yang dimiliki juga sangat aerodinamis sehingga menjaga kestabilan berkendara saat kecepatan tinggi. Pada sirkuit balapan posisi pengendara terlindungi dari arus angin, sementara pada posisi berkendara normal tekanan udara terdistribusi merata pada bagian tubuh pengendara. Aksen atletis ditonjolkan pada bentuk cover tangki bensin dan dudukan motor.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Keseluruhan pencahayaan menggunakan LED dengan desain lampu depan yang kembar menawarkan lampu jarak jauh dan jarak pendek di keduanya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tampilan display yang dimiliki oleh Honda CBR1000RR Fireblade mengadopsi layar TFT full-colour liquid crystal yang dimiliki Honda RC213V-S. Layar ini secara otomatis menyesuaikan kondisi cahaya sekitar dengan 3 mode fitur; Street, Circuit dan Mechanic yang dapat disesuaikan dengan kebutuhan pengendara.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CBR 1000 RR</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\">Bore &times; Stroke (mm) : 76 x 55<br />\r\nCarburation : PGM-DSFI<br />\r\nCompression Ratio : 13:01<br />\r\nEngine Displacement (cc) : 999cc<br />\r\nEngine Type (cm&sup3;) : Liquid-cooled 4-stroke 16-valve DOHC Inline-4<br />\r\nMax. Power Output : 141kW (189.084 HP )/13,000rpm<br />\r\nMax. Torque :116Nm/11,000rpm<br />\r\nStarter&nbsp; Electric<br />\r\nTyres Front : 120/70ZR17 58W<br />\r\nTyre Size Rear : 190/50ZR17 73W<br />\r\nWheels Front : 17 inch<br />\r\nWheels Rear : 17 inch<br />\r\nCaster Angle : 23.3&deg;<br />\r\nDimensions (L&times;W&times;H) (mm) : 2,065mm x 715mm x 1125mm<br />\r\nFrame type : Diamond; aluminium composite twin spar<br />\r\nFuel Tank Capacity (Litres) : 16L<br />\r\nGround Clearance (mm) : 129mm<br />\r\nKerb Weight (kg) : 195kg<br />\r\nSeat Height (mm) : 820mm<br />\r\nTrail (mm) : 96mm<br />\r\nWheelbase (mm) : 1404mm</span></p>\r\n', '2020-09-15 06:40:35', 5, 'BIG BIKE', 1, 'CBR1000RR-1.png', 'CBR1000RR-11.png', 'CBR1000RR-2.png', '', '', 2, 'admin1', 0),
(75, 'HONDA CB 500 F', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CB500F Terbaru 2019 &ndash;&nbsp;Keputusan Honda untuk menghadirkan 6 unit Moge terbarunya memang tidak salah meskipun terbilang berani namun hadirnya Moge-moge terbaru Honda ini sangat menyita perhatian terutama untuk para Rider pecinta moge.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Desain Honda CB500F memang terlihat cukup fresh, namuntahukah sobat bahwa motor ini sebenarnya memiliki desain yang terinspirasi dari Honda CB650F yang notabene berada di kelas lebih atas. Untuk bagian depan motor ini akan menggunakan desain headlamp&nbsp;V-shape sedangkan untuk lampu utama ini akan menggunakan lampu jenis LED yang siap memberikan pencahayaan yang maksimal.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Perfoma mesin yang tangguh sudah barang tentu menjadi kelebihan Honda CB500F nantinya Honda kan menggunakan mesin DOHC paralel dua silinder 8 katup berkubikasi 471 cc. Mesin tersebut juga bakalan semakin sempurna karena mampu menghasilkan tenaga 35 KW pada 8.500 rpm, sedangkan toehan torsi sendiri mencapai 43 NM pada 7.000 rpm. Perfoma mesin yang mempuni jelas bakal menjadi kelebihan motor yang dibandrol dengan Harga H0nda CB500F 2019 yang mahal tersebut.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Motor 500 cc tersebut juga tidak lupa akan dibekali dengan sistem pemabakaran PGM-FI dengan kata lain selain ramah lingkungan juga memiliki konsumsi bahan bakar yang tetap terkontrol dengan sangat baik. Sedangkan untuk mengimbangi perfoma mesinnya yang besar Honda telah menyiapkan transmisi 6 percepatan guna memberikan tambahan akselerasi yang maksimal. Kali ini Honda akan membekali motor mahalnya dengan sistem starter Elektrik saja.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CB 500 F</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : DOHC Parallel Twin Cylinders 4-stroke 8-valve<br />\r\nKapasitas : 471,0 cc<br />\r\nDiameter Langkah : 67 mm x 66.8 mm<br />\r\nRasio Kompresi : 10.7 : 1<br />\r\nPower Max : 35 kW/8,500 rpm<br />\r\nTorsi Max : 43 Nm/7,000 rpm<br />\r\nStarter : Electric Starter<br />\r\nPendingin : Liquid Cooled<br />\r\nSistem Bahan Bakar : PGM-FI (Programmed Fuel Injection)<br />\r\nTransmsi : 6-speed, return<br />\r\nP x L x T : 2,075 mm x 780 mm x 1,060 mm<br />\r\nBerat Isi : 192 kg<br />\r\nWheelbase : 1447 mm<br />\r\nGround Clearance : &ndash; mm<br />\r\nTinggi Jok : 790 mm<br />\r\nKapasitas tangki : 15.5 Liter</span></p>\r\n', '2020-09-15 06:41:25', 5, 'BIG BIKE', 1, 'CB500F-1.png', 'CB500F-11.png', '', '', '', 2, 'admin1', 0),
(76, 'HONDA CB 650 R', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Honda CB650R</strong> &ndash; Honda baru saja merilis beberapa motor baru pada ajang tahunan EICMA 2018 yang berlangsung di Milan, Italia. Semuanya merupakan moger ber-cc besar, seperti Honda CBR650R, Honda CB500R, dan yang paling keren adalah Honda CB650R. Motor ini mengadopsi desain Neo Sport Cafe yang sebelumnya sudah digunakan Honda CB1000R dan beberapa naked bike Honda lainnya. Desainnya sangat keren, karena terlihat agresif dan sporty. Selain itu, Honda CB650R juga dibekali mesin 4 Silinder yang menjajikan power dan torsi melimpah.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Mesin Honda CB650R dirancang secara khusus untuk meningkatkan respon mesin saat berakselerasi dari idle sampai 8.000 rpm. Performanya sangat beringas, namun diimbangi dengan kenyamanan berkendara yang menjadikan Honda CB650R layak dipakai Touring maupun sebagai kendaraan harian. Tersedia pula beberapa fitur baru yang akan memajakan pengendaranya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Secara keseluruhan desain Honda CB650R memang keren. Terlebih motor ini sudah dilengkapi headlamp berbentuk bundar yang dikelilingi LED. Begitu pula dengan lampu belakang yang sudah LED dan memiliki buritan bergaya agresif senada dengan bagian depan. Sedangkan untuk bagian samping terlihat adanya cover yang berada dibagian samping tangki bensin berkapasitas 15.4 Liter. Rupanya cover tersebut bukan sembarang cover, karena digunakan untuk mendukung sistem pendingin atau sebagai air intake yang nantinya akan meningkatkan efisiensi dan torsi.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CB650R mampu mengeluarkan torsi puncak sebesar 64 Nm pada 8.500 rpm dan tenaga maksimum 70 kW pada 12.000 rpm. Tenaga dan torsi sebesar itu berasal dari mesin 4 Silinder DOHC yang memiliki 16 buah katup dan sistem pendingin udara. Mesin tersebut memiliki kapasitas sebesar 649cc dan didukung sistem pembakaran PGM-FI (Fuel Injection). Performa mesinnya memang responsif dan bisa diandalkan untuk berakselerasi dengan sangat cepat. Sedangkan untuk konsumsi bahan bakarnya sekitar 20.4 km/liter sehingga tergolong irit untuk moge 4 Silinder berkapasitas 649cc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Mesin Honda CB650R dioptimalkan oleh Gearbox 6 percepatan yang didukung fitur Assist &amp; Slipper Clutch. Fitur tersebut berguna untuk meringankan kinerja kopling hingga 12% dan mengurangi hop roda belakang saat menurunkan gigi. Lalu ada pula fitur Honda Selectable Torque Control System (HSTC) yang memberikan kontrol penuh terhadap torsi Honda CB650R. Cara kerja HSTC adalah dengan menyesuaikan tenaga mesin untuk mengoptimalkan torsi di roda belakang. Alhasil HSTC akan mengurangi slip roda belakang, sehinga berkendara semakin aman dan nyaman.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CBR 650 R</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe Mesin : 4-stroke 16-valve DOHC inline-4 cylinder, Liquid-cooled<br />\r\nKapasitas Mesin : 649 cc<br />\r\nTenaga : 70 kW / 12.000 rpm<br />\r\nTorsi : 64 Nm / 8.500 rpm<br />\r\nSistem Pembakaran : PGM-FI Electronic Fuel Injection<br />\r\nTransmisi : 6-Speed<br />\r\nStarter : Electric<br />\r\nBore X Stroke : 67 mm x 46 mm<br />\r\nRasio Kompresi : 11.6:1<br />\r\nTipe Kopling : Wet multiplate, Assist &amp; Slipper Clutch<br />\r\nDimensi (P x L x T) : 2,130 mm x 780 mm x 1,075 mm<br />\r\nTinggi Tempat Duduk : 810 mm<br />\r\nTangki Bensin : 15.4 Liter<br />\r\nBerat : 202 kg<br />\r\nWheelbase : 1,450 mm<br />\r\nGround Clerance : 150 mm</span></p>\r\n', '2020-09-15 06:42:17', 5, 'BIG BIKE', 0, 'CB650R-2.png', 'CB650R-21.png', 'CB650R-1.png', '', '', 2, 'admin1', 0),
(77, 'HONDA CBR 500 R', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Harga Honda CBR500R &ndash; PT AHM Indonesia memang terlihat sangat total dalam menghadirkan semua segmen motornya di Indonesia, hal ini juga bisa terlihat dengan motor ber mesin besar yang sudah bisa dimiliki oleh konsumen Indonesia, salah satunya adalah Honda CBR500R yang sudah diluncurkan ke public pada medio awal tahun 2017 dimana motor sport ini tampil elegant dengan desain full fairing yang dibawanya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CBR500R sendiri merupakan generasi terbaru dari seri Honda CBR500 yang sebelumnya sudah ada, dimana pembaharuan yang ada semakin membuat seri sebelumnya terlihat cukup jauh tertinggal, Honda CBT500R terlihat lebih memiliki karakter yang kuat berkat desain bodynya yang dibuat tajam, perpaduan fitur-fitur modern yang ada pada motor ini juga membuatnya haur ditebus dengan harga mahal oleh calon konsumen.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">untuk ukuran dimensi sendiri motor ini memiliki Dimensi panjang&nbsp;2,081 mm, lebar 756 mm dan tinggi 1,150&nbsp;mm, dengan dimensinya tersebut membuat motor ini memiliki berat sekitar 192 kg, hal ini juga dilengkapi dengan jarak sumbu roda 142 mm yang semakin memberikan akselerasi yangat baik, secara setelah sendiri motor ini akan membawa tinggi tempat duduk 789 mm yang mana sebernanya masih sangat bersahabat dengan postur tubuh mayoritas orang Indonesia, namun jika merasaterlalu tinggi sobat bisa merendahkanya dengan mengubah seting suspensi depan dan belakang.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">motor ini memang sangat menonjolkan sisi dapur pacu, dimana Honda membekali motor nya dengan mesin dengan tipe&nbsp;47 1cc Liquid-Cooled, 4-Stroke, DOHC Parallel&nbsp;Twin&nbsp;Cylinders, mesin tersbut memiliki diameter kali langkah&nbsp;67 mm x 66.8 mm,&nbsp;35 kW pada putaran 8.500 rpm, serta torsi puncak mencapai 43 Nm pada putaran mesin 7.000 rpm dimana motor ini terbialang cukup power full untuk sebuah motor dengan kapasitas 500 cc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CBR 500 R</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : 471cc Liquid-Cooled, 4-Stroke, DOHC Parallel Twin Cylinders<br />\r\nKapasitas : 500 cc<br />\r\nDaya Maksimum : 37.1 kW/8,500 rpm<br />\r\nTorsi Maksimum : 44.5 Nm/7,000 rpm<br />\r\nDiameter X Langkah : 67 mm x 66.8 mm<br />\r\nRasio Kompresi &nbsp;&nbsp; &nbsp;10.7 : 1<br />\r\nSistem Pembakaran : PGM-FI with 34 Throttle Bodies<br />\r\nPengapian : Computer-controlled Digital Transistorized with Electronic Advance<br />\r\nTransmsi : 6 Kecepatan<br />\r\nDimensi (P x L x T) : 2,081 mm x 756 mm x 1,150 mm<br />\r\nBerat : 192 kg<br />\r\nTinggi Tempat Duduk : 789 mm<br />\r\nJarak Terendah ke Tanah : 165 mm<br />\r\nJarak Sumbu Roda : 140 mm<br />\r\nKapasitas tangki : 16.7 Liters</span></p>\r\n', '2020-09-15 06:43:51', 5, 'BIG BIKE', 0, 'CBR500R-1.png', 'CBR500R-11.png', 'CBR500R-2.png', '', '', 2, 'admin1', 0),
(78, 'HONDA CB 500 X', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda CB500X hadir dengan desain dengan DNA Adventure yang sangat khas, hal ini semakin diperkuat dengan adanya Visor bagian depan yang menjulang tinggi ala-ala Motor dalam ajang Reli Dakar. Selain itu ada juga lampu depan Honda CB500X 2019 yang berdesain Vshape, sedangkan dibagian samping sobat Otomaniac akan menjumpai duan windshield yang memiliki desain menyatu dengan tangki motor. Untuk Jok sendiri CB500X ini akan menggunakan desain jok bertingkat yang juga akan semakin memberikan kenyamanan berkendara.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sedangkan untuk bagian belakang sendiri Honda CB500X 2019 akan menggunakan bagian belakang yang sporty. Meskipun demikian kami melihat tidak ada yang spesial pada bagian belakang Honda CB500X 2019 ini. Selain itu ada juga lampu sein bagian belakang yang menggunakan lampu LED sangat sesaui dengan Harga Honda CB500X 2019 yang mahal. Untuk sobat yang memiliki tinggi badan dibawah 170 rasanya akan cukup kesulitan karena motor ini akan memiliki tinggi jok 830 mm.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Sama halnya dengan motor Adventure lain Honda CB500X 2019 juga akan menggunakan desain posisi menggendara tegap sehingga membuatnya sangat nyaman dikendarai untuk perjalanan jauh. Sedangkan untuk dimensi sendiri dengan Harga Honda CB500X 2019 yang mahal motor ini akan dibekali dengan panjang 2.095 mm lebar 830 mm sedangakan untuk tingginya mencapai 1.290 Mm deimana dengan dimensinya tersebut membuat motor sport yang satu ini memiliki berat total mencapai 196 Kg.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Perfoma mesin yang super tangguh juga akan diimbangi dengan adanya transmisi 6 percepatan yang membuatnya memiliki akselerasi yang sangat tangguh. Dengan Harga Honda CB500x 2019 yang tidak murah motor ini&nbsp; bahkan akan dibekali dengan sistem pembakaran PGM-FI milik Honda yang terkenal akan membuat mesin lebih hemat bahan bakar tanpa mengurangi akselerasinya. Sedangkan untuk mengimbangi kinerja mesin 500 cc Honda telah menyiapkan pendingin cairan yang juga untuk memberi umur yang lama pada mesin.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda CB 500 X</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : DOHC Parallel Twin Cylinders 4-stroke 8-valve<br />\r\nKapasitas : 471,0 cc<br />\r\nDiameter Langkah : 67 mm x 66.8 mm<br />\r\nRasio Kompresi : 10.7 : 1<br />\r\nPower Max : 35 kW/8,500 rpm<br />\r\nTorsi Max : 43 Nm/7,000 rpm<br />\r\nStarter : Electric Starter<br />\r\nPendingin : Liquid Cooled<br />\r\nSistem Bahan Bakar : PGM-FI (Programmed Fuel Injection)<br />\r\nTransmsi : 6-speed, return<br />\r\nP x L x T : 2,095 mm x 830 mm x 1,290 mm<br />\r\nBerat Isi : 196 kg<br />\r\nWheelbase : 1421 mm<br />\r\nGround Clearance : &ndash; mm<br />\r\nTinggi Jok : 810 mm<br />\r\nKapasitas tangki : 17 Liter</span></p>\r\n', '2020-09-15 06:44:40', 5, 'BIG BIKE', 0, 'CB500X-2.png', 'CB500X-21.png', 'CB500X-1.png', '', '', 2, 'admin1', 0),
(79, 'HONDA X-ADV', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Honda X-ADV &ndash;</strong> Honda salah satu perusahaan motor yang namanya sudah terkenal di seluruh Indonesia. Sepanjang tahun 2019 memang sudah cukup bayak menghadirkan produk terbarunya dan salah satunya adalah Honda X-ADV. Salah saqtu motor matic terbaru ini memang sudah secara resminya hadir diperkenalkan di Indonesia. Sebetulnya motor satu ini sudah diperkenalkan terlebih dahulu pdi beberapa negara dan salah satunya di tanah air. Untuk motor matic satu ini akan sangat cocok sekali bagi kalian semua yang sangat menyukai dengan berpetualang, karena pada dasarnya memiliki konsep motor adventure.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Jika dilihat dari bentuknya, motor skutik dari Honda satu ini memang sangat keren sekali dan terlihat sangat gahar. Oleh karena itu akan sangat cocok sekali untuk kalian semua yang sangat menyukai dengan berpetualang, selain itu juga sudah dilengkapi dengan cukup banyak teknologo canggih dan modern. Lalu untuk sektor dapur pacunya sudah tidak perlu untuk diragukan kembali, karena sudah dibekali dengan kapasitas mesin yang sangat besar.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Honda X-ADV telah membekali mesinnya bertipe&nbsp;Liquid-cooled, L2, SOHC dengan kapasitas mesin sebesar 745 cc. Dengan membawakan kapasitas mesin yang sangat besar, Honda X-ADV mampu menghasilkan tenaga maxsimalnya yang mencapai&nbsp;68 Nm pada putaran mesin 4,750 rpm dan untuk torsinya mampu mencapai&nbsp;40.3kW pada putaran mesin 6,250 rpm. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Jika dilihat akan performa yang dihasilkan dengan spesifikasi dapur pacu seperti tersebut, maka dapat dikatakan jika motor skutik ini memiliki tenaga yang sangat mantap betul. Terlebih untuk motor skutik terbaru dari Honda ini sudah di dukung dengan teknologi sangat canggih dan modern. Selian itu juga pada mesin tersebut memiliki diamter x langkah sebesar 77 mm x 80 mm dan sudah di dukung dengan kopling bertipe Wet multiplate Hydraulic Dual clutch (DCT). Bila melihat seperti tersebut, sudah tidak diragukan kembali akan performanya yang sangat sebanding dengan harga Honda X-ADV.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Spesifikasi Honda X-ADV</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\">Tipe : Liquid-cooled, L2, SOHC<br />\r\nKapasitas : 745 cc<br />\r\nDaya Maksimum : 68 Nm / 4,750 rpm<br />\r\nTorsi Maksimum : 40.3kW / 6,250 rpm<br />\r\nDiameter x Langkah : 77 x 80 mm<br />\r\nKopling&nbsp;&nbsp; &nbsp;: Wet multiplate Hydraulic Dual clutch (DCT)<br />\r\nTransmisi : 6-speed<br />\r\nUkuran (P X L X T) : 2245 x 910 x 1375 mm<br />\r\nTinggi Tempat Duduk : 820 mm<br />\r\nJarak Sumbu Roda : 1590 mm<br />\r\nJarak Ke Tanah : 162 mm<br />\r\nBerat : 238 kg<br />\r\nKapasitas Tangki : 13.1 Liter</span></p>\r\n', '2020-09-15 06:47:58', 5, 'BIG BIKE', 3, 'HondaXADV-2.png', 'HondaXADV-21.png', 'HondaXADV-3.png', 'HondaXADV-1.png', 'HondaXADV-4.png', 2, 'admin1', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_big_bike`
--
ALTER TABLE `tbl_big_bike`
  ADD PRIMARY KEY (`port_id`);

--
-- Indexes for table `tbl_cub`
--
ALTER TABLE `tbl_cub`
  ADD PRIMARY KEY (`port_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indexes for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indexes for table `tbl_matic`
--
ALTER TABLE `tbl_matic`
  ADD PRIMARY KEY (`port_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`port_id`);

--
-- Indexes for table `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`views_id`);

--
-- Indexes for table `tbl_sport`
--
ALTER TABLE `tbl_sport`
  ADD PRIMARY KEY (`port_id`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_big_bike`
--
ALTER TABLE `tbl_big_bike`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_cub`
--
ALTER TABLE `tbl_cub`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_matic`
--
ALTER TABLE `tbl_matic`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=986;

--
-- AUTO_INCREMENT for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `views_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `tbl_sport`
--
ALTER TABLE `tbl_sport`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
