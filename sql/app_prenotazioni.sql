-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: app_prenotazioni
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `prenotazioni`
--

DROP TABLE IF EXISTS `prenotazioni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prenotazioni` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codice_fiscale` varchar(16) NOT NULL,
  `giorno` date NOT NULL,
  `codice_prenotazione` varchar(45) NOT NULL,
  `eseguito` tinyint(1) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenotazioni`
--

LOCK TABLES `prenotazioni` WRITE;
/*!40000 ALTER TABLE `prenotazioni` DISABLE KEYS */;
INSERT INTO `prenotazioni` VALUES (44,'uiui','2021-03-23','cgmjBmu1Ul7BHAUjSdg5MHgEWowUal7TqeRBFT9tqhRrj',0,NULL),(45,'wer','2021-03-23','bsc6QRS6IWKMSBte9X7FxsXELDtuOdrcCIMaDpMcpFlZ1',0,NULL),(46,'opp','2021-03-24','EOAeBuJbd1CmMGrKYzTdAywuatBafMkRfhAyB4c9AJsSn',0,NULL),(47,'er','2021-03-22','8oD6pWGVc3tZXm5qc0K1bCmAxFvDcXR2bN7H2vNA6LJKI',0,NULL),(49,'tyuu','2021-03-23','Dhi0dWfSkiKwPJyksE6k3jTjoiRuCykrZu2MleQ4NzCJz',0,NULL),(50,'uio','2021-03-03','ZIFFYcZ77cGUeBoDHzW4ftQ53qn16UFmKcMa3JaJ7HMf2',0,NULL),(51,'op','2021-03-21','PNmaQhklnZOPHr8kXSqTvpGUMt45MwQeJePMBQERTDEEu',0,NULL),(52,'op','2021-03-21','0yFNHgjwOoaOvoOPI7qOaYdHsNTNmRt503fXEixvJvGom',0,NULL),(53,'op','2021-03-21','UmUOlBPoSLTEsbnvNk1mmdCX7v2IklERkiWI46LGTtcKp',0,NULL),(54,'op','2021-04-02','XYXOdnySuNV9E37gqbkNerq7bWBBfqKA6J1AeyeiWHPCm',0,NULL),(55,'op','2021-04-02','RPfdU7glwxHDHjeZkr9GlNBHOH6vZSrYe6tAXW5LTtVvN',0,NULL),(56,'op','2021-04-02','QeHWxF0m0PC6N6DRbTHJRoE6btJ1JtxhsWHpbOxTcqX5q',0,NULL),(57,'efdfe','2021-03-27','7jqdfj6S8WwVRsJtVLmkwzGpzOcFWpigA9tBmiuVHI8BH',0,NULL);
/*!40000 ALTER TABLE `prenotazioni` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-27 11:15:47
