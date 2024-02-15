-- Tabla
CREATE DATABASE  IF NOT EXISTS `salesman` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `salesman`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: salesman
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `company_mast`
--

DROP TABLE IF EXISTS `company_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_mast` (
  `COM_ID` int DEFAULT NULL,
  `COM_NAME` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_mast`
--

LOCK TABLES `company_mast` WRITE;
/*!40000 ALTER TABLE `company_mast` DISABLE KEYS */;
INSERT INTO `company_mast` VALUES (11,'Samsung'),(12,'iBall'),(13,'Epsion'),(14,'Zebronics'),(15,'Asus'),(16,'Frontech');
/*!40000 ALTER TABLE `company_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int DEFAULT NULL,
  `cust_name` text,
  `city` text,
  `grade` text,
  `salesman_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (3002,'Nick Rimando','New York','100',5001),(3005,'Graham Zusi','California','200',5002),(3001,'Brad Guzan','London','',5005),(3004,'Fabian Johns','Paris','300',5006),(3007,'Brad Davis','New York','200',5001),(3009,'Geoff Camero','Berlin','100',5003),(3008,'Julian Green','London','300',5002),(3003,'Jozy Altidor','Moscow','200',5007);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_department`
--

DROP TABLE IF EXISTS `emp_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_department` (
  `DPT_CODE` int DEFAULT NULL,
  `DPT_NAME` text,
  `DPT_ALLOTMENT` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_department`
--

LOCK TABLES `emp_department` WRITE;
/*!40000 ALTER TABLE `emp_department` DISABLE KEYS */;
INSERT INTO `emp_department` VALUES (57,'IT',65000),(63,'Finance',15000),(47,'HR',240000),(27,'RD',55000),(89,'QC',75000);
/*!40000 ALTER TABLE `emp_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_details`
--

DROP TABLE IF EXISTS `emp_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_details` (
  `EMP_IDNO` int DEFAULT NULL,
  `EMP_FNAME` text,
  `EMP_LNAME` text,
  `EMP_DEPT` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_details`
--

LOCK TABLES `emp_details` WRITE;
/*!40000 ALTER TABLE `emp_details` DISABLE KEYS */;
INSERT INTO `emp_details` VALUES (127323,'Michale','Robbin',57),(526689,'Carlos','Snares',63),(843795,'Enric','Dosio',57),(328717,'Jhon','Snares',63),(444527,'Joseph','Dosni',47),(659831,'Zanifer','Emily',47),(847674,'Kuleswar','Sitaraman',57),(748681,'Henrey','Gabriel',47),(555935,'Alex','Manuel',57),(539569,'George','Mardy',27),(733843,'Mario','Saule',63),(631548,'Alan','Snappy',27),(839139,'Maria','Foster',57);
/*!40000 ALTER TABLE `emp_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_mast`
--

DROP TABLE IF EXISTS `item_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_mast` (
  `PRO_ID` int DEFAULT NULL,
  `PRO_NAME` text,
  `PRO_COM` int DEFAULT NULL,
  `PRO_PRIC` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_mast`
--

LOCK TABLES `item_mast` WRITE;
/*!40000 ALTER TABLE `item_mast` DISABLE KEYS */;
INSERT INTO `item_mast` VALUES (101,'Mother Board',3200,15),(102,'Key Board',450,16),(103,'ZIP drive',250,14),(104,'Speaker',550,16),(105,'Monitor',5000,11),(106,'DVD drive',900,12),(107,'CD drive',800,12),(108,'Printer',2600,13),(109,'Refill cartridge',350,13),(110,'Mouse',250,12);
/*!40000 ALTER TABLE `item_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ord_no` int DEFAULT NULL,
  `purch_amt` double DEFAULT NULL,
  `ord_date` text,
  `customer_id` int DEFAULT NULL,
  `salesman_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (70001,150.5,'2012-10-05',3005,5002),(70009,270.65,'2012-09-10',3001,5005),(70002,65.26,'2012-10-05',3002,5001),(70004,110.5,'2012-08-17',3009,5003),(70007,948.5,'2012-09-10',3005,5002),(70005,2400.6,'2012-07-27',3007,5001),(70008,5760,'2012-09-10',3002,5001),(70010,1983.43,'2012-10-10',3004,5006),(70003,2480.4,'2012-10-10',3009,5003),(70012,250.45,'2012-06-27',3008,5002),(70011,75.29,'2012-08-17',3003,5007),(70013,3045.6,'2012-04-25',3002,5001);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesman`
--

DROP TABLE IF EXISTS `salesman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesman` (
  `salesman_id` int DEFAULT NULL,
  `name` text,
  `city` text,
  `commission` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesman`
--

LOCK TABLES `salesman` WRITE;
/*!40000 ALTER TABLE `salesman` DISABLE KEYS */;
INSERT INTO `salesman` VALUES (5001,'James Hoog','New York',0.15),(5002,'Nail Knite','Paris',0.13),(5005,'Pit Alex','London',0.11),(5006,'Mc Lyon','Paris',0.14),(5003,'Lauson Hen','',0.12),(5007,'Paul Adam','Rome',0.13);
/*!40000 ALTER TABLE `salesman` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-30  9:38:14

-- Order BY
SELECT * FROM salesman
ORDER BY name;

SELECT * FROM salesman
ORDER BY name ASC;

SELECT * FROM salesman
ORDER BY city ASC;

SELECT * FROM orders
ORDER BY ord_date;

SELECT * FROM orders
ORDER BY ord_date, customer_id;

-- WHERE
SELECT * FROM orders
WHERE customer_id = 3002;

SELECT * FROM orders
WHERE salesman_id = 5002;



