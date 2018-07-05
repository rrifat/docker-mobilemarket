-- Adminer 4.3.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1,	'admin',	'123');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `cat_id` int(32) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1,	'iPhone'),
(2,	'Xaomi');

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customer_id` int(32) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_number` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_number`, `customer_address`, `created_at`) VALUES
(1,	'wasim',	'wasim@technoteams.com',	'1234',	'01673425747',	'House-3/5',	'2018-03-10'),
(2,	'Wasim Firoz',	'mdfiroz.fb@gmail.com',	'1234',	'01673425747',	'House',	'2017-04-20'),
(6,	'Wasim Firoz',	'admin@technoteams.com',	'123',	'01673425747',	'House-3/5',	'2017-01-15'),
(1521,	'Rifat Alam',	'rrifat.alam.93@gmail.com',	'123456',	'93812494792834',	'House-408/21,Shimultaly,Chayabagh',	'2019-01-15'),
(1522,	'Test Two',	'two@test.com',	'231231',	'41234341',	'fkajskljaljk',	'2019-01-15');

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `invoice_id` int(32) NOT NULL AUTO_INCREMENT,
  `customer_id` int(32) NOT NULL,
  `shipping_status` int(32) NOT NULL,
  `invoice_dates` date NOT NULL,
  `invoice_time` time(6) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `invoice` (`invoice_id`, `customer_id`, `shipping_status`, `invoice_dates`, `invoice_time`) VALUES
(1,	0,	1,	'2018-05-17',	'22:15:32.000000'),
(2,	0,	1,	'2017-05-17',	'22:16:13.000000'),
(3,	0,	1,	'2018-05-17',	'22:16:32.000000'),
(4,	0,	1,	'2018-05-17',	'22:20:34.000000'),
(5,	0,	1,	'2019-05-17',	'22:21:07.000000'),
(6,	0,	1,	'2018-05-17',	'22:21:48.000000'),
(7,	0,	1,	'2018-05-17',	'22:22:17.000000'),
(8,	0,	1,	'2019-05-17',	'22:23:22.000000'),
(9,	0,	1,	'2018-05-17',	'22:24:11.000000'),
(10,	0,	1,	'2017-05-18',	'06:32:18.000000'),
(11,	0,	1,	'2018-05-18',	'06:32:46.000000'),
(12,	0,	1,	'2018-05-18',	'06:34:34.000000'),
(13,	0,	1,	'2018-05-18',	'06:34:34.000000'),
(14,	0,	1,	'2018-05-18',	'06:34:35.000000'),
(15,	0,	1,	'2018-05-18',	'06:34:35.000000'),
(16,	0,	1,	'2018-05-18',	'06:34:35.000000'),
(17,	0,	1,	'2018-05-18',	'06:34:35.000000'),
(18,	0,	1,	'2018-05-18',	'06:34:35.000000'),
(19,	0,	1,	'2018-05-18',	'06:34:36.000000'),
(20,	0,	1,	'2018-05-18',	'06:34:36.000000'),
(21,	0,	1,	'2018-05-18',	'06:34:36.000000'),
(22,	0,	1,	'2018-05-18',	'06:36:19.000000'),
(23,	0,	1,	'2018-05-18',	'06:36:20.000000'),
(24,	0,	1,	'2018-05-18',	'06:36:20.000000'),
(25,	0,	1,	'2018-05-18',	'06:36:20.000000'),
(26,	0,	1,	'2018-05-18',	'06:36:20.000000'),
(27,	0,	1,	'2020-05-18',	'06:36:35.000000');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(32) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(32) NOT NULL,
  `product_id` int(32) NOT NULL,
  `invoice_quantity` int(32) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `orders` (`order_id`, `invoice_id`, `product_id`, `invoice_quantity`, `total_price`) VALUES
(1,	2,	17,	12,	'384'),
(2,	8,	19,	12,	'384'),
(3,	2,	18,	12,	'384'),
(4,	5,	17,	12,	'384'),
(5,	5,	19,	12,	'384'),
(6,	5,	18,	1,	'32'),
(7,	8,	17,	1,	'32'),
(8,	9,	17,	1,	'32'),
(9,	10,	17,	1,	'32'),
(10,	27,	17,	1,	'32');

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` int(32) NOT NULL AUTO_INCREMENT,
  `cat_id` int(32) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_body` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `total_product` int(32) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `products` (`product_id`, `cat_id`, `product_name`, `product_body`, `product_price`, `total_product`, `product_image`, `product_type`) VALUES
(17,	1,	'IPhone X Blue',	'IPhone X Blue',	32,	20,	'7837e8dad2.jpg',	'0'),
(18,	2,	'Product Test One',	'xiaomi xiaomi xiaomi xiaomi xiaomi xiaomi xiaomi xiaomi xiaomi xiaomi xiaomi xiaomi xiaomi xiaomi xiaomi',	345,	10,	'http://localhost/SP-2/mobilemarket/resource/images/productsimages/1043e99f35.png',	'0'),
(19,	2,	'One Plus',	'kdjfslkjflaksdjl',	555,	12,	'e3dd85c3ed.png',	'1'),
(20,	1,	'Test Product Update',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel lectus nibh. Morbi et mauris egestas risus imperdiet volutpat. Pellentesque sed nulla efficitur, placerat est sed, blandit mi. Fusce iaculis lorem ut tellus suscipit, vel aliquam ligula blan',	1020,	14,	'71a1628d98.png',	'0');

-- 2018-06-23 15:01:51
