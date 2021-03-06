-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: Radzo
-- ------------------------------------------------------
-- Server version	5.5.62

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
-- Table structure for table `consumables`
--

DROP TABLE IF EXISTS `consumables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumables` (
  `idConsumables` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `cost` float NOT NULL,
  PRIMARY KEY (`idConsumables`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumables`
--

LOCK TABLES `consumables` WRITE;
/*!40000 ALTER TABLE `consumables` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `identifier` int(11) NOT NULL AUTO_INCREMENT,
  `Person_idPerson` int(11) NOT NULL,
  `Orders_idOrders` int(11) NOT NULL,
  PRIMARY KEY (`identifier`),
  KEY `Person_idPerson` (`Person_idPerson`),
  KEY `Orders_idOrders` (`Orders_idOrders`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`Person_idPerson`) REFERENCES `person` (`idPerson`),
  CONSTRAINT `customers_ibfk_2` FOREIGN KEY (`Orders_idOrders`) REFERENCES `orders` (`idOrders`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_has_rewards`
--

DROP TABLE IF EXISTS `customers_has_rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_has_rewards` (
  `Customers_identifier` int(11) NOT NULL,
  `Rewards_idRewards` int(11) NOT NULL,
  KEY `Customers_identifier` (`Customers_identifier`),
  KEY `Rewards_idRewards` (`Rewards_idRewards`),
  CONSTRAINT `customers_has_rewards_ibfk_1` FOREIGN KEY (`Customers_identifier`) REFERENCES `customers` (`identifier`),
  CONSTRAINT `customers_has_rewards_ibfk_2` FOREIGN KEY (`Rewards_idRewards`) REFERENCES `rewards` (`idRewards`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_has_rewards`
--

LOCK TABLES `customers_has_rewards` WRITE;
/*!40000 ALTER TABLE `customers_has_rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_has_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `employee_number` int(11) NOT NULL AUTO_INCREMENT,
  `Customers_identifier` int(11) NOT NULL,
  `Menu_idMenu` int(11) NOT NULL,
  `Person_idPerson` int(11) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`employee_number`),
  KEY `Customers_identifier` (`Customers_identifier`),
  KEY `Menu_idMenu` (`Menu_idMenu`),
  KEY `Person_idPerson` (`Person_idPerson`),
  CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`Customers_identifier`) REFERENCES `customers` (`identifier`),
  CONSTRAINT `manager_ibfk_2` FOREIGN KEY (`Menu_idMenu`) REFERENCES `menu` (`idMenu`),
  CONSTRAINT `manager_ibfk_3` FOREIGN KEY (`Person_idPerson`) REFERENCES `person` (`idPerson`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `idMenu` int(11) NOT NULL AUTO_INCREMENT,
  `Consumables_idConsumables` int(11) NOT NULL,
  PRIMARY KEY (`idMenu`),
  KEY `Consumables_idConsumables` (`Consumables_idConsumables`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`Consumables_idConsumables`) REFERENCES `consumables` (`idConsumables`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `idOrders` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `ShoppingCart_idShoppingCart` int(11) NOT NULL,
  PRIMARY KEY (`idOrders`),
  KEY `ShoppingCart_idShoppingCart` (`ShoppingCart_idShoppingCart`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ShoppingCart_idShoppingCart`) REFERENCES `shoppingcart` (`idShoppingCart`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_has_rewards`
--

DROP TABLE IF EXISTS `orders_has_rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_has_rewards` (
  `Orders_idOrders` int(11) NOT NULL,
  `Rewards_idRewards` int(11) NOT NULL,
  KEY `Orders_idOrders` (`Orders_idOrders`),
  KEY `Rewards_idRewards` (`Rewards_idRewards`),
  CONSTRAINT `orders_has_rewards_ibfk_1` FOREIGN KEY (`Orders_idOrders`) REFERENCES `orders` (`idOrders`),
  CONSTRAINT `orders_has_rewards_ibfk_2` FOREIGN KEY (`Rewards_idRewards`) REFERENCES `rewards` (`idRewards`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_has_rewards`
--

LOCK TABLES `orders_has_rewards` WRITE;
/*!40000 ALTER TABLE `orders_has_rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_has_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `name` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `idPerson` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idPerson`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards`
--

DROP TABLE IF EXISTS `rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rewards` (
  `idRewards` int(11) NOT NULL AUTO_INCREMENT,
  `visitor_number` int(11) NOT NULL,
  `rewards_activated` tinyint(1) NOT NULL,
  `invoice` bigint(20) NOT NULL,
  PRIMARY KEY (`idRewards`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards`
--

LOCK TABLES `rewards` WRITE;
/*!40000 ALTER TABLE `rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcart` (
  `idShoppingCart` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(45) NOT NULL,
  `costTotal` float NOT NULL,
  `Consumables_idConsumables` int(11) NOT NULL,
  PRIMARY KEY (`idShoppingCart`),
  KEY `Consumables_idConsumables` (`Consumables_idConsumables`),
  CONSTRAINT `shoppingcart_ibfk_1` FOREIGN KEY (`Consumables_idConsumables`) REFERENCES `consumables` (`idConsumables`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-13 16:36:23
