-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: tamponi
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codice_fiscale` varchar(16) NOT NULL,
  `giorno` date NOT NULL,
  `codice_prenotazione` varchar(45) NOT NULL,
  `eseguito` tinyint(1) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `annullato` tinyint(1) NOT NULL DEFAULT 0,
  `tipologia` varchar(25) NOT NULL DEFAULT 'tampone',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenotazioni`
--

LOCK TABLES `prenotazioni` WRITE;
/*!40000 ALTER TABLE `prenotazioni` DISABLE KEYS */;
INSERT INTO `prenotazioni` VALUES (44,'uiui','2021-03-23','cgmjBmu1Ul7BHAUjSdg5MHgEWowUal7TqeRBFT9tqhRrj',0,NULL,1,'tampone'),(45,'wer','2021-03-23','bsc6QRS6IWKMSBte9X7FxsXELDtuOdrcCIMaDpMcpFlZ1',1,'test sicurezza',0,'tampone'),(46,'opp','2021-03-24','EOAeBuJbd1CmMGrKYzTdAywuatBafMkRfhAyB4c9AJsSn',0,NULL,0,'tampone'),(47,'er','2021-03-22','8oD6pWGVc3tZXm5qc0K1bCmAxFvDcXR2bN7H2vNA6LJKI',0,NULL,0,'tampone'),(49,'tyuu','2021-03-23','Dhi0dWfSkiKwPJyksE6k3jTjoiRuCykrZu2MleQ4NzCJz',0,NULL,0,'tampone'),(50,'uio','2021-03-03','ZIFFYcZ77cGUeBoDHzW4ftQ53qn16UFmKcMa3JaJ7HMf2',0,NULL,0,'tampone'),(51,'op','2021-03-21','PNmaQhklnZOPHr8kXSqTvpGUMt45MwQeJePMBQERTDEEu',1,'hello',0,'tampone'),(52,'op','2021-03-21','0yFNHgjwOoaOvoOPI7qOaYdHsNTNmRt503fXEixvJvGom',0,NULL,0,'tampone'),(53,'op','2021-03-21','UmUOlBPoSLTEsbnvNk1mmdCX7v2IklERkiWI46LGTtcKp',0,NULL,0,'tampone'),(54,'op','2021-04-02','XYXOdnySuNV9E37gqbkNerq7bWBBfqKA6J1AeyeiWHPCm',0,NULL,0,'tampone'),(55,'op','2021-04-02','RPfdU7glwxHDHjeZkr9GlNBHOH6vZSrYe6tAXW5LTtVvN',0,NULL,0,'tampone'),(56,'op','2021-04-02','QeHWxF0m0PC6N6DRbTHJRoE6btJ1JtxhsWHpbOxTcqX5q',0,NULL,1,'tampone'),(57,'efdfe','2021-03-27','7jqdfj6S8WwVRsJtVLmkwzGpzOcFWpigA9tBmiuVHI8BH',0,NULL,0,'tampone'),(59,'ern20','2021-05-12','xd7uJweuKzHAlDyRa8RTo54tQlaq4miavJpg8jVGmCfCw',0,NULL,0,'tampone'),(60,'ern20','2021-05-04','BogOuT8sa7XK9dfJXnrqhdQrQgtmaWNk8LiH5uS183n5D',1,NULL,0,'tampone'),(61,'ern20','2021-05-07','DIQgKVnkR2YGbzuH9w8LgODqk4SMqLbWdANcuzQqB6SV7',0,NULL,1,'tampone'),(62,'zmw87','2021-05-08','7lyS9xp0ZEqBDMd4aSzhNkYyZDzpWZXvyKNXJELiSbc7r',0,NULL,0,'tampone'),(63,'zmw87','2021-05-08','GMkQbt3KxpEXYc0kHYlIMrVKSEG4ujS8intZ1lGNxDXvS',0,NULL,0,'tampone'),(64,'ern20','2021-05-08','laDYxztQJEQ9WhEZGohtULG9AUAZLkFIk5EofMQQo6p7h',0,NULL,1,'tampone'),(65,'zmw87','2021-05-05','C68VEKgnUnJS2ZbB8yGYNisV5n6Kl9qCXEWeKj6uAbqPd',0,NULL,0,'tampone'),(66,'ern20','2021-05-11','uxdmXZQMYnTHBfZ7qof0asUAmZj5ZfBI8srWoxY5g3SCc',1,'',0,'tampone'),(67,'zmw87','2021-05-11','mRUMP3jr75GTjIusAwpYbBz0YfDjMU7BNQ4bA7yoc12Hd',0,NULL,0,'tampone'),(68,'ern20','2021-05-12','i9mqukyJHhyepSZvnYmZZGZFthpkxIse3ZX50MumTYQAP',1,'sa sa sa',0,'tampone'),(69,'ern20','2021-05-12','bivs9IlIgT5MTmJzZF9E5LfB6T8AUCquKUezI69Hj6Fz8',1,'note',0,'tampone'),(70,'fjkh','2021-04-29','6qcmNVhRLh9drWjD8GI8GoONTS3Fepr2OK4S9ihd1DhhQ',0,NULL,0,'tampone'),(71,'fjkh','2021-05-07','pjppge86uT8RNkckLrmxzp96UVvlutQU0VEB90YFqZIKI',0,NULL,0,'tampone'),(72,'fjkh','2021-05-08','9bwzQ7lR8m6ZpGxKYkchTaVoMQYK61b5kRh9lEFzGFGa2',0,NULL,0,'tampone'),(73,'fjkh','2021-05-09','SpY7kkhI27RQZ3XBnlxaljSZtCwncatnXLrP9v5WQ2wFS',0,NULL,0,'tampone'),(74,'fjkh','2021-05-17','wnAHLSsQxcweCLhPIUSH0aVaxjsxGcqB4x8ZWpvw4AGA0',0,NULL,0,'tampone'),(75,'fjkh','2021-05-15','hETk4ECIdr2jN2YCTFJuPWB3BnsVW5I8AJW4xOFV6aRiR',0,NULL,0,'tampone'),(76,'fjkh','2021-05-13','eU2J1hxxPAR0eJZKIRVOuIGyPqMDU0p2YoQ8hZn3l9RAF',0,NULL,0,'tampone'),(77,'fjkh','2021-05-13','QTOd9JKupuskcSRyT0xxq0ehxgf68oqS6V1HEBquYXSo1',0,NULL,0,'tampone');
/*!40000 ALTER TABLE `prenotazioni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utenti`
--

DROP TABLE IF EXISTS `utenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utenti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `codice_fiscale` varchar(16) DEFAULT NULL,
  `operatore` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `utenti_username_uindex` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utenti`
--

LOCK TABLES `utenti` WRITE;
/*!40000 ALTER TABLE `utenti` DISABLE KEYS */;
INSERT INTO `utenti` VALUES (5,'utente1','$2y$10$Oo8wROQ7FtfMNn10l5kQH.fas8xLfajmMZTQ7LoJZk.KgzJkgaEsG','ern20',0),(6,'BS0001','$2y$10$1CAffJ.Tq9//Kt9HqnHmZOAh4vTxQBeaRb0zINWeYEKgwoe/Tqoz6',NULL,1),(7,'utente2','$2y$10$lDMD1bG9HBvYQpc.mh8GoOoU5QsMQbHtblUjg0x32cXpCSnXb1A0i','zmw87',0),(8,'utente7','$2y$10$xJmQe4lAk7bnEc/Gy09Xu.moP7jS2cZCvQS781uQsylCdz99xzcYu','nmxe',0),(9,'gianni','$2y$10$2j.c0hi.1wWUu3W0AJPmdOfwZjT6wVNdRLLuNYY7ftRVLQXGsy5A.','lord',0),(10,'pinotto','$2y$10$RD7qU5Zi.tzvtPxw7ZAlteZfXjUTJANN/OWAwU7RIseytUDP5Oxre','anor',0),(11,'utente3','$2y$10$aAps8e.NSyCH/QcUsAgdPO6rVKyY7a8gi7IAuwCttMTXWzxZ2OB1W','fjkh',0),(12,'utente4','$2y$10$cxzkv5vtLDHEmIbkkvVH4exagpEiaKL9Z6OzZHAibyLCylhuCThpi','alas',0),(13,'utente5','$2y$10$wkj8ZrX333/ZnD5u16tFe.TKSKBbEvUtp.P2fkJD4.ih3CRIwhL6S','njjn',0),(14,'utente6','$2y$10$KtzskP5aHqpu/rq3ZF9.kOWkacs3o2T/jzCQwP6skpRE3xcqhZU9S','assasa',0);
/*!40000 ALTER TABLE `utenti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-13 16:36:55
