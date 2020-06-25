CREATE DATABASE  IF NOT EXISTS `xgcnemezb6` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `xgcnemezb6`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: xgcnemezb6
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `educations`
--

DROP TABLE IF EXISTS `educations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `university_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_studies` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `educations_profile_id_foreign` (`profile_id`),
  CONSTRAINT `educations_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educations`
--

LOCK TABLES `educations` WRITE;
/*!40000 ALTER TABLE `educations` DISABLE KEYS */;
INSERT INTO `educations` VALUES (1,'Universidad Manuela Beltrán','Ingeniero de Software','2014 - 2020','2020-06-03 21:37:56',NULL,1),(2,'Servicio Nacional de Aprendizaje SENA','Tecnólogo en Análisis y Desarrollo de Sistemas de Información','2014 - 2017','2020-06-03 21:37:56',NULL,1),(3,'Técnico en Informática','Tecnológico San Agustín','2006 - 2008','2020-06-03 21:37:56',NULL,1);
/*!40000 ALTER TABLE `educations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiences` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_company` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_id` bigint(20) unsigned NOT NULL,
  `stylecss` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `experiences_profile_id_foreign` (`profile_id`),
  CONSTRAINT `experiences_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
INSERT INTO `experiences` VALUES (1,'Instituto Caro y Cuervo','Cargo: Analista Desarrollador - Actividades: Desarrollos PHP, Apoyar Equipo de trabajo TIC','FEB. 2020 - ACTUAL','2020-06-03 21:37:56',NULL,1,'1'),(2,'Gestión Ahora S.A.S','Cargo: Líder de Desarrollo - Actividades: Estimar Actividades, Crear estrategias de desarrollo, Cumplir con los Sprint, Administrar Servidores, Liderar documentación','SEPT. 2019 – ENE. 2020','2020-06-03 21:37:56',NULL,1,'0'),(3,'Arkix S.A.S','Cargo: Analista Desarrollador PHP - Desarrollos – BackEnd - PHP, Administración y desarrollo con WordPress, Soporte Drupal (Actualización Core entre otros), Desarrollos PHP – Jquery Landing page','OCT. 2018 – ABR. 2019','2020-06-03 21:37:56',NULL,1,'1'),(4,'Viatek S.A.S','Cargo: Técnico de Soporte - Actividades: Gestión Bases de Datos Motor MySql, Soporte a servicios de Asterisk Linux, Políticas de Seguridad Windows Sever, Soporte Centro de Datos, Soporte Usuarios Final Nivel I - II','MAR. 2017 – DIC. 2018','2020-06-03 21:37:56',NULL,1,'0'),(5,'MicroPoint S.A.S','Cargo: Ingeniero de Soporte - Actividades: Soporte Sistemas Nivel I - II, Mantenimiento Impresoras, Soporte y Mantenimiento Servidores, Desktop, Respaldo de Bases de Datos,  Asistencia Garantías HP','MAY. 2014 – DIC. 2016','2020-06-03 21:37:56',NULL,1,'1');
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2020_02_08_041150_create_profiles_table',1),(10,'2020_02_08_044333_create_educations_table',1),(11,'2020_02_08_045022_create_skills_table',1),(12,'2020_02_08_053029_create_experiences_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_access_tokens_expired`
--

DROP TABLE IF EXISTS `node_access_tokens_expired`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_access_tokens_expired` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tokens_expired` varchar(500) DEFAULT NULL,
  `date_expired` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_access_tokens_expired`
--

LOCK TABLES `node_access_tokens_expired` WRITE;
/*!40000 ALTER TABLE `node_access_tokens_expired` DISABLE KEYS */;
INSERT INTO `node_access_tokens_expired` VALUES (1,'qre','Wed Jun 24 2020 09:11:02 GMT-0500 (hora estándar de Colombia)'),(2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiYW1pbGthcmdvbWV6QGhvdG1haWwuZXMiLCJpZFVzZXIiOjEsImRhdGUiOiIyMDIwLTA2LTI0VDEzOjA2OjI1LjY3OFoiLCJpYXQiOjE1OTMwMDM5ODUsImV4cCI6MTU5MzA5MDM4NX0.LagBgo3guSjTINe1c5TJNy9l_IdmxbK71fZW6nvEDDA','2020-06-24 09:21:01.394'),(3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiYW1pbGthcmdvbWV6QGhvdG1haWwuZXMiLCJpZFVzZXIiOjEsImRhdGUiOiIyMDIwLTA2LTI1VDA0OjA4OjIwLjQwMFoiLCJpYXQiOjE1OTMwNTgxMDAsImV4cCI6MTU5MzA2MTcwMH0.bfHdVGyp4vdd_S4j299Yp_g-4FsF_LH9LKCURRDLHQY','2020-06-24 23:12:35.325'),(4,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiYW1pbGthcmdvbWV6QGhvdG1haWwuZXMiLCJpZFVzZXIiOjEsImRhdGUiOiIyMDIwLTA2LTI1VDA0OjE3OjE4LjkyN1oiLCJpYXQiOjE1OTMwNTg2MzgsImV4cCI6MTU5MzA2MjIzOH0.D6K5M_wvJfczosCej7G2a8-ijlVxQDcOVPIRCNdLAYw','2020-06-24 23:17:47.562'),(5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiYW1pbGthcmdvbWV6QGhvdG1haWwuZXMiLCJpZFVzZXIiOjEsImRhdGUiOiIyMDIwLTA2LTI1VDA0OjE3OjE4LjkyN1oiLCJpYXQiOjE1OTMwNTg2MzgsImV4cCI6MTU5MzA2MjIzOH0.D6K5M_wvJfczosCej7G2a8-ijlVxQDcOVPIRCNdLAYw','2020-06-24 23:19:13.683'),(6,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiYW1pbGthcmdvbWV6QGhvdG1haWwuZXMiLCJpZFVzZXIiOjEsImRhdGUiOiIyMDIwLTA2LTI1VDA0OjE5OjI0LjI0NloiLCJpYXQiOjE1OTMwNTg3NjQsImV4cCI6MTU5MzA2MjM2NH0.6EB8vSa1kVDTHeqdnxYhpY3kkBoXOk3x0W1WtoqqyAE','2020-06-24 23:21:15.882'),(7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiYW1pbGthcmdvbWV6QGhvdG1haWwuZXMiLCJpZFVzZXIiOjEsImRhdGUiOiIyMDIwLTA2LTI1VDA0OjIyOjM0LjgwNloiLCJpYXQiOjE1OTMwNTg5NTQsImV4cCI6MTU5MzA2MjU1NH0.43flVheY0GPHp9l4kcSzsSIRlz0xfpZ9seh6PcLuol0','2020-06-24 23:23:07.756'),(8,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiYW1pbGthcmdvbWV6QGhvdG1haWwuZXMiLCJpZFVzZXIiOjEsImRhdGUiOiIyMDIwLTA2LTI1VDA0OjI5OjEzLjE3NFoiLCJpYXQiOjE1OTMwNTkzNTMsImV4cCI6MTU5MzA2Mjk1M30.HXXewl0LDQI4VexE6lD6DJAszSQlbySWyfTcE7MK9yo','2020-06-24 23:29:51.591');
/*!40000 ALTER TABLE `node_access_tokens_expired` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('01afcc6c4931ee51dda50a4d919d67ff4ce5627895e8fed121f761697c1b7f8eb49543c021c96390',1,1,'Personal Access Token','[]',0,'2020-06-16 06:55:25','2020-06-16 06:55:25','2021-06-16 01:55:25'),('0270e994395fc4764fef2b1e9211b4ec6ae2bb0cdecac87809c922bf6f1a0452f243154b1c5c0628',1,1,'Personal Access Token','[]',0,'2020-06-05 05:04:33','2020-06-05 05:04:33','2021-06-05 00:04:33'),('02f7d8ffc8277b1d60a18f6107fcb09211a81c45164dadeb720e3675b01d8c04a9527281c2683cc5',1,1,'Personal Access Token','[]',0,'2020-06-05 05:00:13','2020-06-05 05:00:13','2021-06-05 00:00:13'),('0312c7674a929dc5b603969c1ee06858c5145aeea54f71fc8b1c3f84834906ecdfc680bd51d63f52',1,1,'Personal Access Token','[]',0,'2020-06-05 04:53:39','2020-06-05 04:53:39','2021-06-04 23:53:39'),('0395bfe6fa985477134db7f122013130946572b5bd6e3d4f2c6d33717d79073a2b558db2ce8c135d',1,1,'Personal Access Token','[]',0,'2020-06-05 05:04:32','2020-06-05 05:04:32','2021-06-05 00:04:32'),('04b5e31efc113e261d6b6d3007b38f59efb4cf6152d4e1b3c3953fb3f37acab21cb657354a2ee5f2',1,1,'Personal Access Token','[]',0,'2020-06-05 09:11:27','2020-06-05 09:11:27','2021-06-05 04:11:27'),('04f3e8d8adee8bb0818434f74d08f03ed31b7d788d3d5d7f92d613a69975594184330b41a4cae98d',1,1,'Personal Access Token','[]',0,'2020-06-05 21:13:47','2020-06-05 21:13:47','2021-06-05 16:13:47'),('053dd821fc65528d5dbc039f8f629f0ec8088a4131aefa5ddb205d0b59579ce8f8a2ee00e623ff06',1,1,'Personal Access Token','[]',0,'2020-06-05 03:24:52','2020-06-05 03:24:52','2021-06-04 22:24:52'),('056628ca64be0713de3fea5c60f49813e88b351be84564380498c51810c75e0be63c72670fc76500',1,1,'Personal Access Token','[]',0,'2020-06-04 04:36:41','2020-06-04 04:36:41','2021-06-03 23:36:41'),('05cb4e287c646c4ea981ab186154575e5a3b1b7fa4ea053accdaab565027553559b31032175cb4d3',1,1,'Personal Access Token','[]',0,'2020-06-04 04:15:35','2020-06-04 04:15:35','2021-06-03 23:15:35'),('05efe25ef70eccea718d6ecf69e18abb21a266b816f6cee45790493ea07449de82001046d061962b',1,1,'Personal Access Token','[]',0,'2020-06-04 22:35:29','2020-06-04 22:35:29','2021-06-04 17:35:29'),('06231e5b084c539e9dec7cfc1d1b811f8f24030356bb02acd742f78262e29a792e9f92ce80da0a67',1,1,'Personal Access Token','[]',0,'2020-06-04 03:23:32','2020-06-04 03:23:32','2021-06-03 22:23:32'),('0677be6587fe80ef68611665ee3eb61af6dd040518ec39ee7f3261fb0afca05e17e99200641607e2',1,1,'Personal Access Token','[]',0,'2020-06-05 18:36:18','2020-06-05 18:36:18','2021-06-05 13:36:18'),('074a9a3f034d59fb5b5a8c88455a6725a3e04b248539f72148caf4d15d4f75121fad983725d98189',1,1,'Personal Access Token','[]',0,'2020-06-05 10:19:17','2020-06-05 10:19:17','2021-06-05 05:19:17'),('077cbcd312c6f3cbc1423906a046d3cd5bc1b9d86609d6558e8a38c401d1eeca0466d2cf82b38318',1,1,'Personal Access Token','[]',0,'2020-06-05 00:00:47','2020-06-05 00:00:47','2021-06-04 19:00:47'),('07f68ed4420ee03ad8085100f8c34a837e072906270afe8bc8babee9cd506148b0c5831ec7a0b33c',1,1,'Personal Access Token','[]',0,'2020-06-05 02:53:38','2020-06-05 02:53:38','2021-06-04 21:53:38'),('08000bb8c5789bd0a8e07ec25b5386587a869830681a335eafc30c267d30d277ca6f3daf1f6417e8',1,1,'Personal Access Token','[]',0,'2020-06-05 02:09:39','2020-06-05 02:09:39','2021-06-04 21:09:39'),('0914bcefa5159547e710d866f280117546366283cf7a0e1d4b674bb625decb56993284c19e77a857',1,1,'Personal Access Token','[]',0,'2020-06-05 02:59:47','2020-06-05 02:59:47','2021-06-04 21:59:47'),('0a02356230be8e74748c48d03d79f7fbd7b357a1f30ee70c96a4c363c2ffd29d0b647b3a23bdade0',1,1,'Personal Access Token','[]',0,'2020-06-05 02:19:38','2020-06-05 02:19:38','2021-06-04 21:19:38'),('0a8a929ab9e2e436a67c6011b8bd9872d22237ecbcaf2521017082589043850c13ab703682ea169c',1,1,'Personal Access Token','[]',0,'2020-06-05 04:22:37','2020-06-05 04:22:37','2021-06-04 23:22:37'),('0a8c76095292e1b3187dfdb968162b6328b28fc48f96bbbd60047d166fadfe4b22173a6a032463ee',1,1,'Personal Access Token','[]',0,'2020-06-05 21:35:12','2020-06-05 21:35:12','2021-06-05 16:35:12'),('0b1e950156898c42b3b32d9998b4704b0bf6c0d7ddb0f552eacaf2056c12ecf10947b9fcc6265ad3',1,1,'Personal Access Token','[]',0,'2020-06-05 10:33:44','2020-06-05 10:33:44','2021-06-05 05:33:44'),('0b3bad5951eb2a08f8da985e6b5869d23cf22edb033214eb3f0b84e85981c205693fe6f7d4cf0c4a',1,1,'Personal Access Token','[]',0,'2020-06-05 00:04:06','2020-06-05 00:04:06','2021-06-04 19:04:06'),('0dd9176d0ed3482f593797bce739e8c383c268a461507427472c843846d107f6009293a65e450c11',1,1,'Personal Access Token','[]',0,'2020-06-04 22:21:30','2020-06-04 22:21:30','2021-06-04 17:21:30'),('0e69882dd7fc95195fb4d49971c3be4ad0877b3fb700e5d97ce10713671729536167cfc58a855063',1,1,'Personal Access Token','[]',0,'2020-06-05 10:14:23','2020-06-05 10:14:23','2021-06-05 05:14:23'),('0e88585ace2a7e907c800ef76f05b10d466b8cd533910ebae4c1e9c5e99514c700f93e00e4593347',1,1,'Personal Access Token','[]',0,'2020-06-09 00:05:10','2020-06-09 00:05:10','2021-06-08 19:05:10'),('0f5c8500bdde11ec05ec3748ec204dcf0c489bf67536b46eb466971b3e7e75b3c0db4be3c79cd1d8',1,1,'Personal Access Token','[]',0,'2020-06-05 09:47:04','2020-06-05 09:47:04','2021-06-05 04:47:04'),('10e86e36dd4f4eca9f4efcc3fbd040ea295593810e4d6138ddeb47922a361c344c6679b09af7238d',1,1,'Personal Access Token','[]',0,'2020-06-05 02:37:57','2020-06-05 02:37:57','2021-06-04 21:37:57'),('11b0f8d44a1b0a75079c52b19da112d9057e40cde499268923c31680a83a29742e3e54f76bec6931',1,1,'Personal Access Token','[]',0,'2020-06-05 02:27:03','2020-06-05 02:27:03','2021-06-04 21:27:03'),('127980f7ae5e3bbf51c4e21b4ff53fbdaf0801227d2d37624e8f03777f3e597924edaf4b264e34d6',1,1,'Personal Access Token','[]',0,'2020-06-05 10:06:29','2020-06-05 10:06:29','2021-06-05 05:06:29'),('132a0a2c9b11c1f5f056c0c75ba1c23686e1595bbe2f32a528cd1f60ff9d7e0ada3ff03d9cf7c902',1,1,'Personal Access Token','[]',0,'2020-06-05 00:56:53','2020-06-05 00:56:53','2021-06-04 19:56:53'),('150671313e3c1a6da908fbd9fd1320d03cca182dc0395c3f9ab8af72cfe2bdcb9b997fd2591271a0',1,1,'Personal Access Token','[]',0,'2020-06-05 02:40:01','2020-06-05 02:40:01','2021-06-04 21:40:01'),('164d8b412751546f2ad79621a8e402f48fdc789c8e0a30d04eac7ed859d71995d52a725c43170c4d',1,1,'Personal Access Token','[]',0,'2020-06-09 00:15:48','2020-06-09 00:15:48','2021-06-08 19:15:48'),('17639341afc8fb1e4e3be3d53e2da6fa06699e7b25646e8c63ef748290217e81df648e0614250627',1,1,'Personal Access Token','[]',0,'2020-06-04 03:23:01','2020-06-04 03:23:01','2021-06-03 22:23:01'),('17856f8cbcafdc85cd4f4730b206511fafa6374e57611e4deb9f8a17320ebf698803c4cbbab161df',1,1,'Personal Access Token','[]',0,'2020-06-05 00:57:20','2020-06-05 00:57:20','2021-06-04 19:57:20'),('182e08175a6b9daaf3def091e039619189ad21ecc224a4e610bd499f22870ed31832be37159bb0a1',1,1,'Personal Access Token','[]',0,'2020-06-04 22:48:01','2020-06-04 22:48:01','2021-06-04 17:48:01'),('18b65c4f5dae7310b21454c63b15853e82fa03ca4935649b67439cf55648feb9e6ade3b7aea3aa06',1,1,'Personal Access Token','[]',0,'2020-06-05 00:18:09','2020-06-05 00:18:09','2021-06-04 19:18:09'),('19e5b18e6037fb8b9f8fa20acbe83c8dcea6dcaa9caefc40cc046dfe76df437aba094e59e5e5382d',1,1,'Personal Access Token','[]',0,'2020-06-05 02:37:08','2020-06-05 02:37:08','2021-06-04 21:37:08'),('1bebbba550796eb90c2ae3c772479bff68e37fa554eb718dc5ae47a251afce562e57d0fb79166174',1,1,'Personal Access Token','[]',0,'2020-06-05 18:55:33','2020-06-05 18:55:33','2021-06-05 13:55:33'),('1c9b30c5d5d046219aeda3abec9bd682b2bc2d15b675c14b94c6e94e98aca9030fddc4434aa8c9c4',1,1,'Personal Access Token','[]',0,'2020-06-05 08:40:13','2020-06-05 08:40:13','2021-06-05 03:40:13'),('1c9de2fd508f487f0498b859d23cd9fa7d0c90fbab721b223ca0e41cad7f2d528f1c53f566ebad5b',1,1,'Personal Access Token','[]',0,'2020-06-04 22:47:32','2020-06-04 22:47:32','2021-06-04 17:47:32'),('1d24357d052e98680b4a27a345f854178feff5aede455cc10a3477fb85146325479b470a0cc3afd5',1,1,'Personal Access Token','[]',0,'2020-06-04 22:45:49','2020-06-04 22:45:49','2021-06-04 17:45:49'),('1da102c3d86f0f1da3d8111531b27595018735b735a6996d61a7265c33dbdee2ebb1649a84a5c632',1,1,'Personal Access Token','[]',0,'2020-06-04 03:30:32','2020-06-04 03:30:32','2021-06-03 22:30:32'),('1debc8830703f4e43768971631f23aa4f8a79c22e9098e325d1007c9c4d096dfaac97767598fc9a6',1,1,'Personal Access Token','[]',0,'2020-06-05 04:33:22','2020-06-05 04:33:22','2021-06-04 23:33:22'),('1dfd56c5997da7bf6480e9249b2c114ee88c34ac418765eb1372d6d4f8311c358018bcf09fa48726',1,1,'Personal Access Token','[]',0,'2020-06-05 19:48:37','2020-06-05 19:48:37','2021-06-05 14:48:37'),('1e4ef7f6f77dcc1210372fd899c984fa93f80194bb997270fdca67148dee285de377af93c45222b6',1,1,'Personal Access Token','[]',0,'2020-06-05 19:56:22','2020-06-05 19:56:22','2021-06-05 14:56:22'),('1f32af7475d92b7887b95a05e7fee490a7990726fad4c56f723bac33efe146966e716f3c8e921afc',1,1,'Personal Access Token','[]',0,'2020-06-04 23:59:46','2020-06-04 23:59:46','2021-06-04 18:59:46'),('202a6d543efad41ed406829ff849dd1a0af0798c2e70046489acccc16cb916fdcd4f2d65751b01ca',1,1,'Personal Access Token','[]',0,'2020-06-05 00:06:16','2020-06-05 00:06:16','2021-06-04 19:06:16'),('2143cc5b4639908d8cc16fbb06201ce39cabd6b2a8c72cf736bdae67bc26128b894b5978fb2dfd7f',1,1,'Personal Access Token','[]',0,'2020-06-05 02:53:20','2020-06-05 02:53:20','2021-06-04 21:53:20'),('217adb34b77522c0d3488fca8108101eb8941b341110dbcdb513702bb15d09a5b77023707151e7a3',1,1,'Personal Access Token','[]',0,'2020-06-05 09:12:39','2020-06-05 09:12:39','2021-06-05 04:12:39'),('22bfbb385b3f8eb4db5cf2eb660e7e3944d1a6250b00c850deee967d8758873be18d529c1a4af972',1,1,'Personal Access Token','[]',0,'2020-06-05 04:30:28','2020-06-05 04:30:28','2021-06-04 23:30:28'),('22de1f38f469bc097f6f534cce1212242d017d0772e01756a8f1ae5f9d43cea1fccd063127567b61',1,1,'Personal Access Token','[]',0,'2020-06-05 03:47:39','2020-06-05 03:47:39','2021-06-04 22:47:39'),('23d78bda3d30c3e32742aa3ba69a6cbc483d636c918a5b29cfb53745eea1f1dcdc30acc46f117a41',1,1,'Personal Access Token','[]',0,'2020-06-05 03:00:51','2020-06-05 03:00:51','2021-06-04 22:00:51'),('240ed959fbd64ff9b8b71c3e780acf1bff1a6a145206fe58199cbedf7e82fcb11ca15454af04897b',1,1,'Personal Access Token','[]',0,'2020-06-05 02:19:37','2020-06-05 02:19:37','2021-06-04 21:19:37'),('24b505f0d2ebb968b7e27f1ac9a1d3f206d54f39e17ada88a67c80fd50d51d77db21dc82bb32f043',1,1,'Personal Access Token','[]',0,'2020-06-05 04:35:22','2020-06-05 04:35:22','2021-06-04 23:35:22'),('25ab474ee63c457eb1b8a171a4da880e539dc8526a1732041ef5a595ab8879c3e292b3ddf8ed11aa',1,1,'Personal Access Token','[]',0,'2020-06-05 18:38:38','2020-06-05 18:38:38','2021-06-05 13:38:38'),('27125e58cd3d2a7cf994b368ca7a7388a022b7f43a53d4a64358cdeeded83083bc8728be11049666',1,1,'Personal Access Token','[]',0,'2020-06-05 03:10:22','2020-06-05 03:10:22','2021-06-04 22:10:22'),('27bfe1604038ea5e41cd07651aeeb5d1360cfa6889589bf602bf4aa0f26b2352f3e00ccd2d944427',1,1,'Personal Access Token','[]',0,'2020-06-05 02:57:27','2020-06-05 02:57:27','2021-06-04 21:57:27'),('28f4348efc82a691a2cdbe8c5ae9f0c853eaa3a5130f0223ce39522a2ca8bbd9ddf092fe2b3bafe5',1,1,'Personal Access Token','[]',0,'2020-06-05 18:38:40','2020-06-05 18:38:40','2021-06-05 13:38:40'),('2972fc8e36ba799c49cbdf7947b00cd8ec221520b63276bfd0b03ca024121b7a32a1fabe42c9b9f9',1,1,'Personal Access Token','[]',0,'2020-06-05 04:51:46','2020-06-05 04:51:46','2021-06-04 23:51:46'),('299ef8a1348b4173e05d11df31b359e5cb90f61082d77ba167c02d79243bdc5e978379064952ff7b',1,1,'Personal Access Token','[]',0,'2020-06-05 08:42:07','2020-06-05 08:42:07','2021-06-05 03:42:07'),('2b3877a33f02914351d702a82e854650784358e77103cbf519869ba4ef75489fd280a7d673533c10',1,1,'Personal Access Token','[]',0,'2020-06-05 04:35:23','2020-06-05 04:35:23','2021-06-04 23:35:23'),('2bcc58c9696f19d94451e747197bc5d6257db06fc1ca4ed24ab8018d99b1b1b4625ecffe1729c244',1,1,'Personal Access Token','[]',0,'2020-06-05 18:52:45','2020-06-05 18:52:45','2021-06-05 13:52:45'),('2de3f2ef1e31b64af4a9b77f2d51f4ed3ee091ac655be55f8ad4bb7221840e1c0e3f37c5e0eaa7f5',1,1,'Personal Access Token','[]',0,'2020-06-05 10:12:27','2020-06-05 10:12:27','2021-06-05 05:12:27'),('2eff4f6dc9c9fd30d6e11c47ab3a015484ad618ba5adc45e51d7398b78e9cbd5e483466df243e587',1,1,'Personal Access Token','[]',0,'2020-06-05 18:27:02','2020-06-05 18:27:02','2021-06-05 13:27:02'),('2f70443993a6617baba6da95ae9527cc3c2ccecb250cdb76b30f895f2db900e734008c301961ef5e',1,1,'Personal Access Token','[]',0,'2020-06-05 05:01:38','2020-06-05 05:01:38','2021-06-05 00:01:38'),('2f7d67d5fa878052e93c10c7d81a0f382070c27bf1cc05506f2cc51f37283fed03c4b7c0f005e45b',1,1,'Personal Access Token','[]',0,'2020-06-05 09:59:14','2020-06-05 09:59:14','2021-06-05 04:59:14'),('300a54c670fc44bfce4ede7878ec2de2e1dbd65653cc50e7c872093b06c70b0c7dc37a7f8fc057a3',1,1,'Personal Access Token','[]',0,'2020-06-05 18:58:37','2020-06-05 18:58:37','2021-06-05 13:58:37'),('30fab2ac69a925ca53c67450ac43ed67bc67c6d140ee2d52d7d49a01cd5749129720a91bf912a95c',1,1,'Personal Access Token','[]',0,'2020-06-05 21:26:36','2020-06-05 21:26:36','2021-06-05 16:26:36'),('313015e758f9dbe036df75823b16a1c772727a25ed1bdcf4ce5ebb1e68ece0189d6c9cb9c7c9a10b',1,1,'Personal Access Token','[]',0,'2020-06-04 03:23:31','2020-06-04 03:23:31','2021-06-03 22:23:31'),('3181ea2cd7ba7d430e8906630bd2f407920a2f20c5d01c727859663b0cd2c07917ffb537f31257b8',1,1,'Personal Access Token','[]',0,'2020-06-05 09:47:55','2020-06-05 09:47:55','2021-06-05 04:47:55'),('3366a65e0e57330a5db355816d22cf99a4667d71a7d106fdbdb07c818c1bd8715e8c430c4c4c154d',1,1,'Personal Access Token','[]',0,'2020-06-05 00:02:55','2020-06-05 00:02:55','2021-06-04 19:02:55'),('33a2b7549bbc78b352bd71a2beb6df9bd4eff8472b5fe28c9e2d7544d4f1fc46e7e2be5232e9260c',1,1,'Personal Access Token','[]',0,'2020-06-05 03:53:00','2020-06-05 03:53:00','2021-06-04 22:53:00'),('33d334fa687509cdfa0772f51d470be1f335702c1d6f90596e3a0c1ab66eea820cc6b82785e9c28b',1,1,'Personal Access Token','[]',0,'2020-06-04 04:33:54','2020-06-04 04:33:54','2021-06-03 23:33:54'),('3427b9f0ca566720026fba27a6cc2d5cf0460cbe1fc647346e224e19e28cc5c9bc9df47347bc9226',1,1,'Personal Access Token','[]',0,'2020-06-05 18:52:43','2020-06-05 18:52:43','2021-06-05 13:52:43'),('348021677ce35bd1b22ccf26aeb28c64646d2589b9355cb040609ac2afefe8ba74924b36021655e3',1,1,'Personal Access Token','[]',0,'2020-06-05 04:33:24','2020-06-05 04:33:24','2021-06-04 23:33:24'),('35957e2e1a9723494d36c168234ac9498c32f41055343c96ffd2077ae62f4058776a037c1ef87597',1,1,'Personal Access Token','[]',0,'2020-06-16 07:10:18','2020-06-16 07:10:18','2021-06-16 02:10:18'),('375f58504f93a8e6cb04fdd84d9f1488a479bb70d10e0767ccbf6c1793de953a70c48984b2b55d3d',1,1,'Personal Access Token','[]',0,'2020-06-08 23:53:47','2020-06-08 23:53:47','2021-06-08 18:53:47'),('381313fb14ed9fe0b8754bfdec419e9ebb1427b83ca7e4c383af0dd17eac120dc567cfd15869fe33',1,1,'Personal Access Token','[]',0,'2020-06-05 10:33:58','2020-06-05 10:33:58','2021-06-05 05:33:58'),('386df9b15cdb3b59eaca3aec60a4761a03cc630e7a4ec0b7646296305079c5419dd748a61603c4ad',1,1,'Personal Access Token','[]',0,'2020-06-05 03:08:12','2020-06-05 03:08:12','2021-06-04 22:08:12'),('3933145f4ad3d826eb9fe9c032b0c225a2e4bcafc56a3871cc459da97bba3d477e101f572088a8ba',1,1,'Personal Access Token','[]',0,'2020-06-09 00:05:02','2020-06-09 00:05:02','2021-06-08 19:05:02'),('39eb9c681cffbf2edaeec1c60937ca17270b34aa5371ffb7fca943cb81be07f7fb49e716bc5f9d94',1,1,'Personal Access Token','[]',0,'2020-06-05 02:38:58','2020-06-05 02:38:58','2021-06-04 21:38:58'),('3a66713d640cd7873ec906cacbec39779465e9e5450ae703cb69ba5480b1c6e4ac93a2639d1115d9',1,1,'Personal Access Token','[]',0,'2020-06-04 22:41:04','2020-06-04 22:41:04','2021-06-04 17:41:04'),('3c1fc180cdb58517583363abfcb9fd4246ea1eabd981ed7153a16ef5ac13f0d9e7548af5d5b80bc0',1,1,'Personal Access Token','[]',0,'2020-06-05 10:33:43','2020-06-05 10:33:43','2021-06-05 05:33:43'),('3cfb34a0fffb4e1f3f7b972148204383be80fdae1b786a258261ecef4682756976de2328e29106de',1,1,'Personal Access Token','[]',0,'2020-06-04 22:45:46','2020-06-04 22:45:46','2021-06-04 17:45:46'),('3f27867f1968a33c9746831b738f0d3431b289263c9c79631a2b535bf22279b33e1291584083efa8',1,1,'Personal Access Token','[]',0,'2020-06-05 10:14:24','2020-06-05 10:14:24','2021-06-05 05:14:24'),('3f6e323588a81dd0be410c64c3797d6f8e0b62970e53b4cc3f253f2bcd2125a1e08d1d67e0cbdb02',1,1,'Personal Access Token','[]',0,'2020-06-05 04:51:45','2020-06-05 04:51:45','2021-06-04 23:51:45'),('3f77d31bfe15b5e4ec0072b2596224dfeeb44662b60429a64bb297f163db5180eeecdeb6ba760a36',1,1,'Personal Access Token','[]',0,'2020-06-05 03:24:51','2020-06-05 03:24:51','2021-06-04 22:24:51'),('4147c6d6ea660b418fe6a6b7a4b24fa681b9e9a6e8388035e21c44593668b59fbd4f1fa1d9b65820',1,1,'Personal Access Token','[]',0,'2020-06-05 09:47:54','2020-06-05 09:47:54','2021-06-05 04:47:54'),('41536fdc9c3230f5e3a9b821b2b00ee9a3e595f9bfb15544610034fa7125569ff8f3f8bd77afc713',1,1,'Personal Access Token','[]',0,'2020-06-05 09:59:14','2020-06-05 09:59:14','2021-06-05 04:59:14'),('42657a7c7286d629fd525008c7451579225edeb10e1ad7e9b7826e085b5a539c0920a6f82ad9ceea',1,1,'Personal Access Token','[]',0,'2020-06-05 02:45:18','2020-06-05 02:45:18','2021-06-04 21:45:18'),('42a90fbebbd60842b9d1dd75d5ec2bd34495775805d73cc225bcb26db690c189e1a09beccbdeae78',1,1,'Personal Access Token','[]',0,'2020-06-04 05:26:25','2020-06-04 05:26:25','2021-06-04 00:26:25'),('42f4f1811caed5f4f51a36762f3bba85702c7e735fee473c3caadd89f7071e7f2ba0f5014b370084',1,1,'Personal Access Token','[]',0,'2020-06-05 19:37:08','2020-06-05 19:37:08','2021-06-05 14:37:08'),('45bc5bb2170070a435442120a99f68ceed1bd38ebc420dbce324e2cf6f589e1eba8db4b9c02b5c32',1,1,'Personal Access Token','[]',0,'2020-06-05 10:23:27','2020-06-05 10:23:27','2021-06-05 05:23:27'),('48eac83f485315b6d58767d04fe05e97e545536327010d0de91f42133fe937c06be1694d4fc4a66f',1,1,'Personal Access Token','[]',0,'2020-06-05 08:02:52','2020-06-05 08:02:52','2021-06-05 03:02:52'),('490d12980182c29a1c00a8827c32953c2aa30a57779b937dd57ef91892a2c530613c878deb67ae09',1,1,'Personal Access Token','[]',0,'2020-06-05 21:13:46','2020-06-05 21:13:46','2021-06-05 16:13:46'),('491c7242360970f6bc6a1e107fe26de55ce762d4477726a1ea53670c7fbc1bbbd9aba7519d8255a0',1,1,'Personal Access Token','[]',0,'2020-06-05 02:26:11','2020-06-05 02:26:11','2021-06-04 21:26:11'),('498afad87fbb42398db845ab9e4f4f3180d1676d837e36c027e395dd72a34b1bc99b58862130bc49',1,1,'Personal Access Token','[]',0,'2020-06-05 00:57:21','2020-06-05 00:57:21','2021-06-04 19:57:21'),('49b4c14f961b2ad776f433cee5e437787d986efb6cca8d508caf511c4f7baa790aad3567bd0bf3fc',1,1,'Personal Access Token','[]',0,'2020-06-05 10:24:17','2020-06-05 10:24:17','2021-06-05 05:24:17'),('4d0648e96c6b987c04115c9a4cbe82b69fdc19231f7f64a5503613d01964b33ce6fd00e9e659abc6',1,1,'Personal Access Token','[]',0,'2020-06-04 22:35:26','2020-06-04 22:35:26','2021-06-04 17:35:26'),('4d72127abc47826ed65753be8d4653a96d3824e2f4b9def1fda7943bee0cd0bfc1ddaebd487546cf',1,1,'Personal Access Token','[]',0,'2020-06-05 19:37:09','2020-06-05 19:37:09','2021-06-05 14:37:09'),('4e3cf3f7f33a08bc6e8a200db9565d08a33887a76584213db9fc888afe584979c0717b399eb6fbb5',1,1,'Personal Access Token','[]',0,'2020-06-05 04:53:51','2020-06-05 04:53:51','2021-06-04 23:53:51'),('501675efd4a3f906aff71173902c581e4d4cb68c5edc37bd02440bad9dd0cc4ef9df572410bde3c8',1,1,'Personal Access Token','[]',0,'2020-06-05 09:25:51','2020-06-05 09:25:51','2021-06-05 04:25:51'),('504369db25c7e46228475580ecafba98e84955bbbcf999af72132bc2adaaf77dfa65b1f6e0aba9d4',1,1,'Personal Access Token','[]',0,'2020-06-05 00:56:54','2020-06-05 00:56:54','2021-06-04 19:56:54'),('514e50454db68f40113e2e58dae18beb4fb2174101a1a4393361aad5691057afd40efcd0c528d2b7',1,1,'Personal Access Token','[]',0,'2020-06-04 03:30:33','2020-06-04 03:30:33','2021-06-03 22:30:33'),('51a699bba94399437d3ea4c0cb9b22767b51fce55eae9f191b195554ef0857a6851ecc3ff5d5b507',1,1,'Personal Access Token','[]',0,'2020-06-05 21:34:36','2020-06-05 21:34:36','2021-06-05 16:34:36'),('51eabe9db6ec57ead2185ff410d65b74c0a2c55282b6972beb449fb717b86c36edaf2b1dc270f43d',1,1,'Personal Access Token','[]',0,'2020-06-05 18:41:27','2020-06-05 18:41:27','2021-06-05 13:41:27'),('51ecbdc0105a34aff4e31488c39e3ee08b9b421a68375bfc44d8ac5e6803fa6558ed72b76745ef97',1,1,'Personal Access Token','[]',0,'2020-06-05 03:01:08','2020-06-05 03:01:08','2021-06-04 22:01:08'),('51f93175e9384955f8330b35f7b2224cbdc502d6ca6a3551fa054aa870a226bcab69ce371706f3a6',1,1,'Personal Access Token','[]',0,'2020-06-05 18:55:32','2020-06-05 18:55:32','2021-06-05 13:55:32'),('530b748d10aab82d0e8cd0d6fe31a1578ac126a5b9413a17208edc8dce4a552aeedd329ba282d56f',1,1,'Personal Access Token','[]',0,'2020-06-16 06:56:26','2020-06-16 06:56:26','2021-06-16 01:56:26'),('54325bbbd75ad68689d895f657aa8bbe0168a9f5d250b3e3f2b88073ecee4beea6fbbaa403489d6b',1,1,'Personal Access Token','[]',0,'2020-06-05 08:02:53','2020-06-05 08:02:53','2021-06-05 03:02:53'),('5453d5c368414445267da0531e4cb19f4d67ff0c9d60b35216439cb875caca3db30513f73db7aa17',1,1,'Personal Access Token','[]',0,'2020-06-16 07:03:52','2020-06-16 07:03:52','2021-06-16 02:03:52'),('5570b10cf835848ac066c16f8f1d59a5c1c7bc08e33b2ce2890f2e0fbfd1414fe706a6c9631600f5',1,1,'Personal Access Token','[]',0,'2020-06-05 00:16:24','2020-06-05 00:16:24','2021-06-04 19:16:24'),('558e9cf47c3d26a08ed7e4f3f6d7df5c8c44734c265d0c0b67edc16c676f6d318272294c0b3f2c35',1,1,'Personal Access Token','[]',0,'2020-06-05 02:57:28','2020-06-05 02:57:28','2021-06-04 21:57:28'),('56854dd32b98a1bc72e9f6966120083a9f6c40d04f2f50ce9c450a75b6df33d6ab497463091c1328',1,1,'Personal Access Token','[]',0,'2020-06-04 22:41:07','2020-06-04 22:41:07','2021-06-04 17:41:07'),('570e67700f267a237fba2d4408e8264737f927781029f86421aeca7bd29fce29bc34db01b4816091',1,1,'Personal Access Token','[]',0,'2020-06-04 05:26:26','2020-06-04 05:26:26','2021-06-04 00:26:26'),('5745e9525b7f9fbcf1da6f6441ef893d16aef498f4e911a1082ada680634d992603b6d4524873007',1,1,'Personal Access Token','[]',0,'2020-06-05 18:41:12','2020-06-05 18:41:12','2021-06-05 13:41:12'),('593d1cc02d3550f48efb25a324cc19ded71f6a1af65676099f17ca15a25c069b5469dbb96a9f4bd9',1,1,'Personal Access Token','[]',0,'2020-06-05 02:09:39','2020-06-05 02:09:39','2021-06-04 21:09:39'),('5a8493497269941029894a4bf11317153dec166546f1b3d124a488ce0796336926c9de491c62e2a7',1,1,'Personal Access Token','[]',0,'2020-06-05 00:07:54','2020-06-05 00:07:54','2021-06-04 19:07:54'),('5be0312a512b33192cf0ddee6a21457f5143e5aad27289852f15f072ed6c73544b2dd2d36a8e7689',1,1,'Personal Access Token','[]',0,'2020-06-04 05:42:03','2020-06-04 05:42:03','2021-06-04 00:42:03'),('5c98da6254216349b4990bff9c41e781f4146683e56cad4f2d05977fa6c9e885d79792215afe9222',1,1,'Personal Access Token','[]',0,'2020-06-09 00:05:03','2020-06-09 00:05:03','2021-06-08 19:05:03'),('5e6541ce1b5995d35e62177e27d8b655751104a4bdb0272bb86ef5dae9e4479b5601228d02dc9f14',1,1,'Personal Access Token','[]',0,'2020-06-03 22:00:18','2020-06-03 22:00:18','2021-06-03 17:00:18'),('5e7ee804416a721ca457619b0fd61b8b45fd327f4177c55ddbd1448ff67ed8f0c50169e68001942d',1,1,'Personal Access Token','[]',0,'2020-06-09 00:05:09','2020-06-09 00:05:09','2021-06-08 19:05:09'),('5f26427e959568d47acdf5e5de017a455576a7dbdba9935fc997e841670c55eab78c327928ff7d9c',1,1,'Personal Access Token','[]',0,'2020-06-05 02:33:26','2020-06-05 02:33:26','2021-06-04 21:33:26'),('5fc43c091b86f58010f205339789abba710144b1d2ecbc1143262387dc782337cf9c13d89e0e2732',1,1,'Personal Access Token','[]',0,'2020-06-05 10:33:58','2020-06-05 10:33:58','2021-06-05 05:33:58'),('5ffa7c6a1e17910c1cac7d317154b2e155a699fdcbb3b215b07a73c37ef1e089de72928ec55419dc',1,1,'Personal Access Token','[]',0,'2020-06-04 05:40:29','2020-06-04 05:40:29','2021-06-04 00:40:29'),('62f9e44dc55f6ea7f1cd54f15d4c86e02254bd766adc81090044a40cd71143b537b89a61a2b66f34',1,1,'Personal Access Token','[]',0,'2020-06-05 04:51:40','2020-06-05 04:51:40','2021-06-04 23:51:40'),('642460e0635b22fc8f0cb62ceec010abcd1287c9d11bb227037853c391fa96f06aca63564e4b4521',1,1,'Personal Access Token','[]',0,'2020-06-05 03:05:44','2020-06-05 03:05:44','2021-06-04 22:05:44'),('650758d2c575b09df1b087d8f555b1ca3668ee32d523e56ca5e8731cede24167da110d56483acd1e',1,1,'Personal Access Token','[]',0,'2020-06-05 09:12:38','2020-06-05 09:12:38','2021-06-05 04:12:38'),('65bcc41790d7c62858e3c0687f260b6ba2853feff22dd7a186476b28ee00093a8ef21a5b95abb975',1,1,'Personal Access Token','[]',0,'2020-06-04 23:59:46','2020-06-04 23:59:46','2021-06-04 18:59:46'),('6607bfeb0f4f9a8cb311a3fcd6bbe769c0fdc8a46ac9128c66a07d3e24195d9b50e6b5e169691079',1,1,'Personal Access Token','[]',0,'2020-06-05 04:53:37','2020-06-05 04:53:37','2021-06-04 23:53:37'),('667090b43dddcb358abc65f7095576e882fd099622554713073b4d740e1573d53f126ce5ac8b593d',1,1,'Personal Access Token','[]',0,'2020-06-05 10:26:28','2020-06-05 10:26:28','2021-06-05 05:26:28'),('6733ed929ad110d89dc4c65c0d3e18ba126b4ab48372109c817e3e154a56f87cf35ee41d12245b67',1,1,'Personal Access Token','[]',0,'2020-06-05 18:36:17','2020-06-05 18:36:17','2021-06-05 13:36:17'),('6834a99e4a122a37f5c7a373163cca38763e760751a2bb655fd86215c1e1052fb4ffbce39935236b',1,1,'Personal Access Token','[]',0,'2020-06-09 00:07:13','2020-06-09 00:07:13','2021-06-08 19:07:13'),('69fcf019578ca3db9f4a3627db1839e34efd4467f4838fe2628c55eec56de3e8ef8bced7808ac590',1,1,'Personal Access Token','[]',0,'2020-06-05 02:52:34','2020-06-05 02:52:34','2021-06-04 21:52:34'),('6b163c293fa9288124e7c39c0c91663192d04c7137525568048c2c32125da6a7bd5ae8e89939dd8e',1,1,'Personal Access Token','[]',0,'2020-06-05 19:33:06','2020-06-05 19:33:06','2021-06-05 14:33:06'),('6b6f181085897c49f39801ea1e20ee081efb49bbd40cab01c8a1b5df9850f37fbebcd30934047fc9',1,1,'Personal Access Token','[]',0,'2020-06-05 00:16:23','2020-06-05 00:16:23','2021-06-04 19:16:23'),('6bd67db1ff649657eba002bea024341a58a19e6b9172da86b6b15267c2c48fdb03be54317d819061',1,1,'Personal Access Token','[]',0,'2020-06-05 03:48:41','2020-06-05 03:48:41','2021-06-04 22:48:41'),('6c08ba673153ff0fb4cfbbbec69bab626445f87cd48e5a272e04d9a74563c72e5b217212e14730d8',1,1,'Personal Access Token','[]',0,'2020-06-05 18:56:11','2020-06-05 18:56:11','2021-06-05 13:56:11'),('6cfcb356b93edb016996465821dde31915eae76f95c0149fdc2fe06509ed36a69e3d8e2b958d4cf4',1,1,'Personal Access Token','[]',0,'2020-06-05 02:53:50','2020-06-05 02:53:50','2021-06-04 21:53:50'),('6d9d77bcf5bb6766c9e6f182db18cebbe797349874901c9b4bef9b667ad3a4a88fdff5a9b34dbd48',1,1,'Personal Access Token','[]',0,'2020-06-08 23:56:59','2020-06-08 23:56:59','2021-06-08 18:56:59'),('6daa17073959212b917b5b563c7ce6f6c52a7e1533580a4e7710b047535c8dccf80b3093d41f2b34',1,1,'Personal Access Token','[]',0,'2020-06-05 02:27:04','2020-06-05 02:27:04','2021-06-04 21:27:04'),('6dba3becccc14b08445ebdd315d85f83ec4920ac2bf3468ba230d96b4a43a7944b5ac7be6f8757b0',1,1,'Personal Access Token','[]',0,'2020-06-04 03:22:26','2020-06-04 03:22:26','2021-06-03 22:22:26'),('6fc7bf6544eb1dcbca0b83e02d8c452be820fc487f19d83c56d28a9f9bfcf5406bf1c66f089638a8',1,1,'Personal Access Token','[]',0,'2020-06-05 19:40:19','2020-06-05 19:40:19','2021-06-05 14:40:19'),('70175977c7de3a08a7f554cf19778e88aa061ce3dbbdb99593618e231a8201ba39f3c7540d588ece',1,1,'Personal Access Token','[]',0,'2020-06-04 02:32:03','2020-06-04 02:32:03','2021-06-03 21:32:03'),('706ec11257d2dd5ff4a28ae61e7e3532e22ce67d830a023093214a1bf31f33ba772043a56c65db02',1,1,'Personal Access Token','[]',0,'2020-06-05 03:55:58','2020-06-05 03:55:58','2021-06-04 22:55:58'),('713e4c228afb4d783fc3280c64fdf2bb612b57b9244eb9d6b23a97dce9ec300f56bee9ba6ec15a93',1,1,'Personal Access Token','[]',0,'2020-06-05 03:00:52','2020-06-05 03:00:52','2021-06-04 22:00:52'),('7212fdbb3d2588191d89efd68a8e7908bd73a0b0c496149c9a5f7c68a81fa9519c470290eb197863',1,1,'Personal Access Token','[]',0,'2020-06-05 03:46:19','2020-06-05 03:46:19','2021-06-04 22:46:19'),('7262abe2f51b148a20fecfcb8b33933316ac97b4c4d52b019a884b57f173695f7a2470f970705393',1,1,'Personal Access Token','[]',0,'2020-06-05 02:36:02','2020-06-05 02:36:02','2021-06-04 21:36:02'),('729e46e19475cc41b1d7b42089f12350210a5e1f2cdadd810fdae98cbc5232d98eba272b572fc28c',1,1,'Personal Access Token','[]',0,'2020-06-05 09:47:03','2020-06-05 09:47:03','2021-06-05 04:47:03'),('73792cda0b0795a141d2e86dce945d67efee80cb9a5fba4746f9875f650e92156f70130c93f3c602',1,1,'Personal Access Token','[]',0,'2020-06-05 18:58:38','2020-06-05 18:58:38','2021-06-05 13:58:38'),('762f76e1e01fae9d1bd89743bf64c2ab51e5aeff9636f25bac840b8786235bef742d9cbcfd517859',1,1,'Personal Access Token','[]',0,'2020-06-05 03:54:12','2020-06-05 03:54:12','2021-06-04 22:54:12'),('770a9a6807bf26a595c0168c4804c7e3624152b21cf90d8df337b92862382dee37af25955a2a849b',1,1,'Personal Access Token','[]',0,'2020-06-05 03:52:40','2020-06-05 03:52:40','2021-06-04 22:52:40'),('78c73911dd624efcaa4a8badd23e7ec7f4717758ed2c0c468e45d77a56b7048d444f56a4f9aced78',1,1,'Personal Access Token','[]',0,'2020-06-05 03:05:43','2020-06-05 03:05:43','2021-06-04 22:05:43'),('7984193abc9dc656cd4a2def071bc8b112fc10c32e3f38181e99f8c76495cf5476da45c0cc707461',1,1,'Personal Access Token','[]',0,'2020-06-05 02:55:32','2020-06-05 02:55:32','2021-06-04 21:55:32'),('7ac995873f22c086d28efe203902e30dc899bf14737859ccd668ce649913368d8a39162b7a389965',1,1,'Personal Access Token','[]',0,'2020-06-05 09:04:02','2020-06-05 09:04:02','2021-06-05 04:04:02'),('7b1e53e0e5a06697a17215aaefdc7a52a3dc9b984f3df6517fb9c382ccb05c16b2c87f14d8c4df66',1,1,'Personal Access Token','[]',0,'2020-06-05 08:31:09','2020-06-05 08:31:09','2021-06-05 03:31:09'),('7bcc4b6b6980ca006f860ed45a63ac5b299ff248cd883a0438ab2296a7a375f318ea2e6d7ec5d467',1,1,'Personal Access Token','[]',0,'2020-06-05 09:23:37','2020-06-05 09:23:37','2021-06-05 04:23:37'),('7cdc7e9db52261f7b1cd9a222709ca6d4cb690fcb7f9e9c16504d14c8207c6cc9a5b6cdb7aa7ad2a',1,1,'Personal Access Token','[]',0,'2020-06-05 08:50:21','2020-06-05 08:50:21','2021-06-05 03:50:21'),('7dfaa5f5279257c851aac94b1bc26f7ff5c185cce2196a25a0d61e41d8a804351c2e5ff458339514',1,1,'Personal Access Token','[]',0,'2020-06-05 00:00:46','2020-06-05 00:00:46','2021-06-04 19:00:46'),('7e35d3f270745793c807746866ec21e9105b16f1eb17e0b64e2b27ec2d352252edad28a2817a8f3b',1,1,'Personal Access Token','[]',0,'2020-06-05 18:59:11','2020-06-05 18:59:11','2021-06-05 13:59:11'),('7e61f5419155c585f5fa8828fd58e1840998a9fbc82e9a1f8bf4fa4affdc1c27cf4f6294b464fff0',1,1,'Personal Access Token','[]',0,'2020-06-08 23:58:14','2020-06-08 23:58:14','2021-06-08 18:58:14'),('7e645c1af9306c6b796f675c3128ce4a7ca01daf51f9dd61654ccbc9b37cb0d649212d74711c59ae',1,1,'Personal Access Token','[]',0,'2020-06-05 00:08:23','2020-06-05 00:08:23','2021-06-04 19:08:23'),('7e6796843746f532180a7dde013eb4c8929783673aabfd340eca3a52b17d53c9c15c380e58cbbd16',1,1,'Personal Access Token','[]',0,'2020-06-05 10:24:18','2020-06-05 10:24:18','2021-06-05 05:24:18'),('7fe1c46a4c052eaa5bd8439bbe4055f7dbc395857ebc3690cb73b6e5373d2641369483f245f57d6c',1,1,'Personal Access Token','[]',0,'2020-06-05 08:37:39','2020-06-05 08:37:39','2021-06-05 03:37:39'),('8043ad947b5a85f7509895590eef3f2193eb40c333d3f1e43f7ea5286bbd2aa7423606e8eca35529',1,1,'Personal Access Token','[]',0,'2020-06-05 09:25:05','2020-06-05 09:25:05','2021-06-05 04:25:05'),('810e0727df49ce2839cf5f3b1290b9a747032c31d6c897975248b9ba41febb71a339f64d9cdd0923',1,1,'Personal Access Token','[]',0,'2020-06-05 03:46:19','2020-06-05 03:46:19','2021-06-04 22:46:19'),('825c9b780498637c6be22918129b9dc96cf2a44ba9f4f2f940073df49551f5bf058a1eb1d3126f39',1,1,'Personal Access Token','[]',0,'2020-06-05 02:36:02','2020-06-05 02:36:02','2021-06-04 21:36:02'),('83cd96efad65c9cc8cfebc44e60236a4dad4818fb7211e53fb2dc8c1df6c2b9e67fe0977249535ee',1,1,'Personal Access Token','[]',0,'2020-06-05 02:37:56','2020-06-05 02:37:56','2021-06-04 21:37:56'),('8447f2446b0b53adbd17108df180169e9dfb6545f8bf3dbfd48b277fb1074b4c68bb1ea7acbd7aa5',1,1,'Personal Access Token','[]',0,'2020-06-05 10:19:19','2020-06-05 10:19:19','2021-06-05 05:19:19'),('85ee85600fcce7819a52368c59ca6d966ac0203b02e1a84f0cb7ac170f9180f3fa64ad75ab806d8e',1,1,'Personal Access Token','[]',0,'2020-06-05 08:40:44','2020-06-05 08:40:44','2021-06-05 03:40:44'),('85f07417df0638886134b16aec1783b0fc266768c7802ec36ff44c32bfd56ee070f5574fcf90a52e',1,1,'Personal Access Token','[]',0,'2020-06-05 08:48:39','2020-06-05 08:48:39','2021-06-05 03:48:39'),('869801887e302ba45a517cb5db1d189904aa1da83870df18c9b0cbc3b32e0259bcaabbed4cc95a77',1,1,'Personal Access Token','[]',0,'2020-06-05 10:12:26','2020-06-05 10:12:26','2021-06-05 05:12:26'),('86cb4dbc7ae6339f0716a1586fa9fc7cbd2cbbc2a5e0bc0a1322862e1661f191b6fe9d69ebacaea7',1,1,'Personal Access Token','[]',0,'2020-06-04 05:42:04','2020-06-04 05:42:04','2021-06-04 00:42:04'),('87bcdce1f4a3849ae5cd61d6cb0083b82528eeddf0cfa95a0063ab3e4913d5c3c1b88ef7fda5e310',1,1,'Personal Access Token','[]',0,'2020-06-05 09:25:06','2020-06-05 09:25:06','2021-06-05 04:25:06'),('87eeb0bd03c0d866ee3b6119e9a3ef216bda6928f318a0c9879cbc43d9a2b66514f5fbe92bddee3d',1,1,'Personal Access Token','[]',0,'2020-06-05 09:23:49','2020-06-05 09:23:49','2021-06-05 04:23:49'),('886ba711a0eb024fec6de4cd536250e3133901cf14a43646a2596913c395466e5e84092f8024b8de',1,1,'Personal Access Token','[]',0,'2020-06-05 10:26:28','2020-06-05 10:26:28','2021-06-05 05:26:28'),('88903bd726bff6793d7597026168967c22816831f89a303c157e89c6b869ab9500458ce71e713884',1,1,'Personal Access Token','[]',0,'2020-06-05 04:22:38','2020-06-05 04:22:38','2021-06-04 23:22:38'),('889165173a50466a50a7f2eea1e7da9245a8ae01379c39f7f9353d13c3f94ba60c27873e210d70fa',1,1,'Personal Access Token','[]',0,'2020-06-05 03:11:53','2020-06-05 03:11:53','2021-06-04 22:11:53'),('8aa025e5df95299db9988c432183c6574ea61a6a85f407f8c6d0ae77d93cc460c4b90ef61c5fd3d3',1,1,'Personal Access Token','[]',0,'2020-06-05 09:11:26','2020-06-05 09:11:26','2021-06-05 04:11:26'),('8c2a513790cc2845780c5d281d4c39b02ad994d5f2cbaf4f1319031f02621e71fb33160838ed7d92',1,1,'Personal Access Token','[]',0,'2020-06-05 03:47:40','2020-06-05 03:47:40','2021-06-04 22:47:40'),('912a5eeaeebe7a7077371cd3c91c978e20a387c32fa631c02a22f0e05ec57ed6dad6d0d1a165f33e',1,1,'Personal Access Token','[]',0,'2020-06-04 22:21:24','2020-06-04 22:21:24','2021-06-04 17:21:24'),('9166dd71f9553d9430bd0ccb7dd234b5aa37243ab7106451e2b1a6a970a5fbc69de4ffe25ddb14b2',1,1,'Personal Access Token','[]',0,'2020-06-05 02:33:25','2020-06-05 02:33:25','2021-06-04 21:33:25'),('91a90b32633f55d090151c398bb796cf09678f4261784260ff0564005aa67e2a6733ce2e6671a5b7',1,1,'Personal Access Token','[]',0,'2020-06-05 02:53:48','2020-06-05 02:53:48','2021-06-04 21:53:48'),('95981b733c6ef4688368f983ac56456586bedac6f12bdb973e3607da773a56037bd50d3ded2ac925',1,1,'Personal Access Token','[]',0,'2020-06-04 22:29:47','2020-06-04 22:29:47','2021-06-04 17:29:47'),('9621d841f3faeaed92141884149d301e563a6764ec8b3bcd02d188f8688f6393582975d4d7ae0439',1,1,'Personal Access Token','[]',0,'2020-06-04 23:50:27','2020-06-04 23:50:27','2021-06-04 18:50:27'),('96c4059d324494704781064381383a0f0a830f0b617ff435e4a5703094e2b83e77230070d02b6245',1,1,'Personal Access Token','[]',0,'2020-06-08 23:57:00','2020-06-08 23:57:00','2021-06-08 18:57:00'),('96c5bef2dca8fa985d7dd5c5a91aab5d074085bac2b361a78e4ded659691e07df74e465f91543e04',1,1,'Personal Access Token','[]',0,'2020-06-05 08:48:38','2020-06-05 08:48:38','2021-06-05 03:48:38'),('9746cd696a0285fa16bcd089e490e6898cd0ec47ce7af9efb840eed3b7b12984513a7be7c7d7d1d6',1,1,'Personal Access Token','[]',0,'2020-06-04 04:15:34','2020-06-04 04:15:34','2021-06-03 23:15:34'),('97b718f82e54bb3a9f68a92ebfe7b47b600eb6236901a7963f204b9917989c81043279df298199ef',1,1,'Personal Access Token','[]',0,'2020-06-05 10:25:48','2020-06-05 10:25:48','2021-06-05 05:25:48'),('98bd1ca4cac70a65a173959facf06e2bb9923b66275bcb83379dbcd6a143d9bbcf712eb4af14983d',1,1,'Personal Access Token','[]',0,'2020-06-05 03:52:59','2020-06-05 03:52:59','2021-06-04 22:52:59'),('9a561b19f6e1f16021f542b84312d5d2cfb1967f86f10c9ebdcd1090616fb02a74bd74c4901cfc46',1,1,'Personal Access Token','[]',0,'2020-06-05 08:24:47','2020-06-05 08:24:47','2021-06-05 03:24:47'),('9a56b98a04f4fc6bd08b3259af038cf8c479ac37081fd4c7387818c5e1aa344379bc3cbd4796f0a9',1,1,'Personal Access Token','[]',0,'2020-06-09 00:15:47','2020-06-09 00:15:47','2021-06-08 19:15:47'),('9ac43c569ec7d13ca9c308f890ad603084f0c6c28049b608419de79b2be909ae4ae8f8daabe23a95',1,1,'Personal Access Token','[]',0,'2020-06-05 21:36:16','2020-06-05 21:36:16','2021-06-05 16:36:16'),('9bcfbc01b9388f5ab16f50b4d7f32a45cf31d4d9e9742a10dfdfe47465de57dbef88b3f4937444eb',1,1,'Personal Access Token','[]',0,'2020-06-05 09:07:47','2020-06-05 09:07:47','2021-06-05 04:07:47'),('9c168ba75f31bf14edf2fdb1cbb24fad84725c7269ec82aeccc1122ef452407f3a63eef7a0b6dedc',1,1,'Personal Access Token','[]',0,'2020-06-05 04:51:20','2020-06-05 04:51:20','2021-06-04 23:51:20'),('9d551dec0d9dd39f1f5a3c3bafebcdd0ac7882b37d2e3d40136aab66cff742a1ed60b974ca37fa83',1,1,'Personal Access Token','[]',0,'2020-06-05 18:38:12','2020-06-05 18:38:12','2021-06-05 13:38:12'),('9d90a355fad99b1fa269d5adf2653f2654bf028b4dcb36206bffe7376def4840c66203ae02770cb0',1,1,'Personal Access Token','[]',0,'2020-06-05 04:47:35','2020-06-05 04:47:35','2021-06-04 23:47:35'),('9dd7c76e82c4708f74ef2c2d0dabf6a9d95aa943ad0b218c53969c35a7c0d1e0e3719bba56e035bf',1,1,'Personal Access Token','[]',0,'2020-06-05 04:51:21','2020-06-05 04:51:21','2021-06-04 23:51:21'),('9ee2e55310f9becf065c4372976a6211a38f62c6496c30ca86afe20ff2402a7a666e5a7dc789e45f',1,1,'Personal Access Token','[]',0,'2020-06-05 08:37:38','2020-06-05 08:37:38','2021-06-05 03:37:38'),('9f48f3207542cd6e955dc3322272ea27cc6b1a4e733c034713a5bee1dfdb8429285548be546b9dcd',1,1,'Personal Access Token','[]',0,'2020-06-05 10:23:27','2020-06-05 10:23:27','2021-06-05 05:23:27'),('9fa65d522f550d1f844c4836ffabd5488420feebd6de9acaec1214a5427853339e235e24a581b03d',1,1,'Personal Access Token','[]',0,'2020-06-05 05:01:40','2020-06-05 05:01:40','2021-06-05 00:01:40'),('a27f134ca926e869009ee2fe77eb200fdff370db279d5d25ae3b3c886d83ef52bb07e61292b6fada',1,1,'Personal Access Token','[]',0,'2020-06-05 18:46:25','2020-06-05 18:46:25','2021-06-05 13:46:25'),('a29c79bea85de608ecc8572e483c29870fe9080a79ffe141f168047e16c1936bd3a79f04453c16f2',1,1,'Personal Access Token','[]',0,'2020-06-04 04:03:16','2020-06-04 04:03:16','2021-06-03 23:03:16'),('a2cbbf3ced75a41634389931622ca41c6fc1c00a52670b6780a40750d84f9168d7f0923107f2bd7c',1,1,'Personal Access Token','[]',0,'2020-06-04 04:17:14','2020-06-04 04:17:14','2021-06-03 23:17:14'),('a45c7456dc19d32cabcb5e51892e17ef85b9857be4007375332794e9fae8396ff459d29a98a3eddd',1,1,'Personal Access Token','[]',0,'2020-06-04 04:33:52','2020-06-04 04:33:52','2021-06-03 23:33:52'),('a4c414e81bc67c92721de7831252c86da37bb2ff29aaabe41fded750a72c4d17ff584b31bc750300',1,1,'Personal Access Token','[]',0,'2020-06-05 18:21:23','2020-06-05 18:21:23','2021-06-05 13:21:23'),('a4f6972837e9f929aaf0326bff925d0f5f0569c8ae3563a454762c1fda907921d5abb8514f2f6579',1,1,'Personal Access Token','[]',0,'2020-06-16 07:10:51','2020-06-16 07:10:51','2021-06-16 02:10:51'),('a52b0fcca7981ebdcdfc4e3e16f9046ef32cd13ef8f9cc1c451d29f8eca9434a4361e450bb33a202',1,1,'Personal Access Token','[]',0,'2020-06-05 02:40:00','2020-06-05 02:40:00','2021-06-04 21:40:00'),('a5bf480da8672f80dbf16615b56a3ce76a60bd93734c34940c5e82921f6ec7043ca1bb48694b1360',1,1,'Personal Access Token','[]',0,'2020-06-04 22:21:27','2020-06-04 22:21:27','2021-06-04 17:21:27'),('a62a2cb3d37e50a2a8e022861016e9b666fe769237f793f8b8143ff63a9307123aba3b78c14a017d',1,1,'Personal Access Token','[]',0,'2020-06-05 09:23:37','2020-06-05 09:23:37','2021-06-05 04:23:37'),('a6f5c8c67bcf485fe4ad77c6e708e291d2e5bc16d0afb63b408c03fb43ffe8501923339640024776',1,1,'Personal Access Token','[]',0,'2020-06-16 07:11:57','2020-06-16 07:11:57','2021-06-16 02:11:57'),('a73fbe0d0489e5abf49daa09ddc3c2031a47c97159077fed071d7334d1b6f60cc197b56a2a924ba4',1,1,'Personal Access Token','[]',0,'2020-06-05 04:30:09','2020-06-05 04:30:09','2021-06-04 23:30:09'),('a7ddf7a4ee2801c6945144885a6c8e8abdb3df69064297030155ef7418f6d956457c7ba886bb394d',1,1,'Personal Access Token','[]',0,'2020-06-08 23:53:44','2020-06-08 23:53:44','2021-06-08 18:53:44'),('a7fa46709ac3e0995f60bdc949023b6eb8fc5de890b08ce3df871132f9ae2ed3a2a71d3769a2b63a',1,1,'Personal Access Token','[]',0,'2020-06-09 00:07:11','2020-06-09 00:07:11','2021-06-08 19:07:11'),('a9651b4d7e624562d3db598d34995d8cd3d07d00e4f29296665cceb2c71f1622f220c85a2d96a936',1,1,'Personal Access Token','[]',0,'2020-06-05 08:31:09','2020-06-05 08:31:09','2021-06-05 03:31:09'),('aacac1bfdb91b9d6f10d9e168651856ed186a2aff6905baa289754affeac46ea5cc9c57e99970a86',1,1,'Personal Access Token','[]',0,'2020-06-04 04:03:15','2020-06-04 04:03:15','2021-06-03 23:03:15'),('ac5c111eea4322e42ef58d3e255a9a15875812d7b6265e659fd99521744b83160da894145eb0f7c6',1,1,'Personal Access Token','[]',0,'2020-06-05 08:53:59','2020-06-05 08:53:59','2021-06-05 03:53:59'),('acb585a49790d0eed52408596813322d9167ef8fd22c0877fcd0524ea42386fc88cdbcef10f46f2b',1,1,'Personal Access Token','[]',0,'2020-06-05 02:53:19','2020-06-05 02:53:19','2021-06-04 21:53:19'),('ad700838e7f483b2753e4e721ba69549741802531ed970ca41a1d420686611f6705e900e784ce412',1,1,'Personal Access Token','[]',0,'2020-06-05 03:00:26','2020-06-05 03:00:26','2021-06-04 22:00:26'),('ae621c9786155988ece4f654cc959d79a606a895860f50ab1767c5c2b9e459366f825b7b39cd9463',1,1,'Personal Access Token','[]',0,'2020-06-04 04:17:15','2020-06-04 04:17:15','2021-06-03 23:17:15'),('aede8421a5c17714b8203fa6352d96512cd5ba7763a5bf6a730d0f8f4474ad3340212104fa6fdefd',1,1,'Personal Access Token','[]',0,'2020-06-05 19:48:35','2020-06-05 19:48:35','2021-06-05 14:48:35'),('af7dcb444050d43a79a4f9cca527a5d6d2de37fbc8fd9a1c77021bc010b392bb2bae338151524d4f',1,1,'Personal Access Token','[]',0,'2020-06-05 00:07:41','2020-06-05 00:07:41','2021-06-04 19:07:41'),('b09aecc6873755245a6b020cc0bb4b9f5c87632eb10967011ebcac22c60b131b51815e15646f65b3',1,1,'Personal Access Token','[]',0,'2020-06-05 19:34:33','2020-06-05 19:34:33','2021-06-05 14:34:33'),('b16a133d1ffd7b5aea52624f8dcbb94bbacc36a0b0b00a3a62b2cd27cce60932142ddcdda6a257d6',1,1,'Personal Access Token','[]',0,'2020-06-05 19:00:13','2020-06-05 19:00:13','2021-06-05 14:00:13'),('b19f3ec3ce0431549dbc40d4088d3e0ba762e83abbcf76c30a951f5ef9646e2df25a608aac869495',1,1,'Personal Access Token','[]',0,'2020-06-05 18:27:01','2020-06-05 18:27:01','2021-06-05 13:27:01'),('b32d571d6fdaa69cd4c3e459ace08f7a3e9984bf0b64a6c9a04149ed30db46eb6f40869b9036c705',1,1,'Personal Access Token','[]',0,'2020-06-05 18:59:10','2020-06-05 18:59:10','2021-06-05 13:59:10'),('b3703556dccc2cb9f1f0b40b7ba27960b8c03ac0eb7a1332d52caff6d5f06fd59595f7b9400b9e24',1,1,'Personal Access Token','[]',0,'2020-06-05 02:38:58','2020-06-05 02:38:58','2021-06-04 21:38:58'),('b3a6fde90ac0fffbc50c775a08f34b50e4be7712e3fb5341686d61e4f1963da04c2a478aed9d3cc2',1,1,'Personal Access Token','[]',0,'2020-06-05 21:36:17','2020-06-05 21:36:17','2021-06-05 16:36:17'),('b429fc1a4fc221962a8c99637cc56c4440df7f6b9f37390cb1d48f8552777272c4c9199684c2ebe7',1,1,'Personal Access Token','[]',0,'2020-06-04 22:42:03','2020-06-04 22:42:03','2021-06-04 17:42:03'),('b458886d101bc17e6c759a126434225f3ac170a7cb57c1c328268bf0e97f5750cc01def4225096ab',1,1,'Personal Access Token','[]',0,'2020-06-05 03:52:42','2020-06-05 03:52:42','2021-06-04 22:52:42'),('b45fda0cf816676b4e4cd9982238682b925a54b75aea95ec4d6537a139f682ba3f7be893b151559b',1,1,'Personal Access Token','[]',0,'2020-06-05 04:30:10','2020-06-05 04:30:10','2021-06-04 23:30:10'),('b54847d4758c96e90783ea0f9f921b415d24914753066bd25703dc12f08081656729f9d4b16faca8',1,1,'Personal Access Token','[]',0,'2020-06-05 08:24:46','2020-06-05 08:24:46','2021-06-05 03:24:46'),('b6b2c6fecd7e4ea49cfd60d09a9bd054b78240ba2038599b56613febbf3a6599b4b5f6fe7b193372',1,1,'Personal Access Token','[]',0,'2020-06-05 19:34:32','2020-06-05 19:34:32','2021-06-05 14:34:32'),('b70e8a1167f5a46eb0661df5f7d590ea31e858c059e98bc99fc4388ade6c059028950de41955123b',1,1,'Personal Access Token','[]',0,'2020-06-05 03:13:21','2020-06-05 03:13:21','2021-06-04 22:13:21'),('b86b54ea11c452580e61c83a7b7e0821a098498d97fa75b16762514e2113cda1cb5e63090f8f93b3',1,1,'Personal Access Token','[]',0,'2020-06-05 09:23:50','2020-06-05 09:23:50','2021-06-05 04:23:50'),('b86c9fcf19d260e1cacd560df368aedc9a57f2a27c27caad2bdfd40e5bccd8f14094e0f62fea02b6',1,1,'Personal Access Token','[]',0,'2020-06-05 19:53:30','2020-06-05 19:53:30','2021-06-05 14:53:30'),('b956ff69002d202b48d60555d66bed88fd09d81c756a200d9f650a87b4d29b0555610daf842344d0',1,1,'Personal Access Token','[]',0,'2020-06-05 02:26:11','2020-06-05 02:26:11','2021-06-04 21:26:11'),('badbb664b89b2e874c847bbef6a4285e74e2562231a2a07de0dfb6937fba8a1554daf4336ee662a8',1,1,'Personal Access Token','[]',0,'2020-06-05 04:51:39','2020-06-05 04:51:39','2021-06-04 23:51:39'),('bb3e9061cedd376693c939ddb194db5bd81ea02dc67860d0709a60440d98d306c02d9d5dfb4c3202',1,1,'Personal Access Token','[]',0,'2020-06-05 00:04:05','2020-06-05 00:04:05','2021-06-04 19:04:05'),('bb9a7d8e7d66e48cd05d53ae28f163c8b7da506251d6abcb26dde6ed3de7e1e9acd42eede00a4294',1,1,'Personal Access Token','[]',0,'2020-06-05 03:07:30','2020-06-05 03:07:30','2021-06-04 22:07:30'),('bc8ea90f5c1be0f92587684474850f6cb3e9279640e20c0cc68a559dc056f8c90565da22dad2e2bc',1,1,'Personal Access Token','[]',0,'2020-06-04 22:42:05','2020-06-04 22:42:05','2021-06-04 17:42:05'),('bdd00309b5ecd2566380918a64fd28db139f0207f32c6d8699f5485784530817dba48aadaf5a7305',1,1,'Personal Access Token','[]',0,'2020-06-05 10:06:28','2020-06-05 10:06:28','2021-06-05 05:06:28'),('bf3044c55ab2d75b17ac161fc07733404cbe0cd72461f8f6b9e4337ff40ebf4fec948a8cf9f0f757',1,1,'Personal Access Token','[]',0,'2020-06-05 19:29:13','2020-06-05 19:29:13','2021-06-05 14:29:13'),('bf31e335263ac116f9ad61a2ae8baef0f0d7ed809f7df9f8c021cf99b436c8f229849950629b4fe1',1,1,'Personal Access Token','[]',0,'2020-06-05 18:38:11','2020-06-05 18:38:11','2021-06-05 13:38:11'),('bfc2958ef09ceae9cb943fa9da7bfbf7070a716b68440d62e2dadefec7c187a5f5a7d089594c25aa',1,1,'Personal Access Token','[]',0,'2020-06-05 09:07:47','2020-06-05 09:07:47','2021-06-05 04:07:47'),('c09ffefb82231858adb150aadddda20ce278197632c30edaee9cf32384562108d7a455cbb55fa159',1,1,'Personal Access Token','[]',0,'2020-06-05 02:55:31','2020-06-05 02:55:31','2021-06-04 21:55:31'),('c0bf6e0e2469b638397743ca046755a72397d61181e386eb2dcbaa63770916008eae995e473c62ea',1,1,'Personal Access Token','[]',0,'2020-06-05 19:47:43','2020-06-05 19:47:43','2021-06-05 14:47:43'),('c1a277f5054c30b1fffaad8f6115b2397ee69b42418205cba2144e9881d3c32044908fe72f4fbc6d',1,1,'Personal Access Token','[]',0,'2020-06-05 00:02:08','2020-06-05 00:02:08','2021-06-04 19:02:08'),('c2926e5617c690b9e9e0bda680632bd6ce3dcf2170fa96c921f7e5be634364fbefffedde013a3c95',1,1,'Personal Access Token','[]',0,'2020-06-05 00:02:08','2020-06-05 00:02:08','2021-06-04 19:02:08'),('c3251dc29a40d207bb4a24b380ee7144a349c7169c975e616520ce6b97c3096095beec395809be93',1,1,'Personal Access Token','[]',0,'2020-06-16 07:04:29','2020-06-16 07:04:29','2021-06-16 02:04:29'),('c34792cb7aa5af8eefe6bf13151627f02442f4952dee478a65ef07ded6428ff4bb4b438e7ca68ec3',1,1,'Personal Access Token','[]',0,'2020-06-05 00:06:15','2020-06-05 00:06:15','2021-06-04 19:06:15'),('c3b0e6cd9e1b81f329a990194d1b7a6a5e1389b384d98008cbb234e2dc78f48093cbcff127dc39fa',1,1,'Personal Access Token','[]',0,'2020-06-05 21:31:13','2020-06-05 21:31:13','2021-06-05 16:31:13'),('c4375cf80550661fdcc38ffe04426c5364dbd48f7bda4bba02652c493086bf1e580ac60f265739a4',1,1,'Personal Access Token','[]',0,'2020-06-05 03:11:52','2020-06-05 03:11:52','2021-06-04 22:11:52'),('c5a82b2b4386e3b67f649673282ed4ac00235fa4ac737f9f6848dd929cfe259c4e46cebdd030d6d4',1,1,'Personal Access Token','[]',0,'2020-06-05 08:40:45','2020-06-05 08:40:45','2021-06-05 03:40:45'),('c65df1da06de5f43ec88a5772272d9ad1948edd8336d2243b382bc45b4975b1a5f6cf3b5ba40410d',1,1,'Personal Access Token','[]',0,'2020-06-05 21:34:38','2020-06-05 21:34:38','2021-06-05 16:34:38'),('c66ebdc6aa1fdf7e7e77313de2eabc6d77a922f3f19ca2314a40f35cb5e44594e8a56a619792049b',1,1,'Personal Access Token','[]',0,'2020-06-05 03:54:13','2020-06-05 03:54:13','2021-06-04 22:54:13'),('c6c9e2df634cb3c8d85649a93606b0d41fd79dee26ba7bb151c18060c0a69ffc9df995b0d782f4ac',1,1,'Personal Access Token','[]',0,'2020-06-04 05:40:29','2020-06-04 05:40:29','2021-06-04 00:40:29'),('c75cd98102c9f6a3e48323443f41eb19a260c5ca03d17ca5827f36c6a68c19689b9b4652bfeed585',1,1,'Personal Access Token','[]',0,'2020-06-05 00:08:24','2020-06-05 00:08:24','2021-06-04 19:08:24'),('c8fda681a266ad66fe8ed70e4e139704b6e6226880f80811842090b844c80a1aed9401162dd224ec',1,1,'Personal Access Token','[]',0,'2020-06-05 19:40:20','2020-06-05 19:40:20','2021-06-05 14:40:20'),('c9941099111a78bbc210a1895b72741d13ba19374e486065497da31e79cbef2227f3097390fd55e4',1,1,'Personal Access Token','[]',0,'2020-06-03 21:47:41','2020-06-03 21:47:41','2021-06-03 16:47:41'),('cac103801376a1694321dc6271c67d321b520b64da63cc96bb84a308bcd0e7b4004cc180d5cc8e87',1,1,'Personal Access Token','[]',0,'2020-06-16 07:12:15','2020-06-16 07:12:15','2021-06-16 02:12:15'),('cc09c6c1319f9564e6bb99909bbaa4ee59a2ea11c8688514c3580707f00a411cd8fdeefffe4f4146',1,1,'Personal Access Token','[]',0,'2020-06-05 02:52:33','2020-06-05 02:52:33','2021-06-04 21:52:33'),('cc3aacb7d83791646a43c1b9ecec01ff8b48692549580a4c93fc1bc0730301bb9754014395b496e5',1,1,'Personal Access Token','[]',0,'2020-06-05 02:45:16','2020-06-05 02:45:16','2021-06-04 21:45:16'),('cdd25156154d743135a0625c56d376e9409646e4d5ff4342f9fd24daf701a9629d05ba76c7a78527',1,1,'Personal Access Token','[]',0,'2020-06-05 04:30:29','2020-06-05 04:30:29','2021-06-04 23:30:29'),('ce286c8c4857b4483e9ef243ef632397ac26e88bbf4e79f37ac8c67c94dfe84124f186979b26dd6f',1,1,'Personal Access Token','[]',0,'2020-06-05 08:40:14','2020-06-05 08:40:14','2021-06-05 03:40:14'),('cf1ce7b81e5641c345f8146fab5b04c55302867c06921528119a6940de93b86c3270445926287737',1,1,'Personal Access Token','[]',0,'2020-06-05 18:41:14','2020-06-05 18:41:14','2021-06-05 13:41:14'),('cf38f013099311fdc1d2a8cfeb8320be7dbb44cd44d1a12a97b9be274e3a0945c1a3a7c58ca8e1cc',1,1,'Personal Access Token','[]',0,'2020-06-05 19:47:41','2020-06-05 19:47:41','2021-06-05 14:47:41'),('d08dbe7c18c5fb2efd90fb47429660b8d901280d75a46ae22b248201ea088a6c38f4fd13448a9ff9',1,1,'Personal Access Token','[]',0,'2020-06-05 08:54:29','2020-06-05 08:54:29','2021-06-05 03:54:29'),('d0e81d18725a112a420c3e55b04123462a447dfad92c1c30ea2cfb0f3d4bbd75b677f111a04f7903',1,1,'Personal Access Token','[]',0,'2020-06-05 02:08:46','2020-06-05 02:08:46','2021-06-04 21:08:46'),('d18a6770da5f2d6724bdc840e66dbfde7012973202a6df9d2428ad12747f7328bd3bf77b29824dad',1,1,'Personal Access Token','[]',0,'2020-06-05 21:35:13','2020-06-05 21:35:13','2021-06-05 16:35:13'),('d19d2d5276e1737a1e977f48a01e95e9059a45a7ece86077fcfaff3754d3c6a8b205d9c22c4e5c61',1,1,'Personal Access Token','[]',0,'2020-06-04 04:33:24','2020-06-04 04:33:24','2021-06-03 23:33:24'),('d1f6a958e1261acc84f7a1ed920004e6c22013ddf0a34cdf6bf59e6a6e57a6608a80426ce540d85c',1,1,'Personal Access Token','[]',0,'2020-06-08 23:58:13','2020-06-08 23:58:13','2021-06-08 18:58:13'),('d49ff155b719a7e6342b5c3f952e8f7c386abf00b3535198530297ea9b983f3c68f95796b4e8572a',1,1,'Personal Access Token','[]',0,'2020-06-05 02:08:45','2020-06-05 02:08:45','2021-06-04 21:08:45'),('d4f065a56146553a733b6f470dc84e6b963948c4f9a2e780d694c781fdc5318c3300446ddfb33874',1,1,'Personal Access Token','[]',0,'2020-06-05 09:04:02','2020-06-05 09:04:02','2021-06-05 04:04:02'),('d4f138ce26d23c2325886ae2f8ada045952e33b3cf5cf59c7abb4caaf6c3f6d3fdd6789c18caba28',1,1,'Personal Access Token','[]',0,'2020-06-05 00:07:40','2020-06-05 00:07:40','2021-06-04 19:07:40'),('d56e66f8a83e100df0e05951fe9d10671a0593244a826ce1b685ca6d4d830c3034494d4fa8a845be',1,1,'Personal Access Token','[]',0,'2020-06-05 03:07:31','2020-06-05 03:07:31','2021-06-04 22:07:31'),('d6898fd0c2c3b3fcab9c0314035576217d86d0efb645e8c980ac548e0af3897c78a2a158ce56d975',1,1,'Personal Access Token','[]',0,'2020-06-05 21:31:14','2020-06-05 21:31:14','2021-06-05 16:31:14'),('d6db6bcff16dd1ccb603aa9e599019af0404e3a5cee7d34f9e38d242d7b0994d4655412664b0482b',1,1,'Personal Access Token','[]',0,'2020-06-05 09:12:52','2020-06-05 09:12:52','2021-06-05 04:12:52'),('d6dde132836cd47e0dd668585cf038dee25add8967cd090ae2f0dab2af29ab38736a92e5e57bf274',1,1,'Personal Access Token','[]',0,'2020-06-05 03:13:19','2020-06-05 03:13:19','2021-06-04 22:13:19'),('d6df9d93b246580241c9068bb6369152cb249b8e2e462810aac42d642a15b9be69dc649ede43f6cc',1,1,'Personal Access Token','[]',0,'2020-06-05 19:56:20','2020-06-05 19:56:20','2021-06-05 14:56:20'),('d782bf4543e82b56c6902a352be3e5e549d5fdf3b0c7641136448389a5adf50ca58f243003536aac',1,1,'Personal Access Token','[]',0,'2020-06-05 03:08:11','2020-06-05 03:08:11','2021-06-04 22:08:11'),('d786c99ffe9d0629811d9e180628f1ce6d3d5990c1648731b57610a4435936982f3581c8827ccfe1',1,1,'Personal Access Token','[]',0,'2020-06-05 19:00:14','2020-06-05 19:00:14','2021-06-05 14:00:14'),('d7c1f64359640e7538492150a9c46fa2a910c131dbc39c596aa5973a4862a6f029fcd80ae42df401',1,1,'Personal Access Token','[]',0,'2020-06-05 05:00:15','2020-06-05 05:00:15','2021-06-05 00:00:15'),('d9e46db5df88dc7e16b01fca4fe71732bfcecf8030cd8aa88a09e1babc618da3096cf70329800bf0',1,1,'Personal Access Token','[]',0,'2020-06-05 08:54:29','2020-06-05 08:54:29','2021-06-05 03:54:29'),('db13558160809d1552eafc64972c6b062f6a6f3ed21b01e5c0a173a19f218004047adb6e6394ec4a',1,1,'Personal Access Token','[]',0,'2020-06-05 08:49:33','2020-06-05 08:49:33','2021-06-05 03:49:33'),('dd7d50af10dd4fed4e43a8af168ee8308daf793d48e357a7eb3e0b721e628991af1ed15a1c966c1d',1,1,'Personal Access Token','[]',0,'2020-06-05 19:29:12','2020-06-05 19:29:12','2021-06-05 14:29:12'),('dda6fe096ca8015d335415239926eb6ed6071df991bad58c1bbf4c8c8e1019cbe44f8c5c3dc39b6f',1,1,'Personal Access Token','[]',0,'2020-06-05 00:02:54','2020-06-05 00:02:54','2021-06-04 19:02:54'),('de4afc2d213280e5d2f7fa72383d9ae1e0d536b213905407bd97ac1cafff1eb4277637a15ff71932',1,1,'Personal Access Token','[]',0,'2020-06-05 03:10:23','2020-06-05 03:10:23','2021-06-04 22:10:23'),('de786a2b3e70b3453d58e0828a6511b0f425a3d24577e501b08527ccaf996c7068b0857e1a319a84',1,1,'Personal Access Token','[]',0,'2020-06-05 08:49:33','2020-06-05 08:49:33','2021-06-05 03:49:33'),('deb5d835ecca43b7273ef441bd6677165b499dcbc4ce247fff6fb20ddfb77ee67649fd11ff86b40b',1,1,'Personal Access Token','[]',0,'2020-06-05 08:53:59','2020-06-05 08:53:59','2021-06-05 03:53:59'),('e0a1f50f3332f0e4222f5cda27707c2996e322ca54288b0e452d6597339155262e0a883cfabdabcb',1,1,'Personal Access Token','[]',0,'2020-06-05 03:01:09','2020-06-05 03:01:09','2021-06-04 22:01:09'),('e0e770755cae50b1d45ec5b0b9d58caa85e7b644c562b3198744a73865529ed667fd7ec5470b238d',1,1,'Personal Access Token','[]',0,'2020-06-05 03:55:56','2020-06-05 03:55:56','2021-06-04 22:55:56'),('e11afa6220cebe375ed1a1514310a71be5d245c32099aa4300a935d276f47b6680e9d4b15ed90b0f',1,1,'Personal Access Token','[]',0,'2020-06-04 03:35:55','2020-06-04 03:35:55','2021-06-03 22:35:55'),('e15cc6ad8775c5d697dad62fb0795472e141e6e9260aeda6bba26894467920a2cdb21b7377fa567a',1,1,'Personal Access Token','[]',0,'2020-06-05 02:56:00','2020-06-05 02:56:00','2021-06-04 21:56:00'),('e2bba8b08aeaa35c4c776fb4a8953286d354d1ea59b9511af7c90186efcc7cc44f5eccabc4fe13d3',1,1,'Personal Access Token','[]',0,'2020-06-05 00:07:55','2020-06-05 00:07:55','2021-06-04 19:07:55'),('e2bbcc27d03201f8df0d50ca00209da529e6b606cb25d905b7549859e418a0760a71c565b986bd61',1,1,'Personal Access Token','[]',0,'2020-06-05 21:26:35','2020-06-05 21:26:35','2021-06-05 16:26:35'),('e31295ab0887490faf220bdf1b82a4f1971384079e90da7d428e0696103e20da9de95c488a3946c8',1,1,'Personal Access Token','[]',0,'2020-06-05 02:06:56','2020-06-05 02:06:56','2021-06-04 21:06:56'),('e471173641d7657febf7bdcca269ead80d4059394f0b91d1341c45b33e958f2a921f33f90573795a',1,1,'Personal Access Token','[]',0,'2020-06-05 08:41:35','2020-06-05 08:41:35','2021-06-05 03:41:35'),('e52162e5924723d66b15a1170bd10974399f4627847dc05a2e4c99ba896b8b166514045a2b514f2b',1,1,'Personal Access Token','[]',0,'2020-06-05 08:50:20','2020-06-05 08:50:20','2021-06-05 03:50:20'),('e532c0b873b15fdf9198b70f97b6a7fb3aa354f80e6b40b432b045de6ca665cf7f96c26cfeaf7f99',1,1,'Personal Access Token','[]',0,'2020-06-05 09:49:03','2020-06-05 09:49:03','2021-06-05 04:49:03'),('e697f6a5779f5e32d8616af2756dce2025977834cc92ecb186af3b8aefc14571a94355aff4ef38ea',1,1,'Personal Access Token','[]',0,'2020-06-04 04:36:41','2020-06-04 04:36:41','2021-06-03 23:36:41'),('e6ec10d0b198df2aae11db7ca662c5a70f4cf8483d8356f438a9509cae828055cbe72214c932eb0b',1,1,'Personal Access Token','[]',0,'2020-06-16 07:03:44','2020-06-16 07:03:44','2021-06-16 02:03:44'),('e8620e472c203876dc7c2815dac2e4712a5e43ca481558a1c3c2a12d0ed76338611ac6b6b620ef49',1,1,'Personal Access Token','[]',0,'2020-06-04 22:47:35','2020-06-04 22:47:35','2021-06-04 17:47:35'),('e877fe786a251e660800dd870a5025b687ddb6b137c485fb6a611463ed44d39588f42c7a2380b414',1,1,'Personal Access Token','[]',0,'2020-06-05 02:54:54','2020-06-05 02:54:54','2021-06-04 21:54:54'),('e970abb18fa9a12b2a1af99a91dce42b5e3f2acdf931d42f845d6a9e35e2e02fa0af206da925cb30',1,1,'Personal Access Token','[]',0,'2020-06-16 07:05:12','2020-06-16 07:05:12','2021-06-16 02:05:12'),('ea8243fb4bdaa274a777721cc58988971c1d40875634e1d066e30f4267e09860058f608eb5f57aa2',1,1,'Personal Access Token','[]',0,'2020-06-05 02:56:01','2020-06-05 02:56:01','2021-06-04 21:56:01'),('eaaad6bda8fa56fb1d271ecd4f2fdc6df349c741e5c5d62b54ca374166665dcd1f8b32579b668fc3',1,1,'Personal Access Token','[]',0,'2020-06-04 22:34:25','2020-06-04 22:34:25','2021-06-04 17:34:25'),('eab23d316e64e82eb2d7cd537b5b1fea4f91e668706318ddae7d960fede679ff35470068e1d87a16',1,1,'Personal Access Token','[]',0,'2020-06-04 22:29:50','2020-06-04 22:29:50','2021-06-04 17:29:50'),('eb40d6ae036fb3bb9ab7c01cec370568a5ac7144e0194005fd224d32ef720726b714afb8446a49be',1,1,'Personal Access Token','[]',0,'2020-06-05 08:42:06','2020-06-05 08:42:06','2021-06-05 03:42:06'),('ebfb6a29ee5cf6c10824588cce924f1dbccd15278462eb688a6358eff9b5980765bd3ffd51dc0895',1,1,'Personal Access Token','[]',0,'2020-06-05 18:41:29','2020-06-05 18:41:29','2021-06-05 13:41:29'),('ed5d89c51250af74acdd783f259dd2fda662d2479e21b46d9e26c738c0962c4be9d1f373bc703cfc',1,1,'Personal Access Token','[]',0,'2020-06-04 22:34:23','2020-06-04 22:34:23','2021-06-04 17:34:23'),('ed8375f11a2d75381b206abc037002131dd18bf131ddd104d0bfc393090e25d769dce53798624545',1,1,'Personal Access Token','[]',0,'2020-06-05 02:53:36','2020-06-05 02:53:36','2021-06-04 21:53:36'),('eea8ca7cea8588fd6fd59773118e7475a1bf856542f69e4d44e90abce8ade5d86dedb5ac110dcbb8',1,1,'Personal Access Token','[]',0,'2020-06-05 04:47:34','2020-06-05 04:47:34','2021-06-04 23:47:34'),('ef4fbe6457667f39709838a92180e221a9a2207649d9acea7fb31c3bd260ec01c11ca9148e4affc3',1,1,'Personal Access Token','[]',0,'2020-06-05 04:53:49','2020-06-05 04:53:49','2021-06-04 23:53:49'),('ef50a966ba3958a6463f9298acae6563f32762fc8d769ce539bb1b71d92b689a1cd98065c9602bfc',1,1,'Personal Access Token','[]',0,'2020-06-04 23:50:26','2020-06-04 23:50:26','2021-06-04 18:50:26'),('f18e54fd4c928fa839966e22c907e93f3833fd8bdbf1e2f82e0d636f03aff1cdabaeb59d213615fb',1,1,'Personal Access Token','[]',0,'2020-06-04 22:48:03','2020-06-04 22:48:03','2021-06-04 17:48:03'),('f2546988cd25cd47991332060afb6a0d4d9963425432a3b4accc2094b8942c1c5824e3d5bbf06ce3',1,1,'Personal Access Token','[]',0,'2020-06-05 10:25:47','2020-06-05 10:25:47','2021-06-05 05:25:47'),('f280e367f456fd1bad897e05eb71f24c761f488e2432c39a70c4518d0ce1bad2a410f58951b5ea02',1,1,'Personal Access Token','[]',0,'2020-06-04 03:35:56','2020-06-04 03:35:56','2021-06-03 22:35:56'),('f283ccc19de7e29a890cd2f6bacffd738c85b535f5f3600221855952010ba936749a4b91b49b80c8',1,1,'Personal Access Token','[]',0,'2020-06-05 03:00:25','2020-06-05 03:00:25','2021-06-04 22:00:25'),('f2cfb1dd6b5dbb0c8732a796579c62dae7bc8d67fbb9fd10591316ca6c5248d6c07a3dd0badcab7e',1,1,'Personal Access Token','[]',0,'2020-06-05 08:41:34','2020-06-05 08:41:34','2021-06-05 03:41:34'),('f3596a5c89fb8e2c0832439c40a290658b4ea4e96359f1d4880426390093a3f3d0eef41193d1b95c',1,1,'Personal Access Token','[]',0,'2020-06-05 09:49:04','2020-06-05 09:49:04','2021-06-05 04:49:04'),('f3ddb3c00091427991ce7baad72bc82205811e02c46fba9d50b45f8abe37f72af204c5fe0b486288',1,1,'Personal Access Token','[]',0,'2020-06-05 18:21:20','2020-06-05 18:21:20','2021-06-05 13:21:20'),('f3e1dfad0336a1990c1b4bb2aab1af640c6759a87eead3a17bb946d05d01667dbfd9d9a127c0ea62',1,1,'Personal Access Token','[]',0,'2020-06-05 19:33:07','2020-06-05 19:33:07','2021-06-05 14:33:07'),('f47c56a56c71c12316e28330f3d6dfec7272e29e43ec6f99803e370651725149f2c90ffd039ecff0',1,1,'Personal Access Token','[]',0,'2020-06-05 18:46:24','2020-06-05 18:46:24','2021-06-05 13:46:24'),('f4fe4c4852dcd2e9b87d0f3eed133d9db083ffd790f7d1ead35b9ebe134141c8bf2920c73494ced2',1,1,'Personal Access Token','[]',0,'2020-06-05 03:48:43','2020-06-05 03:48:43','2021-06-04 22:48:43'),('f591cfef8dfdd7b2402d01e5dc73803741c2c05cd50cf645e1d9b0e98b9cb09c5750be1919261a1c',1,1,'Personal Access Token','[]',0,'2020-06-05 19:53:31','2020-06-05 19:53:31','2021-06-05 14:53:31'),('f71e0275fb946cafdb55bb7c1f6aa76020b3b8e7cc3b37bbf95b2dc618f00d9da47c7e90fcf03858',1,1,'Personal Access Token','[]',0,'2020-06-05 09:25:50','2020-06-05 09:25:50','2021-06-05 04:25:50'),('f72736ea98839936e1c89ebd750972f3fde94b678e2d34f0b260add883cbc0f89456e7e31d424c56',1,1,'Personal Access Token','[]',0,'2020-06-05 02:59:46','2020-06-05 02:59:46','2021-06-04 21:59:46'),('f8656c1efa1abe284b787e08997486dcc52f2fe38c9a13ba504f7cd06945cd5a06352f18e2db4fd7',1,1,'Personal Access Token','[]',0,'2020-06-16 06:56:36','2020-06-16 06:56:36','2021-06-16 01:56:36'),('f9ec7fda0733311e7a33246aea65d69a730ed2d32e44968707e04d252709d3fd5dd6ac0ba91072f9',1,1,'Personal Access Token','[]',0,'2020-06-05 00:18:10','2020-06-05 00:18:10','2021-06-04 19:18:10'),('fa15770de6a2c5a5ab082ea17f96696c856d2fc1977aad935e7ea731e818e998f92adec9adac5665',1,1,'Personal Access Token','[]',0,'2020-06-05 18:56:10','2020-06-05 18:56:10','2021-06-05 13:56:10'),('fbbb2414d6d4477aad1e9d08372d6a5568c702147a4a7716aa8dc3ed6601c27f89660a4cd0f26f12',1,1,'Personal Access Token','[]',0,'2020-06-05 02:54:53','2020-06-05 02:54:53','2021-06-04 21:54:53'),('fe204f1f9f1442481642f208e97edb3c991c694d13d1ce47176bd81c077c161f75ccd5b54d7bf71b',1,1,'Personal Access Token','[]',0,'2020-06-04 22:21:20','2020-06-04 22:21:20','2021-06-04 17:21:20'),('fe8dc1c6da10a1110080ec482f6cb50be87cabb94ab84c8f92987e5cdb430d04e9414e9dc46e6f7c',1,1,'Personal Access Token','[]',0,'2020-06-05 09:12:53','2020-06-05 09:12:53','2021-06-05 04:12:53'),('ff20d7f447e8c4c1cc9109461539cee1122649570882f579a89bfb794933ec87ea4f9b7995d8ebe3',1,1,'Personal Access Token','[]',0,'2020-06-05 02:37:09','2020-06-05 02:37:09','2021-06-04 21:37:09'),('ff60b87cbd7e5a4a10a63ddcfef7589210dfcda8f15ca9f85c17ebe4dd3350066c54c7d237cf163e',1,1,'Personal Access Token','[]',0,'2020-06-04 04:33:23','2020-06-04 04:33:23','2021-06-03 23:33:23');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','ZUG5dyahodrN80MXWS37i4IBkVKzlLYCIvyQhlhz',NULL,'http://localhost',1,0,0,'2020-06-03 21:47:31','2020-06-03 21:47:31'),(2,NULL,'Laravel Password Grant Client','hW2Hpq253e3jbDejLlWsNvWcp1hkcIpnDvAFhVWn','users','http://localhost',0,1,0,'2020-06-03 21:47:31','2020-06-03 21:47:31');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-06-03 21:47:31','2020-06-03 21:47:31');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hangouts_google` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tittle_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_me` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_UNIQUE` (`mail`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Amilcar Gómez','Ingeniero de Software',32,'3167686872','Bogota','amilkargomez@hotmail.es','agomezcogollo@gmail.com','HV | Amilcar Gómez','n/a','n/a','Profesional en Ingeniería de Software además Tecnólogo en Análisis y Diseño de Sistemas de Información con estudios técnicos en Informática y redes; habilidades liderando equipos de desarrollo bajo metodologías agiles con conocimientos en desarrollo Web bajo PHP, Angular, , NodeJS, CMS Wordpress y JavaScript POO Senior, además cuento con conocimiento en base de datos Motor-MySQL; cuento con habilidad de administrar servidores Web Linux Ubuntu – CentOS; orientado siempre a la solucionar problemas eficientemente y proactivamente tanto a nivel de Software como a nivel de Hardware.\nEn mi experiencia profesional he apoyado proyectos de desarrollo bajo metodologías ágiles, en algunos casos he estado desde el inicio del proyecto, en otros ya se contaba con parte del desarrollo ye he entrado a apoyar, en ambos casos he aportado todas mis habilidades y además mis valores como responsabilidad, trabajo en equipo y eficiencia.\nA nivel técnico he apoyado en tareas relacionadas con Infraestructura en Redes.','Developer','2020-06-03 21:37:56',NULL),(3,'Jesusito Lindo Gómez Cogollo','Clon Ingeniero',32,'3156921116','Monteria','amilkarysgomezaa@hotmail.come','gmailjesusgomez@gmail.com','HV | Amilcar Gómez','n/a','n/a','Lard copia clon Lard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clon  Lard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clonLard copia clon','Developer','2020-06-03 21:37:56',NULL);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `skills_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills_age` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `skills_profile_id_foreign` (`profile_id`),
  CONSTRAINT `skills_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'PHP',80,'n/a',NULL,'2020-06-03 21:37:56',1),(2,'Laravel - PHP',60,'n/a',NULL,'2020-06-03 21:37:56',1),(3,'Bootstrap',50,'n/a',NULL,'2020-06-03 21:37:56',1),(4,'Vanilla JS',60,'n/a',NULL,'2020-06-03 21:37:56',1),(5,'Ubuntu-Server - Web',70,'n/a',NULL,'2020-06-03 21:37:56',1),(6,'NodeJs',50,'n/a',NULL,'2020-06-03 21:37:56',1),(7,'Angular',50,'n/a',NULL,'2020-06-03 21:37:56',1),(8,'Git',70,'n/a',NULL,'2020-06-03 21:37:56',1);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password_node` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Amilcar Gomez','amilkargomez@hotmail.es',NULL,'$2y$10$SF0jCd0n4VNmZtSt83f39OH75S/kzCmwjyzQO.EJ2AI0oWaCB/Q2e',NULL,'2020-06-03 21:37:56','2020-06-03 21:37:56','node123456');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-25 15:41:02
