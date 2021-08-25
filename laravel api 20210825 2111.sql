-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.19-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema laravel_api
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ laravel_api;
USE laravel_api;

--
-- Table structure for table `laravel_api`.`failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_api`.`failed_jobs`
--

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;


--
-- Table structure for table `laravel_api`.`menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_api`.`menus`
--

/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`,`parent_id`,`name`,`link`,`icon`,`created_at`,`updated_at`) VALUES 
 (2,0,'Dashboard','#','nav-icon fas fa-tachometer-alt','2021-07-01 04:25:24','2021-07-01 04:25:24'),
 (5,0,'Manage Menu','/base/pages/viewmenus','nav-icon fas fa-bars','2021-07-01 07:11:41','2021-07-01 13:15:36'),
 (6,2,'Dashboard1','/base/pages/dashboard','nav-icon far fa-circle',NULL,NULL),
 (11,0,'Form','/base/pages/forms','fa-bars fas nav-icon','2021-07-04 13:42:48','2021-07-04 13:44:36'),
 (29,0,'Manage Product','/base/pages/product/viewproducts','fa-bars fas nav-icon','2021-07-06 09:09:58','2021-07-06 09:09:58');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;


--
-- Table structure for table `laravel_api`.`migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_api`.`migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`,`migration`,`batch`) VALUES 
 (1,'2014_10_12_000000_create_users_table',1),
 (2,'2014_10_12_100000_create_password_resets_table',1),
 (3,'2019_08_19_000000_create_failed_jobs_table',1),
 (4,'2021_06_26_110537_create_products_table',1),
 (5,'2021_06_26_141303_create_menus_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


--
-- Table structure for table `laravel_api`.`password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_api`.`password_resets`
--

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


--
-- Table structure for table `laravel_api`.`products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_foreign` (`user_id`),
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_api`.`products`
--

/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`,`user_id`,`name`,`sku`,`price`,`quantity`,`created_at`,`updated_at`) VALUES 
 (3,11,'Sint.','75187',37.15,9,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (4,1,'Earum.','82058',38.57,4,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (5,5,'Et.','86968',60.04,3,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (6,10,'Fugiat.','67790',34.85,1,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (7,6,'Et.','77900',61.26,1,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (8,9,'Et.','29815',68.11,3,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (9,5,'Dolorem.','65953',15.80,1,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (10,1,'Tempore.','70572',85.79,9,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (11,9,'Rem.','37781',44.43,6,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (12,8,'Quos.','91039',82.87,3,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (13,1,'Placeat.','23834',51.17,2,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (14,10,'Omnis.','8074',66.10,6,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (15,5,'Ea.','26365',23.41,4,'2021-06-26 13:06:12','2021-06-26 13:06:12');
INSERT INTO `products` (`id`,`user_id`,`name`,`sku`,`price`,`quantity`,`created_at`,`updated_at`) VALUES 
 (16,2,'Et et.','89816',57.04,5,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (17,8,'Nam quia.','27844',99.73,6,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (18,10,'Debitis.','75601',72.78,3,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (19,10,'Ut quas.','57282',78.23,7,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (20,5,'Pariatur.','69873',99.28,6,'2021-06-26 13:06:12','2021-06-26 13:06:12'),
 (21,6,'Sapiente.','94133',69.34,6,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (22,5,'In sed.','61031',40.00,4,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (23,1,'Odit.','11377',59.69,6,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (24,10,'Sunt.','29093',84.54,6,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (25,10,'Porro non.','64756',46.18,1,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (26,2,'Assumenda.','68787',36.71,9,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (27,9,'Nihil.','40238',24.80,2,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (28,9,'Sit aut.','70097',69.62,2,'2021-06-26 13:06:13','2021-06-26 13:06:13');
INSERT INTO `products` (`id`,`user_id`,`name`,`sku`,`price`,`quantity`,`created_at`,`updated_at`) VALUES 
 (29,8,'Veniam.','19166',69.03,9,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (30,3,'Adipisci.','84661',39.30,7,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (31,2,'In.','66816',90.87,7,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (32,2,'Ea aut.','7607',79.43,2,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (33,6,'Maxime.','50422',46.03,3,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (34,1,'Sapiente.','9745',29.44,2,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (35,7,'Excepturi.','12063',22.38,4,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (36,10,'Et et.','10415',49.70,6,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (37,9,'Facere.','4534',42.96,8,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (38,8,'Ut ex.','50179',85.10,6,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (39,2,'Magni vel.','92606',84.28,3,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (40,5,'Iusto.','2868',18.01,8,'2021-06-26 13:06:13','2021-06-26 13:06:13'),
 (41,4,'Sequi.','92108',9.78,5,'2021-06-26 13:06:14','2021-06-26 13:06:14');
INSERT INTO `products` (`id`,`user_id`,`name`,`sku`,`price`,`quantity`,`created_at`,`updated_at`) VALUES 
 (42,2,'Sint.','99663',14.82,4,'2021-06-26 13:06:14','2021-06-26 13:06:14'),
 (43,5,'Vel est.','43452',28.65,2,'2021-06-26 13:06:14','2021-06-26 13:06:14'),
 (44,3,'Et quia.','81858',57.59,2,'2021-06-26 13:06:14','2021-06-26 13:06:14'),
 (45,1,'Magni.','24501',39.56,5,'2021-06-26 13:06:14','2021-06-26 13:06:14'),
 (46,9,'Quos.','3712',50.86,3,'2021-06-26 13:06:14','2021-06-26 13:06:14'),
 (47,1,'Sed est.','65347',2.29,9,'2021-06-26 13:06:14','2021-06-26 13:06:14'),
 (48,3,'Ad.','50299',48.90,3,'2021-06-26 13:06:14','2021-06-26 13:06:14'),
 (49,8,'Animi.','92269',50.23,2,'2021-06-26 13:06:14','2021-06-26 13:06:14'),
 (50,4,'Et dolore.','4962',67.28,5,'2021-06-26 13:06:14','2021-06-26 13:06:14'),
 (55,20,'rtyrytu','345',546546.00,5,'2021-07-18 07:11:21','2021-07-18 07:11:21'),
 (56,20,'rtyrytu','345',546546.00,2,'2021-07-18 07:19:21','2021-07-18 07:19:21'),
 (57,20,'rtyrytu','345',546546.00,6,'2021-07-18 07:21:14','2021-07-18 07:22:56');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;


--
-- Table structure for table `laravel_api`.`users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_api`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES 
 (1,'Rosemary Yundt','osborne.king@example.com','2021-06-26 13:02:23','$2y$10$km2BlGgz7WTPMfCR2o/Z0.gRxeyFYOpFbMUoVY9jN1DfjPJ95f7Bu','NSab2G5Adq','2021-06-26 13:02:26','2021-06-26 13:02:26'),
 (2,'Katelin Waelchi','roy17@example.org','2021-06-26 13:02:23','$2y$10$fSafU8dvYN5WZ6Uo69bHr.BaKMym8fQhpccV9y6iCZ20Bk9.apEdu','ktD9Wt0NHi','2021-06-26 13:02:26','2021-06-26 13:02:26'),
 (3,'Dr. Vincenza Wolf','isidro83@example.org','2021-06-26 13:02:23','$2y$10$vGsVzS.8tH3C0Q43HDYlJOAR/L2kZOhKxKLQVF0o5qH3PKd5NQgWm','Fv0tslwpHI','2021-06-26 13:02:26','2021-06-26 13:02:26'),
 (4,'Brisa Kulas','horacio44@example.net','2021-06-26 13:02:24','$2y$10$S0KmHWeAMuKx0oGtN1XIdelP18u2hIIxJFz0PpEbfahdUy4NJSilu','Kz0Vr3ZQhf','2021-06-26 13:02:26','2021-06-26 13:02:26'),
 (5,'Zelma Goodwin','okeefe.drake@example.com','2021-06-26 13:02:24','$2y$10$9QwomeiS7yGcu2yPceGng.mjqBqKaOt3HXVVNiJZQG732Vz.HGGJ6','xLKZc2mgI2','2021-06-26 13:02:26','2021-06-26 13:02:26'),
 (6,'Mr. Mitchel Boyle','dion72@example.net','2021-06-26 13:02:24','$2y$10$cK.iUmXeSoVEUTwbTM52t.76pyoa1sj4EiWvjRF5HmSoHl0.nr1uG','a7GLcak7Qm','2021-06-26 13:02:26','2021-06-26 13:02:26');
INSERT INTO `users` (`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES 
 (7,'Kyleigh Jacobi','nelda70@example.net','2021-06-26 13:02:25','$2y$10$qayFdV8.P/8qhJQhiLpUeuat/4HHo8ZCkywex12I2ki1C.Dv15y2i','5HDDhbaejN','2021-06-26 13:02:26','2021-06-26 13:02:26'),
 (8,'Prof. Angie Parisian','kihn.gabe@example.org','2021-06-26 13:02:25','$2y$10$K.eyMuZIAZf7b.yJyUm7we7EmxzCnVcLghXatMI7VpC/8t1F0W9rS','BV69EBQk6y','2021-06-26 13:02:26','2021-06-26 13:02:26'),
 (9,'Edmund Reilly Jr.','johns.marianne@example.com','2021-06-26 13:02:25','$2y$10$tMq5xz6Lw6vawsh42XebAOge716KJ4XutsowIZqOeJYiAyGa6WYxy','EQO1TfVjPS','2021-06-26 13:02:26','2021-06-26 13:02:26'),
 (10,'Joseph Jenkins Jr.','mbartell@example.org','2021-06-26 13:02:26','$2y$10$wRpMuZKy2j73xxVChtPhHOdOqLaOgi0HibLRKArmjDrbBi0VzS/2W','Xp3UYmGfMk','2021-06-26 13:02:26','2021-06-26 13:02:26'),
 (11,'Abhiram Samantara','ram3792@gmail.com',NULL,'$2y$10$sPnS0LpyKGizXzzR49GHTeKiJUwdu7IH8Rm7y/yxC/bUYnz4hcBye',NULL,'2021-06-26 13:52:50','2021-06-26 13:52:50'),
 (18,'Parbati Samantara','parbati@gmail.com',NULL,'$2y$10$r/nh2GwPopfYKhdiAat3MuvPN.W48hJuKy7qFyjps8b9udZZpVCVq',NULL,'2021-06-29 07:34:43','2021-06-29 07:34:43');
INSERT INTO `users` (`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES 
 (20,'Lizalin Rout','er.liza2010@gmail.com',NULL,'$2y$10$JRALBwzWL6y66f.vHuE9buSsIZgxGdSlWOYaL4t6daqtHjhrKGA8C',NULL,'2021-06-29 08:10:01','2021-06-29 08:10:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
