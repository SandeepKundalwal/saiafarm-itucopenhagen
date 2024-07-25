-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: idm
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `auth_token`
--

CREATE DATABASE idm;
USE idm;

DROP TABLE IF EXISTS `auth_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_token` (
  `access_token` varchar(255) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `user_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `pep_proxy_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`access_token`),
  UNIQUE KEY `access_token` (`access_token`),
  KEY `user_id` (`user_id`),
  KEY `pep_proxy_id` (`pep_proxy_id`),
  CONSTRAINT `auth_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_token_ibfk_2` FOREIGN KEY (`pep_proxy_id`) REFERENCES `pep_proxy` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_token`
--

LOCK TABLES `auth_token` WRITE;
/*!40000 ALTER TABLE `auth_token` DISABLE KEYS */;
INSERT INTO `auth_token` VALUES ('02522d5c-69cc-4108-9b80-77d2030f9e5e','2024-07-17 18:07:12',1,'aaaaaaaa-good-0000-0000-000000000000',NULL),('0547e374-87fc-405e-8ea2-25e07c200eca','2024-07-17 17:54:01',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('1aa2d6bd-7251-465c-88a4-40cc32c8dcd1','2024-07-18 21:59:56',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('1fe57090-bc5d-426f-9792-778b07961638','2024-07-17 07:31:49',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('25b47a1d-de5a-40a6-b59d-d6bd04011b33','2024-07-18 21:49:58',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('283b1e5d-d7fa-489d-9ca0-7477b28ce1d6','2024-07-11 16:22:41',1,'aaaaaaaa-good-0000-0000-000000000000',NULL),('2c6e9a57-03ac-48d4-8578-561929ef9b74','2024-07-11 19:23:51',1,'aaaaaaaa-good-0000-0000-000000000000',NULL),('3093a32a-a503-499c-98db-fdde69b638ad','2024-07-18 10:58:44',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('3462455b-518a-410e-8cf2-56600263d567','2024-07-11 14:18:44',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('451183ee-b8d3-498d-861d-91560b097ed6','2024-07-11 15:22:58',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('51f2e380-c959-4dee-a0af-380f730137c3','2026-07-30 13:02:37',1,'admin',NULL),('55f56c40-8636-45c3-a450-24677311f44a','2024-07-19 09:41:53',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('5bdd4370-cc94-4dc8-bbc2-4f544696ce9a','2024-07-18 19:06:04',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('642445e4-b955-4dd9-aec0-469e9beac42f','2024-07-24 07:20:44',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('6bb5127d-180d-4f49-b0ef-45550e562c02','2024-07-17 16:48:24',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('7235f066-99b3-48ef-8db5-eec0681ee7f4','2024-07-19 09:35:22',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('761166b7-49f6-4f5a-ad02-f6ae12fe39da','2024-07-09 07:21:09',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('7b391622-06af-4201-bdd1-2b69796bf9cf','2024-07-18 09:54:59',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('7e62174e-affa-4d8b-a9cd-57f1a27ec5e9','2024-07-18 10:12:44',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('996d3441-3139-4b29-a10d-e16219354a91','2024-07-18 18:40:55',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('9b1def2c-0e97-4a20-b675-256c56981b66','2024-07-19 08:28:53',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('a70e8df7-d559-4028-be89-2b158ea12cce','2024-07-18 06:12:48',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('a8676cee-e24b-4655-918d-6c3d79f47c96','2024-07-17 17:49:39',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa','2026-07-30 12:04:45',1,'aaaaaaaa-good-0000-0000-000000000000',NULL),('ad0d99bc-b9c7-47fb-b07f-7d45e2a84f35','2024-07-24 11:09:29',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('b025d029-ef7b-4010-913e-4e9540b17fee','2024-07-05 09:52:21',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('b94d816e-b8b9-443a-9369-cb9bdf06ff67','2024-07-11 19:04:31',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb','2026-07-30 12:38:13',1,'bbbbbbbb-good-0000-0000-000000000000',NULL),('c2fb7bd3-96be-437b-b5d0-812a348a23b0','2024-07-11 19:33:55',1,'aaaaaaaa-good-0000-0000-000000000000',NULL),('c313c8db-e757-4f85-a549-ec87d61c9e7a','2024-07-23 14:14:31',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('cccccccc-cccc-cccc-cccc-cccccccccccc','2026-07-31 09:36:13',1,'cccccccc-good-0000-0000-000000000000',NULL),('e2f8f202-4823-4c16-ae29-73f881eea970','2024-07-17 08:09:49',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('e64c9d73-0885-4f78-9458-cfbd8b0d4b72','2024-07-17 16:56:56',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('e742688b-22b4-4219-9e94-51eacb36bb14','2024-07-11 15:54:13',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('e8bffb7d-0d3c-469b-8df0-c7e868a50f7d','2024-07-18 18:24:43',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6'),('f3b18321-6def-498f-8245-d42e8128183f','2024-07-05 11:22:23',1,'aaaaaaaa-good-0000-0000-000000000000',NULL),('fdaa3f67-5079-49aa-9e80-5bb845205dbc','2024-07-18 21:55:14',1,NULL,'pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6');
/*!40000 ALTER TABLE `auth_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authzforce`
--

DROP TABLE IF EXISTS `authzforce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authzforce` (
  `az_domain` varchar(255) NOT NULL,
  `policy` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `version` int DEFAULT NULL,
  `oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`az_domain`),
  KEY `oauth_client_id` (`oauth_client_id`),
  CONSTRAINT `authzforce_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authzforce`
--

LOCK TABLES `authzforce` WRITE;
/*!40000 ALTER TABLE `authzforce` DISABLE KEYS */;
INSERT INTO `authzforce` VALUES ('0szdfT-LEe-HZgJCrBIBDA','6e7ee72a-5560-42ca-a4ff-b2c6401c8ab2',4,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f');
/*!40000 ALTER TABLE `authzforce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delegation_evidence`
--

DROP TABLE IF EXISTS `delegation_evidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delegation_evidence` (
  `policy_issuer` varchar(255) NOT NULL,
  `access_subject` varchar(255) NOT NULL,
  `policy` json NOT NULL,
  PRIMARY KEY (`policy_issuer`,`access_subject`),
  UNIQUE KEY `policy_issuer_access_subject_unique` (`policy_issuer`,`access_subject`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delegation_evidence`
--

LOCK TABLES `delegation_evidence` WRITE;
/*!40000 ALTER TABLE `delegation_evidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `delegation_evidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eidas_credentials`
--

DROP TABLE IF EXISTS `eidas_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eidas_credentials` (
  `id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `support_contact_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_contact_person_surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_contact_person_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_contact_person_telephone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_contact_person_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technical_contact_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technical_contact_person_surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technical_contact_person_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technical_contact_person_telephone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technical_contact_person_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `organization_nif` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sp_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes_list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_client_id` (`oauth_client_id`),
  CONSTRAINT `eidas_credentials_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eidas_credentials`
--

LOCK TABLES `eidas_credentials` WRITE;
/*!40000 ALTER TABLE `eidas_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `eidas_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iot`
--

DROP TABLE IF EXISTS `iot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iot` (
  `id` varchar(255) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_client_id` (`oauth_client_id`),
  CONSTRAINT `iot_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iot`
--

LOCK TABLES `iot` WRITE;
/*!40000 ALTER TABLE `iot` DISABLE KEYS */;
/*!40000 ALTER TABLE `iot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_token` (
  `access_token` text NOT NULL,
  `expires` datetime DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `extra` json DEFAULT NULL,
  `oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `user_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `iot_id` varchar(255) DEFAULT NULL,
  `authorization_code` varchar(255) DEFAULT NULL,
  `hash` char(64) NOT NULL,
  PRIMARY KEY (`hash`),
  UNIQUE KEY `oauth_access_token_hash_uk` (`hash`),
  KEY `oauth_client_id` (`oauth_client_id`),
  KEY `user_id` (`user_id`),
  KEY `iot_id` (`iot_id`),
  CONSTRAINT `oauth_access_token_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_access_token_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_access_token_ibfk_3` FOREIGN KEY (`iot_id`) REFERENCES `iot` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES ('fd6af0717771be6d3d55d7a2b50fd167306d2ad0','2024-07-18 06:45:25','bearer','6bb6c5b9135df3507819c2e3ae564020f77e3165',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,NULL,'017537785dd087f8c2ef34216fec71c2147a85ad519fc6abe7365caeaa47e2a8'),('592d552ebc5aa3191d03160fcc14ec6fd88e23dd','2024-07-11 14:46:33','bearer','e7e28e93cda43776cc9e84a75e000b82e2bc61aa',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'052e2db02588c501df9e39a7445d5fcd061e0dcea4dd1c42a78eef18f4fe2351'),('a73c38eb2c86de76ff215d9b090aa5ab75e151c7','2024-07-11 16:47:34','bearer','56a588697ec4d5da2e5f9d17214f38877258b5b2',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'0c39caf040ffe3ca6c7d11ea44ceb8179b766e57e143c2925f8114e9b35de082'),('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2036-07-30 12:14:21',NULL,NULL,NULL,NULL,'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa','alice',NULL,NULL,'12661599e24923dc17384a28644fbd2c0e30fa1cc7295772470d22729b054c8b'),('0e005e5796bc7ae515d63e90d14ee2892323958b','2024-07-18 06:25:43','bearer','873c401a9f8f38e40f49fb4a4fb217516fc801bd',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'13159a8480a82f4526d7947844039b2a0812e59e23b1e0bf484fcf2e517d1bae'),('561574e9dea30a40f83d6764627a3484197d69a5','2024-07-05 11:17:58','bearer','a47a1330cc331d32051daca0799ee40cdfa54915',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'14978ced8179838a075e75d92ace35c8771bfed8d6b16af49431d82c0c16083b'),('f8a96e95ae15fc7a3245b3ee8266dc81896a1fc8','2024-07-11 19:17:32','bearer','b4bd272ce126464657a3094c04747ebfcd341c56',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'15d93b347136c15ea1878a15460301b420410a92c9b51f5b6dc8d3a6b0cefc2f'),('1b9e06618460fafbdaf49987352b09d7cc2c011f','2024-07-11 14:28:08','bearer','0fdf02cb6ecbc9ee46c48c7489a4a468572dca69',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'164ee6b703327c93101ed13daa70a2598eb67cc9154abc69b159ef9383f3fa2d'),('d1d1d1d1d1d1d1d1d1d1d1d1d1d1d1d1d1d1d1d1','2036-07-30 12:14:21',NULL,NULL,NULL,NULL,'d1d1d1d1-dddd-dddd-dddd-d1d1d1d1d1d1','detective1',NULL,NULL,'18a4605f12def28bbbbab7bbef23fe6e204d73432d9aee8514fc168037945221'),('b687a5615172f2e9b6906aaa705de37b7ce5bce9','2024-07-11 16:44:08','bearer','62469f08b2ce8b1222d6920cb7d18f2d25d6a06c',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'1b175d31e76aae18da8b0a01833ad2fb8c981fdad66227717f04892b3f3ef8b3'),('d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2','2036-07-30 12:14:21',NULL,NULL,NULL,NULL,'d2d2d2d2-dddd-dddd-dddd-d2d2d2d2d2d2','detective2',NULL,NULL,'1df5d6346470cc81d7a533f67a8399c052b5fc608b94972557138e10a335c5e1'),('b43bb69004ab4836a03f74bb21c0a71733a7789b','2024-07-11 17:20:53','bearer','7550af221cf247a59c99b1160d8cf663f1b45bd7',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'2654d594c412262231adaafcda7f28aed363439b5265fd238213360d7278c31a'),('75271e29501320787d042a1be2ca7f6569888196','2024-07-11 16:21:33','bearer','478083d244554ecb7f158ea3a7466817b51d849f',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'2a497edc7ef8cfa38eebf785e1a1842605b1d21c663032ad851e67f2f6de0b2a'),('4c38c4227f230ea78fd0a61a087a07acb3ba8904','2024-07-11 14:48:51','bearer','657e00dc8237325e1582f7eceb2caa2f91a4445f',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'2a7e1ee367912b5ca0f65842c71b9e3bf7211ed89a7688c1adb33d6dd1e756a7'),('cf6240be7afa07575b44435b74637c2e604c8879','2024-07-17 16:59:18','bearer','e29fa9d0b56e95a145b586784df6b1f49ec38dbc',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,NULL,'31cd01b5b3f957a22ef68f2f9d10afd4bc0400a1e3c03d0118e0644354abd0cf'),('6d75f73f5add4eb27549bbba9d8dd6831cc32622','2024-07-17 17:49:58','bearer','024651ca374f8347472921890b0553bd29f3e72d',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'37806fcfa0f89bb6a17f1e3982b833948d9c0c1e0d1cbaecde4096bf9903b0d0'),('39e7185e45f160322a2fa7082a93777a1ac90515','2024-07-17 07:32:03','bearer','717d3d4f611ce4f5f018108e12b824cc3e48603a',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'3f7c105b7a7c6eda6530fe24a132bf680384dd6e2410d164cca03ad0f6284e40'),('4da240c4145257745d855a60cc531edcac5ba38d','2024-07-17 17:40:17','bearer','5025f42a4f834b2df8027c17472ec3a759ff90a2',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'481d781ea76883554fc11d490e234c5c828688e2a063f35675e3a87326e8b57d'),('fc1b59ed759473deee66cc4e35abe35965e6ab10','2024-07-11 15:23:18','bearer','2dc211327835161fda3ab48cf410408530f73a4b',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'501d6a4e51fa12052ec1dd5f03487f5c32974071f0e7b0ea8fd711f6c388d997'),('72ff95f8f5d6a9eac14bdc8054787dae00e2cb19','2024-07-18 06:36:20','bearer','c6ccc97ffe5128ed8ea451542b882123d14496d5',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'54f1aefb4a460737beee5ae685f379398b90b373f33dd12d9135da146bd25adc'),('b66cd511b790ac0e6614d83f0376abbe37b300bc','2024-07-11 15:08:05','bearer','b1b67610792cb232bc3f85c368a82cf87d151d01',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'55aba26ea4c8c66a1e9c8f912a9172ea14cc8c75acda0e1e42647933afa8da73'),('m2m2m2m2m2m2m2m2m2m2m2m2m2m2m2m2m2m2m2m2','2036-07-30 12:14:21',NULL,NULL,NULL,NULL,'m2m2m2m2-mmmm-mmmm-mmmm-m2m2m2m2m2m2','manager2',NULL,NULL,'5603ade3a9d2303dbf3f28a35023a53c28297dc7db955784ac09b4c294ecae8b'),('f9800c6ce4ff85166e7502a47a447e529bdd8a1b','2024-07-17 08:13:06','bearer','1fcaaab5efae901a987caaac8c3212c9bd0770f1',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,NULL,'5a768beee2b7756ff263dea3fc7dd0a5e2abafd14d19e5e2f614cbe3a58d7a4b'),('1bd599deee52fdb34bb2415776e9368d00274eb6','2024-07-11 16:32:43','bearer','6e2566f3d14c96f9d3bd78b5e72aa62cd8b542c6',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'5f2d3e316c35cd4139b24a9c2279de1368706d3112d6d4b1c0ca2f5aa1af01d7'),('29950ff43327acbacb1c7048a510023ffe6122e0','2024-07-17 17:39:49','bearer','85f417cd8e60790ea3b7c94e752bc77a41482523',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,NULL,'652d56f3b904a449c9946b1cf25a463e39ba115e3fee5c75324d8ad186348d73'),('6dc5c424adc6a279e5972eaed0f434dfc678ba8d','2024-07-18 06:47:59','bearer','1f57d6ed454894c1a5717e7ec971e23b48e64409',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'700d45de41af7ed52ac01ae653dab0d9c1cf169062ba8acd5e581bfce23b9dd2'),('64fa523ffe6ebc59f9642c9e6733806037c3c1e3','2024-07-18 06:30:15','bearer','9a1c2dcd199c51f3a64761b180eff5484be23bfa',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'711140274bf23f15a4e35627489ff7518a811766d244393bb49861467474d156'),('ee1528be38f1ec8e3b538504f855434d5ae9a0f4','2024-07-11 19:15:56','bearer','ec169f510052f84172ebbc0bf95c5cb9d09d05d4',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'7fbdf0509c21ce9335164618e88c9a963dbf31a861661bc98f2d128ff421385a'),('m1m1m1m1m1m1m1m1m1m1m1m1m1m1m1m1m1m1m1m1','2036-07-30 12:14:21',NULL,NULL,NULL,NULL,'m1m1m1m1-mmmm-mmmm-mmmm-m1m1m1m1m1m1','manager1',NULL,NULL,'853d6a374a92501e3e93d28184f9217941793ff646b636c04b35d20169c0d3b7'),('005f319d3fa3a9e149f6490c824d8a9bd3383ebb','2024-07-11 19:36:15','bearer','e8ec8fb4801b51b15e5bda30ab17894f2997d785',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'86ac38c5d19292d1cc1ce9788393169577c122da61f8c88d0a3977a31f050b79'),('2cbf7580fc2cfc7806db4aa51f13a36b97618c94','2024-07-11 17:13:14','bearer','0a5acbe84bd8164e6403273893674b27660ffb8e',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'8a0e767e521f34f784273f936c42e2958adcec2dc16ac42a3f5bcb6f9fd3665c'),('bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb','2036-07-30 12:14:21',NULL,NULL,NULL,NULL,'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb','bob',NULL,NULL,'8d94b35f8eea7e1577e30fc75646dfeb4dd0982a083635028998d53ef590c7ec'),('b01942b3c8baccaa640f32efb7ef06ebe0a45bd5','2024-07-05 10:28:58','bearer','02e1a5828d40e850fb098d757dbf7bc0b78de34b',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'9390af65af0f35a8c5c4048293dc4d07686e8f9fc56d595692c2ad356a2a4009'),('1c96c82a6dedf3724d6cacc353cbdb98eef72b0c','2024-07-11 19:31:31','bearer','93005810ebdcd44d3af364e8040b2ce5f34213c8',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'9c820dac36a38a351aa9d9237d8e587c4a4979ea7cfb9816064fe733aa0cccc7'),('374dc6af02aee70fd2fdd9cd9711ec73130e5858','2024-07-17 08:10:14','bearer','307355b8db95f148fb58cda2eaa81cac917e9066',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'a126f679a1a2c38e463bee7e8ba21e4613fab499b6f7c6b5081df66279f681bf'),('37cf4c94d9710f730a0e7f2dd32ce984610acb97','2024-07-17 18:09:39','bearer','d433b3d2d70064475649454ce1d4aaa89111e4b8',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'a66384096924f49c24cc4638d2409162de46e24938ceef300cb8a77ad5938fd7'),('aa4fc87c832b1b197a41734363f9b0109a2ac892','2024-07-11 14:26:24','bearer','5b48adecd18f6489fd22df2311d125557cf0bc87',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'a74f3d192d7a46076c1eca9e6e6b0732afad920938240b9ea9a2694d6cbb2363'),('8e7aff63e6cc7b55dac3670b4be0332d1a2d718b','2024-07-05 10:31:35','bearer','783d0121fa4245be2c517def14f4daa3adc40955',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,NULL,'a86f4bf22038f149ca20245b6e3aac3f0a931548478c0e03c8f4bcfcc2ccace1'),('abfdf6f49522631dd35497a0b77a3bfd9f4ef4e9','2024-07-17 07:41:11','bearer','d8539145026dd99cda3c99327f275cf0035dd0e9',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'ae487b5291228ddf333c38011217520d86d9730773a6d9287ab3586339531ee1'),('0d36a01f4259289077c6d5898a56315c5e98a433','2024-07-17 17:56:31','bearer','41e43c7f3ebd83a60e39acf85461b4b583c4325a',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'bd2933139b7c30c932e628cf87bb5a10bb79c58da2ba46f4da22c20dc4a3dc48'),('714d88f3fb249f4e65422db003a62d12254900cc','2024-07-11 15:54:40','bearer','c7e4a89f6b6312717cf93e52ea6bab6e71ac22e9',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'bd7bff874ade0e39ea0f67dcf704fc05941c393dbb498228736d10f5f9f8ed39'),('84256c0aab27de38d9ea3a7df450b03ebb41bcf9','2024-07-17 17:42:02','bearer','cab1c9e6ae81dcc4f76e0e7fa40ebe11fa44b5e8',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'caa2bfdf4068bab37ceb4a52752f013bf7a572100d55dc2d9e51f83e7ca4fb40'),('6f760455fd4d6dbd5d2c92b2ae73e56cbf8f97af','2024-07-17 08:00:13','bearer','ec504d5595d4e8cdc96c0ed4921354113a142888',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'cbcb6e26d031f421d78db97b42f512a6729107a83705617ae964655085fd36b7'),('1bf0ab56f4fcac57cfd1a4feff30ef113f69bb9d','2024-07-18 08:43:20','bearer','8981a4d36a85b31828460021baf7100ed4e1d95c',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'d92497065c65579e3402da7f96a544b68e3861ff81894fcb9dc49435fd24f4ea'),('c42de409eba395947326a51cdae2550a211d9bec','2024-07-18 06:48:29','bearer','33e103984c9540c9b8043fe031cd83cbb15c95ff',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,NULL,'df1a2bc244a32648e79278f0250e4a94a31e3d725c5e98af53042eb3ff98f67a'),('cccccccccccccccccccccccccccccccccccccccc','2036-07-30 12:14:21',NULL,NULL,NULL,NULL,'cccccccc-cccc-cccc-cccc-cccccccccccc','charlie',NULL,NULL,'f57858edab011913ac0a5d92f04987f4b34eab0d702c8198c1900871d7d87198'),('e5a01ac5b9f5ca18eccb4ec03a5d4a18ad4c0e35','2024-07-05 10:28:10','bearer','d39c87172d6b9dd6dc36e7ec9194ce07dbdbda4e',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,NULL,'f8b8f59eb65e9d59cab7511cda85e0a7ef3b736bf0eb9334e5b997157d991757'),('68b5e7e5a91e924bd32923faf63db3f2ee31b94d','2024-07-11 15:18:33','bearer','6d0146beb6ebd1d424ba3a63b8e47f27522cf335',1,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,NULL,'fbb9f3c15028addec439ede87321141f20a47e7c46835171daa9dc0cbc847ca0');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_authorization_code`
--

DROP TABLE IF EXISTS `oauth_authorization_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_authorization_code` (
  `authorization_code` varchar(256) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `extra` json DEFAULT NULL,
  `oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `user_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `nonce` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`authorization_code`),
  UNIQUE KEY `authorization_code` (`authorization_code`),
  KEY `oauth_client_id` (`oauth_client_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `oauth_authorization_code_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_authorization_code_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_authorization_code`
--

LOCK TABLES `oauth_authorization_code` WRITE;
/*!40000 ALTER TABLE `oauth_authorization_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_authorization_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client`
--

DROP TABLE IF EXISTS `oauth_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client` (
  `id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `secret` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_uri` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_sign_out_uri` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) DEFAULT 'default',
  `grant_type` varchar(255) DEFAULT NULL,
  `response_type` varchar(255) DEFAULT NULL,
  `client_type` varchar(15) DEFAULT NULL,
  `scope` varchar(80) DEFAULT NULL,
  `extra` json DEFAULT NULL,
  `token_types` varchar(2000) DEFAULT 'bearer',
  `jwt_secret` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client`
--

LOCK TABLES `oauth_client` WRITE;
/*!40000 ALTER TABLE `oauth_client` DISABLE KEYS */;
INSERT INTO `oauth_client` VALUES ('5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','saiafarm','securing saiafarm using wilma, keyrock and authzforce.','0e85c25a-e2af-480d-876a-3c64cd38351c','http://localhost:9098','http://localhost:3005/idm','','default','authorization_code,implicit,password,client_credentials,refresh_token,hybrid','code,token',NULL,NULL,NULL,'jwt,bearer','0d8c12df97e4a6f714b5356b28dbf55d3c60308d3af27a4b2faa1380a6009d63');
/*!40000 ALTER TABLE `oauth_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_token` (
  `refresh_token` varchar(256) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `user_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `iot_id` varchar(255) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `authorization_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`refresh_token`),
  UNIQUE KEY `refresh_token` (`refresh_token`),
  KEY `oauth_client_id` (`oauth_client_id`),
  KEY `user_id` (`user_id`),
  KEY `iot_id` (`iot_id`),
  CONSTRAINT `oauth_refresh_token_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_refresh_token_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_refresh_token_ibfk_3` FOREIGN KEY (`iot_id`) REFERENCES `iot` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT INTO `oauth_refresh_token` VALUES ('024651ca374f8347472921890b0553bd29f3e72d','2024-07-31 16:49:58','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('02e1a5828d40e850fb098d757dbf7bc0b78de34b','2024-07-19 09:28:58','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('07fe464303bd3ed97df51fb0a016877076899ed4','2024-08-01 21:00:04','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('0a5acbe84bd8164e6403273893674b27660ffb8e','2024-07-25 16:13:14','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('0fdf02cb6ecbc9ee46c48c7489a4a468572dca69','2024-07-25 13:28:08','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('10db0cd433a57b3877861620f720f565a740090b','2024-08-01 20:55:33','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('18d74f95197b29e7c326415d2fc357f24e9acb1e','2024-08-06 16:39:48','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('1cc9706444f58d5adb86ca595bccf2ca87d42c25','2024-08-01 17:42:23','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('1f57d6ed454894c1a5717e7ec971e23b48e64409','2024-08-01 05:47:59','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('1fcaaab5efae901a987caaac8c3212c9bd0770f1','2024-07-31 07:13:06','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('23e655371ee22ce7ab52a83a8898d9ab126d00d5','2024-08-01 08:36:26','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('23e84c63cc2804411dd2b4b4366754abc34e4b59','2024-08-01 09:59:41','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('26293c7dcd0fc823fbfd69c623c2684fdbf61c2d','2024-08-01 08:58:23','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('2af2887346bb3c9f6f5a6ee3884a20ac44d514af','2024-08-01 08:55:12','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('2b1a2a74832def5044cb720da965687dce3a49d0','2024-08-01 09:00:05','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('2dc211327835161fda3ab48cf410408530f73a4b','2024-07-25 14:23:18','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('307355b8db95f148fb58cda2eaa81cac917e9066','2024-07-31 07:10:14','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('33e103984c9540c9b8043fe031cd83cbb15c95ff','2024-08-01 05:48:29','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('3558fd05e013018b6dde61523d264abf2b5ae454','2024-08-01 09:58:56','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('36248ecf76841ebeb20096a88cc70fd4e2303367','2024-08-02 07:30:10','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('380ea67531fea0721b1b0b34da79a2b98304e005','2024-08-01 18:07:35','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('41e43c7f3ebd83a60e39acf85461b4b583c4325a','2024-07-31 16:56:31','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('478083d244554ecb7f158ea3a7466817b51d849f','2024-07-25 15:21:33','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('4eb1f99f80f37c81a8ef85d92eae836919887e1e','2018-08-13 11:14:21',NULL,'8ca60ce9-32f9-42d6-a013-a19b3af0c13d','admin',NULL,NULL,NULL),('5025f42a4f834b2df8027c17472ec3a759ff90a2','2024-07-31 16:40:17','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('53c8d99deac7eef4ce65b2b53f4a56ccdad57d2f','2024-08-06 13:16:12','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('56a588697ec4d5da2e5f9d17214f38877258b5b2','2024-07-25 15:47:34','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('5b48adecd18f6489fd22df2311d125557cf0bc87','2024-07-25 13:26:24','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('5ea7092ee4184451a5ed04ab4fd59fe2221a01c2','2024-08-01 09:05:28','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('5efa4b8c0d9879904f872ed0d9837d9faf350eef','2024-08-07 10:19:46','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('62469f08b2ce8b1222d6920cb7d18f2d25d6a06c','2024-07-25 15:44:08','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('657e00dc8237325e1582f7eceb2caa2f91a4445f','2024-07-25 13:48:51','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('6bb6c5b9135df3507819c2e3ae564020f77e3165','2024-08-01 05:45:25','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('6d0146beb6ebd1d424ba3a63b8e47f27522cf335','2024-07-25 14:18:33','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('6e2566f3d14c96f9d3bd78b5e72aa62cd8b542c6','2024-07-25 15:32:43','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('717d3d4f611ce4f5f018108e12b824cc3e48603a','2024-07-31 06:32:03','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('7550af221cf247a59c99b1160d8cf663f1b45bd7','2024-07-25 16:20:53','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('783d0121fa4245be2c517def14f4daa3adc40955','2024-07-19 09:31:35','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('79f7ab93d7cf44a7fc2ae46cb773a4531df77d4b','2024-08-01 09:01:52','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('7a99fa3b7c63d82e256be1daa68b82f3e095b3d7','2024-08-01 20:50:10','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('8387374429557caf84f413d06a882bb8561b45dd','2024-08-07 13:02:21','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('853f5198cf0ba13435550ec76bee71a961f257c1','2024-08-01 17:41:04','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('85f417cd8e60790ea3b7c94e752bc77a41482523','2024-07-31 16:39:49','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('860f117da3b840f9297cd25bd260445b4d625952','2024-08-01 07:48:46','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('86374ddd59c7edc8fa10b7e262c5915f2d1048f3','2024-08-06 14:13:34','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('873c401a9f8f38e40f49fb4a4fb217516fc801bd','2024-08-01 05:25:43','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('8981a4d36a85b31828460021baf7100ed4e1d95c','2024-08-01 07:43:20','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('8c06da5527c54177aa87a9299fa7e2f86dd732af','2024-08-02 08:31:07','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('93005810ebdcd44d3af364e8040b2ce5f34213c8','2024-07-25 18:31:31','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('9a1c2dcd199c51f3a64761b180eff5484be23bfa','2024-08-01 05:30:15','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('a145e11e77438bb36e2779d7f1604991d9c7dd18','2024-08-02 08:35:44','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('a47a1330cc331d32051daca0799ee40cdfa54915','2024-07-19 10:17:58','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('aa5b72516141da960394a5216abd674da2eca7ce','2024-08-06 14:14:27','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('ac987c5595a414a733d102ef0d1baf0bb13ac6d1','2024-08-01 09:13:08','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('ad9f81033cc6d710f0125e90f732f49026d12598','2024-08-07 13:03:14','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('b1b67610792cb232bc3f85c368a82cf87d151d01','2024-07-25 14:08:05','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('b4bd272ce126464657a3094c04747ebfcd341c56','2024-07-25 18:17:32','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('b9a941e1dbd12da8b7cac02d4d76977597c5954b','2024-08-06 14:14:19','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('c6ccc97ffe5128ed8ea451542b882123d14496d5','2024-08-01 05:36:20','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('c7e4a89f6b6312717cf93e52ea6bab6e71ac22e9','2024-07-25 14:54:40','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('cab1c9e6ae81dcc4f76e0e7fa40ebe11fa44b5e8','2024-07-31 16:42:02','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('cdde7c0d8aaa562e24baad9a3afd633bdc998c07','2024-08-06 13:51:17','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('ce8c6b310e19e37f83e8ea3b0934619f9b521fa7','2024-08-01 17:36:35','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('d39c87172d6b9dd6dc36e7ec9194ce07dbdbda4e','2024-07-19 09:28:10','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('d433b3d2d70064475649454ce1d4aaa89111e4b8','2024-07-31 17:09:39','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('d8539145026dd99cda3c99327f275cf0035dd0e9','2024-07-31 06:41:11','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('e29fa9d0b56e95a145b586784df6b1f49ec38dbc','2024-07-31 15:59:18','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('e7e28e93cda43776cc9e84a75e000b82e2bc61aa','2024-07-25 13:46:33','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('e84eb613fa574dbaa3246d64313a2b58540a67fc','2024-08-01 09:13:53','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bbbbbbbb-good-0000-0000-000000000000',NULL,1,NULL),('e8ec8fb4801b51b15e5bda30ab17894f2997d785','2024-07-25 18:36:15','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('eb44b9b5f9bfb0137742cd538d98c46d0d01b82a','2024-08-01 18:07:48','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('ec169f510052f84172ebbc0bf95c5cb9d09d05d4','2024-07-25 18:15:56','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('ec504d5595d4e8cdc96c0ed4921354113a142888','2024-07-31 07:00:13','bearer','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('f5752fff53478e068f638b015dc29aabaf4f4f91','2024-08-06 13:45:24','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL),('fc2ac96c8982918e8df4b5caafd7bd11fc23fbb4','2024-08-01 10:00:18','jwt','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','aaaaaaaa-good-0000-0000-000000000000',NULL,1,NULL);
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_scope`
--

DROP TABLE IF EXISTS `oauth_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_scope` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scope` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_scope`
--

LOCK TABLES `oauth_scope` WRITE;
/*!40000 ALTER TABLE `oauth_scope` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES ('managers-team-0000-0000-000000000000','Management','Management Group for Store Managers',NULL,'default'),('security-team-0000-0000-000000000000','Security','Security Group for Store Detectives',NULL,'default');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pep_proxy`
--

DROP TABLE IF EXISTS `pep_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pep_proxy` (
  `id` varchar(255) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_client_id` (`oauth_client_id`),
  CONSTRAINT `pep_proxy_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pep_proxy`
--

LOCK TABLES `pep_proxy` WRITE;
/*!40000 ALTER TABLE `pep_proxy` DISABLE KEYS */;
INSERT INTO `pep_proxy` VALUES ('pep_proxy_8c56e7a4-b610-4e5e-9661-77e1b8b08ac6','3aa2533d58ac68b1b5872c229b12a45a920fb928','26c10c1b8647ffd3','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f');
/*!40000 ALTER TABLE `pep_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_internal` tinyint(1) DEFAULT '0',
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xml` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `is_regex` tinyint(1) NOT NULL DEFAULT '0',
  `authorization_service_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_authorization_service_header` tinyint(1) NOT NULL DEFAULT '0',
  `regex_entity_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regex_attributes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regex_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_client_id` (`oauth_client_id`),
  CONSTRAINT `permission_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES ('0195af25-01e9-4167-b394-aaf13bdcdc9e','/get_allfarms','get all farms',0,'GET','/get_allfarms','','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f',0,'',0,NULL,NULL,NULL),('1','Get and assign all internal application roles',NULL,1,NULL,NULL,NULL,'idm_admin_app',0,NULL,0,NULL,NULL,NULL),('2','Manage the application',NULL,1,NULL,NULL,NULL,'idm_admin_app',0,NULL,0,NULL,NULL,NULL),('3','Manage roles',NULL,1,NULL,NULL,NULL,'idm_admin_app',0,NULL,0,NULL,NULL,NULL),('4','Manage authorizations',NULL,1,NULL,NULL,NULL,'idm_admin_app',0,NULL,0,NULL,NULL,NULL),('46b5e25d-e2ef-43c0-bc56-572675dbe101','/update_user','update user info',0,'POST','/update_user',NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f',0,'',0,NULL,NULL,NULL),('4f1703c5-725e-4ed1-89de-e0dc7639a6f1','/update_user','update user info',0,'POST','/update_user',NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f',0,'',0,NULL,NULL,NULL),('5','Get and assign all public application roles',NULL,1,NULL,NULL,NULL,'idm_admin_app',0,NULL,0,NULL,NULL,NULL),('6','Get and assign only public owned roles',NULL,1,NULL,NULL,NULL,'idm_admin_app',0,NULL,0,NULL,NULL,NULL),('80e86111-2c77-4a0e-8d4d-c1a9a54473eb','/change_password','change user password',0,'POST','/change_password',NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f',0,'',0,NULL,NULL,NULL),('9cba0bd1-dac5-4cba-a598-564a697de9a1','/change_password','change user password',0,'POST','/change_password',NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f',0,'',0,NULL,NULL,NULL),('f9a2874b-7c32-4077-8e5d-7f768cce9965','/get_allusers','admin access',0,'GET','/get_allusers','','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f',0,'',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_internal` tinyint(1) DEFAULT '0',
  `oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_client_id` (`oauth_client_id`),
  CONSTRAINT `role_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('65811e18-ed0d-4232-a760-68822ccce65d','USER',0,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f'),('bdf7ab88-b60f-4639-8f4e-4fd22199cce8','FARMER',0,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f'),('d4085fca-ac16-407e-a843-b86088462d3e','ADMIN',0,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f'),('provider','Provider',1,'idm_admin_app'),('purchaser','Purchaser',1,'idm_admin_app');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_assignment`
--

DROP TABLE IF EXISTS `role_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_assignment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_organization` varchar(255) DEFAULT NULL,
  `oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `role_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `organization_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `user_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_client_id` (`oauth_client_id`),
  KEY `role_id` (`role_id`),
  KEY `organization_id` (`organization_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `role_assignment_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_assignment_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_assignment_ibfk_3` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_assignment_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_assignment`
--

LOCK TABLES `role_assignment` WRITE;
/*!40000 ALTER TABLE `role_assignment` DISABLE KEYS */;
INSERT INTO `role_assignment` VALUES (1,NULL,'8ca60ce9-32f9-42d6-a013-a19b3af0c13d','provider',NULL,'96154659-cb3b-4d2d-afef-18d6aec0518e'),(2,'member','8ca60ce9-32f9-42d6-a013-a19b3af0c13d','provider','74f5299e-3247-468c-affb-957cda03f0c4',NULL),(3,NULL,'222eda27-958b-4f0c-a5cb-e4114fb170c3','provider',NULL,'admin'),(4,NULL,'222eda27-958b-4f0c-a5cb-e4114fb170c3','provider',NULL,'96154659-cb3b-4d2d-afef-18d6aec0518e'),(69,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','provider',NULL,'aaaaaaaa-good-0000-0000-000000000000'),(70,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','d4085fca-ac16-407e-a843-b86088462d3e',NULL,'aaaaaaaa-good-0000-0000-000000000000'),(71,NULL,'5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','bdf7ab88-b60f-4639-8f4e-4fd22199cce8',NULL,'bbbbbbbb-good-0000-0000-000000000000');
/*!40000 ALTER TABLE `role_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `permission_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (1,'provider','1'),(2,'provider','2'),(3,'provider','3'),(4,'provider','4'),(5,'provider','5'),(6,'provider','6'),(7,'purchaser','5'),(58,'d4085fca-ac16-407e-a843-b86088462d3e','f9a2874b-7c32-4077-8e5d-7f768cce9965'),(59,'d4085fca-ac16-407e-a843-b86088462d3e','0195af25-01e9-4167-b394-aaf13bdcdc9e'),(60,'d4085fca-ac16-407e-a843-b86088462d3e','4f1703c5-725e-4ed1-89de-e0dc7639a6f1'),(61,'d4085fca-ac16-407e-a843-b86088462d3e','80e86111-2c77-4a0e-8d4d-c1a9a54473eb'),(62,'d4085fca-ac16-407e-a843-b86088462d3e','46b5e25d-e2ef-43c0-bc56-572675dbe101'),(63,'d4085fca-ac16-407e-a843-b86088462d3e','9cba0bd1-dac5-4cba-a598-564a697de9a1'),(64,'65811e18-ed0d-4232-a760-68822ccce65d','4f1703c5-725e-4ed1-89de-e0dc7639a6f1'),(65,'65811e18-ed0d-4232-a760-68822ccce65d','80e86111-2c77-4a0e-8d4d-c1a9a54473eb'),(66,'65811e18-ed0d-4232-a760-68822ccce65d','46b5e25d-e2ef-43c0-bc56-572675dbe101'),(67,'65811e18-ed0d-4232-a760-68822ccce65d','9cba0bd1-dac5-4cba-a598-564a697de9a1'),(68,'bdf7ab88-b60f-4639-8f4e-4fd22199cce8','0195af25-01e9-4167-b394-aaf13bdcdc9e');
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('201802190000-CreateUserTable.js'),('201802190003-CreateUserRegistrationProfileTable.js'),('201802190005-CreateOrganizationTable.js'),('201802190008-CreateOAuthClientTable.js'),('201802190009-CreateUserAuthorizedApplicationTable.js'),('201802190010-CreateRoleTable.js'),('201802190015-CreatePermissionTable.js'),('201802190020-CreateRoleAssignmentTable.js'),('201802190025-CreateRolePermissionTable.js'),('201802190030-CreateUserOrganizationTable.js'),('201802190035-CreateIotTable.js'),('201802190040-CreatePepProxyTable.js'),('201802190045-CreateAuthZForceTable.js'),('201802190050-CreateAuthTokenTable.js'),('201802190060-CreateOAuthAuthorizationCodeTable.js'),('201802190065-CreateOAuthAccessTokenTable.js'),('201802190070-CreateOAuthRefreshTokenTable.js'),('201802190075-CreateOAuthScopeTable.js'),('20180405125424-CreateUserTourAttribute.js'),('20180612134640-CreateEidasTable.js'),('20210422214057-init-visible_attributes.js'),('20210607162019-CreateDelegationEvidenceTable.js'),('20210707102154-CreatePermissionFiwarePayload.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trusted_application`
--

DROP TABLE IF EXISTS `trusted_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trusted_application` (
  `id` int NOT NULL AUTO_INCREMENT,
  `oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `trusted_oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_client_id` (`oauth_client_id`),
  KEY `trusted_oauth_client_id` (`trusted_oauth_client_id`),
  CONSTRAINT `trusted_application_ibfk_1` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trusted_application_ibfk_2` FOREIGN KEY (`trusted_oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trusted_application`
--

LOCK TABLES `trusted_application` WRITE;
/*!40000 ALTER TABLE `trusted_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `trusted_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) DEFAULT 'default',
  `gravatar` tinyint(1) DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `date_password` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  `admin` tinyint(1) DEFAULT '0',
  `extra` json DEFAULT NULL,
  `scope` varchar(80) DEFAULT NULL,
  `starters_tour_ended` tinyint(1) DEFAULT '0',
  `eidas_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('aaaaaaaa-good-0000-0000-000000000000','alice','Alice is the admin',NULL,'default',0,'alice-the-admin@test.com','89e48c55e4e4b3b86141fb15f5e6abf70f8c32c0','fbba54b6750b16e8','2018-07-30 11:41:14',1,1,'{\"visible_attributes\": [\"username\", \"description\", \"identity_attributes\"]}',NULL,0,NULL),('bbbbbbbb-good-0000-0000-000000000000','bob','Bob is the regional manager','','default',0,'bob-the-manager@test.com','89e48c55e4e4b3b86141fb15f5e6abf70f8c32c0','fbba54b6750b16e8','2018-07-30 11:41:14',1,0,'{\"visible_attributes\": [\"username\", \"description\", \"identity_attributes\"]}',NULL,0,NULL),('cccccccc-good-0000-0000-000000000000','charlie','Charlie is head of security',NULL,'default',0,'charlie-security@test.com','89e48c55e4e4b3b86141fb15f5e6abf70f8c32c0','fbba54b6750b16e8','2018-07-30 11:41:14',1,0,'{\"visible_attributes\": [\"username\", \"description\", \"identity_attributes\"]}',NULL,0,NULL),('detective1-good-0000-0000-0000000000','detective1','Detective works for Charlie',NULL,'default',0,'detective1@test.com','89e48c55e4e4b3b86141fb15f5e6abf70f8c32c0','fbba54b6750b16e8','2018-07-30 11:41:14',1,0,'{\"visible_attributes\": [\"username\", \"description\", \"identity_attributes\"]}',NULL,0,NULL),('detective2-good-0000-0000-0000000000','detective2','Detective works for Charlie',NULL,'default',0,'detective2@test.com','89e48c55e4e4b3b86141fb15f5e6abf70f8c32c0','fbba54b6750b16e8','2018-07-30 11:41:14',1,0,'{\"visible_attributes\": [\"username\", \"description\", \"identity_attributes\"]}',NULL,0,NULL),('ed027452-b4f6-4e12-bd01-45cda3a08667','saurabh',NULL,NULL,'default',0,'saurabh-the-designer@test.com','a4085969dff93272b454984c81a16b05e47140e8','77cb9a836a10d031','2024-07-05 10:24:52',0,0,'{\"visible_attributes\": [\"username\", \"description\", \"website\", \"identity_attributes\", \"image\", \"gravatar\"]}',NULL,0,NULL),('eve-evil-0000-0000-000000000000','eve','Eve the Eavesdropper',NULL,'default',0,'eve@example.com','89e48c55e4e4b3b86141fb15f5e6abf70f8c32c0','fbba54b6750b16e8','2018-07-30 11:41:14',1,0,'{\"visible_attributes\": [\"username\", \"description\", \"identity_attributes\"]}',NULL,0,NULL),('mallory-evil-0000-0000-000000000000','mallory','Mallory the malicious attacker',NULL,'default',0,'mallory@example.com','89e48c55e4e4b3b86141fb15f5e6abf70f8c32c0','fbba54b6750b16e8','2018-07-30 11:41:14',1,0,'{\"visible_attributes\": [\"username\", \"description\", \"identity_attributes\"]}',NULL,0,NULL),('manager1-good-0000-0000-000000000000','manager1','Manager works for Bob',NULL,'default',0,'manager1@test.com','89e48c55e4e4b3b86141fb15f5e6abf70f8c32c0','fbba54b6750b16e8','2018-07-30 11:41:14',1,0,'{\"visible_attributes\": [\"username\", \"description\", \"identity_attributes\"]}',NULL,0,NULL),('manager2-good-0000-0000-000000000000','manager2','Manager works for Bob',NULL,'default',0,'manager2@test.com','89e48c55e4e4b3b86141fb15f5e6abf70f8c32c0','fbba54b6750b16e8','2018-07-30 11:41:14',1,0,'{\"visible_attributes\": [\"username\", \"description\", \"identity_attributes\"]}',NULL,0,NULL),('rob-evil-0000-0000-000000000000','rob','Rob the Robber',NULL,'default',0,'rob@example.com','89e48c55e4e4b3b86141fb15f5e6abf70f8c32c0','fbba54b6750b16e8','2018-07-30 11:41:14',1,0,'{\"visible_attributes\": [\"username\", \"description\", \"identity_attributes\"]}',NULL,0,NULL),('sandeep-good-0000-0000-000000000000','sandeep',NULL,NULL,'default',0,'sandeep-the-developer@test.com','1e000ed1c9a36907e33d1cf8722d8843054b43f3','3c484c5e97e915b5','2024-07-05 10:23:21',1,0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_authorized_application`
--

DROP TABLE IF EXISTS `user_authorized_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_authorized_application` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `oauth_client_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `shared_attributes` char(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `oauth_client_id` (`oauth_client_id`),
  CONSTRAINT `user_authorized_application_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_authorized_application_ibfk_2` FOREIGN KEY (`oauth_client_id`) REFERENCES `oauth_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_authorized_application`
--

LOCK TABLES `user_authorized_application` WRITE;
/*!40000 ALTER TABLE `user_authorized_application` DISABLE KEYS */;
INSERT INTO `user_authorized_application` VALUES (1,'admin','8ca60ce9-32f9-42d6-a013-a19b3af0c13d',NULL,NULL),(2,'aaaaaaaa-good-0000-0000-000000000000','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','username,email','2024-07-05 09:28:10'),(3,'bbbbbbbb-good-0000-0000-000000000000','5bd7c4e3-a5e3-4041-9dba-bb5b1935fa7f','username,email','2024-07-05 09:31:35');
/*!40000 ALTER TABLE `user_authorized_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_organization`
--

DROP TABLE IF EXISTS `user_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_organization` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(10) DEFAULT NULL,
  `user_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `organization_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `organization_id` (`organization_id`),
  CONSTRAINT `user_organization_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_organization_ibfk_2` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_organization`
--

LOCK TABLES `user_organization` WRITE;
/*!40000 ALTER TABLE `user_organization` DISABLE KEYS */;
INSERT INTO `user_organization` VALUES (2,'owner','aaaaaaaa-good-0000-0000-000000000000','security-team-0000-0000-000000000000'),(3,'owner','aaaaaaaa-good-0000-0000-000000000000','managers-team-0000-0000-000000000000'),(4,'owner','bbbbbbbb-good-0000-0000-000000000000','managers-team-0000-0000-000000000000'),(5,'member','manager1-good-0000-0000-000000000000','managers-team-0000-0000-000000000000'),(6,'member','manager2-good-0000-0000-000000000000','managers-team-0000-0000-000000000000'),(7,'owner','cccccccc-good-0000-0000-000000000000','security-team-0000-0000-000000000000'),(8,'member','detective1-good-0000-0000-0000000000','security-team-0000-0000-000000000000'),(9,'member','detective2-good-0000-0000-0000000000','security-team-0000-0000-000000000000');
/*!40000 ALTER TABLE `user_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_registration_profile`
--

DROP TABLE IF EXISTS `user_registration_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_registration_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activation_key` varchar(255) DEFAULT NULL,
  `activation_expires` datetime DEFAULT NULL,
  `reset_key` varchar(255) DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `verification_key` varchar(255) DEFAULT NULL,
  `verification_expires` datetime DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_email` (`user_email`),
  CONSTRAINT `user_registration_profile_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_registration_profile`
--

LOCK TABLES `user_registration_profile` WRITE;
/*!40000 ALTER TABLE `user_registration_profile` DISABLE KEYS */;
INSERT INTO `user_registration_profile` VALUES (1,'b26roiin0r','2018-07-31 10:03:53',NULL,NULL,NULL,NULL,'eve@test.com');
/*!40000 ALTER TABLE `user_registration_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-24 19:24:38
