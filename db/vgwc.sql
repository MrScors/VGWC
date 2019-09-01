-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: vgwc
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `heroes`
--

DROP TABLE IF EXISTS `heroes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `heroes` (
  `id` int(11) DEFAULT NULL,
  `awful_against` varchar(255) DEFAULT NULL,
  `bad_against` varchar(255) DEFAULT NULL,
  `good_against` varchar(255) DEFAULT NULL,
  `good_with` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nice_against` varchar(255) DEFAULT NULL,
  `nice_with` varchar(255) DEFAULT NULL,
  `not_good_against` varchar(255) DEFAULT NULL,
  `perfect_against` varchar(255) DEFAULT NULL,
  `perfect_with` varchar(255) DEFAULT NULL,
  `very_bad_against` varchar(255) DEFAULT NULL,
  `very_good_against` varchar(255) DEFAULT NULL,
  `very_good_with` varchar(255) DEFAULT NULL,
  `picture_name` varchar(255) DEFAULT NULL,
  `picture_prev_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heroes`
--

LOCK TABLES `heroes` WRITE;
/*!40000 ALTER TABLE `heroes` DISABLE KEYS */;
INSERT INTO `heroes` VALUES (3,'Baptiste','Catherine','Celeste','Churnwalker','Anka','Gwen','Phinn','Reza','Skye','Ardan','Tony','Churnwalker','Adagio','21124e73-2a89-4f1a-b3bc-102fe127722d.anka.png','99ad6ac1-4571-49c2-9e02-e3f1f0bbc4e4.anka_prev.png'),(2,'Reim','Lyra','Petal','Ardan','Alpha','Joule','Phinn','Lance','Vox','Adagio','Krul','Taka','Lance','44767f67-da99-4fb4-bd56-f51513cb9111.alpha.png','eaedb209-f3b1-47ac-9c9a-07bc302a77ff.alpha_prev.png'),(1,'Skye','Fortress','Gwen','Ozo','Adagio','Reza','Adagio','Celeste','Vox','Blackfeather','Blackfeather','Ringo','Alpha','c390fa78-53b5-4e8c-8aa6-a64953fc8473.adagio.png','ff81fa6e-4ea3-4453-946e-ec8f4cda769a.adagio_prev.png'),(4,'Lyra','Catherine','Taka','Taka','Ardan','Fortress','Idris','Vox','Skye','Krul','Blackfeather','Glaive','Koshka','b9be7f48-26ba-4d6d-8143-4447ccaf5c00.ardan.png','887b2e0a-c099-466c-bd19-ac5ce8a84d88.ardan_prev.png'),(5,'Petal','Blackfeather','Koshka','Catherine','Baptiste','Reza','Ardan','Idris','Skye','Krul','Reim','Anka','Vox','157dae5f-8316-452d-b4a1-fe2cc8c6a65a.baptiste.png','77424173-c286-4a5b-87a9-c6365b2a5f6f.baptiste_prev.png'),(6,'Blackfeather','Taka','Saw','Rona','Baron','Lyra','Lance','Koshka','Vox','Ardan','Idris','Celeste','Catherine','f181ea2d-c4c9-4d53-9471-759278cfac85.baron.png','dece8cbe-0f85-4ba3-acb8-fe7b7c7ebde5.baron_prev.png'),(7,'Rona','Krul','Baron','Catherine','Blackfeather','Gwen','Ardan','Taka','Koshka','Adagio','Reim','Ringo','Fortress','a72ff308-0bc5-44de-9be9-8aecd8e73e6b.blackfeather.png','4d5b9019-f4f1-449a-ae90-5199591d602f.blackfeather_prev.png'),(8,'Phinn','Blackfeather','Ozo','Joule','Catherine','Skaarf','Kestrel','Petal','Rona','Vox','Skye','Grace','Blackfeather','60497cd3-62b1-423e-b9ad-f183727300e1.catherine.png','44151697-87fb-4ece-bb4f-f5192e61afa5.catherine_prev.png'),(9,'Taka','Alpha','Adagio','Lance','Celeste','Kestrel','Phinn','Gwen','Saw','Ardan','Baron','Petal','Catherine','fdf86215-a7bd-4828-bf3f-29e6e24848d7.celeste.png','5bfb3f0b-23ad-4cb6-aa5d-ed8b0e6c9d42.celeste_prev.png'),(10,'Idris','Gwen','Lance','Alpha','Churnwalker','Kestrel','Rona','Anka','Taka','Vox','Lorelai','Ringo','Varya','09b5a462-51de-477f-9d4f-70e77d967cb2.churnwalker.png','36cbe014-e3f2-4fc0-a377-fa597bf2a994.churnwalker_prev.png'),(11,'Petal','Gwen','Skaarf','Ringo','Flicker','Taka','Glaive','Saw','Ringo','Reim','Fortress','Idris','Krul','e6e1753e-dffb-4caf-b658-1dc20a24890c.flicker.png','f6046df3-c100-4bf4-8fe7-9f6aa1ead569.flicker_prev.png'),(12,'Rona','Reim','Flicker','Koshka','Fortress','Lance','Krul','Koshka','Taka','Blackfeather','Lyra','Kestrel','Petal','37cfcbd4-8499-4e90-9eb5-bc2772d4efc1.fortress.png','e998a0d1-90c3-479e-a80c-00f3efe69a19.fortress_prev.png'),(13,'Gwen','Krul','Idris','Vox','Glaive','Skye','Ardan','Baptiste','Kestrel','Catherine','Rona','Taka','Flicker','9fa96ea7-f052-4bfa-924d-479130b4c666.glaive.png','a02543f2-1954-41d7-8660-cfd867c87274.glaive_prev.png'),(14,'Catherine','Phinn','Krul','Celeste','Grace','Celeste','Reza','Vox','Rona','Reim','Skye','Glaive','Ozo','32c3e4c5-805b-453e-a435-90841fe7fae2.grace.png','7fda288e-af8f-4f24-ba02-42b0aebd9ef3.grace_prev.png'),(15,'Reim','Baptiste','Blackfeather','Ardan','Grumpjaw','Churnwalker','Lorelai','Samuel','Koshka','Lyra','Skye','Ringo','Grace','f5a3378c-e593-467a-8d54-e02938b1b801.grumpjaw.png','6f484c31-51f8-443d-87e7-e294e22991ce.grumpjaw_prev.png'),(16,'Blackfeather','Ozo','Celeste','Petal','Gwen','Ringo','Baptiste','Vox','Glaive','Lyra','Idris','Flicker','Ardan','fb6f8455-83d2-4abd-9718-3691a7bc32ec.gwen.png','7d5c3831-a99d-4791-af8e-88147fb35c75.gwen_prev.png'),(17,'Koshka','Taka','Saw','Adagio','Idris','Vox','Lyra','Blackfeather','Baron','Ardan','Glaive','Gwen','Samuel','b3b8c334-ccdd-4ef2-b2bd-cb8ef772a8da.idris.png','8c1a5328-f165-4711-951d-034436591c33.idris_prev.png'),(18,'Reim','Alpha','Celeste','Grace','Joule','Baron','Adagio','Rona','Petal','Catherine','Vox','Saw','Flicker','504eb254-ac5c-429b-9ec3-938ce71a1b12.joule.png','f0a61d97-a7d7-47b4-a584-9a9927bd8eaa.joule_prev.png'),(19,'Baptiste','Reim','Baron','Baptiste','Kensei','Ardan','Lorelai','Lorelai','Catherine','Lorelai','Krul','Phinn','Ardan','340a02b3-9d99-4314-adfb-84f5036717c2.kensei.png','c9513816-8ea9-4a4e-993c-40d1ef4fff7b.kensei_prev.png'),(20,'Petal','Glaive','Saw','Lance','Kestrel','Ardan','Flicker','Koshka','Reim','Catherine','Fortress','Krul','Phinn','6e9b01d0-4523-432a-b122-9ec27e381c9b.','ed35a8b4-52e0-4412-9c2b-780ce1832bf9.kestrel_prev.png'),(21,'Fortress','Lorelai','Baptiste','Catherine','Kinetic','Reza','Phinn','Celeste','Vox','Skye','Petal','Baron','Lance','de323bd3-c7ae-4704-8634-2308e13614ba.kinetic.png','4b17228b-33eb-40f9-9d77-78b027659b8a.kinetic_prev.png'),(22,'Blackfeather','Baptiste','Vox','Fortress','Koshka','Baron','Adagio','Glaive','Ringo','Ardan','Lyra','Idris','Lance','5d95d19e-c724-490e-bee3-c2fb67ba36c4.koshka.png','91844ba0-416e-4f32-967c-f617f2dd48ea.koshka_prev.png'),(23,'Petal','Samuel','Rona','Phinn','Krul','Glaive','Baptiste','Kestrel','Alpha','Ardan','Skye','Ozo','Flicker','72cb542d-7525-462f-b452-8c08cd6c02bd.krul.png','20c4ea89-9b87-4e0d-943b-2dba396af760.krul_prev.png'),(24,'Fortress','Blackfeather','Catherine','Reza','Lance','Krul','Celeste','Phinn','Ozo','Koshka','Skye','Alpha','Alpha','63b4b730-8b41-4f31-903e-29d861c4c7f1.lance.png','60f7de22-99bb-49b9-abcd-88f4a3080e14.lance_prev.png'),(25,'Koshka','Blackfeather','Kinetic','Kestrel','Lorelai','Phinn','Joule','Ringo','Churnwalker','Grumpjaw','Skaarf','Krul','Kensei','0f22bfe4-6d64-473c-8b4c-74131ab57b8f.lorelai.png','bd527d74-090b-490e-a9ff-10fcb07aa30c.lorelai_prev.png'),(26,'Ringo','Skaarf','Ozo','Ozo','Lyra','Koshka','Gwen','Idris','Taka','Saw','Baron','Alpha','Rona','79f8221c-7400-4f07-a888-1ec49be9321f.lyra.png','2bc1a4f6-b778-4813-b537-435fb7272b3b.lyra_prev.png'),(27,'Fortress','Phinn','Grumpjaw','Churnwalker','Malene','Churnwalker','Catherine','Petal','Reim','Fortress','Idris','Taka','Adagio','19ba5552-3086-4a2b-b9c2-dc312c4b0825.malene.png','1e68976d-44c4-407f-8b88-915deeb889a8.malene_prev.png'),(28,'Lance','Rona','Skye','Grace','Ozo','Vox','Ardan','Lyra','Petal','Adagio','Krul','Gwen','Lyra','0072dd2f-9ed7-40cf-8078-1654a45d9104.ozo.png','ae9af7e3-6879-49bf-a1c7-a45a9a8bcd2d.ozo_prev.png'),(29,'Ozo','Alpha','Idris','Blackfeather','Petal','Reim','Glaive','Vox','Taka','Fortress','Joule','Krul','Gwen','fb936874-43d0-46a9-b6d6-8f0d4fd370c7.petal.png','9a5e66dd-bf2e-41f7-bc5f-e84e73274401.petal_prev.png'),(30,'Vox','Kensei','Lance','Krul','Phinn','Koshka','Alpha','Blackfeather','Catherine','Reim','Skaarf','Grace','Saw','bcd80e5a-e3e9-4cb9-87f5-fe4bba579041.phinn.png','0cf7b0c0-b450-459b-9d5e-e965227918a0.phinn_prev.png'),(31,'Skye','Petal','Joule','Lyra','Reim','Rona','Grace','Kestrel','Alpha','Phinn','Vox','Blackfeather','Flicker','8c5d1280-879d-41ce-a9e6-d07de7176245.reim.png','08fc3eeb-21ad-4a5f-b5b4-00d6a987b52e.reim_prev.png'),(32,'Baptiste','Lyra','Celeste','Grace','Reza','Kestrel','Catherine','Alpha','Samuel','Lance','Blackfeather','Skaarf','Ardan','ba33cd31-6158-4052-93ce-9ff85e93c08b.reza.png','c85b63c2-ba3c-4997-bc39-983f7a7c384e.reza_prev.png'),(33,'Blackfeather','Flicker','Celeste','Taka','Ringo','Skye','Fortress','Saw','Vox','Ardan','Koshka','Lyra','Flicker','0f4963a7-96d7-4e43-9c24-bf2ea523a0fa.ringo.png','019d2ed8-c0a9-4be0-a78c-980ada6b1ef1.ringo_prev.png'),(34,'Catherine','Skye','Glaive','Ardan','Rona','Fortress','Fortress','Reim','Blackfeather','Lyra','Krul','Ozo','Adagio','986e3055-6b05-4cf6-a4cc-4bb64148c187.rona.png','214a7231-fb83-4d61-8aca-d6fe4c12c90b.rona_prev.png'),(35,'Blackfeather','Glaive','Skye','Catherine','Samuel','Rona','Phinn','Taka','Saw','Ardan','Reza','Krul','Idris','aa84b376-4980-452e-a7f0-f372de36c889.samuel.png','c8a9f606-9c43-4bfe-8b71-489c66a3a6fb.samuel_prev.png'),(36,'Skaarf','Samuel','Flicker','Adagio','Saw','Gwen','Ardan','Joule','Vox','Lyra','Celeste','Ringo','Phinn','18ccd6e8-0e08-460f-9b24-261c9da82a35.ardan.png','a26d402c-ff87-40a6-bf4d-bd7dd8206707.ardan_prev.png'),(37,'Taka','Reza','Phinn','Catherine','Skaarf','Lyra','Adagio','Catherine','Saw','Ardan','Blackfeather','Petal','Lance','ca11fb03-8f1b-4cd1-bdd0-a285d610e944.skaarf.png','c0afdd48-6db0-4987-b628-ffa8f2a37932.skaarf_prev.png'),(38,'Taka','Ardan','Krul','Lyra','Skye','Rona','Lance','Ozo','Reim','Catherine','Baptiste','Adagio','Ardan','090a131d-0978-4e56-8a4c-5255acdbda79.skye.png','b7f26954-2379-478f-b3f5-0ed85d5ab522.skye_prev.png'),(39,'Petal','Lyra','Skaarf','Ringo','Taka','Baron','Phinn','Alpha','Skye','Ardan','Fortress','Celeste','Catherine','dc566ec7-4db7-40f1-a1ce-8dd8e909bd6d.taka.png','c2191f27-9cb5-4261-ac8b-882211f56143.taka_prev.png'),(40,'Krul','Skye','Rona','Catherine','Tony','Varya','Lyra','Lorelai','Anka','Phinn','Reim','Baptiste','Vox','e64b01d3-a521-43e3-9955-9e8e0cb9ec59.tony.png','96e56585-028e-452d-b890-c9aee0f9507f.tony_prev.png'),(41,'Taka','Alpha','Baron','Catherine','Varya','Reza','Phinn','Baptiste','Skaarf','Churnwalker','Blackfeather','Vox','Ardan','09fe74d4-c30b-4d8c-b4f7-93d6969b1eec.varya.png','646c4c7e-cfd8-42b4-b8a9-783e642e1a57.varya_prev.png'),(42,'Saw','Ringo','Petal','Adagio','Vox','Phinn','Glaive','Koshka','Reim','Catherine','Alpha','Joule','Ardan','0353b73d-80d5-40b0-a7ba-6054a93ec6bb.vox.png','b0016db0-e752-402b-ba8b-81149a49b4ce.vox_prev.png');
/*!40000 ALTER TABLE `heroes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seq_hero`
--

DROP TABLE IF EXISTS `seq_hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seq_hero` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seq_hero`
--

LOCK TABLES `seq_hero` WRITE;
/*!40000 ALTER TABLE `seq_hero` DISABLE KEYS */;
INSERT INTO `seq_hero` VALUES (45);
/*!40000 ALTER TABLE `seq_hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seq_users`
--

DROP TABLE IF EXISTS `seq_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seq_users` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seq_users`
--

LOCK TABLES `seq_users` WRITE;
/*!40000 ALTER TABLE `seq_users` DISABLE KEYS */;
INSERT INTO `seq_users` VALUES (5);
/*!40000 ALTER TABLE `seq_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `roles` varchar(255) DEFAULT NULL,
  KEY `FKj345gk1bovqvfame88rcx7yyx` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'ADMIN'),(2,'USER'),(2,'ADMIN'),(3,'USER'),(1,'USER');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary '','$2a$08$z75UjVxPa/dY/IkV9y1jWOmPkwd/4TKzxaeieo7p.Q4djYFh8x3nq','admin','adminn@gmial.com'),(2,_binary '','$2a$08$LnjLhX4lRPl.xWzVeewCkuIefXyIQ2kkHpthOETfiEHYpr2T6bDIy','MrScors','MisterScors@gmail.com'),(3,_binary '','$2a$08$xD1lPGkkzRn7vv0RLoYyi.Le./.ZYsgqesUnkH0rJfeZ5AghZAq82','User','user@gmail.com');
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

-- Dump completed on 2019-08-29 22:26:15
