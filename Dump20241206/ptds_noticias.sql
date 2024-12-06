-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: ptds
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(120) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `manchete` varchar(300) DEFAULT NULL,
  `img_url` varchar(120) DEFAULT NULL,
  `data_publicacao` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,'template-post.html','Elin é um novo JRPG Sandbox em Early Access que apresenta elementos Rogue-Like e Farming-Sim','Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. \nPellentesque vitae facilisis est, \nsed pulvinar mi. Phasellus vitae leo id sapien sagittis \nvolutpat. Donec pretium auctor enim, a vehicula felis. \nAliquam id neque quis risus feugiat feugiat ac nec leo.','imagens/elin2.png','2024-11-29'),(2,'template-post.html','Novo update de Throne and Liberty traz a Lança como nova arma','Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. \nPellentesque vitae facilisis est, \nsed pulvinar mi. Phasellus vitae leo id sapien sagittis \nvolutpat. Donec pretium auctor enim, a vehicula felis. \nAliquam id neque quis risus feugiat feugiat ac nec leo.','imagens/tlspear2.png','2024-11-29'),(3,'template-post.html','Dark Souls 2: Entenda como o atributo \"Agilidade\" pode mudar a sua gameplay','Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. \nPellentesque vitae facilisis est, \nsed pulvinar mi. Phasellus vitae leo id sapien sagittis \nvolutpat. Donec pretium auctor enim, a vehicula felis.','imagens/darksouls2.png','2024-12-05'),(4,'template-post.html','Conheça Apogea, um MMORPG inspirado em Tibia desenvolvido por\nbrasileiros','Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. \nPellentesque vitae facilisis est, \nsed pulvinar mi. Phasellus vitae leo id sapien sagittis \nvolutpat.\n','imagens/apogea2.png','2024-12-06'),(5,'template-post.html','Early Access do ARPG Path of Exile 2 terá seu inicio em 6 de Dezembro','Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. \nPellentesque vitae facilisis est, \nsed pulvinar mi. Phasellus vitae leo id sapien sagittis \nvolutpat.','imagens/poe22.png','2024-12-06');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-06 15:12:17
