-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: interswitch_walletplus
-- ------------------------------------------------------
-- Server version	5.7.35-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `currency_wallet`
--

DROP TABLE IF EXISTS `currency_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency_wallet` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_wallet`
--

LOCK TABLES `currency_wallet` WRITE;
/*!40000 ALTER TABLE `currency_wallet` DISABLE KEYS */;
INSERT INTO `currency_wallet` VALUES (1,27,18,'2021-09-16 12:51:37','2021-09-16 16:24:30'),(2,27,0,'2021-09-16 12:51:37','2021-09-16 12:51:37'),(3,28,65,'2021-09-16 12:53:13','2021-09-16 16:36:36'),(4,28,0,'2021-09-16 12:53:13','2021-09-16 12:53:13'),(5,30,0,'2021-09-16 14:51:52','2021-09-16 14:51:52'),(6,30,0,'2021-09-16 14:51:52','2021-09-16 14:51:52'),(7,33,0,'2021-09-16 14:53:29','2021-09-16 14:53:29'),(8,33,0,'2021-09-16 14:53:30','2021-09-16 14:53:30'),(9,37,0,'2021-09-16 14:54:53','2021-09-16 14:54:53'),(10,37,0,'2021-09-16 14:54:53','2021-09-16 14:54:53'),(11,41,0,'2021-09-16 14:58:55','2021-09-16 14:58:55'),(12,41,0,'2021-09-16 14:58:55','2021-09-16 14:58:55'),(13,45,0,'2021-09-16 14:59:25','2021-09-16 14:59:25'),(14,45,0,'2021-09-16 14:59:25','2021-09-16 14:59:25'),(15,49,0,'2021-09-16 14:59:50','2021-09-16 14:59:50'),(16,49,0,'2021-09-16 14:59:50','2021-09-16 14:59:50'),(17,53,0,'2021-09-16 15:02:27','2021-09-16 15:02:27'),(18,53,0,'2021-09-16 15:02:27','2021-09-16 15:02:27'),(19,57,0,'2021-09-16 15:10:45','2021-09-16 15:10:45'),(20,57,0,'2021-09-16 15:10:45','2021-09-16 15:10:45'),(21,60,0,'2021-09-16 15:11:56','2021-09-16 15:11:56'),(22,60,0,'2021-09-16 15:11:56','2021-09-16 15:11:56'),(23,63,0,'2021-09-16 15:14:18','2021-09-16 15:14:18'),(24,63,0,'2021-09-16 15:14:18','2021-09-16 15:14:18'),(25,66,0,'2021-09-16 15:27:05','2021-09-16 15:27:05'),(26,66,0,'2021-09-16 15:27:06','2021-09-16 15:27:06'),(27,69,0,'2021-09-16 15:27:44','2021-09-16 15:27:44'),(28,69,0,'2021-09-16 15:27:44','2021-09-16 15:27:44'),(29,72,0,'2021-09-16 15:28:29','2021-09-16 15:28:29'),(30,72,0,'2021-09-16 15:28:29','2021-09-16 15:28:29'),(31,75,0,'2021-09-16 15:29:26','2021-09-16 15:29:26'),(32,75,0,'2021-09-16 15:29:27','2021-09-16 15:29:27'),(33,78,0,'2021-09-16 16:36:35','2021-09-16 16:36:35'),(34,78,0,'2021-09-16 16:36:36','2021-09-16 16:36:36');
/*!40000 ALTER TABLE `currency_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021_09_15_103253_create_transactions_table',1),(2,'2021_09_15_115254_update_users_table',1),(3,'2021_09_15_115410_create_users_table',1),(4,'2021_09_15_163236_create_currency_wallet_table',2),(5,'2021_09_15_163250_create_points_wallet_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `points_wallet`
--

DROP TABLE IF EXISTS `points_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `points_wallet` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `points_wallet`
--

LOCK TABLES `points_wallet` WRITE;
/*!40000 ALTER TABLE `points_wallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `points_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,28,10,'currency wallet funding','2021-09-16 16:24:05','2021-09-16 16:24:05'),(2,28,10,'currency wallet funding','2021-09-16 16:24:12','2021-09-16 16:24:12'),(3,27,10,'currency wallet funding','2021-09-16 16:24:30','2021-09-16 16:24:30'),(4,28,1,'currency wallet spending','2021-09-16 16:33:21','2021-09-16 16:33:21'),(5,28,1,'currency wallet spending','2021-09-16 16:33:24','2021-09-16 16:33:24'),(6,28,1,'currency wallet spending','2021-09-16 16:33:25','2021-09-16 16:33:25'),(7,28,1,'currency wallet spending','2021-09-16 16:33:26','2021-09-16 16:33:26'),(8,28,1,'currency wallet spending','2021-09-16 16:33:27','2021-09-16 16:33:27'),(9,28,1,'currency wallet funding','2021-09-16 16:36:36','2021-09-16 16:36:36');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'123456','123456','joe@getnada.com',NULL,'$2y$10$Yv02wba/rX7NZ/YARF1xaeMIqlsV66AdgQdF7G7bH7ual7twtigOK','080','b9211c1a794c3f145030ce92343e3210','2021-09-16 10:33:17','2021-09-16 10:33:18'),(2,'123456','123456','joe@getnada.co',NULL,'$2y$10$YEcT6VB83HfmB3G98S88zuiMoPXFo2kpZPtaCyPws0j4uF0vLwzvC','080','6a96d67046cff1e6d7cd77936572f8e8','2021-09-16 10:33:44','2021-09-16 10:33:44'),(3,'123456','123456','joe@getnada.coo',NULL,'$2y$10$dlnHqJcpzsXT2jNrHKhB6ePfaPCoo0tWYLvGrGsM1BPZyRGsLINfu','080','e2a2d2d2ab68294d6831babe089ef55c','2021-09-16 10:40:47','2021-09-16 10:40:47'),(4,'demo12345','demo12345','doe@example.com',NULL,'$2y$10$bqx7tM7orAmGRp5fs07B0ePONJF0z1b0lxPup3V34DKK4NFTrKpsW','08033311125','c66a7231c26091cf7d1f6ef147d0faad','2021-09-16 10:54:44','2021-09-16 10:54:44'),(5,'123456','123456','joe@getnadak.coo',NULL,'$2y$10$5jUQ7hVaBqIH3g3B1y3ho.oKltyfSu8jupUXkMHSaZfqAI7OzOJ.2','080','7288fee3902557ed91536a4dd4f8489e','2021-09-16 10:57:42','2021-09-16 10:57:43'),(6,'demo12345','demo12345','doe@example.comx',NULL,'$2y$10$tx4rYSZMRc1jnoXbhNx5iOxZIjrfAmcoqhTtPk//dsAc0tncwh5lq','08033311125','5a170e1d9a0f780f4d4b8dd7eb8dfc0e','2021-09-16 10:59:46','2021-09-16 10:59:46'),(7,'123456','123456','joe@getnadak.co',NULL,'$2y$10$Dot6Bijl03wtQ1s75YuWRuNEqtKmqe2ZihH/igN1E5UPoW/PLEHMq','080','1a64680e78d83156308ec61a3f665bd6','2021-09-16 11:23:48','2021-09-16 11:23:48'),(8,'Dr. Webster Hamill MD','Araceli Gleichner','demario.wolff@stehr.info',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:00:35','2021-09-16 12:00:35'),(9,'Ms. Adriana Gaylord V','Newell Wisoky I','cdamore@gmail.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:00:35','2021-09-16 12:00:35'),(10,'Rhea Ondricka DDS','Ms. Jessika Flatley DVM','simonis.cecil@hyatt.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:02:58','2021-09-16 12:02:58'),(11,'Felton Dietrich','Gregg Fadel V','rau.colby@feeney.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:02:58','2021-09-16 12:02:58'),(12,'Ms. Haven Feeney IV','Theron Cartwright','kayden.lynch@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:04:13','2021-09-16 12:04:13'),(13,'Gabrielle Gorczany','Jay Pollich','otho.ferry@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:04:14','2021-09-16 12:04:14'),(14,'123456','123456','joe@getnaddak.co',NULL,'$2y$10$SCd1DVXKzCTptNEo0jF9/eYDUk2vy7ZrRYzUPNMcNdrVA228XiL4G','080','7060a370d19dc09f633a386abd0407f9','2021-09-16 12:04:37','2021-09-16 12:04:37'),(15,'Mortimer Wehner','Dr. Scotty Kirlin DVM','fmoen@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:06:07','2021-09-16 12:06:07'),(16,'Elian Towne V','Bria Russel','schuster.zola@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:06:07','2021-09-16 12:06:07'),(17,'Ansel Anderson','Jessika Schowalter','qorn@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:07:28','2021-09-16 12:07:28'),(18,'password','password','596397098user@getnada.com',NULL,'$2y$10$ABXB5ggcMaBpnekWc6woJedf6VoH5awrEeuhIp8ZunVcIyj0hzn4.','080','282e65768444ddd2422c2a92c2d24fef','2021-09-16 12:07:29','2021-09-16 12:07:29'),(19,'Amani Kulas','Lillian Larson','martine25@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:07:29','2021-09-16 12:07:29'),(20,'Dameon Vandervort I','Miss Juliana Kunze II','weston.bruen@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:08:50','2021-09-16 12:08:50'),(21,'password','password','996382327user@getnada.com',NULL,'$2y$10$GtKquuU1F71sfZBgGJKOxOYWzlz1wgGKMk9YoChcVWf/QjRUOdQv.','080','24a57601c4589d1ad1b3dcac02be7568','2021-09-16 12:08:50','2021-09-16 12:08:50'),(22,'Holden Funk','Erika Morissette','torphy.chanelle@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:08:51','2021-09-16 12:08:51'),(23,'Gerda Ratke','Itzel Turner','carlo.waelchi@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:09:13','2021-09-16 12:09:13'),(24,'password','password','1163474270user@getnada.com',NULL,'$2y$10$m/3t3/UHERLJd7Wg11owGOwe0lTOLDN/iZ5ixdEGZC1TGT8w9Njpe','080','303c4121c177fe5ee3de280e9e780b0f','2021-09-16 12:09:13','2021-09-16 12:09:13'),(25,'Prof. Garret Ortiz DVM','Destin Prohaska','kamille.gottlieb@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 12:09:13','2021-09-16 12:09:13'),(26,'123456','123456','joe@getnaddak.con',NULL,'$2y$10$caBvSIUqeJZwCEooiP8UROXK9okWGh/UBjzhU1.ievH2FtB5Bzif6','080','6637052bae28601e8d36b559b5c8abea','2021-09-16 12:50:39','2021-09-16 12:50:40'),(27,'123456','123456','joe@getnaddak.conm',NULL,'$2y$10$4R1YQfOE5ECeWxeWGqNt0eO.BUopd.DbtjrAGvdLDIRU61KeaE2ha','080','39407827e26444f28f461a87e017f193','2021-09-16 12:51:37','2021-09-16 12:51:37'),(28,'123456','123456','joe@getnaddak.conmd',NULL,'$2y$10$gHOlOF62UMsBiSpe5rm5V.rrqCNKxXCl3/9JS2Rhs5DCymOCN1nuW','080','e1bd7d26aea3fcf54e9670a19fb60312','2021-09-16 12:53:13','2021-09-16 12:53:13'),(29,'Bobby Schoen','Braulio Torphy','johns.marjolaine@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:51:46','2021-09-16 14:51:46'),(30,'password','password','1201274522user@getnada.com',NULL,'$2y$10$RY0BdtsnbdjIYWXTixsGpeM4YdoSxpyFxRnxBlAjfo6qLPQARsjYS','080','b3625cde5c087655854badd97b2bc0d1','2021-09-16 14:51:49','2021-09-16 14:51:52'),(31,'Timothy Kuhic DVM','Alva Heidenreich I','britney.abbott@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:51:52','2021-09-16 14:51:52'),(32,'Christine Jenkins','Prof. Dena Kirlin IV','erling63@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:53:29','2021-09-16 14:53:29'),(33,'password','password','1687038958user@getnada.com',NULL,'$2y$10$WMV3QGyt/rxzBVz17AQ8ie0ayZ//0HFS3ubcMM2Zb8wru6PLf.Kda','080','c2216488ffeb836306e335f011acaac8','2021-09-16 14:53:29','2021-09-16 14:53:29'),(34,'Dr. Olen Stoltenberg V','Jammie Parisian','virgil47@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:53:30','2021-09-16 14:53:30'),(35,'Fidel Upton I','Aaliyah Mraz V','wiley.hoppe@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:53:30','2021-09-16 14:53:30'),(36,'Lupe Wisoky','Shanelle Wuckert','dbeahan@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:54:53','2021-09-16 14:54:53'),(37,'password','password','1830968493user@getnada.com',NULL,'$2y$10$u4lTDb5f/AWZ3nf9MhEy1eL.DJnsgZJOMDwtaSBhTqaKcqU8wFZzi','080','f39ac1142503cc4ff6d13a947cab4ab1','2021-09-16 14:54:53','2021-09-16 14:54:53'),(38,'Maximillia Roberts','Shemar Heathcote','greinger@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:54:53','2021-09-16 14:54:53'),(39,'Prof. Bo Toy','Josh Rowe','mafalda.dach@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:54:53','2021-09-16 14:54:53'),(40,'Miss Tyra Altenwerth','Oceane Tromp','wkohler@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:58:54','2021-09-16 14:58:54'),(41,'password','password','1413587518user@getnada.com',NULL,'$2y$10$xD1sWDjx9Zq0ZA9sp65DsOWG0paq1ZXnERq54MfbAw23u5tWiTdOW','080','a81596a8c0a5ad2e9b3336ac445bda3f','2021-09-16 14:58:55','2021-09-16 14:58:55'),(42,'Miss Janis Bartell V','Cathy Rippin','hirthe.eleonore@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:58:55','2021-09-16 14:58:55'),(43,'Shirley Stiedemann','Zackary Abbott','kbashirian@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:58:55','2021-09-16 14:58:55'),(44,'Kaya Deckow IV','Maximillia Rohan','kerluke.elda@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:59:24','2021-09-16 14:59:24'),(45,'password','password','773924290user@getnada.com',NULL,'$2y$10$lM.ciwvkiF65ttyqhCmn8.BbckRzCmLWtQdFQg5lxIvvwVCLoaU5O','080','295e0153a7902875ba9797df4c05d824','2021-09-16 14:59:25','2021-09-16 14:59:25'),(46,'Aleen Kuhn','Adela Reynolds','sarai.kub@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:59:25','2021-09-16 14:59:25'),(47,'Anabelle Okuneva II','Ozella Schroeder','pacocha.graham@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:59:25','2021-09-16 14:59:25'),(48,'Marcelina Rohan','Keely Beahan','fterry@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:59:48','2021-09-16 14:59:48'),(49,'password','password','1633197262user@getnada.com',NULL,'$2y$10$9u9PVuP9jyPo2vUrUldvQ.NCk.ObgZ1LSa8DgwjVUdpsJtLfZNTwK','080','cbcdfa66d13755b07d646a37b5aeb826','2021-09-16 14:59:48','2021-09-16 14:59:49'),(50,'Dr. Ronny Jast MD','Miss Thea Rempel DDS','skonopelski@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:59:50','2021-09-16 14:59:50'),(51,'Prof. Allan Hackett II','Haley Braun','ankunding.jeanie@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 14:59:50','2021-09-16 14:59:50'),(52,'Nat Goodwin','Brando Stoltenberg','darlene28@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:02:27','2021-09-16 15:02:27'),(53,'password','password','964137440user@getnada.com',NULL,'$2y$10$/46FIQka6H6xCpPSPtFr1.2GpFpW12jAWbvFzWU4mmJ9Hq.ZRtj4q','080','b10dc0ce1666ec951352bb74710793de','2021-09-16 15:02:27','2021-09-16 15:02:27'),(54,'Hellen Jerde','Nathaniel Gibson Sr.','orion34@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:02:27','2021-09-16 15:02:27'),(55,'Miss Jakayla Raynor','Jovany Zboncak','paucek.violette@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:02:27','2021-09-16 15:02:27'),(56,'Miss Jennyfer Watsica','Neva Schowalter','altenwerth.nola@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:10:45','2021-09-16 15:10:45'),(57,'password','password','703193863user@getnada.com',NULL,'$2y$10$oFQci84vmwZL.hc.Zted3.mEMClPVumh7two5eHMDepFtNDitoeRu','080','291b8ad880c76330fae83a606ddb0fe7','2021-09-16 15:10:45','2021-09-16 15:10:45'),(58,'Krystal Ledner I','Dr. Justice Lueilwitz','okoch@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:10:45','2021-09-16 15:10:45'),(59,'Casper McCullough','Roslyn Goldner Jr.','jonathon.mohr@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:11:55','2021-09-16 15:11:55'),(60,'password','password','1738447870user@getnada.com',NULL,'$2y$10$pq1/qoym3.ItxIIE5bFnJeGTlKROWG.PbNp0xLPI30aLEp4rE4W8u','080','df01f02ad39eb0176f2793f07727ac1f','2021-09-16 15:11:56','2021-09-16 15:11:56'),(61,'Brad Lemke','Faustino Lubowitz','briana.rosenbaum@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:11:56','2021-09-16 15:11:56'),(62,'Ibrahim Schimmel','Leann Koepp','domenica44@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:14:17','2021-09-16 15:14:17'),(63,'password','password','246124073user@getnada.com',NULL,'$2y$10$RowWkgmkKgFV35w2g8vOB.LiGtN/VcMiw8pi8aUygjP.276GlAbj6','080','157acab9a63c5d2438b5fa646b15cea9','2021-09-16 15:14:17','2021-09-16 15:14:18'),(64,'Alyson Berge I','Tyrique Bode III','wisozk.halle@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:14:18','2021-09-16 15:14:18'),(65,'Bernardo Hagenes V','Prof. Ottis Fritsch','howe.lucy@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:27:05','2021-09-16 15:27:05'),(66,'password','password','80026413user@getnada.com',NULL,'$2y$10$2xX10tXpEpZmPTidpEDzi.2w0c2qIxsfFbyXlgebq4ObdmqRyw/XK','080','8fdbfef7b6620451a91ccc58ec7b9dc9','2021-09-16 15:27:05','2021-09-16 15:27:05'),(67,'Mr. Brannon Schowalter I','Shayna Luettgen','swift.janick@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:27:06','2021-09-16 15:27:06'),(68,'Hermann Kreiger I','Berry Rau','dwindler@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:27:44','2021-09-16 15:27:44'),(69,'password','password','1475591617user@getnada.com',NULL,'$2y$10$07kAIoYrV6V.k2Jh.p8R8uyvwrcGb0KjR9pRvmaXJvEiRpjajQyzG','080','18cc07b6bb77d378f7baaa65b17e9471','2021-09-16 15:27:44','2021-09-16 15:27:44'),(70,'Dayton Bins II','Prof. Clair Bergstrom II','flatley.terrill@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:27:44','2021-09-16 15:27:44'),(71,'Kaya Reinger','Annamarie Cruickshank','layne03@example.org',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:28:29','2021-09-16 15:28:29'),(72,'password','password','894081589user@getnada.com',NULL,'$2y$10$kfByokbNPmkAIlmmk8Nste3aigArgiNs3T/bAh.HQHDyhiIVMMgU.','080','64d747b3dd6c643d5902757c078f041d','2021-09-16 15:28:29','2021-09-16 15:28:29'),(73,'Kaela Hansen','Dr. Carson Flatley','bailey.roselyn@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:28:30','2021-09-16 15:28:30'),(74,'Myrtie Harber','Hadley Simonis','freddie22@example.net',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:29:26','2021-09-16 15:29:26'),(75,'password','password','318632817user@getnada.com',NULL,'$2y$10$7V2cAbs1tmYkDze.ATI.0Oknu1bcVtO/MOtJEtY3.InC6Ok1U6Vh2','080','b83a095ed1940f87589351d9530897bc','2021-09-16 15:29:26','2021-09-16 15:29:26'),(76,'Una O\'Kon','Vilma Bruen','miller.rory@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 15:29:27','2021-09-16 15:29:27'),(77,'Neal Stanton','Effie Spencer II','foreilly@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 16:36:35','2021-09-16 16:36:35'),(78,'password','password','63186386user@getnada.com',NULL,'$2y$10$W.MUv93yecZf1kjl.XcQYOAaK20zr4XNKuRLo2kiHF7wb53wnJSiC','080','35669cd20af5324deff003c499e28142','2021-09-16 16:36:35','2021-09-16 16:36:35'),(79,'Murl Reinger','Prof. Yolanda Schamberger','halvorson.toni@example.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','080','','2021-09-16 16:36:36','2021-09-16 16:36:36');
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

-- Dump completed on 2021-09-16 18:39:56
