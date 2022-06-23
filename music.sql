/*
SQLyog Ultimate v10.00 Beta1
MySQL - 8.0.27 : Database - music
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`music` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `music`;

/*Table structure for table `m_music` */

DROP TABLE IF EXISTS `m_music`;

CREATE TABLE `m_music` (
  `id` int NOT NULL AUTO_INCREMENT,
  `songname` varchar(200) NOT NULL,
  `singer` varchar(20) NOT NULL,
  `style` varchar(20) NOT NULL,
  `location` varchar(200) NOT NULL,
  `img_path` varchar(200) NOT NULL,
  `download_count` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `songname` (`songname`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3;

/*Data for the table `m_music` */

insert  into `m_music`(`id`,`songname`,`singer`,`style`,`location`,`img_path`,`download_count`) values (72,'PHONERING.mp3','yudupapa','英文','music/流行/','static/img/yudupapa.jpg',1),(75,'孤勇者.mp3','陈奕迅','流行','music/流行/','static/img/陈奕迅.jpg',7),(76,'Pepas.mp3','Farruko','英文','music/流行/','static/img/Pepas.jpg',11),(77,'Sing.mp3','1Frida Amundsen','英文','music/流行/','static/img/Sing.jpg',12),(78,'Oops.mp3','Little Mix','英文','music/流行/','static/img/Oops.jpg',3),(79,'Ican.mp3','Minnutes','英文','music/英文/','static/img/Ican.jpg',5),(80,'Crush2.mp3','W/N','英文','music/英文/','static/img/Crush2.jpg',1),(81,'SummerVibe.mp3','Walk off the Earth','英文','music/英文/','static/img/Summer.jpg',9),(82,'Pedalo.mp3','The Heart Strings','英文','music/英文/','1',1);

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*Data for the table `m_user` */

insert  into `m_user`(`id`,`username`,`password`,`email`) values (1,'admin','admin','admin@music.com'),(3,'music1','111111','1152779715@qq.com');

/*Table structure for table `u_collection` */

DROP TABLE IF EXISTS `u_collection`;

CREATE TABLE `u_collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `songname` varchar(200) NOT NULL,
  `singer` varchar(20) NOT NULL,
  `download_count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

/*Data for the table `u_collection` */

insert  into `u_collection`(`id`,`username`,`songname`,`singer`,`download_count`) values (8,'admin','告白气球.mp3','周杰伦',1),(9,'music1','告白气球.mp3','周杰伦',18);

/*Table structure for table `u_recording` */

DROP TABLE IF EXISTS `u_recording`;

CREATE TABLE `u_recording` (
  `id` int NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `songname` varchar(200) DEFAULT NULL,
  `singer` varchar(20) DEFAULT NULL,
  `recording_count` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `u_recording` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
