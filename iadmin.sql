-- MySQL dump 10.11
--
-- Host: localhost    Database: iadmin
-- ------------------------------------------------------
-- Server version	5.0.51a-3ubuntu5.7-log

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
-- Table structure for table `alias`
--

DROP TABLE IF EXISTS `alias`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `alias` (
  `address` varchar(128) NOT NULL default '',
  `goto` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`address`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `alias`
--

LOCK TABLES `alias` WRITE;
/*!40000 ALTER TABLE `alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_domains`
--

DROP TABLE IF EXISTS `dns_domains`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dns_domains` (
  `id` int(11) NOT NULL auto_increment,
  `domainname` char(50) NOT NULL default '',
  `www` smallint(6) default NULL,
  `ftp` smallint(6) default NULL,
  `mail` smallint(6) default NULL,
  `typemail` varchar(100) NOT NULL,
  `secondaryfor` char(50) default NULL,
  `hosted_on` char(50) default NULL,
  `enable` smallint(6) default NULL,
  `serial` bigint(20) default NULL,
  `owner` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `dns_domains`
--

LOCK TABLES `dns_domains` WRITE;
/*!40000 ALTER TABLE `dns_domains` DISABLE KEYS */;
INSERT INTO `dns_domains` VALUES (155,'admin.vip',1,0,1,'gmail',NULL,'77.222.333.33',1,2010082100,0);
/*!40000 ALTER TABLE `dns_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_records`
--

DROP TABLE IF EXISTS `dns_records`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dns_records` (
  `domainname` char(50) default NULL,
  `rectype` char(10) default NULL,
  `data` char(50) default NULL,
  `enabled` smallint(6) default NULL,
  `id` bigint(1) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=511 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `dns_records`
--

LOCK TABLES `dns_records` WRITE;
/*!40000 ALTER TABLE `dns_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_subgmail`
--

DROP TABLE IF EXISTS `dns_subgmail`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dns_subgmail` (
  `id` int(11) NOT NULL auto_increment,
  `domainname` varchar(50) default NULL,
  `subdomain` varchar(50) default NULL,
  `enable` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `domainname` (`domainname`),
  KEY `subdomain` (`subdomain`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `dns_subgmail`
--

LOCK TABLES `dns_subgmail` WRITE;
/*!40000 ALTER TABLE `dns_subgmail` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_subgmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `http`
--

DROP TABLE IF EXISTS `http`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `http` (
  `sitename` varchar(50) NOT NULL default '',
  `aliases` varchar(50) default NULL,
  `path` varchar(50) NOT NULL default '',
  `username` varchar(50) NOT NULL default '',
  `status` varchar(50) default NULL,
  `additionaloptions` longtext,
  `enable` smallint(6) default NULL,
  `stat_passwd` varchar(50) default NULL,
  `ht_auth` smallint(6) default NULL,
  PRIMARY KEY  (`sitename`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `http`
--

LOCK TABLES `http` WRITE;
/*!40000 ALTER TABLE `http` DISABLE KEYS */;
/*!40000 ALTER TABLE `http` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `transport` (
  `domain` varchar(128) NOT NULL default '',
  `transport` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `transport`
--

LOCK TABLES `transport` WRITE;
/*!40000 ALTER TABLE `transport` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `email` varchar(128) NOT NULL default '',
  `passwd` varchar(128) NOT NULL default '',
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=356 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_copy`
--

DROP TABLE IF EXISTS `users_copy`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_copy` (
  `id` int(11) NOT NULL auto_increment,
  `email` varchar(128) NOT NULL default '',
  `passwd` varchar(128) NOT NULL default '',
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_copy`
--

LOCK TABLES `users_copy` WRITE;
/*!40000 ALTER TABLE `users_copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_copy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-08-21  8:07:31
