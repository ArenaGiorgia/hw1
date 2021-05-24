-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: laboratorio
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

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
-- Table structure for table `abilitazione`
--

DROP TABLE IF EXISTS `abilitazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abilitazione` (
  `id_tipologia` int(11) NOT NULL,
  `id_personale` int(11) NOT NULL,
  PRIMARY KEY (`id_personale`,`id_tipologia`),
  KEY `new_id_personale` (`id_personale`),
  KEY `new_id_tipologia` (`id_tipologia`),
  CONSTRAINT `abilitazione_ibfk_1` FOREIGN KEY (`id_personale`) REFERENCES `personale_medico` (`id_personale`) ON UPDATE CASCADE,
  CONSTRAINT `abilitazione_ibfk_2` FOREIGN KEY (`id_tipologia`) REFERENCES `tipologia` (`id_tipologia`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abilitazione`
--

LOCK TABLES `abilitazione` WRITE;
/*!40000 ALTER TABLE `abilitazione` DISABLE KEYS */;
INSERT INTO `abilitazione` VALUES (2,1),(3,1),(1,2),(2,2),(3,2),(10,2),(4,3),(5,3),(8,3),(10,3),(5,4),(10,4),(6,5),(7,5),(10,5),(4,6),(7,6),(8,6),(9,6),(10,6),(7,7),(10,7);
/*!40000 ALTER TABLE `abilitazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nomecmp` varchar(50) DEFAULT NULL,
  `cf` varchar(16) DEFAULT NULL,
  `sesso` varchar(1) DEFAULT NULL,
  `datanascita` date DEFAULT NULL,
  `n_tel` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Sabrina Neri','SBRNRE56A34Y781W','f','1956-10-10','3245021789','sabbro@hotmail.com','JDJ5JDEwJG9vSnhMMUZyTnNQWUtxeGpZVmVYMU9OVS5uaGV2L0VrQ25LL0JZaGZXYm5ZRWM0d3BXc082'),(2,'Mario Rossi','RSSMRA71S20M082N','m','1971-11-20','3247465564','mario71@gmail.com','JDJ5JDEwJHZGMHdIUkRheXN0MXRhZ0c5T0Rrb2VmbHVJUmJoNW04c25CSVdYQU5seXdxV0lZc1dPSENT'),(3,'Francesco Consoli','CNSFNC50B10C351I','m','1950-02-10','324789464','fracons@gmail.com','JDJ5JDEwJEZjTFFOdDFDd2ZZajk3cWVRZm5VU09mbzVVMjhvakVUUjVlODlYYklwbUJZN3I3ZEp0djN1'),(4,'Giulia Zappala','ZPPGLI99C63G273C','f','1999-03-23','32456899122','zappa@hotmail.it','JDJ5JDEwJDk3NkR1b0JqR0I1dDZnZ1VVSHQ5L09oWXQ0REEyMld4ZXNNNURGSmNMQnFPTmFQdGc2QkpH'),(5,'Luciano Mirabella','MRBLCN35E22B202Z','m','1935-05-22','3245789113','miras@hotmail.com','JDJ5JDEwJHhGLnNySExRU2tYOVh6S0psL08vMnVmLzgzUkZGVTg0d2NkN0h1Q1JXcDVuUzlPb092VU1D'),(6,'Alessia Messina','MSSLSS89H52C351C','f','1989-06-12','32145763110','alessiuccia@libero.it','JDJ5JDEwJEVPdGZxNjNQMi9yNGRoenRldmhCNXVPTU8uek5YVWR5WWZGM3NCa1lMUDczb3BHSDJucnZx'),(7,'Luna Scalisi','SCLLNU95A42G273A','f','1995-01-02','3214567891','lusca@hotmail.com','JDJ5JDEwJExyNzZXQlZMR1Eyb1pVL2JLMFNjOHVLZ0R1a1hmTTg4MG1NNUxPSlZjbnlTUTZyUVhhWUJ1'),(8,'Antonio Lanzafame','LNZNTN97L18C351Q','m','1997-07-18','3247896321','antoin@libero.it','JDJ5JDEwJG9PcXhqeFpQbjR3YjltSU5lMVhjNGVraXloeHpady40U2xFVmNaV3JYemdJM3lMdmMucFZx'),(9,'Naomi Ricceri','RCCNMA98D65A841U','f','1998-04-25','32705649787','naomi@tiscali.it','JDJ5JDEwJC9pdjIxMzh6aXlWVW5aaGVrMXdvemVadWV4djBveFhRVUdPQUlYa0dyNnlraFNoYVc1dTdH'),(10,'Matteo Rapisarda','RPSMTT99M04A944P','m','1999-08-04','3289574123','mattew@tiscali.it','JDJ5JDEwJEdINVouaEpNWnQ4aHZ3YVJEWllCZC5mcENFT0lORDlnZGl5alcuYmZNRUowcTduamFtZURL'),(11,'Luca Chisari','CHSLCU99S30B202N','m','1999-11-30','3270958137','lucamanuel999@gmail.com','JDJ5JDEwJG5NOC54N0R4M1pYdnRCS1BnN3ozWnUwNGJqaTdZdHZDWWVmYTRGU01FRzRQUGFpRFFkampt');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `clifattmedes`
--

DROP TABLE IF EXISTS `clifattmedes`;
/*!50001 DROP VIEW IF EXISTS `clifattmedes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `clifattmedes` (
  `id_cliente` tinyint NOT NULL,
  `nome_cliente` tinyint NOT NULL,
  `id_medico` tinyint NOT NULL,
  `nome_medico` tinyint NOT NULL,
  `id_prestazione` tinyint NOT NULL,
  `id_lab` tinyint NOT NULL,
  `nome_lab` tinyint NOT NULL,
  `id_esito` tinyint NOT NULL,
  `esito_desc` tinyint NOT NULL,
  `id_fattura` tinyint NOT NULL,
  `prezzo_pagato` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `esito`
--

DROP TABLE IF EXISTS `esito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `esito` (
  `id_esito` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(255) DEFAULT NULL,
  `dataeff` date DEFAULT NULL,
  `prestazione` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_esito`),
  KEY `new_dataeff` (`dataeff`),
  KEY `new_prestazione` (`prestazione`),
  CONSTRAINT `esito_ibfk_1` FOREIGN KEY (`dataeff`) REFERENCES `prestazione_effettiva` (`dataeff`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `esito_ibfk_2` FOREIGN KEY (`prestazione`) REFERENCES `prestazione_effettiva` (`id_prestazione`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esito`
--

LOCK TABLES `esito` WRITE;
/*!40000 ALTER TABLE `esito` DISABLE KEYS */;
INSERT INTO `esito` VALUES (1,'positivo','2017-11-11',2),(2,'negativo','2019-03-02',8),(3,'negativo','2020-11-10',6),(4,'valori nella norma','2020-11-10',10),(5,'valori nella norma','2020-12-16',1),(6,'positivo','2015-07-11',2),(7,'positivo','2015-02-04',3),(9,'positivo','2015-02-04',5),(10,'valori nella norma','2012-08-20',7),(11,'negativo','2019-03-02',8),(12,'valori da attenzionare','2011-07-15',9),(13,'valori da attenzionare','2009-04-10',10),(14,'valori nella norma','2019-06-01',10);
/*!40000 ALTER TABLE `esito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fattura`
--

DROP TABLE IF EXISTS `fattura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fattura` (
  `id_fattura` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(11) DEFAULT NULL,
  `prestazione` int(11) DEFAULT NULL,
  `dataeff` date DEFAULT NULL,
  `pagato` float DEFAULT NULL,
  PRIMARY KEY (`id_fattura`),
  KEY `new_cliente` (`cliente`),
  KEY `new_prestazione` (`prestazione`),
  KEY `new_dataeff` (`dataeff`),
  CONSTRAINT `fattura_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id_cliente`) ON UPDATE CASCADE,
  CONSTRAINT `fattura_ibfk_2` FOREIGN KEY (`prestazione`) REFERENCES `prestazione_effettiva` (`id_prestazione`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fattura_ibfk_3` FOREIGN KEY (`dataeff`) REFERENCES `prestazione_effettiva` (`dataeff`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fattura`
--

LOCK TABLES `fattura` WRITE;
/*!40000 ALTER TABLE `fattura` DISABLE KEYS */;
INSERT INTO `fattura` VALUES (1,1,2,'2017-11-11',44.8),(2,9,8,'2019-03-02',150),(3,8,6,'2020-11-10',40),(4,10,10,'2020-11-10',40),(5,1,1,'2020-12-16',32),(6,7,2,'2015-07-11',70),(7,1,3,'2015-02-04',70),(9,3,5,'2015-02-04',60),(10,4,7,'2012-08-20',50),(11,8,8,'2020-12-28',150),(12,6,9,'2011-07-15',200),(13,9,10,'2009-04-10',40),(14,8,10,'2019-06-01',40);
/*!40000 ALTER TABLE `fattura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorio` (
  `id_laboratorio` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) DEFAULT NULL,
  `sede` varchar(20) DEFAULT NULL,
  `tot_dip_attuali` int(11) DEFAULT NULL,
  `immlab` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_laboratorio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` VALUES (1,'Biolab','Catania',2,'med/lab1.png'),(2,'Labtech','Ragusa',2,'med/lab2.jpg'),(3,'MolecularLab','Messina',1,'med/lab3.jpg'),(4,'Cliniclab','Palermo',2,'med/lab4.jpg');
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lavoropassato`
--

DROP TABLE IF EXISTS `lavoropassato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lavoropassato` (
  `id_personale` int(11) NOT NULL,
  `id_laboratorio` int(11) NOT NULL,
  `datainizio` date NOT NULL,
  `datafine` date NOT NULL,
  PRIMARY KEY (`id_personale`,`id_laboratorio`,`datainizio`,`datafine`),
  KEY `new_id_personale` (`id_personale`),
  KEY `new_id_laboratorio` (`id_laboratorio`),
  CONSTRAINT `lavoropassato_ibfk_1` FOREIGN KEY (`id_personale`) REFERENCES `personale_medico` (`id_personale`) ON UPDATE CASCADE,
  CONSTRAINT `lavoropassato_ibfk_2` FOREIGN KEY (`id_laboratorio`) REFERENCES `laboratorio` (`id_laboratorio`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lavoropassato`
--

LOCK TABLES `lavoropassato` WRITE;
/*!40000 ALTER TABLE `lavoropassato` DISABLE KEYS */;
INSERT INTO `lavoropassato` VALUES (1,2,'2014-10-25','2016-09-08'),(3,1,'2019-05-01','2019-12-04'),(3,4,'2008-03-10','2019-04-20'),(3,4,'2020-01-01','2020-09-09'),(4,1,'2011-01-01','2012-01-01'),(7,1,'2009-02-10','2010-04-10');
/*!40000 ALTER TABLE `lavoropassato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `lavpasmed`
--

DROP TABLE IF EXISTS `lavpasmed`;
/*!50001 DROP VIEW IF EXISTS `lavpasmed`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `lavpasmed` (
  `id_personale` tinyint NOT NULL,
  `nome_personale` tinyint NOT NULL,
  `id_pers` tinyint NOT NULL,
  `nome_lab` tinyint NOT NULL,
  `datainizio` tinyint NOT NULL,
  `datafine` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `personale_medico`
--

DROP TABLE IF EXISTS `personale_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personale_medico` (
  `id_personale` int(11) NOT NULL AUTO_INCREMENT,
  `nomecmp` varchar(50) DEFAULT NULL,
  `ruolo` varchar(20) DEFAULT NULL,
  `ntel` varchar(20) DEFAULT NULL,
  `laboratorio` int(11) DEFAULT NULL,
  `datainizio` date DEFAULT NULL,
  `immagine` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_personale`),
  KEY `new_laboratorio` (`laboratorio`),
  CONSTRAINT `personale_medico_ibfk_1` FOREIGN KEY (`laboratorio`) REFERENCES `laboratorio` (`id_laboratorio`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personale_medico`
--

LOCK TABLES `personale_medico` WRITE;
/*!40000 ALTER TABLE `personale_medico` DISABLE KEYS */;
INSERT INTO `personale_medico` VALUES (1,'Oriana Sapienza','assistente','3210897551',1,'2017-10-10','med/2.jpg'),(2,'Alberto Truglio','medico','0957864855',1,'2015-06-01','med/7.jpg'),(3,'Damiano Quaceci','medico','0957891266',2,'2010-05-08','med/4.jpg'),(4,'Molly Restivo','infermiere','3227823549',2,'2012-04-09','med/1.jpg'),(5,'Francesco Cunsolo','medico','0967415236',3,'2020-10-10','med/5.jpg'),(6,'Onofio Scalisi','medico','0915553217',4,'2009-02-01','med/3.jpg'),(7,'Ilaria Fallica','infermiere','3118856321',4,'2010-08-20','med/6.jpg');
/*!40000 ALTER TABLE `personale_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `perstiplab`
--

DROP TABLE IF EXISTS `perstiplab`;
/*!50001 DROP VIEW IF EXISTS `perstiplab`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `perstiplab` (
  `id_tip` tinyint NOT NULL,
  `tipologia` tinyint NOT NULL,
  `id_pers` tinyint NOT NULL,
  `nome_pers` tinyint NOT NULL,
  `id_lab` tinyint NOT NULL,
  `nome_lab` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `prenotazioni`
--

DROP TABLE IF EXISTS `prenotazioni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prenotazioni` (
  `id_tipologia` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `dataprenotazione` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_tipologia`,`id_cliente`,`dataprenotazione`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `prenotazioni_ibfk_1` FOREIGN KEY (`id_tipologia`) REFERENCES `tipologia` (`id_tipologia`),
  CONSTRAINT `prenotazioni_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenotazioni`
--

LOCK TABLES `prenotazioni` WRITE;
/*!40000 ALTER TABLE `prenotazioni` DISABLE KEYS */;
INSERT INTO `prenotazioni` VALUES (1,1,'2021-05-22 09:57:48'),(1,1,'2021-05-22 14:54:30'),(1,11,'2021-05-22 21:33:19'),(2,1,'2021-05-24 09:04:58'),(3,1,'2021-05-22 20:59:18'),(4,11,'2021-05-22 21:33:19'),(5,11,'2021-05-22 21:33:19'),(6,11,'2021-05-22 21:33:19'),(8,1,'2021-05-22 21:27:23'),(12,11,'2021-05-22 21:33:19');
/*!40000 ALTER TABLE `prenotazioni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestazione`
--

DROP TABLE IF EXISTS `prestazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestazione` (
  `id_prestazione` int(11) NOT NULL AUTO_INCREMENT,
  `tipologia` int(11) DEFAULT NULL,
  `prezzo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prestazione`),
  KEY `new_tipologia` (`tipologia`),
  CONSTRAINT `prestazione_ibfk_1` FOREIGN KEY (`tipologia`) REFERENCES `tipologia` (`id_tipologia`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestazione`
--

LOCK TABLES `prestazione` WRITE;
/*!40000 ALTER TABLE `prestazione` DISABLE KEYS */;
INSERT INTO `prestazione` VALUES (1,1,50),(2,2,70),(3,3,100),(4,4,30),(5,5,80),(6,6,40),(7,7,50),(8,8,150),(9,9,200),(10,10,40);
/*!40000 ALTER TABLE `prestazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestazione_effettiva`
--

DROP TABLE IF EXISTS `prestazione_effettiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestazione_effettiva` (
  `id_prestazione` int(11) NOT NULL,
  `dataeff` date NOT NULL,
  `oraeff` time DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `data_p` date DEFAULT NULL,
  `id_personale` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prestazione`,`dataeff`),
  KEY `new_id_prestazione` (`id_prestazione`),
  KEY `new_dataeff` (`dataeff`),
  KEY `new_id_personale` (`id_personale`),
  KEY `cliente` (`cliente`),
  CONSTRAINT `prestazione_effettiva_ibfk_1` FOREIGN KEY (`id_prestazione`) REFERENCES `prestazione` (`id_prestazione`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prestazione_effettiva_ibfk_2` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id_cliente`) ON UPDATE CASCADE,
  CONSTRAINT `prestazione_effettiva_ibfk_3` FOREIGN KEY (`id_personale`) REFERENCES `personale_medico` (`id_personale`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestazione_effettiva`
--

LOCK TABLES `prestazione_effettiva` WRITE;
/*!40000 ALTER TABLE `prestazione_effettiva` DISABLE KEYS */;
INSERT INTO `prestazione_effettiva` VALUES (1,'2020-12-16','10:30:00',1,'2020-10-20',2),(2,'2015-07-11','11:00:06',7,'2015-03-01',1),(2,'2017-11-11','08:30:00',1,'2017-10-20',1),(3,'2015-02-04','08:00:05',1,'2015-01-01',1),(4,'2019-07-14','11:00:06',2,'2019-06-01',3),(5,'2015-02-04','08:00:05',3,'2015-01-01',4),(6,'2020-11-10','10:30:00',8,'2020-10-10',5),(7,'2012-08-20','15:00:00',4,'2012-09-25',7),(8,'2019-03-02','10:09:00',9,'2019-01-24',3),(8,'2020-12-28','09:00:00',8,'2020-12-10',3),(9,'2011-07-15','10:00:00',6,'2011-06-15',6),(10,'2009-04-10','15:00:06',9,'2008-04-01',3),(10,'2019-06-01','11:00:00',8,'2019-05-10',3),(10,'2020-11-10','15:10:00',10,'2020-10-01',5);
/*!40000 ALTER TABLE `prestazione_effettiva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipologia`
--

DROP TABLE IF EXISTS `tipologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipologia` (
  `id_tipologia` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `descrizione` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tipologia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipologia`
--

LOCK TABLES `tipologia` WRITE;
/*!40000 ALTER TABLE `tipologia` DISABLE KEYS */;
INSERT INTO `tipologia` VALUES (1,'Analisi del sangue','img/blood-1813410_1920.jpg','L esame del sangue è una tecnica di diagnostica medica che, attraverso il prelievo di sangue venoso, valuta i parametri ematici del paziente evidenziando il suo stato di salute generale'),(2,'Profilo metabolico','img/celiachia.jpeg','La celiachia è una reazione immunitaria all’assunzione di glutine; a lungo andare questa reazione produce un’infiammazione che danneggia il rivestimento dell’intestino tenue e impedisce l’assorbimento di alcuni nutrienti'),(3,'Intolleranze Alimentari','img/intolleranze.jpg','Le intolleranze alimentari fanno parte di un più vasto gruppo di disturbi definiti come reazioni avverse al cibo: si parla di intolleranza alimentare, piuttosto che di allergia, quando la reazione non è provocata dal sistema immunitario'),(4,'Dosaggio delle IgE specifiche per Allergie','img/ige-totali.jpg','Questo test misura la concentrazione ematica di IgE allergene-specifiche per individuare un’allergia ad uno specifico allergene.'),(5,'Intolleranza Genetica al lattosio','img/lattosio.jpg','L intolleranza al lattosio è una condizione in cui il consumo di lattosio provoca una reazione avversa non allergica che si manifesta con disturbi gastrointestinali come ad esempio gonfiore.'),(6,'Esame citologico delle urine','img/urine.jpg','L’esame delle urine è un comune test che consente di diagnosticare eventuali patologie a carico dell’apparato urinario e di verificare la funzionalità renale'),(7,'Screening Oncologico','img/screening.jpg','Gli screening oncologici servono a individuare precocemente i tumori, o i loro precursori, quando non hanno ancora dato segno di sé.'),(8,'Dosaggio Ormonale','img/DosaggiOrmonali.jpg','Attraverso l’esame del dosaggio ormonale possiamo andare a fare una vera e propria valutazione della concentrazione di questi ormoni nel flusso ematico e, di conseguenza, possiamo anche valutare il funzionamento delle ghiandole endocrine che li producono.'),(9,'Cistografia','img/cistoscopia.jpg','La cistografia è un esame radiologico che permette di studiare l anatomia e la funzionalità di vescica e uretra.'),(10,'Bilirubina totale e parziale','img/fegato.jpg','L esame della bilirubina ne misura la concentrazione nel sangue per valutare la funzionalità epatica o per diagnosticare l anemia causata dal danno o degrado dei globuli rossi (anemia emolitica)'),(11,'Esame della Tiroide','img/tiroide.jpg','Nella lista degli esami della tiroide, figurano: gli esami visivo e palpatorio della tiroide, la quantificazione dei livelli ematici degli ormoni tiroidei T3 e T4, e dell ormone ipofisario TSH'),(12,'Genetica','img/genetica.jpg','Il test genetico è l insieme delle analisi di DNA, RNA, cromosomi, metaboliti e altri prodotti genici, effettuata per evidenziarne alterazioni correlate con patologie ereditarie.');
/*!40000 ALTER TABLE `tipologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vista1`
--

DROP TABLE IF EXISTS `vista1`;
/*!50001 DROP VIEW IF EXISTS `vista1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vista1` (
  `id_prest` tinyint NOT NULL,
  `id_tip` tinyint NOT NULL,
  `tipologia` tinyint NOT NULL,
  `data_effettuata` tinyint NOT NULL,
  `id_cliente` tinyint NOT NULL,
  `nome_cliente` tinyint NOT NULL,
  `id_pers` tinyint NOT NULL,
  `personale_medico` tinyint NOT NULL,
  `id_lab` tinyint NOT NULL,
  `nome_lab` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `clifattmedes`
--

/*!50001 DROP TABLE IF EXISTS `clifattmedes`*/;
/*!50001 DROP VIEW IF EXISTS `clifattmedes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clifattmedes` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nomecmp` AS `nome_cliente`,`pe`.`id_personale` AS `id_medico`,`pm`.`nomecmp` AS `nome_medico`,`pe`.`id_prestazione` AS `id_prestazione`,`l`.`id_laboratorio` AS `id_lab`,`l`.`nome` AS `nome_lab`,`e`.`id_esito` AS `id_esito`,`e`.`descrizione` AS `esito_desc`,`f`.`id_fattura` AS `id_fattura`,`f`.`pagato` AS `prezzo_pagato` from (((((`cliente` `c` join `fattura` `f` on(`c`.`id_cliente` = `f`.`cliente`)) join `prestazione_effettiva` `pe` on(`c`.`id_cliente` = `pe`.`cliente`)) join `personale_medico` `pm` on(`pe`.`id_personale` = `pm`.`id_personale`)) join `esito` `e` on(`pe`.`dataeff` = `e`.`dataeff`)) join `laboratorio` `l` on(`pm`.`laboratorio` = `l`.`id_laboratorio`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lavpasmed`
--

/*!50001 DROP TABLE IF EXISTS `lavpasmed`*/;
/*!50001 DROP VIEW IF EXISTS `lavpasmed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lavpasmed` AS select `lp`.`id_personale` AS `id_personale`,`pm`.`nomecmp` AS `nome_personale`,`lp`.`id_laboratorio` AS `id_pers`,`l`.`nome` AS `nome_lab`,`lp`.`datainizio` AS `datainizio`,`lp`.`datafine` AS `datafine` from ((`personale_medico` `pm` join `lavoropassato` `lp` on(`pm`.`id_personale` = `lp`.`id_personale`)) join `laboratorio` `l` on(`lp`.`id_laboratorio` = `l`.`id_laboratorio`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `perstiplab`
--

/*!50001 DROP TABLE IF EXISTS `perstiplab`*/;
/*!50001 DROP VIEW IF EXISTS `perstiplab`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `perstiplab` AS select `a`.`id_tipologia` AS `id_tip`,`t`.`nome` AS `tipologia`,`pm`.`id_personale` AS `id_pers`,`pm`.`nomecmp` AS `nome_pers`,`l`.`id_laboratorio` AS `id_lab`,`l`.`nome` AS `nome_lab` from ((((`abilitazione` `a` join `personale_medico` `pm` on(`a`.`id_personale` = `pm`.`id_personale`)) join `tipologia` `t` on(`a`.`id_tipologia` = `t`.`id_tipologia`)) join `prestazione` `p` on(`t`.`id_tipologia` = `p`.`tipologia`)) join `laboratorio` `l` on(`pm`.`laboratorio` = `l`.`id_laboratorio`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista1`
--

/*!50001 DROP TABLE IF EXISTS `vista1`*/;
/*!50001 DROP VIEW IF EXISTS `vista1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista1` AS select `pe`.`id_prestazione` AS `id_prest`,`t`.`id_tipologia` AS `id_tip`,`t`.`nome` AS `tipologia`,`pe`.`dataeff` AS `data_effettuata`,`c`.`id_cliente` AS `id_cliente`,`c`.`nomecmp` AS `nome_cliente`,`pm`.`id_personale` AS `id_pers`,`pm`.`nomecmp` AS `personale_medico`,`l`.`id_laboratorio` AS `id_lab`,`l`.`nome` AS `nome_lab` from (((((`prestazione_effettiva` `pe` join `prestazione` `p` on(`pe`.`id_prestazione` = `p`.`id_prestazione`)) join `tipologia` `t` on(`p`.`tipologia` = `t`.`id_tipologia`)) join `cliente` `c` on(`pe`.`cliente` = `c`.`id_cliente`)) join `personale_medico` `pm` on(`pe`.`id_personale` = `pm`.`id_personale`)) join `laboratorio` `l` on(`pm`.`laboratorio` = `l`.`id_laboratorio`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-24 19:47:50
