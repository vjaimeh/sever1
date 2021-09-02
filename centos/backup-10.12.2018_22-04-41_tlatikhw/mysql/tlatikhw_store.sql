-- MySQL dump 10.13  Distrib 5.6.41-84.1, for Linux (x86_64)
--
-- Host: localhost    Database: tlatikhw_store
-- ------------------------------------------------------
-- Server version	5.6.41-84.1-log

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
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `company_id`, `tax_id`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`) VALUES (1,1,'Pham','Duc Tai','Brainos','0123456789','0123456789','Me Tri - Tu Liem - Ha Noi','Me Tri - Tu Liem - Ha Noi','Ha Noi','123456',230,3776),(2,2,'admin','admin','ABC','ABC123','','United States','United States','United States','123456',223,3642),(3,3,'anh','anh','','','','hà nội','','hà nội','0000',230,3776),(4,4,'Cuong','NGuyen Manh','','','','ha noi','','hn','admin',222,3513),(5,5,'Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590',138,2153);
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate`
--

LOCK TABLES `oc_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_transaction`
--

LOCK TABLES `oc_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES (1,6,'Description'),(2,6,'No. of Cores'),(4,6,'test 1'),(5,6,'test 2'),(6,6,'test 3'),(7,6,'test 4'),(8,6,'test 5'),(9,6,'test 6'),(10,6,'test 7'),(11,6,'test 8'),(3,6,'Clockspeed');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES (3,6,'Memory'),(4,6,'Technical'),(5,6,'Motherboard'),(6,6,'Processor');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES (6,'HP Products',1),(7,'Samsung Tab',1),(8,'Manufacturers',1),(10,'Sale Off',1),(11,'Men Style',1),(12,'Comfort design',1),(13,'Free Shipping',1),(20,'Banner sidebar',1),(21,'Slideshow',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES (79,7,'index.php?route=product/product&amp;path=57&amp;product_id=49','data/demo/banner-sports-men.png'),(86,6,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','data/demo/banner-comfort-design.png'),(162,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=6','data/banner/partner3.jpg'),(161,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=6','data/banner/partner9.jpg'),(160,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=6','data/banner/partner8.jpg'),(159,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','data/banner/partner7.jpg'),(158,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=5','data/banner/partner5.jpg'),(157,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','data/banner/partner6.jpg'),(156,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','data/banner/partner4.jpg'),(155,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=6','data/banner/partner3.jpg'),(154,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=10','data/banner/partner2.jpg'),(153,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=9','data/banner/partner1.jpg'),(124,10,'#','data/demo/banner-sale-off.png'),(125,11,'#','data/demo/banner-men-style.png'),(130,12,'#','data/banner/banner1--.png'),(127,13,'#','data/demo/banner-free-shipping.png'),(131,12,'#','data/banner/banner2.png'),(132,12,'#','data/banner/banner3.png'),(133,12,'#','data/banner/banner4.png'),(184,20,'#','data/banner/nail.jpg'),(183,20,'#','data/banner/hair-care.jpg'),(182,20,'#','data/nail-270x145.jpg'),(163,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=10','data/banner/partner7.jpg'),(164,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=10','data/banner/partner2.jpg'),(165,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=10','data/banner/partner6.jpg'),(187,21,'','data/banner/bigstock-Vintage-working-tools-on-woode-86760251.jpg'),(186,21,'','data/banner/tools_cropped.jpg'),(185,20,'#','data/banner/Spa.jpg');
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image_description`
--

LOCK TABLES `oc_banner_image_description` WRITE;
/*!40000 ALTER TABLE `oc_banner_image_description` DISABLE KEYS */;
INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES (79,6,7,'Samsung Tab 10.1'),(163,6,8,'Hitachi'),(162,6,8,'Canon'),(161,6,8,'Asus'),(86,6,6,'HP Banner'),(160,6,8,'Hp'),(159,6,8,'Dell'),(158,6,8,'HTC'),(157,6,8,'Apple'),(156,6,8,'Hewlett-Packard'),(155,6,8,'Palm'),(154,6,8,'Sony'),(153,6,8,'Canon'),(185,6,20,'Fashion bags'),(124,6,10,'banner-sale-off'),(125,6,11,'Banner Men Style'),(130,6,12,'Banner Comfort design'),(127,6,13,'Banner Free Shipping'),(131,6,12,'dfhf'),(132,6,12,'fgjfj'),(133,6,12,'fgjfj'),(184,6,20,'Travel bags'),(183,6,20,'Cross boy'),(182,6,20,'Skin'),(164,6,8,'Microsoft'),(165,6,8,'BrainOs'),(187,6,21,'slide1'),(186,6,21,'silde2');
/*!40000 ALTER TABLE `oc_banner_image_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES (156,'',154,0,1,2,1,'2018-02-25 07:01:38','2018-02-25 07:01:38'),(155,'',154,0,1,1,1,'2018-02-25 07:01:25','2018-02-25 07:01:25'),(151,'',149,0,1,2,1,'2018-02-25 07:00:16','2018-02-25 07:00:16'),(152,'',149,0,1,3,1,'2018-02-25 07:00:31','2018-02-25 07:00:31'),(153,'',149,0,1,4,1,'2018-02-25 07:00:50','2018-02-25 07:00:50'),(154,'',145,0,1,4,1,'2018-02-25 07:01:09','2018-02-25 07:01:09'),(150,'',149,0,1,1,1,'2018-02-25 06:59:32','2018-02-25 06:59:32'),(148,'',147,0,1,1,1,'2018-02-25 06:58:59','2018-02-25 07:33:45'),(149,'',145,0,1,3,1,'2018-02-25 06:59:17','2018-02-25 06:59:17'),(118,'',0,1,1,1,1,'2018-02-25 06:46:14','2018-02-25 06:46:47'),(119,'',118,0,1,1,1,'2018-02-25 06:46:39','2018-02-25 06:46:39'),(120,'',119,0,1,1,1,'2018-02-25 06:47:11','2018-02-25 06:47:11'),(121,'',119,0,1,2,1,'2018-02-25 06:47:28','2018-02-25 06:47:28'),(122,'',119,0,1,3,1,'2018-02-25 06:47:55','2018-02-25 06:47:55'),(123,'',118,0,0,2,1,'2018-02-25 06:48:14','2018-02-25 06:54:47'),(124,'',123,0,1,1,1,'2018-02-25 06:49:16','2018-02-25 06:49:16'),(125,'',123,0,1,2,1,'2018-02-25 06:49:31','2018-02-25 06:49:31'),(126,'',123,0,1,3,1,'2018-02-25 06:49:49','2018-02-25 06:49:49'),(127,'',123,0,1,4,1,'2018-02-25 06:50:04','2018-02-25 06:50:04'),(128,'',118,0,1,3,1,'2018-02-25 06:50:26','2018-02-25 06:50:26'),(129,'',128,0,1,1,1,'2018-02-25 06:51:29','2018-02-25 06:51:29'),(130,'',129,0,1,1,1,'2018-02-25 06:51:42','2018-02-25 06:52:41'),(131,'',129,0,1,2,1,'2018-02-25 06:52:05','2018-02-25 06:53:00'),(132,'',129,0,1,3,1,'2018-02-25 06:53:17','2018-02-25 06:53:17'),(133,'',128,0,1,2,1,'2018-02-25 06:53:42','2018-02-25 06:53:42'),(134,'',128,0,1,3,1,'2018-02-25 06:54:00','2018-02-25 06:54:00'),(135,'',118,0,1,4,1,'2018-02-25 06:54:21','2018-02-25 06:54:21'),(136,'',0,0,1,2,1,'2018-02-25 06:55:23','2018-02-25 06:55:23'),(137,'',136,0,1,1,1,'2018-02-25 06:55:53','2018-02-25 06:55:53'),(138,'',136,0,1,2,1,'2018-02-25 06:56:06','2018-02-25 06:56:06'),(139,'',136,0,1,3,1,'2018-02-25 06:56:18','2018-02-25 06:56:18'),(140,'',136,0,1,4,1,'2018-02-25 06:56:37','2018-02-25 07:24:37'),(141,'',136,0,1,5,1,'2018-02-25 06:57:05','2018-02-25 06:57:05'),(142,'',136,0,1,6,1,'2018-02-25 06:57:21','2018-02-25 06:57:21'),(143,'',136,0,1,7,1,'2018-02-25 06:57:33','2018-02-25 07:33:18'),(144,'',136,0,1,8,1,'2018-02-25 06:57:48','2018-02-25 07:10:12'),(145,'',0,0,1,3,1,'2018-02-25 06:57:59','2018-02-25 06:57:59'),(146,'',145,0,1,1,1,'2018-02-25 06:58:23','2018-02-25 06:58:23'),(147,'',145,0,1,2,1,'2018-02-25 06:58:37','2018-02-25 06:58:37'),(157,'',154,0,1,3,1,'2018-02-25 07:01:57','2018-02-25 07:34:00'),(158,'',145,0,1,5,1,'2018-02-25 07:02:17','2018-02-25 07:02:17'),(159,'',158,0,1,3,1,'2018-02-25 07:02:32','2018-02-25 07:47:05'),(160,'',158,0,1,4,1,'2018-02-25 07:02:42','2018-02-25 07:47:17'),(161,'',158,0,1,5,1,'2018-02-25 07:02:55','2018-02-25 07:46:37'),(162,'',158,0,1,1,1,'2018-02-25 07:46:22','2018-02-25 07:46:22'),(163,'',158,0,1,2,1,'2018-02-25 07:46:56','2018-02-25 07:46:56');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES (118,6,'Trabajo','','',''),(119,6,'Oficina','','',''),(120,6,'Artículos de oficina','','',''),(121,6,'Artículos personales','','',''),(122,6,'Accesorios de cómputo','','',''),(123,6,'Tlapalería ','','',''),(124,6,'Pintura','','',''),(125,6,'Electricidad','','',''),(126,6,'Plomería','','',''),(127,6,'Tornillería','','',''),(128,6,'Ferretería y Construcción','','',''),(129,6,'Herramienta','','',''),(130,6,'Construcción','','',''),(131,6,'Eléctrica','','',''),(132,6,'Carpintería','','',''),(133,6,'Equipo','','',''),(134,6,'Materiales','','',''),(135,6,'Papelería','','',''),(136,6,'Hogar','','',''),(137,6,'Despensa','','',''),(138,6,'Limpieza y Jarcería','','',''),(139,6,'Decoración','','',''),(140,6,'Ropa y Calzado','','',''),(141,6,'Higiene y Belleza','','',''),(142,6,'Salud','','',''),(143,6,'AccesoriosH','','',''),(144,6,'Mascotas','','',''),(145,6,'Diversión y Entretenimiento','','',''),(146,6,'Libros y Revistas','','',''),(147,6,'Viajes','','',''),(148,6,'AccesoriosV','','',''),(149,6,'Juegos','','',''),(150,6,'Deportes','','',''),(151,6,'De mesa','','',''),(152,6,'Juguetes','','',''),(153,6,'Videojuegos','','',''),(154,6,'Fiesta','','',''),(155,6,'Bebidas','','',''),(156,6,'Disfraces','','',''),(157,6,'AccesoriosF','','',''),(158,6,'Romance','','',''),(159,6,'Preservativos','','',''),(160,6,'Ropa','','',''),(161,6,'Artículos ','','',''),(162,6,'Flores','','',''),(163,6,'Chocolates','','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES (130,128,1),(130,118,0),(130,130,3),(129,128,1),(129,118,0),(129,129,2),(128,118,0),(127,127,2),(128,128,1),(126,126,2),(127,118,0),(127,123,1),(125,125,2),(126,118,0),(126,123,1),(125,118,0),(125,123,1),(123,123,1),(124,118,0),(124,123,1),(118,118,0),(132,129,2),(132,132,3),(132,118,0),(132,128,1),(130,129,2),(131,129,2),(131,118,0),(131,131,3),(133,118,0),(122,119,1),(123,118,0),(122,122,2),(124,124,2),(140,140,1),(121,121,2),(122,118,0),(139,136,0),(139,139,1),(138,136,0),(138,138,1),(137,136,0),(137,137,1),(135,135,1),(136,136,0),(141,136,0),(119,119,1),(120,119,1),(120,120,2),(121,118,0),(121,119,1),(135,118,0),(140,136,0),(156,156,2),(157,154,1),(134,128,1),(134,134,2),(119,118,0),(131,128,1),(157,145,0),(134,118,0),(156,154,1),(156,145,0),(155,155,2),(155,154,1),(155,145,0),(154,154,1),(154,145,0),(153,153,2),(153,149,1),(153,145,0),(152,152,2),(152,149,1),(152,145,0),(151,151,2),(151,149,1),(151,145,0),(150,150,2),(150,149,1),(150,145,0),(149,149,1),(149,145,0),(148,148,2),(148,145,0),(148,147,1),(147,147,1),(147,145,0),(146,146,1),(146,145,0),(145,145,0),(144,144,1),(144,136,0),(143,143,1),(143,136,0),(142,142,1),(142,136,0),(141,141,1),(120,118,0),(133,133,2),(133,128,1),(157,157,2),(158,145,0),(158,158,1),(159,158,1),(159,145,0),(159,159,2),(160,158,1),(160,145,0),(160,160,2),(161,158,1),(161,145,0),(161,161,2),(162,145,0),(162,158,1),(162,162,2),(163,145,0),(163,158,1),(163,163,2);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (118,0),(119,0),(120,0),(121,0),(122,0),(123,0),(124,0),(125,0),(126,0),(127,0),(128,0),(129,0),(130,0),(131,0),(132,0),(133,0),(134,0),(135,0),(136,0),(137,0),(138,0),(139,0),(140,0),(141,0),(142,0),(143,0),(144,0),(145,0),(146,0),(147,0),(148,0),(149,0),(150,0),(151,0),(152,0),(153,0),(154,0),(155,0),(156,0),(157,0),(158,0),(159,0),(160,0),(161,0),(162,0),(163,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'Korea, Republic of','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(240,'Jersey','JE','JEY','',1,1),(241,'Guernsey','GG','GGY','',1,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2011-01-01','2012-01-01',10,'10',1,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2009-03-01','2009-08-31',10,'10',1,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'1970-11-01','2020-11-01',100000,'10000',1,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES (1,'Pesos MXN','MXN','$','','2',1.00000000,1,'2018-02-25 13:43:15'),(2,'US Dollar','USD','$','','2',1.00000000,1,'2017-10-05 20:36:46');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_to_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_to_customer_group`
--

LOCK TABLES `oc_custom_field_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_to_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
INSERT INTO `oc_customer` (`customer_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `customer_group_id`, `ip`, `status`, `approved`, `token`, `date_added`) VALUES (1,0,'Pham','Duc Tai','taip0422@gmail.com','01672059552','0123456','cf97bb2aef1a273758a3616e22707b1c963ee540','270f99cc5','a:0:{}','a:0:{}',1,1,1,'::1',1,1,'','2014-01-27 23:28:55'),(2,0,'admin','admin','admin@admin.com','0123456789','123456','aac12ef38dfd3af2bd025c8143bf3e7677ab1488','789d98a74','a:0:{}','',1,2,1,'192.168.1.32',1,1,'','2014-03-08 13:56:45'),(3,0,'anh','anh','anh@gmail.com','1234567890','','15a4dc930d4716235fb48b5d87549f9bae689ed7','3e586efca','a:1:{s:4:\"31::\";i:4;}','a:8:{i:0;s:2:\"36\";i:1;s:2:\"43\";i:2;s:2:\"28\";i:3;s:2:\"42\";i:4;s:2:\"30\";i:5;s:2:\"31\";i:6;s:2:\"34\";i:7;s:2:\"33\";}',0,3,1,'::1',1,1,'','2014-04-07 14:29:32'),(4,0,'Cuong','NGuyen Manh','nmc2011@gmail.com','112312313','','4c68b47451f86602bacb691c449caa366f32cf73','5eb82f80d','a:1:{s:4:\"52::\";i:1;}','a:2:{i:0;s:2:\"34\";i:1;s:2:\"52\";}',1,4,1,'::1',1,1,'','2014-08-30 08:30:54'),(5,0,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','de69ccf9265d199979eb79790f5291135d2e5a24','ada9412a9','a:0:{}','',0,5,1,'201.102.58.135',1,1,'','2018-02-25 04:10:59');
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ban_ip`
--

DROP TABLE IF EXISTS `oc_customer_ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ban_ip`
--

LOCK TABLES `oc_customer_ban_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_field`
--

DROP TABLE IF EXISTS `oc_customer_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_field`
--

LOCK TABLES `oc_customer_field` WRITE;
/*!40000 ALTER TABLE `oc_customer_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `company_id_display`, `company_id_required`, `tax_id_display`, `tax_id_required`, `sort_order`) VALUES (1,0,1,0,0,1,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES (1,6,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES (1,1,'::1','2014-01-27 23:28:57'),(2,2,'192.168.1.32','2014-03-08 13:56:47'),(3,3,'::1','2014-04-07 14:29:33'),(4,4,'::1','2014-08-30 08:30:56'),(5,5,'201.102.58.135','2018-02-25 04:10:59');
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
INSERT INTO `oc_customer_transaction` (`customer_transaction_id`, `customer_id`, `order_id`, `description`, `amount`, `date_added`) VALUES (1,3,0,'',0.0000,'2014-06-03 09:41:17');
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=523 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES (23,'payment','cod'),(22,'total','shipping'),(57,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(390,'total','credit'),(387,'shipping','flat'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(393,'total','reward'),(398,'total','voucher'),(407,'payment','free_checkout'),(505,'module','pavcategorybanner'),(517,'module','themecontrol'),(434,'module','pavblog'),(435,'module','pavblogcategory'),(436,'module','pavblogcomment'),(437,'module','pavbloglatest'),(518,'module','slideshow'),(444,'module','pavnewsletter'),(446,'module','latest'),(453,'module','pavcustom'),(494,'module','pavtestimonial'),(519,'module','pavnivoslidershow'),(491,'module','pavreassurance'),(513,'module','account'),(482,'module','category'),(483,'module','filter'),(497,'module','pavproducttabs'),(487,'module','featured'),(501,'module','pavtwitter'),(520,'module','pavmegamenubase'),(521,'payment','openpay_cards'),(522,'payment','pp_standard');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (10,1,4),(9,1,3),(8,1,2),(7,1,1),(11,1,5),(12,1,6),(13,2,1),(14,2,2),(15,2,4),(16,2,5);
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES (10,6,1,'$400.00 - $600.00'),(9,6,1,'$200.00 - $400.00'),(8,6,1,'$100.00 - $200.00'),(7,6,1,'$0.00 - $50.00'),(11,6,1,'$50.00 - $100.00'),(12,6,1,'$600.00 - $3.000.00'),(13,6,2,'S'),(14,6,2,'M'),(15,6,2,'L'),(16,6,2,'XL');
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES (1,6,'Filter by price'),(2,6,'Filter by size');
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES (3,'UK VAT Zone','UK VAT','2010-02-26 22:33:24','2009-01-06 23:26:25'),(4,'UK Shipping','UK Shipping Zones','2010-12-15 15:18:13','2009-06-23 01:14:53');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1),(7,0,1,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES (5,6,'Terms &amp; Conditions','&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n\r\n&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;\r\n\r\n&lt;p&gt;On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.&lt;/p&gt;\r\n\r\n&lt;p&gt;In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.&lt;/p&gt;\r\n'),(3,6,'Privacy Policy','&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n\r\n&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;\r\n\r\n&lt;p&gt;On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.&lt;/p&gt;\r\n\r\n&lt;p&gt;In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.&lt;/p&gt;\r\n'),(6,6,'Delivery Information','&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n\r\n&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;\r\n\r\n&lt;p&gt;On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.&lt;/p&gt;\r\n\r\n&lt;p&gt;In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.&lt;/p&gt;\r\n'),(7,6,'Typo','&lt;section class=&quot;container&quot;&gt;\r\n&lt;div class=&quot;jumbotron&quot;&gt;\r\n&lt;h1&gt;Bootstrap v.3.0. stable&lt;/h1&gt;\r\n\r\n&lt;p&gt;CLASSIC PLUS UI theme 1.0. by @bootstraptor This is .jumbotron header Some text...&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Headings&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;h1 class=&quot;page-header&quot;&gt;Page Header &lt;small&gt;With Small Text&lt;/small&gt;&lt;/h1&gt;\r\n\r\n&lt;h1&gt;This is an h1 heading&lt;/h1&gt;\r\n\r\n&lt;h2&gt;This is an h2 heading&lt;/h2&gt;\r\n\r\n&lt;h3&gt;This is an h3 heading&lt;/h3&gt;\r\n\r\n&lt;h4&gt;This is an h4 heading&lt;/h4&gt;\r\n\r\n&lt;h5&gt;This is an h5 heading&lt;/h5&gt;\r\n\r\n&lt;h6&gt;This is an h6 heading&lt;/h6&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;tables&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Tables&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;table class=&quot;table table-hover&quot;&gt;\r\n	&lt;thead&gt;\r\n		&lt;tr&gt;\r\n			&lt;th&gt;#&lt;/th&gt;\r\n			&lt;th&gt;First Name&lt;/th&gt;\r\n			&lt;th&gt;Tables&lt;/th&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/thead&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;1&lt;/td&gt;\r\n			&lt;td&gt;Michael&lt;/td&gt;\r\n			&lt;td&gt;Are formatted like this&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;2&lt;/td&gt;\r\n			&lt;td&gt;Lucille&lt;/td&gt;\r\n			&lt;td&gt;Do you like them?&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;success&quot;&gt;\r\n			&lt;td&gt;3&lt;/td&gt;\r\n			&lt;td&gt;Success&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;danger&quot;&gt;\r\n			&lt;td&gt;4&lt;/td&gt;\r\n			&lt;td&gt;Danger&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;warning&quot;&gt;\r\n			&lt;td&gt;5&lt;/td&gt;\r\n			&lt;td&gt;Warning&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;active&quot;&gt;\r\n			&lt;td&gt;6&lt;/td&gt;\r\n			&lt;td&gt;Active&lt;/td&gt;\r\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;table class=&quot;table table-striped table-bordered table-condensed&quot;&gt;\r\n	&lt;thead&gt;\r\n		&lt;tr&gt;\r\n			&lt;th&gt;#&lt;/th&gt;\r\n			&lt;th&gt;First Name&lt;/th&gt;\r\n			&lt;th&gt;Tables&lt;/th&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/thead&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;1&lt;/td&gt;\r\n			&lt;td&gt;Michael&lt;/td&gt;\r\n			&lt;td&gt;This one is bordered and condensed&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;2&lt;/td&gt;\r\n			&lt;td&gt;Lucille&lt;/td&gt;\r\n			&lt;td&gt;Do you still like it?&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Content formating&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;p class=&quot;lead&quot;&gt;This is lead paragraph&lt;/p&gt;\r\n\r\n&lt;p&gt;This is an &lt;b&gt;ordinary paragraph&lt;/b&gt; that is &lt;i&gt;long enough&lt;/i&gt; to wrap to &lt;u&gt;multiple lines&lt;/u&gt; so that you can see how the line spacing looks.&lt;/p&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p class=&quot;text-muted&quot;&gt;Muted color paragraph.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-warning&quot;&gt;Warning color paragraph.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-danger&quot;&gt;Danger color paragraph.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-info&quot;&gt;Info color paragraph.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-success&quot;&gt;Success color paragraph.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;small&gt;This is text in a &lt;code&gt;small&lt;/code&gt; wrapper. &lt;abbr title=&quot;No Big Deal&quot;&gt;NBD&lt;/abbr&gt;, right?&lt;/small&gt;&lt;/p&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;address class=&quot;col-lg-6&quot;&gt;&lt;strong&gt;Twitter, Inc.&lt;/strong&gt;&lt;br /&gt;\r\n795 Folsom Ave, Suite 600&lt;br /&gt;\r\nSan Francisco, CA 94107&lt;br /&gt;\r\n&lt;abbr title=&quot;Phone&quot;&gt;P:&lt;/abbr&gt; (123) 456-7890&lt;/address&gt;\r\n\r\n&lt;address class=&quot;col-lg-6&quot;&gt;&lt;strong&gt;Full Name&lt;/strong&gt;&lt;br /&gt;\r\n&lt;a href=&quot;mailto:#&quot;&gt;first.last@example.com&lt;/a&gt;&lt;/address&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;blockquote&gt;Here\'s what a blockquote looks like in Bootstrap. &lt;small&gt;Use &lt;code&gt;small&lt;/code&gt; to identify the source.&lt;/small&gt;&lt;/blockquote&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;Normal Unordered List&lt;/li&gt;\r\n	&lt;li&gt;Can Also Work\r\n	&lt;ul&gt;\r\n		&lt;li&gt;With Nested Children&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;Adds Bullets to Page&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-6&quot;&gt;\r\n&lt;ol&gt;\r\n	&lt;li&gt;Normal Ordered List&lt;/li&gt;\r\n	&lt;li&gt;Can Also Work\r\n	&lt;ol&gt;\r\n		&lt;li&gt;With Nested Children&lt;/li&gt;\r\n	&lt;/ol&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;Adds Bullets to Page&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;pre&gt;\r\n		function preFormatting() {\r\n			// looks like this;\r\n\r\n			var something = somethingElse;\r\n\r\n			return true;\r\n		}&lt;/pre&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;forms&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Forms&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;form&gt;\r\n&lt;fieldset&gt;&lt;legend&gt;Legend&lt;/legend&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label for=&quot;exampleInputEmail&quot;&gt;Email address&lt;/label&gt; &lt;input class=&quot;form-control&quot; id=&quot;exampleInputEmail&quot; placeholder=&quot;Enter email&quot; type=&quot;email&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label for=&quot;exampleInputPassword&quot;&gt;Password&lt;/label&gt; &lt;input class=&quot;form-control&quot; id=&quot;exampleInputPassword&quot; placeholder=&quot;Password&quot; type=&quot;password&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label for=&quot;exampleDisabledField&quot;&gt;Disabled field&lt;/label&gt; &lt;input class=&quot;form-control&quot; disabled=&quot;disabled&quot; id=&quot;exampleDisabledField&quot; placeholder=&quot;Disabled&quot; type=&quot;password&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label for=&quot;exampleInputFile&quot;&gt;File input&lt;/label&gt; &lt;input id=&quot;exampleInputFile&quot; type=&quot;file&quot; /&gt;\r\n&lt;p class=&quot;help-block&quot;&gt;Example block-level help text here.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;\r\n&lt;div class=&quot;checkbox&quot;&gt;&lt;label&gt;&lt;input type=&quot;checkbox&quot; /&gt;Check me out&lt;/label&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;radio&quot;&gt;&lt;label&gt;&lt;input checked=&quot;checked&quot; id=&quot;optionsRadios1&quot; name=&quot;optionsRadios&quot; type=&quot;radio&quot; value=&quot;option1&quot; /&gt; Option one is this and that—be sure to include why it\'s great &lt;/label&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;radio&quot;&gt;&lt;label&gt;&lt;input id=&quot;optionsRadios2&quot; name=&quot;optionsRadios&quot; type=&quot;radio&quot; value=&quot;option2&quot; /&gt; Option two can be something else and selecting it will deselect option one &lt;/label&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group row&quot;&gt;\r\n&lt;div class=&quot;col-lg-2&quot;&gt;&lt;select class=&quot;form-control&quot;&gt;&lt;option&gt;1&lt;/option&gt;&lt;option&gt;2&lt;/option&gt;&lt;option&gt;3&lt;/option&gt;&lt;option&gt;4&lt;/option&gt;&lt;option&gt;5&lt;/option&gt; &lt;/select&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;button class=&quot;btn btn-default&quot; type=&quot;submit&quot;&gt;Submit&lt;/button&gt;&lt;/fieldset&gt;\r\n&lt;/form&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;form class=&quot;form-inline&quot;&gt;&lt;input class=&quot;form-control input-lg&quot; placeholder=&quot;Large input&quot; style=&quot;width: 200px;&quot; type=&quot;text&quot; /&gt; &lt;input class=&quot;form-control&quot; placeholder=&quot;Defaul size input&quot; style=&quot;width: 200px;&quot; type=&quot;text&quot; /&gt; &lt;input class=&quot;form-control input-sm&quot; placeholder=&quot;Small input&quot; style=&quot;width: 200px;&quot; type=&quot;password&quot; /&gt;\r\n&lt;div class=&quot;checkbox&quot;&gt;&lt;label&gt;&lt;input type=&quot;checkbox&quot; /&gt;Remember me&lt;/label&gt;&lt;/div&gt;\r\n&lt;button class=&quot;btn btn-default&quot; type=&quot;submit&quot;&gt;Sign in&lt;/button&gt;&lt;/form&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;form class=&quot;form-horizontal&quot;&gt;\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputEmail&quot;&gt;Email&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;input class=&quot;form-control&quot; id=&quot;inputEmail&quot; placeholder=&quot;Email&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group has-warning&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputEmail&quot;&gt;Email&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;input class=&quot;form-control&quot; id=&quot;inputEmail&quot; placeholder=&quot;Email&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group has-error&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputEmail&quot;&gt;Email&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;input class=&quot;form-control&quot; id=&quot;inputEmail&quot; placeholder=&quot;Email&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group has-success&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputEmail&quot;&gt;Email&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;input class=&quot;form-control&quot; id=&quot;inputEmail&quot; placeholder=&quot;Email&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputPassword&quot;&gt;Password&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;input class=&quot;form-control&quot; id=&quot;inputPassword&quot; placeholder=&quot;Password&quot; type=&quot;password&quot; /&gt;\r\n&lt;div class=&quot;checkbox&quot;&gt;&lt;label&gt;&lt;input type=&quot;checkbox&quot; /&gt;Remember me&lt;/label&gt;&lt;/div&gt;\r\n&lt;button class=&quot;btn btn-default&quot; type=&quot;submit&quot;&gt;Sign in&lt;/button&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/form&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-7&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;buttons&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Buttons&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;p&gt;&lt;!-- Standard gray button with gradient --&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt;&amp;nbsp;&lt;!-- Provides extra visual weight and identifies the primary action in a set of buttons --&gt;&lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt;&amp;nbsp;&lt;!-- Indicates a successful or positive action --&gt;&lt;button class=&quot;btn btn-success&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt;&amp;nbsp;&lt;!-- Contextual button for informational alert messages --&gt;&lt;button class=&quot;btn btn-info&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt;&amp;nbsp;&lt;!-- Indicates caution should be taken with this action --&gt;&lt;button class=&quot;btn btn-warning&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt;&amp;nbsp;&lt;!-- Indicates a dangerous or potentially negative action --&gt;&lt;button class=&quot;btn btn-danger&quot; type=&quot;button&quot;&gt;Danger&lt;/button&gt;&amp;nbsp;&lt;!-- Deemphasize a button by making it look like a link while maintaining button behavior --&gt;&lt;button class=&quot;btn btn-link&quot; type=&quot;button&quot;&gt;Link&lt;/button&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;button class=&quot;btn btn-primary btn-lg&quot; type=&quot;button&quot;&gt;Large button&lt;/button&gt;&amp;nbsp;&lt;button class=&quot;btn btn-primary disabled&quot; type=&quot;button&quot;&gt;Disabled&lt;/button&gt;&amp;nbsp;&lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Default button&lt;/button&gt;&amp;nbsp;&lt;button class=&quot;btn btn-primary btn-sm&quot; type=&quot;button&quot;&gt;Small button&lt;/button&gt;&amp;nbsp;&lt;button class=&quot;btn btn-primary btn-xs&quot; type=&quot;button&quot;&gt;Extra small button&lt;/button&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-5&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;images&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Images&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;p&gt;&lt;img class=&quot;img-rounded&quot; height=&quot;120&quot; src=&quot;http://placekitten.com/120/120&quot; width=&quot;120&quot; /&gt; &lt;img class=&quot;img-circle&quot; height=&quot;120&quot; src=&quot;http://placekitten.com/120/120&quot; width=&quot;120&quot; /&gt; &lt;img class=&quot;img-thumbnail&quot; height=&quot;120&quot; src=&quot;http://placekitten.com/120/120&quot; width=&quot;120&quot; /&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;panel panel-default clearfix&quot; id=&quot;dropdowns&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Dropdowns&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-2&quot;&gt;\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-default dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt;\r\n\r\n&lt;ul aria-labelledby=&quot;dropdownMenu&quot; class=&quot;dropdown-menu&quot; role=&quot;menu&quot;&gt;\r\n	&lt;li class=&quot;dropdown-header&quot;&gt;Dropdown header&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-2&quot;&gt;\r\n&lt;div class=&quot;btn-group pull-right&quot;&gt;&lt;button class=&quot;btn btn-warning dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;Pull right&lt;/button&gt;\r\n\r\n&lt;ul aria-labelledby=&quot;dropdownMenu&quot; class=&quot;dropdown-menu pull-right&quot; role=&quot;menu&quot;&gt;\r\n	&lt;li class=&quot;dropdown-header&quot;&gt;Dropdown header&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-2&quot;&gt;\r\n&lt;div class=&quot;btn-group dropup&quot;&gt;&lt;button class=&quot;btn btn-info dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;Dropup&lt;/button&gt;\r\n\r\n&lt;ul aria-labelledby=&quot;dropdownMenu&quot; class=&quot;dropdown-menu&quot; role=&quot;menu&quot;&gt;\r\n	&lt;li class=&quot;dropdown-header&quot;&gt;Dropdown header&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-2&quot;&gt;\r\n&lt;div class=&quot;btn-group dropup pull-right&quot;&gt;&lt;button class=&quot;btn btn-success dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;Dropup pull right&lt;/button&gt;\r\n\r\n&lt;ul aria-labelledby=&quot;dropdownMenu&quot; class=&quot;dropdown-menu pull-right&quot; role=&quot;menu&quot;&gt;\r\n	&lt;li class=&quot;dropdown-header&quot;&gt;Dropdown header&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot; tabindex=&quot;-1&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;input-groups&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Input Groups&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;div class=&quot;input-group&quot;&gt;&lt;span class=&quot;input-group-btn&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Go!&lt;/button&gt; &lt;/span&gt;&lt;input class=&quot;form-control&quot; placeholder=&quot;Username&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n\r\n&lt;div class=&quot;input-group&quot;&gt;&lt;input class=&quot;form-control input-large&quot; type=&quot;text&quot; /&gt; &lt;span class=&quot;input-group-addon input-large&quot;&gt;.00&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;div class=&quot;input-group&quot;&gt;&lt;span class=&quot;input-group-addon&quot;&gt;$&lt;/span&gt;&lt;input class=&quot;form-control&quot; type=&quot;text&quot; /&gt; &lt;span class=&quot;input-group-addon&quot;&gt;.00&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-5&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;button-groups&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Button Groups&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Left&lt;/button&gt;&lt;button class=&quot;btn btn-success&quot; type=&quot;button&quot;&gt;Middle&lt;/button&gt;&lt;button class=&quot;btn btn-warning&quot; type=&quot;button&quot;&gt;Middle&lt;/button&gt;&lt;button class=&quot;btn btn-info&quot; type=&quot;button&quot;&gt;Middle&lt;/button&gt;&lt;button class=&quot;btn btn-danger&quot; type=&quot;button&quot;&gt;Middle&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Right&lt;/button&gt;&lt;/div&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;div class=&quot;btn-group btn-group-justified&quot;&gt;&lt;a class=&quot;btn btn-default&quot;&gt;Left&lt;/a&gt; &lt;a class=&quot;btn btn-success&quot;&gt;Middle&lt;/a&gt; &lt;a class=&quot;btn btn-info&quot;&gt;Middle&lt;/a&gt; &lt;a class=&quot;btn btn-danger&quot;&gt;Middle&lt;/a&gt; &lt;a class=&quot;btn btn-warning&quot;&gt;Middle&lt;/a&gt; &lt;a class=&quot;btn btn-default&quot;&gt;Right&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;div class=&quot;btn-group&quot; data-toggle=&quot;buttons&quot;&gt;&lt;label class=&quot;btn btn-primary&quot;&gt;&lt;input type=&quot;checkbox&quot; /&gt; Option 1 &lt;/label&gt; &lt;label class=&quot;btn btn-primary&quot;&gt; &lt;input type=&quot;checkbox&quot; /&gt; Option 2 &lt;/label&gt; &lt;label class=&quot;btn btn-primary&quot;&gt; &lt;input type=&quot;checkbox&quot; /&gt; Option 3 &lt;/label&gt;&lt;/div&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;div class=&quot;btn-group&quot; data-toggle=&quot;buttons&quot;&gt;&lt;label class=&quot;btn btn-primary&quot;&gt;&lt;input id=&quot;option1&quot; name=&quot;options&quot; type=&quot;radio&quot; /&gt; Option 1 &lt;/label&gt; &lt;label class=&quot;btn btn-primary&quot;&gt; &lt;input id=&quot;option2&quot; name=&quot;options&quot; type=&quot;radio&quot; /&gt; Option 2 &lt;/label&gt; &lt;label class=&quot;btn btn-primary&quot;&gt; &lt;input id=&quot;option3&quot; name=&quot;options&quot; type=&quot;radio&quot; /&gt; Option 3 &lt;/label&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-3&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Breadcrumb&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;ul class=&quot;breadcrumb&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Library&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;active&quot;&gt;Data&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;navs&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Navs&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;ul class=&quot;nav nav-tabs&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Messages&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;ul class=&quot;nav nav-pills&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home &lt;span class=&quot;badge&quot;&gt;42&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;About &lt;span class=&quot;badge&quot;&gt;42&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Contacts&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;ul class=&quot;nav nav-pills nav-stacked&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;About &lt;span class=&quot;badge&quot;&gt;42&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Contacts &lt;span class=&quot;badge pull-right&quot;&gt;434&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-6&quot; id=&quot;navbar&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Navbar&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;nav class=&quot;navbar navbar-inverse&quot; role=&quot;navigation&quot;&gt;&lt;!-- Brand and toggle get grouped for better mobile display --&gt;\r\n&lt;div class=&quot;navbar-header&quot;&gt;&lt;button class=&quot;navbar-toggle&quot; data-target=&quot;.navbar-ex8-collapse&quot; data-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;sr-only&quot;&gt;Toggle navigation&lt;/span&gt;&lt;/button&gt;&lt;a class=&quot;navbar-brand&quot; href=&quot;#&quot;&gt;Title&lt;/a&gt;&lt;/div&gt;\r\n&lt;!-- Collect the nav links, forms, and other content for toggling --&gt;\r\n\r\n&lt;div class=&quot;collapse navbar-collapse navbar-ex8-collapse&quot;&gt;\r\n&lt;ul class=&quot;nav navbar-nav&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;!-- /.navbar-collapse --&gt;&lt;/nav&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel panel-default&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Navbar inverse&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;nav class=&quot;navbar navbar-default&quot; role=&quot;navigation&quot;&gt;&lt;!-- Brand and toggle get grouped for better mobile display --&gt;\r\n&lt;div class=&quot;navbar-header&quot;&gt;&lt;button class=&quot;navbar-toggle&quot; data-target=&quot;.navbar-ex8-collapse&quot; data-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;sr-only&quot;&gt;Toggle navigation&lt;/span&gt;&lt;/button&gt;&lt;a class=&quot;navbar-brand&quot; href=&quot;#&quot;&gt;Title&lt;/a&gt;&lt;/div&gt;\r\n&lt;!-- Collect the nav links, forms, and other content for toggling --&gt;\r\n\r\n&lt;div class=&quot;collapse navbar-collapse navbar-ex8-collapse&quot;&gt;\r\n&lt;ul class=&quot;nav navbar-nav&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;!-- /.navbar-collapse --&gt;&lt;/nav&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;nav class=&quot;navbar navbar-inverse&quot; role=&quot;navigation&quot;&gt;&lt;!-- Brand and toggle get grouped for better mobile display --&gt;\r\n&lt;div class=&quot;navbar-header&quot;&gt;&lt;button class=&quot;navbar-toggle&quot; data-target=&quot;.navbar-ex8-collapse&quot; data-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;sr-only&quot;&gt;Toggle navigation&lt;/span&gt;&lt;/button&gt;&lt;a class=&quot;navbar-brand&quot; href=&quot;#&quot;&gt;Title&lt;/a&gt;&lt;/div&gt;\r\n&lt;!-- Collect the nav links, forms, and other content for toggling --&gt;\r\n\r\n&lt;div class=&quot;collapse navbar-collapse navbar-ex8-collapse&quot;&gt;&lt;a class=&quot;btn btn-default navbar-btn&quot;&gt;Navbar Button&lt;/a&gt;&lt;/div&gt;\r\n&lt;!-- /.navbar-collapse --&gt;&lt;/nav&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;pagination&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Pagination&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;ul class=&quot;pagination&quot; style=&quot;margin-right: 10px;&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Prev&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;4&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Next&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;br&gt;\r\n&lt;hr /&gt;\r\n&lt;ul class=&quot;pagination pagination-lg&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Prev&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;4&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Next&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;br&gt;\r\n&lt;hr /&gt;\r\n&lt;ul class=&quot;pagination pagination-sm&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Prev&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;4&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Next&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;br&gt;\r\n&lt;ul class=&quot;pager&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;← Prev&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Next →&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;labels&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Labels and Badges&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;&lt;span class=&quot;label label-default&quot;&gt;Default&lt;/span&gt; &lt;span class=&quot;label label-success&quot;&gt;Success&lt;/span&gt; &lt;span class=&quot;label label-warning&quot;&gt;Warning&lt;/span&gt; &lt;span class=&quot;label label-danger&quot;&gt;Danger&lt;/span&gt; &lt;span class=&quot;label label-info&quot;&gt;Info&lt;/span&gt;\r\n\r\n&lt;hr /&gt; &lt;a href=&quot;#&quot;&gt;Inbox &lt;span class=&quot;badge&quot;&gt;42&lt;/span&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;alerts&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Alerts&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;div class=&quot;alert alert-danger&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;&lt;strong&gt;Oh snap!&lt;/strong&gt; &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;Change a few things up&lt;/a&gt; and try submitting again.&lt;/div&gt;\r\n\r\n&lt;div class=&quot;alert alert-success&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;&lt;strong&gt;Well done!&lt;/strong&gt; You successfully read &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;this important alert message&lt;/a&gt;.&lt;/div&gt;\r\n\r\n&lt;div class=&quot;alert alert-warning&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;&lt;strong&gt;Heads up!&lt;/strong&gt; This &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;alert needs your attention&lt;/a&gt;, but it\'s not super important.&lt;/div&gt;\r\n\r\n&lt;div class=&quot;alert alert-info&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;&lt;strong&gt;Heads up!&lt;/strong&gt; This &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;alert needs your attention&lt;/a&gt;, but it\'s not super important.&lt;/div&gt;\r\n\r\n&lt;div class=&quot;alert alert-block alert-info&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;\r\n\r\n&lt;h4&gt;Warning!&lt;/h4&gt;\r\n\r\n&lt;p&gt;This is a block style alert.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Tooltips&lt;/div&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;div class=&quot;tooltip top&quot; style=&quot;opacity: 100; top: 57px;&quot;&gt;\r\n&lt;div class=&quot;tooltip-inner&quot;&gt;Tooltip content&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tooltip-arrow&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tooltip left&quot; style=&quot;opacity: 100; left: 200px; top: 57px;&quot;&gt;\r\n&lt;div class=&quot;tooltip-inner&quot;&gt;Tooltip content&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tooltip-arrow&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tooltip right&quot; style=&quot;opacity: 100; left: 400px; top: 57px;&quot;&gt;\r\n&lt;div class=&quot;tooltip-inner&quot;&gt;Tooltip content&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tooltip-arrow&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tooltip bottom&quot; style=&quot;opacity: 100; left: 600px; top: 57px;&quot;&gt;\r\n&lt;div class=&quot;tooltip-inner&quot;&gt;Tooltip content&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tooltip-arrow&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Popovers&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;popover left in&quot; style=&quot;display: block; left: 40px; top: 45px;&quot;&gt;\r\n&lt;div class=&quot;arrow&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;h3 class=&quot;popover-title&quot; style=&quot;display: block;&quot;&gt;Header&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;popover-content&quot;&gt;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;popover top in&quot; style=&quot;display: block; left: 340px; top: 45px;&quot;&gt;\r\n&lt;div class=&quot;arrow&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;h3 class=&quot;popover-title&quot; style=&quot;display: block;&quot;&gt;Header&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;popover-content&quot;&gt;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;popover right in&quot; style=&quot;display: block; left: 640px; top: 45px;&quot;&gt;\r\n&lt;div class=&quot;arrow&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;h3 class=&quot;popover-title&quot; style=&quot;display: block;&quot;&gt;Header&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;popover-content&quot;&gt;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Progress Bars&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-info&quot; style=&quot;width: 20%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-success&quot; style=&quot;width: 40%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress progress-striped active&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-info&quot; style=&quot;width: 50%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-warning&quot; style=&quot;width: 60%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-danger&quot; style=&quot;width: 80%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-success&quot; style=&quot;width: 35%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress-bar progress-bar-warning&quot; style=&quot;width: 20%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress-bar progress-bar-danger&quot; style=&quot;width: 10%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;media-object&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Media Object&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;ul class=&quot;media-list&quot;&gt;\r\n	&lt;li class=&quot;media&quot;&gt;&lt;a class=&quot;pull-left&quot; href=&quot;#&quot;&gt;&lt;img class=&quot;media-object img-circle&quot; src=&quot;http://placekitten.com/64/64&quot; style=&quot;width: 64px; height: 64px;&quot; /&gt; &lt;/a&gt;\r\n\r\n	&lt;div class=&quot;media-body&quot;&gt;\r\n	&lt;h4 class=&quot;media-heading&quot;&gt;Media heading&lt;/h4&gt;\r\n\r\n	&lt;p&gt;Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.&lt;/p&gt;\r\n	&lt;!-- Nested media object --&gt;\r\n\r\n	&lt;div class=&quot;media&quot;&gt;&lt;a class=&quot;pull-left&quot; href=&quot;#&quot;&gt;&lt;img class=&quot;media-object img-circle&quot; src=&quot;http://placekitten.com/64/64&quot; style=&quot;width: 64px; height: 64px;&quot; /&gt; &lt;/a&gt;\r\n\r\n	&lt;div class=&quot;media-body&quot;&gt;\r\n	&lt;h4 class=&quot;media-heading&quot;&gt;Nested media heading&lt;/h4&gt;\r\n	Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. &lt;!-- Nested media object --&gt;\r\n\r\n	&lt;div class=&quot;media&quot;&gt;&lt;a class=&quot;pull-left&quot; href=&quot;#&quot;&gt;&lt;img class=&quot;media-object img-circle&quot; src=&quot;http://placekitten.com/64/64&quot; style=&quot;width: 64px; height: 64px;&quot; /&gt; &lt;/a&gt;\r\n\r\n	&lt;div class=&quot;media-body&quot;&gt;\r\n	&lt;h4 class=&quot;media-heading&quot;&gt;Nested media heading&lt;/h4&gt;\r\n	Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;!-- Nested media object --&gt;\r\n\r\n	&lt;div class=&quot;media&quot;&gt;&lt;a class=&quot;pull-left&quot; href=&quot;#&quot;&gt;&lt;img class=&quot;media-object img-circle&quot; src=&quot;http://placekitten.com/64/64&quot; style=&quot;width: 64px; height: 64px;&quot; /&gt; &lt;/a&gt;\r\n\r\n	&lt;div class=&quot;media-body&quot;&gt;\r\n	&lt;h4 class=&quot;media-heading&quot;&gt;Nested media heading&lt;/h4&gt;\r\n	Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;/li&gt;\r\n	&lt;li class=&quot;media&quot;&gt;&lt;a class=&quot;pull-right&quot; href=&quot;#&quot;&gt;&lt;img class=&quot;media-object img-circle&quot; src=&quot;http://placekitten.com/64/64&quot; style=&quot;width: 64px; height: 64px;&quot; /&gt; &lt;/a&gt;\r\n	&lt;div class=&quot;media-body&quot;&gt;\r\n	&lt;h4 class=&quot;media-heading&quot;&gt;Media heading&lt;/h4&gt;\r\n	Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.&lt;/div&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel panel-default&quot; id=&quot;list-groups&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;List Groups&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;ul class=&quot;list-group&quot;&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;Cras justo odio&lt;span class=&quot;badge&quot;&gt;14&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;Dapibus ac facilisis in&lt;/li&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;Morbi leo risus&lt;/li&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;Porta ac consectetur ac&lt;span class=&quot;badge&quot;&gt;1224&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;Vestibulum at eros&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;list-group&quot;&gt;&lt;a class=&quot;list-group-item active&quot; href=&quot;#&quot;&gt;Cras justo odio&lt;span class=&quot;badge&quot;&gt;134&lt;/span&gt;&lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Dapibus ac facilisis in&lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Morbi leo risus&lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Porta ac consectetur ac&lt;span class=&quot;badge&quot;&gt;14&lt;/span&gt;&lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Vestibulum at eros&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;list-group&quot;&gt;\r\n&lt;h4 class=&quot;list-group-item-heading&quot;&gt;&lt;a class=&quot;list-group-item active&quot; href=&quot;#&quot;&gt;List group item heading&lt;/a&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;list-group-item-text&quot;&gt;&lt;a class=&quot;list-group-item active&quot; href=&quot;#&quot;&gt;Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;h4 class=&quot;list-group-item-heading&quot;&gt;&lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;List group item heading&lt;/a&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;list-group-item-text&quot;&gt;&lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;h4 class=&quot;list-group-item-heading&quot;&gt;&lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;List group item heading&lt;/a&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;list-group-item-text&quot;&gt;&lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.&lt;/a&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-3&quot;&gt;\r\n&lt;div class=&quot;panel panel-primary&quot; id=&quot;panels&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;This is a header&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;p&gt;This is a panel&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-footer&quot;&gt;This is a footer&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-3&quot;&gt;\r\n&lt;div class=&quot;panel panel-success&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;This is a header&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;p&gt;This is a panel&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-footer&quot;&gt;This is a footer&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-3&quot;&gt;\r\n&lt;div class=&quot;panel panel-danger&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;This is a header&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;p&gt;This is a panel&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-footer&quot;&gt;This is a footer&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-3&quot;&gt;\r\n&lt;div class=&quot;panel panel-warning&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;This is a header&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;p&gt;This is a panel&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-footer&quot;&gt;This is a footer&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-3&quot;&gt;\r\n&lt;div class=&quot;panel panel-info&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;This is a header&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;p&gt;This is a panel&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-footer&quot;&gt;This is a footer&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-3&quot;&gt;\r\n&lt;div class=&quot;panel panel-default&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;This is a header&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;p&gt;This is a panel&lt;/p&gt;\r\n\r\n&lt;ul class=&quot;list-group list-group-flush&quot;&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;First Item&lt;/li&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;Second Item&lt;/li&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;Third Item&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-footer&quot;&gt;This is a footer&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-3&quot;&gt;\r\n&lt;div class=&quot;well&quot; id=&quot;wells&quot;&gt;Default Well&lt;/div&gt;\r\n\r\n&lt;div class=&quot;well well-sm&quot;&gt;Small Well&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-3&quot;&gt;\r\n&lt;div class=&quot;well well-lg&quot;&gt;Large Padding Well&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel panel-default&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Modal&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;div class=&quot;modal-dialog&quot;&gt;\r\n&lt;div class=&quot;modal-content&quot;&gt;\r\n&lt;div class=&quot;modal-header&quot;&gt;&lt;button aria-hidden=&quot;true&quot; class=&quot;close&quot; data-dismiss=&quot;modal&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;\r\n\r\n&lt;h4 class=&quot;modal-title&quot; id=&quot;myModalLabel&quot;&gt;Modal Heading&lt;/h4&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;modal-body&quot;&gt;\r\n&lt;h4&gt;Text in a modal&lt;/h4&gt;\r\n\r\n&lt;p&gt;Duis mollis, est non commodo luctus, nisi erat porttitor ligula.&lt;/p&gt;\r\n\r\n&lt;h4&gt;Popover in a modal&lt;/h4&gt;\r\n\r\n&lt;p&gt;This &lt;a class=&quot;btn btn-default popover-test&quot; data-content=&quot;And here\'s some amazing content. It\'s very engaging. right?&quot; data-original-title=&quot;A Title&quot; href=&quot;#&quot; role=&quot;button&quot; title=&quot;&quot;&gt;button&lt;/a&gt; should trigger a popover on click.&lt;/p&gt;\r\n\r\n&lt;h4&gt;Tooltips in a modal&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;a class=&quot;tooltip-test&quot; data-original-title=&quot;Tooltip&quot; href=&quot;#&quot; title=&quot;&quot;&gt;This link&lt;/a&gt; and &lt;a class=&quot;tooltip-test&quot; data-original-title=&quot;Tooltip&quot; href=&quot;#&quot; title=&quot;&quot;&gt;that link&lt;/a&gt; should have tooltips on hover.&lt;/p&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;h4&gt;Overflowing text to show scroll behavior&lt;/h4&gt;\r\n\r\n&lt;p&gt;Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.&lt;/p&gt;\r\n\r\n&lt;p&gt;Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.&lt;/p&gt;\r\n\r\n&lt;p&gt;Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.&lt;/p&gt;\r\n\r\n&lt;p&gt;Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;modal-footer&quot;&gt;&lt;button class=&quot;btn btn-default&quot; data-dismiss=&quot;modal&quot; type=&quot;button&quot;&gt;Close&lt;/button&gt;&lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Save changes&lt;/button&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- /.modal-content --&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel panel-default&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Accordion&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;div class=&quot;panel-group&quot; id=&quot;accordion&quot;&gt;\r\n&lt;div class=&quot;panel&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;\r\n&lt;h3 class=&quot;panel-title&quot;&gt;&lt;a class=&quot;accordion-toggle&quot; data-parent=&quot;#accordion&quot; data-toggle=&quot;collapse&quot; href=&quot;#collapseOne&quot;&gt;Collapsible Group Item #1 &lt;/a&gt;&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-collapse collapse in&quot; id=&quot;collapseOne&quot;&gt;\r\n&lt;div class=&quot;panel-body&quot;&gt;Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;\r\n&lt;h3 class=&quot;panel-title&quot;&gt;&lt;a class=&quot;accordion-toggle&quot; data-parent=&quot;#accordion&quot; data-toggle=&quot;collapse&quot; href=&quot;#collapseTwo&quot;&gt;Collapsible Group Item #2 &lt;/a&gt;&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-collapse collapse&quot; id=&quot;collapseTwo&quot;&gt;\r\n&lt;div class=&quot;panel-body&quot;&gt;Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;\r\n&lt;h3 class=&quot;panel-title&quot;&gt;&lt;a class=&quot;accordion-toggle&quot; data-parent=&quot;#accordion&quot; data-toggle=&quot;collapse&quot; href=&quot;#collapseThree&quot;&gt;Collapsible Group Item #3 &lt;/a&gt;&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-collapse collapse&quot; id=&quot;collapseThree&quot;&gt;\r\n&lt;div class=&quot;panel-body&quot;&gt;Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel panel-default&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;Carousel&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;div class=&quot;carousel slide bs-docs-carousel-example&quot; id=&quot;carousel-example-generic&quot;&gt;\r\n&lt;ol class=&quot;carousel-indicators&quot;&gt;\r\n	&lt;li class=&quot;active&quot; data-slide-to=&quot;0&quot; data-target=&quot;#carousel-example-generic&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li data-slide-to=&quot;1&quot; data-target=&quot;#carousel-example-generic&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li data-slide-to=&quot;2&quot; data-target=&quot;#carousel-example-generic&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;div class=&quot;carousel-inner&quot;&gt;\r\n&lt;div class=&quot;item&quot;&gt;&lt;img alt=&quot;&quot; class=&quot;img-responsive&quot; src=&quot;http://placekitten.com/1170/360&quot; /&gt;\r\n&lt;div class=&quot;carousel-caption&quot;&gt;\r\n&lt;h3&gt;First slide label&lt;/h3&gt;\r\n\r\n&lt;p&gt;Nulla vitae elit libero, a pharetra augue mollis interdum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;item active&quot;&gt;&lt;img alt=&quot;&quot; class=&quot;img-responsive&quot; src=&quot;http://placekitten.com/1170/360&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;item&quot;&gt;&lt;img alt=&quot;&quot; class=&quot;img-responsive&quot; src=&quot;http://placekitten.com/1170/360&quot; /&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n          &lt;div class=&quot;col-lg-12&quot;&gt;\r\n            &lt;h2&gt;Wells&lt;/h2&gt;\r\n          &lt;/div&gt;\r\n        &lt;/div&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n          &lt;div class=&quot;col-lg-4&quot;&gt;\r\n            &lt;div class=&quot;bs-component&quot;&gt;\r\n              &lt;div class=&quot;well&quot;&gt;\r\n                Look, I\'m in a well!\r\n              &lt;/div&gt;\r\n            &lt;/div&gt;\r\n          &lt;/div&gt;\r\n          &lt;div class=&quot;col-lg-4&quot;&gt;\r\n            &lt;div class=&quot;bs-component&quot;&gt;\r\n              &lt;div class=&quot;well well-sm&quot;&gt;\r\n                Look, I\'m in a small well!\r\n              &lt;/div&gt;\r\n            &lt;/div&gt;\r\n          &lt;/div&gt;\r\n          &lt;div class=&quot;col-lg-4&quot;&gt;\r\n            &lt;div class=&quot;bs-component&quot;&gt;\r\n              &lt;div class=&quot;well well-lg&quot;&gt;\r\n                Look, I\'m in a large well!\r\n              &lt;/div&gt;\r\n            &lt;/div&gt;\r\n          &lt;/div&gt;\r\n        &lt;/div&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n          &lt;div class=&quot;col-lg-12&quot;&gt;\r\n\r\n            &lt;ul class=&quot;list-unstyled&quot;&gt;\r\n              &lt;li class=&quot;pull-right&quot;&gt;&lt;a href=&quot;#top&quot;&gt;Back to top&lt;/a&gt;&lt;/li&gt;\r\n              &lt;li&gt;&lt;a onclick=&quot;pageTracker._link(this.href); return false;&quot; href=&quot;http://news.bootswatch.com&quot;&gt;Blog&lt;/a&gt;&lt;/li&gt;\r\n              &lt;li&gt;&lt;a href=&quot;http://feeds.feedburner.com/bootswatch&quot;&gt;RSS&lt;/a&gt;&lt;/li&gt;\r\n              &lt;li&gt;&lt;a href=&quot;https://twitter.com/thomashpark&quot;&gt;Twitter&lt;/a&gt;&lt;/li&gt;\r\n              &lt;li&gt;&lt;a href=&quot;https://github.com/thomaspark/bootswatch/&quot;&gt;GitHub&lt;/a&gt;&lt;/li&gt;\r\n              &lt;li&gt;&lt;a href=&quot;../help/#api&quot;&gt;API&lt;/a&gt;&lt;/li&gt;\r\n              &lt;li&gt;&lt;a href=&quot;https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;amp;hosted_button_id=F22JEM3Q78JC2&quot;&gt;Donate&lt;/a&gt;&lt;/li&gt;\r\n            &lt;/ul&gt;\r\n            &lt;p&gt;Made by &lt;a rel=&quot;nofollow&quot; href=&quot;http://thomaspark.me&quot;&gt;Thomas Park&lt;/a&gt;. Contact him at &lt;a href=&quot;mailto:thomas@bootswatch.com&quot;&gt;thomas@bootswatch.com&lt;/a&gt;.&lt;/p&gt;\r\n            &lt;p&gt;Code released under the &lt;a href=&quot;https://github.com/thomaspark/bootswatch/blob/gh-pages/LICENSE&quot;&gt;MIT License&lt;/a&gt;.&lt;/p&gt;\r\n            &lt;p&gt;Based on &lt;a rel=&quot;nofollow&quot; href=&quot;http://getbootstrap.com&quot;&gt;Bootstrap&lt;/a&gt;. Icons from &lt;a rel=&quot;nofollow&quot; href=&quot;http://fortawesome.github.io/Font-Awesome/&quot;&gt;Font Awesome&lt;/a&gt;. Web fonts from &lt;a rel=&quot;nofollow&quot; href=&quot;http://www.google.com/webfonts&quot;&gt;Google&lt;/a&gt;.&lt;/p&gt;\r\n\r\n          &lt;/div&gt;\r\n        &lt;/div&gt;\r\n&lt;/section&gt;\r\n'),(4,6,'About Us','&lt;div id=&quot;lipsum&quot;&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices quam ut nunc pellentesque, in vulputate ante convallis. Nam a augue eget felis interdum pellentesque. Donec id turpis ligula. Nullam faucibus iaculis nulla, quis aliquam magna finibus in. Sed sollicitudin aliquet maximus. Ut dapibus hendrerit consequat. Aenean non ante libero.&lt;/p&gt;\r\n\r\n&lt;p&gt;Praesent lacinia placerat eros, vitae eleifend lorem pharetra et. Etiam et nunc molestie, suscipit enim sit amet, congue lectus. Suspendisse non nisi a lectus tristique pharetra sit amet nec eros. Nulla sit amet arcu ac elit tristique sagittis. Vestibulum consectetur quam ut tellus maximus gravida. Donec tempor tristique imperdiet. Mauris porttitor auctor urna, eu porttitor sem imperdiet vitae. Vivamus sit amet tincidunt libero, elementum rhoncus nisl. Maecenas et ligula velit. Aliquam sollicitudin diam vitae rhoncus cursus.&lt;/p&gt;\r\n\r\n&lt;p&gt;Phasellus tempor, libero vitae lobortis bibendum, ante dui euismod arcu, quis ullamcorper odio purus eu risus. Nunc eu mollis velit. Nunc nec justo nec lectus auctor hendrerit. Proin eu vehicula mauris, sit amet consequat augue. Maecenas mollis lacinia tellus ac faucibus. Praesent ut dolor lacinia, tempus lorem sit amet, placerat neque. Vivamus iaculis mattis ullamcorper. Donec ut quam vitae lorem ultrices aliquet.&lt;/p&gt;\r\n\r\n&lt;p&gt;Aenean ac purus nec purus interdum facilisis. Fusce bibendum in erat quis blandit. Sed id lacus urna. Phasellus ac erat ultrices, semper est et, elementum purus. Ut lorem felis, mattis nec iaculis vel, porttitor id tortor. Donec eget tristique nunc. Morbi egestas luctus felis. Vivamus ultrices ex sit amet arcu tincidunt feugiat. Vivamus non ullamcorper ligula. Curabitur rutrum augue a sollicitudin auctor. Aliquam vitae risus quis nunc facilisis blandit. Suspendisse risus sem, condimentum quis nunc vel, congue accumsan neque. Suspendisse eget posuere lacus. Aliquam vitae justo nec leo bibendum tincidunt sit amet in libero. Praesent sed tempor lorem.&lt;/p&gt;\r\n\r\n&lt;p&gt;Integer efficitur est vitae mi feugiat euismod. In tristique enim sed purus aliquam, eget fringilla tellus auctor. Curabitur dictum tempor interdum. Phasellus ut velit eu ipsum rutrum commodo. Donec facilisis pretium semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In in arcu lobortis nisi finibus iaculis. Vestibulum tincidunt ante elit, nec rutrum sem tempus nec. Proin placerat in velit at consectetur. Quisque tristique tortor eu ligula imperdiet, sit amet sollicitudin sapien mollis.&lt;/p&gt;\r\n&lt;/div&gt;\r\n');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES (3,0),(4,0),(5,0),(6,0),(7,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES (6,'Español','es','es_ES.UTF-8,es_ES,es-es,es_es,español','mx.png','spanish','spanish',2,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Pav Blog'),(13,'Specials'),(14,'Search'),(15,'Pavdeal'),(16,'Typo');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES (30,6,0,'account'),(17,10,0,'affiliate/'),(29,3,0,'product/category'),(26,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(22,5,0,'product/manufacturer'),(23,7,0,'checkout/'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(33,12,0,'pavblog/'),(35,13,0,'product/special'),(36,14,0,'product/search'),(38,15,0,'pavdeals/deals');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES (1,6,'Centimeter','cm'),(2,6,'Millimeter','mm'),(3,6,'Inch','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES (5,'HTC','data/demo/htc_logo.jpg',0),(6,'Palm','data/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','data/demo/hp_logo.jpg',0),(8,'Apple','data/demo/apple_logo.jpg',0),(9,'Canon','data/demo/canon_logo.jpg',0),(10,'Sony','data/demo/sony_logo.jpg',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_megamenu`
--

DROP TABLE IF EXISTS `oc_megamenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_megamenu` (
  `megamenu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  PRIMARY KEY (`megamenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_megamenu`
--

LOCK TABLES `oc_megamenu` WRITE;
/*!40000 ALTER TABLE `oc_megamenu` DISABLE KEYS */;
INSERT INTO `oc_megamenu` (`megamenu_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`, `widget_id`) VALUES (1,'',0,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,0,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,-5,34,47,0),(3,'',4,0,NULL,NULL,NULL,'','134','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(4,'',41,0,NULL,NULL,NULL,'','128','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','pav-parrent',NULL,'','',0,0,0,1),(5,'',86,0,NULL,NULL,NULL,'','121','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','aligned-left',NULL,'','',0,0,0,1),(25,'',4,0,NULL,NULL,NULL,'','129','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(26,'',25,0,NULL,NULL,NULL,'','130','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(29,'',25,0,NULL,NULL,NULL,'','131','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(30,'',86,0,NULL,NULL,NULL,'','122','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(31,'',35,0,NULL,NULL,NULL,'','127','1','category',0,1,'menu',0,1,0,4,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(32,'',25,0,NULL,NULL,NULL,'','132','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(34,'',4,0,NULL,NULL,NULL,'','133','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(35,'',41,0,NULL,NULL,NULL,'','123','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(38,'',86,0,NULL,NULL,NULL,'','120','1','category',0,1,'menu',0,1,0,1,0,'index.php?route=pavblog/blogs',NULL,0,'top','',NULL,'','',0,0,0,1),(40,'',1,0,NULL,NULL,NULL,'','','1','url',0,1,'menu',0,1,0,1,0,'?route=common/home',NULL,0,'top','home',NULL,'','',0,0,0,1),(41,'',1,0,NULL,NULL,NULL,'','118','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(44,'',1,0,NULL,NULL,NULL,'','136','1','category',0,1,'menu',0,1,0,3,0,'index.php?route=information/contact',NULL,0,'top','',NULL,'','',0,0,0,1),(45,'',1,0,NULL,NULL,NULL,NULL,'25','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(46,'',1,0,NULL,NULL,NULL,NULL,'57','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(47,'',1,0,NULL,NULL,NULL,NULL,'34','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(48,'',1,0,NULL,NULL,NULL,NULL,'59','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(49,'',1,0,NULL,NULL,NULL,NULL,'17','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(50,'',1,0,NULL,NULL,NULL,NULL,'18','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(51,'',1,0,NULL,NULL,NULL,NULL,'20','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(52,'',1,0,NULL,NULL,NULL,NULL,'24','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(53,'',50,0,NULL,NULL,NULL,NULL,'46','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(54,'',50,0,NULL,NULL,NULL,NULL,'45','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(55,'',51,0,NULL,NULL,NULL,NULL,'27','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(56,'',51,0,NULL,NULL,NULL,NULL,'26','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(57,'',45,0,NULL,NULL,NULL,NULL,'32','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(58,'',45,0,NULL,NULL,NULL,NULL,'28','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(59,'',45,0,NULL,NULL,NULL,NULL,'29','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(60,'',45,0,NULL,NULL,NULL,NULL,'30','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(61,'',45,0,NULL,NULL,NULL,NULL,'31','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(62,'',58,0,NULL,NULL,NULL,NULL,'36','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(63,'',58,0,NULL,NULL,NULL,NULL,'35','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(64,'',47,0,NULL,NULL,NULL,NULL,'50','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(65,'',47,0,NULL,NULL,NULL,NULL,'51','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(66,'',47,0,NULL,NULL,NULL,NULL,'52','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(67,'',47,0,NULL,NULL,NULL,NULL,'53','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(68,'',47,0,NULL,NULL,NULL,NULL,'54','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(69,'',47,0,NULL,NULL,NULL,NULL,'55','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(70,'',47,0,NULL,NULL,NULL,NULL,'56','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(71,'',47,0,NULL,NULL,NULL,NULL,'49','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(72,'',47,0,NULL,NULL,NULL,NULL,'48','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(73,'',47,0,NULL,NULL,NULL,NULL,'47','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(74,'',47,0,NULL,NULL,NULL,NULL,'37','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(75,'',47,0,NULL,NULL,NULL,NULL,'38','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(76,'',47,0,NULL,NULL,NULL,NULL,'39','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(77,'',47,0,NULL,NULL,NULL,NULL,'40','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(78,'',47,0,NULL,NULL,NULL,NULL,'41','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(79,'',47,0,NULL,NULL,NULL,NULL,'42','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(80,'',47,0,NULL,NULL,NULL,NULL,'43','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(81,'',47,0,NULL,NULL,NULL,NULL,'44','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(82,'',66,0,NULL,NULL,NULL,NULL,'58','1','category',2,1,'menu',0,1,1,99,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1),(83,'',35,0,NULL,NULL,NULL,'','124','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(84,'',35,0,NULL,NULL,NULL,'','125','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(85,'',35,0,NULL,NULL,NULL,'','126','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(86,'',41,0,NULL,NULL,NULL,'','119','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(87,'',41,0,NULL,NULL,NULL,'','135','1','category',0,1,'menu',0,1,0,4,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(88,'',1,0,NULL,NULL,NULL,'','145','1','category',0,1,'menu',0,1,0,4,0,'',NULL,0,'top','diversion_entretenimiento',NULL,'','',0,0,0,1),(89,'',44,0,NULL,NULL,NULL,'','137','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(90,'',44,0,NULL,NULL,NULL,'','138','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(91,'',44,0,NULL,NULL,NULL,'','139','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(92,'',44,0,NULL,NULL,NULL,'','140','1','category',0,1,'menu',0,1,0,4,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(93,'',44,0,NULL,NULL,NULL,'','141','1','category',0,1,'menu',0,1,0,5,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(94,'',44,0,NULL,NULL,NULL,'','142','1','category',0,1,'menu',0,1,0,6,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(95,'',44,0,NULL,NULL,NULL,'','143','1','category',0,1,'menu',0,1,0,7,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(96,'',88,0,NULL,NULL,NULL,'','147','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(97,'',88,0,NULL,NULL,NULL,'','154','1','category',0,1,'menu',0,1,0,4,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(98,'',88,0,NULL,NULL,NULL,'','149','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(99,'',88,0,NULL,NULL,NULL,'','158','1','category',0,1,'menu',0,1,0,5,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(100,'',96,0,NULL,NULL,NULL,'','148','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(101,'',97,0,NULL,NULL,NULL,'','155','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(102,'',97,0,NULL,NULL,NULL,'','156','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(103,'',98,0,NULL,NULL,NULL,'','150','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(104,'',98,0,NULL,NULL,NULL,'','151','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(105,'',98,0,NULL,NULL,NULL,'','152','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(106,'',98,0,NULL,NULL,NULL,'','153','1','category',0,1,'menu',0,1,0,4,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(108,'',99,0,NULL,NULL,NULL,'','159','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(109,'',99,0,NULL,NULL,NULL,'','160','1','category',0,1,'menu',0,1,0,4,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(112,'',44,0,NULL,NULL,NULL,'','144','1','category',0,1,'menu',0,1,0,8,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(113,'',88,0,NULL,NULL,NULL,'','146','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(114,'',97,0,NULL,NULL,NULL,'','157','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(115,'',99,0,NULL,NULL,NULL,'','161','1','category',0,1,'menu',0,1,0,5,0,'',NULL,0,'top','',NULL,'','',0,0,0,1),(116,'',99,0,NULL,NULL,NULL,'','162','1','category',0,1,'menu',0,1,0,1,0,'flore',NULL,0,'top','',NULL,'','',0,0,0,1),(117,'',99,0,NULL,NULL,NULL,'','158','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','',0,0,0,1);
/*!40000 ALTER TABLE `oc_megamenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_megamenu_description`
--

DROP TABLE IF EXISTS `oc_megamenu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`megamenu_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_megamenu_description`
--

LOCK TABLES `oc_megamenu_description` WRITE;
/*!40000 ALTER TABLE `oc_megamenu_description` DISABLE KEYS */;
INSERT INTO `oc_megamenu_description` (`megamenu_id`, `language_id`, `title`, `description`) VALUES (94,6,'Salud',''),(4,6,'Ferretería y Construcción',''),(29,6,'Eléctrica',''),(3,6,'Materiales',''),(90,6,' Limpieza y Jarcería',''),(34,6,'Equipo',''),(91,6,'Decoración',''),(35,6,'Tlapalería',''),(92,6,'Ropa y Calzado',''),(32,6,'Carpintería',''),(31,6,'Tornillería',''),(30,6,'Accesorios de cómputo',''),(98,6,'Juegos',''),(89,6,'Despensa',''),(25,6,'Herramienta',''),(26,6,'Construcción',''),(93,6,'Higiene y Belleza',''),(41,6,'Trabajo',''),(88,6,'Diversión y Entretenimiento',''),(5,6,'Artículos personales',''),(45,1,'Components',''),(45,2,'Components',''),(45,3,'Components',''),(45,4,'Components',''),(45,5,'Components',''),(46,1,'Tablets',''),(46,2,'Tablets',''),(46,3,'Tablets',''),(46,4,'Tablets',''),(46,5,'Tablets',''),(47,1,'MP3 Players',''),(47,2,'MP3 Players',''),(47,3,'MP3 Players',''),(47,4,'MP3 Players',''),(47,5,'MP3 Players',''),(48,1,'Camera',''),(48,2,'Camera',''),(48,3,'Camera',''),(48,4,'Camera',''),(48,5,'Camera',''),(49,1,'Software',''),(49,2,'Software',''),(49,3,'Software',''),(49,4,'Software',''),(49,5,'Software',''),(50,1,'Laptops &amp; Notebooks',''),(50,2,'Laptops &amp; Notebooks',''),(50,3,'Laptops &amp; Notebooks',''),(50,4,'Laptops &amp; Notebooks',''),(50,5,'Laptops &amp; Notebooks',''),(51,1,'Desktops',''),(51,2,'Desktops',''),(51,3,'Desktops',''),(51,4,'Desktops',''),(51,5,'Desktops',''),(52,1,'Phones &amp; PDAs',''),(52,2,'Phones &amp; PDAs',''),(52,3,'Phones &amp; PDAs',''),(52,4,'Phones &amp; PDAs',''),(52,5,'Phones &amp; PDAs',''),(53,1,'Macs',''),(53,2,'Macs',''),(53,3,'Macs',''),(53,4,'Macs',''),(53,5,'Macs',''),(54,1,'Windows',''),(54,2,'Windows',''),(54,3,'Windows',''),(54,4,'Windows',''),(54,5,'Windows',''),(55,1,'Mac',''),(55,2,'Mac',''),(55,3,'Mac',''),(55,4,'Mac',''),(55,5,'Mac',''),(56,1,'PC',''),(56,2,'PC',''),(56,3,'PC',''),(56,4,'PC',''),(56,5,'PC',''),(57,1,'Web Cameras',''),(57,2,'Web Cameras',''),(57,3,'Web Cameras',''),(57,4,'Web Cameras',''),(57,5,'Web Cameras',''),(58,1,'Monitors',''),(58,2,'Monitors',''),(58,3,'Monitors',''),(58,4,'Monitors',''),(58,5,'Monitors',''),(59,1,'Mice and Trackballs',''),(59,2,'Mice and Trackballs',''),(59,3,'Mice and Trackballs',''),(59,4,'Mice and Trackballs',''),(59,5,'Mice and Trackballs',''),(60,1,'Printers',''),(60,2,'Printers',''),(60,3,'Printers',''),(60,4,'Printers',''),(60,5,'Printers',''),(61,1,'Scanners',''),(61,2,'Scanners',''),(61,3,'Scanners',''),(61,4,'Scanners',''),(61,5,'Scanners',''),(62,1,'test 2',''),(62,2,'test 2',''),(62,3,'test 2',''),(62,4,'test 2',''),(62,5,'test 2',''),(63,1,'test 1',''),(63,2,'test 1',''),(63,3,'test 1',''),(63,4,'test 1',''),(63,5,'test 1',''),(64,1,'test 18',''),(64,2,'test 18',''),(64,3,'test 18',''),(64,4,'test 18',''),(64,5,'test 18',''),(65,1,'test 19',''),(65,2,'test 19',''),(65,3,'test 19',''),(65,4,'test 19',''),(65,5,'test 19',''),(66,1,'test 20',''),(66,2,'test 20',''),(66,3,'test 20',''),(66,4,'test 20',''),(66,5,'test 20',''),(67,1,'test 21',''),(67,2,'test 21',''),(67,3,'test 21',''),(67,4,'test 21',''),(67,5,'test 21',''),(68,1,'test 22',''),(68,2,'test 22',''),(68,3,'test 22',''),(68,4,'test 22',''),(68,5,'test 22',''),(69,1,'test 23',''),(69,2,'test 23',''),(69,3,'test 23',''),(69,4,'test 23',''),(69,5,'test 23',''),(70,1,'test 24',''),(70,2,'test 24',''),(70,3,'test 24',''),(70,4,'test 24',''),(70,5,'test 24',''),(71,1,'test 17',''),(71,2,'test 17',''),(71,3,'test 17',''),(71,4,'test 17',''),(71,5,'test 17',''),(72,1,'test 16',''),(72,2,'test 16',''),(72,3,'test 16',''),(72,4,'test 16',''),(72,5,'test 16',''),(73,1,'test 15',''),(73,2,'test 15',''),(73,3,'test 15',''),(73,4,'test 15',''),(73,5,'test 15',''),(74,1,'test 5',''),(74,2,'test 5',''),(74,3,'test 5',''),(74,4,'test 5',''),(74,5,'test 5',''),(75,1,'test 4',''),(75,2,'test 4',''),(75,3,'test 4',''),(75,4,'test 4',''),(75,5,'test 4',''),(76,1,'test 6',''),(76,2,'test 6',''),(76,3,'test 6',''),(76,4,'test 6',''),(76,5,'test 6',''),(77,1,'test 7',''),(77,2,'test 7',''),(77,3,'test 7',''),(77,4,'test 7',''),(77,5,'test 7',''),(78,1,'test 8',''),(78,2,'test 8',''),(78,3,'test 8',''),(78,4,'test 8',''),(78,5,'test 8',''),(79,1,'test 9',''),(79,2,'test 9',''),(79,3,'test 9',''),(79,4,'test 9',''),(79,5,'test 9',''),(80,1,'test 11',''),(80,2,'test 11',''),(80,3,'test 11',''),(80,4,'test 11',''),(80,5,'test 11',''),(81,1,'test 12',''),(81,2,'test 12',''),(81,3,'test 12',''),(81,4,'test 12',''),(81,5,'test 12',''),(82,1,'test 25',''),(82,2,'test 25',''),(82,3,'test 25',''),(82,4,'test 25',''),(82,5,'test 25',''),(83,6,'Pintura',''),(96,6,'Viajes',''),(95,6,'Accesorios',''),(84,6,'Electricidad',''),(38,6,'Artículos de oficina',''),(85,6,'Plomería',''),(87,6,'Papelería',''),(40,1,'Home',''),(44,6,'Hogar',''),(86,6,'Oficina',''),(40,6,'inicio',''),(97,6,'Fiesta',''),(99,6,'Romance',''),(100,6,'Accesorios',''),(101,6,'Bebidas',''),(102,6,'Disfraces',''),(103,6,'Deportes',''),(104,6,'De mesa',''),(105,6,'Juguetes',''),(106,6,'Videojuegos',''),(108,6,'Preservativos',''),(109,6,'Ropa',''),(117,6,'Chocolates',''),(116,6,'Flores',''),(112,6,'Mascotas',''),(113,6,'Libros y Revistas',''),(114,6,'Accesorios',''),(115,6,'Artículos ','');
/*!40000 ALTER TABLE `oc_megamenu_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_megamenu_widgets`
--

DROP TABLE IF EXISTS `oc_megamenu_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_megamenu_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_megamenu_widgets`
--

LOCK TABLES `oc_megamenu_widgets` WRITE;
/*!40000 ALTER TABLE `oc_megamenu_widgets` DISABLE KEYS */;
INSERT INTO `oc_megamenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES (1,'Video Widget','video_code','a:1:{s:10:\"video_code\";s:186:\"&lt;div class=&quot;video-responsive&quot;&gt;\r\n&lt;iframe src=&quot;//player.vimeo.com/video/37075854&quot; width=&quot;500&quot; height=&quot;281&quot;&gt;&lt;/iframe&gt;\r\n&lt;/div&gt;\";}',0),(2,'Last Tweets','html','a:1:{s:4:\"html\";a:2:{i:1;s:423:\"&lt;p class=&quot;title&quot;&gt;MAKES UP PHOTOSHOP&lt;/p&gt;\r\n&lt;p&gt;\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident at optio reiciendis culpa reprehenderit\r\n&lt;/p&gt; \r\n&lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;\r\n&lt;p&gt;\r\n	Voluptates, consectetur soluta laborum maiores alias autem velit deserunt quas quis repellendus beatae veniam omnis sequi expedita nobis debitis\r\n&lt;/p&gt;\";i:2;s:617:\"&lt;p class=&quot;title&quot;&gt;تشكل فوتوشوب&lt;/p&gt;\r\n&lt;p&gt;\r\nأم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،\r\n&lt;/p&gt; \r\n&lt;p&gt;تشكل فوتوشوب&lt;/p&gt;\r\n&lt;p&gt;\r\nأم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،\r\n&lt;/p&gt;\";}}',0),(3,'Products Latest','product_list','a:4:{s:9:\"list_type\";s:6:\"newest\";s:5:\"limit\";s:1:\"3\";s:11:\"image_width\";s:3:\"273\";s:12:\"image_height\";s:3:\"273\";}',0),(4,'Products In Cat 20','product_category','a:4:{s:11:\"category_id\";s:2:\"20\";s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:3:\"273\";s:12:\"image_height\";s:3:\"273\";}',0),(5,'Manufactures','banner','a:4:{s:8:\"group_id\";s:1:\"8\";s:11:\"image_width\";s:3:\"170\";s:12:\"image_height\";s:2:\"58\";s:5:\"limit\";s:2:\"16\";}',0),(6,'PavoThemes Feed','feed','a:1:{s:8:\"feed_url\";s:55:\"http://www.pavothemes.com/opencart-themes.feed?type=rss\";}',0),(7,'Nail','html','a:1:{s:4:\"html\";a:2:{i:1;s:895:\"&lt;h4 class=&quot;title&quot;&gt;Nail&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_43&quot;&gt;Nail Brushes&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_49&quot;&gt;Nail Care Products&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_47&quot;&gt;Nail Decals&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_50&quot;&gt;Nail Decorations&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_44&quot;&gt;Nail Polish&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_48&quot;&gt;Nail Repair&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;\";i:2;s:985:\"&lt;h4 class=&quot;title&quot;&gt;مسمار&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_43&quot;&gt;فرش الأظافر&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_49&quot;&gt;منتجات العناية بالأظافر&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_47&quot;&gt;الشارات مسمار&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_50&quot;&gt;زينة الأظافر&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_44&quot;&gt;مسمار البولندية&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_48&quot;&gt;إصلاح مسمار&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;\";}}',0),(8,'Hair care','html','a:1:{s:4:\"html\";a:2:{i:1;s:746:\"&lt;h4 class=&quot;title&quot;&gt;Skin Care&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_63&quot;&gt;Shampoo&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_28&quot;&gt;Conditioner&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_29&quot;&gt;Hair color&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_31&quot;&gt;Hair Loss&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_32&quot;&gt;Styling&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;\";i:2;s:796:\"&lt;h4 class=&quot;title&quot;&gt;العناية بالبشرة&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_63&quot;&gt;الشامبو&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_28&quot;&gt;مكيف&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_29&quot;&gt;لون الشعر&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_31&quot;&gt;تساقط الشعر&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_32&quot;&gt;التصميم&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;\";}}',0),(9,'Skin Care','html','a:1:{s:4:\"html\";a:2:{i:1;s:723:\"&lt;h4 class=&quot;title&quot;&gt;Skin Care&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59_74&quot;&gt;Body&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59_72&quot;&gt;Eyes&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59_75&quot;&gt;Face&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59_73&quot;&gt;Lips&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59_71&quot;&gt;Tools&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;\";i:2;s:768:\"&lt;h4 class=&quot;title&quot;&gt;العناية بالبشرة&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59_74&quot;&gt;الجسم&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59_72&quot;&gt;عيون&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59_75&quot;&gt;وجه&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59_73&quot;&gt;الشفاه&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59_71&quot;&gt;أدوات&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;\";}}',0),(10,'Baner','html','a:1:{s:4:\"html\";a:2:{i:1;s:111:\"&lt;img class=&quot;img-responsive&quot; src=&quot;image/data/banner/menu-banner.jpg&quot; alt=&quot;&quot;&gt;\";i:2;s:111:\"&lt;img class=&quot;img-responsive&quot; src=&quot;image/data/banner/menu-banner.jpg&quot; alt=&quot;&quot;&gt;\";}}',0),(11,'Spa','html','a:1:{s:4:\"html\";a:2:{i:1;s:732:\"&lt;h4 class=&quot;title&quot;&gt;Spa&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_69&quot;&gt;Body &lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_65&quot;&gt;Cosmetics&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_67&quot;&gt;Face&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_64&quot;&gt;Hot Spa&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_70&quot;&gt;Spa Sciences&lt;/a&gt;\r\n	&lt;/li&gt;	\r\n&lt;/ul&gt;\";i:2;s:783:\"&lt;h4 class=&quot;title&quot;&gt;سبا&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_69&quot;&gt;الجسم&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_65&quot;&gt;مستحضرات التجميل&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_67&quot;&gt;وجه&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_64&quot;&gt;الساخن سبا&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_70&quot;&gt;العلوم سبا&lt;/a&gt;\r\n	&lt;/li&gt;	\r\n&lt;/ul&gt;\";}}',0),(12,'Html custom','html','a:1:{s:4:\"html\";a:2:{i:1;s:383:\"&lt;br&gt;\r\n&lt;h5&gt;Html custom&lt;/h5&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;\";i:2;s:383:\"&lt;br&gt;\r\n&lt;h5&gt;Html custom&lt;/h5&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;\";}}',0),(15,'Lastest Blog','html','a:1:{s:4:\"html\";a:2:{i:1;s:1964:\"&lt;div class=&quot;blog-body&quot;&gt;\r\n                                                &lt;div class=&quot;image&quot;&gt;\r\n                            &lt;img class=&quot;img-responsive&quot; alt=&quot;Fashion Brunette Girl&quot; title=&quot;Fashion Brunette Girl&quot; src=&quot;image/data/pavblog/blog1.jpg&quot;&gt;\r\n                        &lt;/div&gt;\r\n                        \r\n                        &lt;div class=&quot;create-info&quot;&gt;\r\n                            &lt;div class=&quot;inner&quot;&gt;\r\n                                &lt;div class=&quot;blog-header&quot;&gt;\r\n                                    &lt;h4 class=&quot;blog-title&quot;&gt;\r\n                                        &lt;a title=&quot;Fashion Brunette Girl&quot; href=&quot;http://localhost/dev/oc/lexus_queenbeauty/index.php?route=pavblog/blog&amp;amp;id=12&quot;&gt;Fashion Brunette Girl&lt;/a&gt;\r\n                                    &lt;/h4&gt;\r\n                                &lt;/div&gt;\r\n                                &lt;div class=&quot;create-date&quot;&gt;\r\n                                    &lt;div class=&quot;created&quot;&gt;\r\n                                        &lt;span class=&quot;day&quot;&gt;25&lt;/span&gt;\r\n                                        &lt;span class=&quot;month&quot;&gt;Dec&lt;/span&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                                &lt;div class=&quot;description&quot;&gt;\r\n                                                                        Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsumt....\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                        &lt;/div&gt;\r\n                    &lt;/div&gt;\";i:2;s:1964:\"&lt;div class=&quot;blog-body&quot;&gt;\r\n                                                &lt;div class=&quot;image&quot;&gt;\r\n                            &lt;img class=&quot;img-responsive&quot; alt=&quot;Fashion Brunette Girl&quot; title=&quot;Fashion Brunette Girl&quot; src=&quot;image/data/pavblog/blog1.jpg&quot;&gt;\r\n                        &lt;/div&gt;\r\n                        \r\n                        &lt;div class=&quot;create-info&quot;&gt;\r\n                            &lt;div class=&quot;inner&quot;&gt;\r\n                                &lt;div class=&quot;blog-header&quot;&gt;\r\n                                    &lt;h4 class=&quot;blog-title&quot;&gt;\r\n                                        &lt;a title=&quot;Fashion Brunette Girl&quot; href=&quot;http://localhost/dev/oc/lexus_queenbeauty/index.php?route=pavblog/blog&amp;amp;id=12&quot;&gt;Fashion Brunette Girl&lt;/a&gt;\r\n                                    &lt;/h4&gt;\r\n                                &lt;/div&gt;\r\n                                &lt;div class=&quot;create-date&quot;&gt;\r\n                                    &lt;div class=&quot;created&quot;&gt;\r\n                                        &lt;span class=&quot;day&quot;&gt;25&lt;/span&gt;\r\n                                        &lt;span class=&quot;month&quot;&gt;Dec&lt;/span&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                                &lt;div class=&quot;description&quot;&gt;\r\n                                                                        Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsumt....\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                        &lt;/div&gt;\r\n                    &lt;/div&gt;\";}}',0),(14,'banner-menu','image','a:3:{s:10:\"image_path\";s:27:\"data/banner/menu-banner.jpg\";s:11:\"image_width\";s:3:\"550\";s:12:\"image_height\";s:3:\"225\";}',0),(16,'Menu-blog','html','a:1:{s:4:\"html\";a:2:{i:1;s:628:\"&lt;h4 class=&quot;title&quot;&gt;Blog&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=pavblog/category&amp;amp;id=22&quot;&gt;Category Blog&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n                &lt;a href=&quot;index.php?route=pavblog/blogs&quot;&gt;Archives Blog&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=pavblog/blog&amp;amp;id=10#comment11&quot;&gt;Single Blog&lt;/a&gt;\r\n	&lt;/li&gt;\r\n        &lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;Typo&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	\r\n&lt;/ul&gt;\";i:2;s:675:\"&lt;h4 class=&quot;title&quot;&gt;بلوق&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=pavblog/category&amp;amp;id=22&quot;&gt;فئة مدونة&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n                &lt;a href=&quot;index.php?route=pavblog/blogs&quot;&gt;أرشيف مدونة&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=pavblog/blog&amp;amp;id=10#comment11&quot;&gt;مدونة واحدة&lt;/a&gt;\r\n	&lt;/li&gt;\r\n        &lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;الخطأ المطبعي&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	\r\n&lt;/ul&gt;\";}}',0),(18,'Account','html','a:1:{s:4:\"html\";a:2:{i:1;s:991:\"&lt;h4 class=&quot;title&quot;&gt;Account&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/login&quot;&gt;Login&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;		\r\n		&lt;a href=&quot;index.php?route=account/register&quot;&gt;Create account&lt;/a&gt;\r\n	&lt;/li&gt;	\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/wishlist&quot;&gt;Wish List&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/account&quot;&gt;My Account&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=checkout/cart&quot;&gt;Shopping Cart&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=checkout/checkout&quot;&gt;Checkout&lt;/a&gt;\r\n	&lt;/li&gt;\r\n         &lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/order&quot;&gt;Order History&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/transaction&quot;&gt;Transaction&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\";i:2;s:1054:\"&lt;h4 class=&quot;title&quot;&gt;الحساب&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/login&quot;&gt;تسجيل الدخول&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;		\r\n		&lt;a href=&quot;index.php?route=account/register&quot;&gt;انشاء حساب&lt;/a&gt;\r\n	&lt;/li&gt;	\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/wishlist&quot;&gt;قائمة المفضلة&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/account&quot;&gt;حسابي&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=checkout/cart&quot;&gt;سلة التسوق&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=checkout/checkout&quot;&gt;الخروج&lt;/a&gt;\r\n	&lt;/li&gt;\r\n         &lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/order&quot;&gt;أجل التاريخ&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/transaction&quot;&gt;الصفقة&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\";}}',0),(17,'Html custom2','html','a:1:{s:4:\"html\";a:2:{i:1;s:1382:\"&lt;h5&gt;Html custom&lt;/h5&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;\";i:2;s:1382:\"&lt;h5&gt;Html custom&lt;/h5&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;\";}}',0);
/*!40000 ALTER TABLE `oc_megamenu_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_openpay_customer`
--

DROP TABLE IF EXISTS `oc_openpay_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_openpay_customer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `openpay_customer_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_openpay_customer`
--

LOCK TABLES `oc_openpay_customer` WRITE;
/*!40000 ALTER TABLE `oc_openpay_customer` DISABLE KEYS */;
INSERT INTO `oc_openpay_customer` (`id`, `customer_id`, `openpay_customer_id`, `date_added`) VALUES (1,5,'ahhukvukcvyiwzic9r5r','2018-02-25 05:13:55');
/*!40000 ALTER TABLE `oc_openpay_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_openpay_order`
--

DROP TABLE IF EXISTS `oc_openpay_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_openpay_order` (
  `openpay_order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned DEFAULT NULL,
  `charge_ref` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `capture_status` tinyint(1) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`openpay_order_id`),
  KEY `charge_ref` (`charge_ref`,`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_openpay_order`
--

LOCK TABLES `oc_openpay_order` WRITE;
/*!40000 ALTER TABLE `oc_openpay_order` DISABLE KEYS */;
INSERT INTO `oc_openpay_order` (`openpay_order_id`, `order_id`, `charge_ref`, `date_added`, `date_modified`, `capture_status`, `description`, `total`, `currency_code`) VALUES (1,26,'trvvobgzes02kwavfgt9','2018-02-25 05:19:27','2018-02-25 05:19:27',15,'Order ID# 26',155,'MXN'),(2,27,'trkysrefbp1ppnrejxoq','2018-02-25 05:31:23','2018-02-25 05:31:23',15,'Order ID# 27',135,'MXN'),(3,28,'trk5batcu4nt71kftwkv','2018-02-25 05:33:49','2018-02-25 05:33:49',15,'Order ID# 28',45,'MXN');
/*!40000 ALTER TABLE `oc_openpay_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_openpay_transaction`
--

DROP TABLE IF EXISTS `oc_openpay_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_openpay_transaction` (
  `transaction_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_ref` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `amount` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `initiator` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `customer_ref` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `source_ref` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `plan_ref` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `subscription_ref` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `charge_ref` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `invoice_ref` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `refund_ref` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `event_ref` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_openpay_transaction`
--

LOCK TABLES `oc_openpay_transaction` WRITE;
/*!40000 ALTER TABLE `oc_openpay_transaction` DISABLE KEYS */;
INSERT INTO `oc_openpay_transaction` (`transaction_id`, `transaction_ref`, `type`, `date_added`, `amount`, `description`, `initiator`, `customer_ref`, `source_ref`, `plan_ref`, `subscription_ref`, `charge_ref`, `invoice_ref`, `refund_ref`, `event_ref`, `status`) VALUES (1,'','Customer creation','2018-02-25 05:13:55',0,'','Customer','ahhukvukcvyiwzic9r5r','','','','','','','',''),(2,'','Charge creation','2018-02-25 05:13:57',155,'','Customer','','','','','tr9ets3wfk3shwxyoxzv','','','','completed'),(3,'','Charge creation','2018-02-25 05:19:27',155,'','Customer','','','','','trvvobgzes02kwavfgt9','','','','completed'),(4,'','Charge creation','2018-02-25 05:31:23',135,'','Customer','','','','','trkysrefbp1ppnrejxoq','','','','completed'),(5,'','Charge creation','2018-02-25 05:33:49',45,'','Customer','','','','','trk5batcu4nt71kftwkv','','','','completed');
/*!40000 ALTER TABLE `oc_openpay_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES (1,'radio',2),(2,'checkbox',3),(4,'text',4),(5,'select',1),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',1),(12,'date',1);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES (1,6,'Radio'),(2,6,'Checkbox'),(4,6,'Text'),(6,6,'Textarea'),(8,6,'Date'),(7,6,'File'),(5,6,'Select'),(9,6,'Time'),(10,6,'Date &amp; Time'),(12,6,'Delivery Date'),(11,6,'Size');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES (43,6,1,'Large'),(32,6,1,'Small'),(45,6,2,'Checkbox 4'),(44,6,2,'Checkbox 3'),(31,6,1,'Medium'),(42,6,5,'Yellow'),(41,6,5,'Green'),(39,6,5,'Red'),(40,6,5,'Blue'),(23,6,2,'Checkbox 1'),(24,6,2,'Checkbox 2'),(48,6,11,'Large'),(47,6,11,'Medium'),(46,6,11,'Small');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_company_id`, `payment_tax_id`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES (9,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:25:00','2018-02-25 04:25:00'),(10,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:25:10','2018-02-25 04:25:10'),(11,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:28:54','2018-02-25 04:28:54'),(12,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:29:38','2018-02-25 04:29:38'),(13,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:30:00','2018-02-25 04:30:00'),(14,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:30:37','2018-02-25 04:30:37'),(15,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:31:47','2018-02-25 04:31:47'),(16,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:32:45','2018-02-25 04:32:45'),(17,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:34:47','2018-02-25 04:34:47'),(18,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:35:07','2018-02-25 04:35:07'),(19,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:36:07','2018-02-25 04:36:07'),(20,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:50:41','2018-02-25 04:50:41'),(21,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:55:38','2018-02-25 04:55:38'),(22,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 04:57:48','2018-02-25 04:57:48'),(23,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 05:09:42','2018-02-25 05:09:42'),(24,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 05:11:59','2018-02-25 05:11:59'),(25,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 05:13:46','2018-02-25 05:13:46'),(26,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',155.0000,0,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 05:19:16','2018-02-25 05:19:16'),(27,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',135.0000,15,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 05:30:59','2018-02-25 05:31:23'),(28,0,'INV-2013-00',0,'tlati.com','http://tlati.com/',5,1,'Jose de Jesus','ruiz','ing_jjruiz@hotmail.com','123456','','Jose de Jesus','ruiz','','','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Openpay Tarjetas CC','openpay_cards','Jose de Jesus','ruiz','','horacio 930','polanco','CDMX','11590','Mexico',138,'Distrito Federal',2153,'','Tarifa Fija de Envío','flat.flat','',45.0000,15,0,0.0000,6,1,'MXN',1.00000000,'201.102.58.135','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:58.0) Gecko/20100101 Firefox/58.0','en-US,en;q=0.5','2018-02-25 05:33:20','2018-02-25 05:33:49');
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_download`
--

DROP TABLE IF EXISTS `oc_order_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_download`
--

LOCK TABLES `oc_order_download` WRITE;
/*!40000 ALTER TABLE `oc_order_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_field`
--

DROP TABLE IF EXISTS `oc_order_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_field`
--

LOCK TABLES `oc_order_field` WRITE;
/*!40000 ALTER TABLE `oc_order_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_fraud`
--

DROP TABLE IF EXISTS `oc_order_fraud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_fraud`
--

LOCK TABLES `oc_order_fraud` WRITE;
/*!40000 ALTER TABLE `oc_order_fraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_fraud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES (9,27,15,1,'','2018-02-25 05:31:23'),(10,28,15,1,'','2018-02-25 05:33:49');
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES (20,9,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(21,10,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(22,11,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(23,12,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(24,13,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(25,14,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(26,15,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(27,16,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(28,17,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(29,18,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(30,19,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(31,20,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(32,21,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(33,22,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(34,23,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(35,24,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(36,25,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(37,26,76,'Lámpara','0001T',1,150.0000,150.0000,0.0000,0),(38,27,78,'Engrapadora','0003T',1,130.0000,130.0000,0.0000,0),(39,28,77,'Lapicero','0002T',1,40.0000,40.0000,0.0000,0);
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `profile_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `profile_reference` varchar(255) NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES (2,6,'Processing'),(3,6,'Shipped'),(7,6,'Canceled'),(5,6,'Complete'),(8,6,'Denied'),(9,6,'Canceled Reversal'),(10,6,'Failed'),(11,6,'Refunded'),(12,6,'Reversed'),(13,6,'Chargeback'),(1,6,'Pending'),(16,6,'Voided'),(15,6,'Processed'),(14,6,'Expired');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `text`, `value`, `sort_order`) VALUES (27,9,'sub_total','Sub-Total','$150.00',150.0000,1),(28,9,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(29,9,'total','Total','$155.00',155.0000,9),(30,10,'sub_total','Sub-Total','$150.00',150.0000,1),(31,10,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(32,10,'total','Total','$155.00',155.0000,9),(33,11,'sub_total','Sub-Total','$150.00',150.0000,1),(34,11,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(35,11,'total','Total','$155.00',155.0000,9),(36,12,'sub_total','Sub-Total','$150.00',150.0000,1),(37,12,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(38,12,'total','Total','$155.00',155.0000,9),(39,13,'sub_total','Sub-Total','$150.00',150.0000,1),(40,13,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(41,13,'total','Total','$155.00',155.0000,9),(42,14,'sub_total','Sub-Total','$150.00',150.0000,1),(43,14,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(44,14,'total','Total','$155.00',155.0000,9),(45,15,'sub_total','Sub-Total','$150.00',150.0000,1),(46,15,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(47,15,'total','Total','$155.00',155.0000,9),(48,16,'sub_total','Sub-Total','$150.00',150.0000,1),(49,16,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(50,16,'total','Total','$155.00',155.0000,9),(51,17,'sub_total','Sub-Total','$150.00',150.0000,1),(52,17,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(53,17,'total','Total','$155.00',155.0000,9),(54,18,'sub_total','Sub-Total','$150.00',150.0000,1),(55,18,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(56,18,'total','Total','$155.00',155.0000,9),(57,19,'sub_total','Sub-Total','$150.00',150.0000,1),(58,19,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(59,19,'total','Total','$155.00',155.0000,9),(60,20,'sub_total','Sub-Total','$150.00',150.0000,1),(61,20,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(62,20,'total','Total','$155.00',155.0000,9),(63,21,'sub_total','Sub-Total','$150.00',150.0000,1),(64,21,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(65,21,'total','Total','$155.00',155.0000,9),(66,22,'sub_total','Sub-Total','$150.00',150.0000,1),(67,22,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(68,22,'total','Total','$155.00',155.0000,9),(69,23,'sub_total','Sub-Total','$150.00',150.0000,1),(70,23,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(71,23,'total','Total','$155.00',155.0000,9),(72,24,'sub_total','Sub-Total','$150.00',150.0000,1),(73,24,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(74,24,'total','Total','$155.00',155.0000,9),(75,25,'sub_total','Sub-Total','$150.00',150.0000,1),(76,25,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(77,25,'total','Total','$155.00',155.0000,9),(78,26,'sub_total','Sub-Total','$150.00',150.0000,1),(79,26,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(80,26,'total','Total','$155.00',155.0000,9),(81,27,'sub_total','Sub-Total','$130.00',130.0000,1),(82,27,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(83,27,'total','Total','$135.00',135.0000,9),(84,28,'sub_total','Sub-Total','$40.00',40.0000,1),(85,28,'shipping','Tarifa Fija de Envío','$5.00',5.0000,3),(86,28,'total','Total','$45.00',45.0000,9);
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavads_banner`
--

DROP TABLE IF EXISTS `oc_pavads_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavads_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `store_id` tinyint(4) DEFAULT '0',
  `params` text,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavads_banner`
--

LOCK TABLES `oc_pavads_banner` WRITE;
/*!40000 ALTER TABLE `oc_pavads_banner` DISABLE KEYS */;
INSERT INTO `oc_pavads_banner` (`banner_id`, `name`, `status`, `store_id`, `params`) VALUES (2,'banner1',1,0,'a:4:{s:6:\"action\";s:9:\"save_stay\";s:4:\"name\";s:7:\"banner1\";s:6:\"status\";s:1:\"1\";s:7:\"banners\";a:6:{i:1;a:3:{s:5:\"image\";s:23:\"data/banner/banner6.jpg\";s:4:\"link\";s:1:\"#\";s:7:\"caption\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}i:2;a:3:{s:5:\"image\";s:23:\"data/banner/banner7.jpg\";s:4:\"link\";s:1:\"#\";s:7:\"caption\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}i:3;a:3:{s:5:\"image\";s:23:\"data/banner/banner8.jpg\";s:4:\"link\";s:1:\"#\";s:7:\"caption\";a:2:{i:1;s:201:\"&lt;p&gt;&lt;a class=&quot;btn-shop-now&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\";i:2;s:201:\"&lt;p&gt;&lt;a class=&quot;btn-shop-now&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\";}}i:4;a:3:{s:5:\"image\";s:23:\"data/banner/banner9.jpg\";s:4:\"link\";s:1:\"#\";s:7:\"caption\";a:2:{i:1;s:210:\"&lt;p&gt;&lt;a class=&quot;btn-shop-now btn-left&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\";i:2;s:210:\"&lt;p&gt;&lt;a class=&quot;btn-shop-now btn-left&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\";}}i:5;a:3:{s:5:\"image\";s:24:\"data/banner/banner10.jpg\";s:4:\"link\";s:1:\"#\";s:7:\"caption\";a:2:{i:1;s:211:\"&lt;p&gt;&lt;a class=&quot;btn-shop-now btn-right&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\";i:2;s:211:\"&lt;p&gt;&lt;a class=&quot;btn-shop-now btn-right&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\";}}i:6;a:3:{s:5:\"image\";s:24:\"data/banner/banner11.jpg\";s:4:\"link\";s:1:\"#\";s:7:\"caption\";a:2:{i:1;s:201:\"&lt;p&gt;&lt;a class=&quot;btn-shop-now&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\";i:2;s:201:\"&lt;p&gt;&lt;a class=&quot;btn-shop-now&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\";}}}}');
/*!40000 ALTER TABLE `oc_pavads_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_blog`
--

DROP TABLE IF EXISTS `oc_pavblog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `date_modified` date NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_blog`
--

LOCK TABLES `oc_pavblog_blog` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_blog` DISABLE KEYS */;
INSERT INTO `oc_pavblog_blog` (`blog_id`, `category_id`, `position`, `created`, `status`, `user_id`, `hits`, `image`, `meta_keyword`, `meta_description`, `meta_title`, `date_modified`, `video_code`, `params`, `tags`, `featured`, `keyword`) VALUES (7,21,5,'2013-03-09',1,1,80,'data/pavblog/blog1.jpg','','','','2014-03-01','','','joomla, prestashop, magento',1,''),(9,21,6,'2013-03-09',1,1,90,'data/pavblog/blog7.jpg','','','','2014-03-01','','','prestashop, magento',0,''),(10,21,7,'2013-03-09',1,1,306,'data/pavblog/blog3.jpg','test test','','Custom SEO Titlte','2014-03-01','','','prestashop',0,''),(11,21,1,'2013-03-11',1,1,93,'data/pavblog/blog4.jpg','','','','2014-03-01','','','opencart',0,''),(12,1,4,'2013-12-25',1,1,102,'data/pavblog/blog2.jpg','','','','2014-03-01','','','joomla, prestashop, magento',0,''),(13,23,2,'2014-08-23',1,1,1,'data/pavblog/blog8.jpg','','','','2014-08-23','','','beauty,blog',1,''),(14,20,19,'2014-08-23',1,1,1,'data/pavblog/blog7.jpg','','','','2014-08-23','','','beauty,blog',0,''),(15,25,12,'2014-08-23',1,1,2,'data/pavblog/blog1.jpg','','','','2014-08-23','','','beauty,blog',0,''),(16,25,11,'2014-08-23',1,1,0,'data/pavblog/blog4.jpg','','','','2014-08-23','','','beauty,blog',0,''),(17,25,16,'2014-08-23',1,1,20,'data/pavblog/blog4.jpg','','','','2014-08-23','','','beauty,blog',0,''),(18,27,3,'2014-08-23',1,1,0,'data/pavblog/blog6.jpg','','','','0000-00-00','','','beauty,blog',0,''),(19,27,15,'2014-08-23',1,1,1,'data/pavblog/blog2.jpg','','','','2014-08-23','','','beauty,blog',0,'');
/*!40000 ALTER TABLE `oc_pavblog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_blog_description`
--

DROP TABLE IF EXISTS `oc_pavblog_blog_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_blog_description`
--

LOCK TABLES `oc_pavblog_blog_description` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_blog_description` DISABLE KEYS */;
INSERT INTO `oc_pavblog_blog_description` (`blog_id`, `language_id`, `title`, `description`, `content`) VALUES (7,1,'Weatherproof Vintage Sweater ','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n','&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),(7,2,'عدم بل عرفها للسيطرة وأكثرها, ثم أطراف الباهضة','&lt;p&gt;في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي.&lt;/p&gt;\r\n','&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،.&lt;/p&gt;\r\n'),(9,1,'Enjoy the Tyrion gift card','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n','&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),(9,2,'عدم بل عرفها للسيطرة وأكثرها, ثم أطراف الباهضة','&lt;p&gt;في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي.&lt;/p&gt;\r\n','&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،.&lt;/p&gt;\r\n'),(10,1,'The Buff – Men’s Contemporary Shoes ','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n','&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;\r\n'),(10,2,'عدم بل عرفها للسيطرة وأكثرها, ثم أطراف الباهضة','&lt;p&gt;في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي.&lt;/p&gt;\r\n','&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n\r\n&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n'),(11,1,'Popular Jeans New Collection ','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n','&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),(11,2,'عدم بل عرفها للسيطرة وأكثرها, ثم أطراف الباهضة','&lt;p&gt;في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي.&lt;/p&gt;\r\n','&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n\r\n&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n'),(12,1,'Fashion Brunette Girl','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n','&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),(12,2,'عدم بل عرفها للسيطرة وأكثرها, ثم أطراف الباهضة','&lt;p&gt;في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي.&lt;/p&gt;\r\n','&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n\r\n&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n'),(18,1,' Phasellus faucibus orci','&lt;p&gt;Nulla lobortis iaculis neque, eget ornare felis finibus vel. Phasellus faucibus orci pharetra erat laoreet, ut fermentum risus dapibus. Nunc dapibus ornare nibh, vitae vehicula nisi gravida vel. Phasellus quis turpis nibh. Nulla aliquet ipsum sed diam feugiat, posuere lobortis augue hendrerit&lt;/p&gt;\r\n','&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas dignissim at felis nec faucibus. Vestibulum a cursus metus, eleifend tempor turpis. Nunc gravida nibh nisl. Nunc eleifend augue at tempus finibus. Cras porta ut ex nec tempor. Mauris bibendum ut mauris vel sollicitudin. Integer et tincidunt lectus. Maecenas volutpat eget mi vel tempus. Suspendisse ultricies nunc metus, dignissim egestas dui semper vitae. Pellentesque purus nibh, aliquet sed efficitur a, volutpat quis quam. Pellentesque quis libero nibh. Maecenas suscipit posuere consectetur. Nullam congue nulla at luctus facilisis.&lt;/p&gt;\r\n\r\n&lt;p&gt;Nulla lobortis iaculis neque, eget ornare felis finibus vel. Phasellus faucibus orci pharetra erat laoreet, ut fermentum risus dapibus. Nunc dapibus ornare nibh, vitae vehicula nisi gravida vel. Phasellus quis turpis nibh. Nulla aliquet ipsum sed diam feugiat, posuere lobortis augue hendrerit. Suspendisse pellentesque enim non magna mattis, et sodales erat dapibus. Vivamus cursus et tellus eget imperdiet. Donec pretium vestibulum justo, a elementum diam tempor id. Cras tincidunt blandit nisl, sed suscipit sem dapibus eu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.&lt;/p&gt;\r\n\r\n&lt;p&gt;Praesent quis porttitor ligula. Nunc imperdiet, augue eget porttitor dapibus, massa ex feugiat ante, at auctor massa dolor vel nisi. Cras ultricies commodo risus, sed tempus eros finibus nec. Curabitur consequat tincidunt semper. Fusce a suscipit felis. Vivamus tincidunt feugiat pellentesque. Nulla arcu enim, tempor at tincidunt vitae, hendrerit elementum libero. Nullam congue tellus non nisl porta rutrum. Duis congue nulla ut enim auctor, at lacinia eros cursus.&lt;/p&gt;\r\n\r\n&lt;p&gt;Integer dignissim sem et felis ultrices molestie. Phasellus luctus diam at ex convallis, quis placerat ante lacinia. Praesent iaculis feugiat dolor, a consectetur nisi. Curabitur a orci enim. Maecenas eget nisl gravida nulla sodales ultricies. Nunc ut mollis felis. Aliquam in sollicitudin eros. Nam aliquet a augue et elementum. Phasellus non urna aliquam, mollis nisi at, laoreet tortor. Mauris posuere, lorem in fringilla faucibus, tortor felis viverra ex, et bibendum est magna quis sem. Mauris fermentum porta lorem, vitae fermentum odio convallis eget.&lt;/p&gt;\r\n'),(18,2,' Phasellus faucibus orci','&lt;p&gt;Nulla lobortis iaculis neque, eget ornare felis finibus vel. Phasellus faucibus orci pharetra erat laoreet, ut fermentum risus dapibus. Nunc dapibus ornare nibh, vitae vehicula nisi gravida vel. Phasellus quis turpis nibh. Nulla aliquet ipsum sed diam feugiat, posuere lobortis augue hendrerit&lt;/p&gt;\r\n','&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas dignissim at felis nec faucibus. Vestibulum a cursus metus, eleifend tempor turpis. Nunc gravida nibh nisl. Nunc eleifend augue at tempus finibus. Cras porta ut ex nec tempor. Mauris bibendum ut mauris vel sollicitudin. Integer et tincidunt lectus. Maecenas volutpat eget mi vel tempus. Suspendisse ultricies nunc metus, dignissim egestas dui semper vitae. Pellentesque purus nibh, aliquet sed efficitur a, volutpat quis quam. Pellentesque quis libero nibh. Maecenas suscipit posuere consectetur. Nullam congue nulla at luctus facilisis.&lt;/p&gt;\r\n\r\n&lt;p&gt;Nulla lobortis iaculis neque, eget ornare felis finibus vel. Phasellus faucibus orci pharetra erat laoreet, ut fermentum risus dapibus. Nunc dapibus ornare nibh, vitae vehicula nisi gravida vel. Phasellus quis turpis nibh. Nulla aliquet ipsum sed diam feugiat, posuere lobortis augue hendrerit. Suspendisse pellentesque enim non magna mattis, et sodales erat dapibus. Vivamus cursus et tellus eget imperdiet. Donec pretium vestibulum justo, a elementum diam tempor id. Cras tincidunt blandit nisl, sed suscipit sem dapibus eu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.&lt;/p&gt;\r\n\r\n&lt;p&gt;Praesent quis porttitor ligula. Nunc imperdiet, augue eget porttitor dapibus, massa ex feugiat ante, at auctor massa dolor vel nisi. Cras ultricies commodo risus, sed tempus eros finibus nec. Curabitur consequat tincidunt semper. Fusce a suscipit felis. Vivamus tincidunt feugiat pellentesque. Nulla arcu enim, tempor at tincidunt vitae, hendrerit elementum libero. Nullam congue tellus non nisl porta rutrum. Duis congue nulla ut enim auctor, at lacinia eros cursus.&lt;/p&gt;\r\n\r\n&lt;p&gt;Integer dignissim sem et felis ultrices molestie. Phasellus luctus diam at ex convallis, quis placerat ante lacinia. Praesent iaculis feugiat dolor, a consectetur nisi. Curabitur a orci enim. Maecenas eget nisl gravida nulla sodales ultricies. Nunc ut mollis felis. Aliquam in sollicitudin eros. Nam aliquet a augue et elementum. Phasellus non urna aliquam, mollis nisi at, laoreet tortor. Mauris posuere, lorem in fringilla faucibus, tortor felis viverra ex, et bibendum est magna quis sem. Mauris fermentum porta lorem, vitae fermentum odio convallis eget.&lt;/p&gt;\r\n'),(16,1,'Aenean nulla lacinias','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n\r\n&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&lt;/p&gt;\r\n\r\n&lt;p&gt;Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&lt;/p&gt;\r\n\r\n&lt;p&gt;Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n'),(16,2,'Aenean nulla lacinias','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n\r\n&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&lt;/p&gt;\r\n\r\n&lt;p&gt;Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&lt;/p&gt;\r\n\r\n&lt;p&gt;Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n'),(15,1,'Commodo laoreet','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n','&lt;section class=&quot;description main-column&quot;&gt;\r\n&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n&lt;/section&gt;\r\n\r\n&lt;section class=&quot;blog-content main-column&quot;&gt;\r\n&lt;div class=&quot;content-wrap clearfix&quot;&gt;\r\n&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/section&gt;\r\n'),(15,2,'Commodo laoreet','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n','&lt;section class=&quot;description main-column&quot;&gt;\r\n&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n&lt;/section&gt;\r\n\r\n&lt;section class=&quot;blog-content main-column&quot;&gt;\r\n&lt;div class=&quot;content-wrap clearfix&quot;&gt;\r\n&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/section&gt;\r\n'),(14,1,'Aenean nulla lacinia ','&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n','&lt;section class=&quot;description main-column&quot;&gt;\r\n&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n&lt;/section&gt;\r\n\r\n&lt;section class=&quot;blog-content main-column&quot;&gt;\r\n&lt;div class=&quot;content-wrap clearfix&quot;&gt;\r\n&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/section&gt;\r\n'),(14,2,'Aenean nulla lacinia ','&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n','&lt;section class=&quot;description main-column&quot;&gt;\r\n&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n&lt;/section&gt;\r\n\r\n&lt;section class=&quot;blog-content main-column&quot;&gt;\r\n&lt;div class=&quot;content-wrap clearfix&quot;&gt;\r\n&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/section&gt;\r\n'),(13,1,'Commodo laoreet','&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n','&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),(13,2,'Commodo laoreet','&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n','&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),(19,1,'Phasellus faucibus orcice','&lt;p&gt;Nulla lobortis iaculis neque, eget ornare felis finibus vel. Phasellus faucibus orci pharetra erat laoreet, ut fermentum risus dapibus. Nunc dapibus ornare nibh, vitae vehicula nisi gravida vel. Phasellus quis turpis nibh. Nulla aliquet ipsum sed diam feugiat, posuere lobortis augue hendrerit&lt;/p&gt;\r\n','&lt;p&gt;Nulla lobortis iaculis neque, eget ornare felis finibus vel. Phasellus faucibus orci pharetra erat laoreet, ut fermentum risus dapibus. Nunc dapibus ornare nibh, vitae vehicula nisi gravida vel. Phasellus quis turpis nibh. Nulla aliquet ipsum sed diam feugiat, posuere lobortis augue hendrerit&lt;/p&gt;\r\n\r\n&lt;p&gt;Nulla lobortis iaculis neque, eget ornare felis finibus vel. Phasellus faucibus orci pharetra erat laoreet, ut fermentum risus dapibus. Nunc dapibus ornare nibh, vitae vehicula nisi gravida vel. Phasellus quis turpis nibh. Nulla aliquet ipsum sed diam feugiat, posuere lobortis augue hendrerit&lt;/p&gt;\r\n'),(19,2,'','',''),(17,1,'Commodo laoreetss','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint&lt;/p&gt;\r\n\r\n&lt;p&gt;.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n\r\n&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&lt;/p&gt;\r\n\r\n&lt;p&gt;Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n'),(17,2,'Commodo laoreetss','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint&lt;/p&gt;\r\n\r\n&lt;p&gt;.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n\r\n&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&lt;/p&gt;\r\n\r\n&lt;p&gt;Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n');
/*!40000 ALTER TABLE `oc_pavblog_blog_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_category`
--

DROP TABLE IF EXISTS `oc_pavblog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `meta_keyword` varchar(255) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `meta_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_category`
--

LOCK TABLES `oc_pavblog_category` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_category` DISABLE KEYS */;
INSERT INTO `oc_pavblog_category` (`category_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `meta_keyword`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `meta_description`, `meta_title`, `level`, `left`, `right`, `keyword`) VALUES (1,'data/pavblog/blog1.jpg',0,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,0,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,-5,34,47,''),(20,'data/pavblog/blog3.jpg',22,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,3,0,NULL,NULL,0,'top','test test',NULL,'','',0,0,0,''),(21,'data/pavblog/blog2.jpg',22,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,1,0,NULL,NULL,0,'top','',NULL,'','',0,0,0,''),(22,'data/pavblog/blog4.jpg',1,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,1,0,NULL,NULL,0,'top','',NULL,'','',0,0,0,''),(23,'data/pavblog/blog6.jpg',22,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,2,0,NULL,NULL,0,'top','',NULL,'','',0,0,0,''),(25,'data/pavblog/blog8.jpg',1,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'Second Item',0,1,0,99,0,NULL,NULL,0,'top','',NULL,'Second Item','Second Item',0,0,0,'Second Item'),(27,'data/pavblog/blog3.jpg',1,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'Technology',0,1,0,99,0,NULL,NULL,0,'top','',NULL,'Technology','Technology',0,0,0,'Technology'),(28,'',1,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'',0,1,0,99,0,NULL,NULL,0,'top','',NULL,'','',0,0,0,'');
/*!40000 ALTER TABLE `oc_pavblog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_category_description`
--

DROP TABLE IF EXISTS `oc_pavblog_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_category_description`
--

LOCK TABLES `oc_pavblog_category_description` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_category_description` DISABLE KEYS */;
INSERT INTO `oc_pavblog_category_description` (`category_id`, `language_id`, `title`, `description`) VALUES (1,1,'ROOT','Menu Root'),(27,1,'Technology','&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum, magni, qui aliquam impedit porro provident ipsum facilis&lt;/p&gt;\r\n'),(22,6,'Categoria 1',''),(21,6,'Categoria 11',''),(23,6,'Categoria 12',''),(20,6,'Categoria 13',''),(25,6,'Categoria 2',''),(28,6,'Categoria 3',''),(27,2,'ثم يذكر تكتيكاً  أفريقيا','&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،&lt;/p&gt;\r\n');
/*!40000 ALTER TABLE `oc_pavblog_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_comment`
--

DROP TABLE IF EXISTS `oc_pavblog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_blog_comment` (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_comment`
--

LOCK TABLES `oc_pavblog_comment` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_comment` DISABLE KEYS */;
INSERT INTO `oc_pavblog_comment` (`comment_id`, `blog_id`, `comment`, `status`, `created`, `user`, `email`) VALUES (10,10,'Pellentesque non faucibus tellus. Suspendisse convallis urna in orci porttitor lobortis pharetra eget nisi. Nullam luctus, sapien sit amet euismod pretium, augue risus commodo risus, ac maximus lorem nunc eget urna. Donec a venenatis massa, non pharetra augue. Curabitur eu felis eu mauris condimentum sollicitudin. Phasellus finibus aliquam neque. Duis laoreet dignissim lobortis. Mauris aliquet dolor eget auctor molestie. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec at erat elit. Integer id accumsan magna. Donec nec finibus magna. Quisque ultrices maximus posuere. Nullam a orci molestie, bibendum lectus ut, pellentesque dui. ',1,'2014-08-23 08:52:49','nmc2010','nmc2010@gmail.com'),(11,10,'Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag ',1,'2014-08-23 08:57:49','nmc2010','nmc2010@gmail.com'),(12,12,' Maecenas dictum molestie lacus, et posuere mi vehicula et. Vivamus scelerisque fermentum dolor eget maximus. Vivamus efficitur ut arcu porta dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean ac facilisis odio. Nulla ac urna sit amet libero euismod molestie in in mi. Quisque at lorem consequat, tincidunt sem sed, maximus nisl. Nunc a tempor urna. Ut varius, nibh eget feugiat malesuada, tellus quam auctor est, vel ullamcorper ante est ac orci. Cras at tincidunt justo, pulvinar elementum sapien.\r\n\r\nNam dignissim purus eu ligula tincidunt, vitae iaculis sapien mattis. Etiam imperdiet leo eros, id lacinia lectus auctor vitae. Mauris quis arcu quis dolor commodo rutrum eget nec eros. Nullam placerat, metus eget pellentesque efficitur, nisl tellus consequat ligula, sit amet laoreet enim nunc placerat tortor. Vivamus magna enim, imperdiet sed metus et, egestas porta magna. Donec a velit luctus felis aliquet consequat. Nam malesuada id felis at fringilla. Aenean sapien justo, aliquam ac dolor sed, volutpat pretium metus. ',1,'2014-08-26 10:17:27','nmc2010','nmc2010@gmail.com');
/*!40000 ALTER TABLE `oc_pavblog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavmap_group_location`
--

DROP TABLE IF EXISTS `oc_pavmap_group_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavmap_group_location` (
  `group_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavmap_group_location`
--

LOCK TABLES `oc_pavmap_group_location` WRITE;
/*!40000 ALTER TABLE `oc_pavmap_group_location` DISABLE KEYS */;
INSERT INTO `oc_pavmap_group_location` (`group_location_id`, `name`, `store_id`, `status`) VALUES (1,'Default',0,1);
/*!40000 ALTER TABLE `oc_pavmap_group_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavmap_location`
--

DROP TABLE IF EXISTS `oc_pavmap_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavmap_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_location_id` int(11) NOT NULL,
  `link` text,
  `address` varchar(225) DEFAULT '',
  `latitude` varchar(225) DEFAULT NULL,
  `longitude` varchar(225) DEFAULT NULL,
  `icon` varchar(225) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavmap_location`
--

LOCK TABLES `oc_pavmap_location` WRITE;
/*!40000 ALTER TABLE `oc_pavmap_location` DISABLE KEYS */;
INSERT INTO `oc_pavmap_location` (`location_id`, `group_location_id`, `link`, `address`, `latitude`, `longitude`, `icon`, `image`, `status`) VALUES (1,1,'#','749 Driggs Avenue, Brooklyn, Tiểu bang New York 11211, Hoa Kỳ','40.712262','-73.960538','data/pavmap/icons/default.png','data/pavmap/address/1.jpg',1);
/*!40000 ALTER TABLE `oc_pavmap_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavmap_location_description`
--

DROP TABLE IF EXISTS `oc_pavmap_location_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavmap_location_description` (
  `location_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavmap_location_description`
--

LOCK TABLES `oc_pavmap_location_description` WRITE;
/*!40000 ALTER TABLE `oc_pavmap_location_description` DISABLE KEYS */;
INSERT INTO `oc_pavmap_location_description` (`location_id`, `language_id`, `title`, `content`) VALUES (1,2,'title 1','content 1'),(1,1,'3213213232','content 1');
/*!40000 ALTER TABLE `oc_pavmap_location_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavnewsletter_email`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavnewsletter_email` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `attach` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `affiliate` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `customer` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `product` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `defined` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `special` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `latest` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `popular` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `defined_categories` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `defined_products` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `defined_products_more` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `only_selected_language` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `to` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavnewsletter_email`
--

LOCK TABLES `oc_pavnewsletter_email` WRITE;
/*!40000 ALTER TABLE `oc_pavnewsletter_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_pavnewsletter_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavnewsletter_history`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavnewsletter_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `public_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `subject` text,
  `message` text,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavnewsletter_history`
--

LOCK TABLES `oc_pavnewsletter_history` WRITE;
/*!40000 ALTER TABLE `oc_pavnewsletter_history` DISABLE KEYS */;
INSERT INTO `oc_pavnewsletter_history` (`id`, `language_id`, `template_id`, `public_id`, `store_id`, `to`, `subject`, `message`, `date_added`) VALUES (1,1,9999,5,0,'newsletter','test','&lt;p&gt;sadasdsadasada&lt;/p&gt;\r\n','2014-08-04 10:26:08');
/*!40000 ALTER TABLE `oc_pavnewsletter_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavnewsletter_subscribe`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavnewsletter_subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT '0',
  `store_id` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `action` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`subscribe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavnewsletter_subscribe`
--

LOCK TABLES `oc_pavnewsletter_subscribe` WRITE;
/*!40000 ALTER TABLE `oc_pavnewsletter_subscribe` DISABLE KEYS */;
INSERT INTO `oc_pavnewsletter_subscribe` (`subscribe_id`, `customer_id`, `store_id`, `email`, `action`) VALUES (24,0,0,'nmc2010@gmail.com',1),(25,0,0,'asdasdas@gmail.com',1),(26,0,0,'dgfdg@gmail.com',1),(27,0,0,'nmc2011@gmail.com',1),(28,0,0,'',1),(29,0,0,'',1);
/*!40000 ALTER TABLE `oc_pavnewsletter_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavnewsletter_template`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavnewsletter_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `hits` tinyint(4) DEFAULT '0',
  `template_file` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavnewsletter_template`
--

LOCK TABLES `oc_pavnewsletter_template` WRITE;
/*!40000 ALTER TABLE `oc_pavnewsletter_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_pavnewsletter_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavnewsletter_template_description`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_template_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavnewsletter_template_description` (
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `template_message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavnewsletter_template_description`
--

LOCK TABLES `oc_pavnewsletter_template_description` WRITE;
/*!40000 ALTER TABLE `oc_pavnewsletter_template_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_pavnewsletter_template_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavoslidergroups`
--

DROP TABLE IF EXISTS `oc_pavoslidergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavoslidergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavoslidergroups`
--

LOCK TABLES `oc_pavoslidergroups` WRITE;
/*!40000 ALTER TABLE `oc_pavoslidergroups` DISABLE KEYS */;
INSERT INTO `oc_pavoslidergroups` (`id`, `title`, `params`) VALUES (1,'queenbeauty slider','a:28:{s:5:\"title\";s:18:\"queenbeauty slider\";s:5:\"delay\";s:4:\"9000\";s:9:\"fullwidth\";s:9:\"fullwidth\";s:5:\"width\";s:4:\"1170\";s:6:\"height\";s:3:\"650\";s:12:\"touch_mobile\";s:1:\"1\";s:13:\"stop_on_hover\";s:1:\"1\";s:12:\"shuffle_mode\";s:1:\"0\";s:14:\"image_cropping\";s:1:\"0\";s:11:\"shadow_type\";s:1:\"0\";s:14:\"show_time_line\";s:1:\"1\";s:18:\"time_line_position\";s:3:\"top\";s:16:\"background_color\";s:0:\"\";s:6:\"margin\";s:1:\"0\";s:7:\"padding\";s:1:\"0\";s:16:\"background_image\";s:1:\"1\";s:14:\"background_url\";s:0:\"\";s:14:\"navigator_type\";s:4:\"both\";s:16:\"navigator_arrows\";s:16:\"verticalcentered\";s:16:\"navigation_style\";s:5:\"round\";s:17:\"offset_horizontal\";s:1:\"0\";s:15:\"offset_vertical\";s:2:\"20\";s:14:\"show_navigator\";s:1:\"1\";s:20:\"hide_navigator_after\";s:3:\"200\";s:15:\"thumbnail_width\";s:3:\"100\";s:16:\"thumbnail_height\";s:2:\"50\";s:16:\"thumbnail_amount\";s:1:\"5\";s:17:\"hide_screen_width\";s:0:\"\";}');
/*!40000 ALTER TABLE `oc_pavoslidergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavosliderlayers`
--

DROP TABLE IF EXISTS `oc_pavosliderlayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavosliderlayers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `params` text NOT NULL,
  `layersparams` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavosliderlayers`
--

LOCK TABLES `oc_pavosliderlayers` WRITE;
/*!40000 ALTER TABLE `oc_pavosliderlayers` DISABLE KEYS */;
INSERT INTO `oc_pavosliderlayers` (`id`, `title`, `parent_id`, `group_id`, `params`, `layersparams`, `image`, `status`, `position`) VALUES (1,'Slider 1',0,1,'a:16:{s:2:\"id\";s:1:\"1\";s:15:\"slider_group_id\";s:1:\"1\";s:12:\"slider_title\";s:8:\"Slider 1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:9:\"curtain-2\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:1:\"1\";s:12:\"slider_image\";s:31:\"data/layerslider/bg_slider2.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:9:\"big_white\";s:13:\"layer_caption\";s:11:\"Beauty Shop\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"152\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"1800\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"medium_white\";s:13:\"layer_caption\";s:39:\" where you will feel unique and special\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"246\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"2800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:7:\"hr_line\";s:13:\"layer_caption\";s:10:\"&lt;hr&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"302\";s:10:\"layer_left\";s:1:\"5\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"3150\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:33:\"btn btn-links btn-outline-inverse\";s:13:\"layer_caption\";s:10:\" SHOP NOW \";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"351\";s:10:\"layer_left\";s:1:\"2\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"3900\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:42:\"btn btn-links btn-nobg btn-outline-inverse\";s:13:\"layer_caption\";s:10:\"Learn more\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"351\";s:10:\"layer_left\";s:3:\"137\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"4749\";}}}','data/layerslider/bg_slider2.jpg',1,0),(26,'Slider 2',0,1,'a:16:{s:2:\"id\";s:2:\"26\";s:15:\"slider_group_id\";s:1:\"1\";s:12:\"slider_title\";s:8:\"Slider 2\";s:13:\"slider_status\";s:1:\"0\";s:17:\"slider_transition\";s:9:\"curtain-2\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"26\";s:12:\"slider_image\";s:31:\"data/layerslider/bg_slider3.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:9:\"big_white\";s:13:\"layer_caption\";s:11:\"Beauty Shop\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"152\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"1800\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"medium_white\";s:13:\"layer_caption\";s:39:\" where you will feel unique and special\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"246\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"2800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:7:\"hr_line\";s:13:\"layer_caption\";s:10:\"&lt;hr&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"302\";s:10:\"layer_left\";s:1:\"5\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"3150\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:33:\"btn btn-links btn-outline-inverse\";s:13:\"layer_caption\";s:10:\" SHOP NOW \";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"351\";s:10:\"layer_left\";s:1:\"2\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"3900\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:42:\"btn btn-links btn-nobg btn-outline-inverse\";s:13:\"layer_caption\";s:10:\"Learn more\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"351\";s:10:\"layer_left\";s:3:\"137\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"4749\";}}}','data/layerslider/bg_slider3.jpg',0,0),(25,'Slider 3',0,1,'a:16:{s:2:\"id\";s:2:\"25\";s:15:\"slider_group_id\";s:1:\"1\";s:12:\"slider_title\";s:8:\"Slider 3\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:9:\"curtain-2\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"25\";s:12:\"slider_image\";s:31:\"data/layerslider/bg_slider1.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:9:\"big_white\";s:13:\"layer_caption\";s:11:\"Beauty Shop\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"152\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"1800\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"medium_white\";s:13:\"layer_caption\";s:39:\" where you will feel unique and special\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"246\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"2800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:7:\"hr_line\";s:13:\"layer_caption\";s:10:\"&lt;hr&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"302\";s:10:\"layer_left\";s:1:\"5\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"3150\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:33:\"btn btn-links btn-outline-inverse\";s:13:\"layer_caption\";s:10:\" SHOP NOW \";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"351\";s:10:\"layer_left\";s:1:\"2\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"3900\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:42:\"btn btn-links btn-nobg btn-outline-inverse\";s:13:\"layer_caption\";s:10:\"Learn more\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"351\";s:10:\"layer_left\";s:3:\"137\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"4749\";}}}','data/layerslider/bg_slider1.jpg',1,0),(24,'Copy Of Slider 1',0,1,'a:16:{s:2:\"id\";s:2:\"24\";s:15:\"slider_group_id\";s:1:\"1\";s:12:\"slider_title\";s:16:\"Copy Of Slider 1\";s:13:\"slider_status\";s:1:\"0\";s:17:\"slider_transition\";s:9:\"curtain-2\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"24\";s:12:\"slider_image\";s:31:\"data/layerslider/bg_slider4.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:9:\"big_green\";s:13:\"layer_caption\";s:11:\"Beauty Shop\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"152\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"1800\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"medium_purple\";s:13:\"layer_caption\";s:39:\" where you will feel unique and special\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"246\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"2800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:14:\"hr_line_purple\";s:13:\"layer_caption\";s:0:\"\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"313\";s:10:\"layer_left\";s:1:\"0\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"3150\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:33:\"btn btn-links btn-outline-inverse\";s:13:\"layer_caption\";s:10:\" SHOP NOW \";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"351\";s:10:\"layer_left\";s:1:\"2\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"3900\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:32:\"data/layerslider/img-slider1.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:42:\"btn btn-links btn-nobg btn-outline-inverse\";s:13:\"layer_caption\";s:10:\"Learn more\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:12:\"easeOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"351\";s:10:\"layer_left\";s:3:\"137\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"4749\";}}}','data/layerslider/bg_slider4.jpg',0,0);
/*!40000 ALTER TABLE `oc_pavosliderlayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavshoplocation_group_location`
--

DROP TABLE IF EXISTS `oc_pavshoplocation_group_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavshoplocation_group_location` (
  `group_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavshoplocation_group_location`
--

LOCK TABLES `oc_pavshoplocation_group_location` WRITE;
/*!40000 ALTER TABLE `oc_pavshoplocation_group_location` DISABLE KEYS */;
INSERT INTO `oc_pavshoplocation_group_location` (`group_location_id`, `name`, `store_id`, `status`) VALUES (1,'Default',0,1);
/*!40000 ALTER TABLE `oc_pavshoplocation_group_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavshoplocation_location`
--

DROP TABLE IF EXISTS `oc_pavshoplocation_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavshoplocation_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_location_id` int(11) NOT NULL,
  `link` text,
  `address` varchar(225) DEFAULT '',
  `latitude` varchar(225) DEFAULT NULL,
  `longitude` varchar(225) DEFAULT NULL,
  `icon` varchar(225) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `option` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavshoplocation_location`
--

LOCK TABLES `oc_pavshoplocation_location` WRITE;
/*!40000 ALTER TABLE `oc_pavshoplocation_location` DISABLE KEYS */;
INSERT INTO `oc_pavshoplocation_location` (`location_id`, `group_location_id`, `link`, `address`, `latitude`, `longitude`, `icon`, `image`, `status`, `option`) VALUES (1,1,'#','325 Adams Street, Brooklyn, Tiểu bang New York 07030, Hoa Kỳ','40.693761','-73.988656','data/pavshoplocation/icons/default.png','data/pavshoplocation/address/1.jpg',1,0),(2,1,'#','','40.703647','-74.010822','data/pavshoplocation/icons/automotive.png','data/pavshoplocation/address/2.jpg',1,0),(3,1,'#','','40.706071','-74.004201','data/pavshoplocation/icons/food.png','data/pavshoplocation/address/3.jpg',1,0),(4,1,'#','','40.714910','-74.011423','data/pavshoplocation/icons/education.png','data/pavshoplocation/address/4.jpg',1,0),(5,1,'#','','40.703223','-73.994081','data/pavshoplocation/icons/shopping.png','data/pavshoplocation/address/5.jpg',1,0),(6,1,'#','','40.695267','-73.995166','data/pavshoplocation/icons/sports.png','data/pavshoplocation/address/6.jpg',1,0),(7,1,'#','','40.719068','-74.001530','data/pavshoplocation/icons/tech.png','data/pavshoplocation/address/7.jpg',1,1),(8,1,'#','','40.693761','-73.988656','data/pavshoplocation/icons/automotive.png','data/pavshoplocation/address/8.jpg',1,1),(9,1,'#','Museum Of Chinese In America 215 Centre St, New York, NY, United States','40.71919810499611','-73.99904091003418','data/pavshoplocation/icons/default.png','data/pavshoplocation/address/8.jpg',1,0),(10,1,'#','','40.703647','-74.001530','data/pavshoplocation/icons/tech.png','data/pavshoplocation/address/8.jpg',0,1);
/*!40000 ALTER TABLE `oc_pavshoplocation_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavshoplocation_location_description`
--

DROP TABLE IF EXISTS `oc_pavshoplocation_location_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavshoplocation_location_description` (
  `location_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavshoplocation_location_description`
--

LOCK TABLES `oc_pavshoplocation_location_description` WRITE;
/*!40000 ALTER TABLE `oc_pavshoplocation_location_description` DISABLE KEYS */;
INSERT INTO `oc_pavshoplocation_location_description` (`location_id`, `language_id`, `title`, `content`) VALUES (3,1,'title 3','content 3'),(3,2,'title 3','content 3'),(1,1,'Mega Shop','content 1'),(2,1,'title 2','content 2'),(2,2,'title 2','content 2'),(5,1,'title 5','content 5'),(5,2,'title 5','content 5'),(6,2,'title 6','content 6'),(6,1,'title 6','content 6'),(7,2,'title 7','content 7'),(7,1,'title 7','content 7'),(8,2,'title 8','content 8'),(8,1,'title 8','content 8'),(9,2,'Venus Shop','content 9'),(4,1,'title 4','content 4'),(4,2,'title 4','content 4'),(10,1,'title 10','content 10'),(10,2,'title 10','content 10'),(1,2,'Mega Shop','content 1'),(9,1,'Venus Shop','content 9');
/*!40000 ALTER TABLE `oc_pavshoplocation_location_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavtestimonialutilcarousel`
--

DROP TABLE IF EXISTS `oc_pavtestimonialutilcarousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavtestimonialutilcarousel` (
  `testimonial_id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_add` date NOT NULL,
  PRIMARY KEY (`testimonial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavtestimonialutilcarousel`
--

LOCK TABLES `oc_pavtestimonialutilcarousel` WRITE;
/*!40000 ALTER TABLE `oc_pavtestimonialutilcarousel` DISABLE KEYS */;
INSERT INTO `oc_pavtestimonialutilcarousel` (`testimonial_id`, `avatar`, `status`, `date_add`) VALUES (1,'data/p1.jpg',1,'2014-08-06'),(2,'data/p2.jpg',1,'2014-08-06'),(3,'data/p3.jpg',1,'2014-08-06'),(4,'data/p4.jpg',1,'2014-08-06');
/*!40000 ALTER TABLE `oc_pavtestimonialutilcarousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavtestimonialutilcarousel_description`
--

DROP TABLE IF EXISTS `oc_pavtestimonialutilcarousel_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavtestimonialutilcarousel_description` (
  `testimonial_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  `regency` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavtestimonialutilcarousel_description`
--

LOCK TABLES `oc_pavtestimonialutilcarousel_description` WRITE;
/*!40000 ALTER TABLE `oc_pavtestimonialutilcarousel_description` DISABLE KEYS */;
INSERT INTO `oc_pavtestimonialutilcarousel_description` (`testimonial_id`, `language_id`, `name`, `content`, `regency`) VALUES (1,1,'John Smith','Duis sit amet orci et lectus dictum auctor a nec enim. Donec suscipit fringilla elementum. Suspendisse nec justo ut felis ornare tincidunt vitae et lectus. In iaculis mauris luctus massa pellentesque blandit. Integer et neque. Nulla vitae dictum nisi, ut ultrices tortor. Proin placerat porttitor nunc sed porttitor.','Web Designer'),(2,1,'Mary Smith','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam aliquam massa quis mauris sollicitudin commodo','Graphic Designer'),(3,1,'Jason Doe','Duis sit amet orci et lectus dictum auctor a nec enim. Donec suscipit fringilla elementum. Suspendisse nec justo ut felis ornare tincidunt vitae et lectus. In iaculis mauris luctus massa pellentesque blandit. Integer et neque. Nulla vitae dictum nisi, ut ultrices tortor. Proin placerat porttitor nunc sed porttitor.','CEO'),(4,1,'Alisa Lee','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam aliquam massa quis mauris sollicitudin commodo','SEO'),(1,2,'John Smith','Duis sit amet orci et lectus dictum auctor a nec enim. Donec suscipit fringilla elementum. Suspendisse nec justo ut felis ornare tincidunt vitae et lectus. In iaculis mauris luctus massa pellentesque blandit. Integer et neque. Nulla vitae dictum nisi, ut ultrices tortor. Proin placerat porttitor nunc sed porttitor.','Web Designer'),(2,2,'Mary Smith','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam aliquam massa quis mauris sollicitudin commodo','Graphic Designer'),(3,2,'Jason Doe','Duis sit amet orci et lectus dictum auctor a nec enim. Donec suscipit fringilla elementum. Suspendisse nec justo ut felis ornare tincidunt vitae et lectus. In iaculis mauris luctus massa pellentesque blandit. Integer et neque. Nulla vitae dictum nisi, ut ultrices tortor. Proin placerat porttitor nunc sed porttitor.','CEO'),(4,2,'Alisa Lee','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam aliquam massa quis mauris sollicitudin commodo','SEO');
/*!40000 ALTER TABLE `oc_pavtestimonialutilcarousel_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1019 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES (865,'2344','6781788','','','','','','',1,7,'data/tlanti/2344.png',0,1,14242.5000,0,0,'2018-02-24',0.00000000,12,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(866,'2537C','6799989','','','','','','',1,7,'data/tlanti/2537C.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(867,'2537A','6818190','','','','','','',1,7,'data/tlanti/2537A.png',0,1,1507.0000,0,0,'2018-02-24',0.00000000,12,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(868,'2537B','6836391','','','','','','',1,7,'data/tlanti/2537B.png',0,1,56.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(869,'1192A','6854592','','','','','','',1,7,'data/tlanti/1192A.png',0,1,22.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(870,'0614','6872793','','','','','','',1,7,'data/tlanti/0614.png',0,1,39.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(871,'0614B','6890994','','','','','','',1,7,'data/tlanti/0614B.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(872,'0614C','6909195','','','','','','',1,7,'data/tlanti/0614C.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(873,'3920B','6927396','','','','','','',1,7,'data/tlanti/3920B.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(874,'3920','6945597','','','','','','',1,7,'data/tlanti/3920.png',0,1,44.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(875,'3920C','6963798','','','','','','',1,7,'data/tlanti/3920C.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(876,'3923B','6981999','','','','','','',1,7,'data/tlanti/3923B.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(877,'3923A','7000200','','','','','','',1,7,'data/tlanti/3923A.png',0,1,44.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(878,'3923C','7018401','','','','','','',1,7,'data/tlanti/3923C.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(879,'3922B','7036602','','','','','','',1,7,'data/tlanti/3922B.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(880,'3922','7054803','','','','','','',1,7,'data/tlanti/3922.png',0,1,44.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(881,'3922C','7073004','','','','','','',1,7,'data/tlanti/3922C.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(882,'3921B','7091205','','','','','','',1,7,'data/tlanti/3921B.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(883,'3921','7109406','','','','','','',1,7,'data/tlanti/3921.png',0,1,44.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(864,'2344A','6763587','','','','','','',1,7,'data/tlanti/2344A.png',0,1,972.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(676,'0661','3268995','','','','','','',1,7,'data/tlanti/0661.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(677,'0663','3287196','','','','','','',1,7,'data/tlanti/0663.png',0,1,20.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(678,'0739','3305397','','','','','','',1,7,'data/tlanti/0739.png',0,1,16.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(679,'0741','3323598','','','','','','',1,7,'data/tlanti/0741.png',0,1,18.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(680,'2626','3341799','','','','','','',1,7,'data/tlanti/2626.png',0,1,12.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(681,'1619','3360000','','','','','','',1,7,'data/tlanti/1619.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(682,'2744','3378201','','','','','','',1,7,'data/tlanti/2744.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(683,'3964','3396402','','','','','','',1,7,'data/tlanti/3964.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(684,'3960','3414603','','','','','','',1,7,'data/tlanti/3960.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(685,'0763','3432804','','','','','','',1,7,'data/tlanti/0763.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(686,'0787','3451005','','','','','','',1,7,'data/tlanti/0787.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(687,'0788','3469206','','','','','','',1,7,'data/tlanti/0788.png',0,1,7.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(688,'0789','3487407','','','','','','',1,7,'data/tlanti/0789.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(689,'2553','3505608','','','','','','',1,7,'data/tlanti/2553.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(690,'3952','3523809','','','','','','',1,7,'data/tlanti/3952.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(691,'3953','3542010','','','','','','',1,7,'data/tlanti/3953.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(692,'0796','3560211','','','','','','',1,7,'data/tlanti/0796.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(693,'0798','3578412','','','','','','',1,7,'data/tlanti/0798.png',0,1,9.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(694,'1496','3596613','','','','','','',1,7,'data/tlanti/1496.png',0,1,37.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(695,'1233','3614814','','','','','','',1,7,'data/tlanti/1233.png',0,1,18.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(696,'2713','3633015','','','','','','',1,7,'data/tlanti/2713.png',0,1,27.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(697,'1595','3651216','','','','','','',1,7,'data/tlanti/1595.png',0,1,27.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(698,'1308','3669417','','','','','','',1,7,'data/tlanti/1308.png',0,1,260.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(699,'1388','3687618','','','','','','',1,7,'data/tlanti/1388.png',0,1,36.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(700,'1388A','3705819','','','','','','',1,7,'data/tlanti/1388A.png',0,1,36.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(701,'1387','3724020','','','','','','',1,7,'data/tlanti/1387.png',0,1,11.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(702,'1452A','3742221','','','','','','',1,7,'data/tlanti/1452A.png',0,1,7.5000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(703,'1452','3760422','','','','','','',1,7,'data/tlanti/1452.png',0,1,587.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(704,'2546','3778623','','','','','','',1,7,'data/tlanti/2546.png',0,1,30.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(705,'1634','3796824','','','','','','',1,7,'data/tlanti/1634.png',0,1,40.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(706,'1683','3815025','','','','','','',1,7,'data/tlanti/1683.png',0,1,7.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(707,'1957','3833226','','','','','','',1,7,'data/tlanti/1957.png',0,1,228.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(708,'1957A','3851427','','','','','','',1,7,'data/tlanti/1957A.png',0,1,35.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(709,'2074','3869628','','','','','','',1,7,'data/tlanti/2074.png',0,1,9.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(710,'2076','3887829','','','','','','',1,7,'data/tlanti/2076.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(711,'3956','3906030','','','','','','',1,7,'data/tlanti/3956.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(712,'2083','3924231','','','','','','',1,7,'data/tlanti/2083.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(713,'2085','3942432','','','','','','',1,7,'data/tlanti/2085.png',0,1,25.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(714,'2234A','3960633','','','','','','',1,7,'data/tlanti/2234A.png',0,1,59.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(715,'2234','3978834','','','','','','',1,7,'data/tlanti/2234.png',0,1,336.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(716,'2237A','3997035','','','','','','',1,7,'data/tlanti/2237A.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(717,'2237','4015236','','','','','','',1,7,'data/tlanti/2237.png',0,1,84.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(718,'2259A','4033437','','','','','','',1,7,'data/tlanti/2259A.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(719,'2259','4051638','','','','','','',1,7,'data/tlanti/2259.png',0,1,86.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(720,'2260A','4069839','','','','','','',1,7,'data/tlanti/2260A.png',0,1,17.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(721,'2260','4088040','','','','','','',1,7,'data/tlanti/2260.png',0,1,94.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(722,'2261A','4106241','','','','','','',1,7,'data/tlanti/2261A.png',0,1,28.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(723,'2261','4124442','','','','','','',1,7,'data/tlanti/2261.png',0,1,156.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(724,'2262A','4142643','','','','','','',1,7,'data/tlanti/2262A.png',0,1,38.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(725,'2262','4160844','','','','','','',1,7,'data/tlanti/2262.png',0,1,213.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(726,'2277','4179045','','','','','','',1,7,'data/tlanti/2277.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(727,'2278','4197246','','','','','','',1,7,'data/tlanti/2278.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(728,'2296','4215447','','','','','','',1,7,'data/tlanti/2296.png',0,1,37.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(729,'2699','4233648','','','','','','',1,7,'data/tlanti/2699.png',0,1,50.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(730,'0759','4251849','','','','','','',1,7,'data/tlanti/0759.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(731,'0769','4270050','','','','','','',1,7,'data/tlanti/0769.png',0,1,6.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(732,'0944','4288251','','','','','','',1,7,'data/tlanti/0944.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(733,'1437A','4306452','','','','','','',1,7,'data/tlanti/1437A.png',0,1,13.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(734,'1438A','4324653','','','','','','',1,7,'data/tlanti/1438A.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(735,'1439A','4342854','','','','','','',1,7,'data/tlanti/1439A.png',0,1,9.5000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(736,'1440A','4361055','','','','','','',1,7,'data/tlanti/1440A.png',0,1,7.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(737,'1444A','4379256','','','','','','',1,7,'data/tlanti/1444A.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(738,'1444','4397457','','','','','','',1,7,'data/tlanti/1444.png',0,1,389.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(739,'3451A','4415658','','','','','','',1,7,'data/tlanti/3451A.png',0,1,7.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(740,'1450A','4433859','','','','','','',1,7,'data/tlanti/1450A.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(741,'1450','4452060','','','','','','',1,7,'data/tlanti/1450.png',0,1,323.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(742,'1434A','4470261','','','','','','',1,7,'data/tlanti/1434A.png',0,1,6.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(743,'1435A','4488462','','','','','','',1,7,'data/tlanti/1435A.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(744,'1436A','4506663','','','','','','',1,7,'data/tlanti/1436A.png',0,1,11.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(745,'1436','4524864','','','','','','',1,7,'data/tlanti/1436.png',0,1,861.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(746,'0272','4543065','','','','','','',1,7,'data/tlanti/0272.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(747,'0003','4561266','','','','','','',1,7,'data/tlanti/0003.png',0,1,17.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(748,'0003A','4579467','','','','','','',1,7,'data/tlanti/0003A.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(749,'0007','4597668','','','','','','',1,7,'data/tlanti/0007.png',0,1,23.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(750,'0007A','4615869','','','','','','',1,7,'data/tlanti/0007A.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(751,'0014','4634070','','','','','','',1,7,'data/tlanti/0014.png',0,1,68.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(752,'0014A','4652271','','','','','','',1,7,'data/tlanti/0014A.png',0,1,8.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(753,'0010','4670472','','','','','','',1,7,'data/tlanti/0010.png',0,1,68.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(754,'0010A','4688673','','','','','','',1,7,'data/tlanti/0010A.png',0,1,8.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(755,'0009','4706874','','','','','','',1,7,'data/tlanti/0009.png',0,1,36.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(756,'0009A','4725075','','','','','','',1,7,'data/tlanti/0009A.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(757,'0016','4743276','','','','','','',1,7,'data/tlanti/0016.png',0,1,36.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(758,'0016A','4761477','','','','','','',1,7,'data/tlanti/0016A.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(759,'0015','4779678','','','','','','',1,7,'data/tlanti/0015.png',0,1,68.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(760,'0015A','4797879','','','','','','',1,7,'data/tlanti/0015A.png',0,1,8.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(761,'0020A','4816080','','','','','','',1,7,'data/tlanti/0020A.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(762,'0020','4834281','','','','','','',1,7,'data/tlanti/0020.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(763,'0193','4852482','','','','','','',1,7,'data/tlanti/0193.png',0,1,170.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(764,'4001A','4888884','','','','','','',1,7,'data/tlanti/4001A.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(765,'0253','4907085','','','','','','',1,7,'data/tlanti/0253.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(766,'1998','4925286','','','','','','',1,7,'data/tlanti/1998.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(767,'0254','4943487','','','','','','',1,7,'data/tlanti/0254.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(768,'0255','4961688','','','','','','',1,7,'data/tlanti/0255.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(769,'2059A','4979889','','','','','','',1,7,'data/tlanti/2059A.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(770,'2059B','4998090','','','','','','',1,7,'data/tlanti/2059B.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(771,'2059','5016291','','','','','','',1,7,'data/tlanti/2059.png',0,1,19.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(772,'2052A','5034492','','','','','','',1,7,'data/tlanti/2052A.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(773,'2052B','5052693','','','','','','',1,7,'data/tlanti/2052B.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(774,'2052','5070894','','','','','','',1,7,'data/tlanti/2052.png',0,1,26.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(775,'0257','5089095','','','','','','',1,7,'data/tlanti/0257.png',0,1,11.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(776,'5054','5107296','','','','','','',1,7,'data/tlanti/5054.png',0,1,18.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(777,'0819A','5125497','','','','','','',1,7,'data/tlanti/0819A.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(778,'3728C','5143698','','','','','','',1,7,'data/tlanti/3728C.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(779,'3728B','5161899','','','','','','',1,7,'data/tlanti/3728B.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(780,'3728A','5180100','','','','','','',1,7,'data/tlanti/3728A.png',0,1,45.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(781,'3416C','5198301','','','','','','',1,7,'data/tlanti/3416C.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(782,'3416B','5216502','','','','','','',1,7,'data/tlanti/3416B.png',0,1,6.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(783,'3416A','5234703','','','','','','',1,7,'data/tlanti/3416A.png',0,1,53.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(784,'0094','5289306','','','','','','',1,7,'data/tlanti/0094.png',0,1,24.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(785,'0094A','5307507','','','','','','',1,7,'data/tlanti/0094A.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(786,'0105','5325708','','','','','','',1,7,'data/tlanti/0105.png',0,1,20.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(787,'0132','5343909','','','','','','',1,7,'data/tlanti/0132.png',0,1,21.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(788,'0133','5362110','','','','','','',1,7,'data/tlanti/0133.png',0,1,21.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(789,'0134','5380311','','','','','','',1,7,'data/tlanti/0134.png',0,1,21.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(790,'0135','5398512','','','','','','',1,7,'data/tlanti/0135.png',0,1,21.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(791,'0136','5416713','','','','','','',1,7,'data/tlanti/0136.png',0,1,21.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(792,'0137','5434914','','','','','','',1,7,'data/tlanti/0137.png',0,1,21.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(793,'0138','5453115','','','','','','',1,7,'data/tlanti/0138.png',0,1,21.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(794,'0143','5471316','','','','','','',1,7,'data/tlanti/0143.png',0,1,23.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(795,'0174D','5489517','','','','','','',1,7,'data/tlanti/0174D.png',0,1,16.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(796,'0174E','5507718','','','','','','',1,7,'data/tlanti/0174E.png',0,1,7.0000,0,0,'2018-02-24',0.00000000,10,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(797,'0174B','5525919','','','','','','',1,7,'data/tlanti/0174B.png',0,1,240.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(798,'0174C','5544120','','','','','','',1,7,'data/tlanti/0174C.png',0,1,143.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(799,'0174A','5562321','','','','','','',1,7,'data/tlanti/0174A.png',0,1,593.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(800,'0174','5580522','','','','','','',1,7,'data/tlanti/0174.png',0,1,1144.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(801,'0441B','5598723','','','','','','',1,7,'data/tlanti/0441B.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(802,'0441A','5616924','','','','','','',1,7,'data/tlanti/0441A.png',0,1,55.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(803,'0501A','5635125','','','','','','',1,7,'data/tlanti/0501A.png',0,1,9.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(804,'0501','5653326','','','','','','',1,7,'data/tlanti/0501.png',0,1,125.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(805,'4471C','5671527','','','','','','',1,7,'data/tlanti/4471C.png',0,1,9.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(806,'4471B','5689728','','','','','','',1,7,'data/tlanti/4471B.png',0,1,137.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(807,'4471A','5707929','','','','','','',1,7,'data/tlanti/4471A.png',0,1,248.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(808,'0507C','5726130','','','','','','',1,7,'data/tlanti/0507C.png',0,1,6.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(809,'0507','5744331','','','','','','',1,7,'data/tlanti/0507.png',0,1,3138.0000,0,0,'2018-02-24',0.00000000,12,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(810,'0507B','5762532','','','','','','',1,7,'data/tlanti/0507B.png',0,1,96.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(811,'0507A','5780733','','','','','','',1,7,'data/tlanti/0507A.png',0,1,164.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(812,'2750C','5798934','','','','','','',1,7,'data/tlanti/2750C.png',0,1,5.5000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(813,'2750','5817135','','','','','','',1,7,'data/tlanti/2750.png',0,1,2916.0000,0,0,'2018-02-24',0.00000000,12,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(814,'2750B','5835336','','','','','','',1,7,'data/tlanti/2750B.png',0,1,92.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(815,'2750A','5853537','','','','','','',1,7,'data/tlanti/2750A.png',0,1,149.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(816,'0539A','5871738','','','','','','',1,7,'data/tlanti/0539A.png',0,1,39.0000,0,0,'2018-02-24',0.00000000,11,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(817,'0541','5889939','','','','','','',1,7,'data/tlanti/0541.png',0,1,39.0000,0,0,'2018-02-24',0.00000000,11,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(818,'0615','5908140','','','','','','',1,7,'data/tlanti/0615.png',0,1,40.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(819,'0615B','5926341','','','','','','',1,7,'data/tlanti/0615B.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(820,'0615C','5944542','','','','','','',1,7,'data/tlanti/0615C.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(821,'0617A','5962743','','','','','','',1,7,'data/tlanti/0617A.png',0,1,28.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(822,'0617B','5980944','','','','','','',1,7,'data/tlanti/0617B.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(823,'0617C','5999145','','','','','','',1,7,'data/tlanti/0617C.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(824,'0616A','6017346','','','','','','',1,7,'data/tlanti/0616A.png',0,1,28.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(825,'0616B','6035547','','','','','','',1,7,'data/tlanti/0616B.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(826,'0616C','6053748','','','','','','',1,7,'data/tlanti/0616C.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(827,'0618A','6071949','','','','','','',1,7,'data/tlanti/0618A.png',0,1,28.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(828,'0618B','6090150','','','','','','',1,7,'data/tlanti/0618B.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(829,'0620A','6108351','','','','','','',1,7,'data/tlanti/0620A.png',0,1,28.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(830,'0620B','6126552','','','','','','',1,7,'data/tlanti/0620B.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(831,'0620C','6144753','','','','','','',1,7,'data/tlanti/0620C.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(832,'0940B','6162954','','','','','','',1,7,'data/tlanti/0940B.png',0,1,62.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(833,'0940A','6181155','','','','','','',1,7,'data/tlanti/0940A.png',0,1,523.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(834,'0940','6199356','','','','','','',1,7,'data/tlanti/0940.png',0,1,1994.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(835,'1116D','6217557','','','','','','',1,7,'data/tlanti/1116D.png',0,1,20.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(836,'1116B','6253959','','','','','','',1,7,'data/tlanti/1116B.png',0,1,260.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(837,'1116C','6272160','','','','','','',1,7,'data/tlanti/1116C.png',0,1,156.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(838,'1116A','6290361','','','','','','',1,7,'data/tlanti/1116A.png',0,1,687.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(839,'1116','6308562','','','','','','',1,7,'data/tlanti/1116.png',0,1,1350.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(840,'1257A','6326763','','','','','','',1,7,'data/tlanti/1257A.png',0,1,19.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(841,'1257','6344964','','','','','','',1,7,'data/tlanti/1257.png',0,1,347.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(842,'1260A','6363165','','','','','','',1,7,'data/tlanti/1260A.png',0,1,21.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(843,'1260','6381366','','','','','','',1,7,'data/tlanti/1260.png',0,1,370.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(844,'1516','6399567','','','','','','',1,7,'data/tlanti/1516.png',0,1,2594.0000,0,0,'2018-02-24',0.00000000,12,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(845,'1516B','6417768','','','','','','',1,7,'data/tlanti/1516B.png',0,1,132.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(846,'4417B','6435969','','','','','','',1,7,'data/tlanti/4417B.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(847,'4417','6454170','','','','','','',1,7,'data/tlanti/4417.png',0,1,2282.0400,0,0,'2018-02-24',0.00000000,12,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(848,'4417A','6472371','','','','','','',1,7,'data/tlanti/4417A.png',0,1,115.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(849,'1614B','6490572','','','','','','',1,7,'data/tlanti/1614B.png',0,1,64.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(850,'1614','6508773','','','','','','',1,7,'data/tlanti/1614.png',0,1,3006.0000,0,0,'2018-02-24',0.00000000,12,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(851,'1615B','6526974','','','','','','',1,7,'data/tlanti/1615B.png',0,1,117.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(852,'1997C','6545175','','','','','','',1,7,'data/tlanti/1997C.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(853,'1997B','6563376','','','','','','',1,7,'data/tlanti/1997B.png',0,1,20.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(854,'4548A','6581577','','','','','','',1,7,'data/tlanti/4548A.png',0,1,0.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(855,'1997A','6599778','','','','','','',1,7,'data/tlanti/1997A.png',0,1,165.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(856,'1997','6617979','','','','','','',1,7,'data/tlanti/1997.png',0,1,1519.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(857,'2342B','6636180','','','','','','',1,7,'data/tlanti/2342B.png',0,1,164.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(858,'2342A','6654381','','','','','','',1,7,'data/tlanti/2342A.png',0,1,1607.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(859,'2342','6672582','','','','','','',1,7,'data/tlanti/2342.png',0,1,13188.0000,0,0,'2018-02-24',0.00000000,12,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(860,'3197B','6690783','','','','','','',1,7,'data/tlanti/3197B.png',0,1,0.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(861,'3197A','6708984','','','','','','',1,7,'data/tlanti/3197A.png',0,1,0.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(862,'3197','6727185','','','','','','',1,7,'data/tlanti/3197.png',0,1,0.0000,0,0,'2018-02-24',0.00000000,12,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(863,'2344B','6745386','','','','','','',1,7,'data/tlanti/2344B.png',0,1,99.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(675,'0662','3250794','','','','','','',1,7,'data/tlanti/0662.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(674,'0653','3232593','','','','','','',1,7,'data/tlanti/0653.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(673,'0651','3214392','','','','','','',1,7,'data/tlanti/0651.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(672,'0652','3196191','','','','','','',1,7,'data/tlanti/0652.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(671,'4549','3177990','','','','','','',1,7,'data/tlanti/4549.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(670,'3950','3159789','','','','','','',1,7,'data/tlanti/3950.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(669,'3980','3141588','','','','','','',1,7,'data/tlanti/3980.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(668,'3949','3123387','','','','','','',1,7,'data/tlanti/3949.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(667,'3981','3105186','','','','','','',1,7,'data/tlanti/3981.png',0,1,7.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(666,'2774','3086985','','','','','','',1,7,'data/tlanti/2774.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(665,'2773','3068784','','','','','','',1,7,'data/tlanti/2773.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(664,'0636','3050583','','','','','','',1,7,'data/tlanti/0636.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(663,'0635','3032382','','','','','','',1,7,'data/tlanti/0635.png',0,1,21.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(662,'0634','3014181','','','','','','',1,7,'data/tlanti/0634.png',0,1,7.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(661,'3996','2995980','','','','','','',1,7,'data/tlanti/3996.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(660,'3265','2977779','','','','','','',1,7,'data/tlanti/3265.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(659,'5041A','2959578','','','','','','',1,7,'data/tlanti/5041A.png',0,1,40.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(593,'2652','1685508','','','','','','',1,7,'data/tlanti/2652.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(594,'2653','1703709','','','','','','',1,7,'data/tlanti/2653.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(595,'0995A','1721910','','','','','','',1,7,'data/tlanti/0995A.png',0,1,39.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(596,'0995B','1740111','','','','','','',1,7,'data/tlanti/0995B.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(597,'1089','1758312','','','','','','',1,7,'data/tlanti/1089.png',0,1,33.0000,0,0,'2018-02-24',0.00000000,13,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(598,'1089A','1776513','','','','','','',1,7,'data/tlanti/1089A.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,8,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(599,'1314','1794714','','','','','','',1,7,'data/tlanti/1314.png',0,1,8.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(600,'1315','1812915','','','','','','',1,7,'data/tlanti/1315.png',0,1,8.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(601,'1318','1831116','','','','','','',1,7,'data/tlanti/1318.png',0,1,8.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(602,'1320','1849317','','','','','','',1,7,'data/tlanti/1320.png',0,1,8.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(603,'1303','1867518','','','','','','',1,7,'data/tlanti/1303.png',0,1,18.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(604,'1307','1885719','','','','','','',1,7,'data/tlanti/1307.png',0,1,24.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(605,'1645','1903920','','','','','','',1,7,'data/tlanti/1645.png',0,1,32.0000,0,0,'2018-02-24',0.00000000,13,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(606,'1645A','1922121','','','','','','',1,7,'data/tlanti/1645A.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,8,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(607,'2126A','1940322','','','','','','',1,7,'data/tlanti/2126A.png',0,1,19.0000,0,0,'2018-02-24',0.00000000,13,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(608,'2126B','1958523','','','','','','',1,7,'data/tlanti/2126B.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,13,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(609,'1305','1994925','','','','','','',1,7,'data/tlanti/1305.png',0,1,16.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(610,'1465','2013126','','','','','','',1,7,'data/tlanti/1465.png',0,1,13.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(611,'1467','2031327','','','','','','',1,7,'data/tlanti/1467.png',0,1,18.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(612,'3877','2049528','','','','','','',1,7,'data/tlanti/3877.png',0,1,474.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(613,'3877A','2067729','','','','','','',1,7,'data/tlanti/3877A.png',0,1,6.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(614,'0155','2085930','','','','','','',1,7,'data/tlanti/0155.png',0,1,8.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(615,'4365A','2104131','','','','','','',1,7,'data/tlanti/4365A.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(616,'0365A','2122332','','','','','','',1,7,'data/tlanti/0365A.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(617,'0415A','2140533','','','','','','',1,7,'data/tlanti/0415A.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(618,'0371A','2158734','','','','','','',1,7,'data/tlanti/0371A.png',0,1,13.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(619,'0374A','2176935','','','','','','',1,7,'data/tlanti/0374A.png',0,1,7.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(620,'0374','2195136','','','','','','',1,7,'data/tlanti/0374.png',0,1,579.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(621,'3881A','2213337','','','','','','',1,7,'data/tlanti/3881A.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(622,'0378A','2231538','','','','','','',1,7,'data/tlanti/0378A.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(623,'0388A','2249739','','','','','','',1,7,'data/tlanti/0388A.png',0,1,9.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(624,'0388','2267940','','','','','','',1,7,'data/tlanti/0388.png',0,1,726.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(625,'1544A','2286141','','','','','','',1,7,'data/tlanti/1544A.png',0,1,6.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(626,'1544','2304342','','','','','','',1,7,'data/tlanti/1544.png',0,1,488.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(627,'0404A','2322543','','','','','','',1,7,'data/tlanti/0404A.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(628,'0404','2340744','','','','','','',1,7,'data/tlanti/0404.png',0,1,354.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(629,'0386A','2358945','','','','','','',1,7,'data/tlanti/0386A.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(630,'0439','2377146','','','','','','',1,7,'data/tlanti/0439.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(631,'0440','2395347','','','','','','',1,7,'data/tlanti/0440.png',0,1,8.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(632,'0448','2413548','','','','','','',1,7,'data/tlanti/0448.png',0,1,25.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(633,'4066A','2431749','','','','','','',1,7,'data/tlanti/4066A.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(634,'4066','2449950','','','','','','',1,7,'data/tlanti/4066.png',0,1,8.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(635,'0561','2468151','','','','','','',1,7,'data/tlanti/0561.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(636,'3802','2486352','','','','','','',1,7,'data/tlanti/3802.png',0,1,13.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(637,'0590','2504553','','','','','','',1,7,'data/tlanti/0590.png',0,1,8.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(638,'0603','2522754','','','','','','',1,7,'data/tlanti/0603.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(639,'0600','2577357','','','','','','',1,7,'data/tlanti/0600.png',0,1,7.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(640,'0649','2613759','','','','','','',1,7,'data/tlanti/0649.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(641,'0776','2631960','','','','','','',1,7,'data/tlanti/0776.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(642,'4429','2650161','','','','','','',1,7,'data/tlanti/4429.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(643,'1057','2668362','','','','','','',1,7,'data/tlanti/1057.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(644,'1072','2686563','','','','','','',1,7,'data/tlanti/1072.png',0,1,9.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(645,'1074','2704764','','','','','','',1,7,'data/tlanti/1074.png',0,1,11.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(646,'1782A','2722965','','','','','','',1,7,'data/tlanti/1782A.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(647,'1782','2741166','','','','','','',1,7,'data/tlanti/1782.png',0,1,213.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(648,'2586A','2759367','','','','','','',1,7,'data/tlanti/2586A.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(649,'2586','2777568','','','','','','',1,7,'data/tlanti/2586.png',0,1,366.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(650,'1774','2795769','','','','','','',1,7,'data/tlanti/1774.png',0,1,219.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(651,'1774A','2813970','','','','','','',1,7,'data/tlanti/1774A.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(652,'1775A','2832171','','','','','','',1,7,'data/tlanti/1775A.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(653,'1775','2850372','','','','','','',1,7,'data/tlanti/1775.png',0,1,337.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(654,'1900','2868573','','','','','','',1,7,'data/tlanti/1900.png',0,1,8.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(655,'1899','2886774','','','','','','',1,7,'data/tlanti/1899.png',0,1,6.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(656,'1974','2904975','','','','','','',1,7,'data/tlanti/1974.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(657,'2022','2923176','','','','','','',1,7,'data/tlanti/2022.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(658,'5041','2941377','','','','','','',1,7,'data/tlanti/5041.png',0,1,40.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(592,'0274','1667307','','','','','','',1,7,'data/tlanti/0274.png',0,1,80.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(591,'0274A','1649106','','','','','','',1,7,'data/tlanti/0274A.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(590,'0045A','1630905','','','','','','',1,7,'data/tlanti/0045A.png',0,1,38.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(589,'0044','1612704','','','','','','',1,7,'data/tlanti/0044.png',0,1,38.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(588,'3609','1594503','','','','','','',1,7,'data/tlanti/3609.png',0,1,38.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(587,'008MY','1576302','','','','','','',1,7,'data/tlanti/008MY.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(586,'007MY','1558101','','','','','','',1,7,'data/tlanti/007MY.png',0,1,40.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(585,'006MY','1539900','','','','','','',1,7,'data/tlanti/006MY.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(584,'005MY','1521699','','','','','','',1,7,'data/tlanti/005MY.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(583,'004MY','1503498','','','','','','',1,7,'data/tlanti/004MY.png',0,1,60.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(582,'003MY','1485297','','','','','','',1,7,'data/tlanti/003MY.png',0,1,20.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(581,'002 MY','1467096','','','','','','',1,7,'data/tlanti/002 MY.png',0,1,20.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(578,'0012T','1412493','','','','','','',1,7,'data/tlanti/0012T.png',0,1,120.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(579,'0013T','1430694','','','','','','',1,7,'data/tlanti/0013T.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(580,'001MY','1448895','','','','','','',1,7,'data/tlanti/001MY.png',0,1,150.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(506,'1919','102021','','','','','','',1,7,'data/tlanti/1919.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(507,'1923','120222','','','','','','',1,7,'data/tlanti/1923.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(508,'0036','138423','','','','','','',1,7,'data/tlanti/0036.png',0,1,12.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(509,'4457A','156624','','','','','','',1,7,'data/tlanti/4457A.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(510,'1239','174825','','','','','','',1,7,'data/tlanti/1239.png',0,1,24.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(511,'0273C','193026','','','','','','',1,7,'data/tlanti/0273C.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(512,'0273B','211227','','','','','','',1,7,'data/tlanti/0273B.png',0,1,9.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(513,'0273A','229428','','','','','','',1,7,'data/tlanti/0273A.png',0,1,79.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(514,'1294C','247629','','','','','','',1,7,'data/tlanti/1294C.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(515,'1294B','265830','','','','','','',1,7,'data/tlanti/1294B.png',0,1,9.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(516,'1294A','284031','','','','','','',1,7,'data/tlanti/1294A.png',0,1,79.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(517,'5039C','302232','','','','','','',1,7,'data/tlanti/5039C.png',0,1,4.5000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(518,'5039B','320433','','','','','','',1,7,'data/tlanti/5039B.png',0,1,9.0000,0,0,'2018-02-24',0.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(519,'5039A','338634','','','','','','',1,7,'data/tlanti/5039A.png',0,1,79.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(520,'1494','356835','','','','','','',1,7,'data/tlanti/1494.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(521,'0498A','375036','','','','','','',1,7,'data/tlanti/0498A.png',0,1,7.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(522,'0498','393237','','','','','','',1,7,'data/tlanti/0498.png',0,1,26.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(523,'1628B','411438','','','','','','',1,7,'data/tlanti/1628B.png',0,1,13.0000,0,0,'2018-02-24',0.00000000,8,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(524,'1628A','429639','','','','','','',1,7,'data/tlanti/1628A.png',0,1,116.0000,0,0,'2018-02-24',0.00000000,13,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(525,'1719','447840','','','','','','',1,7,'data/tlanti/1719.png',0,1,84.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(526,'1719A','466041','','','','','','',1,7,'data/tlanti/1719A.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(527,'1720A','484242','','','','','','',1,7,'data/tlanti/1720A.png',0,1,3.5000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(528,'1720','502443','','','','','','',1,7,'data/tlanti/1720.png',0,1,84.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(529,'1721A','520644','','','','','','',1,7,'data/tlanti/1721A.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,7,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(530,'1721','538845','','','','','','',1,7,'data/tlanti/1721.png',0,1,84.0000,0,0,'2018-02-24',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(531,'1917','557046','','','','','','',1,7,'data/tlanti/1917.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(532,'1922','575247','','','','','','',1,7,'data/tlanti/1922.png',0,1,13.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(533,'001P','593448','','','','','','',1,7,'data/tlanti/001P.png',0,1,3.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(534,'002P','611649','','','','','','',1,7,'data/tlanti/002P.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(535,'003P','629850','','','','','','',1,7,'data/tlanti/003P.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(536,'004P','648051','','','','','','',1,7,'data/tlanti/004P.png',0,1,7.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(537,'005P','666252','','','','','','',1,7,'data/tlanti/005P.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(538,'006P','684453','','','','','','',1,7,'data/tlanti/006P.png',0,1,8.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(539,'007P','702654','','','','','','',1,7,'data/tlanti/007P.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(540,'008P','720855','','','','','','',1,7,'data/tlanti/008P.png',0,1,50.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(541,'009P','739056','','','','','','',1,7,'data/tlanti/009P.png',0,1,0.2500,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(542,'010P','757257','','','','','','',1,7,'data/tlanti/010P.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(543,'011P','775458','','','','','','',1,7,'data/tlanti/011P.png',0,1,12.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(544,'012P','793659','','','','','','',1,7,'data/tlanti/012P.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(545,'013P','811860','','','','','','',1,7,'data/tlanti/013P.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(546,'014P','830061','','','','','','',1,7,'data/tlanti/014P.png',0,1,25.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(547,'015P','848262','','','','','','',1,7,'data/tlanti/015P.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(548,'016P','866463','','','','','','',1,7,'data/tlanti/016P.png',0,1,1.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(549,'017P','884664','','','','','','',1,7,'data/tlanti/017P.png',0,1,12.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(550,'018P','902865','','','','','','',1,7,'data/tlanti/018P.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(551,'019P','921066','','','','','','',1,7,'data/tlanti/019P.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(552,'020P','939267','','','','','','',1,7,'data/tlanti/020P.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(553,'021P','957468','','','','','','',1,7,'data/tlanti/021P.png',0,1,1.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(554,'022P','975669','','','','','','',1,7,'data/tlanti/022P.png',0,1,17.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(555,'023P','993870','','','','','','',1,7,'data/tlanti/023P.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(556,'024P','1012071','','','','','','',1,7,'data/tlanti/024P.png',0,1,20.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(557,'025P','1030272','','','','','','',1,7,'data/tlanti/025P.png',0,1,28.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(558,'026P','1048473','','','','','','',1,7,'data/tlanti/026P.png',0,1,6.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(559,'027P','1066674','','','','','','',1,7,'data/tlanti/027P.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(560,'028P','1084875','','','','','','',1,7,'data/tlanti/028P.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(561,'029P','1103076','','','','','','',1,7,'data/tlanti/029P.png',0,1,8.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(562,'030P','1121277','','','','','','',1,7,'data/tlanti/030P.png',0,1,6.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(563,'031P','1139478','','','','','','',1,7,'data/tlanti/031P.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(564,'032P','1157679','','','','','','',1,7,'data/tlanti/032P.png',0,1,6.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(565,'033P','1175880','','','','','','',1,7,'data/tlanti/033P.png',0,1,22.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(566,'034P','1194081','','','','','','',1,7,'data/tlanti/034P.png',0,1,68.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(567,'0001T','1212282','','','','','','',1,7,'data/tlanti/0001T.png',0,1,150.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(568,'0002T','1230483','','','','','','',1,7,'data/tlanti/0002T.png',0,1,40.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(569,'0003T','1248684','','','','','','',1,7,'data/tlanti/0003T.png',0,1,130.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(570,'0004T','1266885','','','','','','',1,7,'data/tlanti/0004T.png',0,1,70.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(571,'0005T','1285086','','','','','','',1,7,'data/tlanti/0005T.png',0,1,50.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(572,'0006T','1303287','','','','','','',1,7,'data/tlanti/0006T.png',0,1,130.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(573,'0007T','1321488','','','','','','',1,7,'data/tlanti/0007T.png',0,1,130.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(574,'0008T','1339689','','','','','','',1,7,'data/tlanti/0008T.png',0,1,130.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(575,'0009T','1357890','','','','','','',1,7,'data/tlanti/0009T.png',0,1,400.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(576,'0010T','1376091','','','','','','',1,7,'data/tlanti/0010T.png',0,1,120.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(577,'0011T','1394292','','','','','','',1,7,'data/tlanti/0011T.png',0,1,120.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:07','0000-00-00 00:00:00',0),(884,'3921C','7127607','','','','','','',1,7,'data/tlanti/3921C.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(885,'033D','7145808','','','','','','',1,7,'data/tlanti/033D.png',0,1,600.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(886,'034D','7164009','','','','','','',1,7,'data/tlanti/034D.png',0,1,190.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(887,'035D','7182210','','','','','','',1,7,'data/tlanti/035D.png',0,1,50.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(888,'036D','7200411','','','','','','',1,7,'data/tlanti/036D.png',0,1,260.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(889,'037D','7218612','','','','','','',1,7,'data/tlanti/037D.png',0,1,150.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(890,'014D','7236813','','','','','','',1,7,'data/tlanti/014D.png',0,1,200.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(891,'015D','7255014','','','','','','',1,7,'data/tlanti/015D.png',0,1,300.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(892,'016D','7273215','','','','','','',1,7,'data/tlanti/016D.png',0,1,200.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(893,'017D','7291416','','','','','','',1,7,'data/tlanti/017D.png',0,1,100.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(894,'018D','7309617','','','','','','',1,7,'data/tlanti/018D.png',0,1,150.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(895,'019D','7327818','','','','','','',1,7,'data/tlanti/019D.png',0,1,30.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(896,'020D','7346019','','','','','','',1,7,'data/tlanti/020D.png',0,1,100.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(897,'021D','7364220','','','','','','',1,7,'data/tlanti/021D.png',0,1,70.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(898,'022D','7382421','','','','','','',1,7,'data/tlanti/022D.png',0,1,70.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(899,'023D','7400622','','','','','','',1,7,'data/tlanti/023D.png',0,1,70.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(900,'024D','7418823','','','','','','',1,7,'data/tlanti/024D.png',0,1,50.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(901,'025D','7437024','','','','','','',1,7,'data/tlanti/025D.png',0,1,70.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(902,'027D','7455225','','','','','','',1,7,'data/tlanti/027D.png',0,1,600.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(903,'028D','7473426','','','','','','',1,7,'data/tlanti/028D.png',0,1,500.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(904,'029D','7491627','','','','','','',1,7,'data/tlanti/029D.png',0,1,100.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(905,'001H','7509828','','','','','','',1,7,'data/tlanti/001H.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(906,'002H','7528029','','','','','','',1,7,'data/tlanti/002H.png',0,1,21.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(907,'003H','7546230','','','','','','',1,7,'data/tlanti/003H.png',0,1,11.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(908,'004H','7564431','','','','','','',1,7,'data/tlanti/004H.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(909,'005H','7582632','','','','','','',1,7,'data/tlanti/005H.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(910,'006H','7600833','','','','','','',1,7,'data/tlanti/006H.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(911,'007H','7619034','','','','','','',1,7,'data/tlanti/007H.png',0,1,25.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(912,'008H','7637235','','','','','','',1,7,'data/tlanti/008H.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(913,'009H','7655436','','','','','','',1,7,'data/tlanti/009H.png',0,1,17.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(914,'010H','7673637','','','','','','',1,7,'data/tlanti/010H.png',0,1,16.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(915,'011H','7691838','','','','','','',1,7,'data/tlanti/011H.png',0,1,7.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(916,'012H','7710039','','','','','','',1,7,'data/tlanti/012H.png',0,1,16.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(917,'013H','7728240','','','','','','',1,7,'data/tlanti/013H.png',0,1,26.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(918,'014H','7746441','','','','','','',1,7,'data/tlanti/014H.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(919,'015H','7764642','','','','','','',1,7,'data/tlanti/015H.png',0,1,12.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(920,'016H','7782843','','','','','','',1,7,'data/tlanti/016H.png',0,1,92.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(921,'017H','7801044','','','','','','',1,7,'data/tlanti/017H.png',0,1,92.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(922,'018H','7819245','','','','','','',1,7,'data/tlanti/018H.png',0,1,88.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(923,'019H','7837446','','','','','','',1,7,'data/tlanti/019H.png',0,1,60.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(924,'020H','7855647','','','','','','',1,7,'data/tlanti/020H.png',0,1,72.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(925,'021H','7873848','','','','','','',1,7,'data/tlanti/021H.png',0,1,88.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(926,'022H','7892049','','','','','','',1,7,'data/tlanti/022H.png',0,1,11.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(927,'023H','7910250','','','','','','',1,7,'data/tlanti/023H.png',0,1,26.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(928,'024H','7928451','','','','','','',1,7,'data/tlanti/024H.png',0,1,0.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',13),(929,'025H','7946652','','','','','','',1,7,'data/tlanti/025H.png',0,1,0.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(930,'026H','7964853','','','','','','',1,7,'data/tlanti/026H.png',0,1,27.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(931,'027H','7983054','','','','','','',1,7,'data/tlanti/027H.png',0,1,27.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(932,'028H','8001255','','','','','','',1,7,'data/tlanti/028H.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(933,'029H','8019456','','','','','','',1,7,'data/tlanti/029H.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(934,'030H','8037657','','','','','','',1,7,'data/tlanti/030H.png',0,1,13.5000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(935,'031H','8055858','','','','','','',1,7,'data/tlanti/031H.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(936,'032H','8074059','','','','','','',1,7,'data/tlanti/032H.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(937,'033H','8092260','','','','','','',1,7,'data/tlanti/033H.png',0,1,16.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(938,'034H','8110461','','','','','','',1,7,'data/tlanti/034H.png',0,1,7.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(939,'035H','8128662','','','','','','',1,7,'data/tlanti/035H.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(940,'036H','8146863','','','','','','',1,7,'data/tlanti/036H.png',0,1,12.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(941,'037H','8165064','','','','','','',1,7,'data/tlanti/037H.png',0,1,17.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(942,'001V','8183265','','','','','','',1,7,'data/tlanti/001V.png',0,1,30.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(943,'002V','8201466','','','','','','',1,7,'data/tlanti/002V.png',0,1,20.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(944,'003V','8219667','','','','','','',1,7,'data/tlanti/003V.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(945,'004V','8237868','','','','','','',1,7,'data/tlanti/004V.png',0,1,25.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(946,'005V','8256069','','','','','','',1,7,'data/tlanti/005V.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(947,'006V','8274270','','','','','','',1,7,'data/tlanti/006V.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(948,'007V','8292471','','','','','','',1,7,'data/tlanti/007V.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(949,'008V','8310672','','','','','','',1,7,'data/tlanti/008V.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(950,'009V','8328873','','','','','','',1,7,'data/tlanti/009V.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(951,'010V','8347074','','','','','','',1,7,'data/tlanti/010V.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(952,'011V','8365275','','','','','','',1,7,'data/tlanti/011V.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(953,'012V','8383476','','','','','','',1,7,'data/tlanti/012V.png',0,1,15.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(954,'013V','8401677','','','','','','',1,7,'data/tlanti/013V.png',0,1,25.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(955,'014V','8419878','','','','','','',1,7,'data/tlanti/014V.png',0,1,25.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(956,'015V','8438079','','','','','','',1,7,'data/tlanti/015V.png',0,1,20.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(957,'016V','8456280','','','','','','',1,7,'data/tlanti/016V.png',0,1,20.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(958,'017V','8474481','','','','','','',1,7,'data/tlanti/017V.png',0,1,20.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(959,'018V','8492682','','','','','','',1,7,'data/tlanti/018V.png',0,1,25.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(960,'019V','8510883','','','','','','',1,7,'data/tlanti/019V.png',0,1,20.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(961,'020V','8529084','','','','','','',1,7,'data/tlanti/020V.png',0,1,40.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(962,'048H','8547285','','','','','','',1,7,'data/tlanti/048H.png',0,1,6.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(963,'049H','8565486','','','','','','',1,7,'data/tlanti/049H.png',0,1,9.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(964,'050H','8583687','','','','','','',1,7,'data/tlanti/050H.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(965,'051H','8601888','','','','','','',1,7,'data/tlanti/051H.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(966,'052H','8620089','','','','','','',1,7,'data/tlanti/052H.png',0,1,11.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(967,'055H','8638290','','','','','','',1,7,'data/tlanti/055H.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(968,'038H','8656491','','','','','','',1,7,'data/tlanti/038H.png',0,1,7.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(969,'039H','8674692','','','','','','',1,7,'data/tlanti/039H.png',0,1,28.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(970,'040H','8692893','','','','','','',1,7,'data/tlanti/040H.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(971,'041H','8711094','','','','','','',1,7,'data/tlanti/041H.png',0,1,11.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(972,'042H','8729295','','','','','','',1,7,'data/tlanti/042H.png',0,1,25.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(973,'043H','8747496','','','','','','',1,7,'data/tlanti/043H.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(974,'044H','8765697','','','','','','',1,7,'data/tlanti/044H.png',0,1,27.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(975,'047H','8783898','','','','','','',1,7,'data/tlanti/047H.png',0,1,13.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(976,'079H','8802099','','','','','','',1,7,'data/tlanti/079H.png',0,1,150.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(977,'072H','8820300','','','','','','',1,7,'data/tlanti/072H.png',0,1,150.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(978,'073H','8838501','','','','','','',1,7,'data/tlanti/073H.png',0,1,50.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(979,'074H','8856702','','','','','','',1,7,'data/tlanti/074H.png',0,1,50.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(980,'075H','8874903','','','','','','',1,7,'data/tlanti/075H.png',0,1,50.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(981,'076H','8893104','','','','','','',1,7,'data/tlanti/076H.png',0,1,50.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(982,'077H','8911305','','','','','','',1,7,'data/tlanti/077H.png',0,1,50.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(983,'078H','8929506','','','','','','',1,7,'data/tlanti/078H.png',0,1,100.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(984,'053H','8947707','','','','','','',1,7,'data/tlanti/053H.png',0,1,21.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(985,'054H','8965908','','','','','','',1,7,'data/tlanti/054H.png',0,1,22.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(986,'059H','8984109','','','','','','',1,7,'data/tlanti/059H.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(987,'060H','9002310','','','','','','',1,7,'data/tlanti/060H.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(988,'061H','9020511','','','','','','',1,7,'data/tlanti/061H.png',0,1,11.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(989,'062H','9038712','','','','','','',1,7,'data/tlanti/062H.png',0,1,12.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(990,'063H','9056913','','','','','','',1,7,'data/tlanti/063H.png',0,1,14.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(991,'064H','9075114','','','','','','',1,7,'data/tlanti/064H.png',0,1,12.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(992,'065H','9093315','','','','','','',1,7,'data/tlanti/065H.png',0,1,2.5000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(993,'066H','9111516','','','','','','',1,7,'data/tlanti/066H.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(994,'067H','9129717','','','','','','',1,7,'data/tlanti/067H.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(995,'068H','9147918','','','','','','',1,7,'data/tlanti/068H.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(996,'069H','9166119','','','','','','',1,7,'data/tlanti/069H.png',0,1,2.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(997,'070H','9184320','','','','','','',1,7,'data/tlanti/070H.png',0,1,4.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(998,'071H','9202521','','','','','','',1,7,'data/tlanti/071H.png',0,1,6.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(999,'056H','9220722','','','','','','',1,7,'data/tlanti/056H.png',0,1,16.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1000,'057H','9238923','','','','','','',1,7,'data/tlanti/057H.png',0,1,13.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',1),(1001,'058H','9257124','','','','','','',1,7,'data/tlanti/058H.png',0,1,5.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1002,'045H','9275325','','','','','','',1,7,'data/tlanti/045H.png',0,1,36.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1003,'046H','9293526','','','','','','',1,7,'data/tlanti/046H.png',0,1,38.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1004,'030D','9311727','','','','','','',1,7,'data/tlanti/030D.png',0,1,250.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1005,'031D','9329928','','','','','','',1,7,'data/tlanti/031D.png',0,1,800.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1006,'032D','9348129','','','','','','',1,7,'data/tlanti/032D.png',0,1,10.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1007,'001D','9366330','','','','','','',1,7,'data/tlanti/001D.png',0,1,250.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1008,'002D','9384531','','','','','','',1,7,'data/tlanti/002D.png',0,1,180.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1009,'003D','9402732','','','','','','',1,7,'data/tlanti/003D.png',0,1,30.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1010,'004D','9420933','','','','','','',1,7,'data/tlanti/004D.png',0,1,40.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1011,'005D','9439134','','','','','','',1,7,'data/tlanti/005D.png',0,1,350.0000,0,0,'2018-02-24',0.00000000,5,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1012,'006D','9457335','','','','','','',1,7,'data/tlanti/006D.png',0,1,100.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1013,'007D','9475536','','','','','','',1,7,'data/tlanti/007D.png',0,1,100.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1014,'008D','9493737','','','','','','',1,7,'data/tlanti/008D.png',0,1,50.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1015,'009D','9511938','','','','','','',1,7,'data/tlanti/009D.png',0,1,150.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1016,'010D','9530139','','','','','','',1,7,'data/tlanti/010D.png',0,1,70.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1017,'012D','9548340','','','','','','',1,7,'data/tlanti/012D.png',0,1,250.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0),(1018,'013D','9566541','','','','','','',1,7,'data/tlanti/013D.png',0,1,100.0000,0,0,'2018-02-24',0.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,1,1,'2018-02-25 08:58:08','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES (1000,6,'VASOS DESECHABLES','VASOS DESECHABLES','','',''),(1001,6,'ENCENDEDOR ECONÓMICO','ENCENDEDOR ECONÓMICO','','',''),(1002,6,'CROQUETA PEDIGRI ADULTO','CROQUETA PEDIGRI ADULTO','','',''),(1003,6,'CROQUETA PEDIGREE CACHORRO','CROQUETA PEDIGREE CACHORRO','','',''),(1004,6,'Brandy Torres 10','Brandy Torres 10','','',''),(1005,6,'Disfraz Diablita','Disfraz Diablita','','',''),(1006,6,'Encendedor','Encendedor','','',''),(1007,6,'Cien Años de Soledad','Cien Años de Soledad','','',''),(1008,6,'El Laberinto de la Soledad','El Laberinto de la Soledad','','',''),(1009,6,'Muy Interesante','Muy Interesante','','',''),(1010,6,'Proceso','Proceso','','',''),(1011,6,'Mochila táctica','Mochila táctica','','',''),(1012,6,'Gafas','Gafas','','',''),(1013,6,'Gorra','Gorra','','',''),(1014,6,'Sandalias','Sandalias','','',''),(1015,6,'Sombrero','Sombrero','','',''),(1016,6,'Short','Short','','',''),(1017,6,'Traje de Baño Dama','Traje de Baño Dama','','',''),(1018,6,'Playera','Playera','','',''),(861,6,'VARILLA 3/8\" C/10','VARILLA 3/8\" C/10','','',''),(860,6,'VARILLA 3/8\"','VARILLA 3/8\"','','',''),(803,6,'CEMENTO BL CA','CEMENTO BL CA','','',''),(804,6,'CEMENTO BL CA 25 KG','CEMENTO BL CA 25 KG','','',''),(805,6,'CEMENTO BL HL','CEMENTO BL HL','','',''),(806,6,'CEMENTO BL HL 25 KG','CEMENTO BL HL 25 KG','','',''),(807,6,'CEMENTO BL HL 50 KG','CEMENTO BL HL 50 KG','','',''),(781,6,'ELECTRODO SOLD 3/32\"','ELECTRODO SOLD 3/32\"','','',''),(782,6,'ELECTRODO SOLD 3/32\" C/100','ELECTRODO SOLD 3/32\" C/100','','',''),(783,6,'ELECTRODO SOLD 3/32\" C/59 PZ','ELECTRODO SOLD 3/32\" C/59 PZ','','',''),(999,6,'FOCOS ARGOS ','FOCOS ARGOS ','','',''),(998,6,'NEXT','NEXT','','',''),(997,6,'LOPERAMIDA','LOPERAMIDA','','',''),(996,6,'CAFIASPIRINA','CAFIASPIRINA','','',''),(995,6,'ASPIRINA','ASPIRINA','','',''),(994,6,'DESENFRIOL PEDIATRICO','DESENFRIOL PEDIATRICO','','',''),(993,6,'DESENFRIOL ADULTO','DESENFRIOL ADULTO','','',''),(992,6,'CHAMPOO DE SOBRESITO VARIOS','CHAMPOO DE SOBRESITO VARIOS','','',''),(991,6,'CHAMPOO DE 333ML SAVILE','CHAMPOO DE 333ML SAVILE','','',''),(990,6,'JABON ESCUDO','JABON ESCUDO','','',''),(989,6,'JABON TOCADOR ZEST','JABON TOCADOR ZEST','','',''),(988,6,'JABON TOCADOR PALMOLIVE','JABON TOCADOR PALMOLIVE','','',''),(987,6,'PASTA DENTAL COLGATE','PASTA DENTAL COLGATE','','',''),(986,6,'CEPILLO DENTAL COLGATE','CEPILLO DENTAL COLGATE','','',''),(977,6,'Playera','Playera','','',''),(972,6,'SUAVITEL VARIOS AROMAS','SUAVITEL VARIOS AROMAS','','',''),(971,6,'CLORALEX 1 LT','CLORALEX 1 LT','','',''),(970,6,'DETERGENTE ROMA DE 1/2','DETERGENTE ROMA DE 1/2','','',''),(969,6,'DETERGEBTE ROMA DE 1K','DETERGEBTE ROMA DE 1K','','',''),(968,6,'DETERGENTE ROMA DE 1/4','DETERGENTE ROMA DE 1/4','','',''),(967,6,'TOSTADA CHARRA','TOSTADA CHARRA','','',''),(966,6,'AGUA BONAFONT 1.5','AGUA BONAFONT 1.5','','',''),(965,6,'TANG','TANG','','',''),(964,6,'VIVE 100','VIVE 100','','',''),(963,6,'BOING DE 1/2','BOING DE 1/2','','',''),(962,6,'BOING DE 1/4','BOING DE 1/4','','',''),(961,6,'DURAZNO','DURAZNO','','',''),(960,6,'PLÁTANO','PLÁTANO','','',''),(959,6,'PIÑA','PIÑA','','',''),(958,6,'PAPAYA','PAPAYA','','',''),(957,6,'MANGO','MANGO','','',''),(956,6,'PERA','PERA','','',''),(955,6,'MANZANA','MANZANA','','',''),(954,6,'UVAS','UVAS','','',''),(953,6,'COL','COL','','',''),(952,6,'LECHUGA','LECHUGA','','',''),(951,6,'EPAZOTE','EPAZOTE','','',''),(950,6,'CILANTRO','CILANTRO','','',''),(947,6,'CEBOLLA','CEBOLLA','','',''),(946,6,'PAPA','PAPA','','',''),(945,6,'AGUACATE','AGUACATE','','',''),(934,6,'FRIJOLES EN LATA','FRIJOLES EN LATA','','',''),(933,6,'MAYONESA CHICA','MAYONESA CHICA','','',''),(932,6,'MAYONESA MEDIANA','MAYONESA MEDIANA','','',''),(931,6,'ACEITE 123','ACEITE 123','','',''),(930,6,'ACEITE CRISTAL 1L ','ACEITE CRISTAL 1L ','','',''),(929,6,'PAÑALES JUMBO','PAÑALES JUMBO','','',''),(926,6,'CREMA ALPURA 1/4','CREMA ALPURA 1/4','','',''),(917,6,'FRIJOL AMERICANO','FRIJOL AMERICANO','','',''),(916,6,'AZUCAR','AZUCAR','','',''),(915,6,'LECHITAS SABORES 1/4','LECHITAS SABORES 1/4','','',''),(914,6,'LECHE LALA FRESCA','LECHE LALA FRESCA','','',''),(913,6,'LECHE ALPURA','LECHE ALPURA','','',''),(912,6,'NUTRILECHE','NUTRILECHE','','',''),(911,6,'HUEVO','HUEVO','','',''),(910,6,'GALLETA MARIA','GALLETA MARIA','','',''),(909,6,'GALLETA EMPERADOR','GALLETA EMPERADOR','','',''),(908,6,'SABRITAS PAPAS','SABRITAS PAPAS','','',''),(907,6,'COCA COLA DE 600ML','COCA COLA DE 600ML','','',''),(906,6,'COCA COLA DE DE 2 LT','COCA COLA DE DE 2 LT','','',''),(905,6,'COCA COLA DE 1.25','COCA COLA DE 1.25','','',''),(904,6,'Tamagotchi','Tamagotchi','','',''),(903,6,'Juego de Química Alegría','Juego de Química Alegría','','',''),(902,6,'Juego de Maquillaje Alegría','Juego de Maquillaje Alegría','','',''),(901,6,'Muñeca Barbie','Muñeca Barbie','','',''),(900,6,'Muñeco guerrero','Muñeco guerrero','','',''),(899,6,'Camión','Camión','','',''),(898,6,'Carro Eléctrico','Carro Eléctrico','','',''),(897,6,'Cubilete','Cubilete','','',''),(896,6,'Carta Pocker','Carta Pocker','','',''),(895,6,'Carta Española','Carta Española','','',''),(894,6,'Turista Mundial','Turista Mundial','','',''),(893,6,'Medias Deportivas','Medias Deportivas','','',''),(892,6,'Espinilleras','Espinilleras','','',''),(891,6,'Balón Basketbol','Balón Basketbol','','',''),(890,6,'Balón Futbol','Balón Futbol','','',''),(889,6,'Loción Bath and Body','Loción Bath and Body','','',''),(888,6,'Baby Doll Vicky Form','Baby Doll Vicky Form','','',''),(887,6,'SICO Sensitive 3','SICO Sensitive 3','','',''),(886,6,'Chocolates Rocher','Chocolates Rocher','','',''),(885,6,'Arreglo rosas','Arreglo rosas','','',''),(884,6,'CLAVO P/CONCRETO 2\" 4','CLAVO P/CONCRETO 2\" 4','','',''),(883,6,'CLAVO P/CONCRETO 2\" 215 PZ','CLAVO P/CONCRETO 2\" 215 PZ','','',''),(882,6,'CLAVO P/CONCRETO 2\" 100','CLAVO P/CONCRETO 2\" 100','','',''),(881,6,'CLAVO P/CONCRETO 2 1/2\" 3','CLAVO P/CONCRETO 2 1/2\" 3','','',''),(880,6,'CLAVO P/CONCRETO 2 1/2\" 170 PZ','CLAVO P/CONCRETO 2 1/2\" 170 PZ','','',''),(879,6,'CLAVO P/CONCRETO 2 1/2\" 100','CLAVO P/CONCRETO 2 1/2\" 100','','',''),(878,6,'CLAVO P/CONCRETO 1\" 7','CLAVO P/CONCRETO 1\" 7','','',''),(877,6,'CLAVO P/CONCRETO 1\" 390 PZ','CLAVO P/CONCRETO 1\" 390 PZ','','',''),(874,6,'CLAVO P/CONCRETO 1 1/2\" 270 PZ','CLAVO P/CONCRETO 1 1/2\" 270 PZ','','',''),(873,6,'CLAVO P/CONCRETO 1 1/2\" 100','CLAVO P/CONCRETO 1 1/2\" 100','','',''),(872,6,'CLAVO 1\" 20','CLAVO 1\" 20','','',''),(871,6,'CLAVO 1\" 100','CLAVO 1\" 100','','',''),(870,6,'CLAVO 1\"','CLAVO 1\"','','',''),(869,6,'RED HEXAGONAL 25MMX1.00MT','RED HEXAGONAL 25MMX1.00MT','','',''),(865,6,'VARILLA 3/8\" HYLSA C/150 PZ','VARILLA 3/8\" HYLSA C/150 PZ','','',''),(859,6,'VARILLA 1/2\" C/84 PZ','VARILLA 1/2\" C/84 PZ','','',''),(858,6,'VARILLA 1/2\" C/10','VARILLA 1/2\" C/10','','',''),(857,6,'VARILLA 1/2\"','VARILLA 1/2\"','','',''),(856,6,'Tabique ligero C/1000 NF','Tabique ligero C/1000 NF','','',''),(855,6,'Tabique ligero C/100 NF','Tabique ligero C/100 NF','','',''),(854,6,'TABIQUE LIGERO C/100','TABIQUE LIGERO C/100','','',''),(853,6,'Tabique ligero C/10','Tabique ligero C/10','','',''),(852,6,'Tabique ligero','Tabique ligero','','',''),(851,6,'PEGA AZULEJO CREST 20 KG','PEGA AZULEJO CREST 20 KG','','',''),(850,6,'PEGA AZULEJO ADHETEC M. 50 BT','PEGA AZULEJO ADHETEC M. 50 BT','','',''),(849,6,'PEGA AZULEJO ADHETEC M. 20 KG','PEGA AZULEJO ADHETEC M. 20 KG','','',''),(848,6,'MORTERO HL 50 KG','MORTERO HL 50 KG','','',''),(846,6,'MORTERO HL','MORTERO HL','','',''),(847,6,'MORTERO HL 20 BLT','MORTERO HL 20 BLT','','',''),(845,6,'MORTERO CA 50 KG','MORTERO CA 50 KG','','',''),(844,6,'MORTERO C.A. 20 BTOS','MORTERO C.A. 20 BTOS','','',''),(843,6,'Lamina carton rj gsa 20','Lamina carton rj gsa 20','','',''),(842,6,'Lamina carton rj gsa 120 X 60 CM','Lamina carton rj gsa 120 X 60 CM','','',''),(841,6,'Lamina cartón ng gsa 20','Lamina cartón ng gsa 20','','',''),(840,6,'Lamina cartón ng gsa 120 X 60 CM','Lamina cartón ng gsa 120 X 60 CM','','',''),(839,6,'Grava ligera 6','Grava ligera 6','','',''),(838,6,'Grava ligera 3','Grava ligera 3','','',''),(837,6,'Grava ligera 1/2','Grava ligera 1/2','','',''),(836,6,'Grava ligera 1','Grava ligera 1','','',''),(835,6,'Grava costal 2 botes','Grava costal 2 botes','','',''),(834,6,'ELECTROMALLA 2.5 X 40 MT ROLLO','ELECTROMALLA 2.5 X 40 MT ROLLO','','',''),(833,6,'ELECTROMALLA 2.5 MT C/10 MT','ELECTROMALLA 2.5 MT C/10 MT','','',''),(828,6,'CLAVO 3\" C/100','CLAVO 3\" C/100','','',''),(824,6,'CLAVO 2\"','CLAVO 2\"','','',''),(823,6,'CLAVO 2 1/2\" SOBRE C/20','CLAVO 2 1/2\" SOBRE C/20','','',''),(822,6,'CLAVO 2 1/2\" C/100','CLAVO 2 1/2\" C/100','','',''),(821,6,'CLAVO 2 1/2\"','CLAVO 2 1/2\"','','',''),(820,6,'CLAVO 1 1/2\" 20','CLAVO 1 1/2\" 20','','',''),(819,6,'CLAVO 1 1/2\" 100','CLAVO 1 1/2\" 100','','',''),(818,6,'CLAVO 1 1/2\"','CLAVO 1 1/2\"','','',''),(817,6,'Cero grueso 50 kg','Cero grueso 50 kg','','',''),(816,6,'Cero fino 50 kg','Cero fino 50 kg','','',''),(815,6,'CEMENTO GR HL 50 KG','CEMENTO GR HL 50 KG','','',''),(814,6,'CEMENTO GR HL 25 KG','CEMENTO GR HL 25 KG','','',''),(813,6,'CEMENTO GR HL 20 BLT','CEMENTO GR HL 20 BLT','','',''),(812,6,'CEMENTO GR HL','CEMENTO GR HL','','',''),(811,6,'CEMENTO GR CA 50 KG','CEMENTO GR CA 50 KG','','',''),(810,6,'CEMENTO GR CA 25 KG','CEMENTO GR CA 25 KG','','',''),(809,6,'CEMENTO GR CA 20 BLT','CEMENTO GR CA 20 BLT','','',''),(808,6,'CEMENTO GR CA','CEMENTO GR CA','','',''),(802,6,'CAL CALIDRA 25KG','CAL CALIDRA 25KG','','',''),(801,6,'CAL CALIDRA','CAL CALIDRA','','',''),(800,6,'Arena ligera 6','Arena ligera 6','','',''),(799,6,'Arena ligera 3','Arena ligera 3','','',''),(798,6,'Arena ligera 1/2','Arena ligera 1/2','','',''),(797,6,'Arena ligera 1','Arena ligera 1','','',''),(796,6,'Arena ligera','Arena ligera','','',''),(795,6,'Arena costal 2 botes','Arena costal 2 botes','','',''),(794,6,'ANILLO ESCARPIO 20 X 40 X 50 CM','ANILLO ESCARPIO 20 X 40 X 50 CM','','',''),(790,6,'ANILLO 10 X 30 CM','ANILLO 10 X 30 CM','','',''),(789,6,'ANILLO 10 X 25 CM','ANILLO 10 X 25 CM','','',''),(788,6,'ANILLO 10 X 20 CM','ANILLO 10 X 20 CM','','',''),(787,6,'ANILLO 10 X 15 CM','ANILLO 10 X 15 CM','','',''),(786,6,'ALAMBRON 1/4\"','ALAMBRON 1/4\"','','',''),(785,6,'ALAMBRE RECOCIDO C/100','ALAMBRE RECOCIDO C/100','','',''),(784,6,'ALAMBRE RECOCIDO','ALAMBRE RECOCIDO','','',''),(780,6,'ELECTRODO SOLD 1/8\" C/34 PZ','ELECTRODO SOLD 1/8\" C/34 PZ','','',''),(779,6,'ELECTRODO SOLD 1/8\" C/100','ELECTRODO SOLD 1/8\" C/100','','',''),(778,6,'ELECTRODO SOLD 1/8\"','ELECTRODO SOLD 1/8\"','','',''),(777,6,'CUEBRE BOCA MASCARILLA','CUEBRE BOCA MASCARILLA','','',''),(776,6,'DISCO CORTE METAL (2014) 4 1/2\"','DISCO CORTE METAL (2014) 4 1/2\"','','',''),(775,6,'BISAGRA SOLDABLE 5/8\"','BISAGRA SOLDABLE 5/8\"','','',''),(774,6,'TAQUETE PLAST 5/16\" AP CJA C/100','TAQUETE PLAST 5/16\" AP CJA C/100','','',''),(773,6,'TAQUETE PLAST 5/16\" AP BOLSA C/3','TAQUETE PLAST 5/16\" AP BOLSA C/3','','',''),(772,6,'TAQUETE PLAST 5/16\" AP BLSA C/10','TAQUETE PLAST 5/16\" AP BLSA C/10','','',''),(771,6,'TAQUETE PLAST 1/4\" AP CAJA C/100','TAQUETE PLAST 1/4\" AP CAJA C/100','','',''),(770,6,'TAQUETE PLAST 1/4\" AP BOLSA C/4','TAQUETE PLAST 1/4\" AP BOLSA C/4','','',''),(768,6,'Birlo p/techar 3/16 x 8\"','Birlo p/techar 3/16 x 8\"','','',''),(769,6,'TAQUETE PLAST 1/4\" AP BOLSA C/10','TAQUETE PLAST 1/4\" AP BOLSA C/10','','',''),(985,6,'PAPEL HIGIENICO HORTENCIA VERDE','PAPEL HIGIENICO HORTENCIA VERDE','','',''),(984,6,'PAPEL HIGIENICO REGIO','PAPEL HIGIENICO REGIO','','',''),(983,6,'Gorra','Gorra','','',''),(982,6,'Pantaleta','Pantaleta','','',''),(981,6,'Trusa','Trusa','','',''),(980,6,'Calcetas','Calcetas','','',''),(979,6,'Calcetines','Calcetines','','',''),(978,6,'Camiseta','Camiseta','','',''),(976,6,'Portarretratos','Portarretratos','','',''),(975,6,'VELADORA','VELADORA','','',''),(974,6,'DAWNY VARIOS AROMAS','DAWNY VARIOS AROMAS','','',''),(973,6,'ENSUEÑO VARIOS AROMAS','ENSUEÑO VARIOS AROMAS','','',''),(949,6,'PEREJIL','PEREJIL','','',''),(948,6,'AJO','AJO','','',''),(944,6,'CHILE VERDE','CHILE VERDE','','',''),(943,6,'TOMATE','TOMATE','','',''),(942,6,'JITOMATE','JITOMATE','','',''),(941,6,'CHIPOTLE SAN MARCOS MED','CHIPOTLE SAN MARCOS MED','','',''),(940,6,'CHIPOTLES SAN MARCOS CH','CHIPOTLES SAN MARCOS CH','','',''),(939,6,'CHILES EN LATA RAJAS MED','CHILES EN LATA RAJAS MED','','',''),(938,6,'CHILES EN LATA RAJAS CH','CHILES EN LATA RAJAS CH','','',''),(937,6,'ATUN EN ACEITE','ATUN EN ACEITE','','',''),(936,6,'SOPAS EN GENERAL LA MODERNA','SOPAS EN GENERAL LA MODERNA','','',''),(935,6,'ESPAGUETTI','ESPAGUETTI','','',''),(928,6,'PAÑALES GRANDE ','PAÑALES GRANDE ','','',''),(927,6,'CREMA ALPURA 1/2','CREMA ALPURA 1/2','','',''),(925,6,'QUESO DOBLE CREMA','QUESO DOBLE CREMA','','',''),(924,6,'JAMON FUD ECONÓMICO','JAMON FUD ECONÓMICO','','',''),(923,6,'LONGANIZA','LONGANIZA','','',''),(922,6,'QUESO PANELA','QUESO PANELA','','',''),(921,6,'QUESO CANASTO ','QUESO CANASTO ','','',''),(920,6,'QUESO OAXACA','QUESO OAXACA','','',''),(919,6,'NESCAFE SOBRESITO','NESCAFE SOBRESITO','','',''),(918,6,'ARROZ','ARROZ','','',''),(876,6,'CLAVO P/CONCRETO 1\" 100','CLAVO P/CONCRETO 1\" 100','','',''),(875,6,'CLAVO P/CONCRETO 1 1/2\" 5','CLAVO P/CONCRETO 1 1/2\" 5','','',''),(868,6,'YESO SUPREMO 34.5 KG','YESO SUPREMO 34.5 KG','','',''),(867,6,'YESO SUPREMO 28 BULTOS','YESO SUPREMO 28 BULTOS','','',''),(866,6,'YESO SUPREMO','YESO SUPREMO','','',''),(864,6,'VARILLA 3/8\" HYLSA C/10','VARILLA 3/8\" HYLSA C/10','','',''),(863,6,'VARILLA 3/8\" HYLSA','VARILLA 3/8\" HYLSA','','',''),(862,6,'VARILLA 3/8\" C/150 PZ','VARILLA 3/8\" C/150 PZ','','',''),(832,6,'ELECTROMALLA 2.5 MT','ELECTROMALLA 2.5 MT','','',''),(831,6,'CLAVO 4\" SOBRE C/20','CLAVO 4\" SOBRE C/20','','',''),(830,6,'CLAVO 4\" C/100','CLAVO 4\" C/100','','',''),(829,6,'CLAVO 4\"','CLAVO 4\"','','',''),(827,6,'CLAVO 3\"','CLAVO 3\"','','',''),(826,6,'CLAVO 2\" SOBRE C/20','CLAVO 2\" SOBRE C/20','','',''),(825,6,'CLAVO 2\" C/100','CLAVO 2\" C/100','','',''),(793,6,'ANILLO 15 X 25 CM','ANILLO 15 X 25 CM','','',''),(792,6,'ANILLO 15 X 20 CM','ANILLO 15 X 20 CM','','',''),(791,6,'ANILLO 15 X 15 CM','ANILLO 15 X 15 CM','','',''),(767,6,'BIRLO P/TECHAR 3/16 X 4\"','BIRLO P/TECHAR 3/16 X 4\"','','',''),(766,6,'Birlo p/techar 3/16 x 12\"','Birlo p/techar 3/16 x 12\"','','',''),(765,6,'Birlo p/techar 3/16 x 10\"','Birlo p/techar 3/16 x 10\"','','',''),(764,6,'ARMELLA CERRADA 23 X 110','ARMELLA CERRADA 23 X 110','','',''),(763,6,'ARMELLA CERRADA 21 X 80','ARMELLA CERRADA 21 X 80','','',''),(762,6,'ABRAZADERA UÑA 1/2\" PQ C/10','ABRAZADERA UÑA 1/2\" PQ C/10','','',''),(759,6,'ABRAZADERA S/FIN N.8 5/8\" C/10','ABRAZADERA S/FIN N.8 5/8\" C/10','','',''),(760,6,'ABRAZADERA S/FIN N.8 5/8-7/8\"','ABRAZADERA S/FIN N.8 5/8-7/8\"','','',''),(761,6,'ABRAZADERA UÑA 1/2\"','ABRAZADERA UÑA 1/2\"','','',''),(506,6,'SEGUETA FINO 24 D BIMETAL TRUPER','SEGUETA FINO 24 D BIMETAL TRUPER','','',''),(507,6,'SEGUETA GRUESO 18 D BIMETAL TRUP','SEGUETA GRUESO 18 D BIMETAL TRUP','','',''),(508,6,'ACIDO MURIATICO 1 LT','ACIDO MURIATICO 1 LT','','',''),(509,6,'BOLSA BASURA EX GD MEM','BOLSA BASURA EX GD MEM','','',''),(510,6,'KOLA LOKA LIQUIDO TUBO 2 G KRAZY','KOLA LOKA LIQUIDO TUBO 2 G KRAZY','','',''),(511,6,'LAZO PLASTICO 04 MM','LAZO PLASTICO 04 MM','','',''),(512,6,'LAZO PLASTICO 04 MM C/100','LAZO PLASTICO 04 MM C/100','','',''),(513,6,'LAZO PLASTICO 04 MM C/130 MT','LAZO PLASTICO 04 MM C/130 MT','','',''),(514,6,'LAZO PLASTICO 08 MM','LAZO PLASTICO 08 MM','','',''),(515,6,'LAZO PLASTICO 08 MM C/100','LAZO PLASTICO 08 MM C/100','','',''),(516,6,'LAZO PLASTICO 08 MM C/34 MT','LAZO PLASTICO 08 MM C/34 MT','','',''),(517,6,'LAZO PLASTICO 11 MM','LAZO PLASTICO 11 MM','','',''),(518,6,'LAZO PLASTICO 11 MM C/100','LAZO PLASTICO 11 MM C/100','','',''),(519,6,'LAZO PLASTICO 11 MM C/19.5 MT','LAZO PLASTICO 11 MM C/19.5 MT','','',''),(520,6,'MENSULA NEGRA CHAROLADA # 6 PZ R','MENSULA NEGRA CHAROLADA # 6 PZ R','','',''),(521,6,'PEGA MOSCAS CAZAFACIL','PEGA MOSCAS CAZAFACIL','','',''),(522,6,'PEGA MOSCAS CAZAFACIL C/4','PEGA MOSCAS CAZAFACIL C/4','','',''),(523,6,'PEGAMENTO CONTACTO 5000 C/100','PEGAMENTO CONTACTO 5000 C/100','','',''),(524,6,'PEGAMENTO CONTACTO 5000 RESISTOL','PEGAMENTO CONTACTO 5000 RESISTOL','','',''),(525,6,'PIOLA DELGADA #3','PIOLA DELGADA #3','','',''),(526,6,'PIOLA DELGADA N.3','PIOLA DELGADA N.3','','',''),(527,6,'PIOLA EXTRA GRUESA N.6','PIOLA EXTRA GRUESA N.6','','',''),(528,6,'PIOLA EXTRA GRUESA N.6 C/40 MT','PIOLA EXTRA GRUESA N.6 C/40 MT','','',''),(529,6,'PIOLA GRUESA N.5','PIOLA GRUESA N.5','','',''),(530,6,'PIOLA GRUESA N.5 C/57 MT','PIOLA GRUESA N.5 C/57 MT','','',''),(531,6,'SEGUETA FINO 24 D NICHOLSON','SEGUETA FINO 24 D NICHOLSON','','',''),(532,6,'SEGUETA GRUESO 18 D NICHOLSON','SEGUETA GRUESO 18 D NICHOLSON','','',''),(533,6,'PLUMA BIC','PLUMA BIC','','',''),(534,6,'PLUMA PAPER MATE','PLUMA PAPER MATE','','',''),(535,6,'LAPIZ MAPED','LAPIZ MAPED','','',''),(536,6,'GOMA FACTIS','GOMA FACTIS','','',''),(537,6,'RESISTOL DIXON','RESISTOL DIXON','','',''),(538,6,'LIBRETA ECONOMICA','LIBRETA ECONOMICA','','',''),(539,6,'COLOR ROJO NORMA','COLOR ROJO NORMA','','',''),(540,6,'HOJA DE COLOR','HOJA DE COLOR','','',''),(541,6,'HOJA BLANCA','HOJA BLANCA','','',''),(542,6,'FOLDER','FOLDER','','',''),(543,6,'ACUARELA PELICAN','ACUARELA PELICAN','','',''),(544,6,'BROCHE BACO','BROCHE BACO','','',''),(545,6,'CLIPS BACO','CLIPS BACO','','',''),(546,6,'GRAPAS ESTANDAR','GRAPAS ESTANDAR','','',''),(547,6,'PAPEL LUSTRE','PAPEL LUSTRE','','',''),(548,6,'PAPEL CHINA','PAPEL CHINA','','',''),(549,6,'PLIEGO DE MICA','PLIEGO DE MICA','','',''),(550,6,'CARTULINA DE COLORES','CARTULINA DE COLORES','','',''),(551,6,'CARTULINA BLANCA','CARTULINA BLANCA','','',''),(552,6,'PAPEL CASCARON 1/8','PAPEL CASCARON 1/8','','',''),(553,6,'SACAPUNTAS ECONÓMICO','SACAPUNTAS ECONÓMICO','','',''),(554,6,'COLA LOKA','COLA LOKA','','',''),(555,6,'DIUREX HANEL','DIUREX HANEL','','',''),(556,6,'COLORES MAPA','COLORES MAPA','','',''),(557,6,'CRAYOLAS 12 GRUESAS CARMEN','CRAYOLAS 12 GRUESAS CARMEN','','',''),(558,6,'PINTURAS VINCI','PINTURAS VINCI','','',''),(559,6,'PINCELES ECONOMICOS','PINCELES ECONOMICOS','','',''),(560,6,'RESISTOL LIQUIDO ECONÓMICO','RESISTOL LIQUIDO ECONÓMICO','','',''),(561,6,'CALCOMANIAS','CALCOMANIAS','','',''),(562,6,'PUNTILLAS','PUNTILLAS','','',''),(563,6,'SOBRE MANILA','SOBRE MANILA','','',''),(564,6,'CELOFAN','CELOFAN','','',''),(565,6,'CALCULADORA BASICA','CALCULADORA BASICA','','',''),(566,6,'CALCULADORA CIENTIFICA','CALCULADORA CIENTIFICA','','',''),(567,6,'Lámpara','Lámpara','','',''),(568,6,'Lapicero','Lapicero','','',''),(569,6,'Engrapadora','Engrapadora','','',''),(570,6,'Quitagrapas','Quitagrapas','','',''),(571,6,'Calculadora Simple','Calculadora Simple','','',''),(572,6,'Calculadora Científica','Calculadora Científica','','',''),(573,6,'Pluma fuente','Pluma fuente','','',''),(574,6,'Portaminas','Portaminas','','',''),(575,6,'Corbata','Corbata','','',''),(576,6,'Memoria USB 20 GB','Memoria USB 20 GB','','',''),(577,6,'Mouse','Mouse','','',''),(578,6,'Teclado','Teclado','','',''),(579,6,'CD Grabable 300MB','CD Grabable 300MB','','',''),(580,6,'usb','usb','','',''),(581,6,'Cinta adhesiva','Cinta adhesiva','','',''),(582,6,'Revisteros','Revisteros','','',''),(583,6,'Organizadores de escritorio','Organizadores de escritorio','','',''),(584,6,'Post-it','Post-it','','',''),(585,6,'Portadocumentos de plástico','Portadocumentos de plástico','','',''),(586,6,'organizadores de documentos','organizadores de documentos','','',''),(587,6,'Tijeras ','Tijeras ','','',''),(588,6,'AEROSOL BLANCO 400ML ACUARIO','AEROSOL BLANCO 400ML ACUARIO','','',''),(589,6,'AEROSOL NEGRO 400ML ACUARIO','AEROSOL NEGRO 400ML ACUARIO','','',''),(590,6,'AEROSOL NEGRO MATE 400ML ACUARIO','AEROSOL NEGRO MATE 400ML ACUARIO','','',''),(591,6,'Blanco españa','Blanco españa','','',''),(592,6,'Blanco españa bulto c/25 kg','Blanco españa bulto c/25 kg','','',''),(593,6,'CUÑA ACERO S/MANGO CHICA','CUÑA ACERO S/MANGO CHICA','','',''),(594,6,'CUÑA ACERO S/MANGO GRANDE','CUÑA ACERO S/MANGO GRANDE','','',''),(595,6,'Estopa','Estopa','','',''),(596,6,'Estopa C/100','Estopa C/100','','',''),(597,6,'Gasolina blanca','Gasolina blanca','','',''),(598,6,'Gasolina blanca C/100','Gasolina blanca C/100','','',''),(599,6,'LIJA AGUA N. 180','LIJA AGUA N. 180','','',''),(600,6,'LIJA AGUA N. 220','LIJA AGUA N. 220','','',''),(601,6,'LIJA AGUA N. 320','LIJA AGUA N. 320','','',''),(602,6,'LIJA AGUA N. 400','LIJA AGUA N. 400','','',''),(603,6,'LIJA ESMERIL EXT. GRUESA N. 36 F','LIJA ESMERIL EXT. GRUESA N. 36 F','','',''),(604,6,'LIJA ESMERIL OXALUM ROJA N.36 FA','LIJA ESMERIL OXALUM ROJA N.36 FA','','',''),(605,6,'Petroleo','Petroleo','','',''),(606,6,'Petroleo C/100','Petroleo C/100','','',''),(607,6,'Thinner std','Thinner std','','',''),(608,6,'Thinner std 1/2','Thinner std 1/2','','',''),(609,6,'LIJA ESMERIL GRUESA N. 50 FANDEL','LIJA ESMERIL GRUESA N. 50 FANDEL','','',''),(610,6,'MASKING TAPE TUCK 1/2\"','MASKING TAPE TUCK 1/2\"','','',''),(611,6,'MASKING TAPE TUCK 3/4\" 110','MASKING TAPE TUCK 3/4\" 110','','',''),(612,6,'ALAMBRE N.12 AZTECA (CAJA C/100 ','ALAMBRE N.12 AZTECA (CAJA C/100 ','','',''),(613,6,'ALAMBRE THW SF N.12','ALAMBRE THW SF N.12','','',''),(614,6,'APAGADOR SENCILLO TAMSA','APAGADOR SENCILLO TAMSA','','',''),(615,6,'CABLE BOCINA N.18 BICOLOR','CABLE BOCINA N.18 BICOLOR','','',''),(616,6,'CABLE COAXIAL RG-59','CABLE COAXIAL RG-59','','',''),(617,6,'CABLE P/BOCINA POLARIZADO N 22','CABLE P/BOCINA POLARIZADO N 22','','',''),(618,6,'CABLE POT N.12','CABLE POT N.12','','',''),(619,6,'CABLE POT N.14','CABLE POT N.14','','',''),(620,6,'CABLE POT N.14 C/100 MT','CABLE POT N.14 C/100 MT','','',''),(621,6,'CABLE POT N.16','CABLE POT N.16','','',''),(622,6,'CABLE POT N.18','CABLE POT N.18','','',''),(623,6,'CABLE THW N.10','CABLE THW N.10','','',''),(624,6,'CABLE THW N.10 CAJA C/100 MT','CABLE THW N.10 CAJA C/100 MT','','',''),(625,6,'CABLE THW N.12','CABLE THW N.12','','',''),(626,6,'CABLE THW N.12 CAJA C/100 MT','CABLE THW N.12 CAJA C/100 MT','','',''),(627,6,'CABLE THW N.14','CABLE THW N.14','','',''),(628,6,'CABLE THW N.14 CAJA C/100 MT','CABLE THW N.14 CAJA C/100 MT','','',''),(629,6,'CABLE THW N.8','CABLE THW N.8','','',''),(630,6,'CAJA METALICA ELECT 1/2\"','CAJA METALICA ELECT 1/2\"','','',''),(631,6,'CAJA METALICA ELECT 3/4\"','CAJA METALICA ELECT 3/4\"','','',''),(632,6,'CALENTADOR DE ALUMINIO N. 6','CALENTADOR DE ALUMINIO N. 6','','',''),(633,6,'CAMPANA COAXIAL ROSCA','CAMPANA COAXIAL ROSCA','','',''),(634,6,'CAMPANA COAXIAL ROSCA SOBRE C/4','CAMPANA COAXIAL ROSCA SOBRE C/4','','',''),(635,6,'CHALUPA METALICA 1/2\"','CHALUPA METALICA 1/2\"','','',''),(636,6,'CINTA AISLAR NG 18 MT PR','CINTA AISLAR NG 18 MT PR','','',''),(637,6,'CINTA AISLAR NG 9 MT PR','CINTA AISLAR NG 9 MT PR','','',''),(638,6,'CLAVIJA BAQUELITA CUADRADA SAMY','CLAVIJA BAQUELITA CUADRADA SAMY','','',''),(639,6,'CLAVIJA INDUSTRIAL . SAMY','CLAVIJA INDUSTRIAL . SAMY','','',''),(640,6,'CODO POLIDUCTO 1/2\"','CODO POLIDUCTO 1/2\"','','',''),(641,6,'CONTACTO SENCILLO','CONTACTO SENCILLO','','',''),(642,6,'FOCO HALOGENO 70 W ARGOS','FOCO HALOGENO 70 W ARGOS','','',''),(643,6,'FOCO VELA COLOR FIJO 7.5 AC','FOCO VELA COLOR FIJO 7.5 AC','','',''),(644,6,'FUSIBLE 30 AMP ABC','FUSIBLE 30 AMP ABC','','',''),(645,6,'FUSIBLE 30 AMP C/JALADERA VOLTEC','FUSIBLE 30 AMP C/JALADERA VOLTEC','','',''),(646,6,'POLIDUCTO FLEXIBLE 1/2\"','POLIDUCTO FLEXIBLE 1/2\"','','',''),(647,6,'POLIDUCTO FLEXIBLE 1/2\" 100 MT','POLIDUCTO FLEXIBLE 1/2\" 100 MT','','',''),(648,6,'POLIDUCTO FLEXIBLE 3/4\"','POLIDUCTO FLEXIBLE 3/4\"','','',''),(649,6,'POLIDUCTO FLEXIBLE 3/4\" 100 MT','POLIDUCTO FLEXIBLE 3/4\" 100 MT','','',''),(650,6,'POLIDUCTO NARAN.1/2\"ROLLO 100MT','POLIDUCTO NARAN.1/2\"ROLLO 100MT','','',''),(651,6,'POLIDUCTO NARANJA 1/2\" 1MT','POLIDUCTO NARANJA 1/2\" 1MT','','',''),(652,6,'POLIDUCTO NARANJA 3/4\"','POLIDUCTO NARANJA 3/4\"','','',''),(653,6,'POLIDUCTO NARANJA 3/4\" 100MT','POLIDUCTO NARANJA 3/4\" 100MT','','',''),(654,6,'RESISTENCIA CALENTADOR N.18','RESISTENCIA CALENTADOR N.18','','',''),(655,6,'RESISTENCIA P/CALENTADOR N. 20','RESISTENCIA P/CALENTADOR N. 20','','',''),(656,6,'SOQUET BAQUELIITA IRROMPIBLE SM','SOQUET BAQUELIITA IRROMPIBLE SM','','',''),(657,6,'TAPA P/CAJA 1/2\"','TAPA P/CAJA 1/2\"','','',''),(658,6,'LLAVE NARIZ LATON 1/2\" PR','LLAVE NARIZ LATON 1/2\" PR','','',''),(659,6,'LLAVE NARIZ LATON 1/2\" PR','LLAVE NARIZ LATON 1/2\" PR','','',''),(660,6,'CINTA TEFLON 1/2\" PRETUL','CINTA TEFLON 1/2\" PRETUL','','',''),(661,6,'CINTA TEFLON SELLA ROSCA 3/4\"','CINTA TEFLON SELLA ROSCA 3/4\"','','',''),(662,6,'CODO COBRE 1/2\" X 90','CODO COBRE 1/2\" X 90','','',''),(663,6,'CODO COBRE 3/4\" X 45','CODO COBRE 3/4\" X 45','','',''),(664,6,'CODO COBRE 3/4\" X 90','CODO COBRE 3/4\" X 90','','',''),(665,6,'CODO CPVC 1/2\" X 90','CODO CPVC 1/2\" X 90','','',''),(666,6,'CODO CPVC 3/4\" X 90','CODO CPVC 3/4\" X 90','','',''),(667,6,'CODO HIDRAULICO 1\" X 90','CODO HIDRAULICO 1\" X 90','','',''),(668,6,'CODO HIDRAULICO 1/2\" X 90','CODO HIDRAULICO 1/2\" X 90','','',''),(669,6,'CODO HIDRAULICO 3/4\" X 45','CODO HIDRAULICO 3/4\" X 45','','',''),(670,6,'CODO HIDRAULICO 3/4\" X 90','CODO HIDRAULICO 3/4\" X 90','','',''),(671,6,'CODO PPR 1/2\" X 90','CODO PPR 1/2\" X 90','','',''),(672,6,'CODO PVC 1 1/2\" X 90','CODO PVC 1 1/2\" X 90','','',''),(673,6,'CODO PVC 2\" X 45','CODO PVC 2\" X 45','','',''),(674,6,'CODO PVC 2\" X 90','CODO PVC 2\" X 90','','',''),(675,6,'CODO PVC 3\" X 90','CODO PVC 3\" X 90','','',''),(676,6,'CODO PVC 4\" X 45','CODO PVC 4\" X 45','','',''),(677,6,'CODO PVC 4\" X 90','CODO PVC 4\" X 90','','',''),(678,6,'CONECTOR COBRE R/E 1/2\"','CONECTOR COBRE R/E 1/2\"','','',''),(679,6,'CONECTOR COBRE R/E 3/4\"','CONECTOR COBRE R/E 3/4\"','','',''),(680,6,'CONECTOR COBRE R/I 1/2\"','CONECTOR COBRE R/I 1/2\"','','',''),(681,6,'CONECTOR CPVC HEMBRA 1/2\"','CONECTOR CPVC HEMBRA 1/2\"','','',''),(682,6,'CONECTOR CPVC MACHO 1/2\"','CONECTOR CPVC MACHO 1/2\"','','',''),(683,6,'CONECTOR HIDRAULICO R/E 1/2\"','CONECTOR HIDRAULICO R/E 1/2\"','','',''),(684,6,'CONECTOR HIDRAULICO R/I 1/2\"','CONECTOR HIDRAULICO R/I 1/2\"','','',''),(685,6,'CONECTOR P/LAVADERO PVC 2\"','CONECTOR P/LAVADERO PVC 2\"','','',''),(686,6,'COPLE COBRE 1/2\"','COPLE COBRE 1/2\"','','',''),(687,6,'COPLE COBRE 3/4\"','COPLE COBRE 3/4\"','','',''),(688,6,'COPLE CPVC 1/2\"','COPLE CPVC 1/2\"','','',''),(689,6,'COPLE CPVC 3/4\"','COPLE CPVC 3/4\"','','',''),(690,6,'COPLE HIDRAULICO 1/2\"','COPLE HIDRAULICO 1/2\"','','',''),(691,6,'COPLE HIDRAULICO 3/4\"','COPLE HIDRAULICO 3/4\"','','',''),(692,6,'COPLE PVC 2\"','COPLE PVC 2\"','','',''),(693,6,'COPLE PVC 4\"','COPLE PVC 4\"','','',''),(694,6,'GAS BUTANO 495 ML STRATON','GAS BUTANO 495 ML STRATON','','',''),(695,6,'JUNTA PROEL C/CONO P/W.C.','JUNTA PROEL C/CONO P/W.C.','','',''),(696,6,'LATIGUILLO P/LAVABO PRETUL','LATIGUILLO P/LAVABO PRETUL','','',''),(697,6,'LATIGUILLO WC PRETUL','LATIGUILLO WC PRETUL','','',''),(698,6,'LIJA PLOMERO FANDELI','LIJA PLOMERO FANDELI','','',''),(699,6,'LLAVE NARIZ ESFERA 1/2\"','LLAVE NARIZ ESFERA 1/2\"','','',''),(700,6,'LLAVE NARIZ ESFERA 1/2\"','LLAVE NARIZ ESFERA 1/2\"','','',''),(701,6,'LLAVE NARIZ PVC 1/2\"','LLAVE NARIZ PVC 1/2\"','','',''),(702,6,'MANGUERA GAS TRAMADA 3/8\"','MANGUERA GAS TRAMADA 3/8\"','','',''),(703,6,'MANGUERA P/GAS TRAMADA 3/8 \"','MANGUERA P/GAS TRAMADA 3/8 \"','','',''),(704,6,'PEGAMENTO PVC 60G TUBO SILER','PEGAMENTO PVC 60G TUBO SILER','','',''),(705,6,'PEGAMENTO PVC 85G SILER','PEGAMENTO PVC 85G SILER','','',''),(706,6,'PIJAS P/WC JGO C/2','PIJAS P/WC JGO C/2','','',''),(707,6,'SOLDADURA 50/50 ROLLO C/7 MT TR','SOLDADURA 50/50 ROLLO C/7 MT TR','','',''),(708,6,'SOLDADURA 50/50 TRUPER','SOLDADURA 50/50 TRUPER','','',''),(709,6,'TEE COBRE 1/2\"','TEE COBRE 1/2\"','','',''),(710,6,'TEE CPVC 1/2\"','TEE CPVC 1/2\"','','',''),(711,6,'TEE HIDRAULICA 1/2\"','TEE HIDRAULICA 1/2\"','','',''),(712,6,'TEE PVC 2\"','TEE PVC 2\"','','',''),(713,6,'TEE PVC 4\"','TEE PVC 4\"','','',''),(714,6,'TUBO COBRE T/N 1/2\"','TUBO COBRE T/N 1/2\"','','',''),(715,6,'TUBO COBRE T/N 1/2\" 6 M','TUBO COBRE T/N 1/2\" 6 M','','',''),(716,6,'TUBO CPVC 13 MM FLOWGARD METRO','TUBO CPVC 13 MM FLOWGARD METRO','','',''),(717,6,'TUBO CPVC 13 MM FLOWGARD TRAMO','TUBO CPVC 13 MM FLOWGARD TRAMO','','',''),(718,6,'TUBO PVC REFORZADO 1 1/2\"','TUBO PVC REFORZADO 1 1/2\"','','',''),(719,6,'TUBO PVC REFORZADO 1 1/2\" 6 MT','TUBO PVC REFORZADO 1 1/2\" 6 MT','','',''),(720,6,'TUBO PVC REFORZADO 2\"','TUBO PVC REFORZADO 2\"','','',''),(721,6,'TUBO PVC REFORZADO 2\" 6 MT','TUBO PVC REFORZADO 2\" 6 MT','','',''),(722,6,'TUBO PVC REFORZADO 3\"','TUBO PVC REFORZADO 3\"','','',''),(723,6,'TUBO PVC REFORZADO 3\" 6 MT','TUBO PVC REFORZADO 3\" 6 MT','','',''),(724,6,'TUBO PVC REFORZADO 4\"','TUBO PVC REFORZADO 4\"','','',''),(725,6,'TUBO PVC REFORZADO 4\" 6 MT','TUBO PVC REFORZADO 4\" 6 MT','','',''),(726,6,'TUERCA IZQUIERDA','TUERCA IZQUIERDA','','',''),(727,6,'TUERCA LOCA GAS 3/8\"','TUERCA LOCA GAS 3/8\"','','',''),(728,6,'VALVULA ANGULAR 1/2\" FOSET','VALVULA ANGULAR 1/2\" FOSET','','',''),(729,6,'VALVULA ANGULAR BARRIL 1/2\"FOSET','VALVULA ANGULAR BARRIL 1/2\"FOSET','','',''),(730,6,'CONECTOR ESPIGA PVC R/I 1/2\"','CONECTOR ESPIGA PVC R/I 1/2\"','','',''),(731,6,'CONECTOR P/LLAVE-MANG PVC R/I 1/','CONECTOR P/LLAVE-MANG PVC R/I 1/','','',''),(732,6,'EMPAQUE P/LLAVE-MANGUERA (BOLSA ','EMPAQUE P/LLAVE-MANGUERA (BOLSA ','','',''),(733,6,'MANGUERA JARDIN TRNS 1\"','MANGUERA JARDIN TRNS 1\"','','',''),(734,6,'MANGUERA JARDIN TRNS 1/2\"','MANGUERA JARDIN TRNS 1/2\"','','',''),(735,6,'MANGUERA JARDIN TRNS 3/4\"','MANGUERA JARDIN TRNS 3/4\"','','',''),(736,6,'MANGUERA JARDIN TRNS 5/8\"','MANGUERA JARDIN TRNS 5/8\"','','',''),(737,6,'MANGUERA NEGRA 1/2\" C 80','MANGUERA NEGRA 1/2\" C 80','','',''),(738,6,'MANGUERA NEGRA 1/2\" C 80 100 M','MANGUERA NEGRA 1/2\" C 80 100 M','','',''),(739,6,'MANGUERA NEGRA 3/4\" C 80','MANGUERA NEGRA 3/4\" C 80','','',''),(740,6,'MANGUERA NIVEL 5/16\"','MANGUERA NIVEL 5/16\"','','',''),(741,6,'MANGUERA P/NIVEL REFORZADA 5/16\"','MANGUERA P/NIVEL REFORZADA 5/16\"','','',''),(742,6,'MANGUERA TRAMADA JR 1/2\"','MANGUERA TRAMADA JR 1/2\"','','',''),(743,6,'MANGUERA TRAMADA JR 3/4\"','MANGUERA TRAMADA JR 3/4\"','','',''),(744,6,'MANGUERA TRAMADA JR 5/8\"','MANGUERA TRAMADA JR 5/8\"','','',''),(745,6,'MANGUERA TRAMADA JR 5/8\" 100 M','MANGUERA TRAMADA JR 5/8\" 100 M','','',''),(746,6,'NIPLE ESPIGA PVC 1/2\"','NIPLE ESPIGA PVC 1/2\"','','',''),(747,6,'ABRAZADERA OMEGA 1/2\" C/10','ABRAZADERA OMEGA 1/2\" C/10','','',''),(748,6,'ABRAZADERA OMEGA 1/2\" VOLTECH','ABRAZADERA OMEGA 1/2\" VOLTECH','','',''),(749,6,'ABRAZADERA OMEGA 3/4\" PQ C/10','ABRAZADERA OMEGA 3/4\" PQ C/10','','',''),(750,6,'ABRAZADERA OMEGA 3/4\" VOLTECH','ABRAZADERA OMEGA 3/4\" VOLTECH','','',''),(751,6,'ABRAZADERA S/FIN N.10 3/4\" C/10','ABRAZADERA S/FIN N.10 3/4\" C/10','','',''),(752,6,'ABRAZADERA S/FIN N.10 3/4-1 1/16','ABRAZADERA S/FIN N.10 3/4-1 1/16','','',''),(753,6,'ABRAZADERA S/FIN N.12 5/8\" C/10','ABRAZADERA S/FIN N.12 5/8\" C/10','','',''),(754,6,'ABRAZADERA S/FIN N.12 5/8-1 1/4\"','ABRAZADERA S/FIN N.12 5/8-1 1/4\"','','',''),(755,6,'ABRAZADERA S/FIN N.4 3/8\" C/10','ABRAZADERA S/FIN N.4 3/8\" C/10','','',''),(756,6,'ABRAZADERA S/FIN N.4 3/8\"-5/8\"','ABRAZADERA S/FIN N.4 3/8\"-5/8\"','','',''),(757,6,'ABRAZADERA S/FIN N.6 1/2\" C/10','ABRAZADERA S/FIN N.6 1/2\" C/10','','',''),(758,6,'ABRAZADERA S/FIN N.6 1/2-3/4\"','ABRAZADERA S/FIN N.6 1/2-3/4\"','','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=540 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (31,11),(31,16),(45,12),(45,13),(45,14),(47,8),(47,14);
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4096 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_profile`
--

DROP TABLE IF EXISTS `oc_product_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_profile` (
  `product_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`profile_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_profile`
--

LOCK TABLES `oc_product_profile` WRITE;
/*!40000 ALTER TABLE `oc_product_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1917 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES (1822,924,1,0),(1817,919,1,0),(1825,927,1,0),(1476,578,1,0),(1521,623,1,0),(1486,588,1,0),(1823,925,1,0),(1528,630,1,0),(1747,849,1,0),(1820,922,1,0),(1818,920,1,0),(1745,847,1,0),(1444,546,1,0),(1821,923,1,0),(1636,738,1,0),(1824,926,1,0),(1826,928,1,0),(1739,841,1,0),(1827,929,1,0),(1819,921,1,0),(1474,576,1,0),(1807,909,1,0),(1809,911,1,0),(1811,913,1,0),(1812,914,1,0),(1813,915,1,0),(1814,916,1,0),(1815,917,1,0),(1816,918,1,0),(1610,712,1,0),(1574,676,1,0),(1575,677,1,0),(1781,883,1,0),(1782,884,1,0),(1784,886,1,0),(1785,887,1,0),(1792,894,1,0),(1802,904,1,0),(1805,907,1,0),(1808,910,1,0),(1780,882,1,0),(1779,881,1,0),(1778,880,1,0),(1777,879,1,0),(1776,878,1,0),(1773,875,1,0),(1771,873,1,0),(1770,872,1,0),(1769,871,1,0),(1768,870,1,0),(1767,869,1,0),(1766,868,1,0),(1765,867,1,0),(1764,866,1,0),(1763,865,1,0),(1762,864,1,0),(1761,863,1,0),(1760,862,1,0),(1759,861,1,0),(1758,860,1,0),(1757,859,1,0),(1755,857,1,0),(1754,856,1,0),(1744,846,1,0),(1743,845,1,0),(1742,844,1,0),(1721,823,1,0),(1715,817,1,0),(1714,816,1,0),(1713,815,1,0),(1712,814,1,0),(1711,813,1,0),(1710,812,1,0),(1706,808,1,0),(1705,807,1,0),(1704,806,1,0),(1692,794,1,0),(1691,793,1,0),(1690,792,1,0),(1689,791,1,0),(1688,790,1,0),(1687,789,1,0),(1686,788,1,0),(1685,787,1,0),(1684,786,1,0),(1683,785,1,0),(1682,784,1,0),(1681,783,1,0),(1675,777,1,0),(1674,776,1,0),(1673,775,1,0),(1672,774,1,0),(1671,773,1,0),(1670,772,1,0),(1669,771,1,0),(1668,770,1,0),(1667,769,1,0),(1666,768,1,0),(1665,767,1,0),(1664,766,1,0),(1663,765,1,0),(1662,764,1,0),(1661,763,1,0),(1660,762,1,0),(1659,761,1,0),(1655,757,1,0),(1654,756,1,0),(1653,755,1,0),(1652,754,1,0),(1651,753,1,0),(1650,752,1,0),(1649,751,1,0),(1648,750,1,0),(1647,749,1,0),(1646,748,1,0),(1645,747,1,0),(1644,746,1,0),(1643,745,1,0),(1642,744,1,0),(1641,743,1,0),(1640,742,1,0),(1639,741,1,0),(1638,740,1,0),(1637,739,1,0),(1632,734,1,0),(1631,733,1,0),(1630,732,1,0),(1623,725,1,0),(1621,723,1,0),(1620,722,1,0),(1619,721,1,0),(1618,720,1,0),(1617,719,1,0),(1616,718,1,0),(1612,714,1,0),(1608,710,1,0),(1607,709,1,0),(1606,708,1,0),(1605,707,1,0),(1602,704,1,0),(1601,703,1,0),(1598,700,1,0),(1597,699,1,0),(1596,698,1,0),(1581,683,1,0),(1580,682,1,0),(1572,674,1,0),(1571,673,1,0),(1570,672,1,0),(1569,671,1,0),(1568,670,1,0),(1567,669,1,0),(1566,668,1,0),(1565,667,1,0),(1564,666,1,0),(1563,665,1,0),(1562,664,1,0),(1559,661,1,0),(1558,660,1,0),(1557,659,1,0),(1556,658,1,0),(1555,657,1,0),(1554,656,1,0),(1553,655,1,0),(1552,654,1,0),(1550,652,1,0),(1551,653,1,0),(1548,650,1,0),(1549,651,1,0),(1547,649,1,0),(1545,647,1,0),(1544,646,1,0),(1543,645,1,0),(1542,644,1,0),(1541,643,1,0),(1540,642,1,0),(1539,641,1,0),(1538,640,1,0),(1537,639,1,0),(1536,638,1,0),(1535,637,1,0),(1534,636,1,0),(1533,635,1,0),(1532,634,1,0),(1531,633,1,0),(1530,632,1,0),(1529,631,1,0),(1527,629,1,0),(1519,621,1,0),(1506,608,1,0),(1505,607,1,0),(1504,606,1,0),(1503,605,1,0),(1502,604,1,0),(1501,603,1,0),(1500,602,1,0),(1499,601,1,0),(1498,600,1,0),(1495,597,1,0),(1494,596,1,0),(1493,595,1,0),(1492,594,1,0),(1491,593,1,0),(1490,592,1,0),(1484,586,1,0),(1483,585,1,0),(1482,584,1,0),(1481,583,1,0),(1480,582,1,0),(1479,581,1,0),(1478,580,1,0),(1477,579,1,0),(1473,575,1,0),(1472,574,1,0),(1471,573,1,0),(1466,568,1,0),(1465,567,1,0),(1464,566,1,0),(1463,565,1,0),(1461,563,1,0),(1460,562,1,0),(1459,561,1,0),(1451,553,1,0),(1450,552,1,0),(1449,551,1,0),(1448,550,1,0),(1447,549,1,0),(1446,548,1,0),(1445,547,1,0),(1443,545,1,0),(1442,544,1,0),(1441,543,1,0),(1440,542,1,0),(1439,541,1,0),(1438,540,1,0),(1437,539,1,0),(1434,536,1,0),(1433,535,1,0),(1432,534,1,0),(1431,533,1,0),(1430,532,1,0),(1429,531,1,0),(1428,530,1,0),(1427,529,1,0),(1426,528,1,0),(1425,527,1,0),(1424,526,1,0),(1423,525,1,0),(1422,524,1,0),(1421,523,1,0),(1420,522,1,0),(1419,521,1,0),(1804,906,1,0),(1803,905,1,0),(1801,903,1,0),(1800,902,1,0),(1799,901,1,0),(1798,900,1,0),(1797,899,1,0),(1796,898,1,0),(1795,897,1,0),(1794,896,1,0),(1793,895,1,0),(1791,893,1,0),(1790,892,1,0),(1789,891,1,0),(1788,890,1,0),(1787,889,1,0),(1786,888,1,0),(1753,855,1,0),(1752,854,1,0),(1737,839,1,0),(1736,838,1,0),(1735,837,1,0),(1734,836,1,0),(1733,835,1,0),(1732,834,1,0),(1731,833,1,0),(1730,832,1,0),(1729,831,1,0),(1728,830,1,0),(1727,829,1,0),(1726,828,1,0),(1725,827,1,0),(1723,825,1,0),(1722,824,1,0),(1709,811,1,0),(1708,810,1,0),(1707,809,1,0),(1703,805,1,0),(1702,804,1,0),(1701,803,1,0),(1700,802,1,0),(1699,801,1,0),(1698,800,1,0),(1697,799,1,0),(1696,798,1,0),(1695,797,1,0),(1694,796,1,0),(1693,795,1,0),(1615,717,1,0),(1614,716,1,0),(1613,715,1,0),(1592,694,1,0),(1591,693,1,0),(1590,692,1,0),(1589,691,1,0),(1588,690,1,0),(1579,681,1,0),(1578,680,1,0),(1577,679,1,0),(1576,678,1,0),(1526,628,1,0),(1525,627,1,0),(1524,626,1,0),(1523,625,1,0),(1522,624,1,0),(1509,611,1,0),(1508,610,1,0),(1507,609,1,0),(1457,559,1,0),(1456,558,1,0),(1455,557,1,0),(1454,556,1,0),(1453,555,1,0),(1418,520,1,0),(1417,519,1,0),(1416,518,1,0),(1415,517,1,0),(1414,516,1,0),(1413,515,1,0),(1412,514,1,0),(1411,513,1,0),(1410,512,1,0),(1405,507,1,0),(1407,509,1,0),(1409,511,1,0),(1487,589,1,0),(1485,587,1,0),(1573,675,1,0),(1595,697,1,0),(1470,572,1,0),(1560,662,1,0),(1657,759,1,0),(1586,688,1,0),(1587,689,1,0),(1603,705,1,0),(1810,912,1,0),(1772,874,1,0),(1680,782,1,0),(1593,695,1,0),(1511,613,1,0),(1514,616,1,0),(1488,590,1,0),(1740,842,1,0),(1741,843,1,0),(1515,617,1,0),(1467,569,1,0),(1658,760,1,0),(1622,724,1,0),(1656,758,1,0),(1635,737,1,0),(1496,598,1,0),(1497,599,1,0),(1469,571,1,0),(1749,851,1,0),(1475,577,1,0),(1462,564,1,0),(1738,840,1,0),(1748,850,1,0),(1746,848,1,0),(1678,780,1,0),(1676,778,1,0),(1677,779,1,0),(1468,570,1,0),(1600,702,1,0),(1599,701,1,0),(1585,687,1,0),(1518,620,1,0),(1561,663,1,0),(1718,820,1,0),(1716,818,1,0),(1717,819,1,0),(1624,726,1,0),(1626,728,1,0),(1625,727,1,0),(1679,781,1,0),(1458,560,1,0),(1609,711,1,0),(1629,731,1,0),(1633,735,1,0),(1634,736,1,0),(1406,508,1,0),(1774,876,1,0),(1775,877,1,0),(1408,510,1,0),(1452,554,1,0),(1806,908,1,0),(1512,614,1,0),(1513,615,1,0),(1436,538,1,0),(1604,706,1,0),(1404,506,1,0),(1611,713,1,0),(1724,826,1,0),(1510,612,1,0),(1583,685,1,0),(1582,684,1,0),(1584,686,1,0),(1720,822,1,0),(1719,821,1,0),(1628,730,1,0),(1627,729,1,0),(1783,885,1,0),(1756,858,1,0),(1546,648,1,0),(1520,622,1,0),(1489,591,1,0),(1517,619,1,0),(1750,852,1,0),(1751,853,1,0),(1435,537,1,0),(1516,618,1,0),(1594,696,1,0),(1828,930,1,0),(1829,931,1,0),(1830,932,1,0),(1831,933,1,0),(1832,934,1,0),(1833,935,1,0),(1834,936,1,0),(1835,937,1,0),(1836,938,1,0),(1837,939,1,0),(1838,940,1,0),(1839,941,1,0),(1840,942,1,0),(1841,943,1,0),(1842,944,1,0),(1843,945,1,0),(1844,946,1,0),(1845,947,1,0),(1846,948,1,0),(1847,949,1,0),(1848,950,1,0),(1849,951,1,0),(1850,952,1,0),(1851,953,1,0),(1852,954,1,0),(1853,955,1,0),(1854,956,1,0),(1855,957,1,0),(1856,958,1,0),(1857,959,1,0),(1858,960,1,0),(1859,961,1,0),(1860,962,1,0),(1861,963,1,0),(1862,964,1,0),(1863,965,1,0),(1864,966,1,0),(1865,967,1,0),(1866,968,1,0),(1867,969,1,0),(1868,970,1,0),(1869,971,1,0),(1870,972,1,0),(1871,973,1,0),(1872,974,1,0),(1873,975,1,0),(1874,976,1,0),(1875,977,1,0),(1876,978,1,0),(1877,979,1,0),(1878,980,1,0),(1879,981,1,0),(1880,982,1,0),(1881,983,1,0),(1882,984,1,0),(1883,985,1,0),(1884,986,1,0),(1885,987,1,0),(1886,988,1,0),(1887,989,1,0),(1888,990,1,0),(1889,991,1,0),(1890,992,1,0),(1891,993,1,0),(1892,994,1,0),(1893,995,1,0),(1894,996,1,0),(1895,997,1,0),(1896,998,1,0),(1897,999,1,0),(1898,1000,1,0),(1899,1001,1,0),(1900,1002,1,0),(1901,1003,1,0),(1902,1004,1,0),(1903,1005,1,0),(1904,1006,1,0),(1905,1007,1,0),(1906,1008,1,0),(1907,1009,1,0),(1908,1010,1,0),(1909,1011,1,0),(1910,1012,1,0),(1911,1013,1,0),(1912,1014,1,0),(1913,1015,1,0),(1914,1016,1,0),(1915,1017,1,0),(1916,1018,1,0);
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=620 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES (533,135),(534,135),(535,135),(536,135),(537,135),(538,135),(539,135),(540,135),(541,135),(542,135),(543,135),(544,135),(545,135),(546,135),(547,135),(548,135),(549,135),(550,135),(551,135),(552,135),(553,135),(554,135),(555,135),(556,135),(557,135),(558,135),(559,135),(560,135),(561,135),(562,135),(563,135),(564,135),(565,135),(566,135),(567,120),(568,120),(569,120),(570,120),(571,120),(572,120),(573,121),(574,121),(575,121),(576,122),(577,122),(578,122),(579,122),(580,122),(581,120),(582,120),(583,120),(584,120),(585,120),(586,120),(587,120),(588,124),(589,124),(590,124),(591,124),(592,124),(593,124),(594,124),(595,124),(596,124),(597,124),(598,124),(599,124),(600,124),(601,124),(602,124),(603,124),(604,124),(605,124),(606,124),(607,124),(608,124),(609,124),(610,124),(611,124),(612,125),(613,125),(614,125),(615,125),(616,125),(617,125),(618,125),(619,125),(620,125),(621,125),(622,125),(623,125),(624,125),(625,125),(626,125),(627,125),(628,125),(629,125),(630,125),(631,125),(632,125),(633,125),(634,125),(635,125),(636,125),(637,125),(638,125),(639,125),(640,125),(641,125),(642,125),(643,125),(644,125),(645,125),(646,125),(647,125),(648,125),(649,125),(650,125),(651,125),(652,125),(653,125),(654,125),(655,125),(656,125),(657,125),(658,126),(659,126),(660,126),(661,126),(662,126),(663,126),(664,126),(665,126),(666,126),(667,126),(668,126),(669,126),(670,126),(671,126),(672,126),(673,126),(674,126),(675,126),(676,126),(677,126),(678,126),(679,126),(680,126),(681,126),(682,126),(683,126),(684,126),(685,126),(686,126),(687,126),(688,126),(689,126),(690,126),(691,126),(692,126),(693,126),(694,126),(695,126),(696,126),(697,126),(698,126),(699,126),(700,126),(701,126),(702,126),(703,126),(704,126),(705,126),(706,126),(707,126),(708,126),(709,126),(710,126),(711,126),(712,126),(713,126),(714,126),(715,126),(716,126),(717,126),(718,126),(719,126),(720,126),(721,126),(722,126),(723,126),(724,126),(725,126),(726,126),(727,126),(728,126),(729,126),(730,126),(731,126),(732,126),(733,126),(734,126),(735,126),(736,126),(737,126),(738,126),(739,126),(740,126),(741,126),(742,126),(743,126),(744,126),(745,126),(746,126),(747,127),(748,127),(749,127),(750,127),(751,127),(752,127),(753,127),(754,127),(755,127),(756,127),(757,127),(758,127),(759,127),(760,127),(761,127),(762,127),(763,127),(764,127),(765,127),(766,127),(767,127),(768,127),(769,127),(770,127),(771,127),(772,127),(773,127),(774,127),(775,130),(776,130),(777,130),(778,131),(779,131),(780,131),(781,131),(782,131),(783,131),(784,134),(785,134),(786,134),(787,134),(788,134),(789,134),(790,134),(791,134),(792,134),(793,134),(794,134),(795,134),(796,134),(797,134),(798,134),(799,134),(800,134),(801,134),(802,134),(803,134),(804,134),(805,134),(806,134),(807,134),(808,134),(809,134),(810,134),(811,134),(812,134),(813,134),(814,134),(815,134),(816,134),(817,134),(818,134),(819,134),(820,134),(821,134),(822,134),(823,134),(824,134),(825,134),(826,134),(827,134),(828,134),(829,134),(830,134),(831,134),(832,134),(833,134),(834,134),(835,134),(836,134),(837,134),(838,134),(839,134),(840,134),(841,134),(842,134),(843,134),(844,134),(845,134),(846,134),(847,134),(848,134),(849,134),(850,134),(851,134),(852,134),(853,134),(854,134),(855,134),(856,134),(857,134),(858,134),(859,134),(860,134),(861,134),(862,134),(863,134),(864,134),(865,134),(866,134),(867,134),(868,134),(869,134),(870,134),(871,134),(872,134),(873,134),(874,134),(875,134),(876,134),(877,134),(878,134),(879,134),(880,134),(881,134),(882,134),(883,134),(884,134),(885,162),(886,163),(887,159),(888,160),(890,150),(891,150),(892,150),(893,150),(894,151),(895,151),(896,151),(897,151),(898,152),(899,152),(900,152),(901,152),(902,152),(903,152),(904,153),(905,137),(906,137),(907,137),(908,137),(909,137),(910,137),(911,137),(912,137),(913,137),(914,137),(915,137),(916,137),(917,137),(918,137),(919,137),(920,137),(921,137),(922,137),(923,137),(924,137),(925,137),(926,137),(927,137),(928,137),(929,137),(930,137),(931,137),(932,137),(933,137),(934,137),(935,137),(936,137),(937,137),(938,137),(939,137),(940,137),(941,137),(942,137),(943,137),(944,137),(945,137),(946,137),(947,137),(948,137),(949,137),(950,137),(951,137),(952,137),(953,137),(954,137),(955,137),(956,137),(957,137),(958,137),(959,137),(960,137),(961,137),(962,137),(963,137),(964,137),(965,137),(966,137),(967,137),(968,138),(969,138),(970,138),(971,138),(972,138),(973,138),(974,138),(975,139),(976,139),(977,140),(978,140),(979,140),(980,140),(981,140),(982,140),(983,140),(984,141),(985,141),(986,141),(987,141),(988,141),(989,141),(990,141),(991,141),(992,141),(993,142),(994,142),(995,142),(996,142),(997,142),(998,142),(999,143),(1000,143),(1001,143),(1002,144),(1003,144),(1004,155),(1005,156),(1006,157),(1007,146),(1008,146),(1009,146),(1010,146),(1011,148),(1012,148),(1013,148),(1014,148),(1015,148),(1016,148),(1017,148),(1018,148);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (506,0),(507,0),(508,0),(509,0),(510,0),(511,0),(512,0),(513,0),(514,0),(515,0),(516,0),(517,0),(518,0),(519,0),(520,0),(521,0),(522,0),(523,0),(524,0),(525,0),(526,0),(527,0),(528,0),(529,0),(530,0),(531,0),(532,0),(533,0),(534,0),(535,0),(536,0),(537,0),(538,0),(539,0),(540,0),(541,0),(542,0),(543,0),(544,0),(545,0),(546,0),(547,0),(548,0),(549,0),(550,0),(551,0),(552,0),(553,0),(554,0),(555,0),(556,0),(557,0),(558,0),(559,0),(560,0),(561,0),(562,0),(563,0),(564,0),(565,0),(566,0),(567,0),(568,0),(569,0),(570,0),(571,0),(572,0),(573,0),(574,0),(575,0),(576,0),(577,0),(578,0),(579,0),(580,0),(581,0),(582,0),(583,0),(584,0),(585,0),(586,0),(587,0),(588,0),(589,0),(590,0),(591,0),(592,0),(593,0),(594,0),(595,0),(596,0),(597,0),(598,0),(599,0),(600,0),(601,0),(602,0),(603,0),(604,0),(605,0),(606,0),(607,0),(608,0),(609,0),(610,0),(611,0),(612,0),(613,0),(614,0),(615,0),(616,0),(617,0),(618,0),(619,0),(620,0),(621,0),(622,0),(623,0),(624,0),(625,0),(626,0),(627,0),(628,0),(629,0),(630,0),(631,0),(632,0),(633,0),(634,0),(635,0),(636,0),(637,0),(638,0),(639,0),(640,0),(641,0),(642,0),(643,0),(644,0),(645,0),(646,0),(647,0),(648,0),(649,0),(650,0),(651,0),(652,0),(653,0),(654,0),(655,0),(656,0),(657,0),(658,0),(659,0),(660,0),(661,0),(662,0),(663,0),(664,0),(665,0),(666,0),(667,0),(668,0),(669,0),(670,0),(671,0),(672,0),(673,0),(674,0),(675,0),(676,0),(677,0),(678,0),(679,0),(680,0),(681,0),(682,0),(683,0),(684,0),(685,0),(686,0),(687,0),(688,0),(689,0),(690,0),(691,0),(692,0),(693,0),(694,0),(695,0),(696,0),(697,0),(698,0),(699,0),(700,0),(701,0),(702,0),(703,0),(704,0),(705,0),(706,0),(707,0),(708,0),(709,0),(710,0),(711,0),(712,0),(713,0),(714,0),(715,0),(716,0),(717,0),(718,0),(719,0),(720,0),(721,0),(722,0),(723,0),(724,0),(725,0),(726,0),(727,0),(728,0),(729,0),(730,0),(731,0),(732,0),(733,0),(734,0),(735,0),(736,0),(737,0),(738,0),(739,0),(740,0),(741,0),(742,0),(743,0),(744,0),(745,0),(746,0),(747,0),(748,0),(749,0),(750,0),(751,0),(752,0),(753,0),(754,0),(755,0),(756,0),(757,0),(758,0),(759,0),(760,0),(761,0),(762,0),(763,0),(764,0),(765,0),(766,0),(767,0),(768,0),(769,0),(770,0),(771,0),(772,0),(773,0),(774,0),(775,0),(776,0),(777,0),(778,0),(779,0),(780,0),(781,0),(782,0),(783,0),(784,0),(785,0),(786,0),(787,0),(788,0),(789,0),(790,0),(791,0),(792,0),(793,0),(794,0),(795,0),(796,0),(797,0),(798,0),(799,0),(800,0),(801,0),(802,0),(803,0),(804,0),(805,0),(806,0),(807,0),(808,0),(809,0),(810,0),(811,0),(812,0),(813,0),(814,0),(815,0),(816,0),(817,0),(818,0),(819,0),(820,0),(821,0),(822,0),(823,0),(824,0),(825,0),(826,0),(827,0),(828,0),(829,0),(830,0),(831,0),(832,0),(833,0),(834,0),(835,0),(836,0),(837,0),(838,0),(839,0),(840,0),(841,0),(842,0),(843,0),(844,0),(845,0),(846,0),(847,0),(848,0),(849,0),(850,0),(851,0),(852,0),(853,0),(854,0),(855,0),(856,0),(857,0),(858,0),(859,0),(860,0),(861,0),(862,0),(863,0),(864,0),(865,0),(866,0),(867,0),(868,0),(869,0),(870,0),(871,0),(872,0),(873,0),(874,0),(875,0),(876,0),(877,0),(878,0),(879,0),(880,0),(881,0),(882,0),(883,0),(884,0),(885,0),(886,0),(887,0),(888,0),(889,0),(890,0),(891,0),(892,0),(893,0),(894,0),(895,0),(896,0),(897,0),(898,0),(899,0),(900,0),(901,0),(902,0),(903,0),(904,0),(905,0),(906,0),(907,0),(908,0),(909,0),(910,0),(911,0),(912,0),(913,0),(914,0),(915,0),(916,0),(917,0),(918,0),(919,0),(920,0),(921,0),(922,0),(923,0),(924,0),(925,0),(926,0),(927,0),(928,0),(929,0),(930,0),(931,0),(932,0),(933,0),(934,0),(935,0),(936,0),(937,0),(938,0),(939,0),(940,0),(941,0),(942,0),(943,0),(944,0),(945,0),(946,0),(947,0),(948,0),(949,0),(950,0),(951,0),(952,0),(953,0),(954,0),(955,0),(956,0),(957,0),(958,0),(959,0),(960,0),(961,0),(962,0),(963,0),(964,0),(965,0),(966,0),(967,0),(968,0),(969,0),(970,0),(971,0),(972,0),(973,0),(974,0),(975,0),(976,0),(977,0),(978,0),(979,0),(980,0),(981,0),(982,0),(983,0),(984,0),(985,0),(986,0),(987,0),(988,0),(989,0),(990,0),(991,0),(992,0),(993,0),(994,0),(995,0),(996,0),(997,0),(998,0),(999,0),(1000,0),(1001,0),(1002,0),(1003,0),(1004,0),(1005,0),(1006,0),(1007,0),(1008,0),(1009,0),(1010,0),(1011,0),(1012,0),(1013,0),(1014,0),(1015,0),(1016,0),(1017,0),(1018,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_profile`
--

DROP TABLE IF EXISTS `oc_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_profile`
--

LOCK TABLES `oc_profile` WRITE;
/*!40000 ALTER TABLE `oc_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_profile_description`
--

DROP TABLE IF EXISTS `oc_profile_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_profile_description` (
  `profile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`profile_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_profile_description`
--

LOCK TABLES `oc_profile_description` WRITE;
/*!40000 ALTER TABLE `oc_profile_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_profile_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES (1,6,'Refunded'),(2,6,'Credit Issued'),(3,6,'Replacement Sent');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES (1,6,'Dead On Arrival'),(2,6,'Received Wrong Item'),(3,6,'Order Error'),(4,6,'Faulty, please supply details'),(5,6,'Other, please supply details');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES (1,6,'Pending'),(3,6,'Complete'),(2,6,'Awaiting Products');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23615 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(8,0,'free_checkout','free_checkout_sort_order','1',0),(9,0,'cod','cod_sort_order','5',0),(10,0,'cod','cod_total','0.01',0),(11,0,'cod','cod_order_status_id','1',0),(12,0,'cod','cod_geo_zone_id','0',0),(13,0,'cod','cod_status','1',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(34,0,'flat','flat_sort_order','1',0),(35,0,'flat','flat_status','1',0),(36,0,'flat','flat_geo_zone_id','0',0),(37,0,'flat','flat_tax_class_id','9',0),(23273,0,'pavtestimonial','pavtestimonial_module','a:1:{i:0;a:11:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:9:\"promotion\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";i:1;s:9:\"auto_play\";s:1:\"0\";s:13:\"text_interval\";s:4:\"8000\";s:5:\"width\";s:2:\"72\";s:6:\"height\";s:2:\"72\";s:11:\"column_item\";s:1:\"1\";s:10:\"page_items\";s:1:\"3\";s:16:\"testimonial_item\";a:3:{i:1;a:4:{s:5:\"image\";s:11:\"data/p3.jpg\";s:10:\"video_link\";s:42:\"http://www.youtube.com/watch?v=H-VXRMFaxak\";s:7:\"profile\";a:1:{i:6;s:33:\"&lt;p&gt;hola mundo 1&lt;/p&gt;\r\n\";}s:11:\"description\";a:1:{i:6;s:33:\"&lt;p&gt;hola mundo 1&lt;/p&gt;\r\n\";}}i:2;a:4:{s:5:\"image\";s:11:\"data/p4.jpg\";s:10:\"video_link\";s:0:\"\";s:7:\"profile\";a:1:{i:6;s:33:\"&lt;p&gt;Hola mundo 2&lt;/p&gt;\r\n\";}s:11:\"description\";a:1:{i:6;s:33:\"&lt;p&gt;Hola mundo 2&lt;/p&gt;\r\n\";}}i:3;a:4:{s:5:\"image\";s:11:\"data/p2.jpg\";s:10:\"video_link\";s:0:\"\";s:7:\"profile\";a:1:{i:6;s:33:\"&lt;p&gt;Hola mundo 3&lt;/p&gt;\r\n\";}s:11:\"description\";a:1:{i:6;s:33:\"&lt;p&gt;Hola mundo 3&lt;/p&gt;\r\n\";}}}}}',1),(41,0,'flat','flat_cost','5.00',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(94,0,'voucher','voucher_sort_order','8',0),(95,0,'voucher','voucher_status','1',0),(103,0,'free_checkout','free_checkout_status','1',0),(104,0,'free_checkout','free_checkout_order_status_id','1',0),(21138,0,'pavblog','pavblog','a:42:{s:14:\"general_lwidth\";s:3:\"868\";s:15:\"general_lheight\";s:3:\"400\";s:14:\"general_swidth\";s:3:\"868\";s:15:\"general_sheight\";s:3:\"400\";s:14:\"general_xwidth\";s:2:\"80\";s:15:\"general_xheight\";s:2:\"80\";s:14:\"rss_limit_item\";s:2:\"12\";s:26:\"keyword_listing_blogs_page\";s:5:\"blogs\";s:16:\"children_columns\";s:1:\"3\";s:14:\"general_cwidth\";s:3:\"261\";s:15:\"general_cheight\";s:3:\"153\";s:22:\"cat_limit_leading_blog\";s:1:\"1\";s:24:\"cat_limit_secondary_blog\";s:1:\"5\";s:22:\"cat_leading_image_type\";s:1:\"l\";s:24:\"cat_secondary_image_type\";s:1:\"s\";s:24:\"cat_columns_leading_blog\";s:1:\"1\";s:27:\"cat_columns_secondary_blogs\";s:1:\"1\";s:14:\"cat_show_title\";s:1:\"1\";s:20:\"cat_show_description\";s:1:\"1\";s:17:\"cat_show_readmore\";s:1:\"1\";s:14:\"cat_show_image\";s:1:\"1\";s:15:\"cat_show_author\";s:1:\"1\";s:17:\"cat_show_category\";s:1:\"1\";s:16:\"cat_show_created\";s:1:\"1\";s:13:\"cat_show_hits\";s:1:\"1\";s:24:\"cat_show_comment_counter\";s:1:\"1\";s:15:\"blog_image_type\";s:1:\"l\";s:15:\"blog_show_title\";s:1:\"1\";s:15:\"blog_show_image\";s:1:\"1\";s:16:\"blog_show_author\";s:1:\"1\";s:18:\"blog_show_category\";s:1:\"1\";s:17:\"blog_show_created\";s:1:\"1\";s:25:\"blog_show_comment_counter\";s:1:\"1\";s:14:\"blog_show_hits\";s:1:\"1\";s:22:\"blog_show_comment_form\";s:1:\"1\";s:14:\"comment_engine\";s:5:\"local\";s:14:\"diquis_account\";s:10:\"pavothemes\";s:14:\"facebook_appid\";s:12:\"100858303516\";s:13:\"comment_limit\";s:2:\"10\";s:14:\"facebook_width\";s:3:\"600\";s:20:\"auto_publish_comment\";s:1:\"0\";s:16:\"enable_recaptcha\";s:1:\"1\";}',1),(22823,0,'pavblog_frontmodules','pavblog_frontmodules','a:1:{s:7:\"modules\";a:3:{i:0;s:15:\"pavblogcategory\";i:1;s:14:\"pavblogcomment\";i:2;s:13:\"pavbloglatest\";}}',1),(22824,0,'pavblogcategory','pavblogcategory_module','a:1:{i:1;a:5:{s:11:\"category_id\";s:1:\"1\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";}}',1),(22825,0,'pavblogcomment','pavblogcomment_module','a:1:{i:1;a:5:{s:5:\"limit\";s:1:\"6\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}}',1),(23272,0,'pavreassurance','pavreassurance_module','a:1:{i:0;a:6:{s:6:\"prefix\";s:0:\"\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";i:1;s:15:\"pavreassurances\";a:1:{i:1;a:4:{s:11:\"select_icon\";s:8:\"fa-truck\";s:5:\"title\";a:1:{i:6;s:10:\"Sucursales\";}s:7:\"caption\";a:1:{i:6;s:125:\"&lt;p&gt;Avenida las Torres. Chimalhuacán.&lt;/p&gt;\r\n\r\n&lt;p&gt;Manuel Ávila Camacho.&amp;nbsp; Chimalhuacán.&lt;/p&gt;\r\n\";}s:6:\"detail\";a:1:{i:6;s:565:\"&lt;p&gt;&lt;iframe allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;450&quot; src=&quot;https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3763.2767120161093!2d-98.91232464917437!3d19.40044654667012!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d1e176549b6f5f%3A0x8947edc2249a0297!2sAv.+las+Torres%2C+San+Vicente+Chicoloapan+de+Ju%C3%A1rez+Centro%2C+Chimalhucan%2C+56370+Chicoloapan+de+Ju%C3%A1rez%2C+M%C3%A9x.!5e0!3m2!1ses-419!2smx!4v1510729948573&quot; style=&quot;border:0&quot; width=&quot;600&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\r\n\";}}}}}',1),(22346,0,'filter','filter_module','a:2:{i:0;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(22347,0,'category','category_module','a:2:{i:0;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(23331,0,'openpay','openpay_cards_sort_order','1',0),(23332,0,'openpay','openpay_card_new_status_id','15',0),(14154,0,'pavproductcarousel','pavproductcarousel_module','a:7:{i:1;a:14:{s:11:\"description\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}s:6:\"prefix\";s:0:\"\";s:4:\"tabs\";a:1:{i:0;s:8:\"featured\";}s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"158\";s:12:\"itemsperpage\";s:1:\"2\";s:4:\"cols\";s:1:\"2\";s:5:\"limit\";s:1:\"4\";s:8:\"interval\";s:4:\"8000\";s:9:\"auto_play\";s:1:\"0\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:16:\"call_by_category\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";}i:2;a:14:{s:11:\"description\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}s:6:\"prefix\";s:15:\"highlight-color\";s:4:\"tabs\";a:1:{i:0;s:7:\"special\";}s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"158\";s:12:\"itemsperpage\";s:1:\"2\";s:4:\"cols\";s:1:\"2\";s:5:\"limit\";s:1:\"4\";s:8:\"interval\";s:4:\"8000\";s:9:\"auto_play\";s:1:\"0\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:16:\"call_by_category\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"2\";}i:3;a:14:{s:11:\"description\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}s:6:\"prefix\";s:4:\"blue\";s:4:\"tabs\";a:1:{i:0;s:10:\"bestseller\";}s:5:\"width\";s:3:\"254\";s:6:\"height\";s:3:\"223\";s:12:\"itemsperpage\";s:1:\"2\";s:4:\"cols\";s:1:\"2\";s:5:\"limit\";s:1:\"4\";s:8:\"interval\";s:4:\"8000\";s:9:\"auto_play\";s:1:\"0\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:9:\"promotion\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";}i:4;a:14:{s:11:\"description\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}s:6:\"prefix\";s:9:\"light red\";s:4:\"tabs\";a:1:{i:0;s:6:\"latest\";}s:5:\"width\";s:3:\"254\";s:6:\"height\";s:3:\"223\";s:12:\"itemsperpage\";s:1:\"2\";s:4:\"cols\";s:1:\"2\";s:5:\"limit\";s:1:\"4\";s:8:\"interval\";s:4:\"8000\";s:9:\"auto_play\";s:1:\"0\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:9:\"promotion\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"2\";}i:5;a:14:{s:11:\"description\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}s:6:\"prefix\";s:4:\"best\";s:4:\"tabs\";a:1:{i:0;s:10:\"bestseller\";}s:5:\"width\";s:3:\"239\";s:6:\"height\";s:3:\"209\";s:12:\"itemsperpage\";s:1:\"6\";s:4:\"cols\";s:1:\"3\";s:5:\"limit\";s:1:\"3\";s:8:\"interval\";s:4:\"8000\";s:9:\"auto_play\";s:1:\"0\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"6\";}i:6;a:14:{s:11:\"description\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}s:6:\"prefix\";s:0:\"\";s:4:\"tabs\";a:1:{i:0;s:7:\"special\";}s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"203\";s:12:\"itemsperpage\";s:1:\"4\";s:4:\"cols\";s:1:\"4\";s:5:\"limit\";s:2:\"16\";s:8:\"interval\";s:4:\"8000\";s:9:\"auto_play\";s:1:\"0\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";i:11;}i:7;a:14:{s:11:\"description\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}s:6:\"prefix\";s:0:\"\";s:4:\"tabs\";a:1:{i:0;s:6:\"latest\";}s:5:\"width\";s:2:\"80\";s:6:\"height\";s:2:\"60\";s:12:\"itemsperpage\";s:1:\"4\";s:4:\"cols\";s:1:\"4\";s:5:\"limit\";s:2:\"16\";s:8:\"interval\";s:4:\"8000\";s:9:\"auto_play\";s:1:\"0\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"2\";}}',1),(16223,0,'pavverticalmenu_params','params','[{\"submenu\":1,\"subwidth\":600,\"id\":44,\"cols\":1,\"group\":0,\"rows\":[{\"cols\":[{\"widgets\":\"wid-11\",\"colwidth\":5},{\"widgets\":\"wid-10\",\"colwidth\":7}]},{\"cols\":[{\"widgets\":\"wid-9\",\"colwidth\":5},{\"widgets\":\"wid-8\",\"colwidth\":7,\"colclass\":\"hide-title\"}]}]},{\"submenu\":1,\"subwidth\":600,\"cols\":1,\"group\":0,\"id\":7,\"rows\":[{\"cols\":[{\"widgets\":\"wid-12\",\"colwidth\":4},{\"widgets\":\"wid-13\",\"colwidth\":4},{\"widgets\":\"wid-14\",\"colwidth\":4}]}]},{\"submenu\":1,\"cols\":1,\"group\":0,\"id\":3,\"rows\":[{\"cols\":[{\"colwidth\":12,\"type\":\"menu\"}]}]},{\"submenu\":1,\"cols\":1,\"group\":0,\"id\":26,\"rows\":[{\"cols\":[{\"colwidth\":12,\"type\":\"menu\"}]}]},{\"submenu\":1,\"cols\":1,\"group\":0,\"id\":13,\"rows\":[{\"cols\":[{\"colwidth\":12,\"type\":\"menu\"}]}]},{\"submenu\":1,\"cols\":1,\"group\":0,\"id\":28,\"rows\":[{\"cols\":[{\"colwidth\":12,\"type\":\"menu\"}]}]}]',0),(21141,0,'pavmegamenu_params','params','[{\"align\":\"aligned-fullwidth\",\"submenu\":1,\"subwidth\":971,\"cols\":1,\"group\":0,\"id\":41,\"rows\":[{\"cols\":[{\"widgets\":\"wid-9\",\"colwidth\":3},{\"widgets\":\"wid-7\",\"colwidth\":3},{\"widgets\":\"wid-8\",\"colwidth\":3},{\"widgets\":\"wid-11\",\"colwidth\":3}]}]},{\"align\":\"aligned-fullwidth\",\"submenu\":1,\"subwidth\":1170,\"cols\":1,\"group\":0,\"id\":86,\"rows\":[{\"cols\":[{\"widgets\":\"wid-4\",\"colwidth\":3},{\"widgets\":\"wid-14|wid-12\",\"colclass\":\"sidebar\",\"colwidth\":6},{\"widgets\":\"wid-3\",\"colwidth\":3,\"colclass\":\"sidebar\"}]}]},{\"submenu\":1,\"id\":38,\"align\":\"aligned-fullwidth\",\"cols\":1,\"group\":0,\"rows\":[{\"cols\":[{\"widgets\":\"wid-18\",\"colwidth\":3},{\"widgets\":\"wid-16\",\"colwidth\":3},{\"widgets\":\"wid-15\",\"colwidth\":6,\"colclass\":\"\"}]}]},{\"align\":\"aligned-fullwidth\",\"submenu\":1,\"subwidth\":400,\"cols\":1,\"group\":0,\"id\":5,\"rows\":[{\"cols\":[{\"widgets\":\"wid-1\",\"colwidth\":6},{\"widgets\":\"wid-17\",\"colwidth\":6}]}]},{\"align\":\"aligned-left\",\"submenu\":1,\"cols\":1,\"group\":0,\"id\":3,\"rows\":[{\"cols\":[{\"colwidth\":12,\"type\":\"menu\"}]}]},{\"align\":\"aligned-left\",\"submenu\":1,\"cols\":1,\"group\":0,\"id\":32,\"rows\":[{\"cols\":[{\"colwidth\":12,\"type\":\"menu\"}]}]},{\"align\":\"aligned-left\",\"submenu\":1,\"cols\":1,\"group\":0,\"id\":25,\"rows\":[{\"cols\":[{\"colwidth\":12,\"type\":\"menu\"}]}]}]',0),(23266,0,'pavcustom','pavcustom_module','a:1:{i:1;a:8:{s:12:\"module_title\";a:1:{i:6;s:8:\"shipment\";}s:11:\"description\";a:1:{i:6;s:2088:\"&lt;div class=&quot;row intrio&quot;&gt;\r\n&lt;div class=&quot;col-xs-12 col-sm-12 col-md-6 col-lg-6&quot;&gt;\r\n&lt;center&gt;Quiénes somos&lt;/center&gt;\r\n&amp;nbsp;\r\n\r\n&lt;center&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://tlati.com/image/data/nosotros-300x300.png&quot; /&gt;&lt;/center&gt;\r\n&amp;nbsp;\r\n\r\n&lt;p class=&quot;justifica&quot;&gt;Somos una empresa con más de 30 años de experiencia en la venta de todos los productos de uso diario: Tlapalería, Ferretería, Papelería, Abarrotes… Y más. Ahora en la comodidad de tu hogar, oficina o lugar de trabajo.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-xs-12 col-sm-12 col-md-6 col-lg-6&quot;&gt;\r\n&lt;center&gt;Misión&lt;/center&gt;\r\n&amp;nbsp;\r\n\r\n&lt;center&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://tlati.com/image/data/mision-300x300.png&quot; /&gt;&lt;/center&gt;\r\n&amp;nbsp;\r\n\r\n&lt;p class=&quot;centra&quot;&gt;Renovar la experiencia de compra, con el trato humano que nos diferencia.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row intrio&quot;&gt;\r\n&lt;div class=&quot;col-xs-12 col-sm-12 col-md-6 col-lg-6&quot;&gt;\r\n&lt;center&gt;Visión&lt;/center&gt;\r\n&amp;nbsp;\r\n\r\n&lt;center&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://tlati.com/image/data/vision-300x300.png&quot; /&gt;&lt;/center&gt;\r\n&amp;nbsp;\r\n\r\n&lt;p class=&quot;centra&quot;&gt;Dar el mejor servicio de compra en los productos comunes y hacerlo extraordinario.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-xs-12 col-sm-12 col-md-6 col-lg-6&quot;&gt;\r\n&lt;center&gt;Valores&lt;/center&gt;\r\n&amp;nbsp;\r\n\r\n&lt;center&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://tlati.com/image/data/valores-300x300.png&quot; /&gt;&lt;/center&gt;\r\n&amp;nbsp;\r\n\r\n&lt;p class=&quot;centra&quot;&gt;&lt;b&gt;Unión.&lt;/b&gt; Todo es alcanzable si se realiza en equipo, pero con un equipo unido.&lt;br /&gt;\r\n&lt;b&gt;Calidad.&lt;/b&gt; Dar el mejor servicio.&lt;br /&gt;\r\n&lt;b&gt;Sociedad.&lt;/b&gt; El cliente es primero y para hacer&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\";}s:10:\"show_title\";s:1:\"1\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:8:\"showcase\";s:6:\"status\";s:1:\"1\";s:12:\"module_class\";s:19:\"hidden-xs hidden-sm\";s:10:\"sort_order\";i:1;}}',1),(23551,0,'config','config_google_analytics','',0),(23550,0,'config','config_error_filename','error.txt',0),(23549,0,'config','config_error_log','1',0),(23548,0,'config','config_error_display','1',0),(23547,0,'config','config_compression','0',0),(23544,0,'config','config_maintenance','0',0),(23545,0,'config','config_password','1',0),(23546,0,'config','config_encryption','347122b50a8b19643f2659cd4ce2dc12',0),(23274,0,'pavproducttabs','pavproducttabs_module','a:1:{i:1;a:12:{s:11:\"description\";a:1:{i:6;s:0:\"\";}s:12:\"module_class\";s:15:\"specital-asdasd\";s:4:\"tabs\";a:1:{i:0;s:7:\"special\";}s:5:\"width\";s:3:\"273\";s:6:\"height\";s:3:\"273\";s:12:\"itemsperpage\";s:1:\"8\";s:4:\"cols\";s:1:\"4\";s:5:\"limit\";s:2:\"16\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"mass_center\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";i:1;}}',1),(23277,0,'pavtwitter','pavtwitter_module','a:1:{i:1;a:17:{s:9:\"layout_id\";s:5:\"99999\";s:8:\"position\";s:13:\"footer_center\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";i:1;s:9:\"widget_id\";s:18:\"366766896986591232\";s:5:\"count\";s:1:\"1\";s:8:\"username\";s:10:\"pavothemes\";s:5:\"theme\";s:4:\"dark\";s:14:\"nickname_color\";s:6:\"7B0046\";s:10:\"name_color\";s:6:\"FFFFFF\";s:11:\"title_color\";s:6:\"959593\";s:10:\"link_color\";s:6:\"7B0046\";s:12:\"border_color\";s:6:\"000000\";s:5:\"width\";s:4:\"100%\";s:6:\"height\";s:4:\"auto\";s:12:\"show_replies\";s:1:\"0\";s:6:\"chrome\";a:5:{i:0;s:8:\"noheader\";i:1;s:8:\"nofooter\";i:2;s:9:\"noborders\";i:3;s:11:\"noscrollbar\";i:4;s:11:\"transparent\";}}}',1),(23543,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet',0),(23541,0,'config','config_seo_url','0',0),(23542,0,'config','config_file_extension_allowed','txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods',0),(23531,0,'config','config_alert_mail','0',0),(23532,0,'config','config_account_mail','0',0),(23533,0,'config','config_alert_emails','',0),(23534,0,'config','config_fraud_detection','0',0),(23535,0,'config','config_fraud_key','',0),(23536,0,'config','config_fraud_score','',0),(23537,0,'config','config_fraud_status_id','7',0),(23538,0,'config','config_secure','1',0),(23539,0,'config','config_shared','0',0),(23540,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(23530,0,'config','config_smtp_timeout','5',0),(23529,0,'config','config_smtp_port','25',0),(23528,0,'config','config_smtp_password','',0),(23527,0,'config','config_smtp_username','',0),(23526,0,'config','config_smtp_host','',0),(23525,0,'config','config_mail_parameter','',0),(23524,0,'config','config_mail_protocol','mail',0),(23523,0,'config','config_ftp_status','0',0),(23522,0,'config','config_ftp_root','',0),(23521,0,'config','config_ftp_password','',0),(23518,0,'config','config_ftp_host','localhost',0),(23519,0,'config','config_ftp_port','21',0),(21424,0,'openbaymanager','openbaymanager_show_menu','0',0),(23344,0,'openpay_cards','openpay_cards_sort_order','1',0),(23345,0,'openpay_cards','openpay_card_new_status_id','15',0),(23343,0,'openpay_cards','openpay_card_total','1',0),(23342,0,'openpay_cards','openpay_cards_status','1',0),(23341,0,'openpay_cards','openpay_cards_geo_zone_id','0',0),(17944,0,'pavsocialsidebar','pavsocialsidebar_module','a:1:{i:1;a:32:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";s:5:\"theme\";s:11:\"transparent\";s:19:\"responsive_maxwidth\";s:3:\"979\";s:19:\"responsive_minwidth\";s:1:\"0\";s:6:\"domain\";s:10:\"mysite.com\";s:9:\"idAddthis\";s:0:\"\";s:15:\"mobile_position\";s:6:\"bottom\";s:12:\"mobile_theme\";s:11:\"transparent\";s:13:\"mobile_status\";s:1:\"0\";s:14:\"share_position\";s:5:\"right\";s:13:\"share_service\";a:5:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:9:\"yahoomail\";i:3;s:9:\"pinterest\";i:4;s:5:\"gmail\";}s:11:\"share_title\";s:19:\"Thanks for sharing!\";s:9:\"share_mgs\";s:9:\"Follow us\";s:11:\"share_theme\";s:11:\"transparent\";s:13:\"share_desktop\";s:1:\"1\";s:12:\"share_mobile\";s:1:\"1\";s:12:\"follow_title\";s:6:\"Follow\";s:12:\"follow_thank\";s:21:\"Thanks for following!\";s:14:\"follow_desktop\";s:1:\"1\";s:13:\"follow_mobile\";s:1:\"1\";s:24:\"follow_services_facebook\";s:0:\"\";s:23:\"follow_services_twitter\";s:0:\"\";s:29:\"follow_services_google_follow\";s:0:\"\";s:23:\"follow_services_youtube\";s:0:\"\";s:22:\"follow_services_flickr\";s:0:\"\";s:21:\"follow_services_vimeo\";s:0:\"\";s:25:\"follow_services_pinterest\";s:0:\"\";s:25:\"follow_services_instagram\";s:0:\"\";s:24:\"follow_services_linkedin\";s:0:\"\";}}',1),(12065,0,'pavsocial','pavsocial_module','a:1:{i:1;a:27:{s:9:\"layout_id\";s:5:\"99999\";s:8:\"position\";s:13:\"outsite_right\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";s:8:\"facebook\";s:35:\"https://www.facebook.com/Pavothemes\";s:14:\"application_id\";s:0:\"\";s:12:\"border_color\";s:6:\"FFFFFF\";s:11:\"colorscheme\";s:5:\"light\";s:10:\"face_width\";s:3:\"270\";s:11:\"face_height\";s:3:\"355\";s:5:\"tream\";s:1:\"0\";s:10:\"show_faces\";s:1:\"1\";s:6:\"header\";s:1:\"0\";s:9:\"widget_id\";s:18:\"366766896986591232\";s:5:\"count\";s:1:\"2\";s:8:\"username\";s:10:\"PavoThemes\";s:5:\"theme\";s:5:\"light\";s:14:\"nickname_color\";s:6:\"FFFFFF\";s:10:\"name_color\";s:6:\"2465FF\";s:11:\"title_color\";s:6:\"386DFF\";s:10:\"link_color\";s:6:\"2660FF\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"355\";s:12:\"show_replies\";s:1:\"0\";s:17:\"youtube_video_ids\";s:11:\"fNEepYl3LAk\";s:11:\"video_width\";s:3:\"270\";s:12:\"video_height\";s:3:\"137\";}}',1),(21428,0,'account','account_module','a:2:{i:0;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(23520,0,'config','config_ftp_username','',0),(23517,0,'config','config_image_cart_height','71',0),(23514,0,'config','config_image_wishlist_width','70',0),(23516,0,'config','config_image_cart_width','70',0),(23515,0,'config','config_image_wishlist_height','71',0),(23513,0,'config','config_image_compare_height','91',0),(23510,0,'config','config_image_related_width','273',0),(23512,0,'config','config_image_compare_width','90',0),(23511,0,'config','config_image_related_height','342',0),(23509,0,'config','config_image_additional_height','100',0),(23508,0,'config','config_image_additional_width','80',0),(23507,0,'config','config_image_product_height','342',0),(23271,0,'latest','latest_module','a:2:{i:0;a:7:{s:5:\"limit\";s:1:\"8\";s:11:\"image_width\";s:3:\"270\";s:12:\"image_height\";s:3:\"342\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";i:3;}i:1;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"9\";}}',1),(23506,0,'config','config_image_product_width','273',0),(23505,0,'config','config_image_popup_height','630',0),(23504,0,'config','config_image_popup_width','500',0),(23503,0,'config','config_image_thumb_height','466',0),(23502,0,'config','config_image_thumb_width','371',0),(23501,0,'config','config_image_category_height','284',0),(23500,0,'config','config_image_category_width','873',0),(23498,0,'config','config_logo','data/logo_tlanti.png',0),(23499,0,'config','config_icon','data/logo_tlanti.png',0),(23497,0,'config','config_return_status_id','2',0),(23496,0,'config','config_return_id','0',0),(23495,0,'config','config_commission','5',0),(23494,0,'config','config_affiliate_id','4',0),(23493,0,'config','config_stock_status_id','5',0),(23492,0,'config','config_stock_checkout','0',0),(23491,0,'config','config_stock_warning','0',0),(23490,0,'config','config_stock_display','0',0),(23489,0,'config','config_complete_status_id','5',0),(23488,0,'config','config_order_status_id','1',0),(23487,0,'config','config_invoice_prefix','INV-2013-00',0),(23486,0,'config','config_order_edit','100',0),(23485,0,'config','config_checkout_id','5',0),(23484,0,'config','config_guest_checkout','0',0),(23483,0,'config','config_cart_weight','1',0),(23482,0,'config','config_account_id','3',0),(23481,0,'config','config_customer_price','0',0),(23480,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(23476,0,'config','config_tax_default','shipping',0),(23477,0,'config','config_tax_customer','shipping',0),(23479,0,'config','config_customer_group_id','1',0),(23478,0,'config','config_customer_online','0',0),(23475,0,'config','config_vat','0',0),(23474,0,'config','config_tax','1',0),(23473,0,'config','config_voucher_max','1000',0),(23270,0,'pavcategorybanner','pavcategorybanner_module','a:1:{i:1;a:9:{s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"145\";s:12:\"itemsperpage\";s:1:\"6\";s:4:\"cols\";s:1:\"3\";s:5:\"limit\";s:2:\"12\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";i:2;}}',1),(23472,0,'config','config_voucher_min','1',0),(23471,0,'config','config_download','1',0),(23470,0,'config','config_review_status','1',0),(23469,0,'config','config_product_count','1',0),(23468,0,'config','config_admin_limit','20',0),(23467,0,'config','config_catalog_limit','9',0),(23466,0,'config','config_weight_class_id','1',0),(23465,0,'config','config_length_class_id','1',0),(23464,0,'config','config_currency_auto','1',0),(23463,0,'config','config_currency','MXN',0),(23462,0,'config','config_admin_language','es',0),(23461,0,'config','config_language','es',0),(23276,0,'pavnewsletter','pavnewsletter_module','a:1:{i:1;a:6:{s:9:\"layout_id\";s:5:\"99999\";s:8:\"position\";s:10:\"footer_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";i:1;s:11:\"description\";a:1:{i:6;s:52:\"&lt;p&gt;Suscribite a nuestro new letter&lt;/p&gt;\r\n\";}s:6:\"social\";a:1:{i:6;s:0:\"\";}}}',1),(23278,0,'themecontrol','themecontrol','a:71:{s:13:\"default_theme\";s:15:\"pav_queenbeauty\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:1:\"1\";s:21:\"cateogry_display_mode\";s:4:\"grid\";s:24:\"listing_products_columns\";s:1:\"3\";s:30:\"listing_products_columns_small\";s:1:\"2\";s:34:\"listing_products_columns_minismall\";s:1:\"1\";s:14:\"category_pzoom\";s:1:\"1\";s:18:\"product_enablezoom\";s:1:\"1\";s:19:\"product_zoomgallery\";s:6:\"slider\";s:16:\"product_zoommode\";s:5:\"basic\";s:20:\"product_zoomlenssize\";s:3:\"150\";s:18:\"product_zoomeasing\";s:1:\"1\";s:21:\"product_zoomlensshape\";s:5:\"basic\";s:22:\"product_related_column\";s:1:\"0\";s:24:\"enable_product_customtab\";s:1:\"0\";s:22:\"product_customtab_name\";a:1:{i:6;s:0:\"\";}s:25:\"product_customtab_content\";a:1:{i:6;s:0:\"\";}s:17:\"location_latitude\";s:9:\"40.705423\";s:18:\"location_longitude\";s:10:\"-74.008616\";s:18:\"contact_customhtml\";a:1:{i:6;s:0:\"\";}s:4:\"skin\";s:0:\"\";s:11:\"theme_width\";s:4:\"auto\";s:23:\"enable_custom_copyright\";s:1:\"1\";s:9:\"copyright\";s:0:\"\";s:18:\"enable_offsidebars\";s:1:\"1\";s:20:\"enable_footer_center\";s:1:\"1\";s:16:\"enable_paneltool\";s:1:\"1\";s:12:\"catalog_mode\";s:1:\"0\";s:15:\"template_layout\";s:9:\"fullwidth\";s:13:\"header_layout\";s:11:\"hasmainmenu\";s:9:\"quickview\";s:1:\"1\";s:9:\"logo_type\";s:10:\"logo-theme\";s:14:\"product_layout\";s:7:\"default\";s:21:\"product_detail_layout\";s:7:\"default\";s:13:\"widget_banner\";a:1:{i:6;s:80:\"&lt;p&gt;&lt;img src=&quot;image/data/banner/banner1.png&quot; /&gt;&lt;/p&gt;\r\n\";}s:13:\"widget_paypal\";a:1:{i:6;s:72:\"&lt;p&gt;&lt;img src=&quot;image/data/paypal.png&quot; /&gt;&lt;/p&gt;\r\n\";}s:17:\"enable_customfont\";s:1:\"0\";s:11:\"type_fonts1\";s:8:\"standard\";s:13:\"normal_fonts1\";s:7:\"inherit\";s:11:\"google_url1\";s:0:\"\";s:14:\"google_family1\";s:0:\"\";s:9:\"fontsize1\";s:7:\"inherit\";s:14:\"body_selector1\";s:4:\"body\";s:11:\"type_fonts2\";s:8:\"standard\";s:13:\"normal_fonts2\";s:7:\"inherit\";s:11:\"google_url2\";s:0:\"\";s:14:\"google_family2\";s:0:\"\";s:9:\"fontsize2\";s:7:\"inherit\";s:14:\"body_selector2\";s:15:\"h1, #content h1\";s:11:\"type_fonts3\";s:8:\"standard\";s:13:\"normal_fonts3\";s:7:\"inherit\";s:11:\"google_url3\";s:0:\"\";s:14:\"google_family3\";s:0:\"\";s:9:\"fontsize3\";s:7:\"inherit\";s:14:\"body_selector3\";s:44:\"h2,h3,h4,h5, .box-heading, .box-heading span\";s:11:\"type_fonts4\";s:8:\"standard\";s:13:\"normal_fonts4\";s:27:\"Verdana, Geneva, sans-serif\";s:11:\"google_url4\";s:0:\"\";s:14:\"google_family4\";s:0:\"\";s:14:\"body_selector4\";s:0:\"\";s:14:\"block_showcase\";s:0:\"\";s:15:\"block_promotion\";s:0:\"\";s:16:\"block_footer_top\";s:0:\"\";s:19:\"block_footer_center\";s:0:\"\";s:19:\"block_footer_bottom\";s:0:\"\";s:19:\"enable_compress_css\";s:0:\"\";s:17:\"exclude_css_files\";s:13:\"bootstrap.css\";s:15:\"customize_theme\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:17:\"custom_javascript\";s:0:\"\";}',1),(23612,0,'featured','product','a',0),(23613,0,'featured','featured_product','928,990,909,931',0),(23614,0,'featured','featured_module','a:1:{i:0;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:3:\"270\";s:12:\"image_height\";s:3:\"342\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(23330,0,'openpay','openpay_card_total','1',0),(23329,0,'openpay','openpay_cards_status','1',0),(23328,0,'openpay','openpay_cards_geo_zone_id','0',0),(23326,0,'openpay','openpay_card_live_public_key','',0),(23327,0,'openpay','openpay_card_title','Openpay Tarjetas CC',0),(23325,0,'openpay','openpay_card_live_secret_key','',0),(23324,0,'openpay','openpay_card_live_merchant_id','',0),(23323,0,'openpay','openpay_card_test_public_key','pk_1afb78c878cb4c8b84b009cd08f29a5d',0),(23322,0,'openpay','openpay_card_test_secret_key','sk_6926ab56a77246399d05969a35c4b2a2',0),(23321,0,'openpay','openpay_card_test_merchant_id','mqxk0vnrkuqdl10uggbv',0),(23320,0,'openpay','openpay_card_test_mode','1',0),(23340,0,'openpay_cards','openpay_card_title','Openpay Tarjetas CC',0),(23338,0,'openpay_cards','openpay_card_live_secret_key','',0),(23339,0,'openpay_cards','openpay_card_live_public_key','',0),(23337,0,'openpay_cards','openpay_card_live_merchant_id','',0),(23336,0,'openpay_cards','openpay_card_test_public_key','pk_1afb78c878cb4c8b84b009cd08f29a5d',0),(23335,0,'openpay_cards','openpay_card_test_secret_key','sk_6926ab56a77246399d05969a35c4b2a2',0),(23334,0,'openpay_cards','openpay_card_test_merchant_id','mqxk0vnrkuqdl10uggbv',0),(23460,0,'config','config_zone_id','2153',0),(23265,0,'pavnivoslidershow','pavnivoslidershow_module','a:1:{i:0;a:7:{s:9:\"banner_id\";s:2:\"21\";s:5:\"width\";s:4:\"1920\";s:6:\"height\";s:3:\"650\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:9:\"slideshow\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";i:1;}}',1),(23602,0,'pavmegamenubase','pavmegamenubase_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:5:\"99999\";s:8:\"position\";s:8:\"mainmenu\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(23459,0,'config','config_country_id','138',0),(23458,0,'config','config_layout_id','4',0),(23457,0,'config','config_template','pav_queenbeauty',0),(23456,0,'config','config_meta_description','Te atiende y entiende. Todo en Tlapalería, Ferretería, Papelería,  Abarrotes… y más.\r\n',0),(23455,0,'config','config_title','tlati',0),(23454,0,'config','config_fax','1234567890',0),(23275,0,'pavbloglatest','pavbloglatest_module','a:1:{i:1;a:11:{s:11:\"description\";a:1:{i:6;s:31:\"&lt;p&gt;Hola mundo&lt;/p&gt;\r\n\";}s:11:\"prefixclass\";s:0:\"\";s:4:\"tabs\";s:6:\"latest\";s:5:\"width\";s:3:\"371\";s:6:\"height\";s:3:\"200\";s:4:\"cols\";s:1:\"3\";s:5:\"limit\";s:1:\"3\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"mass_bottom\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";i:1;}}',1),(23453,0,'config','config_telephone',' (035) 757-0000',0),(23452,0,'config','config_email','yasminisi@hotmail.com',0),(23451,0,'config','config_address','123 Main st. Los Angeles, CA, 90012, U.S.A',0),(23449,0,'config','config_name','tlati.com',0),(23450,0,'config','config_owner','tlati.com',0),(23333,0,'openpay_cards','openpay_card_test_mode','1',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES (7,6,'In Stock'),(8,6,'Pre-Order'),(5,6,'Out Of Stock'),(6,6,'2 - 3 Days');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES (9,'Taxable Goods','Taxed Stuff','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES (86,3,'VAT (17.5%)',17.5000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM AUTO_INCREMENT=972 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_url_alias`
--

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES (964,'pavblog/category=28',''),(730,'manufacturer_id=8','apple'),(949,'information_id=4','about_us'),(876,'pavblog/blog=10',''),(878,'pavblog/blog=11',''),(874,'pavblog/blog=9',''),(872,'pavblog/blog=7',''),(880,'pavblog/blog=12',''),(959,'pavblog/category=22',''),(960,'pavblog/category=21',''),(961,'pavblog/category=23',''),(962,'pavblog/category=20',''),(936,'pavblog/blog=14',''),(963,'pavblog/category=25','Second Item'),(937,'pavblog/blog=13',''),(893,'pavblog/category=27','Technology'),(935,'pavblog/blog=15',''),(934,'pavblog/blog=16',''),(943,'pavblog/blog=17',''),(931,'pavblog/blog=18',''),(942,'pavblog/blog=19','');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES (1,1,'admin','eb7f62da52d32d27eac836a6531758158965e800','9ad58ea3f','','','yasminisi@hotmail.com','','189.216.96.41',1,'2017-09-27 17:30:33'),(2,10,'demo','3c60ef041d8de5483e3bae2e4f304494c88e67b1','5a9244b81','demo','demo','test@test.com','','',1,'2014-01-27 23:47:21');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES (1,'Top Administrator','a:2:{s:6:\"access\";a:163:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:27:\"catalog/productimportexport\";i:10;s:33:\"catalog/productimportexport_outag\";i:11;s:15:\"catalog/profile\";i:12;s:14:\"catalog/review\";i:13;s:18:\"common/filemanager\";i:14;s:13:\"design/banner\";i:15;s:19:\"design/custom_field\";i:16;s:13:\"design/layout\";i:17;s:14:\"extension/feed\";i:18;s:17:\"extension/manager\";i:19;s:16:\"extension/module\";i:20;s:17:\"extension/openbay\";i:21;s:17:\"extension/payment\";i:22;s:18:\"extension/shipping\";i:23;s:15:\"extension/total\";i:24;s:16:\"feed/google_base\";i:25;s:19:\"feed/google_sitemap\";i:26;s:20:\"localisation/country\";i:27;s:21:\"localisation/currency\";i:28;s:21:\"localisation/geo_zone\";i:29;s:21:\"localisation/language\";i:30;s:25:\"localisation/length_class\";i:31;s:25:\"localisation/order_status\";i:32;s:26:\"localisation/return_action\";i:33;s:26:\"localisation/return_reason\";i:34;s:26:\"localisation/return_status\";i:35;s:25:\"localisation/stock_status\";i:36;s:22:\"localisation/tax_class\";i:37;s:21:\"localisation/tax_rate\";i:38;s:25:\"localisation/weight_class\";i:39;s:17:\"localisation/zone\";i:40;s:14:\"module/account\";i:41;s:16:\"module/affiliate\";i:42;s:29:\"module/amazon_checkout_layout\";i:43;s:13:\"module/banner\";i:44;s:17:\"module/bestseller\";i:45;s:15:\"module/carousel\";i:46;s:15:\"module/category\";i:47;s:18:\"module/ebaydisplay\";i:48;s:15:\"module/featured\";i:49;s:13:\"module/filter\";i:50;s:18:\"module/google_talk\";i:51;s:18:\"module/information\";i:52;s:13:\"module/latest\";i:53;s:17:\"module/openbaypro\";i:54;s:14:\"module/pavblog\";i:55;s:22:\"module/pavblogcategory\";i:56;s:21:\"module/pavblogcomment\";i:57;s:20:\"module/pavbloglatest\";i:58;s:24:\"module/pavcategorybanner\";i:59;s:16:\"module/pavcustom\";i:60;s:22:\"module/pavmegamenubase\";i:61;s:20:\"module/pavnewsletter\";i:62;s:24:\"module/pavnivoslidershow\";i:63;s:21:\"module/pavproducttabs\";i:64;s:21:\"module/pavreassurance\";i:65;s:21:\"module/pavtestimonial\";i:66;s:17:\"module/pavtwitter\";i:67;s:16:\"module/pp_layout\";i:68;s:16:\"module/slideshow\";i:69;s:14:\"module/special\";i:70;s:12:\"module/store\";i:71;s:19:\"module/themecontrol\";i:72;s:14:\"module/welcome\";i:73;s:14:\"openbay/amazon\";i:74;s:22:\"openbay/amazon_listing\";i:75;s:22:\"openbay/amazon_product\";i:76;s:16:\"openbay/amazonus\";i:77;s:24:\"openbay/amazonus_listing\";i:78;s:24:\"openbay/amazonus_product\";i:79;s:20:\"openbay/ebay_profile\";i:80;s:21:\"openbay/ebay_template\";i:81;s:15:\"openbay/openbay\";i:82;s:23:\"payment/amazon_checkout\";i:83;s:24:\"payment/authorizenet_aim\";i:84;s:21:\"payment/bank_transfer\";i:85;s:14:\"payment/cheque\";i:86;s:11:\"payment/cod\";i:87;s:21:\"payment/free_checkout\";i:88;s:22:\"payment/klarna_account\";i:89;s:22:\"payment/klarna_invoice\";i:90;s:14:\"payment/liqpay\";i:91;s:20:\"payment/moneybookers\";i:92;s:14:\"payment/nochex\";i:93;s:21:\"payment/openpay_cards\";i:94;s:15:\"payment/paymate\";i:95;s:16:\"payment/paypoint\";i:96;s:13:\"payment/payza\";i:97;s:26:\"payment/perpetual_payments\";i:98;s:18:\"payment/pp_express\";i:99;s:25:\"payment/pp_payflow_iframe\";i:100;s:14:\"payment/pp_pro\";i:101;s:21:\"payment/pp_pro_iframe\";i:102;s:17:\"payment/pp_pro_pf\";i:103;s:17:\"payment/pp_pro_uk\";i:104;s:19:\"payment/pp_standard\";i:105;s:15:\"payment/sagepay\";i:106;s:22:\"payment/sagepay_direct\";i:107;s:18:\"payment/sagepay_us\";i:108;s:19:\"payment/twocheckout\";i:109;s:28:\"payment/web_payment_software\";i:110;s:16:\"payment/worldpay\";i:111;s:27:\"report/affiliate_commission\";i:112;s:22:\"report/customer_credit\";i:113;s:22:\"report/customer_online\";i:114;s:21:\"report/customer_order\";i:115;s:22:\"report/customer_reward\";i:116;s:24:\"report/product_purchased\";i:117;s:21:\"report/product_viewed\";i:118;s:18:\"report/sale_coupon\";i:119;s:17:\"report/sale_order\";i:120;s:18:\"report/sale_return\";i:121;s:20:\"report/sale_shipping\";i:122;s:15:\"report/sale_tax\";i:123;s:14:\"sale/affiliate\";i:124;s:12:\"sale/contact\";i:125;s:11:\"sale/coupon\";i:126;s:13:\"sale/customer\";i:127;s:20:\"sale/customer_ban_ip\";i:128;s:19:\"sale/customer_group\";i:129;s:10:\"sale/order\";i:130;s:14:\"sale/recurring\";i:131;s:11:\"sale/return\";i:132;s:12:\"sale/voucher\";i:133;s:18:\"sale/voucher_theme\";i:134;s:15:\"setting/setting\";i:135;s:13:\"setting/store\";i:136;s:16:\"shipping/auspost\";i:137;s:17:\"shipping/citylink\";i:138;s:14:\"shipping/fedex\";i:139;s:13:\"shipping/flat\";i:140;s:13:\"shipping/free\";i:141;s:13:\"shipping/item\";i:142;s:23:\"shipping/parcelforce_48\";i:143;s:15:\"shipping/pickup\";i:144;s:19:\"shipping/royal_mail\";i:145;s:12:\"shipping/ups\";i:146;s:13:\"shipping/usps\";i:147;s:15:\"shipping/weight\";i:148;s:11:\"tool/backup\";i:149;s:14:\"tool/error_log\";i:150;s:12:\"total/coupon\";i:151;s:12:\"total/credit\";i:152;s:14:\"total/handling\";i:153;s:16:\"total/klarna_fee\";i:154;s:19:\"total/low_order_fee\";i:155;s:12:\"total/reward\";i:156;s:14:\"total/shipping\";i:157;s:15:\"total/sub_total\";i:158;s:9:\"total/tax\";i:159;s:11:\"total/total\";i:160;s:13:\"total/voucher\";i:161;s:9:\"user/user\";i:162;s:20:\"user/user_permission\";}s:6:\"modify\";a:163:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:27:\"catalog/productimportexport\";i:10;s:33:\"catalog/productimportexport_outag\";i:11;s:15:\"catalog/profile\";i:12;s:14:\"catalog/review\";i:13;s:18:\"common/filemanager\";i:14;s:13:\"design/banner\";i:15;s:19:\"design/custom_field\";i:16;s:13:\"design/layout\";i:17;s:14:\"extension/feed\";i:18;s:17:\"extension/manager\";i:19;s:16:\"extension/module\";i:20;s:17:\"extension/openbay\";i:21;s:17:\"extension/payment\";i:22;s:18:\"extension/shipping\";i:23;s:15:\"extension/total\";i:24;s:16:\"feed/google_base\";i:25;s:19:\"feed/google_sitemap\";i:26;s:20:\"localisation/country\";i:27;s:21:\"localisation/currency\";i:28;s:21:\"localisation/geo_zone\";i:29;s:21:\"localisation/language\";i:30;s:25:\"localisation/length_class\";i:31;s:25:\"localisation/order_status\";i:32;s:26:\"localisation/return_action\";i:33;s:26:\"localisation/return_reason\";i:34;s:26:\"localisation/return_status\";i:35;s:25:\"localisation/stock_status\";i:36;s:22:\"localisation/tax_class\";i:37;s:21:\"localisation/tax_rate\";i:38;s:25:\"localisation/weight_class\";i:39;s:17:\"localisation/zone\";i:40;s:14:\"module/account\";i:41;s:16:\"module/affiliate\";i:42;s:29:\"module/amazon_checkout_layout\";i:43;s:13:\"module/banner\";i:44;s:17:\"module/bestseller\";i:45;s:15:\"module/carousel\";i:46;s:15:\"module/category\";i:47;s:18:\"module/ebaydisplay\";i:48;s:15:\"module/featured\";i:49;s:13:\"module/filter\";i:50;s:18:\"module/google_talk\";i:51;s:18:\"module/information\";i:52;s:13:\"module/latest\";i:53;s:17:\"module/openbaypro\";i:54;s:14:\"module/pavblog\";i:55;s:22:\"module/pavblogcategory\";i:56;s:21:\"module/pavblogcomment\";i:57;s:20:\"module/pavbloglatest\";i:58;s:24:\"module/pavcategorybanner\";i:59;s:16:\"module/pavcustom\";i:60;s:22:\"module/pavmegamenubase\";i:61;s:20:\"module/pavnewsletter\";i:62;s:24:\"module/pavnivoslidershow\";i:63;s:21:\"module/pavproducttabs\";i:64;s:21:\"module/pavreassurance\";i:65;s:21:\"module/pavtestimonial\";i:66;s:17:\"module/pavtwitter\";i:67;s:16:\"module/pp_layout\";i:68;s:16:\"module/slideshow\";i:69;s:14:\"module/special\";i:70;s:12:\"module/store\";i:71;s:19:\"module/themecontrol\";i:72;s:14:\"module/welcome\";i:73;s:14:\"openbay/amazon\";i:74;s:22:\"openbay/amazon_listing\";i:75;s:22:\"openbay/amazon_product\";i:76;s:16:\"openbay/amazonus\";i:77;s:24:\"openbay/amazonus_listing\";i:78;s:24:\"openbay/amazonus_product\";i:79;s:20:\"openbay/ebay_profile\";i:80;s:21:\"openbay/ebay_template\";i:81;s:15:\"openbay/openbay\";i:82;s:23:\"payment/amazon_checkout\";i:83;s:24:\"payment/authorizenet_aim\";i:84;s:21:\"payment/bank_transfer\";i:85;s:14:\"payment/cheque\";i:86;s:11:\"payment/cod\";i:87;s:21:\"payment/free_checkout\";i:88;s:22:\"payment/klarna_account\";i:89;s:22:\"payment/klarna_invoice\";i:90;s:14:\"payment/liqpay\";i:91;s:20:\"payment/moneybookers\";i:92;s:14:\"payment/nochex\";i:93;s:21:\"payment/openpay_cards\";i:94;s:15:\"payment/paymate\";i:95;s:16:\"payment/paypoint\";i:96;s:13:\"payment/payza\";i:97;s:26:\"payment/perpetual_payments\";i:98;s:18:\"payment/pp_express\";i:99;s:25:\"payment/pp_payflow_iframe\";i:100;s:14:\"payment/pp_pro\";i:101;s:21:\"payment/pp_pro_iframe\";i:102;s:17:\"payment/pp_pro_pf\";i:103;s:17:\"payment/pp_pro_uk\";i:104;s:19:\"payment/pp_standard\";i:105;s:15:\"payment/sagepay\";i:106;s:22:\"payment/sagepay_direct\";i:107;s:18:\"payment/sagepay_us\";i:108;s:19:\"payment/twocheckout\";i:109;s:28:\"payment/web_payment_software\";i:110;s:16:\"payment/worldpay\";i:111;s:27:\"report/affiliate_commission\";i:112;s:22:\"report/customer_credit\";i:113;s:22:\"report/customer_online\";i:114;s:21:\"report/customer_order\";i:115;s:22:\"report/customer_reward\";i:116;s:24:\"report/product_purchased\";i:117;s:21:\"report/product_viewed\";i:118;s:18:\"report/sale_coupon\";i:119;s:17:\"report/sale_order\";i:120;s:18:\"report/sale_return\";i:121;s:20:\"report/sale_shipping\";i:122;s:15:\"report/sale_tax\";i:123;s:14:\"sale/affiliate\";i:124;s:12:\"sale/contact\";i:125;s:11:\"sale/coupon\";i:126;s:13:\"sale/customer\";i:127;s:20:\"sale/customer_ban_ip\";i:128;s:19:\"sale/customer_group\";i:129;s:10:\"sale/order\";i:130;s:14:\"sale/recurring\";i:131;s:11:\"sale/return\";i:132;s:12:\"sale/voucher\";i:133;s:18:\"sale/voucher_theme\";i:134;s:15:\"setting/setting\";i:135;s:13:\"setting/store\";i:136;s:16:\"shipping/auspost\";i:137;s:17:\"shipping/citylink\";i:138;s:14:\"shipping/fedex\";i:139;s:13:\"shipping/flat\";i:140;s:13:\"shipping/free\";i:141;s:13:\"shipping/item\";i:142;s:23:\"shipping/parcelforce_48\";i:143;s:15:\"shipping/pickup\";i:144;s:19:\"shipping/royal_mail\";i:145;s:12:\"shipping/ups\";i:146;s:13:\"shipping/usps\";i:147;s:15:\"shipping/weight\";i:148;s:11:\"tool/backup\";i:149;s:14:\"tool/error_log\";i:150;s:12:\"total/coupon\";i:151;s:12:\"total/credit\";i:152;s:14:\"total/handling\";i:153;s:16:\"total/klarna_fee\";i:154;s:19:\"total/low_order_fee\";i:155;s:12:\"total/reward\";i:156;s:14:\"total/shipping\";i:157;s:15:\"total/sub_total\";i:158;s:9:\"total/tax\";i:159;s:11:\"total/total\";i:160;s:13:\"total/voucher\";i:161;s:9:\"user/user\";i:162;s:20:\"user/user_permission\";}}'),(10,'Demonstration','a:1:{s:6:\"access\";a:161:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:15:\"catalog/profile\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/filemanager\";i:12;s:13:\"design/banner\";i:13;s:19:\"design/custom_field\";i:14;s:13:\"design/layout\";i:15;s:14:\"extension/feed\";i:16;s:17:\"extension/manager\";i:17;s:16:\"extension/module\";i:18;s:17:\"extension/openbay\";i:19;s:17:\"extension/payment\";i:20;s:18:\"extension/shipping\";i:21;s:15:\"extension/total\";i:22;s:16:\"feed/google_base\";i:23;s:19:\"feed/google_sitemap\";i:24;s:20:\"localisation/country\";i:25;s:21:\"localisation/currency\";i:26;s:21:\"localisation/geo_zone\";i:27;s:21:\"localisation/language\";i:28;s:25:\"localisation/length_class\";i:29;s:25:\"localisation/order_status\";i:30;s:26:\"localisation/return_action\";i:31;s:26:\"localisation/return_reason\";i:32;s:26:\"localisation/return_status\";i:33;s:25:\"localisation/stock_status\";i:34;s:22:\"localisation/tax_class\";i:35;s:21:\"localisation/tax_rate\";i:36;s:25:\"localisation/weight_class\";i:37;s:17:\"localisation/zone\";i:38;s:14:\"module/account\";i:39;s:16:\"module/affiliate\";i:40;s:29:\"module/amazon_checkout_layout\";i:41;s:13:\"module/banner\";i:42;s:17:\"module/bestseller\";i:43;s:15:\"module/carousel\";i:44;s:15:\"module/category\";i:45;s:18:\"module/ebaydisplay\";i:46;s:15:\"module/featured\";i:47;s:13:\"module/filter\";i:48;s:18:\"module/google_talk\";i:49;s:18:\"module/information\";i:50;s:13:\"module/latest\";i:51;s:17:\"module/openbaypro\";i:52;s:14:\"module/pavblog\";i:53;s:22:\"module/pavblogcategory\";i:54;s:21:\"module/pavblogcomment\";i:55;s:20:\"module/pavbloglatest\";i:56;s:24:\"module/pavcategorybanner\";i:57;s:16:\"module/pavcustom\";i:58;s:15:\"module/pavdeals\";i:59;s:18:\"module/pavmegamenu\";i:60;s:20:\"module/pavnewsletter\";i:61;s:21:\"module/pavproducttabs\";i:62;s:21:\"module/pavreassurance\";i:63;s:21:\"module/pavsliderlayer\";i:64;s:21:\"module/pavtestimonial\";i:65;s:17:\"module/pavtwitter\";i:66;s:16:\"module/pp_layout\";i:67;s:16:\"module/slideshow\";i:68;s:14:\"module/special\";i:69;s:12:\"module/store\";i:70;s:19:\"module/themecontrol\";i:71;s:14:\"module/welcome\";i:72;s:14:\"openbay/amazon\";i:73;s:22:\"openbay/amazon_listing\";i:74;s:22:\"openbay/amazon_product\";i:75;s:16:\"openbay/amazonus\";i:76;s:24:\"openbay/amazonus_listing\";i:77;s:24:\"openbay/amazonus_product\";i:78;s:20:\"openbay/ebay_profile\";i:79;s:21:\"openbay/ebay_template\";i:80;s:15:\"openbay/openbay\";i:81;s:23:\"payment/amazon_checkout\";i:82;s:24:\"payment/authorizenet_aim\";i:83;s:21:\"payment/bank_transfer\";i:84;s:14:\"payment/cheque\";i:85;s:11:\"payment/cod\";i:86;s:21:\"payment/free_checkout\";i:87;s:22:\"payment/klarna_account\";i:88;s:22:\"payment/klarna_invoice\";i:89;s:14:\"payment/liqpay\";i:90;s:20:\"payment/moneybookers\";i:91;s:14:\"payment/nochex\";i:92;s:15:\"payment/paymate\";i:93;s:16:\"payment/paypoint\";i:94;s:13:\"payment/payza\";i:95;s:26:\"payment/perpetual_payments\";i:96;s:18:\"payment/pp_express\";i:97;s:25:\"payment/pp_payflow_iframe\";i:98;s:14:\"payment/pp_pro\";i:99;s:21:\"payment/pp_pro_iframe\";i:100;s:17:\"payment/pp_pro_pf\";i:101;s:17:\"payment/pp_pro_uk\";i:102;s:19:\"payment/pp_standard\";i:103;s:15:\"payment/sagepay\";i:104;s:22:\"payment/sagepay_direct\";i:105;s:18:\"payment/sagepay_us\";i:106;s:19:\"payment/twocheckout\";i:107;s:28:\"payment/web_payment_software\";i:108;s:16:\"payment/worldpay\";i:109;s:27:\"report/affiliate_commission\";i:110;s:22:\"report/customer_credit\";i:111;s:22:\"report/customer_online\";i:112;s:21:\"report/customer_order\";i:113;s:22:\"report/customer_reward\";i:114;s:24:\"report/product_purchased\";i:115;s:21:\"report/product_viewed\";i:116;s:18:\"report/sale_coupon\";i:117;s:17:\"report/sale_order\";i:118;s:18:\"report/sale_return\";i:119;s:20:\"report/sale_shipping\";i:120;s:15:\"report/sale_tax\";i:121;s:14:\"sale/affiliate\";i:122;s:12:\"sale/contact\";i:123;s:11:\"sale/coupon\";i:124;s:13:\"sale/customer\";i:125;s:20:\"sale/customer_ban_ip\";i:126;s:19:\"sale/customer_group\";i:127;s:10:\"sale/order\";i:128;s:14:\"sale/recurring\";i:129;s:11:\"sale/return\";i:130;s:12:\"sale/voucher\";i:131;s:18:\"sale/voucher_theme\";i:132;s:15:\"setting/setting\";i:133;s:13:\"setting/store\";i:134;s:16:\"shipping/auspost\";i:135;s:17:\"shipping/citylink\";i:136;s:14:\"shipping/fedex\";i:137;s:13:\"shipping/flat\";i:138;s:13:\"shipping/free\";i:139;s:13:\"shipping/item\";i:140;s:23:\"shipping/parcelforce_48\";i:141;s:15:\"shipping/pickup\";i:142;s:19:\"shipping/royal_mail\";i:143;s:12:\"shipping/ups\";i:144;s:13:\"shipping/usps\";i:145;s:15:\"shipping/weight\";i:146;s:11:\"tool/backup\";i:147;s:14:\"tool/error_log\";i:148;s:12:\"total/coupon\";i:149;s:12:\"total/credit\";i:150;s:14:\"total/handling\";i:151;s:16:\"total/klarna_fee\";i:152;s:19:\"total/low_order_fee\";i:153;s:12:\"total/reward\";i:154;s:14:\"total/shipping\";i:155;s:15:\"total/sub_total\";i:156;s:9:\"total/tax\";i:157;s:11:\"total/total\";i:158;s:13:\"total/voucher\";i:159;s:9:\"user/user\";i:160;s:20:\"user/user_permission\";}}');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_verticalmenu`
--

DROP TABLE IF EXISTS `oc_verticalmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_verticalmenu` (
  `verticalmenu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  PRIMARY KEY (`verticalmenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_verticalmenu`
--

LOCK TABLES `oc_verticalmenu` WRITE;
/*!40000 ALTER TABLE `oc_verticalmenu` DISABLE KEYS */;
INSERT INTO `oc_verticalmenu` (`verticalmenu_id`, `widget_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`) VALUES (1,0,'',0,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,0,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,-5,34,47),(3,1,'data/icon-verticalmenu/icon05.png',1,0,NULL,NULL,NULL,'','59','1','category',0,1,'menu',0,1,0,5,0,'',NULL,0,'top','pav-parrent',NULL,'','',0,0,0),(4,1,'',3,0,NULL,NULL,NULL,'','25','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0),(7,1,'data/icon-verticalmenu/icon04.png',1,0,NULL,NULL,NULL,'','25','1','category',0,1,'menu',0,1,0,4,0,'',NULL,0,'top','child-menu',NULL,'','',0,0,0),(10,1,'',26,0,NULL,NULL,NULL,'','59','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(11,1,'',26,0,NULL,NULL,NULL,'','25','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(12,1,'',26,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(13,1,'',26,0,NULL,NULL,NULL,'','34','1','category',0,1,'menu',0,1,0,4,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(14,1,'',26,0,NULL,NULL,NULL,'','24','1','category',0,1,'menu',0,1,0,5,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(15,1,'',26,0,NULL,NULL,NULL,'','17','1','category',0,1,'menu',0,1,0,6,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(16,1,'',26,0,NULL,NULL,NULL,'','57','1','category',0,1,'menu',0,1,0,7,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(17,1,'',28,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0),(18,1,'',28,0,NULL,NULL,NULL,'','67','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(19,1,'',28,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(20,1,'',28,0,NULL,NULL,NULL,'','29','1','category',0,1,'menu',0,1,0,4,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(21,1,'',28,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,5,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(22,1,'',28,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,6,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(23,1,'',28,0,NULL,NULL,NULL,'','59','1','category',0,1,'menu',0,1,0,7,0,'',NULL,0,'top','pav-menu-child',NULL,'','',0,0,0),(25,1,'',3,0,NULL,NULL,NULL,'','29','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','',0,0,0),(26,1,'',3,0,NULL,NULL,NULL,'','31','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','',NULL,'','',0,0,0),(27,1,'',3,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,4,0,'',NULL,0,'top','',NULL,'','',0,0,0),(28,1,'',3,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,5,0,'',NULL,0,'top','',NULL,'','',0,0,0),(29,1,'',3,0,NULL,NULL,NULL,'','28','1','category',0,1,'menu',0,1,0,6,0,'',NULL,0,'top','',NULL,'','',0,0,0),(30,1,'',3,0,NULL,NULL,NULL,'','27','1','category',0,1,'menu',0,1,0,7,0,'',NULL,0,'top','',NULL,'','',0,0,0),(31,1,'',3,0,NULL,NULL,NULL,'','25','1','category',0,1,'menu',0,1,0,8,0,'',NULL,0,'top','',NULL,'','',0,0,0),(32,1,'',3,0,NULL,NULL,NULL,'','59','1','category',0,1,'menu',0,1,0,9,0,'',NULL,0,'top','',NULL,'','',0,0,0),(33,1,'',3,0,NULL,NULL,NULL,'','34','1','category',0,1,'menu',0,1,0,10,0,'',NULL,0,'top','',NULL,'','',0,0,0),(34,1,'',3,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,11,0,'',NULL,0,'top','',NULL,'','',0,0,0),(35,1,'',3,0,NULL,NULL,NULL,'','25','1','category',0,1,'menu',0,1,0,12,0,'',NULL,0,'top','',NULL,'','',0,0,0),(36,1,'',3,0,NULL,NULL,NULL,'','59','1','category',0,1,'menu',0,1,0,13,0,'',NULL,0,'top','',NULL,'','',0,0,0),(37,1,'data/icon-verticalmenu/icon06.png',1,0,NULL,NULL,NULL,'','25','1','category',0,1,'menu',0,1,0,6,0,'',NULL,0,'top','',NULL,'','',0,0,0),(40,1,'data/icon-verticalmenu/icon01.png',1,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','home',NULL,'','',0,0,0),(41,1,'',26,0,NULL,NULL,NULL,'','45','1','category',0,1,'menu',0,1,0,8,0,'',NULL,0,'top','',NULL,'','',0,0,0),(42,1,'',26,0,NULL,NULL,NULL,'','18','1','category',0,1,'menu',0,1,0,9,0,'',NULL,0,'top','',NULL,'','',0,0,0),(44,1,'data/icon-verticalmenu/icon02.png',1,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','child-menu',NULL,'','',0,0,0),(45,1,'',13,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0),(46,1,'',13,0,NULL,NULL,NULL,'','59','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','',0,0,0),(47,1,'',13,0,NULL,NULL,NULL,'','25','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','',NULL,'','',0,0,0),(48,1,'',13,0,NULL,NULL,NULL,'','17','1','category',0,1,'menu',0,1,0,4,0,'',NULL,0,'top','',NULL,'','',0,0,0),(49,1,'',13,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,5,0,'',NULL,0,'top','',NULL,'','',0,0,0),(50,1,'data/icon-verticalmenu/icon07.png',1,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,7,0,'',NULL,0,'top','home',NULL,'','',0,0,0),(51,1,'data/icon-verticalmenu/icon08.png',1,0,NULL,NULL,NULL,'','20','1','category',0,1,'menu',0,1,0,8,0,'',NULL,0,'top','home',NULL,'','',0,0,0),(52,1,'data/icon-verticalmenu/icon03.png',1,0,NULL,NULL,NULL,'','59','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','',NULL,'','',0,0,0),(53,1,'data/icon-verticalmenu/icon09.png',1,0,NULL,NULL,NULL,'','32','1','category',0,1,'menu',0,1,0,9,0,'',NULL,0,'top','',NULL,'','',0,0,0),(54,1,'data/icon-verticalmenu/icon10.png',1,0,NULL,NULL,NULL,'','31','1','category',0,1,'menu',0,1,0,10,0,'',NULL,0,'top','',NULL,'','',0,0,0),(55,1,'data/icon-verticalmenu/icon11.png',1,0,NULL,NULL,NULL,'','27','1','category',0,1,'menu',0,1,0,11,0,'',NULL,0,'top','',NULL,'','',0,0,0);
/*!40000 ALTER TABLE `oc_verticalmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_verticalmenu_description`
--

DROP TABLE IF EXISTS `oc_verticalmenu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_verticalmenu_description` (
  `verticalmenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`verticalmenu_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_verticalmenu_description`
--

LOCK TABLES `oc_verticalmenu_description` WRITE;
/*!40000 ALTER TABLE `oc_verticalmenu_description` DISABLE KEYS */;
INSERT INTO `oc_verticalmenu_description` (`verticalmenu_id`, `language_id`, `title`, `description`) VALUES (7,2,'الألعاب كونسول و','جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد '),(7,1,'Gaming &amp; Consoles','Morbi accumsan ipsum velit. Nam nec tellus'),(18,1,'Curabitur turpis ',''),(19,2,'يكن ودول التّحول بريطانيا في',''),(23,2,'يكن ودول التّحول بريطانيا في',''),(26,1,'Electronics Accessories',''),(28,1,'Electronics Accessories',''),(40,1,'Cameras &amp; Camcorders','Proin gravida nibh vel velit auctor aliquet'),(40,2,'الكاميرات و أجهزة فيديو','جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد '),(37,2,'تلفزيونات','عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو '),(36,2,'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ',''),(36,1,'Computers &amp; Tablets',''),(35,2,'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ',''),(35,1,'TV &amp; Home Theater',''),(34,2,'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ',''),(34,1,'Home &amp; Portable Audio',''),(33,2,'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ',''),(33,1,'Cell Phones &amp; Services',''),(32,2,'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ',''),(32,1,'Camera &amp; Video',''),(31,2,'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ',''),(31,1,'Vehicle, GPS &amp; Navigation',''),(30,2,'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ',''),(30,1,'Software',''),(29,2,'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ',''),(29,1,'Office Products',''),(28,2,'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ',''),(19,1,'Software',''),(27,2,'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ',''),(26,2,'يكن ودول التّحول بريطانيا في',''),(25,1,'Trade In Electronics',''),(25,2,'يكن ودول التّحول بريطانيا في',''),(4,1,'Musical Instruments',''),(4,2,'يكن ودول التّحول بريطانيا في',''),(16,2,'يكن ودول التّحول بريطانيا في',''),(15,2,'يكن ودول التّحول بريطانيا في',''),(15,1,'Software',''),(13,1,'MP3 Players',''),(13,2,'يكن ودول التّحول بريطانيا في',''),(12,1,'Desktops',''),(12,2,'يكن ودول التّحول بريطانيا في',''),(10,1,'Camera',''),(10,2,'يكن ودول التّحول بريطانيا في',''),(20,1,'Camera &amp; Videos',''),(20,2,'يكن ودول التّحول بريطانيا في',''),(17,1,'Musical Instruments',''),(17,2,'يكن ودول التّحول بريطانيا في',''),(22,2,'يكن ودول التّحول بريطانيا في',''),(21,2,'يكن ودول التّحول بريطانيا في',''),(11,1,'Components',''),(11,2,'يكن ودول التّحول بريطانيا في',''),(14,1,'Phones &amp; PDAs',''),(14,2,'يكن ودول التّحول بريطانيا في',''),(41,1,'Windows',''),(42,1,'Laptops &amp; Notebooks',''),(42,2,'يكن ودول التّحول بريطانيا في',''),(41,2,'يكن ودول التّحول بريطانيا في',''),(44,1,'Home Entertainment','Aenean sollicitudin, lorem quis bibendum auctor'),(44,2,'الترفيه المنزلي','عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو '),(16,1,'Tablets',''),(18,2,'يكن ودول التّحول بريطانيا في',''),(3,1,'Smartphones &amp; Tablets','Sed non  mauris vitae erat consequat auctor eu in elit'),(3,2,'الهواتف الذكية وأقراص','جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد '),(45,2,'يكن ودول التّحول بريطانيا في',''),(47,1,'Gifts Cards, Tickets',''),(47,2,'يكن ودول التّحول بريطانيا في',''),(48,2,'يكن ودول التّحول بريطانيا في',''),(46,2,'يكن ودول التّحول بريطانيا في',''),(46,1,'Clothing &amp; Accessories',''),(45,1,'Baby, Kids &amp; Toys',''),(49,2,'يكن ودول التّحول بريطانيا في',''),(49,1,'Outdoor',''),(48,1,'Computers &amp; Parts',''),(27,1,'Office Products',''),(21,1,'Video Games',''),(22,1,'Cameras &amp; Photo',''),(23,1,'Laptops &amp; Desktops',''),(52,2,'أجهزة الكمبيوتر وأجهزة الكمبيوتر المحمولة','الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء.'),(52,1,'Computers &amp; Laptops','Duis sed odio sit amet nibh vulputate'),(37,1,'Televisions','Class aptent taciti sociosqu ad litora'),(50,1,'Game &amp; Toys','Proin gravida nibh vel velit auctor '),(50,2,'اللعبة واللعب','جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد '),(51,1,'Office','Proin gravida nibh vel velit auctor '),(51,2,'مكتب','جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد '),(53,1,'Jewelry','Proin gravida nibh vel velit auctor '),(53,2,'مجوهرات','جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد '),(54,1,'T-shirts','تي شيرت'),(54,2,'تي شيرت','جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد '),(55,1,'Perfume',''),(55,2,' عطر','');
/*!40000 ALTER TABLE `oc_verticalmenu_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_verticalmenu_widgets`
--

DROP TABLE IF EXISTS `oc_verticalmenu_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_verticalmenu_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_verticalmenu_widgets`
--

LOCK TABLES `oc_verticalmenu_widgets` WRITE;
/*!40000 ALTER TABLE `oc_verticalmenu_widgets` DISABLE KEYS */;
INSERT INTO `oc_verticalmenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES (1,'Video Opencart Installation','video_code','a:1:{s:10:\"video_code\";s:168:\"&lt;iframe width=&quot;300&quot; height=&quot;315&quot; src=&quot;//www.youtube.com/embed/cUhPA5qIxDQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;\";}',0),(2,'Electronics &amp; Computers','html','a:1:{s:4:\"html\";a:2:{i:1;s:1022:\"&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59&quot;&gt;Computers &amp;amp; Tablets&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25&quot;&gt;TV &amp;amp; Home Theater&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59&quot;&gt;Home &amp;amp; Portable Audio&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=29&quot;&gt;Cell Phones &amp;amp; Services&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=28&quot;&gt;Camera &amp;amp; Video&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20&quot;&gt;Vehicle, GPS &amp;amp; Navigation&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34&quot;&gt;Musical Instruments&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\";i:2;s:1282:\"&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25&quot;&gt;للإمبر &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=29&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=28&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34&quot;&gt;مدن, هذا جديدة المذابح&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\";}}',0),(3,'Products Latest','product_list','a:4:{s:9:\"list_type\";s:7:\"special\";s:5:\"limit\";s:1:\"3\";s:11:\"image_width\";s:3:\"161\";s:12:\"image_height\";s:3:\"121\";}',0),(4,'Products In Cat 20','product_category','a:4:{s:11:\"category_id\";s:2:\"20\";s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:3:\"161\";s:12:\"image_height\";s:3:\"121\";}',0),(5,'Manufactures','banner','a:4:{s:8:\"group_id\";s:1:\"8\";s:11:\"image_width\";s:3:\"170\";s:12:\"image_height\";s:2:\"58\";s:5:\"limit\";s:2:\"16\";}',0),(6,'PavoThemes Feed','feed','a:1:{s:8:\"feed_url\";s:55:\"http://www.pavothemes.com/opencart-themes.feed?type=rss\";}',0),(7,'Image Widget  ','image','a:3:{s:10:\"image_path\";s:31:\"data/demo/sub-vertical-menu.png\";s:11:\"image_width\";s:3:\"335\";s:12:\"image_height\";s:3:\"180\";}',0),(8,'Banner','html','a:1:{s:4:\"html\";a:2:{i:1;s:120:\"&lt;img style=&quot;margin-top:30px&quot; src=&quot;image/data/banner/verticalmenu-banner.jpg&quot; alt=&quot;&quot;&gt;\";i:2;s:121:\"&lt;img style=&quot;margin-top:30px&quot;  src=&quot;image/data/banner/verticalmenu-banner.jpg&quot; alt=&quot;&quot;&gt;\";}}',0),(9,'Camera &amp; Videos','html','a:1:{s:4:\"html\";a:2:{i:1;s:660:\"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=42&quot;&gt;Apple Cinema 30&quot;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=33&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=34&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=46&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;\";i:2;s:693:\"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=42&quot;&gt;التفاح سينما 30 &quot;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=33&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=34&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=34&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;\";}}',0),(10,'Last Tweets','html','a:1:{s:4:\"html\";a:2:{i:1;s:317:\"&lt;p&gt;\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\n&lt;/p&gt; \r\n\";i:2;s:698:\"&lt;p&gt;\r\n وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،.وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر .وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر\r\n&lt;/p&gt; \r\n\";}}',0),(11,'Category','html','a:1:{s:4:\"html\";a:2:{i:1;s:816:\"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=42&quot;&gt;Apple Cinema 30&quot;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=33&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=48&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=34&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=30&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;\";i:2;s:857:\"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=42&quot;&gt;التفاح سينما 30 &quot;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=33&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=48&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=34&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=30&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n &lt;/ul&gt;\";}}',0),(12,'Networking','html','a:1:{s:4:\"html\";a:2:{i:1;s:882:\"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;All Computers &amp;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;Networking&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;Tablets &amp; Accessories&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;&quot;&gt;Laptops &amp; Accessories &lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;Computer &amp; Peripherals &lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Networking &amp; Storage&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Laptops&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Laptop Accessories&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Networking&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Mini PCs&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\";i:2;s:882:\"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;All Computers &amp;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;Networking&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;Tablets &amp; Accessories&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;&quot;&gt;Laptops &amp; Accessories &lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;Computer &amp; Peripherals &lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Networking &amp; Storage&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Laptops&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Laptop Accessories&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Networking&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Mini PCs&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\";}}',0),(13,'Electronics','html','a:1:{s:4:\"html\";a:2:{i:1;s:968:\"&lt;ul&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Lights &amp; Lighting&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Pet Products&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Kitchen, Dining &amp; Bar&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Home Decor&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Festive &amp; Party&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Home Textiles&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Garden Supplies&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Bathroom Products&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Housekeeping &amp;&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Organizers Rain Gear&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Security &amp; Protectio&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Faucets&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\";i:2;s:968:\"&lt;ul&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Lights &amp; Lighting&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Pet Products&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Kitchen, Dining &amp; Bar&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Home Decor&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Festive &amp; Party&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Home Textiles&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Garden Supplies&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Bathroom Products&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Housekeeping &amp;&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Organizers Rain Gear&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Security &amp; Protectio&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Faucets&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\";}}',0),(14,'Accessories','html','a:1:{s:4:\"html\";a:2:{i:1;s:822:\"&lt;ul&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;All Phones&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Bags &amp; Cases&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Batteries&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Chargers &amp; Docks&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Backup Powers&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Cables&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Lenses&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Parts&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;LCDs&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Holders &amp; Stands&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Stickers&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\";i:2;s:822:\"&lt;ul&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;All Phones&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Bags &amp; Cases&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Batteries&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Chargers &amp; Docks&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Backup Powers&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Cables&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Lenses&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Parts&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;LCDs&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Holders &amp; Stands&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Stickers&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\";}}',0);
/*!40000 ALTER TABLE `oc_verticalmenu_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES (8,'data/demo/canon_eos_5d_2.jpg'),(7,'data/demo/gift-voucher-birthday.jpg'),(6,'data/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES (6,6,'Christmas'),(7,6,'Birthday'),(8,6,'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES (1,1.00000000),(2,1000.00000000),(5,0.00000000),(7,0.00000000),(8,0.00000000),(9,0.00000000),(10,0.00000000),(11,0.00000000),(12,0.00000000),(13,0.00000000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES (9,6,'BT00','BT'),(8,6,'ML00','ML'),(1,6,'Kilogramos','kg'),(2,6,'Gramos','g'),(5,6,'Pieza','Pz'),(7,6,'MT00','MT'),(10,6,'BTE','BTE'),(11,6,'BTO','BTO'),(12,6,'TN00','TN'),(13,6,'Litro','LT');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4033 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES (1,1,'Badakhshan','BDS',1),(2,1,'Badghis','BDG',1),(3,1,'Baghlan','BGL',1),(4,1,'Balkh','BAL',1),(5,1,'Bamian','BAM',1),(6,1,'Farah','FRA',1),(7,1,'Faryab','FYB',1),(8,1,'Ghazni','GHA',1),(9,1,'Ghowr','GHO',1),(10,1,'Helmand','HEL',1),(11,1,'Herat','HER',1),(12,1,'Jowzjan','JOW',1),(13,1,'Kabul','KAB',1),(14,1,'Kandahar','KAN',1),(15,1,'Kapisa','KAP',1),(16,1,'Khost','KHO',1),(17,1,'Konar','KNR',1),(18,1,'Kondoz','KDZ',1),(19,1,'Laghman','LAG',1),(20,1,'Lowgar','LOW',1),(21,1,'Nangrahar','NAN',1),(22,1,'Nimruz','NIM',1),(23,1,'Nurestan','NUR',1),(24,1,'Oruzgan','ORU',1),(25,1,'Paktia','PIA',1),(26,1,'Paktika','PKA',1),(27,1,'Parwan','PAR',1),(28,1,'Samangan','SAM',1),(29,1,'Sar-e Pol','SAR',1),(30,1,'Takhar','TAK',1),(31,1,'Wardak','WAR',1),(32,1,'Zabol','ZAB',1),(33,2,'Berat','BR',1),(34,2,'Bulqize','BU',1),(35,2,'Delvine','DL',1),(36,2,'Devoll','DV',1),(37,2,'Diber','DI',1),(38,2,'Durres','DR',1),(39,2,'Elbasan','EL',1),(40,2,'Kolonje','ER',1),(41,2,'Fier','FR',1),(42,2,'Gjirokaster','GJ',1),(43,2,'Gramsh','GR',1),(44,2,'Has','HA',1),(45,2,'Kavaje','KA',1),(46,2,'Kurbin','KB',1),(47,2,'Kucove','KC',1),(48,2,'Korce','KO',1),(49,2,'Kruje','KR',1),(50,2,'Kukes','KU',1),(51,2,'Librazhd','LB',1),(52,2,'Lezhe','LE',1),(53,2,'Lushnje','LU',1),(54,2,'Malesi e Madhe','MM',1),(55,2,'Mallakaster','MK',1),(56,2,'Mat','MT',1),(57,2,'Mirdite','MR',1),(58,2,'Peqin','PQ',1),(59,2,'Permet','PR',1),(60,2,'Pogradec','PG',1),(61,2,'Puke','PU',1),(62,2,'Shkoder','SH',1),(63,2,'Skrapar','SK',1),(64,2,'Sarande','SR',1),(65,2,'Tepelene','TE',1),(66,2,'Tropoje','TP',1),(67,2,'Tirane','TR',1),(68,2,'Vlore','VL',1),(69,3,'Adrar','ADR',1),(70,3,'Ain Defla','ADE',1),(71,3,'Ain Temouchent','ATE',1),(72,3,'Alger','ALG',1),(73,3,'Annaba','ANN',1),(74,3,'Batna','BAT',1),(75,3,'Bechar','BEC',1),(76,3,'Bejaia','BEJ',1),(77,3,'Biskra','BIS',1),(78,3,'Blida','BLI',1),(79,3,'Bordj Bou Arreridj','BBA',1),(80,3,'Bouira','BOA',1),(81,3,'Boumerdes','BMD',1),(82,3,'Chlef','CHL',1),(83,3,'Constantine','CON',1),(84,3,'Djelfa','DJE',1),(85,3,'El Bayadh','EBA',1),(86,3,'El Oued','EOU',1),(87,3,'El Tarf','ETA',1),(88,3,'Ghardaia','GHA',1),(89,3,'Guelma','GUE',1),(90,3,'Illizi','ILL',1),(91,3,'Jijel','JIJ',1),(92,3,'Khenchela','KHE',1),(93,3,'Laghouat','LAG',1),(94,3,'Muaskar','MUA',1),(95,3,'Medea','MED',1),(96,3,'Mila','MIL',1),(97,3,'Mostaganem','MOS',1),(98,3,'M\'Sila','MSI',1),(99,3,'Naama','NAA',1),(100,3,'Oran','ORA',1),(101,3,'Ouargla','OUA',1),(102,3,'Oum el-Bouaghi','OEB',1),(103,3,'Relizane','REL',1),(104,3,'Saida','SAI',1),(105,3,'Setif','SET',1),(106,3,'Sidi Bel Abbes','SBA',1),(107,3,'Skikda','SKI',1),(108,3,'Souk Ahras','SAH',1),(109,3,'Tamanghasset','TAM',1),(110,3,'Tebessa','TEB',1),(111,3,'Tiaret','TIA',1),(112,3,'Tindouf','TIN',1),(113,3,'Tipaza','TIP',1),(114,3,'Tissemsilt','TIS',1),(115,3,'Tizi Ouzou','TOU',1),(116,3,'Tlemcen','TLE',1),(117,4,'Eastern','E',1),(118,4,'Manu\'a','M',1),(119,4,'Rose Island','R',1),(120,4,'Swains Island','S',1),(121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Nieder&ouml;sterreich','NOS',1),(202,14,'Ober&ouml;sterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Hi','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chi','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovar-Bilogora','BB',1),(848,53,'City of Zagreb','CZ',1),(849,53,'Dubrovnik-Neretva','DN',1),(850,53,'Istra','IS',1),(851,53,'Karlovac','KA',1),(852,53,'Koprivnica-Krizevci','KK',1),(853,53,'Krapina-Zagorje','KZ',1),(854,53,'Lika-Senj','LS',1),(855,53,'Medimurje','ME',1),(856,53,'Osijek-Baranja','OB',1),(857,53,'Pozega-Slavonia','PS',1),(858,53,'Primorje-Gorski Kotar','PG',1),(859,53,'Sibenik','SI',1),(860,53,'Sisak-Moslavina','SM',1),(861,53,'Slavonski Brod-Posavina','SB',1),(862,53,'Split-Dalmatia','SD',1),(863,53,'Varazdin','VA',1),(864,53,'Virovitica-Podravina','VP',1),(865,53,'Vukovar-Srijem','VS',1),(866,53,'Zadar-Knin','ZK',1),(867,53,'Zagreb','ZA',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan Laani','AL',1),(1086,72,'Etela-Suomen Laani','ES',1),(1087,72,'Ita-Suomen Laani','IS',1),(1088,72,'Lansi-Suomen Laani','LS',1),(1089,72,'Lapin Lanani','LA',1),(1090,72,'Oulun Laani','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-W&uuml;rttemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Th&uuml;ringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1428,97,'Bacs-Kiskun','BK',1),(1429,97,'Baranya','BA',1),(1430,97,'Bekes','BE',1),(1431,97,'Bekescsaba','BS',1),(1432,97,'Borsod-Abauj-Zemplen','BZ',1),(1433,97,'Budapest','BU',1),(1434,97,'Csongrad','CS',1),(1435,97,'Debrecen','DE',1),(1436,97,'Dunaujvaros','DU',1),(1437,97,'Eger','EG',1),(1438,97,'Fejer','FE',1),(1439,97,'Gyor','GY',1),(1440,97,'Gyor-Moson-Sopron','GM',1),(1441,97,'Hajdu-Bihar','HB',1),(1442,97,'Heves','HE',1),(1443,97,'Hodmezovasarhely','HO',1),(1444,97,'Jasz-Nagykun-Szolnok','JN',1),(1445,97,'Kaposvar','KA',1),(1446,97,'Kecskemet','KE',1),(1447,97,'Komarom-Esztergom','KO',1),(1448,97,'Miskolc','MI',1),(1449,97,'Nagykanizsa','NA',1),(1450,97,'Nograd','NO',1),(1451,97,'Nyiregyhaza','NY',1),(1452,97,'Pecs','PE',1),(1453,97,'Pest','PS',1),(1454,97,'Somogy','SO',1),(1455,97,'Sopron','SP',1),(1456,97,'Szabolcs-Szatmar-Bereg','SS',1),(1457,97,'Szeged','SZ',1),(1458,97,'Szekesfehervar','SE',1),(1459,97,'Szolnok','SL',1),(1460,97,'Szombathely','SM',1),(1461,97,'Tatabanya','TA',1),(1462,97,'Tolna','TO',1),(1463,97,'Vas','VA',1),(1464,97,'Veszprem','VE',1),(1465,97,'Zala','ZA',1),(1466,97,'Zalaegerszeg','ZZ',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Pondicherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'BoDeTaBek','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta Raya','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1819,117,'Aizkraukles Rajons','AIZ',1),(1820,117,'Aluksnes Rajons','ALU',1),(1821,117,'Balvu Rajons','BAL',1),(1822,117,'Bauskas Rajons','BAU',1),(1823,117,'Cesu Rajons','CES',1),(1824,117,'Daugavpils Rajons','DGR',1),(1825,117,'Dobeles Rajons','DOB',1),(1826,117,'Gulbenes Rajons','GUL',1),(1827,117,'Jekabpils Rajons','JEK',1),(1828,117,'Jelgavas Rajons','JGR',1),(1829,117,'Kraslavas Rajons','KRA',1),(1830,117,'Kuldigas Rajons','KUL',1),(1831,117,'Liepajas Rajons','LPR',1),(1832,117,'Limbazu Rajons','LIM',1),(1833,117,'Ludzas Rajons','LUD',1),(1834,117,'Madonas Rajons','MAD',1),(1835,117,'Ogres Rajons','OGR',1),(1836,117,'Preilu Rajons','PRE',1),(1837,117,'Rezeknes Rajons','RZR',1),(1838,117,'Rigas Rajons','RGR',1),(1839,117,'Saldus Rajons','SAL',1),(1840,117,'Talsu Rajons','TAL',1),(1841,117,'Tukuma Rajons','TUK',1),(1842,117,'Valkas Rajons','VLK',1),(1843,117,'Valmieras Rajons','VLM',1),(1844,117,'Ventspils Rajons','VSR',1),(1845,117,'Daugavpils','DGV',1),(1846,117,'Jelgava','JGV',1),(1847,117,'Jurmala','JUR',1),(1848,117,'Liepaja','LPK',1),(1849,117,'Rezekne','RZK',1),(1850,117,'Riga','RGA',1),(1851,117,'Ventspils','VSL',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','JO',1),(1972,129,'Kedah','KE',1),(1973,129,'Kelantan','KL',1),(1974,129,'Labuan','LA',1),(1975,129,'Melaka','ME',1),(1976,129,'Negeri Sembilan','NS',1),(1977,129,'Pahang','PA',1),(1978,129,'Perak','PE',1),(1979,129,'Perlis','PR',1),(1980,129,'Pulau Pinang','PP',1),(1981,129,'Sabah','SA',1),(1982,129,'Sarawak','SR',1),(1983,129,'Selangor','SE',1),(1984,129,'Terengganu','TE',1),(1985,129,'Wilayah Persekutuan','WP',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord Brabant','NB',1),(2336,150,'Noord Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2737,176,'Gomo-Altaysk','GO',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3031,197,'Ascension','A',1),(3032,197,'Saint Helena','S',1),(3033,197,'Tristan da Cunha','T',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'G&auml;vleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'J&auml;mtland','Z',1),(3080,203,'J&ouml;nk&ouml;ping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'&Ouml;rebro','T',1),(3085,203,'&Ouml;sterg&ouml;tland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'S&ouml;dermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'V&auml;rmland','S',1),(3091,203,'V&auml;sterbotten','AC',1),(3092,203,'V&auml;sternorrland','Y',1),(3093,203,'V&auml;stmanland','U',1),(3094,203,'V&auml;stra G&ouml;taland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graub&uuml;nden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Z&uuml;rich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakir','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkasy','CK',1),(3481,220,'Chernihiv','CH',1),(3482,220,'Chernivtsi','CV',1),(3483,220,'Crimea','CR',1),(3484,220,'Dnipropetrovs\'k','DN',1),(3485,220,'Donets\'k','DO',1),(3486,220,'Ivano-Frankivs\'k','IV',1),(3487,220,'Kharkiv Kherson','KL',1),(3488,220,'Khmel\'nyts\'kyy','KM',1),(3489,220,'Kirovohrad','KR',1),(3490,220,'Kiev','KV',1),(3491,220,'Kyyiv','KY',1),(3492,220,'Luhans\'k','LU',1),(3493,220,'L\'viv','LV',1),(3494,220,'Mykolayiv','MY',1),(3495,220,'Odesa','OD',1),(3496,220,'Poltava','PO',1),(3497,220,'Rivne','RI',1),(3498,220,'Sevastopol','SE',1),(3499,220,'Sumy','SU',1),(3500,220,'Ternopil\'','TE',1),(3501,220,'Vinnytsya','VI',1),(3502,220,'Volyn\'','VO',1),(3503,220,'Zakarpattya','ZK',1),(3504,220,'Zaporizhzhya','ZA',1),(3505,220,'Zhytomyr','ZH',1),(3506,221,'Abu Zaby','AZ',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubayy','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3972,222,'Isle of Man','IOM',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4019,243,'Kosovo','KM',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES (57,222,0,3,'2010-02-26 22:33:24','0000-00-00 00:00:00'),(65,222,0,4,'2010-12-15 15:18:13','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tlatikhw_store'
--

--
-- Dumping routines for database 'tlatikhw_store'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-12 22:04:44
