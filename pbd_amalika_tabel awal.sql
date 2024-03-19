-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: pbd_amalika
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `m_cabang`
--

DROP TABLE IF EXISTS `m_cabang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_cabang` (
  `K_CABANG` varchar(3) NOT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`K_CABANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_cabang`
--

LOCK TABLES `m_cabang` WRITE;
/*!40000 ALTER TABLE `m_cabang` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_cabang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_fakultas`
--

DROP TABLE IF EXISTS `m_fakultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_fakultas` (
  `K_FAKULTAS` varchar(3) NOT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`K_FAKULTAS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_fakultas`
--

LOCK TABLES `m_fakultas` WRITE;
/*!40000 ALTER TABLE `m_fakultas` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_fakultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_jenjang`
--

DROP TABLE IF EXISTS `m_jenjang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_jenjang` (
  `K_JENJANG` varchar(3) NOT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`K_JENJANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_jenjang`
--

LOCK TABLES `m_jenjang` WRITE;
/*!40000 ALTER TABLE `m_jenjang` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_jenjang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_jurusan`
--

DROP TABLE IF EXISTS `m_jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_jurusan` (
  `K_JURUSAN` varchar(3) NOT NULL,
  `K_FAKULTAS_JURUSAN` varchar(3) DEFAULT NULL,
  `K_JENJANG_JURUSAN` varchar(3) DEFAULT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`K_JURUSAN`),
  KEY `K_JENJANG` (`K_JENJANG_JURUSAN`),
  KEY `K_FAKULTAS` (`K_FAKULTAS_JURUSAN`),
  CONSTRAINT `K_FAKULTAS` FOREIGN KEY (`K_FAKULTAS_JURUSAN`) REFERENCES `m_fakultas` (`K_FAKULTAS`),
  CONSTRAINT `K_JENJANG` FOREIGN KEY (`K_JENJANG_JURUSAN`) REFERENCES `m_jenjang` (`K_JENJANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_jurusan`
--

LOCK TABLES `m_jurusan` WRITE;
/*!40000 ALTER TABLE `m_jurusan` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_kelas`
--

DROP TABLE IF EXISTS `m_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_kelas` (
  `K_KELAS` varchar(3) NOT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`K_KELAS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_kelas`
--

LOCK TABLES `m_kelas` WRITE;
/*!40000 ALTER TABLE `m_kelas` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_kota`
--

DROP TABLE IF EXISTS `m_kota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_kota` (
  `K_KOTA` varchar(9) NOT NULL,
  `K_NEGARA_KOTA` varchar(9) NOT NULL,
  `K_PROPINSI_KOTA` varchar(9) NOT NULL,
  `CONTENT` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`K_KOTA`),
  KEY `K_NEGARA_KOTA` (`K_NEGARA_KOTA`),
  KEY `K_PROPINSI_KOTA` (`K_PROPINSI_KOTA`),
  CONSTRAINT `K_NEGARA_KOTA` FOREIGN KEY (`K_NEGARA_KOTA`) REFERENCES `m_propinsi` (`K_NEGARA_PROPINSI`),
  CONSTRAINT `K_PROPINSI_KOTA` FOREIGN KEY (`K_PROPINSI_KOTA`) REFERENCES `m_propinsi` (`K_PROPINSI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_kota`
--

LOCK TABLES `m_kota` WRITE;
/*!40000 ALTER TABLE `m_kota` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_kota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_negara`
--

DROP TABLE IF EXISTS `m_negara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_negara` (
  `K_NEGARA` varchar(9) NOT NULL,
  `CONTENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`K_NEGARA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_negara`
--

LOCK TABLES `m_negara` WRITE;
/*!40000 ALTER TABLE `m_negara` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_negara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_prog_studi`
--

DROP TABLE IF EXISTS `m_prog_studi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_prog_studi` (
  `K_PROG_STUDI` varchar(3) NOT NULL,
  `K_FAKULTAS_PROG` varchar(3) DEFAULT NULL,
  `K_JENJANG_PROG` varchar(3) DEFAULT NULL,
  `K_JURUSAN_PROG` varchar(3) DEFAULT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`K_PROG_STUDI`),
  KEY `K_JURUSAN_PROG` (`K_JURUSAN_PROG`),
  KEY `K_JENJANG_PROG` (`K_JENJANG_PROG`),
  KEY `K_FAKULTAS_PROG` (`K_FAKULTAS_PROG`),
  CONSTRAINT `K_FAKULTAS_PROG` FOREIGN KEY (`K_FAKULTAS_PROG`) REFERENCES `m_jurusan` (`K_FAKULTAS_JURUSAN`),
  CONSTRAINT `K_JENJANG_PROG` FOREIGN KEY (`K_JENJANG_PROG`) REFERENCES `m_jurusan` (`K_JENJANG_JURUSAN`),
  CONSTRAINT `K_JURUSAN_PROG` FOREIGN KEY (`K_JURUSAN_PROG`) REFERENCES `m_jurusan` (`K_JURUSAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_prog_studi`
--

LOCK TABLES `m_prog_studi` WRITE;
/*!40000 ALTER TABLE `m_prog_studi` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_prog_studi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_propinsi`
--

DROP TABLE IF EXISTS `m_propinsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_propinsi` (
  `K_PROPINSI` varchar(9) NOT NULL,
  `K_NEGARA_PROPINSI` varchar(9) DEFAULT NULL,
  `CONTENT` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`K_PROPINSI`),
  KEY `K_NEGARA_PROPINSI` (`K_NEGARA_PROPINSI`),
  CONSTRAINT `K_NEGARA_PROPINSI` FOREIGN KEY (`K_NEGARA_PROPINSI`) REFERENCES `m_negara` (`K_NEGARA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_propinsi`
--

LOCK TABLES `m_propinsi` WRITE;
/*!40000 ALTER TABLE `m_propinsi` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_propinsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_seleksi`
--

DROP TABLE IF EXISTS `m_seleksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_seleksi` (
  `K_SELEKSI` varchar(3) NOT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`K_SELEKSI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_seleksi`
--

LOCK TABLES `m_seleksi` WRITE;
/*!40000 ALTER TABLE `m_seleksi` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_seleksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `NIM` varchar(15) NOT NULL,
  `NAMA` varchar(60) DEFAULT NULL,
  `ANGKATAN` int(11) DEFAULT NULL,
  `K_JURUSAN` varchar(3) NOT NULL,
  `K_JENJANG` varchar(3) NOT NULL,
  `K_FAKULTAS` varchar(3) NOT NULL,
  `K_PROG_STUDI` varchar(3) NOT NULL,
  `K_SELEKSI` varchar(3) NOT NULL,
  `K_KELAS` varchar(3) NOT NULL,
  `K_CABANG` varchar(3) NOT NULL,
  PRIMARY KEY (`NIM`),
  UNIQUE KEY `K_JURUSAN` (`K_JURUSAN`),
  UNIQUE KEY `K_JENJANG` (`K_JENJANG`),
  UNIQUE KEY `K_FAKULTAS` (`K_FAKULTAS`),
  UNIQUE KEY `K_PROG_STUDI` (`K_PROG_STUDI`),
  UNIQUE KEY `K_SELEKSI` (`K_SELEKSI`),
  UNIQUE KEY `K_KELAS` (`K_KELAS`),
  UNIQUE KEY `K_CABANG` (`K_CABANG`),
  CONSTRAINT `FK_K_FAKULTAS` FOREIGN KEY (`K_FAKULTAS`) REFERENCES `m_prog_studi` (`K_FAKULTAS_PROG`),
  CONSTRAINT `FK_K_JENJANG` FOREIGN KEY (`K_JENJANG`) REFERENCES `m_prog_studi` (`K_JENJANG_PROG`),
  CONSTRAINT `FK_K_JURUSAN` FOREIGN KEY (`K_JURUSAN`) REFERENCES `m_prog_studi` (`K_JURUSAN_PROG`),
  CONSTRAINT `FK_K_PROG_STUDI` FOREIGN KEY (`K_PROG_STUDI`) REFERENCES `m_prog_studi` (`K_PROG_STUDI`),
  CONSTRAINT `K_CABANG` FOREIGN KEY (`K_CABANG`) REFERENCES `m_cabang` (`K_CABANG`),
  CONSTRAINT `K_KELAS` FOREIGN KEY (`K_KELAS`) REFERENCES `m_kelas` (`K_KELAS`),
  CONSTRAINT `K_SELEKSI` FOREIGN KEY (`K_SELEKSI`) REFERENCES `m_seleksi` (`K_SELEKSI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_kota`
--

DROP TABLE IF EXISTS `mhs_kota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhs_kota` (
  `NIM` varchar(15) NOT NULL,
  `K_KOTA_MHSKOTA` varchar(9) DEFAULT NULL,
  `K_NEGARA_MHSKOTA` varchar(9) DEFAULT NULL,
  `K_PROPINSI_MHSKOTA` varchar(9) DEFAULT NULL,
  `ALAMAT` varchar(100) DEFAULT NULL,
  `KODE_POS` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`NIM`),
  UNIQUE KEY `K_KOTA_MHS` (`K_KOTA_MHSKOTA`),
  UNIQUE KEY `K_NEGARA_MHS` (`K_NEGARA_MHSKOTA`),
  UNIQUE KEY `K_PROPINSI_MHS` (`K_PROPINSI_MHSKOTA`),
  CONSTRAINT `K_KOTA_MHS` FOREIGN KEY (`K_KOTA_MHSKOTA`) REFERENCES `m_kota` (`K_KOTA`),
  CONSTRAINT `K_NEGARA_MHS` FOREIGN KEY (`K_NEGARA_MHSKOTA`) REFERENCES `m_kota` (`K_NEGARA_KOTA`),
  CONSTRAINT `K_PROPINSI_MHS` FOREIGN KEY (`K_PROPINSI_MHSKOTA`) REFERENCES `m_kota` (`K_PROPINSI_KOTA`),
  CONSTRAINT `NIM` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_kota`
--

LOCK TABLES `mhs_kota` WRITE;
/*!40000 ALTER TABLE `mhs_kota` DISABLE KEYS */;
/*!40000 ALTER TABLE `mhs_kota` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-14  8:23:41
