# ************************************************************
# Antares - SQL Client
# Version 0.7.31
# 
# https://antares-sql.app/
# https://github.com/antares-sql/antares
# 
# Host: 127.0.0.1 (MySQL Community Server - GPL 8.0.41)
# Database: dj_perpustakaan
# Generation time: 2025-02-14T22:47:40+07:00
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table auth_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;





# Dump of table auth_group_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;





# Dump of table auth_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, "Can add log entry", 1, "add_logentry"),
	(2, "Can change log entry", 1, "change_logentry"),
	(3, "Can delete log entry", 1, "delete_logentry"),
	(4, "Can view log entry", 1, "view_logentry"),
	(5, "Can add permission", 2, "add_permission"),
	(6, "Can change permission", 2, "change_permission"),
	(7, "Can delete permission", 2, "delete_permission"),
	(8, "Can view permission", 2, "view_permission"),
	(9, "Can add group", 3, "add_group"),
	(10, "Can change group", 3, "change_group"),
	(11, "Can delete group", 3, "delete_group"),
	(12, "Can view group", 3, "view_group"),
	(13, "Can add user", 4, "add_user"),
	(14, "Can change user", 4, "change_user"),
	(15, "Can delete user", 4, "delete_user"),
	(16, "Can view user", 4, "view_user"),
	(17, "Can add content type", 5, "add_contenttype"),
	(18, "Can change content type", 5, "change_contenttype"),
	(19, "Can delete content type", 5, "delete_contenttype"),
	(20, "Can view content type", 5, "view_contenttype"),
	(21, "Can add session", 6, "add_session"),
	(22, "Can change session", 6, "change_session"),
	(23, "Can delete session", 6, "delete_session"),
	(24, "Can view session", 6, "view_session"),
	(25, "Can add crontab", 7, "add_crontabschedule"),
	(26, "Can change crontab", 7, "change_crontabschedule"),
	(27, "Can delete crontab", 7, "delete_crontabschedule"),
	(28, "Can view crontab", 7, "view_crontabschedule"),
	(29, "Can add interval", 8, "add_intervalschedule"),
	(30, "Can change interval", 8, "change_intervalschedule"),
	(31, "Can delete interval", 8, "delete_intervalschedule"),
	(32, "Can view interval", 8, "view_intervalschedule"),
	(33, "Can add periodic task", 9, "add_periodictask"),
	(34, "Can change periodic task", 9, "change_periodictask"),
	(35, "Can delete periodic task", 9, "delete_periodictask"),
	(36, "Can view periodic task", 9, "view_periodictask"),
	(37, "Can add periodic task track", 10, "add_periodictasks"),
	(38, "Can change periodic task track", 10, "change_periodictasks"),
	(39, "Can delete periodic task track", 10, "delete_periodictasks"),
	(40, "Can view periodic task track", 10, "view_periodictasks"),
	(41, "Can add solar event", 11, "add_solarschedule"),
	(42, "Can change solar event", 11, "change_solarschedule"),
	(43, "Can delete solar event", 11, "delete_solarschedule"),
	(44, "Can view solar event", 11, "view_solarschedule"),
	(45, "Can add clocked", 12, "add_clockedschedule"),
	(46, "Can change clocked", 12, "change_clockedschedule"),
	(47, "Can delete clocked", 12, "delete_clockedschedule"),
	(48, "Can view clocked", 12, "view_clockedschedule"),
	(49, "Can add buku", 13, "add_buku"),
	(50, "Can change buku", 13, "change_buku"),
	(51, "Can delete buku", 13, "delete_buku"),
	(52, "Can view buku", 13, "view_buku"),
	(53, "Can add mahasiswa", 14, "add_mahasiswa"),
	(54, "Can change mahasiswa", 14, "change_mahasiswa"),
	(55, "Can delete mahasiswa", 14, "delete_mahasiswa"),
	(56, "Can view mahasiswa", 14, "view_mahasiswa"),
	(57, "Can add peminjaman", 15, "add_peminjaman"),
	(58, "Can change peminjaman", 15, "change_peminjaman"),
	(59, "Can delete peminjaman", 15, "delete_peminjaman"),
	(60, "Can view peminjaman", 15, "view_peminjaman");

/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table auth_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, "pbkdf2_sha256$870000$5nYVhM0nURqEf1zdoCd8F1$UJKt5d3CDO6GYs6Q43dvmhHwF/HHeGr7QZKUI5Trw2o=", "2025-02-14 15:45:54.698000", 1, "username", "", "", "email@example.com", 1, 1, "2025-02-14 15:45:42.297000");

/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table auth_user_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;





# Dump of table auth_user_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;





# Dump of table django_admin_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, "2025-02-14 15:46:04.863000", "46", "46 - Laut Bercerita", 1, "new through import_export", 13, 1),
	(2, "2025-02-14 15:46:04.863000", "47", "47 - Pulang", 1, "new through import_export", 13, 1),
	(3, "2025-02-14 15:46:04.863000", "48", "48 - Bumi Manusia", 1, "new through import_export", 13, 1),
	(4, "2025-02-14 15:46:04.863000", "49", "49 - Laskar Pelangi", 1, "new through import_export", 13, 1),
	(5, "2025-02-14 15:46:04.864000", "50", "50 - Perahu Kertas", 1, "new through import_export", 13, 1),
	(6, "2025-02-14 15:46:04.864000", "51", "51 - Ronggeng Dukuh Paruk", 1, "new through import_export", 13, 1),
	(7, "2025-02-14 15:46:04.864000", "52", "52 - Negeri 5 Menara", 1, "new through import_export", 13, 1),
	(8, "2025-02-14 15:46:04.864000", "53", "53 - Supernova: Kesatria, Puteri, dan Bintang Jatuh", 1, "new through import_export", 13, 1),
	(9, "2025-02-14 15:46:04.864000", "54", "54 - Gadis Kretek", 1, "new through import_export", 13, 1),
	(10, "2025-02-14 15:46:04.864000", "55", "55 - Jingga dan Senja", 1, "new through import_export", 13, 1),
	(11, "2025-02-14 15:46:04.864000", "56", "56 - Senja di Langit Cikapundung", 1, "new through import_export", 13, 1),
	(12, "2025-02-14 15:46:04.864000", "57", "57 - Rindu", 1, "new through import_export", 13, 1),
	(13, "2025-02-14 15:46:04.864000", "58", "58 - Sepotong Hati yang Baru", 1, "new through import_export", 13, 1),
	(14, "2025-02-14 15:46:04.864000", "59", "59 - Tentang Kamu", 1, "new through import_export", 13, 1),
	(15, "2025-02-14 15:46:04.864000", "60", "60 - Bidadari-Bidadari Surga", 1, "new through import_export", 13, 1),
	(16, "2025-02-14 15:46:04.864000", "61", "61 - Anak Bajang Menggiring Angin", 1, "new through import_export", 13, 1),
	(17, "2025-02-14 15:46:04.864000", "62", "62 - Api Awan Asap", 1, "new through import_export", 13, 1),
	(18, "2025-02-14 15:46:04.864000", "63", "63 - Arus Balik", 1, "new through import_export", 13, 1),
	(19, "2025-02-14 15:46:04.864000", "64", "64 - Jalan Tak Ada Ujung", 1, "new through import_export", 13, 1),
	(20, "2025-02-14 15:46:04.864000", "65", "65 - Keluarga Gerilya", 1, "new through import_export", 13, 1),
	(21, "2025-02-14 15:46:04.864000", "66", "66 - Kisah 1001 Malam", 1, "new through import_export", 13, 1),
	(22, "2025-02-14 15:46:04.864000", "67", "67 - Kisah-Kisah Tanah Jawa", 1, "new through import_export", 13, 1),
	(23, "2025-02-14 15:46:04.864000", "68", "68 - Kumpulan Budak Setan", 1, "new through import_export", 13, 1),
	(24, "2025-02-14 15:46:04.864000", "69", "69 - Lelaki Harimau", 1, "new through import_export", 13, 1),
	(25, "2025-02-14 15:46:04.864000", "70", "70 - Manusia Kamar", 1, "new through import_export", 13, 1),
	(26, "2025-02-14 15:46:04.864000", "71", "71 - Max Havelaar", 1, "new through import_export", 13, 1),
	(27, "2025-02-14 15:46:04.864000", "72", "72 - Mendadak Dangdut", 1, "new through import_export", 13, 1),
	(28, "2025-02-14 15:46:04.864000", "73", "73 - Namaku Hiroko", 1, "new through import_export", 13, 1),
	(29, "2025-02-14 15:46:04.864000", "74", "74 - Pada Sebuah Kapal", 1, "new through import_export", 13, 1),
	(30, "2025-02-14 15:46:04.864000", "75", "75 - Pangeran Diponegoro", 1, "new through import_export", 13, 1),
	(31, "2025-02-14 15:46:04.864000", "76", "76 - Perempuan Berkalung Sorban", 1, "new through import_export", 13, 1),
	(32, "2025-02-14 15:46:04.864000", "77", "77 - Perempuan di Titik Nol", 1, "new through import_export", 13, 1),
	(33, "2025-02-14 15:46:04.864000", "78", "78 - Perempuan-Perempuan", 1, "new through import_export", 13, 1),
	(34, "2025-02-14 15:46:04.864000", "79", "79 - Pertemuan Dua Hati", 1, "new through import_export", 13, 1),
	(35, "2025-02-14 15:46:04.864000", "80", "80 - Pudarnya Pesona Cleopatra", 1, "new through import_export", 13, 1),
	(36, "2025-02-14 15:46:04.864000", "81", "81 - Rahasia Meede", 1, "new through import_export", 13, 1),
	(37, "2025-02-14 15:46:04.864000", "82", "82 - Ronggeng Dukuh Paruk", 1, "new through import_export", 13, 1),
	(38, "2025-02-14 15:46:04.864000", "83", "83 - Saman", 1, "new through import_export", 13, 1),
	(39, "2025-02-14 15:46:04.864000", "84", "84 - Sang Pemimpi", 1, "new through import_export", 13, 1),
	(40, "2025-02-14 15:46:04.864000", "85", "85 - Sepotong Senja untuk Pacarku", 1, "new through import_export", 13, 1),
	(41, "2025-02-14 15:46:04.864000", "86", "86 - Seribu Kunang-Kunang di Manhattan", 1, "new through import_export", 13, 1),
	(42, "2025-02-14 15:46:04.864000", "87", "87 - Si Anak Kuat", 1, "new through import_export", 13, 1),
	(43, "2025-02-14 15:46:04.864000", "88", "88 - Si Anak Pintar", 1, "new through import_export", 13, 1),
	(44, "2025-02-14 15:46:04.864000", "89", "89 - Si Anak Pemberani", 1, "new through import_export", 13, 1),
	(45, "2025-02-14 15:46:04.864000", "90", "90 - Si Anak Spesial", 1, "new through import_export", 13, 1),
	(46, "2025-02-14 15:46:16.298000", "10000001", "10000001 - John Doe", 1, "new through import_export", 14, 1),
	(47, "2025-02-14 15:46:16.298000", "10000002", "10000002 - Jane Smith", 1, "new through import_export", 14, 1),
	(48, "2025-02-14 15:46:16.298000", "10000003", "10000003 - Alice Johnson", 1, "new through import_export", 14, 1),
	(49, "2025-02-14 15:46:16.298000", "10000004", "10000004 - Bob Brown", 1, "new through import_export", 14, 1),
	(50, "2025-02-14 15:46:16.298000", "10000005", "10000005 - Charlie Davis", 1, "new through import_export", 14, 1),
	(51, "2025-02-14 15:46:16.298000", "10000006", "10000006 - Eve White", 1, "new through import_export", 14, 1),
	(52, "2025-02-14 15:46:16.298000", "10000007", "10000007 - Frank Wilson", 1, "new through import_export", 14, 1),
	(53, "2025-02-14 15:46:16.298000", "10000008", "10000008 - Grace Lee", 1, "new through import_export", 14, 1),
	(54, "2025-02-14 15:46:16.298000", "10000009", "10000009 - Henry Martinez", 1, "new through import_export", 14, 1),
	(55, "2025-02-14 15:46:16.298000", "10000010", "10000010 - Ivy Garcia", 1, "new through import_export", 14, 1),
	(56, "2025-02-14 15:46:16.298000", "10000011", "10000011 - Jack Taylor", 1, "new through import_export", 14, 1),
	(57, "2025-02-14 15:46:16.298000", "10000012", "10000012 - Karen Anderson", 1, "new through import_export", 14, 1),
	(58, "2025-02-14 15:46:16.298000", "10000013", "10000013 - Liam Clark", 1, "new through import_export", 14, 1),
	(59, "2025-02-14 15:46:16.298000", "10000014", "10000014 - Mia Rodriguez", 1, "new through import_export", 14, 1),
	(60, "2025-02-14 15:46:16.298000", "10000015", "10000015 - Noah Lewis", 1, "new through import_export", 14, 1),
	(61, "2025-02-14 15:46:16.298000", "10000016", "10000016 - Olivia Walker", 1, "new through import_export", 14, 1),
	(62, "2025-02-14 15:46:16.298000", "10000017", "10000017 - Paul Hall", 1, "new through import_export", 14, 1),
	(63, "2025-02-14 15:46:16.298000", "10000018", "10000018 - Quinn Allen", 1, "new through import_export", 14, 1),
	(64, "2025-02-14 15:46:16.298000", "10000019", "10000019 - Ryan Young", 1, "new through import_export", 14, 1),
	(65, "2025-02-14 15:46:16.298000", "10000020", "10000020 - Sophia Hernandez", 1, "new through import_export", 14, 1),
	(66, "2025-02-14 15:46:16.298000", "10000021", "10000021 - Thomas King", 1, "new through import_export", 14, 1),
	(67, "2025-02-14 15:46:16.298000", "10000022", "10000022 - Uma Wright", 1, "new through import_export", 14, 1),
	(68, "2025-02-14 15:46:16.298000", "10000023", "10000023 - Victoria Lopez", 1, "new through import_export", 14, 1),
	(69, "2025-02-14 15:46:16.298000", "10000024", "10000024 - William Scott", 1, "new through import_export", 14, 1),
	(70, "2025-02-14 15:46:16.298000", "10000025", "10000025 - Xander Green", 1, "new through import_export", 14, 1),
	(71, "2025-02-14 15:46:16.298000", "10000026", "10000026 - Yara Adams", 1, "new through import_export", 14, 1),
	(72, "2025-02-14 15:46:16.298000", "10000027", "10000027 - Zachary Baker", 1, "new through import_export", 14, 1),
	(73, "2025-02-14 15:46:16.298000", "10000028", "10000028 - Abigail Nelson", 1, "new through import_export", 14, 1),
	(74, "2025-02-14 15:46:16.298000", "10000029", "10000029 - Benjamin Carter", 1, "new through import_export", 14, 1),
	(75, "2025-02-14 15:46:16.298000", "10000030", "10000030 - Chloe Mitchell", 1, "new through import_export", 14, 1),
	(76, "2025-02-14 15:46:16.298000", "10000031", "10000031 - Daniel Perez", 1, "new through import_export", 14, 1),
	(77, "2025-02-14 15:46:16.298000", "10000032", "10000032 - Emily Roberts", 1, "new through import_export", 14, 1),
	(78, "2025-02-14 15:46:16.298000", "10000033", "10000033 - Fiona Turner", 1, "new through import_export", 14, 1),
	(79, "2025-02-14 15:46:16.298000", "10000034", "10000034 - George Phillips", 1, "new through import_export", 14, 1),
	(80, "2025-02-14 15:46:16.298000", "10000035", "10000035 - Hannah Campbell", 1, "new through import_export", 14, 1),
	(81, "2025-02-14 15:46:16.298000", "10000036", "10000036 - Isaac Parker", 1, "new through import_export", 14, 1),
	(82, "2025-02-14 15:46:16.298000", "10000037", "10000037 - Julia Evans", 1, "new through import_export", 14, 1),
	(83, "2025-02-14 15:46:16.298000", "10000038", "10000038 - Kevin Edwards", 1, "new through import_export", 14, 1),
	(84, "2025-02-14 15:46:16.298000", "10000039", "10000039 - Lily Collins", 1, "new through import_export", 14, 1),
	(85, "2025-02-14 15:46:16.298000", "10000040", "10000040 - Mason Stewart", 1, "new through import_export", 14, 1),
	(86, "2025-02-14 15:46:16.298000", "10000041", "10000041 - Nora Sanchez", 1, "new through import_export", 14, 1),
	(87, "2025-02-14 15:46:16.298000", "10000042", "10000042 - Oscar Morris", 1, "new through import_export", 14, 1),
	(88, "2025-02-14 15:46:16.298000", "10000043", "10000043 - Penelope Rogers", 1, "new through import_export", 14, 1),
	(89, "2025-02-14 15:46:16.298000", "10000044", "10000044 - Quentin Reed", 1, "new through import_export", 14, 1),
	(90, "2025-02-14 15:46:16.298000", "10000045", "10000045 - Ruby Cook", 1, "new through import_export", 14, 1),
	(91, "2025-02-14 15:46:16.298000", "10000046", "10000046 - Samuel Morgan", 1, "new through import_export", 14, 1),
	(92, "2025-02-14 15:46:16.298000", "10000047", "10000047 - Taylor Bell", 1, "new through import_export", 14, 1),
	(93, "2025-02-14 15:46:16.298000", "10000048", "10000048 - Victoria Murphy", 1, "new through import_export", 14, 1),
	(94, "2025-02-14 15:46:16.298000", "10000049", "10000049 - William Bailey", 1, "new through import_export", 14, 1),
	(95, "2025-02-14 15:46:16.298000", "10000050", "10000050 - Zoe Rivera", 1, "new through import_export", 14, 1),
	(96, "2025-02-14 15:46:16.298000", "10000051", "10000051 - Aaron Cooper", 1, "new through import_export", 14, 1),
	(97, "2025-02-14 15:46:16.298000", "10000052", "10000052 - Bella Richardson", 1, "new through import_export", 14, 1),
	(98, "2025-02-14 15:46:16.298000", "10000053", "10000053 - Caleb Cox", 1, "new through import_export", 14, 1),
	(99, "2025-02-14 15:46:16.298000", "10000054", "10000054 - Daisy Howard", 1, "new through import_export", 14, 1),
	(100, "2025-02-14 15:46:16.298000", "10000055", "10000055 - Eli Ward", 1, "new through import_export", 14, 1),
	(101, "2025-02-14 15:46:16.298000", "10000056", "10000056 - Felicity Torres", 1, "new through import_export", 14, 1),
	(102, "2025-02-14 15:46:16.298000", "10000057", "10000057 - Gabriel Peterson", 1, "new through import_export", 14, 1),
	(103, "2025-02-14 15:46:16.298000", "10000058", "10000058 - Hazel Gray", 1, "new through import_export", 14, 1),
	(104, "2025-02-14 15:46:16.298000", "10000059", "10000059 - Isaac Ramirez", 1, "new through import_export", 14, 1),
	(105, "2025-02-14 15:46:16.298000", "10000060", "10000060 - Jasmine James", 1, "new through import_export", 14, 1),
	(106, "2025-02-14 15:46:16.298000", "10000061", "10000061 - Kai Watson", 1, "new through import_export", 14, 1),
	(107, "2025-02-14 15:46:16.298000", "10000062", "10000062 - Luna Brooks", 1, "new through import_export", 14, 1),
	(108, "2025-02-14 15:46:16.298000", "10000063", "10000063 - Miles Sanders", 1, "new through import_export", 14, 1),
	(109, "2025-02-14 15:46:16.298000", "10000064", "10000064 - Natalie Price", 1, "new through import_export", 14, 1),
	(110, "2025-02-14 15:46:16.298000", "10000065", "10000065 - Owen Bennett", 1, "new through import_export", 14, 1),
	(111, "2025-02-14 15:46:16.298000", "10000066", "10000066 - Piper Wood", 1, "new through import_export", 14, 1),
	(112, "2025-02-14 15:46:16.298000", "10000067", "10000067 - Quincy Barnes", 1, "new through import_export", 14, 1),
	(113, "2025-02-14 15:46:16.298000", "10000068", "10000068 - Riley Ross", 1, "new through import_export", 14, 1),
	(114, "2025-02-14 15:46:16.298000", "10000069", "10000069 - Savannah Henderson", 1, "new through import_export", 14, 1),
	(115, "2025-02-14 15:46:16.298000", "10000070", "10000070 - Theo Coleman", 1, "new through import_export", 14, 1),
	(116, "2025-02-14 15:46:16.298000", "10000071", "10000071 - Ursula Jenkins", 1, "new through import_export", 14, 1),
	(117, "2025-02-14 15:46:16.298000", "10000072", "10000072 - Violet Perry", 1, "new through import_export", 14, 1),
	(118, "2025-02-14 15:46:16.299000", "10000073", "10000073 - Wyatt Powell", 1, "new through import_export", 14, 1),
	(119, "2025-02-14 15:46:16.299000", "10000074", "10000074 - Ximena Long", 1, "new through import_export", 14, 1),
	(120, "2025-02-14 15:46:16.299000", "10000075", "10000075 - Yosef Flores", 1, "new through import_export", 14, 1),
	(121, "2025-02-14 15:46:16.299000", "10000076", "10000076 - Zara Washington", 1, "new through import_export", 14, 1),
	(122, "2025-02-14 15:46:16.299000", "10000077", "10000077 - Aaron Butler", 1, "new through import_export", 14, 1),
	(123, "2025-02-14 15:46:16.299000", "10000078", "10000078 - Brianna Simmons", 1, "new through import_export", 14, 1),
	(124, "2025-02-14 15:46:16.299000", "10000079", "10000079 - Cameron Foster", 1, "new through import_export", 14, 1),
	(125, "2025-02-14 15:46:16.299000", "10000080", "10000080 - Dakota Gonzales", 1, "new through import_export", 14, 1),
	(126, "2025-02-14 15:46:16.299000", "10000081", "10000081 - Ellie Bryant", 1, "new through import_export", 14, 1),
	(127, "2025-02-14 15:46:16.299000", "10000082", "10000082 - Finn Alexander", 1, "new through import_export", 14, 1),
	(128, "2025-02-14 15:46:16.299000", "10000083", "10000083 - Genevieve Russell", 1, "new through import_export", 14, 1),
	(129, "2025-02-14 15:46:16.299000", "10000084", "10000084 - Hudson Griffin", 1, "new through import_export", 14, 1),
	(130, "2025-02-14 15:46:16.299000", "10000085", "10000085 - Isabelle Diaz", 1, "new through import_export", 14, 1),
	(131, "2025-02-14 15:46:16.299000", "10000086", "10000086 - Jacob Hayes", 1, "new through import_export", 14, 1),
	(132, "2025-02-14 15:46:16.299000", "10000087", "10000087 - Kylie Myers", 1, "new through import_export", 14, 1),
	(133, "2025-02-14 15:46:16.299000", "10000088", "10000088 - Levi Ford", 1, "new through import_export", 14, 1),
	(134, "2025-02-14 15:46:16.299000", "10000089", "10000089 - Maya Hamilton", 1, "new through import_export", 14, 1),
	(135, "2025-02-14 15:46:16.299000", "10000090", "10000090 - Nathaniel Graham", 1, "new through import_export", 14, 1),
	(136, "2025-02-14 15:46:16.299000", "10000091", "10000091 - Olivia Sullivan", 1, "new through import_export", 14, 1),
	(137, "2025-02-14 15:46:16.299000", "10000092", "10000092 - Peyton Wallace", 1, "new through import_export", 14, 1),
	(138, "2025-02-14 15:46:16.299000", "10000093", "10000093 - Quinn Woods", 1, "new through import_export", 14, 1),
	(139, "2025-02-14 15:46:16.299000", "10000094", "10000094 - Riley Cole", 1, "new through import_export", 14, 1),
	(140, "2025-02-14 15:46:16.299000", "10000095", "10000095 - Sophie West", 1, "new through import_export", 14, 1),
	(141, "2025-02-14 15:46:16.299000", "10000096", "10000096 - Tristan Ortiz", 1, "new through import_export", 14, 1),
	(142, "2025-02-14 15:46:16.299000", "10000097", "10000097 - Una Fisher", 1, "new through import_export", 14, 1),
	(143, "2025-02-14 15:46:16.299000", "10000098", "10000098 - Vivian Hunt", 1, "new through import_export", 14, 1),
	(144, "2025-02-14 15:46:16.299000", "10000099", "10000099 - William Gordon", 1, "new through import_export", 14, 1),
	(145, "2025-02-14 15:46:16.299000", "10000100", "10000100 - Zachary Shaw", 1, "new through import_export", 14, 1),
	(146, "2025-02-14 15:46:27.382000", "102", "10000001 - John Doe - Laut Bercerita - Terlambat - 297 hari", 1, "new through import_export", 15, 1),
	(147, "2025-02-14 15:46:27.382000", "103", "10000001 - John Doe - Saman - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(148, "2025-02-14 15:46:27.382000", "104", "10000002 - Jane Smith - Pulang - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(149, "2025-02-14 15:46:27.382000", "105", "10000003 - Alice Johnson - Laskar Pelangi - Terlambat - 126 hari", 1, "new through import_export", 15, 1),
	(150, "2025-02-14 15:46:27.382000", "106", "10000004 - Bob Brown - Pada Sebuah Kapal - Terlambat - 353 hari", 1, "new through import_export", 15, 1),
	(151, "2025-02-14 15:46:27.382000", "107", "10000005 - Charlie Davis - Bidadari-Bidadari Surga - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(152, "2025-02-14 15:46:27.382000", "108", "10000006 - Eve White - Saman - Terlambat - 386 hari", 1, "new through import_export", 15, 1),
	(153, "2025-02-14 15:46:27.382000", "109", "10000007 - Frank Wilson - Arus Balik - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(154, "2025-02-14 15:46:27.382000", "110", "10000008 - Grace Lee - Pulang - Terlambat - 286 hari", 1, "new through import_export", 15, 1),
	(155, "2025-02-14 15:46:27.382000", "111", "10000009 - Henry Martinez - Kumpulan Budak Setan - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(156, "2025-02-14 15:46:27.382000", "112", "10000100 - Zachary Shaw - Si Anak Spesial - Terlambat - 355 hari", 1, "new through import_export", 15, 1),
	(157, "2025-02-14 15:46:27.382000", "113", "10000011 - Jack Taylor - Laut Bercerita - Terlambat - 343 hari", 1, "new through import_export", 15, 1),
	(158, "2025-02-14 15:46:27.382000", "114", "10000012 - Karen Anderson - Bumi Manusia - Terlambat - 187 hari", 1, "new through import_export", 15, 1),
	(159, "2025-02-14 15:46:27.382000", "115", "10000013 - Liam Clark - Jingga dan Senja - Terlambat - 116 hari", 1, "new through import_export", 15, 1),
	(160, "2025-02-14 15:46:27.382000", "116", "10000014 - Mia Rodriguez - Keluarga Gerilya - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(161, "2025-02-14 15:46:27.383000", "117", "10000015 - Noah Lewis - Tentang Kamu - Terlambat - 53 hari", 1, "new through import_export", 15, 1),
	(162, "2025-02-14 15:46:27.383000", "118", "10000016 - Olivia Walker - Supernova: Kesatria, Puteri, dan Bintang Jatuh - Terlambat - 189 hari", 1, "new through import_export", 15, 1),
	(163, "2025-02-14 15:46:27.383000", "119", "10000017 - Paul Hall - Negeri 5 Menara - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(164, "2025-02-14 15:46:27.383000", "120", "10000018 - Quinn Allen - Arus Balik - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(165, "2025-02-14 15:46:27.383000", "121", "10000019 - Ryan Young - Laut Bercerita - Terlambat - 385 hari", 1, "new through import_export", 15, 1),
	(166, "2025-02-14 15:46:27.383000", "122", "10000020 - Sophia Hernandez - Si Anak Pintar - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(167, "2025-02-14 15:46:27.383000", "123", "10000021 - Thomas King - Rindu - Terlambat - 48 hari", 1, "new through import_export", 15, 1),
	(168, "2025-02-14 15:46:27.383000", "124", "10000022 - Uma Wright - Kisah 1001 Malam - Terlambat - 394 hari", 1, "new through import_export", 15, 1),
	(169, "2025-02-14 15:46:27.383000", "125", "10000023 - Victoria Lopez - Bidadari-Bidadari Surga - Terlambat - 255 hari", 1, "new through import_export", 15, 1),
	(170, "2025-02-14 15:46:27.383000", "126", "10000024 - William Scott - Senja di Langit Cikapundung - Terlambat - 357 hari", 1, "new through import_export", 15, 1),
	(171, "2025-02-14 15:46:27.383000", "127", "10000025 - Xander Green - Jalan Tak Ada Ujung - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(172, "2025-02-14 15:46:27.383000", "128", "10000026 - Yara Adams - Pudarnya Pesona Cleopatra - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(173, "2025-02-14 15:46:27.383000", "129", "10000027 - Zachary Baker - Api Awan Asap - Terlambat - 384 hari", 1, "new through import_export", 15, 1),
	(174, "2025-02-14 15:46:27.383000", "130", "10000028 - Abigail Nelson - Si Anak Kuat - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(175, "2025-02-14 15:46:27.383000", "131", "10000029 - Benjamin Carter - Rahasia Meede - Terlambat - 25 hari", 1, "new through import_export", 15, 1),
	(176, "2025-02-14 15:46:27.383000", "132", "10000030 - Chloe Mitchell - Laut Bercerita - Terlambat - 139 hari", 1, "new through import_export", 15, 1),
	(177, "2025-02-14 15:46:27.383000", "133", "10000031 - Daniel Perez - Pudarnya Pesona Cleopatra - Terlambat - 46 hari", 1, "new through import_export", 15, 1),
	(178, "2025-02-14 15:46:27.383000", "134", "10000032 - Emily Roberts - Arus Balik - Terlambat - 136 hari", 1, "new through import_export", 15, 1),
	(179, "2025-02-14 15:46:27.383000", "135", "10000033 - Fiona Turner - Jalan Tak Ada Ujung - Terlambat - 285 hari", 1, "new through import_export", 15, 1),
	(180, "2025-02-14 15:46:27.383000", "136", "10000034 - George Phillips - Si Anak Kuat - Terlambat - 222 hari", 1, "new through import_export", 15, 1),
	(181, "2025-02-14 15:46:27.383000", "137", "10000035 - Hannah Campbell - Sepotong Senja untuk Pacarku - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(182, "2025-02-14 15:46:27.383000", "138", "10000036 - Isaac Parker - Ronggeng Dukuh Paruk - Terlambat - 337 hari", 1, "new through import_export", 15, 1),
	(183, "2025-02-14 15:46:27.383000", "139", "10000037 - Julia Evans - Perahu Kertas - Terlambat - 197 hari", 1, "new through import_export", 15, 1),
	(184, "2025-02-14 15:46:27.383000", "140", "10000038 - Kevin Edwards - Lelaki Harimau - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(185, "2025-02-14 15:46:27.383000", "141", "10000039 - Lily Collins - Perempuan Berkalung Sorban - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(186, "2025-02-14 15:46:27.383000", "142", "10000040 - Mason Stewart - Pulang - Terlambat - 58 hari", 1, "new through import_export", 15, 1),
	(187, "2025-02-14 15:46:27.383000", "143", "10000041 - Nora Sanchez - Bumi Manusia - Terlambat - 335 hari", 1, "new through import_export", 15, 1),
	(188, "2025-02-14 15:46:27.383000", "144", "10000042 - Oscar Morris - Kumpulan Budak Setan - Terlambat - 143 hari", 1, "new through import_export", 15, 1),
	(189, "2025-02-14 15:46:27.383000", "145", "10000043 - Penelope Rogers - Pangeran Diponegoro - Terlambat - 370 hari", 1, "new through import_export", 15, 1),
	(190, "2025-02-14 15:46:27.383000", "146", "10000044 - Quentin Reed - Senja di Langit Cikapundung - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(191, "2025-02-14 15:46:27.383000", "147", "10000045 - Ruby Cook - Bidadari-Bidadari Surga - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(192, "2025-02-14 15:46:27.383000", "148", "10000046 - Samuel Morgan - Rahasia Meede - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(193, "2025-02-14 15:46:27.383000", "149", "10000047 - Taylor Bell - Arus Balik - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(194, "2025-02-14 15:46:27.383000", "150", "10000048 - Victoria Murphy - Si Anak Pintar - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(195, "2025-02-14 15:46:27.383000", "151", "10000049 - William Bailey - Laskar Pelangi - Terlambat - 289 hari", 1, "new through import_export", 15, 1),
	(196, "2025-02-14 15:46:27.383000", "152", "10000050 - Zoe Rivera - Pada Sebuah Kapal - Terlambat - 146 hari", 1, "new through import_export", 15, 1),
	(197, "2025-02-14 15:46:27.383000", "153", "10000051 - Aaron Cooper - Si Anak Spesial - Terlambat - 54 hari", 1, "new through import_export", 15, 1),
	(198, "2025-02-14 15:46:27.383000", "154", "10000052 - Bella Richardson - Ronggeng Dukuh Paruk - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(199, "2025-02-14 15:46:27.383000", "155", "10000053 - Caleb Cox - Sang Pemimpi - Terlambat - 349 hari", 1, "new through import_export", 15, 1),
	(200, "2025-02-14 15:46:27.383000", "156", "10000054 - Daisy Howard - Pangeran Diponegoro - Terlambat - 38 hari", 1, "new through import_export", 15, 1),
	(201, "2025-02-14 15:46:27.383000", "157", "10000055 - Eli Ward - Anak Bajang Menggiring Angin - Terlambat - 161 hari", 1, "new through import_export", 15, 1),
	(202, "2025-02-14 15:46:27.384000", "158", "10000056 - Felicity Torres - Mendadak Dangdut - Terlambat - 15 hari", 1, "new through import_export", 15, 1),
	(203, "2025-02-14 15:46:27.384000", "159", "10000057 - Gabriel Peterson - Ronggeng Dukuh Paruk - Terlambat - 94 hari", 1, "new through import_export", 15, 1),
	(204, "2025-02-14 15:46:27.384000", "160", "10000058 - Hazel Gray - Pada Sebuah Kapal - Terlambat - 246 hari", 1, "new through import_export", 15, 1),
	(205, "2025-02-14 15:46:27.384000", "161", "10000059 - Isaac Ramirez - Perahu Kertas - Terlambat - 196 hari", 1, "new through import_export", 15, 1),
	(206, "2025-02-14 15:46:27.384000", "162", "10000060 - Jasmine James - Rindu - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(207, "2025-02-14 15:46:27.384000", "163", "10000061 - Kai Watson - Senja di Langit Cikapundung - Terlambat - 375 hari", 1, "new through import_export", 15, 1),
	(208, "2025-02-14 15:46:27.384000", "164", "10000062 - Luna Brooks - Anak Bajang Menggiring Angin - Terlambat - 249 hari", 1, "new through import_export", 15, 1),
	(209, "2025-02-14 15:46:27.384000", "165", "10000063 - Miles Sanders - Anak Bajang Menggiring Angin - Terlambat - 182 hari", 1, "new through import_export", 15, 1),
	(210, "2025-02-14 15:46:27.384000", "166", "10000064 - Natalie Price - Perempuan-Perempuan - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(211, "2025-02-14 15:46:27.384000", "167", "10000065 - Owen Bennett - Si Anak Spesial - Terlambat - 364 hari", 1, "new through import_export", 15, 1),
	(212, "2025-02-14 15:46:27.384000", "168", "10000066 - Piper Wood - Pangeran Diponegoro - Terlambat - 119 hari", 1, "new through import_export", 15, 1),
	(213, "2025-02-14 15:46:27.384000", "169", "10000067 - Quincy Barnes - Perahu Kertas - Terlambat - 212 hari", 1, "new through import_export", 15, 1),
	(214, "2025-02-14 15:46:27.384000", "170", "10000068 - Riley Ross - Perahu Kertas - Terlambat - 123 hari", 1, "new through import_export", 15, 1),
	(215, "2025-02-14 15:46:27.384000", "171", "10000069 - Savannah Henderson - Api Awan Asap - Terlambat - 160 hari", 1, "new through import_export", 15, 1),
	(216, "2025-02-14 15:46:27.384000", "172", "10000070 - Theo Coleman - Tentang Kamu - Terlambat - 192 hari", 1, "new through import_export", 15, 1),
	(217, "2025-02-14 15:46:27.384000", "173", "10000071 - Ursula Jenkins - Jingga dan Senja - Terlambat - 140 hari", 1, "new through import_export", 15, 1),
	(218, "2025-02-14 15:46:27.384000", "174", "10000072 - Violet Perry - Si Anak Pintar - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(219, "2025-02-14 15:46:27.384000", "175", "10000073 - Wyatt Powell - Bidadari-Bidadari Surga - Terlambat - 296 hari", 1, "new through import_export", 15, 1),
	(220, "2025-02-14 15:46:27.384000", "176", "10000074 - Ximena Long - Si Anak Pintar - Terlambat - 140 hari", 1, "new through import_export", 15, 1),
	(221, "2025-02-14 15:46:27.384000", "177", "10000075 - Yosef Flores - Ronggeng Dukuh Paruk - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(222, "2025-02-14 15:46:27.384000", "178", "10000076 - Zara Washington - Pada Sebuah Kapal - Terlambat - 210 hari", 1, "new through import_export", 15, 1),
	(223, "2025-02-14 15:46:27.384000", "179", "10000077 - Aaron Butler - Perahu Kertas - Terlambat - 288 hari", 1, "new through import_export", 15, 1),
	(224, "2025-02-14 15:46:27.384000", "180", "10000078 - Brianna Simmons - Seribu Kunang-Kunang di Manhattan - Terlambat - 282 hari", 1, "new through import_export", 15, 1),
	(225, "2025-02-14 15:46:27.384000", "181", "10000079 - Cameron Foster - Sang Pemimpi - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(226, "2025-02-14 15:46:27.384000", "182", "10000080 - Dakota Gonzales - Negeri 5 Menara - Terlambat - 14 hari", 1, "new through import_export", 15, 1),
	(227, "2025-02-14 15:46:27.384000", "183", "10000081 - Ellie Bryant - Senja di Langit Cikapundung - Terlambat - 286 hari", 1, "new through import_export", 15, 1),
	(228, "2025-02-14 15:46:27.384000", "184", "10000082 - Finn Alexander - Ronggeng Dukuh Paruk - Terlambat - 268 hari", 1, "new through import_export", 15, 1),
	(229, "2025-02-14 15:46:27.384000", "185", "10000083 - Genevieve Russell - Sepotong Hati yang Baru - Terlambat - 22 hari", 1, "new through import_export", 15, 1),
	(230, "2025-02-14 15:46:27.384000", "186", "10000084 - Hudson Griffin - Si Anak Spesial - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(231, "2025-02-14 15:46:27.384000", "187", "10000085 - Isabelle Diaz - Pangeran Diponegoro - Terlambat - 147 hari", 1, "new through import_export", 15, 1),
	(232, "2025-02-14 15:46:27.384000", "188", "10000086 - Jacob Hayes - Jalan Tak Ada Ujung - Terlambat - 8 hari", 1, "new through import_export", 15, 1),
	(233, "2025-02-14 15:46:27.384000", "189", "10000087 - Kylie Myers - Si Anak Kuat - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(234, "2025-02-14 15:46:27.384000", "190", "10000088 - Levi Ford - Pudarnya Pesona Cleopatra - Terlambat - 5 hari", 1, "new through import_export", 15, 1),
	(235, "2025-02-14 15:46:27.384000", "191", "10000089 - Maya Hamilton - Laut Bercerita - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(236, "2025-02-14 15:46:27.384000", "192", "10000090 - Nathaniel Graham - Ronggeng Dukuh Paruk - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(237, "2025-02-14 15:46:27.384000", "193", "10000091 - Olivia Sullivan - Pada Sebuah Kapal - Terlambat - 284 hari", 1, "new through import_export", 15, 1),
	(238, "2025-02-14 15:46:27.384000", "194", "10000092 - Peyton Wallace - Negeri 5 Menara - Terlambat - 111 hari", 1, "new through import_export", 15, 1),
	(239, "2025-02-14 15:46:27.384000", "195", "10000093 - Quinn Woods - Sepotong Senja untuk Pacarku - Terlambat - 354 hari", 1, "new through import_export", 15, 1),
	(240, "2025-02-14 15:46:27.384000", "196", "10000094 - Riley Cole - Ronggeng Dukuh Paruk - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(241, "2025-02-14 15:46:27.384000", "197", "10000095 - Sophie West - Laskar Pelangi - Dikembalikan - 0 hari", 1, "new through import_export", 15, 1),
	(242, "2025-02-14 15:46:27.384000", "198", "10000096 - Tristan Ortiz - Perahu Kertas - Terlambat - 204 hari", 1, "new through import_export", 15, 1),
	(243, "2025-02-14 15:46:27.384000", "199", "10000097 - Una Fisher - Perempuan Berkalung Sorban - Terlambat - 392 hari", 1, "new through import_export", 15, 1),
	(244, "2025-02-14 15:46:27.384000", "200", "10000098 - Vivian Hunt - Si Anak Pemberani - Terlambat - 74 hari", 1, "new through import_export", 15, 1),
	(245, "2025-02-14 15:46:27.384000", "201", "10000099 - William Gordon - Perempuan di Titik Nol - Terlambat - 24 hari", 1, "new through import_export", 15, 1),
	(246, "2025-02-14 15:46:27.384000", "202", "10000100 - Zachary Shaw - Si Anak Pemberani - Terlambat - 262 hari", 1, "new through import_export", 15, 1),
	(247, "2025-02-14 15:46:42.062000", "203", "10000002 - Jane Smith - Kisah 1001 Malam - Dipinjam - 0 hari", 1, "[{\"added\": {}}]", 15, 1);

/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table django_celery_beat_clockedschedule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_celery_beat_clockedschedule`;

CREATE TABLE `django_celery_beat_clockedschedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clocked_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;





# Dump of table django_celery_beat_crontabschedule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_celery_beat_crontabschedule`;

CREATE TABLE `django_celery_beat_crontabschedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `minute` varchar(240) NOT NULL,
  `hour` varchar(96) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(124) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  `timezone` varchar(63) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;





# Dump of table django_celery_beat_intervalschedule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_celery_beat_intervalschedule`;

CREATE TABLE `django_celery_beat_intervalschedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `every` int NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;





# Dump of table django_celery_beat_periodictask
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_celery_beat_periodictask`;

CREATE TABLE `django_celery_beat_periodictask` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int unsigned NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int DEFAULT NULL,
  `interval_id` int DEFAULT NULL,
  `solar_id` int DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `priority` int unsigned DEFAULT NULL,
  `headers` longtext NOT NULL DEFAULT (_utf8mb3'{}'),
  `clocked_id` int DEFAULT NULL,
  `expire_seconds` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` (`crontab_id`),
  KEY `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` (`interval_id`),
  KEY `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` (`solar_id`),
  KEY `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` (`clocked_id`),
  CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`),
  CONSTRAINT `django_celery_beat_periodictask_chk_1` CHECK ((`total_run_count` >= 0)),
  CONSTRAINT `django_celery_beat_periodictask_chk_2` CHECK ((`priority` >= 0)),
  CONSTRAINT `django_celery_beat_periodictask_chk_3` CHECK ((`expire_seconds` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;





# Dump of table django_celery_beat_periodictasks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_celery_beat_periodictasks`;

CREATE TABLE `django_celery_beat_periodictasks` (
  `ident` smallint NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;





# Dump of table django_celery_beat_solarschedule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_celery_beat_solarschedule`;

CREATE TABLE `django_celery_beat_solarschedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event` varchar(24) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq` (`event`,`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;





# Dump of table django_content_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, "admin", "logentry"),
	(3, "auth", "group"),
	(2, "auth", "permission"),
	(4, "auth", "user"),
	(5, "contenttypes", "contenttype"),
	(12, "django_celery_beat", "clockedschedule"),
	(7, "django_celery_beat", "crontabschedule"),
	(8, "django_celery_beat", "intervalschedule"),
	(9, "django_celery_beat", "periodictask"),
	(10, "django_celery_beat", "periodictasks"),
	(11, "django_celery_beat", "solarschedule"),
	(13, "main", "buku"),
	(14, "main", "mahasiswa"),
	(15, "main", "peminjaman"),
	(6, "sessions", "session");

/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table django_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, "contenttypes", "0001_initial", "2025-02-14 15:45:36.571000"),
	(2, "auth", "0001_initial", "2025-02-14 15:45:37.777000"),
	(3, "admin", "0001_initial", "2025-02-14 15:45:38.038000"),
	(4, "admin", "0002_logentry_remove_auto_add", "2025-02-14 15:45:38.047000"),
	(5, "admin", "0003_logentry_add_action_flag_choices", "2025-02-14 15:45:38.058000"),
	(6, "contenttypes", "0002_remove_content_type_name", "2025-02-14 15:45:38.220000"),
	(7, "auth", "0002_alter_permission_name_max_length", "2025-02-14 15:45:38.325000"),
	(8, "auth", "0003_alter_user_email_max_length", "2025-02-14 15:45:38.350000"),
	(9, "auth", "0004_alter_user_username_opts", "2025-02-14 15:45:38.359000"),
	(10, "auth", "0005_alter_user_last_login_null", "2025-02-14 15:45:38.442000"),
	(11, "auth", "0006_require_contenttypes_0002", "2025-02-14 15:45:38.447000"),
	(12, "auth", "0007_alter_validators_add_error_messages", "2025-02-14 15:45:38.457000"),
	(13, "auth", "0008_alter_user_username_max_length", "2025-02-14 15:45:38.561000"),
	(14, "auth", "0009_alter_user_last_name_max_length", "2025-02-14 15:45:38.668000"),
	(15, "auth", "0010_alter_group_name_max_length", "2025-02-14 15:45:38.690000"),
	(16, "auth", "0011_update_proxy_permissions", "2025-02-14 15:45:38.701000"),
	(17, "auth", "0012_alter_user_first_name_max_length", "2025-02-14 15:45:38.804000"),
	(18, "django_celery_beat", "0001_initial", "2025-02-14 15:45:39.175000"),
	(19, "django_celery_beat", "0002_auto_20161118_0346", "2025-02-14 15:45:39.340000"),
	(20, "django_celery_beat", "0003_auto_20161209_0049", "2025-02-14 15:45:39.375000"),
	(21, "django_celery_beat", "0004_auto_20170221_0000", "2025-02-14 15:45:39.382000"),
	(22, "django_celery_beat", "0005_add_solarschedule_events_choices", "2025-02-14 15:45:39.389000"),
	(23, "django_celery_beat", "0006_auto_20180322_0932", "2025-02-14 15:45:39.541000"),
	(24, "django_celery_beat", "0007_auto_20180521_0826", "2025-02-14 15:45:39.758000"),
	(25, "django_celery_beat", "0008_auto_20180914_1922", "2025-02-14 15:45:39.795000"),
	(26, "django_celery_beat", "0006_auto_20180210_1226", "2025-02-14 15:45:39.819000"),
	(27, "django_celery_beat", "0006_periodictask_priority", "2025-02-14 15:45:39.955000"),
	(28, "django_celery_beat", "0009_periodictask_headers", "2025-02-14 15:45:40.101000"),
	(29, "django_celery_beat", "0010_auto_20190429_0326", "2025-02-14 15:45:40.298000"),
	(30, "django_celery_beat", "0011_auto_20190508_0153", "2025-02-14 15:45:40.488000"),
	(31, "django_celery_beat", "0012_periodictask_expire_seconds", "2025-02-14 15:45:40.649000"),
	(32, "django_celery_beat", "0013_auto_20200609_0727", "2025-02-14 15:45:40.665000"),
	(33, "django_celery_beat", "0014_remove_clockedschedule_enabled", "2025-02-14 15:45:40.737000"),
	(34, "django_celery_beat", "0015_edit_solarschedule_events_choices", "2025-02-14 15:45:40.748000"),
	(35, "django_celery_beat", "0016_alter_crontabschedule_timezone", "2025-02-14 15:45:40.762000"),
	(36, "django_celery_beat", "0017_alter_crontabschedule_month_of_year", "2025-02-14 15:45:40.800000"),
	(37, "django_celery_beat", "0018_improve_crontab_helptext", "2025-02-14 15:45:40.812000"),
	(38, "django_celery_beat", "0019_alter_periodictasks_options", "2025-02-14 15:45:40.818000"),
	(39, "main", "0001_initial", "2025-02-14 15:45:41.254000"),
	(40, "sessions", "0001_initial", "2025-02-14 15:45:41.316000");

/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table django_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	("ezbv74mb6lmhoyg1481qxdl3xfzcplx3", ".eJxVjDsOwjAQBe_iGlnxL14o6TmDtfaucQDZUpxUiLuTSCmgfTPz3iLgupSwdp7DROIilDj9bhHTk-sO6IH13mRqdZmnKHdFHrTLWyN-XQ_376BgL1udvSZG1pF1ssY6GA2eIQ-GFAAmcB4iqgRmcHpkT9Yns_mRgE12WYvPF_H8OG4:1tixt4:ttgAQ95l57ng7Ce1EqveQ0tXGyT4QO_3ZCpPQU0mSs4", "2025-02-28 15:45:54.705000");

/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table main_buku
# ------------------------------------------------------------

DROP TABLE IF EXISTS `main_buku`;

CREATE TABLE `main_buku` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun` int NOT NULL,
  `kategori` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `main_buku` WRITE;
/*!40000 ALTER TABLE `main_buku` DISABLE KEYS */;

INSERT INTO `main_buku` (`id`, `judul`, `penulis`, `penerbit`, `tahun`, `kategori`) VALUES
	(46, "Laut Bercerita", "Leila S. Chudori", "Kepustakaan Populer Gramedia", 2017, "Fiksi"),
	(47, "Pulang", "Tere Liye", "Gramedia Pustaka Utama", 2015, "Fiksi"),
	(48, "Bumi Manusia", "Pramoedya Ananta Toer", "Hasta Mitra", 1980, "Fiksi"),
	(49, "Laskar Pelangi", "Andrea Hirata", "Bentang Pustaka", 2005, "Fiksi"),
	(50, "Perahu Kertas", "Dee Lestari", "Bentang Pustaka", 2009, "Fiksi"),
	(51, "Ronggeng Dukuh Paruk", "Ahmad Tohari", "Gramedia Pustaka Utama", 1982, "Fiksi"),
	(52, "Negeri 5 Menara", "Ahmad Fuadi", "Gramedia Pustaka Utama", 2009, "Fiksi"),
	(53, "Supernova: Kesatria, Puteri, dan Bintang Jatuh", "Dee Lestari", "Truedee Books", 2001, "Fiksi"),
	(54, "Gadis Kretek", "Ratih Kumala", "Gramedia Pustaka Utama", 2012, "Fiksi"),
	(55, "Jingga dan Senja", "Esti Kinasih", "Grasindo", 2018, "Fiksi"),
	(56, "Senja di Langit Cikapundung", "Titien Wattimena", "Gramedia Pustaka Utama", 2015, "Fiksi"),
	(57, "Rindu", "Tere Liye", "Gramedia Pustaka Utama", 2014, "Fiksi"),
	(58, "Sepotong Hati yang Baru", "Tere Liye", "Gramedia Pustaka Utama", 2016, "Fiksi"),
	(59, "Tentang Kamu", "Tere Liye", "Gramedia Pustaka Utama", 2017, "Fiksi"),
	(60, "Bidadari-Bidadari Surga", "Tere Liye", "Gramedia Pustaka Utama", 2008, "Fiksi"),
	(61, "Anak Bajang Menggiring Angin", "Sindhunata", "Gramedia Pustaka Utama", 1983, "Fiksi"),
	(62, "Api Awan Asap", "Pramoedya Ananta Toer", "Lentera Dipantara", 2003, "Fiksi"),
	(63, "Arus Balik", "Pramoedya Ananta Toer", "Lentera Dipantara", 1995, "Fiksi "),
	(64, "Jalan Tak Ada Ujung", "Mochtar Lubis", "Yayasan Obor Indonesia", 1952, "Fiksi"),
	(65, "Keluarga Gerilya", "Pramoedya Ananta Toer", "Lentera Dipantara", 1950, "Fiksi"),
	(66, "Kisah 1001 Malam", "Anonim", "Elex Media Komputindo", 2005, "Fiksi"),
	(67, "Kisah-Kisah Tanah Jawa", "Damar Shashangka", "Divapress", 2010, "Fiksi"),
	(68, "Kumpulan Budak Setan", "Kuntowijoyo", "Mizan", 1985, "Fiksi"),
	(69, "Lelaki Harimau", "Eka Kurniawan", "Gramedia Pustaka Utama", 2004, "Fiksi"),
	(70, "Manusia Kamar", "Ahmad Tohari", "Gramedia Pustaka Utama", 2001, "Fiksi"),
	(71, "Max Havelaar", "Multatuli", "Penerbit Qanita", 1860, "Fiksi"),
	(72, "Mendadak Dangdut", "Beni Setia", "Gramedia Pustaka Utama", 2006, "Fiksi"),
	(73, "Namaku Hiroko", "NH. Dini", "Gramedia Pustaka Utama", 1977, "Fiksi"),
	(74, "Pada Sebuah Kapal", "NH. Dini", "Gramedia Pustaka Utama", 1973, "Fiksi"),
	(75, "Pangeran Diponegoro", "Pramoedya Ananta Toer", "Lentera Dipantara", 1995, "Fiksi"),
	(76, "Perempuan Berkalung Sorban", "Abidah El Khalieqy", "Yayasan Kesejahteraan Fatayat", 2001, "Fiksi"),
	(77, "Perempuan di Titik Nol", "Nawal El Saadawi", "Pustaka Jaya", 1975, "Fiksi"),
	(78, "Perempuan-Perempuan", "Ayu Utami", "Kepustakaan Populer Gramedia", 2000, "Fiksi"),
	(79, "Pertemuan Dua Hati", "NH. Dini", "Gramedia Pustaka Utama", 1986, "Fiksi"),
	(80, "Pudarnya Pesona Cleopatra", "Habiburrahman El Shirazy", "Republika", 2005, "Fiksi"),
	(81, "Rahasia Meede", "E.S. Ito", "Hikmah", 2007, "Fiksi"),
	(82, "Ronggeng Dukuh Paruk", "Ahmad Tohari", "Gramedia Pustaka Utama", 1982, "Fiksi"),
	(83, "Saman", "Ayu Utami", "Kepustakaan Populer Gramedia", 1998, "Fiksi"),
	(84, "Sang Pemimpi", "Andrea Hirata", "Bentang Pustaka", 2006, "Fiksi"),
	(85, "Sepotong Senja untuk Pacarku", "Seno Gumira Ajidarma", "Gramedia Pustaka Utama", 1997, "Fiksi"),
	(86, "Seribu Kunang-Kunang di Manhattan", "Umar Kayam", "Pustaka Jaya", 1972, "Fiksi"),
	(87, "Si Anak Kuat", "Tere Liye", "Gramedia Pustaka Utama", 2018, "Fiksi"),
	(88, "Si Anak Pintar", "Tere Liye", "Gramedia Pustaka Utama", 2019, "Fiksi"),
	(89, "Si Anak Pemberani", "Tere Liye", "Gramedia Pustaka Utama", 2020, "Fiksi"),
	(90, "Si Anak Spesial", "Tere Liye", "Gramedia Pustaka Utama", 2021, "Fiksi");

/*!40000 ALTER TABLE `main_buku` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table main_mahasiswa
# ------------------------------------------------------------

DROP TABLE IF EXISTS `main_mahasiswa`;

CREATE TABLE `main_mahasiswa` (
  `nim` varchar(8) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telpon` varchar(13) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `main_mahasiswa` WRITE;
/*!40000 ALTER TABLE `main_mahasiswa` DISABLE KEYS */;

INSERT INTO `main_mahasiswa` (`nim`, `nama`, `no_telpon`) VALUES
	("10000001", "John Doe", "081234567890"),
	("10000002", "Jane Smith", "082345678901"),
	("10000003", "Alice Johnson", "083456789012"),
	("10000004", "Bob Brown", "084567890123"),
	("10000005", "Charlie Davis", "085678901234"),
	("10000006", "Eve White", "086789012345"),
	("10000007", "Frank Wilson", "087890123456"),
	("10000008", "Grace Lee", "088901234567"),
	("10000009", "Henry Martinez", "089012345678"),
	("10000010", "Ivy Garcia", "080123456789"),
	("10000011", "Jack Taylor", "081234567891"),
	("10000012", "Karen Anderson", "082345678902"),
	("10000013", "Liam Clark", "083456789013"),
	("10000014", "Mia Rodriguez", "084567890124"),
	("10000015", "Noah Lewis", "085678901235"),
	("10000016", "Olivia Walker", "086789012346"),
	("10000017", "Paul Hall", "087890123457"),
	("10000018", "Quinn Allen", "088901234568"),
	("10000019", "Ryan Young", "089012345679"),
	("10000020", "Sophia Hernandez", "080123456780"),
	("10000021", "Thomas King", "081234567892"),
	("10000022", "Uma Wright", "082345678903"),
	("10000023", "Victoria Lopez", "083456789014"),
	("10000024", "William Scott", "084567890125"),
	("10000025", "Xander Green", "085678901236"),
	("10000026", "Yara Adams", "086789012347"),
	("10000027", "Zachary Baker", "087890123458"),
	("10000028", "Abigail Nelson", "088901234569"),
	("10000029", "Benjamin Carter", "089012345680"),
	("10000030", "Chloe Mitchell", "080123456781"),
	("10000031", "Daniel Perez", "081234567893"),
	("10000032", "Emily Roberts", "082345678904"),
	("10000033", "Fiona Turner", "083456789015"),
	("10000034", "George Phillips", "084567890126"),
	("10000035", "Hannah Campbell", "085678901237"),
	("10000036", "Isaac Parker", "086789012348"),
	("10000037", "Julia Evans", "087890123459"),
	("10000038", "Kevin Edwards", "088901234570"),
	("10000039", "Lily Collins", "089012345681"),
	("10000040", "Mason Stewart", "080123456782"),
	("10000041", "Nora Sanchez", "081234567894"),
	("10000042", "Oscar Morris", "082345678905"),
	("10000043", "Penelope Rogers", "083456789016"),
	("10000044", "Quentin Reed", "084567890127"),
	("10000045", "Ruby Cook", "085678901238"),
	("10000046", "Samuel Morgan", "086789012349"),
	("10000047", "Taylor Bell", "087890123460"),
	("10000048", "Victoria Murphy", "088901234571"),
	("10000049", "William Bailey", "089012345682"),
	("10000050", "Zoe Rivera", "080123456783"),
	("10000051", "Aaron Cooper", "081234567895"),
	("10000052", "Bella Richardson", "082345678906"),
	("10000053", "Caleb Cox", "083456789017"),
	("10000054", "Daisy Howard", "084567890128"),
	("10000055", "Eli Ward", "085678901239"),
	("10000056", "Felicity Torres", "086789012350"),
	("10000057", "Gabriel Peterson", "087890123461"),
	("10000058", "Hazel Gray", "088901234572"),
	("10000059", "Isaac Ramirez", "089012345683"),
	("10000060", "Jasmine James", "080123456784"),
	("10000061", "Kai Watson", "081234567896"),
	("10000062", "Luna Brooks", "082345678907"),
	("10000063", "Miles Sanders", "083456789018"),
	("10000064", "Natalie Price", "084567890129"),
	("10000065", "Owen Bennett", "085678901240"),
	("10000066", "Piper Wood", "086789012351"),
	("10000067", "Quincy Barnes", "087890123462"),
	("10000068", "Riley Ross", "088901234573"),
	("10000069", "Savannah Henderson", "089012345684"),
	("10000070", "Theo Coleman", "080123456785"),
	("10000071", "Ursula Jenkins", "081234567897"),
	("10000072", "Violet Perry", "082345678908"),
	("10000073", "Wyatt Powell", "083456789019"),
	("10000074", "Ximena Long", "084567890130"),
	("10000075", "Yosef Flores", "085678901241"),
	("10000076", "Zara Washington", "086789012352"),
	("10000077", "Aaron Butler", "087890123463"),
	("10000078", "Brianna Simmons", "088901234574"),
	("10000079", "Cameron Foster", "089012345685"),
	("10000080", "Dakota Gonzales", "080123456786"),
	("10000081", "Ellie Bryant", "081234567898"),
	("10000082", "Finn Alexander", "082345678909"),
	("10000083", "Genevieve Russell", "083456789020"),
	("10000084", "Hudson Griffin", "084567890131"),
	("10000085", "Isabelle Diaz", "085678901242"),
	("10000086", "Jacob Hayes", "086789012353"),
	("10000087", "Kylie Myers", "087890123464"),
	("10000088", "Levi Ford", "088901234575"),
	("10000089", "Maya Hamilton", "089012345686"),
	("10000090", "Nathaniel Graham", "080123456787"),
	("10000091", "Olivia Sullivan", "081234567899"),
	("10000092", "Peyton Wallace", "082345678910"),
	("10000093", "Quinn Woods", "083456789021"),
	("10000094", "Riley Cole", "084567890132"),
	("10000095", "Sophie West", "085678901243"),
	("10000096", "Tristan Ortiz", "086789012354"),
	("10000097", "Una Fisher", "087890123465"),
	("10000098", "Vivian Hunt", "088901234576"),
	("10000099", "William Gordon", "089012345687"),
	("10000100", "Zachary Shaw", "080123456788");

/*!40000 ALTER TABLE `main_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table main_peminjaman
# ------------------------------------------------------------

DROP TABLE IF EXISTS `main_peminjaman`;

CREATE TABLE `main_peminjaman` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` varchar(12) NOT NULL,
  `id_buku_id` bigint NOT NULL,
  `id_petugas_id` int NOT NULL,
  `nim_id` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_peminjaman_id_buku_id_da195d4e_fk_main_buku_id` (`id_buku_id`),
  KEY `main_peminjaman_id_petugas_id_b19cf8ab_fk_auth_user_id` (`id_petugas_id`),
  KEY `main_peminjaman_nim_id_fd1d87f2_fk_main_mahasiswa_nim` (`nim_id`),
  CONSTRAINT `main_peminjaman_id_buku_id_da195d4e_fk_main_buku_id` FOREIGN KEY (`id_buku_id`) REFERENCES `main_buku` (`id`),
  CONSTRAINT `main_peminjaman_id_petugas_id_b19cf8ab_fk_auth_user_id` FOREIGN KEY (`id_petugas_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `main_peminjaman_nim_id_fd1d87f2_fk_main_mahasiswa_nim` FOREIGN KEY (`nim_id`) REFERENCES `main_mahasiswa` (`nim`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `main_peminjaman` WRITE;
/*!40000 ALTER TABLE `main_peminjaman` DISABLE KEYS */;

INSERT INTO `main_peminjaman` (`id`, `tanggal_pinjam`, `tanggal_kembali`, `status`, `id_buku_id`, `id_petugas_id`, `nim_id`) VALUES
	(102, "2024-04-09", "2024-04-23", "terlambat", 46, 1, "10000001"),
	(103, "2024-04-12", "2024-04-26", "dikembalikan", 83, 1, "10000001"),
	(104, "2024-05-03", "2024-05-17", "dikembalikan", 47, 1, "10000002"),
	(105, "2024-09-27", "2024-10-11", "terlambat", 49, 1, "10000003"),
	(106, "2024-02-13", "2024-02-27", "terlambat", 74, 1, "10000004"),
	(107, "2024-09-11", "2024-09-25", "dikembalikan", 60, 1, "10000005"),
	(108, "2024-01-11", "2024-01-25", "terlambat", 83, 1, "10000006"),
	(109, "2024-02-02", "2024-02-16", "dikembalikan", 63, 1, "10000007"),
	(110, "2024-04-20", "2024-05-04", "terlambat", 47, 1, "10000008"),
	(111, "2024-01-31", "2024-02-14", "dikembalikan", 68, 1, "10000009"),
	(112, "2024-02-11", "2024-02-25", "terlambat", 90, 1, "10000100"),
	(113, "2024-02-23", "2024-03-08", "terlambat", 46, 1, "10000011"),
	(114, "2024-07-28", "2024-08-11", "terlambat", 48, 1, "10000012"),
	(115, "2024-10-07", "2024-10-21", "terlambat", 55, 1, "10000013"),
	(116, "2024-02-29", "2024-03-14", "dikembalikan", 65, 1, "10000014"),
	(117, "2024-12-09", "2024-12-23", "terlambat", 59, 1, "10000015"),
	(118, "2024-07-26", "2024-08-09", "terlambat", 53, 1, "10000016"),
	(119, "2025-01-28", "2025-02-11", "dikembalikan", 52, 1, "10000017"),
	(120, "2024-09-12", "2024-09-26", "dikembalikan", 63, 1, "10000018"),
	(121, "2024-01-12", "2024-01-26", "terlambat", 46, 1, "10000019"),
	(122, "2024-12-22", "2025-01-05", "dikembalikan", 88, 1, "10000020"),
	(123, "2024-12-14", "2024-12-28", "terlambat", 57, 1, "10000021"),
	(124, "2024-01-03", "2024-01-17", "terlambat", 66, 1, "10000022"),
	(125, "2024-05-21", "2024-06-04", "terlambat", 60, 1, "10000023"),
	(126, "2024-02-09", "2024-02-23", "terlambat", 56, 1, "10000024"),
	(127, "2024-03-28", "2024-04-11", "dikembalikan", 64, 1, "10000025"),
	(128, "2024-11-03", "2024-11-17", "dikembalikan", 80, 1, "10000026"),
	(129, "2024-01-13", "2024-01-27", "terlambat", 62, 1, "10000027"),
	(130, "2024-02-26", "2024-03-11", "dikembalikan", 87, 1, "10000028"),
	(131, "2025-01-06", "2025-01-20", "terlambat", 81, 1, "10000029"),
	(132, "2024-09-14", "2024-09-28", "terlambat", 46, 1, "10000030"),
	(133, "2024-12-16", "2024-12-30", "terlambat", 80, 1, "10000031"),
	(134, "2024-09-17", "2024-10-01", "terlambat", 63, 1, "10000032"),
	(135, "2024-04-21", "2024-05-05", "terlambat", 64, 1, "10000033"),
	(136, "2024-06-23", "2024-07-07", "terlambat", 87, 1, "10000034"),
	(137, "2025-01-15", "2025-01-29", "dikembalikan", 85, 1, "10000035"),
	(138, "2024-02-29", "2024-03-14", "terlambat", 51, 1, "10000036"),
	(139, "2024-07-18", "2024-08-01", "terlambat", 50, 1, "10000037"),
	(140, "2024-05-17", "2024-05-31", "dikembalikan", 69, 1, "10000038"),
	(141, "2024-04-14", "2024-04-28", "dikembalikan", 76, 1, "10000039"),
	(142, "2024-12-04", "2024-12-18", "terlambat", 47, 1, "10000040"),
	(143, "2024-03-02", "2024-03-16", "terlambat", 48, 1, "10000041"),
	(144, "2024-09-10", "2024-09-24", "terlambat", 68, 1, "10000042"),
	(145, "2024-01-27", "2024-02-10", "terlambat", 75, 1, "10000043"),
	(146, "2024-03-13", "2024-03-27", "dikembalikan", 56, 1, "10000044"),
	(147, "2024-01-29", "2024-02-12", "dikembalikan", 60, 1, "10000045"),
	(148, "2024-02-03", "2024-02-17", "dikembalikan", 81, 1, "10000046"),
	(149, "2024-04-02", "2024-04-16", "dikembalikan", 63, 1, "10000047"),
	(150, "2024-09-23", "2024-10-07", "dikembalikan", 88, 1, "10000048"),
	(151, "2024-04-17", "2024-05-01", "terlambat", 49, 1, "10000049"),
	(152, "2024-09-07", "2024-09-21", "terlambat", 74, 1, "10000050"),
	(153, "2024-12-08", "2024-12-22", "terlambat", 90, 1, "10000051"),
	(154, "2025-01-27", "2025-02-10", "dikembalikan", 51, 1, "10000052"),
	(155, "2024-02-17", "2024-03-02", "terlambat", 84, 1, "10000053"),
	(156, "2024-12-24", "2025-01-07", "terlambat", 75, 1, "10000054"),
	(157, "2024-08-23", "2024-09-06", "terlambat", 61, 1, "10000055"),
	(158, "2025-01-16", "2025-01-30", "terlambat", 72, 1, "10000056"),
	(159, "2024-10-29", "2024-11-12", "terlambat", 51, 1, "10000057"),
	(160, "2024-05-30", "2024-06-13", "terlambat", 74, 1, "10000058"),
	(161, "2024-07-19", "2024-08-02", "terlambat", 50, 1, "10000059"),
	(162, "2024-09-14", "2024-09-28", "dikembalikan", 57, 1, "10000060"),
	(163, "2024-01-22", "2024-02-05", "terlambat", 56, 1, "10000061"),
	(164, "2024-05-27", "2024-06-10", "terlambat", 61, 1, "10000062"),
	(165, "2024-08-02", "2024-08-16", "terlambat", 61, 1, "10000063"),
	(166, "2024-07-10", "2024-07-24", "dikembalikan", 78, 1, "10000064"),
	(167, "2024-02-02", "2024-02-16", "terlambat", 90, 1, "10000065"),
	(168, "2024-10-04", "2024-10-18", "terlambat", 75, 1, "10000066"),
	(169, "2024-07-03", "2024-07-17", "terlambat", 50, 1, "10000067"),
	(170, "2024-09-30", "2024-10-14", "terlambat", 50, 1, "10000068"),
	(171, "2024-08-24", "2024-09-07", "terlambat", 62, 1, "10000069"),
	(172, "2024-07-23", "2024-08-06", "terlambat", 59, 1, "10000070"),
	(173, "2024-09-13", "2024-09-27", "terlambat", 55, 1, "10000071"),
	(174, "2024-06-08", "2024-06-22", "dikembalikan", 88, 1, "10000072"),
	(175, "2024-04-10", "2024-04-24", "terlambat", 60, 1, "10000073"),
	(176, "2024-09-13", "2024-09-27", "terlambat", 88, 1, "10000074"),
	(177, "2024-10-16", "2024-10-30", "dikembalikan", 51, 1, "10000075"),
	(178, "2024-07-05", "2024-07-19", "terlambat", 74, 1, "10000076"),
	(179, "2024-04-18", "2024-05-02", "terlambat", 50, 1, "10000077"),
	(180, "2024-04-24", "2024-05-08", "terlambat", 86, 1, "10000078"),
	(181, "2024-09-20", "2024-10-04", "dikembalikan", 84, 1, "10000079"),
	(182, "2025-01-17", "2025-01-31", "terlambat", 52, 1, "10000080"),
	(183, "2024-04-20", "2024-05-04", "terlambat", 56, 1, "10000081"),
	(184, "2024-05-08", "2024-05-22", "terlambat", 51, 1, "10000082"),
	(185, "2025-01-09", "2025-01-23", "terlambat", 58, 1, "10000083"),
	(186, "2024-02-12", "2024-02-26", "dikembalikan", 90, 1, "10000084"),
	(187, "2024-09-06", "2024-09-20", "terlambat", 75, 1, "10000085"),
	(188, "2025-01-23", "2025-02-06", "terlambat", 64, 1, "10000086"),
	(189, "2024-11-19", "2024-12-03", "dikembalikan", 87, 1, "10000087"),
	(190, "2025-01-26", "2025-02-09", "terlambat", 80, 1, "10000088"),
	(191, "2024-09-25", "2024-10-09", "dikembalikan", 46, 1, "10000089"),
	(192, "2024-01-16", "2024-01-30", "dikembalikan", 82, 1, "10000090"),
	(193, "2024-04-22", "2024-05-06", "terlambat", 74, 1, "10000091"),
	(194, "2024-10-12", "2024-10-26", "terlambat", 52, 1, "10000092"),
	(195, "2024-02-12", "2024-02-26", "terlambat", 85, 1, "10000093"),
	(196, "2024-04-29", "2024-05-13", "dikembalikan", 82, 1, "10000094"),
	(197, "2024-06-03", "2024-06-17", "dikembalikan", 49, 1, "10000095"),
	(198, "2024-07-11", "2024-07-25", "terlambat", 50, 1, "10000096"),
	(199, "2024-01-05", "2024-01-19", "terlambat", 76, 1, "10000097"),
	(200, "2024-11-18", "2024-12-02", "terlambat", 89, 1, "10000098"),
	(201, "2025-01-07", "2025-01-21", "terlambat", 77, 1, "10000099"),
	(202, "2024-05-14", "2024-05-28", "terlambat", 89, 1, "10000100"),
	(203, "2025-02-14", "2025-02-15", "dipinjam", 66, 1, "10000002");

/*!40000 ALTER TABLE `main_peminjaman` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of views
# ------------------------------------------------------------

# Creating temporary tables to overcome VIEW dependency errors


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

# Dump completed on 2025-02-14T22:47:40+07:00
