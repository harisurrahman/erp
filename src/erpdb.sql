-- MySQL dump 10.13  Distrib 8.0.27, for Linux (aarch64)
--
-- Host: localhost    Database: erpdb
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Current Database: `erpdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `erpdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `erpdb`;

--
-- Table structure for table `chart_of_account_permissions`
--

DROP TABLE IF EXISTS `chart_of_account_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chart_of_account_permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `gl_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chart_of_account_permissions_gl_account_foreign` (`gl_account`),
  KEY `chart_of_account_permissions_user_id_foreign` (`user_id`),
  CONSTRAINT `chart_of_account_permissions_gl_account_foreign` FOREIGN KEY (`gl_account`) REFERENCES `chart_of_accounts` (`gl_account`),
  CONSTRAINT `chart_of_account_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chart_of_account_permissions`
--

LOCK TABLES `chart_of_account_permissions` WRITE;
/*!40000 ALTER TABLE `chart_of_account_permissions` DISABLE KEYS */;
INSERT INTO `chart_of_account_permissions` VALUES (1,1,'1',NULL,NULL),(2,1,'1010',NULL,NULL),(3,1,'1020',NULL,NULL),(4,1,'1030',NULL,NULL),(5,1,'1040',NULL,NULL),(6,1,'1050',NULL,NULL),(7,1,'1060',NULL,NULL),(8,1,'1070',NULL,NULL),(9,1,'1080',NULL,NULL),(10,1,'1090',NULL,NULL),(11,1,'1100',NULL,NULL),(12,1,'1150',NULL,NULL),(13,1,'1200',NULL,NULL),(14,1,'1250',NULL,NULL),(15,1,'1300',NULL,NULL),(16,1,'1350',NULL,NULL),(17,1,'1400',NULL,NULL),(18,1,'1420',NULL,NULL),(19,1,'1440',NULL,NULL),(20,1,'1460',NULL,NULL),(21,1,'1500',NULL,NULL),(22,1,'1550',NULL,NULL),(23,1,'1600',NULL,NULL),(24,1,'1620',NULL,NULL),(25,1,'1650',NULL,NULL),(26,1,'1670',NULL,NULL),(27,1,'1700',NULL,NULL),(28,1,'1710',NULL,NULL),(29,1,'1720',NULL,NULL),(30,1,'1730',NULL,NULL),(31,1,'1740',NULL,NULL),(32,1,'1750',NULL,NULL),(33,1,'1760',NULL,NULL),(34,1,'1770',NULL,NULL),(35,1,'1780',NULL,NULL),(36,1,'1790',NULL,NULL),(37,1,'1800',NULL,NULL),(38,1,'1850',NULL,NULL),(39,1,'1900',NULL,NULL),(40,1,'2010',NULL,NULL),(41,1,'2020',NULL,NULL),(42,1,'2050',NULL,NULL),(43,1,'2100',NULL,NULL),(44,1,'2150',NULL,NULL),(45,1,'2200',NULL,NULL),(46,1,'2230',NULL,NULL),(47,1,'2250',NULL,NULL),(48,1,'2300',NULL,NULL),(49,1,'2310',NULL,NULL),(50,1,'2320',NULL,NULL),(51,1,'2330',NULL,NULL),(52,1,'2340',NULL,NULL),(53,1,'2350',NULL,NULL),(54,1,'2360',NULL,NULL),(55,1,'2400',NULL,NULL),(56,1,'2410',NULL,NULL),(57,1,'2420',NULL,NULL),(58,1,'2450',NULL,NULL),(59,1,'2460',NULL,NULL),(60,1,'2480',NULL,NULL),(61,1,'2500',NULL,NULL),(62,1,'2550',NULL,NULL),(63,1,'2560',NULL,NULL),(64,1,'2600',NULL,NULL),(65,1,'2700',NULL,NULL),(66,1,'2720',NULL,NULL),(67,1,'2740',NULL,NULL),(68,1,'2760',NULL,NULL),(69,1,'2800',NULL,NULL),(70,1,'2900',NULL,NULL),(71,1,'3100',NULL,NULL),(72,1,'3200',NULL,NULL),(73,1,'3300',NULL,NULL),(74,1,'3400',NULL,NULL),(75,1,'3500',NULL,NULL),(76,1,'4100',NULL,NULL),(77,1,'4200',NULL,NULL),(78,1,'4500',NULL,NULL),(79,1,'4600',NULL,NULL),(80,1,'4700',NULL,NULL),(81,1,'4800',NULL,NULL),(82,1,'4900',NULL,NULL),(83,1,'5000',NULL,NULL),(84,1,'5100',NULL,NULL),(85,1,'5200',NULL,NULL),(86,1,'5500',NULL,NULL),(87,1,'5600',NULL,NULL),(88,1,'5700',NULL,NULL),(89,1,'5800',NULL,NULL),(90,1,'5900',NULL,NULL),(91,1,'6100',NULL,NULL),(92,1,'6150',NULL,NULL),(93,1,'6200',NULL,NULL),(94,1,'6250',NULL,NULL),(95,1,'6300',NULL,NULL),(96,1,'6400',NULL,NULL),(97,1,'6500',NULL,NULL),(98,1,'6550',NULL,NULL),(99,1,'6590',NULL,NULL),(100,1,'6600',NULL,NULL),(101,1,'6700',NULL,NULL),(102,1,'6800',NULL,NULL),(103,1,'6900',NULL,NULL),(104,1,'7020',NULL,NULL),(105,1,'7030',NULL,NULL),(106,1,'7040',NULL,NULL),(107,1,'7050',NULL,NULL),(108,1,'7060',NULL,NULL),(109,1,'7070',NULL,NULL),(110,1,'7080',NULL,NULL),(111,1,'7090',NULL,NULL),(112,1,'7100',NULL,NULL),(113,1,'7150',NULL,NULL),(114,1,'7200',NULL,NULL),(115,1,'7210',NULL,NULL),(116,1,'7220',NULL,NULL),(117,1,'7230',NULL,NULL),(118,1,'7240',NULL,NULL),(119,1,'7260',NULL,NULL),(120,1,'7280',NULL,NULL),(121,1,'7300',NULL,NULL),(122,1,'7350',NULL,NULL),(123,1,'7390',NULL,NULL),(124,1,'7400',NULL,NULL),(125,1,'7450',NULL,NULL),(126,1,'7500',NULL,NULL),(127,1,'7550',NULL,NULL),(128,1,'7600',NULL,NULL),(129,1,'7610',NULL,NULL),(130,1,'7620',NULL,NULL),(131,1,'7630',NULL,NULL),(132,1,'7640',NULL,NULL),(133,1,'7650',NULL,NULL),(134,1,'7660',NULL,NULL),(135,1,'7700',NULL,NULL),(136,1,'7750',NULL,NULL),(137,1,'7800',NULL,NULL),(138,1,'7900',NULL,NULL),(139,1,'8100',NULL,NULL),(140,1,'8200',NULL,NULL),(141,1,'8300',NULL,NULL),(142,1,'8400',NULL,NULL),(143,1,'8500',NULL,NULL),(144,1,'8600',NULL,NULL),(145,1,'8900',NULL,NULL),(146,1,'9100',NULL,NULL);
/*!40000 ALTER TABLE `chart_of_account_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chart_of_accounts`
--

DROP TABLE IF EXISTS `chart_of_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chart_of_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gl_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chart_of_accounts_gl_account_unique` (`gl_account`),
  UNIQUE KEY `chart_of_accounts_gl_name_unique` (`gl_name`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chart_of_accounts`
--

LOCK TABLES `chart_of_accounts` WRITE;
/*!40000 ALTER TABLE `chart_of_accounts` DISABLE KEYS */;
INSERT INTO `chart_of_accounts` VALUES (1,'1','Default Sales/Discounts','Sales',0,NULL,NULL),(2,'1010','Petty Cash','Current Assets',0,NULL,NULL),(3,'1020','Cash on Hand','Current Assets',0,NULL,NULL),(4,'1030','Cheque Accounts','Current Assets',0,NULL,NULL),(5,'1040','Savings Accounts','Current Assets',0,NULL,NULL),(6,'1050','Payroll Accounts','Current Assets',0,NULL,NULL),(7,'1060','Special Accounts','Current Assets',0,NULL,NULL),(8,'1070','Money Market Investments','Current Assets',0,NULL,NULL),(9,'1080','Short-Term Investments (< 90 days)','Current Assets',0,NULL,NULL),(10,'1090','Interest Receivable','Current Assets',0,NULL,NULL),(11,'1100','Accounts Receivable','Current Assets',0,NULL,NULL),(12,'1150','Allowance for Doubtful Accounts','Current Assets',0,NULL,NULL),(13,'1200','Notes Receivable','Current Assets',0,NULL,NULL),(14,'1250','Income Tax Receivable','Current Assets',0,NULL,NULL),(15,'1300','Prepaid Expenses','Current Assets',0,NULL,NULL),(16,'1350','Advances','Current Assets',0,NULL,NULL),(17,'1400','Supplies Inventory','Current Assets',0,NULL,NULL),(18,'1420','Raw Material Inventory','Current Assets',0,NULL,NULL),(19,'1440','Work in Progress Inventory','Current Assets',0,NULL,NULL),(20,'1460','Finished Goods Inventory','Current Assets',0,NULL,NULL),(21,'1500','Land','Fixed Assets',0,NULL,NULL),(22,'1550','Bonds','Fixed Assets',0,NULL,NULL),(23,'1600','Buildings','Fixed Assets',0,NULL,NULL),(24,'1620','Accumulated Depreciation of Buildings','Fixed Assets',0,NULL,NULL),(25,'1650','Equipment','Fixed Assets',0,NULL,NULL),(26,'1670','Accumulated Depreciation of Equipment','Fixed Assets',0,NULL,NULL),(27,'1700','Furniture & Fixtures','Fixed Assets',0,NULL,NULL),(28,'1710','Accumulated Depreciation of Furniture & Fixtures','Fixed Assets',0,NULL,NULL),(29,'1720','Office Equipment','Fixed Assets',0,NULL,NULL),(30,'1730','Accumulated Depreciation of Office Equipment','Fixed Assets',0,NULL,NULL),(31,'1740','Software','Fixed Assets',0,NULL,NULL),(32,'1750','Accumulated Depreciation of Software','Fixed Assets',0,NULL,NULL),(33,'1760','Vehicles','Fixed Assets',0,NULL,NULL),(34,'1770','Accumulated Depreciation Vehicles','Fixed Assets',0,NULL,NULL),(35,'1780','Other Depreciable Property','Fixed Assets',0,NULL,NULL),(36,'1790','Accumulated Depreciation of Other Depreciable Prop','Fixed Assets',0,NULL,NULL),(37,'1800','Patents','Fixed Assets',0,NULL,NULL),(38,'1850','Goodwill','Fixed Assets',0,NULL,NULL),(39,'1900','Future Income Tax Receivable','Current Assets',0,NULL,NULL),(40,'2010','Bank Indedebtedness (overdraft)','Liabilities',0,NULL,NULL),(41,'2020','Retainers or Advances on Work','Liabilities',0,NULL,NULL),(42,'2050','Interest Payable','Liabilities',0,NULL,NULL),(43,'2100','Accounts Payable','Liabilities',0,NULL,NULL),(44,'2150','Goods Received Suspense','Liabilities',0,NULL,NULL),(45,'2200','Short-Term Loan Payable','Liabilities',0,NULL,NULL),(46,'2230','Current Portion of Long-Term Debt Payable','Liabilities',0,NULL,NULL),(47,'2250','Income Tax Payable','Liabilities',0,NULL,NULL),(48,'2300','GST Payable','Liabilities',0,NULL,NULL),(49,'2310','GST Recoverable','Liabilities',0,NULL,NULL),(50,'2320','PST Payable','Liabilities',0,NULL,NULL),(51,'2330','PST Recoverable (commission)','Liabilities',0,NULL,NULL),(52,'2340','Payroll Tax Payable','Liabilities',0,NULL,NULL),(53,'2350','Withholding Income Tax Payable','Liabilities',0,NULL,NULL),(54,'2360','Other Taxes Payable','Liabilities',0,NULL,NULL),(55,'2400','Employee Salaries Payable','Liabilities',0,NULL,NULL),(56,'2410','Management Salaries Payable','Liabilities',0,NULL,NULL),(57,'2420','Director / Partner Fees Payable','Liabilities',0,NULL,NULL),(58,'2450','Health Benefits Payable','Liabilities',0,NULL,NULL),(59,'2460','Pension Benefits Payable','Liabilities',0,NULL,NULL),(60,'2480','Employment Insurance Premiums Payable','Liabilities',0,NULL,NULL),(61,'2500','Land Payable','Liabilities',0,NULL,NULL),(62,'2550','Long-Term Bank Loan','Liabilities',0,NULL,NULL),(63,'2560','Notes Payable','Liabilities',0,NULL,NULL),(64,'2600','Building & Equipment Payable','Liabilities',0,NULL,NULL),(65,'2700','Furnishing & Fixture Payable','Liabilities',0,NULL,NULL),(66,'2720','Office Equipment Payable','Liabilities',0,NULL,NULL),(67,'2740','Vehicle Payable','Liabilities',0,NULL,NULL),(68,'2760','Other Property Payable','Liabilities',0,NULL,NULL),(69,'2800','Shareholder Loans','Liabilities',0,NULL,NULL),(70,'2900','Suspense','Liabilities',0,NULL,NULL),(71,'3100','Capital Stock','Financed',0,NULL,NULL),(72,'3200','Capital Surplus / Dividends','Financed',0,NULL,NULL),(73,'3300','Dividend Taxes Payable','Financed',0,NULL,NULL),(74,'3400','Dividend Taxes Refundable','Financed',0,NULL,NULL),(75,'3500','Retained Earnings','Financed',0,NULL,NULL),(76,'4100','Product / Service Sales','Revenue',0,NULL,NULL),(77,'4200','Sales Exchange Gains/Losses','Revenue',0,NULL,NULL),(78,'4500','Consulting Services','Revenue',0,NULL,NULL),(79,'4600','Rentals','Revenue',0,NULL,NULL),(80,'4700','Finance Charge Income','Revenue',0,NULL,NULL),(81,'4800','Sales Returns & Allowances','Revenue',0,NULL,NULL),(82,'4900','Sales Discounts','Revenue',0,NULL,NULL),(83,'5000','Cost of Sales','Cost of Goods Sold',0,NULL,NULL),(84,'5100','Production Expenses','Cost of Goods Sold',0,NULL,NULL),(85,'5200','Purchases Exchange Gains/Losses','Cost of Goods Sold',0,NULL,NULL),(86,'5500','Direct Labour Costs','Cost of Goods Sold',0,NULL,NULL),(87,'5600','Freight Charges','Outward Freight',0,NULL,NULL),(88,'5700','Inventory Adjustment','Cost of Goods Sold',0,NULL,NULL),(89,'5800','Purchase Returns & Allowances','Cost of Goods Sold',0,NULL,NULL),(90,'5900','Purchase Discounts','Cost of Goods Sold',0,NULL,NULL),(91,'6100','Advertising','Marketing Expenses',0,NULL,NULL),(92,'6150','Promotion','Promotions',0,NULL,NULL),(93,'6200','Communications','Marketing Expenses',0,NULL,NULL),(94,'6250','Meeting Expenses','Marketing Expenses',0,NULL,NULL),(95,'6300','Travelling Expenses','Marketing Expenses',0,NULL,NULL),(96,'6400','Delivery Expenses','Marketing Expenses',0,NULL,NULL),(97,'6500','Sales Salaries & Commission','Marketing Expenses',0,NULL,NULL),(98,'6550','Sales Salaries & Commission Deductions','Marketing Expenses',0,NULL,NULL),(99,'6590','Benefits mkt','Marketing Expenses',0,NULL,NULL),(100,'6600','Other Selling Expenses','Marketing Expenses',0,NULL,NULL),(101,'6700','Permits, Licenses & License Fees','Marketing Expenses',0,NULL,NULL),(102,'6800','Research & Development','Marketing Expenses',0,NULL,NULL),(103,'6900','Professional Services','Marketing Expenses',0,NULL,NULL),(104,'7020','Support Salaries & Wages','Operating Expenses',0,NULL,NULL),(105,'7030','Support Salary & Wage Deductions','Operating Expenses',0,NULL,NULL),(106,'7040','Management Salaries','Operating Expenses',0,NULL,NULL),(107,'7050','Management Salary deductions','Operating Expenses',0,NULL,NULL),(108,'7060','Director / Partner Fees','Operating Expenses',0,NULL,NULL),(109,'7070','Director / Partner Deductions','Operating Expenses',0,NULL,NULL),(110,'7080','Payroll Tax','Operating Expenses',0,NULL,NULL),(111,'7090','Benefits','Operating Expenses',0,NULL,NULL),(112,'7100','Training & Education Expenses','Operating Expenses',0,NULL,NULL),(113,'7150','Dues & Subscriptions','Operating Expenses',0,NULL,NULL),(114,'7200','Accounting Fees','Operating Expenses',0,NULL,NULL),(115,'7210','Audit Fees','Operating Expenses',0,NULL,NULL),(116,'7220','Banking Fees','Operating Expenses',0,NULL,NULL),(117,'7230','Credit Card Fees','Operating Expenses',0,NULL,NULL),(118,'7240','Consulting Fees','Operating Expenses',0,NULL,NULL),(119,'7260','Legal Fees','Operating Expenses',0,NULL,NULL),(120,'7280','Other Professional Fees','Operating Expenses',0,NULL,NULL),(121,'7300','Business Tax','Operating Expenses',0,NULL,NULL),(122,'7350','Property Tax','Operating Expenses',0,NULL,NULL),(123,'7390','Corporation Capital Tax','Operating Expenses',0,NULL,NULL),(124,'7400','Office Rent','Operating Expenses',0,NULL,NULL),(125,'7450','Equipment Rental','Operating Expenses',0,NULL,NULL),(126,'7500','Office Supplies','Operating Expenses',0,NULL,NULL),(127,'7550','Office Repair & Maintenance','Operating Expenses',0,NULL,NULL),(128,'7600','Automotive Expenses','Operating Expenses',0,NULL,NULL),(129,'7610','Communication Expenses','Operating Expenses',0,NULL,NULL),(130,'7620','Insurance Expenses','Operating Expenses',0,NULL,NULL),(131,'7630','Postage & Courier Expenses','Operating Expenses',0,NULL,NULL),(132,'7640','Miscellaneous Expenses','Operating Expenses',0,NULL,NULL),(133,'7650','Travel Expenses','Operating Expenses',0,NULL,NULL),(134,'7660','Utilities','Operating Expenses',0,NULL,NULL),(135,'7700','Ammortization Expenses','Operating Expenses',0,NULL,NULL),(136,'7750','Depreciation Expenses','Operating Expenses',0,NULL,NULL),(137,'7800','Interest Expense','Operating Expenses',0,NULL,NULL),(138,'7900','Bad Debt Expense','Operating Expenses',0,NULL,NULL),(139,'8100','Gain on Sale of Assets','Other Revenue and Expenses',0,NULL,NULL),(140,'8200','Interest Income','Other Revenue and Expenses',0,NULL,NULL),(141,'8300','Recovery on Bad Debt','Other Revenue and Expenses',0,NULL,NULL),(142,'8400','Other Revenue','Other Revenue and Expenses',0,NULL,NULL),(143,'8500','Loss on Sale of Assets','Other Revenue and Expenses',0,NULL,NULL),(144,'8600','Charitable Contributions','Other Revenue and Expenses',0,NULL,NULL),(145,'8900','Other Expenses','Other Revenue and Expenses',0,NULL,NULL),(146,'9100','Income Tax Provision','Income Tax',0,NULL,NULL);
/*!40000 ALTER TABLE `chart_of_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generators`
--

DROP TABLE IF EXISTS `generators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prefix` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generatorName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastSerial` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `generators_prefix_unique` (`prefix`),
  UNIQUE KEY `generators_generatorname_unique` (`generatorName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generators`
--

LOCK TABLES `generators` WRITE;
/*!40000 ALTER TABLE `generators` DISABLE KEYS */;
INSERT INTO `generators` VALUES (1,'GL','journal',19,'2022-01-18 05:09:09','2022-01-22 19:11:43');
/*!40000 ALTER TABLE `generators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_temps`
--

DROP TABLE IF EXISTS `journal_temps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal_temps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `trno` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit` decimal(8,3) NOT NULL,
  `credit` decimal(8,3) NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `approved_by` bigint unsigned DEFAULT NULL,
  `posted` tinyint(1) DEFAULT NULL,
  `posted_at` date DEFAULT NULL,
  `trdate` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `journal_temps_created_by_foreign` (`created_by`),
  KEY `journal_temps_approved_by_foreign` (`approved_by`),
  KEY `journal_temps_gl_account_foreign` (`gl_account`),
  CONSTRAINT `journal_temps_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  CONSTRAINT `journal_temps_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `journal_temps_gl_account_foreign` FOREIGN KEY (`gl_account`) REFERENCES `chart_of_accounts` (`gl_account`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_temps`
--

LOCK TABLES `journal_temps` WRITE;
/*!40000 ALTER TABLE `journal_temps` DISABLE KEYS */;
INSERT INTO `journal_temps` VALUES (1,'GL-2','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(2,'GL-3','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(3,'GL-5','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(4,'GL-5','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(5,'GL-6','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(6,'GL-6','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(7,'GL-7','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(8,'GL-7','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(9,'GL-8','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(10,'GL-8','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(11,'GL-9','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(12,'GL-9','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(13,'GL-10','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(14,'GL-10','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(15,'GL-11','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(16,'GL-11','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(17,'GL-12','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(18,'GL-12','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(19,'GL-13','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(20,'GL-13','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(21,'GL-14','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(22,'GL-14','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(23,'GL-15','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(24,'GL-15','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(25,'GL-16','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(26,'GL-16','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(27,'GL-17','1010',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-21',NULL,NULL),(28,'GL-17','1030',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-21',NULL,NULL),(29,'GL-18','1010',0.000,3000.000,1,NULL,NULL,NULL,'2022-01-21',NULL,NULL),(30,'GL-18','1700',3000.000,0.000,1,NULL,NULL,NULL,'2022-01-21',NULL,NULL),(31,'GL-19','1010',0.000,1000.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL),(32,'GL-19','1700',1000.000,0.000,1,NULL,NULL,NULL,'2022-01-17',NULL,NULL);
/*!40000 ALTER TABLE `journal_temps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ladger_entries`
--

DROP TABLE IF EXISTS `ladger_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ladger_entries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` smallint NOT NULL,
  `type_no` int NOT NULL,
  `check_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tran_date` date NOT NULL,
  `period` smallint NOT NULL,
  `gl_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl_account_effected` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ladger_entries_gl_account_foreign` (`gl_account`),
  CONSTRAINT `ladger_entries_gl_account_foreign` FOREIGN KEY (`gl_account`) REFERENCES `chart_of_accounts` (`gl_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ladger_entries`
--

LOCK TABLES `ladger_entries` WRITE;
/*!40000 ALTER TABLE `ladger_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `ladger_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (25,'2014_10_12_000000_create_users_table',1),(26,'2014_10_12_100000_create_password_resets_table',1),(27,'2019_08_19_000000_create_failed_jobs_table',1),(28,'2019_12_14_000001_create_personal_access_tokens_table',1),(29,'2021_09_19_153534_add_new_fields_to_user',1),(30,'2021_09_25_034113_create_permission_tables',1),(31,'2021_12_19_045330_create_chart_of_accounts_table',1),(32,'2021_12_19_054304_create_ladger_entries_table',1),(33,'2021_12_22_161538_create_systems_table',1),(34,'2021_12_23_182212_create_chart_of_account_permissions_table',1),(35,'2022_01_16_165124_create_generators_table',1),(36,'2022_01_16_171246_create_journal_temps_table',1),(37,'2016_06_01_000001_create_oauth_auth_codes_table',2),(38,'2016_06_01_000002_create_oauth_access_tokens_table',2),(39,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),(40,'2016_06_01_000004_create_oauth_clients_table',2),(41,'2016_06_01_000005_create_oauth_personal_access_clients_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('32bd0aa1088c73d2ba679801436b8027f0899c1413ffefd75af8719d09ee57e9c5a5f120db0f695a',1,1,'authToken','[]',0,'2022-01-23 06:25:32','2022-01-23 06:25:32','2022-07-23 06:25:32'),('5fa09911e1bb776f58673ab21aecee595e572f9d0036db7111d6ecff186a331186fbb9abad1ff8db',1,1,'authToken','[]',0,'2022-01-23 05:41:04','2022-01-23 05:41:04','2023-01-23 05:41:04'),('757c8779fe2d83568ac002bcf6fe0a463ad65e216bfb8e7211c4ad2c1b9b67e4ce7d315438b89da1',1,1,'authToken','[\"place-orders\"]',0,'2022-01-23 06:17:20','2022-01-23 06:17:20','2023-01-23 06:17:20'),('926a22b675904af02ccd35bb53475b16533f7bc435609725561777fbee204890a20ae045cedd1403',1,7,NULL,'[]',0,'2022-01-25 03:07:37','2022-01-25 03:07:37','2023-01-25 03:07:37'),('b209a3e669442d41f7a3f7d522c7d0838ff9c2092c175b45f68506659ffccada259f12802ca9c26a',1,1,'create_my_app_token','[]',0,'2022-01-23 05:30:43','2022-01-23 05:30:43','2023-01-23 05:30:43'),('c12d53c5b295f6ca504bdca6bb0189d9b52bef8aea5234c118cebbb2e3027de0ab32a85129be311e',1,1,'authToken','[]',0,'2022-01-23 06:16:37','2022-01-23 06:16:37','2023-01-23 06:16:37'),('dac75498e87b198bf44501f3c66b5198b663c4b20f9755cb49fadb5dce30b8ac539aa0c5d4f52f70',1,7,NULL,'[]',0,'2022-01-25 03:08:03','2022-01-25 03:08:03','2023-01-25 03:08:03');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','aMwzAttOK9EeOsGrUR0ate1pcEUL1yQDg9PwNEtX',NULL,'http://localhost',1,0,0,'2022-01-23 04:51:47','2022-01-23 04:51:47'),(2,NULL,'Laravel Password Grant Client','ogUidoFO79oSPkLmIlFRXelE9u5Yw32d8Np4YZqv','users','http://localhost',0,1,0,'2022-01-23 04:51:47','2022-01-23 04:51:47'),(3,NULL,'jainasoft','uZ7tIVz0lf2YIvKlo9F7U39eBE2stIo6m7r7eyFz',NULL,'http://localhost',1,0,0,'2022-01-23 07:01:53','2022-01-23 07:01:53'),(4,NULL,'Laravel Personal Access Client','NxNw5XNTBsACedD7Ad0MsdhqLEUHjGUjKPjhWeZO',NULL,'http://localhost',1,0,0,'2022-01-23 07:21:22','2022-01-23 07:21:22'),(5,NULL,'Laravel Personal Access Client','qo6dc0h9XixNgnHkdKtLuwprPpuqZq10NMkKTU5I',NULL,'http://localhost',1,0,0,'2022-01-25 02:37:45','2022-01-25 02:37:45'),(6,NULL,'Laravel Password Grant Client','v8MfVelh7Jkzv8GxJxQrDJCYpe50uVKzVkD3NxMH','users','http://localhost',0,1,0,'2022-01-25 02:37:45','2022-01-25 02:37:45'),(7,NULL,'jainasoft','aapR4CX3ilJVAjKAvEgJoNTGfP2845b91wUv3nTe','users','http://localhost',0,1,0,'2022-01-25 02:48:30','2022-01-25 02:48:30');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2022-01-23 04:51:47','2022-01-23 04:51:47'),(2,3,'2022-01-23 07:01:53','2022-01-23 07:01:53'),(3,4,'2022-01-23 07:21:22','2022-01-23 07:21:22'),(4,5,'2022-01-25 02:37:45','2022-01-25 02:37:45');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('0b69db829491a8e0800f256fdbf6c68fd5e2a67548251982bcf9b6d48f2e032093e917c8f34bfcb5','dac75498e87b198bf44501f3c66b5198b663c4b20f9755cb49fadb5dce30b8ac539aa0c5d4f52f70',0,'2023-01-25 03:08:03'),('3833efb3bc7d1ab9ba9b1e76bdda8e5764233a2804ae0d3f24114e57d1bc059a0f1df8348bb1ab06','926a22b675904af02ccd35bb53475b16533f7bc435609725561777fbee204890a20ae045cedd1403',0,'2023-01-25 03:07:37');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'create_my_app_token','ee94e4eab779ef1d2502bd6538b2c25b8d1b96c18ae93810e9532c06d6bfc9c9','[\"*\"]','2022-01-18 05:46:03','2022-01-18 05:05:02','2022-01-18 05:46:03'),(2,'App\\Models\\User',1,'create_my_app_token','e9a58a5b2bf4d2133cd8c1ffba476defca19133879ee08d62c0ea0d344e737e0','[\"*\"]',NULL,'2022-01-18 06:14:42','2022-01-18 06:14:42'),(3,'App\\Models\\User',1,'create_my_app_token','edf756897b0a32129e25d84052461920b6fa4ef941e52c8430219c06cf345cf2','[\"*\"]',NULL,'2022-01-20 03:25:25','2022-01-20 03:25:25'),(4,'App\\Models\\User',1,'create_my_app_token','b4bda71b76603dd9a916fcf1bd7681835d9ea7711428bda68b506254b59a5da9','[\"*\"]','2022-01-22 03:54:07','2022-01-22 03:28:32','2022-01-22 03:54:07'),(5,'App\\Models\\User',1,'create_my_app_token','4ad2f06692cc1c6117bc4a401688617b56c638bf792b66874356f7c0053270a6','[\"*\"]','2022-01-22 04:53:27','2022-01-22 03:54:07','2022-01-22 04:53:27'),(6,'App\\Models\\User',1,'create_my_app_token','836aca04906a58c035941ba7571198ebda67071910452738e161f0e0baf5446b','[\"*\"]','2022-01-22 19:11:42','2022-01-22 03:54:40','2022-01-22 19:11:42'),(7,'App\\Models\\User',1,'create_my_app_token','a6f371cb2c5808b0cb4c8b4d60a1417d714aeec7de0a8853821dcf1fcf90df34','[\"*\"]',NULL,'2022-01-22 17:04:10','2022-01-22 17:04:10'),(8,'App\\Models\\User',1,'create_my_app_token','b7a80634bd777a95491f78f34a09f0f0920027656227c82cc60bc96eb34df7b4','[\"*\"]',NULL,'2022-01-22 17:06:02','2022-01-22 17:06:02'),(9,'App\\Models\\User',1,'create_my_app_token','49ca0b1b67f92cd2a30504cf27d195d85cf1bc44e128412dc70edca259cd6e0b','[\"*\"]',NULL,'2022-01-22 17:06:25','2022-01-22 17:06:25'),(10,'App\\Models\\User',1,'create_my_app_token','64dd99b242db66453ffc4ad6ca1331e655e6810c23cc04a113e9981b910d87e3','[\"*\"]',NULL,'2022-01-22 17:06:38','2022-01-22 17:06:38'),(11,'App\\Models\\User',1,'create_my_app_token','43d0b43c310fedb327e65150e786ea02d0411e638f04c4f08738e7d2a96c3682','[\"*\"]',NULL,'2022-01-22 17:06:59','2022-01-22 17:06:59'),(12,'App\\Models\\User',1,'create_my_app_token','22a657e93360509d7273d5282ca155e69e5ded1a0ffddf70e09c57279993d4d3','[\"*\"]',NULL,'2022-01-22 17:38:19','2022-01-22 17:38:19'),(13,'App\\Models\\User',1,'create_my_app_token','15d7e7f4913838898236917a1e605942f63e0ffeaf68ddac3bed11e108f9f011','[\"*\"]',NULL,'2022-01-22 17:40:03','2022-01-22 17:40:03'),(14,'App\\Models\\User',1,'create_my_app_token','b23a6d07bbffbd792c93debd9337c47dfd4e1d7990f3f5fc52b5fb492581618d','[\"*\"]',NULL,'2022-01-22 17:42:35','2022-01-22 17:42:35'),(15,'App\\Models\\User',1,'create_my_app_token','fa34041d42bfbfe7f453c5f32977805ac0b565bd0925427e6562f4d14b949772','[\"*\"]',NULL,'2022-01-22 17:42:38','2022-01-22 17:42:38'),(16,'App\\Models\\User',1,'create_my_app_token','e02e55b074fee854429d52b4bf5b4bf08d7b70ea9ea1b666396b44020d513b31','[\"*\"]',NULL,'2022-01-22 19:11:53','2022-01-22 19:11:53'),(17,'App\\Models\\User',1,'create_my_app_token','df1d465ec8d1ce370357de142d393206ec801299fd0bd5c522ee89444e134d6c','[\"*\"]',NULL,'2022-01-22 19:13:03','2022-01-22 19:13:03'),(18,'App\\Models\\User',1,'create_my_app_token','cdc50dae42434c0b26516465b0ecfb6e010555d6af5442675f2bc01c237ae005','[\"*\"]',NULL,'2022-01-22 19:14:49','2022-01-22 19:14:49'),(19,'App\\Models\\User',1,'create_my_app_token','a330cfca5c9e3c63820da7fb71b66432e5e85b904fd7caa8ca58fedad87b211d','[\"*\"]',NULL,'2022-01-22 19:15:28','2022-01-22 19:15:28'),(20,'App\\Models\\User',1,'create_my_app_token','051827eaaaa5d6f244b7a184abf78edc89cb960180d263179e8220689c40e7a6','[\"*\"]',NULL,'2022-01-22 19:20:58','2022-01-22 19:20:58'),(21,'App\\Models\\User',1,'create_my_app_token','de2e50383add770cee3d6bd89e06b5264be5486a00554100c7c65c6eefa5c009','[\"*\"]',NULL,'2022-01-22 19:23:58','2022-01-22 19:23:58'),(22,'App\\Models\\User',1,'create_my_app_token','3cc6734bd2db852795856e34383c6342b3851e02b6fe58b9663fa58efba1423d','[\"*\"]','2022-01-23 03:50:42','2022-01-23 03:50:37','2022-01-23 03:50:42'),(23,'App\\Models\\User',1,'create_my_app_token','2f016c2dd1dde492ee65f4e2ed9eaca3be9fde33ef349c882280e2e500859580','[\"*\"]',NULL,'2022-01-23 08:22:33','2022-01-23 08:22:33'),(24,'App\\Models\\User',1,'create_my_app_token','da899f6b65249856513c47dfcf51990350a3847c4c6aeaa27e9b653cdc45c417','[\"*\"]',NULL,'2022-02-02 04:26:56','2022-02-02 04:26:56'),(25,'App\\Models\\User',1,'create_my_app_token','95afee2bc79dbb5c0658edd1900690b8bb08247b7a191d432ab1a47bc60ba88a','[\"*\"]','2022-02-02 04:54:18','2022-02-02 04:30:28','2022-02-02 04:54:18'),(26,'App\\Models\\User',1,'create_my_app_token','f45e03089264b1a2904fe9313fc93ac099449938fb480a908e06f45457e2e731','[\"*\"]','2022-02-02 05:09:23','2022-02-02 05:00:16','2022-02-02 05:09:23'),(27,'App\\Models\\User',1,'create_my_app_token','0494e896393b1e0b6dadba39ddfc1615267cda627b40f28ef4dddaa5b8848b99','[\"*\"]','2022-02-02 05:18:28','2022-02-02 05:13:24','2022-02-02 05:18:28'),(28,'App\\Models\\User',1,'create_my_app_token','dca7fc194cc5fe044b2b446e1bacea1e6781753400f74a69522ffd0c559908a9','[\"*\"]','2022-02-02 05:54:37','2022-02-02 05:21:06','2022-02-02 05:54:37'),(29,'App\\Models\\User',1,'create_my_app_token','3122788108111161b80f0d7d938c0ddac5193303757f0b644f107a2d4e01cd26','[\"*\"]',NULL,'2022-02-03 04:48:42','2022-02-03 04:48:42'),(30,'App\\Models\\User',1,'create_my_app_token','9fc02f2478378e1cc0c7d46a2899db5ab19b37785839b39d0c6330684b4f4d94','[\"*\"]','2022-02-03 15:28:16','2022-02-03 04:50:21','2022-02-03 15:28:16'),(31,'App\\Models\\User',1,'create_my_app_token','01b9be16fb895cea82b453dde4a469649711db23314eafde7ff5f019977b69f0','[\"*\"]',NULL,'2022-02-03 04:52:30','2022-02-03 04:52:30'),(32,'App\\Models\\User',1,'create_my_app_token','cadae9917074e032e3e3d491cc466bee5ea156063e232e13ca1f7b96f9c7901b','[\"*\"]',NULL,'2022-02-03 15:43:05','2022-02-03 15:43:05'),(33,'App\\Models\\User',1,'create_my_app_token','66d96578a75ba396f6560b21cdbb4248153acbfdc25d3840c649705fa93169f6','[\"*\"]',NULL,'2022-02-03 15:44:07','2022-02-03 15:44:07');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems`
--

DROP TABLE IF EXISTS `systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `systems` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `defaults` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems`
--

LOCK TABLES `systems` WRITE;
/*!40000 ALTER TABLE `systems` DISABLE KEYS */;
/*!40000 ALTER TABLE `systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invalid_login_attempt` tinyint NOT NULL DEFAULT '0',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Harisur Rahman','harisur.rahman@gmail.com',NULL,'$2y$10$P/TeE71x./FGG1sERGyKgOc1vAXPy3F3jSqhjdWtBn1VbYcwKueL2',NULL,'2022-01-18 05:04:52','2022-02-03 04:16:36',0,0);
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

-- Dump completed on 2022-02-03 20:34:16
