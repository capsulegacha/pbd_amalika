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
-- Table structure for table `cabang`
--

DROP TABLE IF EXISTS `cabang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cabang` (
  `K_CABANG` varchar(3) NOT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`K_CABANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabang`
--

LOCK TABLES `cabang` WRITE;
/*!40000 ALTER TABLE `cabang` DISABLE KEYS */;
INSERT INTO `cabang` VALUES ('A','KAMPUS A','UNAIR CABANG KAMPUS A'),('B','KAMPUS B','UNAIR CABANG KAMPUS B'),('C','KAMPUS C','UNAIR CABANG KAMPUS C');
/*!40000 ALTER TABLE `cabang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fakultas`
--

DROP TABLE IF EXISTS `fakultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fakultas` (
  `K_FAKULTAS` varchar(3) NOT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`K_FAKULTAS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fakultas`
--

LOCK TABLES `fakultas` WRITE;
/*!40000 ALTER TABLE `fakultas` DISABLE KEYS */;
INSERT INTO `fakultas` VALUES ('F14','FTMM','FAKULTAS TEKNOLOGI MAJU DAN MULTIDISIPLIN');
/*!40000 ALTER TABLE `fakultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenjang`
--

DROP TABLE IF EXISTS `jenjang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenjang` (
  `K_JENJANG` varchar(3) NOT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`K_JENJANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenjang`
--

LOCK TABLES `jenjang` WRITE;
/*!40000 ALTER TABLE `jenjang` DISABLE KEYS */;
INSERT INTO `jenjang` VALUES ('S1','STRATA 1','MENGHASILKAN LULUSAN S1'),('S2','STRATA 2','MENGHASILKAN LULUSAN S2'),('S3','STRATA 2','MENGHASILKAN LULUSAN S3');
/*!40000 ALTER TABLE `jenjang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurusan` (
  `K_JURUSAN` varchar(3) NOT NULL,
  `K_FAKULTAS` varchar(3) DEFAULT NULL,
  `K_JENJANG` varchar(3) DEFAULT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`K_JURUSAN`),
  KEY `K_FAKULTAS` (`K_FAKULTAS`),
  KEY `K_JENJANG` (`K_JENJANG`),
  CONSTRAINT `K_FAKULTAS` FOREIGN KEY (`k_fakultas`) REFERENCES `fakultas` (`K_FAKULTAS`),
  CONSTRAINT `K_JENJANG` FOREIGN KEY (`k_jenjang`) REFERENCES `jenjang` (`K_JENJANG`),
  CONSTRAINT `jurusan_ibfk_1` FOREIGN KEY (`K_FAKULTAS`) REFERENCES `fakultas` (`K_FAKULTAS`),
  CONSTRAINT `jurusan_ibfk_2` FOREIGN KEY (`K_JENJANG`) REFERENCES `jenjang` (`K_JENJANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusan`
--

LOCK TABLES `jurusan` WRITE;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` VALUES ('TSD','F14','S1','TSD','TEKNOLOGI SAINS DATA');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelas` (
  `K_KELAS` varchar(3) NOT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`K_KELAS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES ('PBD','PENGBASDAT','PENGANTAR BASIS DATA');
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kota`
--

DROP TABLE IF EXISTS `kota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kota` (
  `K_KOTA` varchar(9) NOT NULL,
  `K_NEGARA` varchar(9) DEFAULT NULL,
  `K_PROPINSI` varchar(9) DEFAULT NULL,
  `CONTENT` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`K_KOTA`),
  KEY `K_NEGARA` (`K_NEGARA`),
  KEY `K_PROPINSI` (`K_PROPINSI`),
  CONSTRAINT `K_NEGARA_KOTA` FOREIGN KEY (`k_negara`) REFERENCES `propinsi` (`k_negara`),
  CONSTRAINT `K_PROPINSI_KOTA` FOREIGN KEY (`k_propinsi`) REFERENCES `propinsi` (`K_PROPINSI`),
  CONSTRAINT `kota_ibfk_1` FOREIGN KEY (`K_NEGARA`) REFERENCES `propinsi` (`K_NEGARA`),
  CONSTRAINT `kota_ibfk_2` FOREIGN KEY (`K_PROPINSI`) REFERENCES `propinsi` (`K_PROPINSI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kota`
--

LOCK TABLES `kota` WRITE;
/*!40000 ALTER TABLE `kota` DISABLE KEYS */;
INSERT INTO `kota` VALUES ('1371','62','13','PADANG'),('2171','62','21','BATAM'),('3171','62','31','JAKARTA'),('3275','62','32','BEKASI'),('3276','62','32','DEPOK'),('3278','62','32','TASIKMALAYA'),('3302','62','33','BANYUMAS'),('3374','62','33','SEMARANG'),('3402','62','34','BANTUL'),('3504','62','35','TULUNGAGUNG'),('3505','62','35','BLITAR'),('3506','62','35','KEDIRI'),('3510','62','35','BANYUWANGI'),('3515','62','35','SIDOARJO'),('3516','62','35','MOJOKERTO'),('3522','62','35','BOJONEGORO'),('3524','62','35','LAMONGAN'),('3573','62','35','MALANG'),('3577','62','35','MADIUN'),('3578','62','35','SURABAYA'),('3671','62','36','TANGERANG'),('3674','62','36','TANGERANG SELATAN'),('5271','62','52','MATARAM'),('7371','62','73','MAKASSAR'),('7501','62','75','GORONTALO');
/*!40000 ALTER TABLE `kota` ENABLE KEYS */;
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
  `ANGKATAN` varchar(11) DEFAULT NULL,
  `TL` date DEFAULT NULL,
  `K_JURUSAN` varchar(3) DEFAULT NULL,
  `K_JENJANG` varchar(3) DEFAULT NULL,
  `K_PROG_STUDI` varchar(3) DEFAULT NULL,
  `K_SELEKSI` varchar(3) DEFAULT NULL,
  `K_KELAS` varchar(3) DEFAULT NULL,
  `K_CABANG` varchar(3) DEFAULT NULL,
  `K_FAKULTAS` varchar(3) DEFAULT NULL,
  `STATUS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`NIM`),
  KEY `K_JURUSAN` (`K_JURUSAN`),
  KEY `K_JENJANG` (`K_JENJANG`),
  KEY `K_PROG_STUDI` (`K_PROG_STUDI`),
  KEY `K_SELEKSI` (`K_SELEKSI`),
  KEY `K_KELAS` (`K_KELAS`),
  KEY `K_CABANG` (`K_CABANG`),
  KEY `K_FAKULTAS` (`K_FAKULTAS`),
  CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`K_JURUSAN`) REFERENCES `prog_studi` (`K_JURUSAN`),
  CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`K_JENJANG`) REFERENCES `prog_studi` (`K_JENJANG`),
  CONSTRAINT `mahasiswa_ibfk_3` FOREIGN KEY (`K_PROG_STUDI`) REFERENCES `prog_studi` (`K_PROG_STUDI`),
  CONSTRAINT `mahasiswa_ibfk_4` FOREIGN KEY (`K_SELEKSI`) REFERENCES `seleksi` (`K_SELEKSI`),
  CONSTRAINT `mahasiswa_ibfk_5` FOREIGN KEY (`K_KELAS`) REFERENCES `kelas` (`K_KELAS`),
  CONSTRAINT `mahasiswa_ibfk_6` FOREIGN KEY (`K_CABANG`) REFERENCES `cabang` (`K_CABANG`),
  CONSTRAINT `mahasiswa_ibfk_7` FOREIGN KEY (`NIM`) REFERENCES `mhskota` (`NIM`),
  CONSTRAINT `mahasiswa_ibfk_8` FOREIGN KEY (`K_FAKULTAS`) REFERENCES `prog_studi` (`K_FAKULTAS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('162112133008','MUHAMMAD RAJIF AL FARIKHI','2021','2002-10-19','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221001','ALUN YUANITA INDRASWARI','2022','2003-10-08','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221002','DARA DEVINTA FARADHILLA','2022','2004-01-31','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221003','DYAH AYU RETNONINGSIH','2022','2005-04-07','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221004','BELA SONIA','2022','2004-07-09','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221006','NADILA FITRI NOVIARDHANA','2022','2003-11-20','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221012','SALMA AYU HANIFAH','2022','2004-02-08','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221017','MUZENA HISYAM OKBAH','2022','2004-08-21','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221018','SINTA DIAN MONICA','2022','2003-07-02','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221019','DITHA MEIGA ZAKARIA','2022','2003-05-16','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221021','KYLA DEVANDA MICHELLE SIMANJORANG','2022','2004-12-10','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221023','ILHAM DICKY DARMAWAN','2022','2004-07-08','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221024','BRILLIANT PRIGAR EDNESTO','2022','2005-04-05','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221026','WANDA DESI RAHMAWATI','2022','2004-10-03','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221029','AMALIKA ARI ANINDYA','2022','2003-02-19','TSD','S1','SD','SNM','PBD','C','F14','AKTIF'),('164221030','VIKY DWI THANIYA','2022','2003-11-04','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221033','LEMUEL HORAS','2022','2004-10-22','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221039','NAFISAHIKA PUTRI HERRA','2022','2004-07-10','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221040','AUFA FAHMI SYAHMAN HALIM','2022','2003-11-15','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221042','OCTAVIANI PUTRI AL FAJRI','2022','2003-10-10','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221047','ILMIAWAN TAUFAN AL FARIS','2022','2002-07-11','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221050','HANAN NABILAH','2022','2004-04-01','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221053','AURA NAJMA KUSTIANANDA','2022','2004-06-11','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221056','HERMAN EFFENDI','2022','2004-02-12','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221059','RIZAL DWI PRASETYO','2022','2003-11-13','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221061','TIKA DIAN PANGASTUTI','2022','2004-04-27','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221067','MOCHAMMAD FAHD ALI HILLABY','2022','2003-11-27','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221070','ROMERO RACHMAT MUSADAT','2022','2004-05-18','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221072','SABRINA INDY SAFIRA','2022','2004-09-20','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221074','MUHAMMAD ARIEF MULYAWAN','2022','2003-12-08','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221076','VERDYAN FARREL BILIARSA','2022','2004-05-15','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221085','HADYAN ADIRA PERDANA','2022','2004-11-25','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221091','ALDI ADITYA SUPRIJADI','2022','2004-03-27','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221094','JOVITA SURYO ANGELINE','2022','2004-06-21','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221097','NISRINA KHAIRUNISA','2022','2004-07-08','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221098','PUTU ANGGA KURNIAWAN','2022','2004-03-31','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221099','FARAH','2022','2004-02-28','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221100','AMIRA NAILA ZANIRA','2022','2004-08-05','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221101','AHMAD ALDEN','2022','2004-04-08','TSD','S1','SD','SBM','PBD','C','F14','AKTIF'),('164221102','FADHLURRAHMAN ALTHAF RAPIYADI','2022','2004-05-22','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221105','MOH. OKKA OMARROSI IPUTUSARMA','2022','2004-08-16','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221108','PRADIPTA DESKA PRYANDA','2022','2003-12-30','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221111','KANIA PUTRI OCTAVIA','2022','2004-10-06','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221112','RAYYA ANDINA NATHANIA','2022','2004-08-17','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221113','SALWA SABIAN RAIHANA','2022','2004-08-27','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221114','NABILA MUMTAZ','2022','2003-07-23','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221115','DEVINA SALSABILA','2022','2004-03-06','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221116','AHMAD ZULFIKAR AL GHIFFARI','2022','2004-08-23','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221117','TASYFIA FARHAH SUBRINA LUBIS','2022','2004-02-10','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221118','DHIWA ABQARIYYAH','2022','2004-12-22','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221119','NAUFAL AFIF','2022','2003-12-20','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221120','OLGA KABSYAH RAMADHANI','2022','2004-10-14','TSD','S1','SD','MAN','PBD','C','F14','AKTIF'),('164221122','AYSHA MILARTA SHAFIYALINA','2022','2004-04-29','TSD','S1','SD','MAN','PBD','C','F14','AKTIF');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhskota`
--

DROP TABLE IF EXISTS `mhskota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhskota` (
  `NIM` varchar(15) NOT NULL,
  `K_PROPINSI` varchar(9) DEFAULT NULL,
  `K_NEGARA` varchar(9) DEFAULT NULL,
  `K_KOTA` varchar(9) DEFAULT NULL,
  `ALAMAT` varchar(110) DEFAULT NULL,
  `KODE_POS` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`NIM`),
  KEY `K_KOTA` (`K_KOTA`),
  KEY `K_PROPINSI` (`K_PROPINSI`),
  KEY `K_NEGARA` (`K_NEGARA`),
  CONSTRAINT `mhskota_ibfk_1` FOREIGN KEY (`K_PROPINSI`) REFERENCES `kota` (`k_propinsi`),
  CONSTRAINT `mhskota_ibfk_2` FOREIGN KEY (`K_NEGARA`) REFERENCES `kota` (`k_negara`),
  CONSTRAINT `mhskota_ibfk_3` FOREIGN KEY (`K_KOTA`) REFERENCES `kota` (`K_KOTA`),
  CONSTRAINT `mhskota_ibfk_4` FOREIGN KEY (`K_PROPINSI`) REFERENCES `kota` (`K_PROPINSI`),
  CONSTRAINT `mhskota_ibfk_5` FOREIGN KEY (`K_NEGARA`) REFERENCES `kota` (`K_NEGARA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhskota`
--

LOCK TABLES `mhskota` WRITE;
/*!40000 ALTER TABLE `mhskota` DISABLE KEYS */;
INSERT INTO `mhskota` VALUES ('162112133008','35','62','3578',NULL,NULL),('164221001','35','62','3578',NULL,NULL),('164221002','35','62','3524',NULL,NULL),('164221003','35','62','3522',NULL,NULL),('164221004','35','62','3522',NULL,NULL),('164221006','35','62','3516',NULL,NULL),('164221012','35','62','3506',NULL,NULL),('164221017','35','62','3515',NULL,NULL),('164221018','35','62','3504',NULL,NULL),('164221019','75','62','7501',NULL,NULL),('164221021','21','62','2171',NULL,NULL),('164221023','35','62','3578',NULL,NULL),('164221024','35','62','3510',NULL,NULL),('164221026','35','62','3505',NULL,NULL),('164221029','35','62','3515',NULL,NULL),('164221030','35','62','3578',NULL,NULL),('164221033','36','62','3674',NULL,NULL),('164221039','33','62','3302',NULL,NULL),('164221040','35','62','3578',NULL,NULL),('164221042','32','62','3275',NULL,NULL),('164221047','35','62','3578',NULL,NULL),('164221050','34','62','3402',NULL,NULL),('164221053','35','62','3578',NULL,NULL),('164221056','35','62','3510',NULL,NULL),('164221059','35','62','3578',NULL,NULL),('164221061','35','62','3577',NULL,NULL),('164221067','35','62','3578',NULL,NULL),('164221070','73','62','7371',NULL,NULL),('164221072','35','62','3578',NULL,NULL),('164221074','52','62','5271',NULL,NULL),('164221076','35','62','3578',NULL,NULL),('164221085','35','62','3515',NULL,NULL),('164221091','35','62','3578',NULL,NULL),('164221094','33','62','3374',NULL,NULL),('164221097','32','62','3278',NULL,NULL),('164221098','31','62','3171',NULL,NULL),('164221099','35','62','3578',NULL,NULL),('164221100','31','62','3171',NULL,NULL),('164221101','35','62','3578',NULL,NULL),('164221102','31','62','3171',NULL,NULL),('164221105','35','62','3578',NULL,NULL),('164221108','31','62','3171',NULL,NULL),('164221111','31','62','3171',NULL,NULL),('164221112','32','62','3275',NULL,NULL),('164221113','35','62','3578',NULL,NULL),('164221114','35','62','3573',NULL,NULL),('164221115','31','62','3171',NULL,NULL),('164221116','35','62','3578',NULL,NULL),('164221117','13','62','1371',NULL,NULL),('164221118','36','62','3671',NULL,NULL),('164221119','32','62','3276',NULL,NULL),('164221120','36','62','3671',NULL,NULL),('164221122','35','62','3578',NULL,NULL);
/*!40000 ALTER TABLE `mhskota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negara`
--

DROP TABLE IF EXISTS `negara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negara` (
  `K_NEGARA` varchar(9) NOT NULL,
  `CONTENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`K_NEGARA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negara`
--

LOCK TABLES `negara` WRITE;
/*!40000 ALTER TABLE `negara` DISABLE KEYS */;
INSERT INTO `negara` VALUES ('62','INDONESIA');
/*!40000 ALTER TABLE `negara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prog_studi`
--

DROP TABLE IF EXISTS `prog_studi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prog_studi` (
  `K_PROG_STUDI` varchar(3) NOT NULL,
  `K_FAKULTAS` varchar(3) DEFAULT NULL,
  `K_JENJANG` varchar(3) DEFAULT NULL,
  `K_JURUSAN` varchar(3) DEFAULT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`K_PROG_STUDI`),
  KEY `K_FAKULTAS` (`K_FAKULTAS`),
  KEY `K_JENJANG` (`K_JENJANG`),
  KEY `K_JURUSAN` (`K_JURUSAN`),
  CONSTRAINT `K_FAKULTAS_PROG` FOREIGN KEY (`k_fakultas`) REFERENCES `jurusan` (`k_fakultas`),
  CONSTRAINT `K_JENJANG_PROG` FOREIGN KEY (`k_jenjang`) REFERENCES `jurusan` (`k_jenjang`),
  CONSTRAINT `K_JURUSAN_PROG` FOREIGN KEY (`k_jurusan`) REFERENCES `jurusan` (`K_JURUSAN`),
  CONSTRAINT `prog_studi_ibfk_1` FOREIGN KEY (`K_FAKULTAS`) REFERENCES `jurusan` (`K_FAKULTAS`),
  CONSTRAINT `prog_studi_ibfk_2` FOREIGN KEY (`K_JENJANG`) REFERENCES `jurusan` (`K_JENJANG`),
  CONSTRAINT `prog_studi_ibfk_3` FOREIGN KEY (`K_JURUSAN`) REFERENCES `jurusan` (`K_JURUSAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prog_studi`
--

LOCK TABLES `prog_studi` WRITE;
/*!40000 ALTER TABLE `prog_studi` DISABLE KEYS */;
INSERT INTO `prog_studi` VALUES ('SD','F14','S1','TSD','TSD','TEKNOLOGI SAINS DATA');
/*!40000 ALTER TABLE `prog_studi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propinsi`
--

DROP TABLE IF EXISTS `propinsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propinsi` (
  `K_PROPINSI` varchar(9) NOT NULL,
  `K_NEGARA` varchar(9) DEFAULT NULL,
  `CONTENT` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`K_PROPINSI`),
  KEY `K_NEGARA` (`K_NEGARA`),
  CONSTRAINT `K_NEGARA_PROPINSI` FOREIGN KEY (`k_negara`) REFERENCES `negara` (`K_NEGARA`),
  CONSTRAINT `propinsi_ibfk_1` FOREIGN KEY (`K_NEGARA`) REFERENCES `negara` (`K_NEGARA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propinsi`
--

LOCK TABLES `propinsi` WRITE;
/*!40000 ALTER TABLE `propinsi` DISABLE KEYS */;
INSERT INTO `propinsi` VALUES ('13','62','SUMATERA BARAT'),('21','62','KEPULAUAN RIAU'),('31','62','DKI JAKARTA'),('32','62','JAWA BARAT'),('33','62','JAWA TENGAH'),('34','62','DI YOGYAKARTA'),('35','62','JAWA TIMUR'),('36','62','BANTEN'),('52','62','NUSA TENGGARA BARAT'),('73','62','SULAWESI SELATAN'),('75','62','GORONTALO');
/*!40000 ALTER TABLE `propinsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seleksi`
--

DROP TABLE IF EXISTS `seleksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seleksi` (
  `K_SELEKSI` varchar(3) NOT NULL,
  `SINGKAT` varchar(10) DEFAULT NULL,
  `CONTENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`K_SELEKSI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seleksi`
--

LOCK TABLES `seleksi` WRITE;
/*!40000 ALTER TABLE `seleksi` DISABLE KEYS */;
INSERT INTO `seleksi` VALUES ('MAN','MANDIRI','SELEKSI MANDIRI'),('SBM','SBMPTN','Seleksi Bersama Masuk Perguruan Tinggi Negeri'),('SNM','SNMPTN','Seleksi Nasional Masuk Perguruan Tinggi Neger');
/*!40000 ALTER TABLE `seleksi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-26 17:46:48
