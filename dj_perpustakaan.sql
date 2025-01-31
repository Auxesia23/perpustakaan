-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: dj_perpustakaan
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add buku',7,'add_buku'),(26,'Can change buku',7,'change_buku'),(27,'Can delete buku',7,'delete_buku'),(28,'Can view buku',7,'view_buku'),(29,'Can add mahasiswa',8,'add_mahasiswa'),(30,'Can change mahasiswa',8,'change_mahasiswa'),(31,'Can delete mahasiswa',8,'delete_mahasiswa'),(32,'Can view mahasiswa',8,'view_mahasiswa'),(33,'Can add peminjaman',9,'add_peminjaman'),(34,'Can change peminjaman',9,'change_peminjaman'),(35,'Can delete peminjaman',9,'delete_peminjaman'),(36,'Can view peminjaman',9,'view_peminjaman');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$bRBs2QMR1NgdtK0WERqLaO$XntzLSu5x6tz/BA85ICTWktFhdFPcdENv6S2JzJ35jw=','2025-01-31 04:11:41.639230',1,'admin','','','',1,1,'2025-01-31 04:11:21.267243');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-01-31 04:11:56.212514','46','Laut Bercerita',1,'new through import_export',7,1),(2,'2025-01-31 04:11:56.212556','47','Pulang',1,'new through import_export',7,1),(3,'2025-01-31 04:11:56.212569','48','Bumi Manusia',1,'new through import_export',7,1),(4,'2025-01-31 04:11:56.212579','49','Laskar Pelangi',1,'new through import_export',7,1),(5,'2025-01-31 04:11:56.212587','50','Perahu Kertas',1,'new through import_export',7,1),(6,'2025-01-31 04:11:56.212596','51','Ronggeng Dukuh Paruk',1,'new through import_export',7,1),(7,'2025-01-31 04:11:56.212605','52','Negeri 5 Menara',1,'new through import_export',7,1),(8,'2025-01-31 04:11:56.212613','53','Supernova: Kesatria, Puteri, dan Bintang Jatuh',1,'new through import_export',7,1),(9,'2025-01-31 04:11:56.212621','54','Gadis Kretek',1,'new through import_export',7,1),(10,'2025-01-31 04:11:56.212629','55','Jingga dan Senja',1,'new through import_export',7,1),(11,'2025-01-31 04:11:56.212637','56','Senja di Langit Cikapundung',1,'new through import_export',7,1),(12,'2025-01-31 04:11:56.212645','57','Rindu',1,'new through import_export',7,1),(13,'2025-01-31 04:11:56.212653','58','Sepotong Hati yang Baru',1,'new through import_export',7,1),(14,'2025-01-31 04:11:56.212660','59','Tentang Kamu',1,'new through import_export',7,1),(15,'2025-01-31 04:11:56.212668','60','Bidadari-Bidadari Surga',1,'new through import_export',7,1),(16,'2025-01-31 04:11:56.212675','61','Anak Bajang Menggiring Angin',1,'new through import_export',7,1),(17,'2025-01-31 04:11:56.212683','62','Api Awan Asap',1,'new through import_export',7,1),(18,'2025-01-31 04:11:56.212691','63','Arus Balik',1,'new through import_export',7,1),(19,'2025-01-31 04:11:56.212698','64','Jalan Tak Ada Ujung',1,'new through import_export',7,1),(20,'2025-01-31 04:11:56.212706','65','Keluarga Gerilya',1,'new through import_export',7,1),(21,'2025-01-31 04:11:56.212714','66','Kisah 1001 Malam',1,'new through import_export',7,1),(22,'2025-01-31 04:11:56.212722','67','Kisah-Kisah Tanah Jawa',1,'new through import_export',7,1),(23,'2025-01-31 04:11:56.212730','68','Kumpulan Budak Setan',1,'new through import_export',7,1),(24,'2025-01-31 04:11:56.212738','69','Lelaki Harimau',1,'new through import_export',7,1),(25,'2025-01-31 04:11:56.212746','70','Manusia Kamar',1,'new through import_export',7,1),(26,'2025-01-31 04:11:56.212753','71','Max Havelaar',1,'new through import_export',7,1),(27,'2025-01-31 04:11:56.212761','72','Mendadak Dangdut',1,'new through import_export',7,1),(28,'2025-01-31 04:11:56.212769','73','Namaku Hiroko',1,'new through import_export',7,1),(29,'2025-01-31 04:11:56.212777','74','Pada Sebuah Kapal',1,'new through import_export',7,1),(30,'2025-01-31 04:11:56.212784','75','Pangeran Diponegoro',1,'new through import_export',7,1),(31,'2025-01-31 04:11:56.212792','76','Perempuan Berkalung Sorban',1,'new through import_export',7,1),(32,'2025-01-31 04:11:56.212800','77','Perempuan di Titik Nol',1,'new through import_export',7,1),(33,'2025-01-31 04:11:56.212808','78','Perempuan-Perempuan',1,'new through import_export',7,1),(34,'2025-01-31 04:11:56.212816','79','Pertemuan Dua Hati',1,'new through import_export',7,1),(35,'2025-01-31 04:11:56.212824','80','Pudarnya Pesona Cleopatra',1,'new through import_export',7,1),(36,'2025-01-31 04:11:56.212831','81','Rahasia Meede',1,'new through import_export',7,1),(37,'2025-01-31 04:11:56.212839','82','Ronggeng Dukuh Paruk',1,'new through import_export',7,1),(38,'2025-01-31 04:11:56.212847','83','Saman',1,'new through import_export',7,1),(39,'2025-01-31 04:11:56.212854','84','Sang Pemimpi',1,'new through import_export',7,1),(40,'2025-01-31 04:11:56.212861','85','Sepotong Senja untuk Pacarku',1,'new through import_export',7,1),(41,'2025-01-31 04:11:56.212868','86','Seribu Kunang-Kunang di Manhattan',1,'new through import_export',7,1),(42,'2025-01-31 04:11:56.212876','87','Si Anak Kuat',1,'new through import_export',7,1),(43,'2025-01-31 04:11:56.212884','88','Si Anak Pintar',1,'new through import_export',7,1),(44,'2025-01-31 04:11:56.212891','89','Si Anak Pemberani',1,'new through import_export',7,1),(45,'2025-01-31 04:11:56.212898','90','Si Anak Spesial',1,'new through import_export',7,1),(46,'2025-01-31 04:12:05.981267','10000001','10000001',1,'new through import_export',8,1),(47,'2025-01-31 04:12:05.981299','10000002','10000002',1,'new through import_export',8,1),(48,'2025-01-31 04:12:05.981310','10000003','10000003',1,'new through import_export',8,1),(49,'2025-01-31 04:12:05.981319','10000004','10000004',1,'new through import_export',8,1),(50,'2025-01-31 04:12:05.981327','10000005','10000005',1,'new through import_export',8,1),(51,'2025-01-31 04:12:05.981335','10000006','10000006',1,'new through import_export',8,1),(52,'2025-01-31 04:12:05.981344','10000007','10000007',1,'new through import_export',8,1),(53,'2025-01-31 04:12:05.981352','10000008','10000008',1,'new through import_export',8,1),(54,'2025-01-31 04:12:05.981360','10000009','10000009',1,'new through import_export',8,1),(55,'2025-01-31 04:12:05.981369','10000010','10000010',1,'new through import_export',8,1),(56,'2025-01-31 04:12:05.981378','10000011','10000011',1,'new through import_export',8,1),(57,'2025-01-31 04:12:05.981385','10000012','10000012',1,'new through import_export',8,1),(58,'2025-01-31 04:12:05.981394','10000013','10000013',1,'new through import_export',8,1),(59,'2025-01-31 04:12:05.981401','10000014','10000014',1,'new through import_export',8,1),(60,'2025-01-31 04:12:05.981409','10000015','10000015',1,'new through import_export',8,1),(61,'2025-01-31 04:12:05.981417','10000016','10000016',1,'new through import_export',8,1),(62,'2025-01-31 04:12:05.981425','10000017','10000017',1,'new through import_export',8,1),(63,'2025-01-31 04:12:05.981434','10000018','10000018',1,'new through import_export',8,1),(64,'2025-01-31 04:12:05.981441','10000019','10000019',1,'new through import_export',8,1),(65,'2025-01-31 04:12:05.981456','10000020','10000020',1,'new through import_export',8,1),(66,'2025-01-31 04:12:05.981464','10000021','10000021',1,'new through import_export',8,1),(67,'2025-01-31 04:12:05.981472','10000022','10000022',1,'new through import_export',8,1),(68,'2025-01-31 04:12:05.981480','10000023','10000023',1,'new through import_export',8,1),(69,'2025-01-31 04:12:05.981488','10000024','10000024',1,'new through import_export',8,1),(70,'2025-01-31 04:12:05.981496','10000025','10000025',1,'new through import_export',8,1),(71,'2025-01-31 04:12:05.981504','10000026','10000026',1,'new through import_export',8,1),(72,'2025-01-31 04:12:05.981511','10000027','10000027',1,'new through import_export',8,1),(73,'2025-01-31 04:12:05.981519','10000028','10000028',1,'new through import_export',8,1),(74,'2025-01-31 04:12:05.981527','10000029','10000029',1,'new through import_export',8,1),(75,'2025-01-31 04:12:05.981534','10000030','10000030',1,'new through import_export',8,1),(76,'2025-01-31 04:12:05.981542','10000031','10000031',1,'new through import_export',8,1),(77,'2025-01-31 04:12:05.981550','10000032','10000032',1,'new through import_export',8,1),(78,'2025-01-31 04:12:05.981558','10000033','10000033',1,'new through import_export',8,1),(79,'2025-01-31 04:12:05.981566','10000034','10000034',1,'new through import_export',8,1),(80,'2025-01-31 04:12:05.981574','10000035','10000035',1,'new through import_export',8,1),(81,'2025-01-31 04:12:05.981581','10000036','10000036',1,'new through import_export',8,1),(82,'2025-01-31 04:12:05.981589','10000037','10000037',1,'new through import_export',8,1),(83,'2025-01-31 04:12:05.981597','10000038','10000038',1,'new through import_export',8,1),(84,'2025-01-31 04:12:05.981605','10000039','10000039',1,'new through import_export',8,1),(85,'2025-01-31 04:12:05.981612','10000040','10000040',1,'new through import_export',8,1),(86,'2025-01-31 04:12:05.981620','10000041','10000041',1,'new through import_export',8,1),(87,'2025-01-31 04:12:05.981628','10000042','10000042',1,'new through import_export',8,1),(88,'2025-01-31 04:12:05.981636','10000043','10000043',1,'new through import_export',8,1),(89,'2025-01-31 04:12:05.981644','10000044','10000044',1,'new through import_export',8,1),(90,'2025-01-31 04:12:05.981652','10000045','10000045',1,'new through import_export',8,1),(91,'2025-01-31 04:12:05.981659','10000046','10000046',1,'new through import_export',8,1),(92,'2025-01-31 04:12:05.981667','10000047','10000047',1,'new through import_export',8,1),(93,'2025-01-31 04:12:05.981675','10000048','10000048',1,'new through import_export',8,1),(94,'2025-01-31 04:12:05.981682','10000049','10000049',1,'new through import_export',8,1),(95,'2025-01-31 04:12:05.981691','10000050','10000050',1,'new through import_export',8,1),(96,'2025-01-31 04:12:05.981703','10000051','10000051',1,'new through import_export',8,1),(97,'2025-01-31 04:12:05.981711','10000052','10000052',1,'new through import_export',8,1),(98,'2025-01-31 04:12:05.981720','10000053','10000053',1,'new through import_export',8,1),(99,'2025-01-31 04:12:05.981728','10000054','10000054',1,'new through import_export',8,1),(100,'2025-01-31 04:12:05.981736','10000055','10000055',1,'new through import_export',8,1),(101,'2025-01-31 04:12:05.981744','10000056','10000056',1,'new through import_export',8,1),(102,'2025-01-31 04:12:05.981751','10000057','10000057',1,'new through import_export',8,1),(103,'2025-01-31 04:12:05.981759','10000058','10000058',1,'new through import_export',8,1),(104,'2025-01-31 04:12:05.981767','10000059','10000059',1,'new through import_export',8,1),(105,'2025-01-31 04:12:05.981776','10000060','10000060',1,'new through import_export',8,1),(106,'2025-01-31 04:12:05.981783','10000061','10000061',1,'new through import_export',8,1),(107,'2025-01-31 04:12:05.981791','10000062','10000062',1,'new through import_export',8,1),(108,'2025-01-31 04:12:05.981799','10000063','10000063',1,'new through import_export',8,1),(109,'2025-01-31 04:12:05.981807','10000064','10000064',1,'new through import_export',8,1),(110,'2025-01-31 04:12:05.981815','10000065','10000065',1,'new through import_export',8,1),(111,'2025-01-31 04:12:05.981823','10000066','10000066',1,'new through import_export',8,1),(112,'2025-01-31 04:12:05.981831','10000067','10000067',1,'new through import_export',8,1),(113,'2025-01-31 04:12:05.981839','10000068','10000068',1,'new through import_export',8,1),(114,'2025-01-31 04:12:05.981848','10000069','10000069',1,'new through import_export',8,1),(115,'2025-01-31 04:12:05.981857','10000070','10000070',1,'new through import_export',8,1),(116,'2025-01-31 04:12:05.981865','10000071','10000071',1,'new through import_export',8,1),(117,'2025-01-31 04:12:05.981872','10000072','10000072',1,'new through import_export',8,1),(118,'2025-01-31 04:12:05.981880','10000073','10000073',1,'new through import_export',8,1),(119,'2025-01-31 04:12:05.981887','10000074','10000074',1,'new through import_export',8,1),(120,'2025-01-31 04:12:05.981894','10000075','10000075',1,'new through import_export',8,1),(121,'2025-01-31 04:12:05.981902','10000076','10000076',1,'new through import_export',8,1),(122,'2025-01-31 04:12:05.981910','10000077','10000077',1,'new through import_export',8,1),(123,'2025-01-31 04:12:05.981957','10000078','10000078',1,'new through import_export',8,1),(124,'2025-01-31 04:12:05.981968','10000079','10000079',1,'new through import_export',8,1),(125,'2025-01-31 04:12:05.981976','10000080','10000080',1,'new through import_export',8,1),(126,'2025-01-31 04:12:05.981983','10000081','10000081',1,'new through import_export',8,1),(127,'2025-01-31 04:12:05.981990','10000082','10000082',1,'new through import_export',8,1),(128,'2025-01-31 04:12:05.981997','10000083','10000083',1,'new through import_export',8,1),(129,'2025-01-31 04:12:05.982005','10000084','10000084',1,'new through import_export',8,1),(130,'2025-01-31 04:12:05.982012','10000085','10000085',1,'new through import_export',8,1),(131,'2025-01-31 04:12:05.982019','10000086','10000086',1,'new through import_export',8,1),(132,'2025-01-31 04:12:05.982026','10000087','10000087',1,'new through import_export',8,1),(133,'2025-01-31 04:12:05.982033','10000088','10000088',1,'new through import_export',8,1),(134,'2025-01-31 04:12:05.982040','10000089','10000089',1,'new through import_export',8,1),(135,'2025-01-31 04:12:05.982047','10000090','10000090',1,'new through import_export',8,1),(136,'2025-01-31 04:12:05.982054','10000091','10000091',1,'new through import_export',8,1),(137,'2025-01-31 04:12:05.982061','10000092','10000092',1,'new through import_export',8,1),(138,'2025-01-31 04:12:05.982069','10000093','10000093',1,'new through import_export',8,1),(139,'2025-01-31 04:12:05.982077','10000094','10000094',1,'new through import_export',8,1),(140,'2025-01-31 04:12:05.982084','10000095','10000095',1,'new through import_export',8,1),(141,'2025-01-31 04:12:05.982091','10000096','10000096',1,'new through import_export',8,1),(142,'2025-01-31 04:12:05.982098','10000097','10000097',1,'new through import_export',8,1),(143,'2025-01-31 04:12:05.982105','10000098','10000098',1,'new through import_export',8,1),(144,'2025-01-31 04:12:05.982112','10000099','10000099',1,'new through import_export',8,1),(145,'2025-01-31 04:12:05.982119','10000100','10000100',1,'new through import_export',8,1),(146,'2025-01-31 04:12:15.778734','1','10000002 - Bumi Manusia',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'main','buku'),(8,'main','mahasiswa'),(9,'main','peminjaman'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-01-31 04:10:47.942327'),(2,'auth','0001_initial','2025-01-31 04:10:48.679760'),(3,'admin','0001_initial','2025-01-31 04:10:48.840461'),(4,'admin','0002_logentry_remove_auto_add','2025-01-31 04:10:48.846938'),(5,'admin','0003_logentry_add_action_flag_choices','2025-01-31 04:10:48.852989'),(6,'contenttypes','0002_remove_content_type_name','2025-01-31 04:10:48.929191'),(7,'auth','0002_alter_permission_name_max_length','2025-01-31 04:10:48.995693'),(8,'auth','0003_alter_user_email_max_length','2025-01-31 04:10:49.018872'),(9,'auth','0004_alter_user_username_opts','2025-01-31 04:10:49.025152'),(10,'auth','0005_alter_user_last_login_null','2025-01-31 04:10:49.083601'),(11,'auth','0006_require_contenttypes_0002','2025-01-31 04:10:49.088122'),(12,'auth','0007_alter_validators_add_error_messages','2025-01-31 04:10:49.095146'),(13,'auth','0008_alter_user_username_max_length','2025-01-31 04:10:49.173583'),(14,'auth','0009_alter_user_last_name_max_length','2025-01-31 04:10:49.244952'),(15,'auth','0010_alter_group_name_max_length','2025-01-31 04:10:49.260170'),(16,'auth','0011_update_proxy_permissions','2025-01-31 04:10:49.268156'),(17,'auth','0012_alter_user_first_name_max_length','2025-01-31 04:10:49.337789'),(18,'main','0001_initial','2025-01-31 04:10:49.620008'),(19,'sessions','0001_initial','2025-01-31 04:10:49.663180');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('esbvw0xw15yd2drwh2va5qfcg65oop8b','.eJxVjDsOwjAQBe_iGlmJf4kp6XMGa-3dxQFkS3FSIe5OIqWA9s3Me4sA25rD1mgJM4qr6MXld4uQnlQOgA8o9ypTLesyR3ko8qRNThXpdTvdv4MMLe-1tdxZYkTUPAA7isw2kknRqWQd9qz1YKJ21sDuwai8V5x8R8aMhlh8vh7kOQo:1tdiNZ:jMXQcF5PAqxpMxdNkMfTyhXzr0yEsluvAU4VlMYxmNs','2025-02-14 04:11:41.643326');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_buku`
--

DROP TABLE IF EXISTS `main_buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_buku` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun` int NOT NULL,
  `kategori` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_buku`
--

LOCK TABLES `main_buku` WRITE;
/*!40000 ALTER TABLE `main_buku` DISABLE KEYS */;
INSERT INTO `main_buku` VALUES (46,'Laut Bercerita','Leila S. Chudori','Kepustakaan Populer Gramedia',2017,'Fiksi'),(47,'Pulang','Tere Liye','Gramedia Pustaka Utama',2015,'Fiksi'),(48,'Bumi Manusia','Pramoedya Ananta Toer','Hasta Mitra',1980,'Fiksi'),(49,'Laskar Pelangi','Andrea Hirata','Bentang Pustaka',2005,'Fiksi'),(50,'Perahu Kertas','Dee Lestari','Bentang Pustaka',2009,'Fiksi'),(51,'Ronggeng Dukuh Paruk','Ahmad Tohari','Gramedia Pustaka Utama',1982,'Fiksi'),(52,'Negeri 5 Menara','Ahmad Fuadi','Gramedia Pustaka Utama',2009,'Fiksi'),(53,'Supernova: Kesatria, Puteri, dan Bintang Jatuh','Dee Lestari','Truedee Books',2001,'Fiksi'),(54,'Gadis Kretek','Ratih Kumala','Gramedia Pustaka Utama',2012,'Fiksi'),(55,'Jingga dan Senja','Esti Kinasih','Grasindo',2018,'Fiksi'),(56,'Senja di Langit Cikapundung','Titien Wattimena','Gramedia Pustaka Utama',2015,'Fiksi'),(57,'Rindu','Tere Liye','Gramedia Pustaka Utama',2014,'Fiksi'),(58,'Sepotong Hati yang Baru','Tere Liye','Gramedia Pustaka Utama',2016,'Fiksi'),(59,'Tentang Kamu','Tere Liye','Gramedia Pustaka Utama',2017,'Fiksi'),(60,'Bidadari-Bidadari Surga','Tere Liye','Gramedia Pustaka Utama',2008,'Fiksi'),(61,'Anak Bajang Menggiring Angin','Sindhunata','Gramedia Pustaka Utama',1983,'Fiksi'),(62,'Api Awan Asap','Pramoedya Ananta Toer','Lentera Dipantara',2003,'Fiksi'),(63,'Arus Balik','Pramoedya Ananta Toer','Lentera Dipantara',1995,'Fiksi'),(64,'Jalan Tak Ada Ujung','Mochtar Lubis','Yayasan Obor Indonesia',1952,'Fiksi'),(65,'Keluarga Gerilya','Pramoedya Ananta Toer','Lentera Dipantara',1950,'Fiksi'),(66,'Kisah 1001 Malam','Anonim','Elex Media Komputindo',2005,'Fiksi'),(67,'Kisah-Kisah Tanah Jawa','Damar Shashangka','Divapress',2010,'Fiksi'),(68,'Kumpulan Budak Setan','Kuntowijoyo','Mizan',1985,'Fiksi'),(69,'Lelaki Harimau','Eka Kurniawan','Gramedia Pustaka Utama',2004,'Fiksi'),(70,'Manusia Kamar','Ahmad Tohari','Gramedia Pustaka Utama',2001,'Fiksi'),(71,'Max Havelaar','Multatuli','Penerbit Qanita',1860,'Fiksi'),(72,'Mendadak Dangdut','Beni Setia','Gramedia Pustaka Utama',2006,'Fiksi'),(73,'Namaku Hiroko','NH. Dini','Gramedia Pustaka Utama',1977,'Fiksi'),(74,'Pada Sebuah Kapal','NH. Dini','Gramedia Pustaka Utama',1973,'Fiksi'),(75,'Pangeran Diponegoro','Pramoedya Ananta Toer','Lentera Dipantara',1995,'Fiksi'),(76,'Perempuan Berkalung Sorban','Abidah El Khalieqy','Yayasan Kesejahteraan Fatayat',2001,'Fiksi'),(77,'Perempuan di Titik Nol','Nawal El Saadawi','Pustaka Jaya',1975,'Fiksi'),(78,'Perempuan-Perempuan','Ayu Utami','Kepustakaan Populer Gramedia',2000,'Fiksi'),(79,'Pertemuan Dua Hati','NH. Dini','Gramedia Pustaka Utama',1986,'Fiksi'),(80,'Pudarnya Pesona Cleopatra','Habiburrahman El Shirazy','Republika',2005,'Fiksi'),(81,'Rahasia Meede','E.S. Ito','Hikmah',2007,'Fiksi'),(82,'Ronggeng Dukuh Paruk','Ahmad Tohari','Gramedia Pustaka Utama',1982,'Fiksi'),(83,'Saman','Ayu Utami','Kepustakaan Populer Gramedia',1998,'Fiksi'),(84,'Sang Pemimpi','Andrea Hirata','Bentang Pustaka',2006,'Fiksi'),(85,'Sepotong Senja untuk Pacarku','Seno Gumira Ajidarma','Gramedia Pustaka Utama',1997,'Fiksi'),(86,'Seribu Kunang-Kunang di Manhattan','Umar Kayam','Pustaka Jaya',1972,'Fiksi'),(87,'Si Anak Kuat','Tere Liye','Gramedia Pustaka Utama',2018,'Fiksi'),(88,'Si Anak Pintar','Tere Liye','Gramedia Pustaka Utama',2019,'Fiksi'),(89,'Si Anak Pemberani','Tere Liye','Gramedia Pustaka Utama',2020,'Fiksi'),(90,'Si Anak Spesial','Tere Liye','Gramedia Pustaka Utama',2021,'Fiksi');
/*!40000 ALTER TABLE `main_buku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_mahasiswa`
--

DROP TABLE IF EXISTS `main_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_mahasiswa` (
  `nim` varchar(8) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telpon` varchar(13) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_mahasiswa`
--

LOCK TABLES `main_mahasiswa` WRITE;
/*!40000 ALTER TABLE `main_mahasiswa` DISABLE KEYS */;
INSERT INTO `main_mahasiswa` VALUES ('10000001','John Doe','081234567890'),('10000002','Jane Smith','082345678901'),('10000003','Alice Johnson','083456789012'),('10000004','Bob Brown','084567890123'),('10000005','Charlie Davis','085678901234'),('10000006','Eve White','086789012345'),('10000007','Frank Wilson','087890123456'),('10000008','Grace Lee','088901234567'),('10000009','Henry Martinez','089012345678'),('10000010','Ivy Garcia','080123456789'),('10000011','Jack Taylor','081234567891'),('10000012','Karen Anderson','082345678902'),('10000013','Liam Clark','083456789013'),('10000014','Mia Rodriguez','084567890124'),('10000015','Noah Lewis','085678901235'),('10000016','Olivia Walker','086789012346'),('10000017','Paul Hall','087890123457'),('10000018','Quinn Allen','088901234568'),('10000019','Ryan Young','089012345679'),('10000020','Sophia Hernandez','080123456780'),('10000021','Thomas King','081234567892'),('10000022','Uma Wright','082345678903'),('10000023','Victoria Lopez','083456789014'),('10000024','William Scott','084567890125'),('10000025','Xander Green','085678901236'),('10000026','Yara Adams','086789012347'),('10000027','Zachary Baker','087890123458'),('10000028','Abigail Nelson','088901234569'),('10000029','Benjamin Carter','089012345680'),('10000030','Chloe Mitchell','080123456781'),('10000031','Daniel Perez','081234567893'),('10000032','Emily Roberts','082345678904'),('10000033','Fiona Turner','083456789015'),('10000034','George Phillips','084567890126'),('10000035','Hannah Campbell','085678901237'),('10000036','Isaac Parker','086789012348'),('10000037','Julia Evans','087890123459'),('10000038','Kevin Edwards','088901234570'),('10000039','Lily Collins','089012345681'),('10000040','Mason Stewart','080123456782'),('10000041','Nora Sanchez','081234567894'),('10000042','Oscar Morris','082345678905'),('10000043','Penelope Rogers','083456789016'),('10000044','Quentin Reed','084567890127'),('10000045','Ruby Cook','085678901238'),('10000046','Samuel Morgan','086789012349'),('10000047','Taylor Bell','087890123460'),('10000048','Victoria Murphy','088901234571'),('10000049','William Bailey','089012345682'),('10000050','Zoe Rivera','080123456783'),('10000051','Aaron Cooper','081234567895'),('10000052','Bella Richardson','082345678906'),('10000053','Caleb Cox','083456789017'),('10000054','Daisy Howard','084567890128'),('10000055','Eli Ward','085678901239'),('10000056','Felicity Torres','086789012350'),('10000057','Gabriel Peterson','087890123461'),('10000058','Hazel Gray','088901234572'),('10000059','Isaac Ramirez','089012345683'),('10000060','Jasmine James','080123456784'),('10000061','Kai Watson','081234567896'),('10000062','Luna Brooks','082345678907'),('10000063','Miles Sanders','083456789018'),('10000064','Natalie Price','084567890129'),('10000065','Owen Bennett','085678901240'),('10000066','Piper Wood','086789012351'),('10000067','Quincy Barnes','087890123462'),('10000068','Riley Ross','088901234573'),('10000069','Savannah Henderson','089012345684'),('10000070','Theo Coleman','080123456785'),('10000071','Ursula Jenkins','081234567897'),('10000072','Violet Perry','082345678908'),('10000073','Wyatt Powell','083456789019'),('10000074','Ximena Long','084567890130'),('10000075','Yosef Flores','085678901241'),('10000076','Zara Washington','086789012352'),('10000077','Aaron Butler','087890123463'),('10000078','Brianna Simmons','088901234574'),('10000079','Cameron Foster','089012345685'),('10000080','Dakota Gonzales','080123456786'),('10000081','Ellie Bryant','081234567898'),('10000082','Finn Alexander','082345678909'),('10000083','Genevieve Russell','083456789020'),('10000084','Hudson Griffin','084567890131'),('10000085','Isabelle Diaz','085678901242'),('10000086','Jacob Hayes','086789012353'),('10000087','Kylie Myers','087890123464'),('10000088','Levi Ford','088901234575'),('10000089','Maya Hamilton','089012345686'),('10000090','Nathaniel Graham','080123456787'),('10000091','Olivia Sullivan','081234567899'),('10000092','Peyton Wallace','082345678910'),('10000093','Quinn Woods','083456789021'),('10000094','Riley Cole','084567890132'),('10000095','Sophie West','085678901243'),('10000096','Tristan Ortiz','086789012354'),('10000097','Una Fisher','087890123465'),('10000098','Vivian Hunt','088901234576'),('10000099','William Gordon','089012345687'),('10000100','Zachary Shaw','080123456788');
/*!40000 ALTER TABLE `main_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_peminjaman`
--

DROP TABLE IF EXISTS `main_peminjaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_peminjaman` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_peminjaman`
--

LOCK TABLES `main_peminjaman` WRITE;
/*!40000 ALTER TABLE `main_peminjaman` DISABLE KEYS */;
INSERT INTO `main_peminjaman` VALUES (1,'2025-01-31','2025-01-31',48,1,'10000002');
/*!40000 ALTER TABLE `main_peminjaman` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-31 11:16:00
