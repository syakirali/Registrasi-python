-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 06, 2018 at 08:20 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppmb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add question', 7, 'add_question'),
(20, 'Can change question', 7, 'change_question'),
(21, 'Can delete question', 7, 'delete_question'),
(22, 'Can add choice', 8, 'add_choice'),
(23, 'Can change choice', 8, 'change_choice'),
(24, 'Can delete choice', 8, 'delete_choice'),
(25, 'Can add fakultas', 9, 'add_fakultas'),
(26, 'Can change fakultas', 9, 'change_fakultas'),
(27, 'Can delete fakultas', 9, 'delete_fakultas'),
(28, 'Can add prodi', 10, 'add_prodi'),
(29, 'Can change prodi', 10, 'change_prodi'),
(30, 'Can delete prodi', 10, 'delete_prodi'),
(31, 'Can add pendaftar', 11, 'add_pendaftar'),
(32, 'Can change pendaftar', 11, 'change_pendaftar'),
(33, 'Can delete pendaftar', 11, 'delete_pendaftar'),
(34, 'Can add user', 12, 'add_user'),
(35, 'Can change user', 12, 'change_user'),
(36, 'Can delete user', 12, 'delete_user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$R6JLlXbpKrAc$xF7JLktuBbGjN1fHbTr7KeFAgXyodOWLxPLNdRCVvCs=', '2018-05-25 18:44:19.313177', 1, 'sam', '', '', 'sam@sam.sam', 1, 1, '2018-05-15 12:29:04.055326'),
(2, 'pbkdf2_sha256$100000$utBpGAgIXxq0$LZk5nxMT9kR8mA565tiLTTIHgdgPwwpvggvAXh9Ammw=', NULL, 0, 'admin', '', '', '', 0, 1, '2018-05-15 12:34:42.405635');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-05-15 12:34:42.507905', '2', 'admin', 1, '[{\"added\": {}}]', 4, 1),
(2, '2018-05-25 18:43:55.453180', '2', 'admin', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'polls', 'choice'),
(7, 'polls', 'question'),
(9, 'ppmb', 'fakultas'),
(11, 'ppmb', 'pendaftar'),
(10, 'ppmb', 'prodi'),
(12, 'ppmb', 'user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-05-15 12:25:07.580527'),
(2, 'auth', '0001_initial', '2018-05-15 12:25:16.255160'),
(3, 'admin', '0001_initial', '2018-05-15 12:25:18.153358'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-05-15 12:25:18.202593'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-05-15 12:25:19.501641'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-05-15 12:25:20.361348'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-05-15 12:25:21.021435'),
(8, 'auth', '0004_alter_user_username_opts', '2018-05-15 12:25:21.070856'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-05-15 12:25:21.590594'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-05-15 12:25:21.657249'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-05-15 12:25:21.708360'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-05-15 12:25:22.572913'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-05-15 12:25:23.310028'),
(14, 'sessions', '0001_initial', '2018-05-15 12:25:23.723970'),
(15, 'polls', '0001_initial', '2018-05-15 12:39:42.384846'),
(16, 'ppmb', '0001_initial', '2018-05-15 13:17:33.591908'),
(17, 'ppmb', '0002_auto_20180515_1343', '2018-05-15 13:44:02.479537'),
(18, 'ppmb', '0003_user', '2018-05-18 13:11:12.036820');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5poqf4f26c451062xefl02g0dq4d4u5t', 'MTFjMjA0NDFlMjIyOGUyNWU3MzRlNTk4MDRjNjk4MjAwM2MzOWZmODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2VjZGRkNDEzYTM2ODk2NDQ0MDllM2RmMzI2MzcyMzViNTBhMWJjIn0=', '2018-06-08 18:44:19.336847'),
('opwn91nwf16m5ez1s1xl7wuel2yj2qmm', 'MjRmMTkwZWFkMWVkYTExM2QxMmQzZjllYmUxNTQ2NGU4YmU5M2Q3ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZDJmNmUyNzBkZWVjY2FlYjQ5NDIxYmQ5NzMzNWEzMmY0NWJkMGU4In0=', '2018-05-29 12:34:16.228347');

-- --------------------------------------------------------

--
-- Table structure for table `ppmb_fakultas`
--

CREATE TABLE `ppmb_fakultas` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ppmb_fakultas`
--

INSERT INTO `ppmb_fakultas` (`id`, `nama`) VALUES
(1, 'PASCA SARJANA'),
(2, 'KEDOKTERAN'),
(3, 'KEDOKTERAN GIGI'),
(4, 'EKONOMI & BISNIS'),
(5, 'HUKUM'),
(6, 'FARMASI'),
(7, 'ILMU SOSIAL & ILMU POLITIK'),
(8, 'ILMU BUDAYA'),
(9, 'KESEHATAN MASYARAKAT'),
(10, 'SAINTEK'),
(11, 'KEDOKTERAN HEWAN'),
(12, 'KEPERAWATAN'),
(13, 'PSIKOLOGI'),
(14, 'PERIKANAN & KELAUTAN'),
(15, 'VOKASI?'),
(16, 'PDD BWI');

-- --------------------------------------------------------

--
-- Table structure for table `ppmb_pendaftar`
--

CREATE TABLE `ppmb_pendaftar` (
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `asal_sekolah` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `no_seluler` varchar(15) NOT NULL,
  `tlp_rumah` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `pilihan1_id` int(11) NOT NULL,
  `pilihan2_id` int(11) NOT NULL,
  `pilihan3_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ppmb_pendaftar`
--

INSERT INTO `ppmb_pendaftar` (`nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `asal_sekolah`, `jenis_kelamin`, `agama`, `no_seluler`, `tlp_rumah`, `email`, `alamat`, `created_at`, `updated_at`, `pilihan1_id`, `pilihan2_id`, `pilihan3_id`) VALUES
('085259661616', 'asdfasdfaf', 'asdfasfasf', '2018-04-30', 'asfasfda', 'l', 'katolik', '34573737', '347347347', 'asdasf@agsasdg.com', 'asdfasfasfasasg', '0000-00-00', '2018-05-15', 162, 75, 99),
('08525966161612', 'sadgasgag', 'asfasdfas', '2018-05-19', 'asdasfa', 'p', 'katolik', '457345737', '345734729', 'asdasdf@sadgag.com', 'asdaag as asas gsdag', '2018-05-15', '2018-05-15', 75, 159, 93),
('08525966161613', 'safasdfasf', 'asdfafd', '2018-05-01', 'asdfasdf', 'p', 'islam', '242462364236', '2346236236', 'asdasdg@asaf.cadf', 'asdfaasf a asf saf ', '0000-00-00', '2018-05-15', 160, 159, 148),
('08725482938', 'asf asfhjhasf ioasfoi', 'asfasf', '2018-05-11', 'asfasdfa', 'l', 'katolik', '326262236236', '346236236236', 'sdasasg@asgjasg.com', 'sadasgasgas', '0000-00-00', '2018-05-15', 75, 121, 161),
('092375817589107', 'sadfjasf asfkasf', 'sadfjak ', '1998-09-03', 'skdaksdf alskdfjaoije fksaljf', 'l', 'budha', '903748239420385', '029834280936', 'sajfa@khgurhgk.com', 'kashfopijpoij ghauhfd', '2018-05-09', '0000-00-00', 93, 140, 120),
('15154141423', 'asfa a wqerar', 'asfasdf ewr', '2018-05-17', 'asf asf e efafa', 'l', 'katolik', '34226524624', '264262622', 'asdfa@asdaf.ghj', 'asdfew wqer qr qwr qw r ', '2018-05-09', '0000-00-00', 159, 161, 160),
('2520905', 'safasdfasf', 'asfasdfasf', '2018-05-15', 'asgag af asfs', 'l', 'hindu', '27272452562', '34262462362', 'email02081997@gmail.com', 'afasf asfas fas f', '2018-05-09', '0000-00-00', 99, 159, 162),
('34515415154', 'sdfa asf a asdf ', 'af asfd a ', '1997-05-01', 'safasdfas', 'l', 'islam', '023151515', '01399138911', 'asdfasf@alkaf.com', 'asdfafas asfas saf asf a', '2018-05-09', '0000-00-00', 75, 40, 99),
('3462623', 'Syakir Ali', 'Bangkalan', '2018-05-09', 'asdfasdf', 'l', 'islam', '351215525', '1253125125', 'admin@admin.com', 'Jl. Raya Ketengan No. 69 - Burneh', '2018-05-09', '0000-00-00', 162, 99, 75),
('5145254151', 'adsfasdf', 'asdf', '2018-05-15', 'asdfvasd', 'p', 'budha', '264262624633', '436246234636', 'syakirs_mail@yahoo.com', 'asdgag asdf g ', '2018-05-10', '2018-05-10', 162, 161, 144),
('afa asdfkjafj', 'asdflka asdflkjasd adsfkl', 'asdfasdf', '1999-12-31', 'jklasjfasdf ', 'p', 'katolik', '23642624345', '9023472879283', 'asfas@askjfa', 'sadadfa asfda sdf ', '2018-05-09', '0000-00-00', 75, 159, 99),
('jlkj;lj oijjaskjhha', 'klj;joiasdf asdlkfjoij', 'aj;lkjoi fkjaj', '2015-12-31', 'kjoijiuj ajijafnjkhahf', 'p', 'katolik', '830728952389471', '90378235892', 'asfkjh@kljhsajgh.co', 'ksjfla asklfja;lkf', '2018-05-09', '0000-00-00', 99, 159, 148),
('tsga adaf gr', 'asfasf ttyu j', 'dfghtr hthfghgfh', '2018-05-15', 'ddfhdhd sdgga', 'p', 'katolik', '658536226', '264537635', 'sbydev@mail.com', 'dhsdgagagd', '2018-05-09', '2018-05-09', 160, 161, 159);

-- --------------------------------------------------------

--
-- Table structure for table `ppmb_prodi`
--

CREATE TABLE `ppmb_prodi` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenjang` varchar(10) NOT NULL,
  `akreditasi` varchar(2) NOT NULL,
  `fakultas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ppmb_prodi`
--

INSERT INTO `ppmb_prodi` (`id`, `nama`, `jenjang`, `akreditasi`, `fakultas_id`) VALUES
(1, 'Ilmu Ekonomi Islam', 'S3', 'A', 1),
(2, 'Pengembangan Sumber Daya Manusia', 'S3', 'B', 1),
(3, 'Bioteknologi Perikanan dan Kelautan', 'S2', 'B', 1),
(4, 'Ilmu Forensik', 'S2', 'B', 1),
(5, 'Imunologi', 'S2', 'B', 1),
(6, 'Sains Hukum dan Pembangunan', 'S2', 'B', 1),
(7, 'Pengembangan Sumber Daya Manusia', 'S2', 'A', 1),
(8, 'Sains Ekonomi Islam', 'S2', 'A', 1),
(9, 'Manajemen Bencana', 'S2', 'C', 1),
(10, 'Teknobiomedik', 'S2', 'B', 1),
(11, 'Kajian Ilmu Kepolisian', 'S2', 'C', 1),
(12, 'Pendidikan Dokter', 'S1', 'A', 2),
(13, 'Pendidikan Bidan', 'S1', 'A', 2),
(14, 'Ilmu Kedokteran Dasar', 'S2', 'A', 2),
(15, 'Ilmu Kedokteran Tropis', 'S2', 'A', 2),
(16, 'Ilmu Kesehatan Olah Raga', 'S2', 'A', 2),
(17, 'Ilmu Kesehatan Reproduksi', 'S2', 'A', 2),
(18, 'Ilmu Kedokteran Klinik', 'S2', 'B', 2),
(19, 'Ilmu Kedokteran', 'S3', 'A', 2),
(20, 'Bedah Plastik Rekonstruksi dan Estetik', 'Sp1', 'A', 2),
(21, 'Ilmu Kesehatan Mata', 'Sp1', 'B', 2),
(22, 'Ilmu Penyakit Dalam', 'Sp1', 'B', 2),
(23, 'Neurologi', 'Sp1', 'B', 2),
(24, 'Ilmu Kesehatan Kulit dan Kelamin', 'Sp1', 'A', 2),
(25, 'Ilmu Kesehatan Telinga Hidung Tenggorok Bedah Kepa', 'Sp1', 'A', 2),
(26, 'Anestesiologi dan Reanimasi', 'Sp1', 'A', 2),
(27, 'Ilmu Bedah', 'Sp1', 'A', 2),
(28, 'Obstetri dan Ginekologi', 'Sp1', 'A', 2),
(29, 'Pulmonologi dan Ilmu Kedokteran Respirasi', 'Sp1', 'A', 2),
(30, 'Ilmu Kedokteran Forensik dan Medikolegal', 'Sp1', 'A-', 2),
(31, 'Ilmu Kesehatan Anak', 'Sp1', 'A', 2),
(32, 'Orthopaedi dan Traumatologi', 'Sp1', 'A', 2),
(33, 'Ilmu Kardiologi dan Kedokteran Vaskular', 'Sp1', 'A', 2),
(34, 'Patologi Anatomi', 'Sp1', 'B', 2),
(35, 'Patalogi Klinik', 'Sp1', 'B', 2),
(36, 'Ilmu Kedokteran Fisik dan Rehabilitasi', 'Sp1', 'A', 2),
(37, 'Radiologi', 'Sp1', 'A', 2),
(38, 'Psikiatri', 'Sp1', 'A+', 2),
(39, 'Mikrobiologi klinik', 'Sp1', 'A', 2),
(40, 'Andrologi', 'Sp1', 'B', 2),
(41, 'Urologi', 'Sp1', 'A', 2),
(42, 'Bedah Thoraks Kardiovaskular', 'Sp1', 'A', 2),
(43, 'Ilmu Bedah saraf', 'Sp1', 'A', 2),
(44, 'Ilmu Bedah Anak', 'Sp1', '-', 2),
(45, 'Ilmu Penyakit Dalam', 'Sp2', '-', 2),
(46, 'Anestesiologi dan Reanimasi', 'Sp2', '-', 2),
(47, 'Obstetri dan Ginekologi', 'Sp2', '-', 2),
(48, 'Ilmu Kesehatan Anak', 'Sp2', '-', 2),
(49, 'Patalogi Klinik', 'Sp2', '-', 2),
(50, 'Psikiatri Anak dan Remaja', 'Sp2', '-', 2),
(51, 'Bedah Kepala Leher', 'Sp2', '-', 2),
(52, 'Bedah Digestif', 'Sp2', '-', 2),
(53, 'Pendidikan Bidan', 'Profesi', '-', 2),
(54, 'Pendidikan Dokter', 'Profesi', 'A', 2),
(55, 'Ilmu Kesehatan Gigi', 'S2', 'B', 3),
(56, 'Bedah Mulut dan Maksilofasial', 'Sp1', 'A', 3),
(57, 'Ilmu Penyakit Mulut', 'Sp1', 'B', 3),
(58, 'Ilmu Konservasi Gigi', 'Sp1', 'A', 3),
(59, 'Ilmu Kedokteran Gigi Anak', 'Sp1', 'A', 3),
(60, 'Periodonsia', 'Sp1', 'B', 3),
(61, 'Ortodonsia', 'Sp1', 'A', 3),
(62, 'Prostodonsia', 'Sp1', 'A', 3),
(63, 'Pendidikan Dokter Gigi', 'Profesi', 'A', 3),
(64, 'Pendidikan Dokter Gigi', 'S1', 'A', 3),
(65, 'Ilmu Manajemen', 'S3', 'B', 4),
(66, 'Ilmu Akuntansi', 'S3', 'B', 4),
(67, 'Ilmu Ekonomi', 'S3', 'B', 4),
(68, 'Ilmu Ekonomi', 'S2', 'A', 4),
(69, 'Magister Manajemen', 'S2', 'A', 4),
(70, 'Akuntansi', 'S2', 'A', 4),
(71, 'Sains Manajemen', 'S2', 'A', 4),
(72, 'Ekonomi Islam', 'S1', 'A', 4),
(73, 'Ekonomi Pembangunan', 'S1', 'A', 4),
(74, 'Manajemen', 'S1', 'A', 4),
(75, 'Akuntansi', 'S1', 'A', 4),
(76, 'Pendidikan Profesi Akuntansi', 'Profesi', 'A', 4),
(77, 'Ilmu Hukum', 'S3', 'B', 5),
(78, 'Ilmu Hukum', 'S2', 'A', 5),
(79, 'Kenotariatan', 'S2', 'B', 5),
(80, 'Ilmu Hukum', 'S1', 'A', 5),
(81, 'Ilmu Farmasi', 'S3', 'B', 6),
(82, 'Ilmu Farmasi', 'S2', 'A', 6),
(83, 'Farmasi Klinik', 'S2', 'B', 6),
(84, 'Spesialis Farmasi', 'Sp1', '-', 6),
(85, 'Pendidikan Apoteker', 'S1', 'A', 6),
(86, 'Pendidikan Apoteker', 'Profesi', 'A', 6),
(87, 'Ilmu Sosial', 'S3', 'A', 7),
(88, 'Kebijakan Publik', 'S2', 'A', 7),
(89, 'Hubungan Internasional', 'S2', 'B', 7),
(90, 'Ilmu Politik', 'S2', 'B', 7),
(91, 'Sosiologi', 'S2', 'A', 7),
(92, 'Media dan Komunikasi', 'S2', 'A', 7),
(93, 'Ilmu Administrasi Negara', 'S1', 'A', 7),
(94, 'Ilmu Hubungan Internasional', 'S1', 'A', 7),
(95, 'Ilmu Politik', 'S1', 'A', 7),
(96, 'Sosiologi', 'S1', 'A', 7),
(97, 'Ilmu Komunikasi', 'S1', 'A', 7),
(98, 'Ilmu Informasi dan Perpustakaan', 'S1', 'A', 7),
(99, 'Antropologi', 'S1', 'A', 7),
(100, 'Kajian Sastra dan Budaya', 'S2', 'A', 8),
(101, 'Ilmu Linguistik', 'S2', 'B', 8),
(102, 'Sastra Indonesia', 'S1', 'A', 8),
(103, 'Sastra Inggris', 'S1', 'A', 8),
(104, 'Sastra Jepang', 'S1', 'B', 8),
(105, 'Ilmu Sejarah', 'S1', 'A', 8),
(106, 'Ilmu Kesehatan', 'S3', 'B', 9),
(107, 'Ilmu Kesehatan Masyarakat', 'S2', 'A', 9),
(108, 'Kesehatan dan Keselamatan Kerja', 'S2', 'A', 9),
(109, 'Kesehatan Lingkungan', 'S2', 'A', 9),
(110, 'Administrasi Dan Kebijakan Kesehatan', 'S2', 'A', 9),
(111, 'Epidemiologi', 'S2', 'A', 9),
(112, 'Kesehatan Masyarakat', 'S1', 'A', 9),
(113, 'Ilmu Gizi', 'S1', 'B', 9),
(114, 'Matematika dan Ilmu Pengetahuan Alam', 'S3', 'B', 10),
(115, 'Biologi', 'S2', 'A', 10),
(116, 'Kimia', 'S2', 'B', 10),
(117, 'Teknobiomedik', 'S1', 'B', 10),
(118, 'Ilmu dan Teknologi Lingkungan', 'S1', 'A', 10),
(119, 'Matematika', 'S1', 'A', 10),
(120, 'Fisika', 'S1', 'A', 10),
(121, 'Biologi', 'S1', 'A', 10),
(122, 'Kimia', 'S1', 'A', 10),
(123, 'Sistem Informasi', 'S1', 'A', 10),
(124, 'Statistika', 'S1', 'B', 10),
(125, 'Sains Veteriner', 'S3', 'B', 11),
(126, 'Ilmu Biologi Reproduksi', 'S2', 'A', 11),
(127, 'Ilmu Penyakit dan Kesehatan Masyarakat Veteriner', 'S2', 'A', 11),
(128, 'Agribisnis Veteriner', 'S2', 'A', 11),
(129, 'Vaksinologi dan Imunoterapetika', 'S2', 'A', 11),
(130, 'Pendidikan Dokter Hewan', 'S1', 'A', 11),
(131, 'Profesi Dokter Hewan', 'Profesi', 'A', 11),
(132, 'Keperawatan', 'S2', 'B', 12),
(133, 'Pendidikan Ners', 'S1', 'A', 12),
(134, 'Pendidikan Ners', 'Profesi', 'A', 12),
(135, 'Psikologi', 'S3', 'A', 13),
(136, 'Psikologi Terapan', 'S2', 'B', 13),
(137, 'Psikologi', 'S2', 'B', 13),
(138, 'Psikologi Profesi', 'S2', 'A', 13),
(139, 'Psikologi', 'S1', 'A', 13),
(140, 'Budidaya Perairan', 'S1', 'A', 14),
(141, 'Teknologi Industri Hasil Perikanan', 'S1', '-', 14),
(142, 'Pengobat Tradisional', 'D3', 'A', 15),
(143, 'Fisioterapi', 'D3', 'B', 15),
(144, 'Analis Medis', 'D3', 'B', 15),
(145, 'Teknik Kesehatan Gigi', 'D3', 'B', 15),
(146, 'Manajemen Pemasaran', 'D3', 'B', 15),
(147, 'Manajemen Perbankan', 'D3', 'A', 15),
(148, 'Akuntansi', 'D3', 'A', 15),
(149, 'Perpajakan', 'D3', 'A', 15),
(150, 'Manajemen Kesekretariatan dan Perkantoran', 'D3', 'B', 15),
(151, 'Manajemen Perhotelan', 'D3', 'A', 15),
(152, 'Kepariwisataan / Bina Wisata', 'D3', 'A', 15),
(153, 'Teknisi Perpustakaan', 'D3', 'A', 15),
(154, 'Bahasa Inggris', 'D3', 'B', 15),
(155, 'Hiperkes dan Keselamatan Kerja', 'D3', 'A', 15),
(156, 'Otomasi Sistem Instrumentasi', 'D3', 'B', 15),
(157, 'Sistem Informasi', 'D3', 'B', 15),
(158, 'Kesehatan Ternak', 'D3', 'A', 15),
(159, 'Pengobat Tradisional', 'D4', '-', 15),
(160, 'Fisioterapi', 'D4', '-', 15),
(161, 'Radiologi', 'D4', '-', 15),
(162, 'Akuntansi', 'S1', '-', 16),
(163, 'Budidaya Perairan', 'S1', '-', 16),
(164, 'Pendidikan Dokter Hewan', 'S1', '-', 16),
(165, 'Kesehatan Masyarakat', 'S1', '-', 16);

-- --------------------------------------------------------

--
-- Table structure for table `ppmb_user`
--

CREATE TABLE `ppmb_user` (
  `email` varchar(75) NOT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `ppmb_fakultas`
--
ALTER TABLE `ppmb_fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ppmb_pendaftar`
--
ALTER TABLE `ppmb_pendaftar`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `ppmb_pendaftar_pilihan1_id_775e71af_fk_ppmb_prodi_id` (`pilihan1_id`),
  ADD KEY `ppmb_pendaftar_pilihan2_id_c7c8a627_fk_ppmb_prodi_id` (`pilihan2_id`),
  ADD KEY `ppmb_pendaftar_pilihan3_id_d08d80db_fk_ppmb_prodi_id` (`pilihan3_id`);

--
-- Indexes for table `ppmb_prodi`
--
ALTER TABLE `ppmb_prodi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ppmb_prodi_fakultas_id_a9e086d7_fk_ppmb_fakultas_id` (`fakultas_id`);

--
-- Indexes for table `ppmb_user`
--
ALTER TABLE `ppmb_user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ppmb_fakultas`
--
ALTER TABLE `ppmb_fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `ppmb_prodi`
--
ALTER TABLE `ppmb_prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `ppmb_pendaftar`
--
ALTER TABLE `ppmb_pendaftar`
  ADD CONSTRAINT `ppmb_pendaftar_pilihan1_id_775e71af_fk_ppmb_prodi_id` FOREIGN KEY (`pilihan1_id`) REFERENCES `ppmb_prodi` (`id`),
  ADD CONSTRAINT `ppmb_pendaftar_pilihan2_id_c7c8a627_fk_ppmb_prodi_id` FOREIGN KEY (`pilihan2_id`) REFERENCES `ppmb_prodi` (`id`),
  ADD CONSTRAINT `ppmb_pendaftar_pilihan3_id_d08d80db_fk_ppmb_prodi_id` FOREIGN KEY (`pilihan3_id`) REFERENCES `ppmb_prodi` (`id`);

--
-- Constraints for table `ppmb_prodi`
--
ALTER TABLE `ppmb_prodi`
  ADD CONSTRAINT `ppmb_prodi_fakultas_id_a9e086d7_fk_ppmb_fakultas_id` FOREIGN KEY (`fakultas_id`) REFERENCES `ppmb_fakultas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
