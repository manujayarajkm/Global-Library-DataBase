# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: Library
# Generation Time: 2018-06-27 13:27:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bill
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `bill_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `total` float NOT NULL,
  `bill_date` date NOT NULL,
  `paid` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `book_id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL DEFAULT '',
  `genre` varchar(30) NOT NULL DEFAULT '',
  `price` float NOT NULL,
  `available_nos` int(2) NOT NULL DEFAULT '0',
  `cover` varchar(30) NOT NULL DEFAULT '',
  `rating` float NOT NULL DEFAULT '0',
  `no_of_ratings` int(4) NOT NULL DEFAULT '0',
  `no_of_reviews` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;

INSERT INTO `books` (`book_id`, `title`, `author`, `genre`, `price`, `available_nos`, `cover`, `rating`, `no_of_ratings`, `no_of_reviews`)
VALUES
	(121,'Harry Potter','J K Rowling','Fantasy',245,4,'harrypotter.jpg',4.8125,14,8),
	(122,'percy','unknown','Fantasy',230,4,'percy.jpg',4,24,5),
	(123,'Davinci Code','Dan Brown','Fantasy',250,2,'davincy.jpg',3.5,13,6),
	(124,'Sherlok','Doyle','Fiction',300,8,'sherlok.jpg',5,12,7),
	(125,'IT','Stephen King','Thriller',300,3,'it.jpg',3,33,8),
	(126,'Alchemist','Paulo Koylo','Fiction',220,4,'alchemist.jpg',4.375,34,9),
	(132,'Nalukettu','M T','Fiction',260,6,'nalukettu.jpg',3.75,45,3);

/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `cart_id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `title` varchar(40) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `count` int(2) NOT NULL DEFAULT '1',
  `price` float NOT NULL,
  `book_id` int(4) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table hire
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hire`;

CREATE TABLE `hire` (
  `hire_id` int(4) NOT NULL AUTO_INCREMENT,
  `book_id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `took_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  PRIMARY KEY (`hire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `history`;

CREATE TABLE `history` (
  `history_id` int(3) NOT NULL AUTO_INCREMENT,
  `user_id` int(3) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `took_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date NOT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;

INSERT INTO `history` (`history_id`, `user_id`, `title`, `took_date`, `due_date`, `return_date`)
VALUES
	(14,101,'Alchemist','2017-10-22','2017-10-29','2017-10-22'),
	(15,101,'Davinci Code','2017-10-22','2017-10-29','2017-10-22'),
	(16,101,'percy','2017-10-24','2017-10-31','2017-10-24'),
	(17,101,'Nalukettu','2017-10-28','2017-11-04','2017-10-28'),
	(18,101,'Alchemist','2017-10-28','2017-11-04','2017-10-28'),
	(19,101,'Alchemist','2017-10-28','2017-11-04','2017-10-28'),
	(20,101,'Davinci Code','2017-10-28','2017-11-04','2017-10-28'),
	(21,101,'Alchemist','2017-10-28','2017-11-04','2017-10-28'),
	(22,101,'Davinci Code','2017-10-28','2017-11-04','2017-10-28'),
	(23,101,'Alchemist','2017-10-28','2017-11-04','2017-10-28'),
	(24,101,'Davinci Code','2017-10-28','2017-11-04','2017-10-28'),
	(25,101,'Alchemist','2017-10-28','2017-11-04','2017-10-28'),
	(26,101,'Davinci Code','2017-10-28','2017-11-04','2017-10-28'),
	(27,101,'Alchemist','2017-10-29','2017-11-05','2017-10-29'),
	(28,101,'Davinci Code','2017-10-29','2017-11-05','2017-10-29'),
	(29,101,'Alchemist','2017-10-29','2017-11-05','2017-10-29'),
	(30,101,'Alchemist','2017-10-29','2017-11-05','2017-10-29'),
	(31,101,'Harry Potter','2017-11-12','2017-11-19','2017-11-12'),
	(32,101,'Harry Potter','2017-11-13','2017-11-20','2017-11-13'),
	(33,101,'Harry Potter','2017-11-25','2017-12-02','2017-11-25'),
	(34,101,'IT','2017-11-30','2017-12-07','2017-11-30'),
	(35,2,'Davinci Code','2017-11-30','2017-12-07','2017-11-30'),
	(36,101,'IT','2017-11-30','2017-12-07','2017-11-30'),
	(37,101,'Alchemist','2017-11-30','2017-12-07','2017-11-30'),
	(38,101,'Nalukettu','2018-03-25','2018-04-01','2018-03-25'),
	(39,101,'tereesa','2018-03-25','2018-04-01','2018-03-25'),
	(40,101,'Sherlok','2018-03-25','2018-04-01','2018-03-25');

/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table imagestore
# ------------------------------------------------------------

DROP TABLE IF EXISTS `imagestore`;

CREATE TABLE `imagestore` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `image` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `imagestore` WRITE;
/*!40000 ALTER TABLE `imagestore` DISABLE KEYS */;

INSERT INTO `imagestore` (`id`, `image`)
VALUES
	(2,'test1'),
	(3,'test2');

/*!40000 ALTER TABLE `imagestore` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `link`;

CREATE TABLE `link` (
  `link_id` int(4) NOT NULL AUTO_INCREMENT,
  `bill_id` int(5) DEFAULT NULL,
  `user_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `notification_id` int(3) NOT NULL AUTO_INCREMENT,
  `notification_date` date NOT NULL,
  `matter` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(4) NOT NULL,
  `book_id` int(4) NOT NULL,
  `acknowledged` char(1) NOT NULL DEFAULT 'n',
  `Ack_Date` date DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;

INSERT INTO `notifications` (`notification_id`, `notification_date`, `matter`, `user_id`, `book_id`, `acknowledged`, `Ack_Date`)
VALUES
	(124,'2017-10-28','Davinci Code is due on 2017-10-18',101,123,'y','2017-10-28'),
	(125,'2017-10-28','percy is due on 2017-10-20',101,122,'y','2017-10-28'),
	(126,'2017-11-10','Alchemist is due on 2017-11-05',101,126,'y','2017-12-01'),
	(127,'2018-02-25','IT is due on 2017-12-07',101,125,'y','2018-03-13'),
	(128,'2018-03-25','Nalukettu is due on 2018-03-24',101,132,'y','2018-03-25');

/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table purchase
# ------------------------------------------------------------

DROP TABLE IF EXISTS `purchase`;

CREATE TABLE `purchase` (
  `purchase_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `title` varchar(40) NOT NULL DEFAULT '',
  `author` varchar(40) NOT NULL DEFAULT '',
  `count` int(2) NOT NULL DEFAULT '1',
  `price` float NOT NULL,
  `book_id` int(4) NOT NULL,
  `purchase_date` date NOT NULL,
  `bill_id` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;

INSERT INTO `purchase` (`purchase_id`, `user_id`, `title`, `author`, `count`, `price`, `book_id`, `purchase_date`, `bill_id`)
VALUES
	(9,234,'kjj','ff',1,123,234,'2017-11-01',12345),
	(17,102,'Davinci Code','Dan Brown',1,250,123,'2017-11-01',12346),
	(18,102,'percy','unknown',1,230,122,'2017-11-02',12346),
	(19,102,'Davinci Code','Dan Brown',1,250,123,'2017-11-02',12347),
	(47,101,'Sherlok','Doyle',2,300,124,'2017-11-02',12348),
	(54,101,'IT','Stephen King',1,300,125,'2017-11-01',12349),
	(55,101,'Sherlok','Doyle',1,300,124,'2017-11-01',12349),
	(56,101,'Davinci Code','Dan Brown',1,250,123,'2017-11-02',12350),
	(57,101,'percy','unknown',1,230,122,'2017-11-02',12351),
	(63,101,'Alchemist','Paulo Koylo',1,220,126,'2017-11-30',12352);

/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table review
# ------------------------------------------------------------

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `review_id` int(3) NOT NULL AUTO_INCREMENT,
  `body` varchar(400) NOT NULL DEFAULT '',
  `book_id` int(3) NOT NULL,
  `user_id` int(3) NOT NULL,
  `review_date` date NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;

INSERT INTO `review` (`review_id`, `body`, `book_id`, `user_id`, `review_date`)
VALUES
	(1,'Super book Must read',132,101,'2017-10-28'),
	(2,'dsdsdddd',123,101,'2017-10-28'),
	(3,'hkkssslss',126,101,'2017-10-28'),
	(4,'juddddldld',123,101,'2017-10-28'),
	(5,'jkkiiuuuu',126,101,'2017-10-28'),
	(6,'jkkkllk',123,101,'2017-10-28'),
	(7,'ffffff',123,102,'2017-10-28'),
	(8,'super',132,101,'2017-10-28'),
	(9,'hhaiasjjs',121,101,'2017-10-29'),
	(10,'Wonderful book definitely read',126,101,'2017-10-29'),
	(11,'percy jackson is good',122,102,'2017-10-29'),
	(12,'Nice Book',121,101,'2017-11-12'),
	(13,'Nice Book',121,101,'2017-11-13'),
	(14,'Good',121,101,'2017-11-25'),
	(15,'Good',125,101,'2017-11-30'),
	(16,'Super',123,2,'2017-11-30'),
	(17,'nice',126,101,'2018-03-25'),
	(18,'good',132,101,'2018-03-25'),
	(19,'jjkk',137,101,'2018-03-25'),
	(20,'Nice Book',124,101,'2018-03-25');

/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table temp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `temp_id` int(3) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `temp_code` int(6) NOT NULL,
  PRIMARY KEY (`temp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL DEFAULT '',
  `active` varchar(1) NOT NULL DEFAULT 'y',
  `remarks` varchar(40) NOT NULL DEFAULT '',
  `phone` double(10,0) NOT NULL,
  `uname` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`user_id`, `name`, `email`, `active`, `remarks`, `phone`, `uname`, `password`, `salt`)
VALUES
	(2,'test','test','y','',9999999999,'test','test',NULL),
	(101,'manu','manujayarajkm@gmail.com','y','Once upon a time in mumbai',9946440299,'manu','0234677addfkklmnprtuyz','7dtr72pld046kz3fky'),
	(102,'Jaison','jaisonpj1@gmail.com','y','',9995543139,'jmanu','manu',NULL),
	(105,'Sarun','sarun@gmail.com','y','',9898989898,'sarun','sarun',NULL),
	(106,'manu2','manu2','y','',9946440299,'manu2','17999aahijjklmnnnpqtuxz','9ailxn799njjkzqtph'),
	(111,'Ajay','ajay@gmail.com','y','',9876767676,'ajay','12335579aabgijjkkmpqvwyyy','kiv3mgjq95y57ykwpb');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
