/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.6.16 : Database - josh
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`josh` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `josh`;

/*Table structure for table `activations` */

DROP TABLE IF EXISTS `activations`;

CREATE TABLE `activations` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `code` varchar(256) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `completed` int(1) DEFAULT '0',
  `completed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `activations` */

insert  into `activations`(`id`,`code`,`user_id`,`updated_at`,`created_at`,`completed`,`completed_at`) values (1,'NCHVPSPAtnDrQSgeOaHfwvMLIbI7ZbAu',1,'2016-11-14 04:25:39','2016-11-14 04:25:39',1,'2016-11-14 04:25:39'),(2,'gf8izhwmjrHSYWWOOBisEd4A2Fh90dYP',2,'2016-11-16 09:42:17','2016-11-16 09:42:17',1,'2016-11-16 09:42:17');

/*Table structure for table `blog_categories` */

DROP TABLE IF EXISTS `blog_categories`;

CREATE TABLE `blog_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `blog_categories` */

insert  into `blog_categories`(`id`,`title`,`created_at`,`updated_at`,`deleted_at`) values (1,'brbadfb','2016-11-16 09:29:24','2016-11-16 09:29:24',NULL);

/*Table structure for table `blog_comments` */

DROP TABLE IF EXISTS `blog_comments`;

CREATE TABLE `blog_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `blog_comments` */

/*Table structure for table `blogs` */

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `blogs` */

insert  into `blogs`(`id`,`blog_category_id`,`user_id`,`title`,`content`,`image`,`views`,`created_at`,`updated_at`,`deleted_at`,`slug`) values (1,1,1,'èbdsfnbsfn','<p>brnfhdmfgm</p>',NULL,1,'2016-11-16 09:30:40','2016-11-16 09:33:50',NULL,'ebdsfnbsfn'),(2,1,1,'tag aa','<p>egfdagfd</p>',NULL,0,'2016-11-16 09:34:20','2016-11-16 09:34:20',NULL,'tag-aa'),(3,1,1,'blog 1','<p>day la blog 1</p>',NULL,0,'2016-11-16 09:35:28','2016-11-16 09:35:28',NULL,'blog-1'),(4,1,1,'blog 2','<p>dat la blog 2</p><p><b>sdafsadf</b></p><p><b><br></b></p><p><b>d<span style=\"background-color: rgb(156, 0, 255);\">svfasdgbb</span></b></p><p><b><span style=\"background-color: rgb(156, 0, 255);\">sdbsdavb</span></b></p>',NULL,0,'2016-11-16 09:36:10','2016-11-16 09:36:10',NULL,'blog-2');

/*Table structure for table `booktests` */

DROP TABLE IF EXISTS `booktests`;

CREATE TABLE `booktests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `booktests` */

insert  into `booktests`(`id`,`title`,`author`,`description`,`created_at`,`updated_at`) values (2,'aaa','aaaaa','aaaaaaaaaa','2016-11-14 10:23:33','2016-11-14 10:23:33'),(3,'adbadbh','4bdsabsd','fn sagsdag','2016-11-14 10:27:14','2016-11-14 10:27:14'),(4,'erfnsdfn','sadb','2gsdg','2016-11-14 10:27:41','2016-11-14 10:27:41'),(5,'vasvbasg','sabadbsdg','gdsgsadgsg','2016-11-14 10:40:17','2016-11-14 10:40:17'),(6,'bfdg','asdhdndh','sgdsawgasg','2016-11-14 10:41:06','2016-11-14 10:41:06'),(7,'adfhdfhd','b3nhbrn','fnfdsdfhgd','2016-11-14 10:41:41','2016-11-14 10:41:41'),(8,'SDAVsdb','adfbdab','dafbdabdfb','2016-11-16 03:37:17','2016-11-16 03:37:17'),(9,'titlesdf','2fasb','ágasfsdf','2016-11-16 04:41:08','2016-11-16 04:41:08'),(10,'dfhgdfshn','be4tnfsgn','fdnfgdsnfgn','2016-11-16 04:42:08','2016-11-16 04:42:08'),(11,'3brhnrn','rndftgnm','dgmhdgmhg','2016-11-16 04:42:23','2016-11-16 04:42:23'),(12,'34hgrnfg','dnfdgnfdgn','fdgnfdn','2016-11-16 04:43:55','2016-11-16 04:43:55'),(13,'34brfntg','fgnfn','fdhgmnhgm','2016-11-16 07:44:12','2016-11-16 07:44:12'),(15,'bfvn','nfgsnfgn','fdgnfdgn','2016-11-16 07:49:27','2016-11-16 07:49:27'),(16,'adad','adfadf','adfadfdsa','2016-11-16 08:05:39','2016-11-16 08:05:39');

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `files` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values ('2016_11_14_042200_create_taggable_table',1),('2016_11_14_044554_create_booktests_table',2);

/*Table structure for table `persistences` */

DROP TABLE IF EXISTS `persistences`;

CREATE TABLE `persistences` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) DEFAULT NULL,
  `code` varchar(512) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `persistences` */

insert  into `persistences`(`id`,`user_id`,`code`,`updated_at`,`created_at`) values (3,1,'SKpo5hbwBTt2JOeJi8vPIfipWu5HJ3SH','2016-11-14 04:37:00','2016-11-14 04:37:00'),(5,1,'jdfAqhpkvoZM7hjZIvEKhIIMzTE2jqr4','2016-11-16 08:05:08','2016-11-16 08:05:08'),(7,1,'k3OVFMAOGhLwvQSa3xT5jl6uy1v2qG1E','2016-11-16 09:41:05','2016-11-16 09:41:05'),(9,2,'gAqfsNLekVQFMJcNk234ZwyohTK42AE7','2016-11-16 09:56:01','2016-11-16 09:56:01'),(12,2,'G6m0EzeXLcJtdDvoZ245IghBcRkkXHCl','2016-11-16 09:56:56','2016-11-16 09:56:56');

/*Table structure for table `role_users` */

DROP TABLE IF EXISTS `role_users`;

CREATE TABLE `role_users` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `role_id` int(5) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `role_users` */

insert  into `role_users`(`id`,`updated_at`,`created_at`,`role_id`,`user_id`) values (1,'2016-11-14 04:25:39','2016-11-14 04:25:39',1,1),(2,'2016-11-16 09:42:17','2016-11-16 09:42:17',1,2);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `permissions` varchar(512) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`slug`,`permissions`,`updated_at`,`created_at`) values (1,'Admin','admin','{\"admin\":1}','2016-11-14 04:25:39','2016-11-14 04:25:39'),(2,'User','user',NULL,'2016-11-14 04:25:39','2016-11-14 04:25:39');

/*Table structure for table `taggable_taggables` */

DROP TABLE IF EXISTS `taggable_taggables`;

CREATE TABLE `taggable_taggables` (
  `tag_id` int(10) unsigned NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `taggable_taggables` */

insert  into `taggable_taggables`(`tag_id`,`taggable_id`,`taggable_type`,`created_at`,`updated_at`) values (1,1,'App\\Blog','2016-11-16 09:30:40','2016-11-16 09:30:40'),(2,1,'App\\Blog','2016-11-16 09:30:41','2016-11-16 09:30:41'),(3,1,'App\\Blog','2016-11-16 09:30:41','2016-11-16 09:30:41'),(1,2,'App\\Blog','2016-11-16 09:34:20','2016-11-16 09:34:20'),(4,2,'App\\Blog','2016-11-16 09:34:21','2016-11-16 09:34:21'),(5,3,'App\\Blog','2016-11-16 09:35:29','2016-11-16 09:35:29'),(6,3,'App\\Blog','2016-11-16 09:35:29','2016-11-16 09:35:29'),(5,4,'App\\Blog','2016-11-16 09:36:10','2016-11-16 09:36:10'),(7,4,'App\\Blog','2016-11-16 09:36:10','2016-11-16 09:36:10');

/*Table structure for table `taggable_tags` */

DROP TABLE IF EXISTS `taggable_tags`;

CREATE TABLE `taggable_tags` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `normalized` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `taggable_tags` */

insert  into `taggable_tags`(`tag_id`,`name`,`normalized`,`created_at`,`updated_at`) values (1,'aa','aa','2016-11-16 09:30:40','2016-11-16 09:30:40'),(2,'b','b','2016-11-16 09:30:41','2016-11-16 09:30:41'),(3,'cc','cc','2016-11-16 09:30:41','2016-11-16 09:30:41'),(4,'sdf','sdf','2016-11-16 09:34:21','2016-11-16 09:34:21'),(5,'tag1','tag1','2016-11-16 09:35:29','2016-11-16 09:35:29'),(6,'tag2','tag2','2016-11-16 09:35:29','2016-11-16 09:35:29'),(7,'tag3','tag3','2016-11-16 09:36:10','2016-11-16 09:36:10');

/*Table structure for table `tasks` */

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `finished` tinyint(4) NOT NULL DEFAULT '0',
  `task_description` text COLLATE utf8_unicode_ci NOT NULL,
  `task_deadline` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tasks` */

/*Table structure for table `throttle` */

DROP TABLE IF EXISTS `throttle`;

CREATE TABLE `throttle` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ip` varchar(25) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `throttle` */

insert  into `throttle`(`id`,`type`,`created_at`,`updated_at`,`ip`,`user_id`) values (1,'global','2016-11-16 09:52:01','2016-11-16 09:52:01',NULL,NULL),(2,'ip','2016-11-16 09:52:01','2016-11-16 09:52:01','::1',NULL),(3,'user','2016-11-16 09:52:01','2016-11-16 09:52:01',NULL,1),(4,'global','2016-11-16 09:56:45','2016-11-16 09:56:45',NULL,NULL),(5,'ip','2016-11-16 09:56:46','2016-11-16 09:56:46','::1',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `bio` text,
  `gender` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`updated_at`,`created_at`,`deleted_at`,`bio`,`gender`,`dob`,`pic`,`country`,`state`,`city`,`address`,`postal`,`first_name`,`last_name`,`last_login`,`username`) values (1,NULL,'admin@admin.com','$2y$10$Pc6YFYUlOm/kTZOtbnMTN.udk/MMqOv3neNLtOQDMbFTcm2xQJaky','2016-11-16 09:56:32','2016-11-14 04:25:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Le','Thuyet','2016-11-16 09:56:32','admin'),(2,NULL,'longdq@gmail.com','$2y$10$KlGsXUYi8iB3haMCajasP.OTUV8KHbRxkm81uZr2QXmTOqzY/paqy','2016-11-16 09:56:56','2016-11-16 09:42:16',NULL,'sadfasf','male','0000-00-00',NULL,'VN','State','City','Address','10000','Dang ','Long','2016-11-16 09:56:56','longdq');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
