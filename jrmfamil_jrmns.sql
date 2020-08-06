-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2020 at 12:08 PM
-- Server version: 10.1.45-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jrmfamil_jrmns`
--

-- --------------------------------------------------------

--
-- Table structure for table `annual_leave`
--

CREATE TABLE `annual_leave` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `jan` int(11) NOT NULL,
  `feb` int(11) NOT NULL,
  `mar` int(11) NOT NULL,
  `apr` int(11) NOT NULL,
  `may` int(11) NOT NULL,
  `jun` int(11) NOT NULL,
  `jul` int(11) NOT NULL,
  `aug` int(11) NOT NULL,
  `sep` int(11) NOT NULL,
  `oct` int(11) NOT NULL,
  `nov` int(11) NOT NULL,
  `des` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `annual_leave`
--

INSERT INTO `annual_leave` (`id`, `emp_id`, `year`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `des`) VALUES
(1, 8805, 2020, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `apply_leave`
--

CREATE TABLE `apply_leave` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `type_leave` text NOT NULL,
  `date_apply` varchar(25) NOT NULL,
  `date_claim` varchar(25) NOT NULL,
  `reason` text NOT NULL,
  `approval` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_leave`
--

INSERT INTO `apply_leave` (`id`, `emp_id`, `type_leave`, `date_apply`, `date_claim`, `reason`, `approval`) VALUES
(4, 3577, 'Annual Leave', '10/07/2019 - 10/07/2019', '05/12/2020 - 05/12/2020', 'AL', 'Approved'),
(5, 3577, 'Carry Forward Leave', '02/13/2020 - 02/13/2020', '05/12/2020 - 05/12/2020', 'GUNA CARRY FOWARD- AL', 'Approved'),
(6, 3577, 'Sick Leave', '10/15/2019 - 10/15/2019', '05/12/2020 - 05/12/2020', 'MC', 'Approved'),
(7, 3577, 'Sick Leave', '03/02/2020 - 03/02/2020', '05/12/2020 - 05/12/2020', 'MC', 'Approved'),
(8, 3577, 'Sick Leave', '01/21/2020 - 01/21/2020', '05/12/2020 - 05/12/2020', 'MC', 'Approved'),
(10, 8805, 'Sick Leave', '03/18/2020 - 03/18/2020', '05/12/2020 - 05/12/2020', 'GASTRIK', 'Approved'),
(11, 8804, 'Sick Leave', '03/15/2020 - 03/16/2020', '05/13/2020 - 05/13/2020', 'MC', 'Approved'),
(12, 7751, 'Annual Leave', '07/31/2019 - 07/31/2019', '05/13/2020 - 05/13/2020', 'AL', 'Approved'),
(13, 7751, 'Annual Leave', '03/16/2020 - 03/16/2020', '05/13/2020 - 05/13/2020', 'AL', 'Approved'),
(14, 7410, 'Sick Leave', '02/18/2020 - 02/18/2020', '05/13/2020 - 05/13/2020', 'MC', 'Approved'),
(33, 7410, 'Annual Leave', '05/22/2020 - 05/22/2020', '05/15/2020 - 05/15/2020', 'Cuti Hari Raya', 'Approved'),
(35, 8805, 'Annual Leave', '05/29/2020 - 05/30/2020', '05/15/2020 - 05/15/2020', 'AL- CUTI RAYA', 'Approved'),
(49, 7751, 'Annual Leave', '05/06/2020 - 05/06/2020', '05/16/2020 - 05/16/2020', 'AL', 'Approved'),
(46, 8804, 'Annual Leave', '05/26/2020 - 05/26/2020', '05/16/2020 - 05/16/2020', 'AL-CUTI RAYA', 'Approved'),
(48, 7751, 'Annual Leave', '05/11/2020 - 05/11/2020', '05/16/2020 - 05/16/2020', 'AL', 'Approved'),
(50, 8804, 'Compassionate Leave', '03/08/2020 - 03/09/2020', '05/16/2020 - 05/16/2020', 'KEMATIAN AHLI KELUARGA ', 'Approved'),
(51, 8804, 'Marriage Leave', '01/18/2020 - 01/20/2020', '05/16/2020 - 05/16/2020', 'CUTI KAHWIN', 'Approved'),
(53, 7751, 'Annual Leave', '06/01/2020 - 06/01/2020', '05/28/2020 - 05/28/2020', 'AL', 'Approved'),
(54, 7751, 'Annual Leave', '06/13/2020 - 06/13/2020', '06/09/2020 - 06/09/2020', 'balik kampung ', 'Pending'),
(55, 3577, 'Sick Leave', '06/02/2020 - 06/02/2020', '06/09/2020 - 06/09/2020', 'MC', 'Pending'),
(56, 3577, 'Annual Leave', '05/11/2020 - 05/11/2020', '06/09/2020 - 06/09/2020', 'AL', 'Pending'),
(57, 3577, 'Annual Leave', '06/12/2020 - 06/12/2020', '06/09/2020 - 06/09/2020', 'CUTI RAYA', 'Pending'),
(58, 3577, 'Annual Leave', '06/14/2020 - 06/14/2020', '06/09/2020 - 06/09/2020', 'CUTI RAYA', 'Pending'),
(59, 7410, 'Annual Leave', '06/20/2020 - 06/20/2020', '06/13/2020 - 06/13/2020', 'AL', 'Pending'),
(60, 8804, 'Annual Leave', '06/26/2020 - 06/26/2020', '06/28/2020 - 06/28/2020', 'Balik kampung', 'Pending'),
(61, 7410, 'Annual Leave', '07/30/2020 - 07/30/2020', '07/28/2020 - 07/28/2020', 'Cuti', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `covid19`
--

CREATE TABLE `covid19` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `icno` varchar(25) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `suhu` double(4,1) NOT NULL,
  `currdate` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `covid19`
--

INSERT INTO `covid19` (`id`, `name`, `icno`, `phone`, `suhu`, `currdate`) VALUES
(38, 'Fauziah', '', '0172138637', 36.2, '01/06/2020 11:20:33 am'),
(44, 'Nurul syahida binti abd rahman', '', '0135842583', 36.2, '01/06/2020 12:21:35 pm'),
(35, 'Nurul syahida binti abd rahman', '', '0135842583', 36.2, '01/06/2020 10:19:40 am'),
(9, 'Rafikha bt amross', '', '0173291895', 36.2, '30/05/2020 10:57:50 am'),
(10, 'Mohd Mustapi Ahmad', '', '0196885768', 36.2, '30/05/2020 10:59:24 am'),
(11, 'Afasha Adnan', '', '01110822016', 36.2, '30/05/2020 01:05:16 pm'),
(12, 'Norsyahira', '', '0179914432', 36.3, '30/05/2020 02:04:46 pm'),
(14, 'Yusmamurni', '', '0173020469', 36.2, '30/05/2020 02:05:23 pm'),
(15, 'Zawiah amran', '', '0136194006', 36.1, '30/05/2020 02:29:58 pm'),
(16, 'Zamrah abas', '', '0136194006', 36.3, '30/05/2020 02:30:37 pm'),
(17, 'Umi Sakinah Mat Jamian', '', '0134007942', 36.3, '30/05/2020 03:37:14 pm'),
(19, 'Amirah Abdul  malik', '', '0147338642', 36.2, '30/05/2020 04:58:40 pm'),
(21, 'Nurulhuda mat ali', '', '0108987024', 35.4, '30/05/2020 05:28:58 pm'),
(22, 'Norhayati binti janin', '', '0176985199', 36.5, '30/05/2020 05:29:28 pm'),
(23, 'Rosni binti Yusof', '', '0196859028', 36.0, '31/05/2020 09:12:01 am'),
(25, 'Noraishah binti Hashim', '', '0173677581', 36.1, '31/05/2020 01:16:05 pm'),
(26, 'Sharazad binti Abdul manap', '', '01045401095', 36.1, '31/05/2020 02:34:16 pm'),
(27, 'Nur asyiqin binti md japlus', '', '0129009954', 36.0, '31/05/2020 02:54:24 pm'),
(28, 'Nurul ain binti tajul arifin', '', '0123686571', 36.1, '31/05/2020 03:26:17 pm'),
(29, 'Azeira azreen', '', '0182874032', 35.5, '31/05/2020 04:31:28 pm'),
(30, 'Siti sarah binti ibrahim', '', '0178759563', 36.5, '31/05/2020 05:46:18 pm'),
(31, 'Norhafizan binti daud', '', '0123290915', 36.3, '31/05/2020 05:56:30 pm'),
(32, 'Siti Hajar', '', '0136675911', 36.2, '31/05/2020 06:03:19 pm'),
(34, 'zety Akhtar Baharudin', '', '0196637880', 36.2, '31/05/2020 06:11:18 pm'),
(37, 'Nor azian bte abd rahman', '', '0192322184', 36.1, '01/06/2020 10:20:15 am'),
(45, 'Fiza binti arrifin ', '700401055334', '01131874603', 36.2, '01/06/2020 12:34:46 pm'),
(46, 'Normahizan binti mood shafian', '800202055102', '0122597641', 36.1, '01/06/2020 01:06:32 pm'),
(47, 'Rahmah', '730504055078', '01160816004', 35.8, '01/06/2020 03:06:26 pm'),
(48, 'Noor Azlema binti MD din', '780501015914', '0102500238', 36.2, '01/06/2020 03:42:40 pm'),
(49, 'NURUL ALIS', '991214055040', '01111409401', 36.1, '01/06/2020 05:00:47 pm'),
(50, 'khaireen nurazikin binti ab razak', '881009055458', '0129109890', 36.1, '01/06/2020 05:01:50 pm'),
(58, 'Kak nor', '790603055174', '0137204032', 36.5, '02/06/2020 03:46:14 pm'),
(52, 'AZIZAH MUSTAPHA', '620611055674', '0192333914', 36.2, '01/06/2020 05:52:14 pm'),
(53, 'Nordiana binti Ahmad jemani', '840402105318', '0193540205', 36.1, '02/06/2020 09:41:05 am'),
(54, 'Nur anis solihin bt basri ', '000107010250', '01155011525', 36.2, '02/06/2020 11:38:39 am'),
(55, 'Norman hamid', '630606055986', '0199441395', 36.3, '02/06/2020 11:49:18 am'),
(56, 'Salamah', '760724055376', '0132047607', 36.4, '02/06/2020 12:55:22 pm'),
(57, 'Rosanna hashim', '640126106608', '0142215328', 36.5, '02/06/2020 02:45:41 pm'),
(59, 'khaireen nurazikin binti ab razak', '881009055458', '0129109890', 36.1, '02/06/2020 04:14:53 pm'),
(60, 'Azlina binti othman', '720909045258', '0122525057', 36.1, '02/06/2020 04:56:16 pm'),
(61, 'Normaliza', '860131595412', '0136690710', 26.7, '02/06/2020 05:19:30 pm'),
(62, 'Nor shafinaz', '921113055398', '0143183022', 36.4, '02/06/2020 05:23:38 pm'),
(63, 'Noraida', '771108055464', '0184624778', 36.4, '02/06/2020 05:24:20 pm'),
(64, 'Fauziah', '', '0172138637', 36.2, '02/06/2020 09:57:16 pm'),
(65, 'Nurul hidayah md rodzi', '89042405554', '0166229780', 36.4, '03/06/2020 10:47:14 am'),
(66, 'Nurul ain', '', '0139823031', 36.1, '03/06/2020 01:41:16 pm'),
(67, 'Siti hamizah', '951225055576', '0176746861', 36.4, '03/06/2020 02:57:08 pm'),
(68, 'Nor hafizah bt salim', '890208595398', '0129170198', 36.2, '03/06/2020 03:42:31 pm'),
(69, 'Normative binti Mohammad nor', '', '0129780832', 36.0, '03/06/2020 05:18:01 pm'),
(70, 'NUR FATIN AKMAL BTE MAZLAN', '880827565682', '0172211009', 36.0, '03/06/2020 06:17:42 pm'),
(71, 'Normahizan binti mohd syafian', '', '0122597641', 36.1, '04/06/2020 10:17:30 am'),
(72, 'Juliana ', '810224055014', '0126618705', 36.8, '04/06/2020 10:57:52 am'),
(73, 'Nana', '821003045342', '0183278234', 36.1, '04/06/2020 11:16:51 am'),
(74, 'Sabrina by salim', '', '0136974451', 36.1, '04/06/2020 11:22:02 am'),
(75, 'Zuraidah by senin', '', '0126434976', 30.0, '04/06/2020 02:21:04 pm'),
(76, 'Nor want bt ali', '', '0133884304', 34.0, '04/06/2020 03:09:39 pm'),
(77, 'Nur fathanah binti Khamis', '850924075012', '0186669971', 36.1, '04/06/2020 03:10:18 pm'),
(78, 'Rashidah binti Ali', '750801055224', '0135156773', 35.1, '04/06/2020 03:30:39 pm'),
(79, 'Nuren Hidayu binti Abd Latif ', '830804105602', '0122303809', 36.3, '04/06/2020 03:35:49 pm'),
(80, 'Sri Wahyuni Binti Mardiustari', '970916055464', '01156263027', 36.2, '04/06/2020 06:02:37 pm'),
(81, 'Tengku aleeza', '', '0187608499', 36.2, '05/06/2020 10:51:20 am'),
(82, 'Habibah Hassan ', '', '0126937401', 36.1, '05/06/2020 11:26:08 am'),
(83, 'Rotijah binti sulaiman', '670425055422', '0126321279', 36.1, '05/06/2020 11:57:15 am'),
(84, 'Noor shalawati bt mohd aruf', '', '0163552946', 35.6, '05/06/2020 01:11:57 pm'),
(85, 'Nor Hayati', '', '0172780620', 36.4, '05/06/2020 04:40:45 pm'),
(86, 'siti nur atikah binti a majid', '961012146174', '01139033991', 36.3, '06/06/2020 10:14:08 am'),
(87, 'siti nur aisyah binti a majid', '910325055062', '0132644574', 36.1, '06/06/2020 10:15:41 am'),
(88, 'Rotijah binti sulaiman', '670425055422', '0126321279', 36.1, '06/06/2020 11:04:13 am'),
(89, 'Siti Salmiah', '', '0192082247', 36.2, '06/06/2020 11:06:13 am'),
(90, 'NUR AZIRAWATI BINTI ABD AZIZ', '', '0123727562', 36.0, '06/06/2020 11:31:53 am'),
(91, 'ZALIPAH BT ISMAIL', '760103 05 5080', '012 3546091', 36.2, '06/06/2020 11:34:22 am'),
(92, 'KADARIYAH YAHYA', '671126055080', '0127432471', 36.1, '06/06/2020 11:36:58 am'),
(93, 'MALINA BTE MAHDI', '871107235592', '0172803799', 35.0, '06/06/2020 12:07:40 pm'),
(94, 'NUR MAIHAN MUHAMMAD', '830430035936', '0176797885', 36.3, '06/06/2020 12:11:06 pm'),
(95, 'NUR ADILAH BINTI ABDUL AZIZ', '900923065608', '0139695185', 36.2, '06/06/2020 12:16:06 pm'),
(96, 'Che Su Binti Mat Nor', '601215086328', '0182355234', 36.3, '06/06/2020 12:28:25 pm'),
(97, 'ROHANI BINTI KELING', '660313055314', '0172798885', 36.1, '06/06/2020 12:42:05 pm'),
(98, 'SUHANA', '', '0126018299', 35.7, '06/06/2020 12:54:08 pm'),
(99, 'NUR LIYANA BT HASAN', '', '0713541230', 34.9, '06/06/2020 01:04:38 pm'),
(100, 'NUR AIDA BINTI SABARI  ', '', '0172385380', 36.1, '06/06/2020 01:07:57 pm'),
(101, 'RAFIDAH AZIZ', '810124055180', '0122373576', 36.1, '06/06/2020 01:51:40 pm'),
(102, 'SALWANA AHMAD', '650313065118', '0196210496', 36.2, '06/06/2020 02:57:11 pm'),
(103, 'ZARINA BINTI MOHD ARIS', '791226045126', '01165515126', 35.2, '06/06/2020 03:04:32 pm'),
(104, 'JEYANTHI', '', '0169124509', 36.2, '06/06/2020 03:22:02 pm'),
(105, 'RAMLAH BINTI SHARIOH', '670510055080', '0192394798', 35.7, '06/06/2020 03:27:49 pm'),
(106, 'NORLI AMRAH', '751102145700', '0182579483', 36.3, '06/06/2020 03:34:44 pm'),
(107, 'NORHAFIZAH BINTI ILIAS', '860319385644', '0197357698', 35.5, '06/06/2020 03:54:39 pm'),
(108, 'RABIATUL SYAKIRA ', '', '0136382538', 35.4, '06/06/2020 04:01:18 pm'),
(109, 'SITI ROKIAH BT MASRI', '720515065184', '0178714891', 36.3, '06/06/2020 04:03:09 pm'),
(110, 'NOORIZNEENA BINTI IZLAN', '831204055458', '0192962749', 35.7, '06/06/2020 04:32:52 pm'),
(111, 'ROHANI BINTI MOHAMMAD', '790703035090', '0196608492', 36.1, '06/06/2020 04:45:29 pm'),
(112, 'RUSNAH ABU BAKAR', '700331055338', '01118903170', 35.1, '06/06/2020 04:48:59 pm'),
(113, 'AINUL FADZILAH', '830812105178', '0123754473', 36.3, '06/06/2020 04:56:08 pm'),
(114, 'MAZNIDA MAHAT', '760424145652', '0192811924', 36.3, '06/06/2020 05:18:27 pm'),
(115, 'SITI MAISARAH BINTI MOHD YATIM', '740806105682', '0132490416', 36.1, '07/06/2020 10:05:42 am'),
(116, 'KHUSA BINTI ABDULLAH', '600801055378', '0192385695', 36.3, '07/06/2020 10:29:52 am'),
(117, 'Amira shahida binti aminuddin', '950113055200', '01114789319', 36.2, '07/06/2020 10:42:02 am'),
(118, 'Norliza zainal abidin', '741204016986', '0136726182', 36.1, '07/06/2020 10:55:50 am'),
(119, 'NOR ASMAH BINTI ZAKARIA', '', '01165503003', 36.0, '07/06/2020 11:14:05 am'),
(120, 'Haslinda Binti Kaharudin ', '761123055236 ', '0126481424 ', 36.3, '07/06/2020 11:20:02 am'),
(121, 'Che ku nor asiah che ku mohamad', '850608115406', '0139033522', 36.7, '07/06/2020 11:43:40 am'),
(122, 'Azawani Ahmad Tarmizi', '860523385406', '0123756503', 35.8, '07/06/2020 12:03:48 pm'),
(123, 'Seri', '970619055070', '0136880467', 36.0, '07/06/2020 12:57:05 pm'),
(124, 'Norhafizan', '780805055018', '0172535186', 36.3, '07/06/2020 12:57:37 pm'),
(125, 'Nur khairunnisa binti mohd rasid', '98073104523', '0172412791', 36.2, '07/06/2020 01:08:44 pm'),
(126, 'Mazidah binti jalil', '690305045244', '0143530676', 35.2, '07/06/2020 01:09:29 pm'),
(127, 'Nurshuhada by janin', '', '01136413723', 36.3, '07/06/2020 02:12:07 pm'),
(128, 'Nurshuhada by janin', '', '01136413723', 36.3, '07/06/2020 02:12:07 pm'),
(129, 'Vino', '', '0149310995', 36.2, '07/06/2020 02:27:34 pm'),
(130, 'azreen', '910714105756', '0135384868', 36.1, '07/06/2020 02:38:57 pm'),
(131, 'awasuhaida binti Abdul wahid', '820513085198', '0182384345', 36.3, '07/06/2020 02:54:48 pm'),
(132, 'Suhaida binti kasim', '860319335006', '01116686364', 36.4, '07/06/2020 04:32:35 pm'),
(133, 'Ahza binti baharom', '', '01112301988', 36.1, '07/06/2020 04:48:16 pm'),
(134, 'Murnirah Razali', '950615065580', '01115910922', 32.5, '07/06/2020 05:25:11 pm'),
(135, 'zurina zeulkefli', '850903055362', '0193224898', 36.3, '08/06/2020 10:50:57 am'),
(136, 'NUR FARAH HANI BINTI MUHAMMAD SUBHI', '890826105616', '0194301781', 36.2, '08/06/2020 10:55:34 am'),
(137, 'AZAWANI AHMAD TARMIZI', '860523385406', '0123756503', 35.9, '08/06/2020 01:08:13 pm'),
(138, 'SITI ZAWIAH AMRAN', '800812065658', '0136194006', 35.7, '08/06/2020 01:25:19 pm'),
(139, 'NOR SALIZA BINTI DAUD', '801010055030', '01111456304', 35.9, '08/06/2020 01:32:19 pm'),
(140, 'SITI FARAH AIN BINTI KAMARUZLI', '940911055142', '0183161674', 33.9, '08/06/2020 02:23:14 pm'),
(141, 'NURUL HIDAYAH MD RODZI', '890424055054', '01127494768', 33.9, '08/06/2020 03:03:18 pm'),
(142, 'Azaini bt wahab', '', '0173068665', 36.2, '08/06/2020 03:09:54 pm'),
(143, 'Hanofiah bt udin', '', '0123642362', 36.2, '08/06/2020 03:14:07 pm'),
(144, 'nurul afifah binti muhammad', '', '0188749477', 36.2, '08/06/2020 05:03:02 pm'),
(145, 'SHARIFAH  NUR ASYIKIN SYED ABU BAKAR', '', '0136065224', 36.0, '08/06/2020 06:21:58 pm'),
(146, 'Huzaifah bin Azhar', '', '0136003078', 36.3, '09/06/2020 09:48:43 am'),
(147, 'Fazlina binti elias', '791105055168', '01110805168', 36.4, '09/06/2020 10:27:46 am'),
(148, 'Hamidah abdul Hamid', '600810055572', '019313964', 36.4, '09/06/2020 11:29:26 am'),
(149, 'Habibah binti Md yusof', '', '0122976546', 36.2, '09/06/2020 11:58:56 am'),
(150, 'Mohd ali Imran bin mohd shaari', '0102180501297', '0197981867', 36.2, '09/06/2020 12:44:08 pm'),
(151, 'Nor fazliza binti baharom', '800922055178', '01120914165', 36.3, '09/06/2020 12:45:51 pm'),
(152, 'Munirah bt m latiff', '', '0128856625', 36.3, '09/06/2020 03:53:39 pm'),
(153, 'Munirah bt m latiff', '', '0128856625', 36.3, '09/06/2020 03:53:39 pm'),
(154, 'maznah binti jos', '671015045306', '0126077839', 36.0, '09/06/2020 04:21:57 pm'),
(155, 'Khairil bin Basirun', '', '01156852600', 35.8, '09/06/2020 05:49:24 pm'),
(156, 'Rafiah binti Abdul Rashid', '', '0172961227', 36.1, '10/06/2020 11:09:53 am'),
(157, 'Mastura binti adris', '', '0196562212', 36.3, '10/06/2020 11:47:02 am'),
(158, 'Asiah binti Wahab', '', '0192844090', 36.4, '10/06/2020 02:39:27 pm'),
(159, 'Nik maznah binti Nik Hassan', '', '0122561839', 36.3, '10/06/2020 02:43:47 pm'),
(160, 'Siti Suhaila binti Mohd Hashim', '921031055124', '0173166018', 31.8, '10/06/2020 04:54:38 pm'),
(161, 'MOHD DINI BIN ZAKARIA', '', '0122376625', 36.1, '10/06/2020 05:21:32 pm'),
(162, 'Norzairina bt zainal abidin', '', '0123172090', 36.2, '11/06/2020 09:31:09 am'),
(163, 'norita taib', '690620106502', '01111553942', 36.2, '11/06/2020 10:12:18 am'),
(164, 'Zainab bt abu Kasim', '830127065438', '0192029046', 36.3, '11/06/2020 10:34:38 am'),
(165, 'Siti normah binti ahmad', '790603055174', '0137204032', 36.7, '12/06/2020 10:15:37 am'),
(166, 'hanisah idris', '651223055244', '0175978290', 36.3, '12/06/2020 10:24:32 am'),
(167, 'Asmiratul Zizmi', '970202595178 ', '0136363033 ', 36.4, '12/06/2020 12:50:46 pm'),
(168, 'Emmira azureen bt sahrum', '860117055030', '01123706713', 36.3, '12/06/2020 02:41:37 pm'),
(169, 'Emmira azureen bt sahrum', '860117055030', '01123706713', 36.3, '12/06/2020 02:41:58 pm'),
(170, 'Emmira azureen bt sahrum', '860117055030', '01123706713', 36.3, '12/06/2020 02:42:22 pm'),
(171, 'Intan adila abdul rahman ', 'Negeri Sembilan', '0126831506', 36.0, '12/06/2020 04:14:41 pm'),
(172, 'Nor Zalidanorfiza', '', '0122753625', 36.3, '12/06/2020 04:58:34 pm'),
(173, 'ruzaimi', '770810115354', '0123931412', 35.3, '13/06/2020 11:25:19 am'),
(174, 'Norzalidanorfiza Mohd Razali ', '781225055286 ', '0122753625 ', 36.4, '13/06/2020 12:29:48 pm'),
(175, 'Asira Binti Abd Rashid', '', '0172085465', 36.1, '13/06/2020 12:51:08 pm'),
(176, 'faizzah', '', '0109397492', 36.1, '13/06/2020 01:04:15 pm'),
(177, 'Wan Asmah', '', '0126871629', 36.0, '13/06/2020 02:36:22 pm'),
(178, 'Nizam', '', '0193090187', 34.5, '13/06/2020 04:28:57 pm'),
(179, 'Nizam', '', '0193090187', 34.5, '13/06/2020 04:28:58 pm'),
(180, 'Nizam', '', '0193090187', 34.5, '13/06/2020 05:06:32 pm'),
(181, 'nur syafiqa kamarullah', '930607045282', '0132262496', 35.5, '13/06/2020 05:09:29 pm'),
(182, 'NUR ADIBAH', '', '0182964618', 35.3, '13/06/2020 05:17:53 pm'),
(183, 'NUR ADIBAH', '', '0182964618', 35.3, '13/06/2020 05:17:53 pm'),
(184, 'Azmatun', '', '0122469149', 36.0, '14/06/2020 09:28:08 am'),
(185, 'Ahmad Izzat Bin Abd Halim', '970322065921', '017-3047170', 36.2, '14/06/2020 10:58:07 am'),
(186, 'Aisah binti idris', '850611055096', '0139770197', 36.1, '14/06/2020 11:35:00 am'),
(187, 'Aisah idris', '850611055096', '0139770197', 36.1, '14/06/2020 11:35:45 am'),
(188, 'Yusniliyana', '861119465046', '0182512434', 36.5, '14/06/2020 03:16:22 pm'),
(189, 'Nurul Akma Bt Kharani', '', '01864444465', 36.1, '14/06/2020 03:33:31 pm'),
(190, 'ROHANA ADAM', '', '0172777529', 36.3, '14/06/2020 03:33:48 pm'),
(191, 'Halimah binti mohd daud', '', '0176212494', 36.3, '14/06/2020 03:50:28 pm'),
(192, 'zaleha nordin', '', '0129049738', 36.1, '14/06/2020 05:55:01 pm'),
(193, 'Ariayanti bt md nor', '', '0105371508', 34.3, '15/06/2020 01:08:43 pm'),
(194, 'Norazwan Abdullah', '', '0149358735', 36.3, '15/06/2020 02:13:24 pm'),
(195, 'Norazwan Abdullah', '', '0149358735', 36.3, '15/06/2020 02:13:24 pm'),
(196, 'Alauwiah binti hj Said', '', '0196681933', 36.2, '15/06/2020 03:08:44 pm'),
(197, 'Habibah Mohd Yusuf', '', '0126976546', 36.1, '15/06/2020 05:20:19 pm'),
(198, 'Azila bt mohd Afarouk', '', '0172731393', 35.6, '15/06/2020 05:26:29 pm'),
(199, 'Noreza salehuddin', '', '01123408597', 36.1, '15/06/2020 05:33:13 pm'),
(200, 'Noreza salehuddin', '', '01123408597', 36.1, '15/06/2020 05:33:13 pm'),
(201, 'Norashikin', '', '01126281410', 36.2, '16/06/2020 10:19:04 am'),
(202, 'Nor erina ', '', '0146692123', 36.4, '16/06/2020 11:11:50 am'),
(203, 'Norsafina bt yusof', '880222045350', '0129158431', 36.1, '16/06/2020 11:23:59 am'),
(204, 'Noor herna', '831217055246', '0196075932', 36.0, '16/06/2020 12:23:39 pm'),
(205, 'SALENA BINTI HASSAN', '', '0192224342', 36.2, '16/06/2020 12:29:47 pm'),
(206, 'Nur ezzati', '911019055632', '0176353860', 36.2, '16/06/2020 12:33:31 pm'),
(207, 'Hidana Rahim', '980124045574', '0136495208', 36.4, '16/06/2020 12:38:20 pm'),
(208, 'Nor Laisyurah Jamalluddin', '', '0112882418', 36.8, '16/06/2020 01:08:29 pm'),
(209, 'Nor azma Bintu ngah', '', '0103797687', 36.4, '16/06/2020 01:20:42 pm'),
(210, 'Norazlina Bt Azmi', '', '0196791200', 36.2, '17/06/2020 09:46:58 am'),
(211, 'Siti Nazihah bt Ahmad', '911129015682', '0137058649', 36.1, '17/06/2020 09:48:59 am'),
(212, 'Rosna binti Abdullah', '', '0176069085', 36.3, '17/06/2020 10:29:16 am'),
(213, 'Rosna binti Abdullah', '', '0176069085', 36.3, '17/06/2020 10:29:16 am'),
(214, 'Salim bin Saammid', '', '0136923775', 36.3, '17/06/2020 11:07:32 am'),
(215, 'nor jehan binti jais', '841122145504', '0122781571', 36.3, '17/06/2020 12:47:49 pm'),
(216, 'halimahtus', '020323050060', '0132649687', 36.1, '17/06/2020 02:49:57 pm'),
(217, 'AZURA ABD GHANI ', '750915065308', '0126020828', 36.2, '17/06/2020 04:55:17 pm'),
(218, 'ROHANA BT MAT RAFI', '710504715058', '0136798777', 36.2, '17/06/2020 05:25:20 pm'),
(219, 'Hawa binti Hamzah ', '', '0137899895', 36.5, '18/06/2020 10:20:07 am'),
(220, 'siti jawiah bt kandar', '', '0172278674', 36.2, '18/06/2020 10:30:51 am'),
(221, 'Hairolnizam', '', '0129436218', 35.4, '18/06/2020 10:31:48 am'),
(222, 'Nora abd kadir', '', '0172820603', 36.3, '18/06/2020 11:01:04 am'),
(223, 'Nora abd kadir', '', '0172820603', 36.3, '18/06/2020 11:01:04 am'),
(224, 'Mohammad zulhilmi Rodlee', '', '01111554549', 36.4, '18/06/2020 12:07:02 pm');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `emp_id` int(10) NOT NULL,
  `emp_name` text NOT NULL,
  `emp_phone` varchar(15) NOT NULL,
  `emp_email` varchar(25) NOT NULL,
  `emp_department` text NOT NULL,
  `emp_position` text NOT NULL,
  `emp_working` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_id`, `emp_name`, `emp_phone`, `emp_email`, `emp_department`, `emp_position`, `emp_working`) VALUES
(12, 7751, 'Muhammad Syafiq Bin Nor Zaidi', '0129152410', 'syafiq@gmail.com', 'Customer Service', 'Permanent', '2018-06-01'),
(13, 7410, 'Nurul Asyiqin binti Zulkapli', '0166484468', 'acikin97@gmail.com', 'IT', 'CFS', '2020-02-05'),
(14, 3577, 'Nurul Jannatulhusna Binti Abu Bakar', '0166059181', 'njhusna296@gmail.com', 'Multimedia', 'Permanent', '2018-10-01'),
(16, 8804, 'Nur Syahida Binti Bunaim', '0177812350', 'syahidabunaim1812@gmail.c', 'Customer Service', 'Permanent', '2019-03-15'),
(17, 8805, 'Siti Hajar Binti Mohd Zaidin', '0189706594', 'hajazaidin@gmail.com', 'Human Resources', 'Permanent', '2019-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `problem` varchar(150) NOT NULL,
  `date_issue` varchar(10) NOT NULL,
  `department` text NOT NULL,
  `pic` text NOT NULL,
  `issued_by` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpi`
--

CREATE TABLE `kpi` (
  `id` int(11) NOT NULL,
  `employee` int(10) NOT NULL,
  `category` text NOT NULL,
  `type_task` text NOT NULL,
  `details` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpi`
--

INSERT INTO `kpi` (`id`, `employee`, `category`, `type_task`, `details`) VALUES
(27, 3577, 'Designer', 'Daily', 'Menulis content media sosial dengan mematuhi garis panduan KKM'),
(28, 3577, 'Designer', 'Daily', 'Menghasilkan design untuk kegunaan Facebook, Instagram, laman web network untuk stokis dan program'),
(29, 3577, 'Designer', 'Daily', 'Bina bank content dan post ke telegram mengikut waktu yang ditetapkan: Bulan 1-2 menyediakan bahan untuk sehari post setiap hari'),
(30, 3577, 'Designer', 'Daily', 'Bina bank content dan post ke telegram mengikut waktu yang ditetapkan: Bulan 3 hingga 4 menyediakan bahan untuk selama 2 minggu akan datang dan dipost ke dalam telegram pada setiap hari ahad setiap bulan'),
(31, 3577, 'Designer', 'Daily', 'Bina bank content dan post ke telegram mengikut waktu yang ditetapkan: Bulan 5 hingga 6 menyediakan bahan untuk selama satu bulan akan datang dan di post ke dalam telegram pada setiap hari ahad setiap bulan'),
(32, 3577, 'Designer', 'Daily', 'Menyediakan dan mereka bentuk bahan promosi(prop) untuk tujuan pemasaran mengikut arahan syarikat dan deadline yang ditetapkan'),
(33, 3577, 'Designer', 'Daily', 'Memastikan setiap medium dijaga dan setiap pertanyaan dari pelanggan/agent direspon'),
(34, 3577, 'Designer', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut jadual waktu yang ditetapkan pada setiap hari: Post pertama pada jam 10 pagi'),
(35, 3577, 'Designer', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut jadual waktu yang ditetapkan pada setiap hari: Post kedua pada jam 2 petang'),
(36, 3577, 'Designer', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut jadual waktu yang ditetapkan pada setiap hari: Post ketiga pada jam 6 petang'),
(37, 3577, 'Designer', 'Daily', 'Mestilah mencapai KPI followers bagi bulan 1 sehingga bulan 6 sebanyak: Instagram 100K'),
(38, 3577, 'Designer', 'Daily', 'Mestilah mencapai KPI followers bagi bulan 1 sehingga bulan 6 sebanyak: Facebook 100K'),
(39, 3577, 'Designer', 'Daily', 'Mestilah mencapai KPI followers bagi bulan 1 sehingga bulan 6 sebanyak: Telegram 100K'),
(40, 3577, 'Designer', 'Daily', 'Mestilah mencapai KPI followers bagi bulan 1 sehingga bulan 6 sebanyak: Youtube 10K'),
(41, 3577, 'Filing', 'Daily', 'Setiap design yang dibuat harus di simpan sebagai soft copy dan hard copy'),
(42, 3577, 'Penyeliaan', 'Daily', 'Memastikan setiap pekerja yang menguruskan media mencapai KPI yang ditetapkan'),
(43, 7751, 'Pembantu Operasi', 'Daily', 'Membuat design/video untuk Youtube: Bulan 1-2 menyediakan bahan 1 kali untuk seminggu dan di post ke Telegram setiap hari Isnin'),
(44, 7751, 'Pembantu Operasi', 'Daily', 'Membuat design/video untuk Youtube: Bulan 3-4 menyediakan bahan untuk 3 kali seminggu dan di post ke Telegram setiap hari Isnin'),
(45, 7751, 'Pembantu Operasi', 'Daily', 'Membuat design/video untuk Youtube: Bulan 5-6 menyediakan bahan untuk 7 kali seminggu dan di post ke Telegram setiap hari Isnin'),
(46, 7751, 'Pembantu Operasi', 'Daily', 'Menulis content media sosial dengan mematuhi garis panduan KKM'),
(47, 7751, 'Pembantu Operasi', 'Daily', 'Bina bank content untuk Youtube dan post ke Telegram mengikut waktu yang ditetapkan: Bulan 1-2 menyediakan bahan untuk sehari post setiap hari'),
(48, 7751, 'Pembantu Operasi', 'Daily', 'Bina bank content untuk Youtube dan post ke Telegram mengikut waktu yang ditetapkan: Bulan 3-4 menyediakan bahan untuk selama 2 minggu akan datang dan di post ke dalam Telegram pada setiap hari Isnin'),
(49, 7751, 'Pembantu Operasi', 'Daily', 'Bina bank content untuk Youtube dan post ke Telegram mengikut waktu yang ditetapkan: Bulan 5-6 menyediakan bahan untuk selama satu bulan akan datang dan di post ke dalam Telegram pada setiap hari Isnin setiap bulan'),
(50, 7751, 'Pembantu Operasi', 'Daily', 'Memastikan setiap medium di jaga dan setiap pertanyaan dari pelanggan/agent direspon'),
(51, 7751, 'Pembantu Operasi', 'Daily', 'Update medium sosial seperti Facebook mengikut jadual waktu yang ditetapkan pada setiap hari: Post pada jam 8-10 malam'),
(52, 7751, 'Kehadiran', 'Daily', 'Hadir ke office setiap hari pada pukul 9 dan balik pada pukul 6 atau 7'),
(53, 7751, 'Dobi', 'Daily', 'Menguruskan dobi setiap hari: Memastikan setiap stok mencukupi seperti gas dan sabun'),
(54, 7751, 'Dobi', 'Daily', 'Menguruskan dobi setiap hari: Memastikan dobi dalam keadaan yang baik dan membersihkan dobi dua kali sehari pagi dan petang untuk setiap hari'),
(55, 7751, 'Dobi', 'Daily', 'Menguruskan dobi setiap hari: Pantas menguruskan dobi jika berlaku sebarang kerosakan'),
(56, 7751, 'Dobi', 'Daily', 'Menguruskan dobi setiap hari: Menguruskan dobi jika terdapat sebarang aduan'),
(57, 7751, 'Dobi', 'Daily', 'Menguruskan dobi setiap hari: Rekod setiap pengambilan token mengikut mesin'),
(58, 7751, 'Dobi', 'Daily', 'Menguruskan dobi setiap hari: Menguruskan dan mengenal pasti mesin yang perlu diservis'),
(59, 7751, 'Dobi', 'Daily', 'Menguruskan dobi setiap hari: Memastikan setiap bil atau sewa dibayar setiap bulan'),
(60, 7751, 'Stor', 'Daily', 'Menguruskan segala pengambilan stok'),
(61, 7751, 'Stor', 'Daily', 'Memastikan stok yang diambil di susun dan stor sentiasa kemas dan bersih'),
(62, 7410, 'IT', 'Daily', 'Bertanggungjawab menguruskan sebarang masalah yang berkaitan dengan web'),
(63, 7410, 'JRMNS', 'Daily', 'Update stok JRM Senawang setiap pagi'),
(64, 7410, 'JRMNS', 'Daily', 'Membuat design/video untuk JRM Senawang mengikut jadual waktu yang ditetapkan oleh syarikat'),
(65, 7410, 'JRMNS', 'Daily', 'Menulis content media sosial dengan mematuhi garis panduan KKM'),
(66, 7410, 'JRMNS', 'Daily', 'Bina bank content dan post ke Telegram mengikut waktu yang ditetapkan: Bulan 1-2 menyediakan bahan untuk sehari post setiap hari'),
(67, 7410, 'JRMNS', 'Daily', 'Bina bank content dan post ke Telegram mengikut waktu yang ditetapkan: Bulan 3-4 menyediakan bahan untuk selama 2 minggu akan datang dan di post ke dalam Telegram pada setiap hari Isnin'),
(68, 7410, 'JRMNS', 'Daily', 'Bina bank content dan post ke Telegram mengikut waktu yang ditetapkan: Bulan 5-6 menyediakan bahan untuk selama satu bulan akan datang dan di post ke dalam Telegram pada setiap hari Isnin setiap bulan'),
(69, 7410, 'JRMNS', 'Daily', 'Memastikan setiap medium di jaga dan setiap pertanyaan dari pelanggan/agent direspon'),
(70, 7410, 'JRMNS', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut jadual waktu yang ditetapkan pada setiap hari: Post pertama Facebook jam 7-9 pagi'),
(71, 7410, 'JRMNS', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut jadual waktu yang ditetapkan pada setiap hari: Post kedua update blog di Facebook jam 9-10 pagi'),
(72, 7410, 'JRMNS', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut jadual waktu yang ditetapkan pada setiap hari: Post ketiga Instagram dan Facebook jam 6 petang'),
(73, 7410, 'JRMNS', 'Daily', 'Setiap gambar dan video semasa program haruslah dikemaskini selepas dua hari program berjalan'),
(74, 7410, 'JRMNS', 'Daily', 'Menyediakan dan menghantar report setiap hari: Stok'),
(75, 7410, 'JRMNS', 'Daily', 'Mengemaskini buku sales (web) JRM Senawang'),
(76, 7410, 'JRMNS', 'Daily', 'Bertanggungjawab menguruskan duit sales dan keluar masuk petty cash JRMNS'),
(77, 7410, 'JRMNS', 'Daily', 'Bertanggungjawab menjaga dan memasukkan duit sales outlet ke dalam bank yang melebihi RM5000 ke atas'),
(78, 7410, 'Dobi', 'Daily', 'Menguruskan dobi apabila diperlukan: Memastikan setiap stok mencukupi seperti gas dan sabun'),
(79, 7410, 'Dobi', 'Daily', 'Menguruskan dobi apabila diperlukan: Memastikan dobi dalam keadaan yang baik dan membersihkan dobi dua kali sehari pagi dan petang untuk setiap hari'),
(80, 7410, 'Dobi', 'Daily', 'Menguruskan dobi apabila diperlukan: Pantas menguruskan dobi jika berlaku sebarang kerosakan'),
(81, 7410, 'Dobi', 'Daily', 'Menguruskan dobi apabila diperlukan: Menguruskan dobi jika terdapat sebarang aduan'),
(82, 7410, 'Dobi', 'Daily', 'Menguruskan dobi apabila diperlukan: Rekod setiap pengambilan token mengikut mesin'),
(83, 7410, 'Dobi', 'Daily', 'Menguruskan dobi apabila diperlukan: Menguruskan dan mengenal pasti mesin yang perlu diservis'),
(84, 7410, 'Dobi', 'Daily', 'Menguruskan dobi apabila diperlukan: Memastikan setiap bil atau sewa dibayar setiap bulan'),
(85, 7410, 'Dobi', 'Daily', 'Menguruskan dobi apabila diperlukan: Memastikan duit sales mencukupi dan dimasukkan ke dalam bank mengikut jadual yang ditetapkan'),
(86, 8804, 'Customer Service', 'Daily', 'Update stok JRM Senawang setiap pagi'),
(87, 8804, 'Customer Service', 'Daily', 'Membuat design/video untuk JRM Senawang mengikut jadual waktu yang ditetapkan oleh syarikat'),
(88, 8804, 'Customer Service', 'Daily', 'Menulis content media sosial dengan mematuhi garis panduan KKM'),
(89, 8804, 'Customer Service', 'Daily', 'Bina bank content dan post ke Telegram mengikut waktu yang ditetapkan: Bulan 1-2 menyediakan bahan untuk sehari post setiap hari'),
(90, 8804, 'Customer Service', 'Daily', 'Bina bank content dan post ke Telegram mengikut waktu yang ditetapkan: Bulan 3-4 menyediakan bahan untuk selama 2 minggu akan datang dan di post ke dalam Telegram pada setiap hari Ahad '),
(91, 8804, 'Customer Service', 'Daily', 'Bina bank content dan post ke Telegram mengikut waktu yang ditetapkan: Bulan 5-6 menyediakan bahan untuk selama satu bulan akan datang dan di post ke dalam Telegram pada setiap hari Ahad setiap bulan'),
(92, 8804, 'Customer Service', 'Daily', 'Memastikan setiap medium dijaga dan setiap pertanyaan dari pelanggan/agent direspon'),
(93, 8804, 'Customer Service', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut waktu yang ditetapkan pada setiap hari: Post pertama Instagram jam 9-10 pagi'),
(94, 8804, 'Customer Service', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut waktu yang ditetapkan pada setiap hari: Post kedua Instagram dan Facebook jam 12 tengahari'),
(95, 8804, 'Customer Service', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut waktu yang ditetapkan pada setiap hari: Post ketiga Instagram dan Facebook jam 6 petang'),
(96, 8804, 'Customer Service', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut waktu yang ditetapkan pada setiap hari: Satu post di Youtube setiap hari'),
(97, 8804, 'Customer Service', 'Daily', 'Menyediakan dan menghantar report setiap hari: Sales report niagawan'),
(98, 8804, 'Customer Service', 'Daily', 'Menyediakan dan menghantar report setiap hari: Belian'),
(99, 8804, 'Customer Service', 'Daily', 'Menyediakan dan menghantar report setiap hari: Stok'),
(100, 8804, 'Customer Service', 'Daily', 'Mengemaskini buku sales JRM Senawang setiap hari'),
(101, 8804, 'Filing', 'Daily', 'Sales report niagawan'),
(102, 7414, 'Customer Service', 'Daily', 'Memberi khidmat nasihat kepada pelanggan'),
(103, 7414, 'Customer Service', 'Daily', 'Memastikan pengetahuan tentang produk sentiasa meningkat'),
(104, 7414, 'Customer Service', 'Daily', 'Memastikan keahlian baru bertambah dari masa ke semasa'),
(105, 7414, 'Customer Service', 'Daily', 'Menguruskan media sosial seperti Facebook, Instagram, Twitter dan lain-lain'),
(106, 7414, 'Customer Service', 'Daily', 'Membuat design/video untuk outlet mengikut jadual waktu yang ditetapkan oleh syarikat'),
(107, 7414, 'Customer Service', 'Daily', 'Menulis content media sosial dengan mematuhi garis panduan KKM'),
(108, 7414, 'Customer Service', 'Daily', 'Bina bank content dan post ke Telegram mengikut waktu yang ditetapkan: Bulan 1-2 menyediakan bahan untuk sehari post setiap hari'),
(109, 7414, 'Customer Service', 'Daily', 'Bina bank content dan post ke Telegram mengikut waktu yang ditetapkan: Bulan 3-4 menyediakan bahan untuk selama 2 minggu akan datang dan di post ke dalam Telegram pada setiap hari Ahad'),
(110, 7414, 'Customer Service', 'Daily', 'Bina bank content dan post ke Telegram mengikut waktu yang ditetapkan: Bulan 5-6 menyediakan bahan untuk selama satu bulan akan datang dan di post ke dalam Telegram pada setiap hari Ahad setiap bulan'),
(111, 7414, 'Customer Service', 'Daily', 'Memastikan setiap medium dijaga dan setiap pertanyaan dari pelanggan/agent di respon'),
(112, 7414, 'Customer Service', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut jadual waktu yang ditetapkan pada setiap hari: Post pertama pada jam 10 pagi'),
(113, 7414, 'Customer Service', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut jadual waktu yang ditetapkan pada setiap hari: Post kedua pada jam 2 petang'),
(114, 7414, 'Customer Service', 'Daily', 'Update medium sosial seperti Instagram dan Facebook mengikut jadual waktu yang ditetapkan pada setiap hari: Post ketiga pada jam 6 petang'),
(115, 7414, 'Customer Service', 'Daily', 'Mengemaskini buku sales outlet setiap hari'),
(116, 7414, 'Customer Service', 'Daily', 'Menyediakan dan menghantar report setiap hari: Sales report outlet'),
(117, 7414, 'Customer Service', 'Daily', 'Kenal pasti promosi produk terkini dipamerkan dengan baik'),
(118, 7414, 'Customer Service', 'Daily', 'Mengurus dan memastikan stok di outlet sentiasa penuh dan tersusun'),
(119, 7414, 'Customer Service', 'Daily', 'Bertanggungjawab atas sebarang masalah yang berkaitan dengan stok'),
(120, 7414, 'Juruwang', 'Daily', 'Menguruskan pembayaran untuk transaksi outlet Olin Beauty SDN BHD'),
(121, 7414, 'Juruwang', 'Daily', 'Merekod jualan urus niaga dan menjaga database pelanggan setiap bulan'),
(122, 7414, 'Kebersihan', 'Daily', 'Memastikan outlet sentiasa berada dalam keadaan baik dan bersih'),
(123, 7414, 'Kebersihan', 'Daily', 'Memastikan produk sedia ada dan paparan produk dalam keadaan baik'),
(124, 7414, 'Kebersihan', 'Daily', 'Memastikan barang jualan di susun dengan kemas dan cukup di rak'),
(125, 8805, 'Human Resources/Admin/Sales', 'Daily', 'Memastikan stok sentiasa ada'),
(126, 8805, 'Human Resources/Admin/Sales', 'Daily', 'Menyemak dan memastikan stok Olin Beauty, outlet dan JRMNS sama dan mencukupi'),
(127, 8805, 'Human Resources/Admin/Sales', 'Daily', 'Update inventory niagawan bagi Olin Beauty, outlet dan JRMNS setiap hari'),
(128, 8805, 'Human Resources/Admin/Sales', 'Daily', 'Memasikan urusan syarikat dengan pihak ketiga berjalan lancar'),
(129, 8805, 'Human Resources/Admin/Sales', 'Daily', 'Memastikan semua email dijawab setiap hari'),
(130, 8805, 'Human Resources/Admin/Sales', 'Daily', 'Memastikan Ajobthing di kemaskini setiap hari'),
(131, 8805, 'Finance', 'Daily', 'Memastikan setiap perbelanjaan syarikat terkawal: Pantry'),
(132, 8805, 'Finance', 'Daily', 'Memastikan setiap perbelanjaan syarikat terkawal: Petty cash'),
(133, 8805, 'Human Resources/Admin/Sales', 'Daily', 'Memastikan setiap perbelanjaan syarikat terkawal: Expenses'),
(134, 8805, 'Finance', 'Daily', 'Update setiap baki duit di dalam bank setiap hari'),
(135, 8805, 'Penyeliaan', 'Daily', 'Memastikan setiap pekerja mencapai KPI yang ditetapkan'),
(136, 8805, 'Penyeliaan', 'Daily', 'Memastikan pekerja mematuhi peraturan syarikat dan menjaga nama baik syarikat'),
(137, 8805, 'Penyeliaan', 'Daily', 'Memastikan kebajikan pekerja terjaga: Nurul Jannatulhusna'),
(138, 8805, 'Penyeliaan', 'Daily', 'Memastikan kebajikan pekerja terjaga: Nur Syahida'),
(139, 8805, 'Penyeliaan', 'Daily', 'Memastikan kebajikan pekerja terjaga: Muhammad Syafiq'),
(140, 8805, 'Penyeliaan', 'Daily', 'Memastikan kebajikan pekerja terjaga: Siti Hajar Ahmad'),
(141, 8805, 'Penyeliaan', 'Daily', 'Memastikan kebajikan pekerja terjaga: Nurul Asyiqin'),
(142, 3577, 'Designer', 'Weekly', 'Menyediakan dan mereka bentu bahan promosi (prop) untuk tujuan pemasaran mengikut arahan syarikat dan deadline yang ditetapkan'),
(143, 3577, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap info dan produk knowledge'),
(144, 3577, 'Filing', 'Weekly', 'Menyediakan fail untuk setiap produk yang mengandungi: Bahan'),
(145, 3577, 'Filing', 'Weekly', 'Menyediakan fail untuk setiap produk yang mengandungi: Testimoni'),
(146, 3577, 'Filing', 'Weekly', 'Menyediakan fail untuk setiap produk yang mengandungi: Kebaikan'),
(147, 3577, 'Filing', 'Weekly', 'Fail promosi terkini termasuk yes'),
(148, 3577, 'Filing', 'Weekly', 'Filing KKM untuk setiap produk'),
(149, 3577, 'Filing', 'Weekly', 'Fail info bonda'),
(150, 3577, 'Filing', 'Weekly', 'Fail KPI media'),
(151, 3577, 'Filing', 'Weekly', 'Fail markah agent'),
(152, 3577, 'Filing', 'Weekly', 'Fail markah agent'),
(153, 3577, 'Filing', 'Weekly', 'Fail meeting/aktiviti'),
(154, 3577, 'Penyeliaan', 'Weekly', 'Memastikan setiap pekerja yang menguruskan media mencapai KPI yang ditetapkan'),
(155, 7751, 'Pembantu Operasi', 'Weekly', 'Menyediakan dan mereka bentuk bahan promosi (prop) untuk tujuan pemasaran mengikut arahan syarikat dan deadline yang ditetapkan'),
(156, 7751, 'Pembantu Operasi', 'Weekly', 'Memastikan setiap medium dijaga dan setiap pertanyaan dari pelanggan/agent di respon'),
(157, 7751, 'Pembantu Operasi', 'Weekly', 'Setiap gambar dan video semasa program haruslah dikemaskini selepas dua hari program berjalan'),
(158, 7751, 'Pembantu Operasi', 'Weekly', 'Memastikan setiap aktiviti squad atau booth dikunjungi'),
(159, 7751, 'Pembantu Operasi', 'Weekly', 'Memastikan video atau gambar dirakam sepanjang aktiviti squad atau booth dijalankan'),
(160, 7751, 'Pembantu Operasi', 'Weekly', 'Menguruskan segala kerja luar yang diarahkan atas arahan syarikat'),
(161, 8804, 'Customer Service', 'Weekly', 'Memastikan keahlian baru bertambah dari masa ke semasa'),
(162, 8804, 'Customer Service', 'Weekly', 'Membuat design/video untuk JRM Senawang mengikut jadual waktu yang ditetapkan oleh syarikat'),
(163, 8804, 'Customer Service', 'Weekly', 'Memastikan setiap medium dijaga dan setiap pertanyaan dari pelanggan/agent di respon'),
(164, 8804, 'Customer Service', 'Weekly', 'Setiap gambar dan video semasa program haruslah dikemaskini selepas dua hari program berjalan'),
(165, 8804, 'Squad/Booth', 'Weekly', 'Memastikan setiap aktiviti squad/booth dikunjungi'),
(166, 8804, 'Squad/Booth', 'Weekly', 'Memastikan video/gambar dirakan sepanjang aktiviti squad/booth dijalankan'),
(167, 8804, 'Squad/Booth', 'Weekly', 'Setiap gambar dan video semasa program haruslah dikemaskini dan di post selepas dua hari program berjalan'),
(168, 7410, 'IT', 'Weekly', 'Bertanggungjawab menguruskan sebarang masalah yang berkaitan dengan web'),
(169, 7410, 'IT', 'Weekly', 'Memastikan pembayaran domain dilakukan pada waktu yang ditetapkan'),
(170, 7410, 'JRMNS', 'Weekly', 'Memastikan keahlian baru bertambah dari masa ke semasa'),
(171, 7410, 'JRMNS', 'Weekly', 'Membuat design/video untuk JRM Senawang mengikut jadual waktu yang ditetapkan oleh syarikat'),
(172, 7410, 'JRMNS', 'Weekly', 'Memastikan setiap medium dijaga dan setiap pertanyaan dari pelanggan/agent di respon'),
(173, 7410, 'JRMNS', 'Weekly', 'Setiap gambar dan video semasa program haruslah dikemaskini selepas dua hari program berjalan'),
(174, 7410, 'JRMNS', 'Weekly', 'Bertanggungjawab menjaga dan memasukkan duit sales outlet ke dalam bank yang melebihi RM5000 ke atas'),
(175, 7410, 'Squad/Booth', 'Weekly', 'Memastikan setiap aktiviti squad/booth dikunjungi'),
(176, 7410, 'Squad/Booth', 'Weekly', 'Memastikan video atau gambar dirakan sepanjang aktiviti squad atau booth dijalankan'),
(177, 7410, 'Squad/Booth', 'Weekly', 'Setiap gambar dan video semasa program haruslah dikemaskini dan di post selepas dua hari program berjalan'),
(178, 7410, 'Squad/Booth', 'Weekly', 'Sentiasa mengemaskini kalendar booth'),
(179, 7410, 'Squad/Booth', 'Weekly', 'Memastikan setiap agent yang buka booth isi google form yang diberikan'),
(180, 7410, 'Squad/Booth', 'Weekly', 'Menyediakan belanjawan untuk aktiviti squad'),
(181, 7414, 'Customer Service', 'Weekly', 'Bertanggungjawab memikirkan strategi marketing dari masa ke semasa untuk menaikkan sales outlet'),
(182, 7414, 'Customer Service', 'Weekly', 'Memastikan keahlian baru bertambah dari masa ke semasa'),
(183, 7414, 'Customer Service', 'Weekly', 'Membuat design/video untuk outlet mengikut jadual waktu yang ditetapkan oleh syarikat'),
(184, 7414, 'Customer Service', 'Weekly', 'Memastikan setiap medium dijaga dan setiap pertanyaan dari pelanggan/agent direspon'),
(185, 7414, 'Customer Service', 'Weekly', 'Mestilah mencapai KPI followers bagi bulan 1-6 sebanyak: Instagram 100K'),
(186, 7414, 'Customer Service', 'Weekly', 'Mestilah mencapai KPI followers bagi bulan 1-6 sebanyak: Facebook 100K'),
(187, 7414, 'Customer Service', 'Weekly', 'Kenalpasti promosi produk terkini dipamerkan dengan baik'),
(188, 8805, 'Human Resources/Admin/Sales', 'Weekly', 'Memastikan barang-barang habis di jual'),
(189, 8805, 'Human Resources/Admin/Sales', 'Weekly', 'Memastikan stok sentiasa ada'),
(190, 8805, 'Human Resources/Admin/Sales', 'Weekly', 'Menguruskan segala perihal syarikat seperti: Menyediakan dokumen-dokumen yang diperlukan'),
(191, 8805, 'Human Resources/Admin/Sales', 'Weekly', 'Menguruskan segala perihal syarikat seperti: Memastikan urusan syarikat dengan pihak ketiga berjalan lancar'),
(192, 8805, 'Finance', 'Weekly', 'Memastikan setiap pembayaran fixed payment dibuat mengikut jadual yang ditetapkan'),
(193, 8805, 'Finance', 'Weekly', 'Menyediakan laporan kewangan setiap bulan pada minggu kedua'),
(194, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Document Olin Beauty'),
(195, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Bank Statement'),
(196, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Payment Voucher'),
(197, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Expenses'),
(198, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Billplz dan PayPal'),
(199, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Salary'),
(200, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: KWSP'),
(201, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Sales report agent'),
(202, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Inventory'),
(203, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Damage'),
(204, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Supplier'),
(205, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Part-Time'),
(206, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Resume'),
(207, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Internship'),
(208, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Resign'),
(209, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Asset'),
(210, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Quotation'),
(211, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Memo'),
(212, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Fail staff dan agent'),
(213, 8805, 'Filing', 'Weekly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Fail seminar'),
(214, 8805, 'Penyeliaan', 'Weekly', 'Memastikan setiap pekerja mencapai KPI yang ditetapkan'),
(215, 8805, 'Penyeliaan', 'Weekly', 'Memastikan pekerja mematuhi peraturan syarikat dan menjaga nama baik syarikat'),
(216, 8805, 'Penyeliaan', 'Weekly', 'Memastikan kebajikan pekerja terjaga: Nurul Jannatulhusna'),
(217, 8805, 'Penyeliaan', 'Weekly', 'Memastikan kebajikan pekerja terjaga: Nur Syahida'),
(218, 8805, 'Penyeliaan', 'Weekly', 'Memastikan kebajikan pekerja terjaga: Muhammad Syafiq'),
(219, 8805, 'Penyeliaan', 'Weekly', 'Memastikan kebajikan pekerja terjaga: Siti Hajar Ahmad'),
(220, 8805, 'Penyeliaan', 'Weekly', 'Memastikan kebajikan pekerja terjaga: Nurul Asyiqin'),
(221, 3577, 'Designer', 'Monthly', 'Mestilah mencapai KPI followers bagi bulan 1-6 sebanyak: Instagram 100K'),
(222, 3577, 'Designer', 'Monthly', 'Mestilah mencapai KPI followers bagi bulan 1-6 sebanyak: Facebook 100K'),
(223, 3577, 'Designer', 'Monthly', 'Mestilah mencapai KPI followers bagi bulan 1-6 sebanyak: Telegram 100K'),
(224, 3577, 'Designer', 'Monthly', 'Mestilah mencapai KPI followers bagi bulan 1-6 sebanyak: Youtube 10K'),
(225, 3577, 'Designer', 'Monthly', 'Memastikan tema outlet mengikut setiap perayaan yang ada'),
(226, 3577, 'Designer', 'Monthly', 'Menyediakan design ucapan mengikut setiap perayaan yang diraikan'),
(227, 3577, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap info dan produk knowledge'),
(228, 3577, 'Filing', 'Monthly', 'Menyediakan fail untuk setiap produk yang mengandungi: Bahan'),
(229, 3577, 'Filing', 'Monthly', 'Menyediakan fail untuk setiap produk yang mengandungi: Testimoni'),
(230, 3577, 'Filing', 'Monthly', 'Menyediakan fail untuk setiap produk yang mengandungi: Kebaikan'),
(231, 3577, 'Filing', 'Monthly', 'Setiap design yang dibuat harus di simpan sebagai soft copy dan hard copy'),
(232, 3577, 'Filing', 'Monthly', 'Fail promosi terkini termasuk YES'),
(233, 3577, 'Filing', 'Monthly', 'Filing KKM untuk setiap produk'),
(234, 3577, 'Filing', 'Monthly', 'Fail info bonda'),
(235, 3577, 'Filing', 'Monthly', 'Fail KPI media'),
(236, 3577, 'Filing', 'Monthly', 'Fail markah agent'),
(237, 3577, 'Filing', 'Monthly', 'Fail meeting/aktiviti'),
(238, 3577, 'Penyeliaan', 'Monthly', 'Memastikan setiap pekerja yang menguruskan media mencapai KPI yang ditetapkan'),
(239, 7751, 'Kehadiran', 'Monthly', 'Hadir ke office setiap hari pada pukul 9 dan balik pada pukul 6 atau 7'),
(240, 7751, 'Dobi', 'Monthly', 'Menguruskan dan mengenal pasti mesin yang perlu di servis'),
(241, 7751, 'Dobi', 'Monthly', 'Memastikan setiap bil atau sewa dibayar setiap bulan'),
(242, 8804, 'Customer Service', 'Monthly', 'Mencapai target sales JRM Senawang sebanyak RM 30 000 setiap bulan'),
(243, 8804, 'Customer Service', 'Monthly', 'Menyediakan dan menghantar sales report JRM Senawang pada 3hb setiap bulan'),
(244, 8804, 'Customer Service', 'Monthly', 'Mestilah mencapai KPI followers bagi bulan 1-6 sebanyak: Instagram 100K'),
(245, 8804, 'Customer Service', 'Monthly', 'Mestilah mencapai KPI followers bagi bulan 1-6 sebanyak: Facebook 100K'),
(246, 8804, 'Filing', 'Monthly', 'Menyediakan fail untuk JRM Senawang: Document'),
(247, 8804, 'Customer Service', 'Monthly', 'Menyediakan fail untuk JRM Senawang: Bank Statement'),
(248, 8804, 'Filing', 'Monthly', 'Menyediakan fail untuk JRM Senawang: Bank Statement'),
(249, 8804, 'Filing', 'Monthly', 'Menyediakan fail untuk JRM Senawang: Payment Voucher'),
(250, 8804, 'Filing', 'Monthly', 'Menyediakan fail untuk JRM Senawang: Expenses'),
(251, 8804, 'Filing', 'Monthly', 'Menyediakan fail untuk JRM Senawang: Petty cash'),
(252, 8804, 'Filing', 'Monthly', 'Menyediakan fail untuk JRM Senawang: Salary'),
(253, 8804, 'Filing', 'Monthly', 'Menyediakan fail untuk JRM Senawang: KWSP'),
(254, 8804, 'Filing', 'Monthly', 'Menyediakan fail untuk JRM Senawang: Sales report JRM Senawang'),
(255, 8804, 'Filing', 'Monthly', 'Menyediakan fail untuk JRM Senawang: Sales report niagawan'),
(256, 8804, 'Filing', 'Monthly', 'Menyediakan fail untuk JRM Senawang: Inventory'),
(257, 7410, 'JRMNS', 'Monthly', 'Mencapai target sales JRM Senawang sebanyak RM 30 000 setiap bulan'),
(258, 7410, 'JRMNS', 'Monthly', 'Menyediakan dan menghantar sales report JRM Senawang pada 3hb setiap bulan'),
(259, 7410, 'JRMNS', 'Monthly', 'Mestilah mencapai KPI followers bagi bulan 1-6 sebanyak: Instagram 100K'),
(260, 7410, 'JRMNS', 'Monthly', 'Mestilah mencapai KPI followers bagi bulan 1-6 sebanyak: Facebook 100K'),
(261, 7414, 'Customer Service', 'Monthly', 'Mencapai target sales outlet sebanyak RM 100 000 setiap bulan'),
(262, 7414, 'Customer Service', 'Monthly', 'Bertanggungjawab memikirkan strategi marketing dari masa ke semasa untuk menaikkan sales outlet'),
(263, 7414, 'Customer Service', 'Monthly', 'Mestilah mencapai KPI followers bagi bulan 1-6 sebanyak: Instagram 100K'),
(264, 7414, 'Customer Service', 'Monthly', 'Mestilah mencapai KPI followers bagi bulan 1-6 sebanyak: Facebook 100K'),
(265, 7414, 'Customer Service', 'Monthly', 'Menyediakan dan menghantar sales report outlet pada 3hb setiap bulan'),
(266, 8805, 'Human Resources/Admin/Sales', 'Monthly', 'Memastikan stokis mencapai target pembelian yang ditetapkan oleh HQ'),
(267, 8805, 'Human Resources/Admin/Sales', 'Monthly', 'Memastikan outlet dan semua agent mencapai target yang ditetapkan'),
(268, 8805, 'Human Resources/Admin/Sales', 'Monthly', 'Memastikan barang-barang habis di jual'),
(269, 8805, 'Human Resources/Admin/Sales', 'Monthly', 'Bertanggungjawab menyediakan dan menghantar sales report agent pada 8hb setiap bulan'),
(270, 8805, 'Human Resources/Admin/Sales', 'Monthly', 'Bertanggungjawab menghantar memo kepada agent pada 9hb setiap bulan'),
(271, 8805, 'Human Resources/Admin/Sales', 'Monthly', 'Remind sales report agent setiap 25hb bagi setiap bulan'),
(272, 8805, 'Human Resources/Admin/Sales', 'Monthly', 'Memastikan outlet dan semua agent mencapai target yang ditetapkan'),
(273, 8805, 'Finance', 'Monthly', 'Memastikan setiap pembayaran fixed payment dibuat mengikut jadual yang ditetapkan'),
(292, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Document Olin Beauty'),
(293, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Bank Statement'),
(294, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Payment Voucher'),
(295, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Expenses'),
(296, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Billplz dan PayPal'),
(297, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Salary'),
(298, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: KWSP'),
(299, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Sales report agent'),
(300, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Inventory'),
(301, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Damage'),
(302, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Supplier'),
(303, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Part-Time'),
(304, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Resume'),
(305, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Internship'),
(306, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Resign'),
(307, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Asset'),
(308, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Quotation'),
(309, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Memo'),
(310, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Fail staff dan agent'),
(311, 8805, 'Filing', 'Monthly', 'Menyediakan/mengemaskini setiap fail Olin Beauty SDN BHD seperti berikut: Fail seminar'),
(312, 8805, 'Penyeliaan', 'Monthly', 'Memastikan setiap pekerja mencapai KPI yang ditetapkan'),
(313, 8805, 'Penyeliaan', 'Monthly', 'Memastikan pekerja mematuhi peraturan syarikat dan menjaga nama baik syarikat'),
(314, 8805, 'Penyeliaan', 'Monthly', 'Memastikan kebajikan pekerja terjaga: Nurul Jannatulhusna'),
(315, 8805, 'Penyeliaan', 'Monthly', 'Memastikan kebajikan pekerja terjaga: Nur Syahida'),
(316, 8805, 'Penyeliaan', 'Monthly', 'Memastikan kebajikan pekerja terjaga: Muhammad Syafiq'),
(317, 8805, 'Penyeliaan', 'Monthly', 'Memastikan kebajikan pekerja terjaga: Siti Hajar Ahmad'),
(318, 8805, 'Penyeliaan', 'Monthly', 'Memastikan kebajikan pekerja terjaga: Nurul Asyiqin');

-- --------------------------------------------------------

--
-- Table structure for table `kpi_daily`
--

CREATE TABLE `kpi_daily` (
  `id` int(11) NOT NULL,
  `emp_id` int(10) NOT NULL,
  `curr_date` varchar(25) NOT NULL,
  `details` varchar(250) NOT NULL,
  `progress` text NOT NULL,
  `notes` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpi_daily`
--

INSERT INTO `kpi_daily` (`id`, `emp_id`, `curr_date`, `details`, `progress`, `notes`) VALUES
(64, 8805, '06/02/2020', 'Memastikan stok sentiasa ada', 'Incomplete', 'RV out of stock'),
(65, 8805, '06/02/2020', 'Menyemak dan memastikan stok Olin Beauty, outlet dan JRMNS sama dan mencukupi', 'Complete', ''),
(66, 8805, '06/02/2020', 'Update inventory niagawan bagi Olin Beauty, outlet dan JRMNS setiap hari', 'Complete', ''),
(67, 8805, '06/02/2020', 'Memasikan urusan syarikat dengan pihak ketiga berjalan lancar', 'Complete', ''),
(68, 8805, '06/02/2020', 'Memastikan semua email dijawab setiap hari', 'Complete', ''),
(69, 8805, '06/02/2020', 'Memastikan Ajobthing di kemaskini setiap hari', 'Complete', ''),
(70, 8805, '06/02/2020', 'Memastikan setiap perbelanjaan syarikat terkawal: Pantry', 'Complete', ''),
(71, 8805, '06/02/2020', 'Memastikan setiap perbelanjaan syarikat terkawal: Petty cash', 'Complete', ''),
(72, 8805, '06/02/2020', 'Memastikan setiap perbelanjaan syarikat terkawal: Expenses', 'Complete', ''),
(73, 8805, '06/02/2020', 'Update setiap baki duit di dalam bank setiap hari', 'Complete', ''),
(74, 8805, '06/02/2020', 'Memastikan setiap pekerja mencapai KPI yang ditetapkan', 'Complete', ''),
(75, 8805, '06/02/2020', 'Memastikan pekerja mematuhi peraturan syarikat dan menjaga nama baik syarikat', 'Complete', ''),
(76, 8805, '06/02/2020', 'Memastikan kebajikan pekerja terjaga: Nurul Jannatulhusna', 'Complete', ''),
(77, 8805, '06/02/2020', 'Memastikan kebajikan pekerja terjaga: Nur Syahida', 'Complete', ''),
(78, 8805, '06/02/2020', 'Memastikan kebajikan pekerja terjaga: Muhammad Syafiq', 'Complete', ''),
(79, 8805, '06/02/2020', 'Memastikan kebajikan pekerja terjaga: Siti Hajar Ahmad', 'Complete', ''),
(80, 8805, '06/02/2020', 'Memastikan kebajikan pekerja terjaga: Nurul Asyiqin', 'Complete', ''),
(81, 8805, '04/08/2020', 'Memastikan stok sentiasa ada', 'Complete', ''),
(82, 8805, '04/08/2020', 'Menyemak dan memastikan stok Olin Beauty, outlet dan JRMNS sama dan mencukupi', 'Complete', ''),
(83, 8805, '04/08/2020', 'Update inventory niagawan bagi Olin Beauty, outlet dan JRMNS setiap hari', 'Complete', ''),
(84, 8805, '04/08/2020', 'Memasikan urusan syarikat dengan pihak ketiga berjalan lancar', 'Complete', ''),
(85, 8805, '04/08/2020', 'Memastikan semua email dijawab setiap hari', 'Complete', ''),
(86, 8805, '04/08/2020', 'Memastikan Ajobthing di kemaskini setiap hari', 'Complete', ''),
(87, 8805, '04/08/2020', 'Memastikan setiap perbelanjaan syarikat terkawal: Pantry', 'Complete', ''),
(88, 8805, '04/08/2020', 'Memastikan setiap perbelanjaan syarikat terkawal: Petty cash', 'Complete', ''),
(89, 8805, '04/08/2020', 'Memastikan setiap perbelanjaan syarikat terkawal: Expenses', 'Complete', ''),
(90, 8805, '04/08/2020', 'Update setiap baki duit di dalam bank setiap hari', 'Complete', ''),
(91, 8805, '04/08/2020', 'Memastikan setiap pekerja mencapai KPI yang ditetapkan', 'Complete', ''),
(92, 8805, '04/08/2020', 'Memastikan pekerja mematuhi peraturan syarikat dan menjaga nama baik syarikat', 'Complete', ''),
(93, 8805, '04/08/2020', 'Memastikan kebajikan pekerja terjaga: Nurul Jannatulhusna', 'Complete', ''),
(94, 8805, '04/08/2020', 'Memastikan kebajikan pekerja terjaga: Nur Syahida', 'Complete', ''),
(95, 8805, '04/08/2020', 'Memastikan kebajikan pekerja terjaga: Muhammad Syafiq', 'Complete', ''),
(96, 8805, '04/08/2020', 'Memastikan kebajikan pekerja terjaga: Siti Hajar Ahmad', 'Complete', ''),
(97, 8805, '04/08/2020', 'Memastikan kebajikan pekerja terjaga: Nurul Asyiqin', 'Complete', ''),
(98, 8805, '05/08/2020', 'Memastikan stok sentiasa ada', 'Incomplete', ''),
(99, 8805, '05/08/2020', 'Menyemak dan memastikan stok Olin Beauty, outlet dan JRMNS sama dan mencukupi', 'Complete', ''),
(100, 8805, '05/08/2020', 'Update inventory niagawan bagi Olin Beauty, outlet dan JRMNS setiap hari', 'Complete', ''),
(101, 8805, '05/08/2020', 'Memasikan urusan syarikat dengan pihak ketiga berjalan lancar', 'Complete', ''),
(102, 8805, '05/08/2020', 'Memastikan semua email dijawab setiap hari', 'Complete', ''),
(103, 8805, '05/08/2020', 'Memastikan Ajobthing di kemaskini setiap hari', 'Complete', ''),
(104, 8805, '05/08/2020', 'Memastikan setiap perbelanjaan syarikat terkawal: Pantry', 'Complete', ''),
(105, 8805, '05/08/2020', 'Memastikan setiap perbelanjaan syarikat terkawal: Petty cash', 'Complete', ''),
(106, 8805, '05/08/2020', 'Memastikan setiap perbelanjaan syarikat terkawal: Expenses', 'Complete', ''),
(107, 8805, '05/08/2020', 'Update setiap baki duit di dalam bank setiap hari', 'Complete', ''),
(108, 8805, '05/08/2020', 'Memastikan setiap pekerja mencapai KPI yang ditetapkan', 'Complete', ''),
(109, 8805, '05/08/2020', 'Memastikan pekerja mematuhi peraturan syarikat dan menjaga nama baik syarikat', 'Complete', ''),
(110, 8805, '05/08/2020', 'Memastikan kebajikan pekerja terjaga: Nurul Jannatulhusna', 'Complete', ''),
(111, 8805, '05/08/2020', 'Memastikan kebajikan pekerja terjaga: Nur Syahida', 'Complete', ''),
(112, 8805, '05/08/2020', 'Memastikan kebajikan pekerja terjaga: Muhammad Syafiq', 'Complete', ''),
(113, 8805, '05/08/2020', 'Memastikan kebajikan pekerja terjaga: Siti Hajar Ahmad', 'Complete', ''),
(114, 8805, '05/08/2020', 'Memastikan kebajikan pekerja terjaga: Nurul Asyiqin', 'Complete', '');

-- --------------------------------------------------------

--
-- Table structure for table `kpi_monthly`
--

CREATE TABLE `kpi_monthly` (
  `id` int(11) NOT NULL,
  `emp_id` int(15) NOT NULL,
  `curr_date` varchar(25) NOT NULL,
  `details` varchar(250) NOT NULL,
  `progress` text NOT NULL,
  `notes` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpi_required`
--

CREATE TABLE `kpi_required` (
  `id` int(11) NOT NULL,
  `emp_id` int(10) NOT NULL,
  `curr_date` varchar(25) NOT NULL,
  `details` varchar(250) NOT NULL,
  `progress` text NOT NULL,
  `notes` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpi_weekly`
--

CREATE TABLE `kpi_weekly` (
  `id` int(11) NOT NULL,
  `emp_id` int(10) NOT NULL,
  `curr_date` varchar(25) NOT NULL,
  `details` varchar(250) NOT NULL,
  `progress` text NOT NULL,
  `notes` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `emp_id`, `password`) VALUES
(5, '7751', '7751@12'),
(6, '7410', '7410@13'),
(7, '3577', '3577@14'),
(9, '8804', '8804@16'),
(10, '8805', '8805@17'),
(11, '9697', '9697@18');

-- --------------------------------------------------------

--
-- Table structure for table `settle`
--

CREATE TABLE `settle` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(50) NOT NULL,
  `date_settle` varchar(15) NOT NULL,
  `pic` text NOT NULL,
  `status` text NOT NULL,
  `payment` double(10,2) NOT NULL,
  `payment_method` text NOT NULL,
  `bank_details` text NOT NULL,
  `notes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave`
--

CREATE TABLE `staff_leave` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `annual_leave` int(11) NOT NULL,
  `al_earned` int(11) NOT NULL,
  `mc` int(11) NOT NULL,
  `mc_earned` int(11) NOT NULL,
  `carry_forward` int(11) NOT NULL,
  `cmp` int(11) NOT NULL,
  `hsp` int(11) NOT NULL,
  `mrg` int(11) NOT NULL,
  `mty` int(11) NOT NULL,
  `pty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_leave`
--

INSERT INTO `staff_leave` (`id`, `emp_id`, `annual_leave`, `al_earned`, `mc`, `mc_earned`, `carry_forward`, `cmp`, `hsp`, `mrg`, `mty`, `pty`) VALUES
(1, 7751, 3, 8, 14, 14, 0, 2, 60, 3, 60, 7),
(2, 3577, 4, 8, 11, 14, 0, 2, 60, 3, 60, 7),
(3, 8804, 1, 8, 12, 14, 0, 0, 60, 0, 60, 7),
(4, 8805, 0, 8, 13, 14, 0, 2, 60, 3, 60, 7),
(5, 7410, 2, 8, 13, 14, 0, 2, 60, 3, 60, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annual_leave`
--
ALTER TABLE `annual_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply_leave`
--
ALTER TABLE `apply_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `covid19`
--
ALTER TABLE `covid19`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpi`
--
ALTER TABLE `kpi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpi_daily`
--
ALTER TABLE `kpi_daily`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpi_monthly`
--
ALTER TABLE `kpi_monthly`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpi_required`
--
ALTER TABLE `kpi_required`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpi_weekly`
--
ALTER TABLE `kpi_weekly`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settle`
--
ALTER TABLE `settle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave`
--
ALTER TABLE `staff_leave`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annual_leave`
--
ALTER TABLE `annual_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apply_leave`
--
ALTER TABLE `apply_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `covid19`
--
ALTER TABLE `covid19`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kpi`
--
ALTER TABLE `kpi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `kpi_daily`
--
ALTER TABLE `kpi_daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `kpi_required`
--
ALTER TABLE `kpi_required`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settle`
--
ALTER TABLE `settle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_leave`
--
ALTER TABLE `staff_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
