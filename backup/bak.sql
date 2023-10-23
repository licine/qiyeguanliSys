-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: django
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Current Database: `django`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `django`;

--
-- Table structure for table `app01_admin`
--

DROP TABLE IF EXISTS `app01_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_admin`
--

LOCK TABLES `app01_admin` WRITE;
/*!40000 ALTER TABLE `app01_admin` DISABLE KEYS */;
INSERT INTO `app01_admin` VALUES (1,'ufe','1e6ebc63c3f7a8275753eca978739458'),(2,'2Dn','1e6ebc63c3f7a8275753eca978739458'),(3,'qBV3','djq'),(4,'Dhe','01W'),(5,'Adag','K2Zx'),(6,'D1','yrGAv'),(7,'MVCVP','4JC'),(8,'Fc','Ubc'),(9,'kdV3B','QPDu'),(10,'A2US','YpCll'),(11,'xlYyH','kuc'),(12,'bj','IKu'),(13,'sCl4','d9jPK'),(14,'cGqWn','XgXr'),(15,'4p','8PbjD'),(16,'gtKmc','niVPc'),(17,'jiunE','qe'),(18,'N2','IOp'),(19,'L5tO','Bf'),(20,'wAGt','jMpFs'),(21,'admin','1e6ebc63c3f7a8275753eca978739458');
/*!40000 ALTER TABLE `app01_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_boss`
--

DROP TABLE IF EXISTS `app01_boss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_boss` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` int NOT NULL,
  `img` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_boss`
--

LOCK TABLES `app01_boss` WRITE;
/*!40000 ALTER TABLE `app01_boss` DISABLE KEYS */;
INSERT INTO `app01_boss` VALUES (1,'1',1,'app01\\static\\image\\image-20230516110506104.png'),(2,'1',1,'C:\\ANN_PROJECT\\Django\\PyWeb\\media\\image-20230516110506104.png');
/*!40000 ALTER TABLE `app01_boss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_city`
--

DROP TABLE IF EXISTS `app01_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `count` int NOT NULL,
  `img` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_city`
--

LOCK TABLES `app01_city` WRITE;
/*!40000 ALTER TABLE `app01_city` DISABLE KEYS */;
INSERT INTO `app01_city` VALUES (3,'北京',100,'city/file.jpg'),(4,'上海',111,'city/file.jpeg'),(5,'杭州',22,'city/file_1.jpeg'),(6,'广东',32,'city/file.png'),(7,'苏州',43,'city/file_1.png'),(8,'南京',34,'city/file_1_oexSdiw.jpeg');
/*!40000 ALTER TABLE `app01_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_department`
--

DROP TABLE IF EXISTS `app01_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_department`
--

LOCK TABLES `app01_department` WRITE;
/*!40000 ALTER TABLE `app01_department` DISABLE KEYS */;
INSERT INTO `app01_department` VALUES (4,'研发部'),(5,'新媒体'),(7,'系统部'),(9,'web前端研发部'),(10,'电子商务事业部'),(11,'信息技术工程部'),(12,'移动互联网部'),(13,'客户端部'),(14,'产品类'),(15,'商业产品部'),(17,'设计类'),(18,'用户体验部'),(20,'研发部'),(21,'新媒体'),(22,'系统部'),(23,'运维部'),(24,'IT部门');
/*!40000 ALTER TABLE `app01_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_order`
--

DROP TABLE IF EXISTS `app01_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `oid` varchar(64) NOT NULL,
  `title` varchar(32) NOT NULL,
  `price` int NOT NULL,
  `status` smallint NOT NULL,
  `admin_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app01_order_admin_id_06590413_fk_app01_admin_id` (`admin_id`),
  CONSTRAINT `app01_order_admin_id_06590413_fk_app01_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `app01_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_order`
--

LOCK TABLES `app01_order` WRITE;
/*!40000 ALTER TABLE `app01_order` DISABLE KEYS */;
INSERT INTO `app01_order` VALUES (6,'202305161606532129','HUAWEI/华为nova 10 新款智能手机特惠鸿蒙手机超广角',1,1,1),(7,'202305161612015700','Redmi Note 12 Turbo手机红米小米手机note小',12,1,21),(8,'202305161612459696','小米/红米Redmi Note 11 5G 5000mAh大电量',11,1,21),(9,'202305161617068988','Redmi 12C新品上市智能小米官方旗舰店红米小米手机大音学生',399,1,21),(15,'202305162042394261','Meizu/魅族20新品无界手机第二代高通骁龙8 Gen2官方官',1212,1,21),(16,'202305162238328757','Meizu/魅族20PRO新品无界手机新品第二代高通骁龙8Gen',11,1,21),(18,'202305171540051720','16+1TB版本低至2599realme真我GT Neo5 S',1,1,21),(19,'202305171541053990','联通流量卡纯流量上网卡5g大王卡流量无线卡手机卡电话卡全国通用',12,1,21),(20,'202305171541171645','电信流量卡无线限纯流量上网卡5g手机卡电话大王卡不限速全国通用',12,1,21),(21,'202305171541265668','电信流量卡纯流量上网卡无线限流量卡不限速4g5g手机卡电话卡通用',111,1,21);
/*!40000 ALTER TABLE `app01_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_prettynum`
--

DROP TABLE IF EXISTS `app01_prettynum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_prettynum` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) NOT NULL,
  `price` int NOT NULL,
  `level` smallint NOT NULL,
  `status` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_prettynum`
--

LOCK TABLES `app01_prettynum` WRITE;
/*!40000 ALTER TABLE `app01_prettynum` DISABLE KEYS */;
INSERT INTO `app01_prettynum` VALUES (11,'15095586479',44,2,1),(12,'17888328771',31,1,1),(13,'17311977061',1,3,2),(14,'17507499796',2,1,2),(15,'17395012242',3,1,2),(16,'17882920312',4,1,2),(17,'17150682703',5,4,2),(18,'17691896193',6,1,2),(19,'15942755722',7,1,2),(20,'15530032675',8,1,2),(22,'17002929173',0,2,2),(23,'14718391566',0,1,2),(24,'17669520761',1,4,1),(25,'17523328230',0,2,1),(26,'14591083724',6,1,2),(27,'18468824585',8,4,2),(28,'15320377457',0,4,2),(29,'15778927297',0,1,2),(30,'17020151608',100,2,2),(31,'13785093934',11,1,1),(32,'17221151891',12,2,2),(33,'15632181209',3,2,2),(34,'13631508723',17,2,1),(35,'15921647839',1,4,1),(36,'15196272043',0,3,2),(37,'17202384358',0,2,2),(38,'15329458680',0,4,1),(39,'15570845884',0,2,1),(40,'15247038217',33,4,2),(41,'15696556899',0,4,1),(42,'15052633824',0,3,2),(43,'17893253828',1,2,1),(44,'17633874723',1,3,1),(45,'15906504917',0,2,2),(46,'15794951988',0,3,1),(47,'17225643133',15,3,2),(48,'17121985009',5,4,2),(49,'15813692112',3,1,1),(50,'17858823962',1,3,1),(51,'13440077310',1,1,1),(52,'15161050804',93,2,2),(53,'17337244095',16,1,1),(54,'17660503883',30,4,1),(55,'15833203641',95,4,1),(56,'17826686433',0,2,2),(57,'14522307607',0,3,1),(58,'15316245692',1,3,1),(59,'15178720230',50,1,2),(60,'15136406348',24,1,2),(61,'15601422549',6,2,2),(62,'17266696712',17,2,2),(63,'15814420938',9,2,1),(64,'15535946235',0,1,2),(65,'17326010445',7,3,1),(66,'14703677680',100,1,2),(67,'17204706408',0,3,1),(68,'17117340172',0,1,1),(69,'18840746772',30,4,1),(70,'15847877171',26,4,1),(71,'17291631478',69,1,1),(72,'13212368970',0,3,1),(73,'17248185693',4,1,2),(74,'15223500293',1,4,1),(75,'17216074557',7,3,2),(76,'15740112467',100,1,1),(77,'15039969399',1,3,2),(78,'17577679808',78,3,2),(79,'15528748180',0,4,1),(80,'15849194094',6,2,1),(81,'17857077630',99,1,2),(82,'17240993614',7,4,1),(83,'17659668219',14,4,1),(84,'14746758054',10,1,2),(85,'17549762475',8,3,2),(86,'17700308588',51,1,2),(87,'18794395453',1,2,1),(88,'17329706677',1,1,1),(89,'15653018897',1,2,1),(90,'15894538790',0,1,1),(91,'17720575856',24,2,2),(92,'17010084492',2,3,2),(93,'17088759148',10,4,1),(94,'17239442952',12,1,1),(95,'17124418891',31,1,2),(96,'15979712418',100,1,2),(97,'13275695771',1,1,2),(98,'14572142570',0,3,1),(99,'15570525095',18,1,2),(100,'15212694630',62,3,2),(101,'17790225852',15,3,2),(102,'15822062600',0,4,1),(103,'15844538858',5,1,1),(104,'17384240205',13,2,1),(105,'17682733169',10,2,1),(106,'15346978541',5,4,1),(107,'17881302694',1,1,1),(108,'18956817527',2,4,2),(109,'15228137861',0,3,2),(110,'15742222687',99,3,1),(111,'15707721860',0,3,2),(112,'17581831102',0,3,1),(113,'15996982765',0,4,1),(114,'15624980822',0,3,1),(115,'15039079791',1,2,1),(116,'15283725312',17,4,2),(117,'15972907147',0,3,1),(118,'14784548111',57,2,2),(119,'15031730467',7,4,2),(120,'14731415594',0,4,1),(121,'15662838387',3,4,1),(122,'18749649781',9,2,2),(123,'18518717318',9,2,2),(124,'15065873619',9,1,2),(125,'17175450184',9,4,1),(126,'17177359554',9,4,2),(127,'17261916346',9,3,2),(128,'15989550866',9,4,2),(129,'17033129888',9,3,1),(130,'17844441342',9,2,1),(131,'15011152654',9,4,1),(132,'17207479259',9,1,1),(133,'17727125879',9,1,1),(134,'17872618087',9,1,2),(135,'17300983645',9,3,2),(136,'15521754357',9,4,1),(137,'17311371659',9,2,1),(138,'15738531869',9,4,1),(139,'15825212549',9,3,2),(140,'17564245174',9,2,1),(141,'15193511418',9,4,1),(142,'13336402935',9,2,2),(143,'15392629480',9,4,2),(144,'15909685947',9,4,2),(145,'15079109474',9,1,2),(146,'17225631950',9,2,1),(147,'15262016352',9,1,1),(148,'15919304682',9,2,1),(149,'17885580250',9,3,1),(150,'15255431984',9,3,1),(151,'15996978760',9,3,1),(152,'15675666746',9,3,1),(153,'15032174288',9,3,1),(154,'15984216147',9,4,1),(155,'18816248019',9,4,1),(156,'15968716332',9,4,2),(157,'17843871382',9,3,1),(158,'18159418282',9,2,2),(159,'15080324930',9,3,2),(160,'17605442039',9,3,2),(161,'17840979660',9,2,1),(162,'15221240557',9,3,2),(163,'14768280363',9,3,1),(164,'17776081685',9,2,2),(165,'17559264401',9,1,2),(166,'15187891303',9,1,2),(167,'15940173362',9,2,1),(168,'15011447377',9,4,2),(169,'15922079982',9,3,2),(170,'17334539582',9,4,1),(171,'17320469579',9,4,2),(172,'17556815543',9,2,2),(173,'15062677370',9,1,1),(174,'17868532339',9,2,2),(175,'17743141431',9,1,1),(176,'17884741304',9,2,2),(177,'15642751076',9,2,1),(178,'15819104161',9,2,1),(179,'17351366903',9,2,2),(180,'15535282195',9,1,2),(181,'17158799340',9,1,1),(182,'15205459304',9,2,1),(183,'13709529324',9,2,1),(184,'17318821002',9,1,2),(185,'17275797872',9,3,1),(186,'15032700939',9,1,2),(187,'15589849425',9,1,1),(188,'17549700498',9,2,2),(189,'17148783257',9,1,2),(190,'17092890761',9,1,2),(191,'17374529275',9,3,1),(192,'15578375900',9,3,1),(193,'15247566270',9,3,2),(194,'15253596937',9,2,1),(195,'15783950424',9,2,2),(196,'15587508636',9,1,2),(197,'15160666136',9,2,1),(198,'17698693041',9,2,1),(199,'17129303925',9,4,1),(200,'14759525855',9,2,2),(201,'17201180338',9,4,2),(202,'17836364573',9,4,1),(203,'15362392011',9,4,2),(204,'15987205824',9,2,2),(205,'13907662188',9,1,1),(206,'14775985080',9,4,2),(207,'15940267035',9,1,2),(208,'17891666038',9,3,1),(209,'17503541883',9,3,2),(210,'15260801929',9,4,2),(211,'14712826762',9,2,2),(212,'15153563059',9,3,1),(213,'17519530171',9,1,1),(214,'18655581639',9,4,2),(215,'15592708020',9,2,1),(216,'14548176431',9,2,2),(217,'15717407557',9,3,1),(218,'15596534409',9,4,1),(219,'15845848322',9,1,2),(220,'14799977850',9,1,1),(221,'15904472512',9,2,2),(222,'15607961544',99,1,1),(223,'15284635609',99,2,2),(224,'14546151101',99,4,1),(225,'17038621300',99,2,2),(226,'13607187487',99,1,1),(227,'15555581775',99,4,2),(228,'15933118854',99,4,1),(229,'15283117607',99,4,2),(230,'17134703946',99,2,2),(231,'17846802592',99,2,1),(232,'18279492445',99,4,2),(233,'13620286760',99,4,2),(234,'17066308578',99,1,2),(235,'15692747419',99,1,1),(236,'15855935409',99,3,2),(237,'17510709836',99,2,1),(238,'15363841735',99,3,2),(239,'17186830487',99,4,2),(240,'17032717995',99,4,1),(241,'15568455287',99,3,1),(242,'15399527887',99,2,1),(243,'17602959721',99,2,2),(244,'18689353243',99,1,2),(245,'17254533670',99,4,1),(246,'14796014963',99,2,1),(247,'17585772488',99,4,1),(248,'17759736577',99,4,1),(249,'18467722820',99,4,2),(250,'15209854015',99,2,2),(251,'17166674793',99,2,1),(252,'17326698980',99,1,2),(253,'15334586546',99,1,1),(254,'15960780417',99,2,1),(255,'15668737071',99,3,1),(256,'15754095165',99,3,2),(257,'15262822913',99,2,1),(258,'14721409205',99,4,1),(259,'17798087527',99,4,1),(260,'13016130833',99,1,1),(261,'15568526782',99,3,2),(262,'17739373051',99,2,2),(263,'13498713856',99,4,2),(264,'15374235982',99,2,1),(265,'17575222544',99,1,2),(266,'15527733937',99,3,1),(267,'15896495598',99,4,1),(268,'17083623314',99,4,2),(269,'15682998728',99,3,2),(270,'17183065040',99,1,2),(271,'15978930683',99,2,1),(272,'17521108216',99,3,1),(273,'15008149339',99,4,2),(274,'14761600870',99,1,1),(275,'17381134855',99,3,1),(276,'15661230412',99,1,2),(277,'17018206344',99,3,1),(278,'15503276714',99,2,2),(279,'15935384673',99,2,1),(280,'14788600704',99,3,1),(281,'15332459595',99,4,1),(282,'15801053299',99,4,1),(283,'15634038900',99,1,2),(284,'17502536402',99,1,2),(285,'17264772315',99,4,2),(286,'15100298751',99,4,2),(287,'17717294668',99,2,1),(288,'17707822878',99,1,1),(289,'17061855737',99,3,2),(290,'18462096281',99,3,1),(291,'15868282230',99,3,1),(292,'17883505325',99,4,1),(293,'17327751720',99,2,2),(294,'17694215741',99,3,2),(295,'15801651965',99,2,2),(296,'17832133119',99,3,1),(297,'15595318908',99,4,1),(298,'17152893459',99,3,2),(299,'17844886232',99,1,1),(300,'15064239446',99,3,1),(301,'17336506935',99,2,2),(302,'17253057147',99,2,1),(303,'15148987334',99,1,2),(304,'17084485876',99,1,1),(305,'15663137921',99,1,2),(306,'15311286339',99,3,2),(307,'15043519426',99,2,2),(308,'17251518871',99,4,2),(309,'15518684530',99,2,1),(310,'15979176058',99,4,1),(311,'15745858720',99,4,1),(312,'15523895749',99,2,2),(313,'15139450369',99,4,2),(314,'14790663867',99,3,2),(315,'17802703018',99,4,2),(316,'17555759516',99,2,2),(317,'15799807448',99,4,2),(318,'17673945996',99,4,1),(319,'15871331394',99,1,1),(320,'14560839038',99,3,1),(321,'13571867216',99,2,2);
/*!40000 ALTER TABLE `app01_prettynum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_task`
--

DROP TABLE IF EXISTS `app01_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `level` smallint NOT NULL,
  `title` varchar(64) NOT NULL,
  `detail` longtext NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app01_task_user_id_93daa16a_fk_app01_admin_id` (`user_id`),
  CONSTRAINT `app01_task_user_id_93daa16a_fk_app01_admin_id` FOREIGN KEY (`user_id`) REFERENCES `app01_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_task`
--

LOCK TABLES `app01_task` WRITE;
/*!40000 ALTER TABLE `app01_task` DISABLE KEYS */;
INSERT INTO `app01_task` VALUES (1,1,'12','12',1),(2,1,'1','12',1),(3,1,'1','1',1),(4,1,'下课','6点了',2),(5,1,'下课','6点了',2),(6,1,'1','1',1),(7,1,'1','1',1),(8,1,'1','1',1);
/*!40000 ALTER TABLE `app01_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_userinfo`
--

DROP TABLE IF EXISTS `app01_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_userinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `password` varchar(64) NOT NULL,
  `age` int NOT NULL,
  `account` decimal(10,2) NOT NULL,
  `create_time` date NOT NULL,
  `gender` smallint NOT NULL,
  `depart_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app01_userinfo_depart_id_e22e0907_fk_app01_department_id` (`depart_id`),
  CONSTRAINT `app01_userinfo_depart_id_e22e0907_fk_app01_department_id` FOREIGN KEY (`depart_id`) REFERENCES `app01_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_userinfo`
--

LOCK TABLES `app01_userinfo` WRITE;
/*!40000 ALTER TABLE `app01_userinfo` DISABLE KEYS */;
INSERT INTO `app01_userinfo` VALUES (10,'林志泽','jdu1n',37,64572.84,'2022-08-13',1,5),(11,'秦伟祺','nkV',80,16301.75,'2022-07-14',0,4),(12,'余靖琪','6jay',45,69808.16,'2022-02-11',0,21),(13,'蔡潇然','MSLpz',11,9.90,'2000-11-11',0,23),(14,'管潇烨','MSLpz',22,100.00,'2020-11-11',0,24),(15,'林惜林','zHRmMn5tUO',977,136.25,'2010-06-29',0,23),(16,'蒋詩涵','61Hf4ggxvB',79,177.99,'2001-05-11',0,4),(17,'杜震南','h9wtCYZ39s',792,97.78,'2017-11-17',1,5),(18,'官霄函','KsnWI57zud',470,194.99,'2006-04-06',1,20),(19,'唐鹏煊','f6J2uspsEv',600,79.39,'2020-07-09',1,9),(20,'宋替林','jlgccaW1GI',888,598.92,'2020-05-28',1,13),(21,'沈浩轩','TLDiEtzuRO',516,14.19,'2016-12-06',1,15),(22,'高立轩','YtlrfNf6JJ',375,635.88,'2003-11-15',1,5),(23,'马腾新','Ky6jlWD5Qy',37,590.11,'2003-03-31',1,13),(24,'白文昊','gYEPpQ8tyH',707,751.92,'2012-07-02',0,14);
/*!40000 ALTER TABLE `app01_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add department',7,'add_department'),(26,'Can change department',7,'change_department'),(27,'Can delete department',7,'delete_department'),(28,'Can view department',7,'view_department'),(29,'Can add user info',8,'add_userinfo'),(30,'Can change user info',8,'change_userinfo'),(31,'Can delete user info',8,'delete_userinfo'),(32,'Can view user info',8,'view_userinfo'),(33,'Can add pretty num',9,'add_prettynum'),(34,'Can change pretty num',9,'change_prettynum'),(35,'Can delete pretty num',9,'delete_prettynum'),(36,'Can view pretty num',9,'view_prettynum'),(37,'Can add admin',10,'add_admin'),(38,'Can change admin',10,'change_admin'),(39,'Can delete admin',10,'delete_admin'),(40,'Can view admin',10,'view_admin'),(41,'Can add task',11,'add_task'),(42,'Can change task',11,'change_task'),(43,'Can delete task',11,'delete_task'),(44,'Can view task',11,'view_task'),(45,'Can add order',12,'add_order'),(46,'Can change order',12,'change_order'),(47,'Can delete order',12,'delete_order'),(48,'Can view order',12,'view_order'),(49,'Can add boss',13,'add_boss'),(50,'Can change boss',13,'change_boss'),(51,'Can delete boss',13,'delete_boss'),(52,'Can view boss',13,'view_boss'),(53,'Can add city',14,'add_city'),(54,'Can change city',14,'change_city'),(55,'Can delete city',14,'delete_city'),(56,'Can view city',14,'view_city');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(10,'app01','admin'),(13,'app01','boss'),(14,'app01','city'),(7,'app01','department'),(12,'app01','order'),(9,'app01','prettynum'),(11,'app01','task'),(8,'app01','userinfo'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-02-22 11:09:50.390094'),(2,'auth','0001_initial','2023-02-22 11:09:50.761446'),(3,'admin','0001_initial','2023-02-22 11:09:50.865838'),(4,'admin','0002_logentry_remove_auto_add','2023-02-22 11:09:50.880343'),(5,'admin','0003_logentry_add_action_flag_choices','2023-02-22 11:09:50.888919'),(6,'app01','0001_initial','2023-02-22 11:09:50.957034'),(7,'contenttypes','0002_remove_content_type_name','2023-02-22 11:09:51.010536'),(8,'auth','0002_alter_permission_name_max_length','2023-02-22 11:09:51.049252'),(9,'auth','0003_alter_user_email_max_length','2023-02-22 11:09:51.095156'),(10,'auth','0004_alter_user_username_opts','2023-02-22 11:09:51.103653'),(11,'auth','0005_alter_user_last_login_null','2023-02-22 11:09:51.146321'),(12,'auth','0006_require_contenttypes_0002','2023-02-22 11:09:51.151515'),(13,'auth','0007_alter_validators_add_error_messages','2023-02-22 11:09:51.158169'),(14,'auth','0008_alter_user_username_max_length','2023-02-22 11:09:51.204030'),(15,'auth','0009_alter_user_last_name_max_length','2023-02-22 11:09:51.254851'),(16,'auth','0010_alter_group_name_max_length','2023-02-22 11:09:51.297252'),(17,'auth','0011_update_proxy_permissions','2023-02-22 11:09:51.306988'),(18,'auth','0012_alter_user_first_name_max_length','2023-02-22 11:09:51.351925'),(19,'sessions','0001_initial','2023-02-22 11:09:51.381671'),(20,'app01','0002_alter_userinfo_depart_alter_userinfo_gender','2023-04-26 05:18:41.000551'),(21,'app01','0003_prettynum_alter_userinfo_create_time','2023-04-26 05:50:04.377584'),(22,'app01','0004_alter_prettynum_level','2023-05-01 03:03:11.658049'),(23,'app01','0005_admin','2023-05-01 03:07:17.464994'),(24,'app01','0006_task','2023-05-05 15:57:04.555154'),(25,'app01','0007_order','2023-05-09 15:41:09.772551'),(26,'app01','0008_order_admin_order_oid_order_price_order_status_and_more','2023-05-09 16:01:24.631535'),(27,'app01','0009_delete_order','2023-05-09 16:01:24.640785'),(28,'app01','0010_order','2023-05-09 16:01:24.693026'),(29,'app01','0011_boss','2023-05-20 00:31:42.370523'),(30,'app01','0012_city','2023-05-20 05:29:53.861000');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0tabh80k0it7ybba061j105xvwum66ll','eyJpbWdfY29kZSI6IkFXSlJWIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1q6Z2x:m1n2EpEqwYW6C7igg3bKEZCiCNdCKFmyAKqCB1rE4LI','2023-06-06 15:57:35.172992'),('1ixpwveopsovzykgiltmwkuuj5eh6bnm','eyJpbWdfY29kZSI6IkdER0tEIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1pwNyY:qYlBIqnsxh94B-t6dwgs_QlYb6SF2aHjXlQJUgOT7WA','2023-05-09 14:06:58.453685'),('3v1zt7cpaqfpnenssskf6euyey6386p8','eyJpbWdfY29kZSI6IkhPU0lKIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0:1pwMvB:A7qegYPpF-BLW_pzo_nRb4c0XtQwHdQcRdvUltdQXEQ','2023-05-09 12:59:25.866976'),('5uk3kevkjek9z4egdo7btc10jkr63f39','eyJpbWdfY29kZSI6Ik5STUVMIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1pzYXg:-Z2Q324ROs2v0FCaOFX4-St3207QjGDr2waO5wfD-pc','2023-05-18 08:00:20.966444'),('60wqt4cediwntzmrfy3ikply3c0fod3f','eyJpbWdfY29kZSI6IkJKWVdNIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1pyjNr:Puk4DatumKcSbGUt_q0NgO4MDGhSHGo37ouxoMMLf2w','2023-05-16 01:22:47.415721'),('7e1m7eh8y4bjc7p31ij3zgts8xdoe7zm','eyJpbWdfY29kZSI6IkxUR0RDIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MDQ4MDAwMCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1q2xpH:k1Yu8OSFN4DAGlJJfW9mY6zf2N6wTGbho4vkAshsP6I','2025-04-26 17:35:35.580907'),('7shysvnikx0hmgfn7xy0fyyaz5483ar6','eyJpbWdfY29kZSI6IkhCSkhTIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0:1puvFN:OD_a8VYX-WKPKeCUjl9EBDDhbYPETS_AKZHQlqmRloY','2023-05-05 13:14:17.906389'),('8ihj43bex94f9eiwsihjrkb3y74uc2d0','eyJpbWdfY29kZSI6IkZKQk1BIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0:1pylIN:t4r4MSbwqALU5atb9oQ-gHUvI8vWPaqmoj8mw5uLPOQ','2023-05-16 03:25:15.844716'),('8k0bg1c6wcq4n4u8vpbrwry0cypusgji','eyJpbWdfY29kZSI6Ik5FWVlGIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0:1pwO2b:96sl4H2HnazKWaMiUMavgBgoUw-Yc8MuAoyGug5y41w','2023-05-09 14:11:09.613902'),('95mx04wl4tlxpwtcp3h76ro16emxsk9p','eyJpbWdfY29kZSI6Ik1ESVNZIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1pwMq8:h-_4OAZjofpGQk2lG2I9MMkDOszQx6MNQ1qeJQyhhcY','2023-05-09 12:54:12.371887'),('9bkvh1s7eokd4hbqlngfzjwbstnd4165','eyJpbWdfY29kZSI6IlBCUUZBIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1qjH8V:vJ4CSrX68TOhPklI-gDeYkAjsBCV_rNQmqPOQzZ0SNE','2023-09-21 10:43:19.342941'),('accvxk9k9c2socvebr3x50x32djiqe0o','eyJpbWdfY29kZSI6IlNOQlJLIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1pwLa4:FpRv5IkRwlY_WyAiugMFKf1xrPtFZmH-GsAFWLCV6Zg','2023-05-09 11:33:32.703413'),('d5z5kkirzhv5l0i2ui79z8yvbw2ora25','eyJpbWdfY29kZSI6IlVVREVWIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0:1pwO89:BeX1TyN-fvIVnXeotkWRk_C4Hjnhrzv13h4t65atJHw','2023-05-09 14:16:53.828342'),('g21an1d3youfajikdj8l36emq2pb33cx','eyJpbWdfY29kZSI6Ik5PUEREIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0:1pvCty:wqE_V_vLED_w0Y4Ovv7X8TlyGdRDuqHVYlO6gL4xDow','2023-05-06 08:05:22.261038'),('h7qhkjzldtejtey2jm9f77okhfkp5vsd','eyJpbWdfY29kZSI6Ik1MTFhEIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0:1pwO18:9xKBs71K-c1rJl6NyTeWHb6F6o0VTtKYcsDCBIiPuiQ','2023-05-09 14:09:38.037281'),('i667nv7wmhk2g407rl2vk0948zpewzqy','eyJpbWdfY29kZSI6IktQVlFZIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MDQ4MDAwMCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1q3IkE:Q9mU0BSE0ZZRdpv1QMk2KxFIP_zQ_jRKzdPwPO6K0i4','2025-04-27 15:55:46.057441'),('ilqo234iyc4k8qkdmxn2ualjwjljcepd','eyJpbWdfY29kZSI6IkZOSFFWIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0:1pvBd1:6QeeUg4LyaclXcVyUg0ojioAxSdLptEGxCqcWPpQZCs','2023-05-06 06:43:47.946915'),('iq5bgtrg6ypk4tn41kfgd3xnb46veqj5','eyJpbWdfY29kZSI6IldGVFJEIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0:1pyl9w:9Wn2Qb2RkoTzbYZ_ocEucSLeshws9yxD7QEt6LlblA8','2023-05-16 03:16:32.264052'),('j3jxrogx1ds0fzezth0emtmk3pske2xv','eyJpbWdfY29kZSI6IlFORU9LIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1q12zY:8F7zcUrx7_-mCpv_V2tgmAOg1gL_9ezPzY0pikwfAOQ','2023-05-22 10:43:16.324511'),('jff7ozdvamukrw3unkd5zaaqrbbvmt26','eyJpbmZvIjp7ImlkIjoyMSwibmFtZSI6ImFkbWluIn0sImltZ19jb2RlIjoiQUNJQ0QiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1puv4j:b66zMYH_YACFITvI4xraicEEMPWkZ_XzXHCsVgtrsnU','2023-05-05 13:03:17.844569'),('k8qla0jsxslgjslcv2g724hsp2t65muc','eyJpbWdfY29kZSI6IkNJSEdKIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1pylSr:ObEmXKhr6b4Vz_fDnWzCX8lksWFN9Ejs7UI073udMKE','2023-05-16 03:36:05.903197'),('kxg1zd6t91qppmoz9ya6nf2n93axxram','eyJpbWdfY29kZSI6IkVST0xTIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0:1pvBVA:2MnbpwDoKJQ-t7a4Y1EuTdoH8YhSrsg5_BSnOv8kKKQ','2023-05-06 06:35:40.249226'),('l0ocm9xwhagsgcwzpbiig1c3idw64i9b','eyJpbWdfY29kZSI6IlhXS09JIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1px5Bu:C2aa4eFlm-wO1tvBXXAnv5BVyBwV1NzTdyAwx3eOnEA','2023-05-11 12:15:38.604765'),('njuq6rb3mv1y7nhgjon77f3vn0jaz05j','eyJpbWdfY29kZSI6Ik5NUVRNIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0:1pvBZh:ZbcJjHBOfrGG8JXpsbA8yR6sRSPiltpn_zCk2H5gx70','2023-05-06 06:40:21.594854'),('tqu6mydjqxgq7m4oc1x1ae0ni7w3kb7u','eyJpbWdfY29kZSI6IklWWEpMIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MDQ4MDAwMCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1quoBQ:TvX__bhzAjJv5LtCuv1xNl7SXBRaj7MBwN0-4BGaQYA','2025-09-22 06:13:00.301864'),('y4o057w1wcph4vo6br8vlw50be7ae1cz','eyJpbWdfY29kZSI6IkRPQ1dGIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MDQ4MDAwMCwiaW5mbyI6eyJpZCI6MjEsIm5hbWUiOiJhZG1pbiJ9fQ:1pzYZS:f_8Eezl235NJOD1H0etaEH4RVfBT_aeqq7o-QGkYjUA','2025-04-17 08:01:10.936759'),('z5okqbyayh09c97rj27npwqhuwn60zxn','eyJpbWdfY29kZSI6IkNNSklYIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MH0:1pwO76:CFQMLu5y1mQdSokLxlIFD9DDHRS7b43s_JtSmXnT5hY','2023-05-09 14:15:48.837212');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-23 14:32:02
