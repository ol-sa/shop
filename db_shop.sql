-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 22 2015 г., 09:42
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.4.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `db_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(2, 'Детская', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Фантазийная', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Акрил', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Ангора и мохер', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Вискоза', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Люрекс', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Нейлон', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Паетки', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Полиамид', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Полиэстер', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Хлопок', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Шерсть и кашемир', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Шёлк', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_03_22_171439_create_products_table', 1),
('2015_03_22_171745_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(256) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `body`, `phone`) VALUES
(8, 'a:3:{i:1;i:2;i:5;i:3;i:8;i:8;}', ''),
(9, '', '898989'),
(10, 'a:3:{i:1;i:2;i:5;i:3;i:8;i:8;}', ''),
(11, '', '222222222'),
(12, 'a:3:{i:1;i:8;i:5;i:3;i:8;i:8;}', ''),
(13, '', '7888'),
(14, 'a:4:{i:1;i:8;i:5;i:3;i:8;i:8;i:2;i:5;}', ''),
(15, '', '7888888');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` int(10) NOT NULL,
  `url_picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ves` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dlina` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sostav` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show_hide` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=109 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category`, `url_picture`, `name`, `price`, `ves`, `dlina`, `sostav`, `show_hide`) VALUES
(1, 2, 'media/picture_tovary/1.jpg', 'SOFTY', '19000', '50', '115', '100% Микрополиэстер', 1),
(2, 2, 'media/picture_tovary/2.jpg', 'SEKERIM', '30200', '100', '350', '100% акрил', 1),
(3, 2, 'media/picture_tovary/3.jpg', 'SEKERIM 0-4', '30500', '100', '350', '90% акрил - 10% полиамид', 1),
(4, 2, 'media/picture_tovary/4.jpg', 'SEKERIM JUNIOR ', '22500', '100', '350', '90% акрил - 10% полиамид', 1),
(5, 2, 'media/picture_tovary/5.jpg', 'HAPPY', '39900', '100', '175', '100% микро полиэстер', 1),
(6, 2, 'media/picture_tovary/6.jpg', 'SAMBA', '26100', '100', '150', '100% полиэстер', 1),
(7, 2, 'media/picture_tovary/7.jpg', 'BABY WOOL', '21700', '50', '200', '40% шерсть, 20% кашемир', 1),
(8, 2, 'media/picture_tovary/8.jpg', 'BIANCA BABYLUX ', '22500', '50', '150', '45 % детская шерсть, 55 % акрил', 1),
(9, 2, 'media/picture_tovary/9.jpg', 'BELLA BABY', '19700', '50', '190', '65% акрил - 35% Полиамид', 1),
(10, 2, 'media/picture_tovary/10.jpg', 'BABY COTTON', '19700', '50', '225', '60% хлопок, 40% полиакрил', 1),
(11, 2, 'media/picture_tovary/11.jpg', 'ПЛЮШКА', '38900', '100', '180', '10% хлопок - 90% полиэстер', 1),
(12, 2, 'media/picture_tovary/12.jpg', 'BABY', '26500', '50', '150', '100% акрил', 1),
(13, 2, 'media/picture_tovary/13.jpg', 'ELISEE LINE', '16900', '50', '150', '100% акрил', 1),
(14, 3, 'media/picture_tovary/14.jpg', 'МАЛИНКА', '40600', '100', '150', '75%-вискоза 25%-полиэстер', 1),
(15, 3, 'media/picture_tovary/15.jpg', 'BRIGHT', '35700', '90', '340', '80% полиамид - 20% металлик', 1),
(16, 3, 'media/picture_tovary/16.jpg', 'CHRISTMAS', '17200', '50', '142', '100% полиамид', 1),
(17, 3, 'media/picture_tovary/17.jpg', 'HAPPY', '39900', '100', '175', '100% микро полиэстер', 1),
(18, 3, 'media/picture_tovary/18.jpg', 'SAMBA', '26100', '100', '150', '100% полиэстер', 1),
(19, 3, 'media/picture_tovary/19.jpg', 'TANGO', '51000', '100', '80', '100% полиамид', 1),
(20, 3, 'media/picture_tovary/20.jpg', 'FURLANA', '50700', '100', '40', '45 % шерсть, 45 % акрил', 1),
(21, 3, 'media/picture_tovary/21.jpg', 'ПЛЮШКА', '38900', '100', '180', '10% хлопок - 90% полиэстер', 1),
(22, 3, 'media/picture_tovary/22.jpg', 'DANTELA', '41300', '100', '24', '16% полиамид - 84% акрил', 1),
(23, 3, 'media/picture_tovary/23.jpg', 'FLOWER', '50700', '100', '80', '70% акрил - 25% шерсть', 1),
(24, 4, 'media/picture_tovary/24.jpg', 'SAL SIM', '34300', '100', '460', '95% акрил - 5% металлик', 1),
(25, 4, 'media/picture_tovary/25.jpg', 'SEKERIM', '30200', '100', '350', '100% акрил', 1),
(26, 4, 'media/picture_tovary/26.jpg', 'SEKERIM 0-4', '30500', '100', '350', ' 90% акрил - 10% ', 1),
(27, 4, 'media/picture_tovary/27.jpg', 'SEKERIM JUNIOR', '30200', '100', '350', ' 90% акрил - 10% полиамид', 1),
(28, 4, 'media/picture_tovary/28.jpg', 'SAL ABIYE', '47300', '100', '410', '10% полиэстер - 80% акрил', 1),
(29, 4, 'media/picture_tovary/29.jpg', 'MERINO DE LUXE', '36800', '100', '280', '50% шерсть, 50% акрил', 1),
(30, 4, 'media/picture_tovary/30.jpg', 'MERINO BULKY', '36700', '100', '100', '30% шерсть, 70% акрил', 1),
(31, 4, 'media/picture_tovary/31.jpg', 'BABY WOOL', '21700', '50', '200', '40% шерсть, 20% кашемир', 1),
(32, 4, 'media/picture_tovary/32.jpg', 'CRAZY COLOR', '40700', '100', '260', '25% шерсть - 75% акрил', 1),
(33, 4, 'media/picture_tovary/33.jpg', 'FURLANA', '50700', '100', '40', ' 45 % шерсть, 45 % акрил', 1),
(34, 4, 'media/picture_tovary/34.jpg', 'BIANCA BABYLUX ', '22500', '50', '150', ' 45 % детская шерсть, 55 % акрил', 1),
(35, 4, 'media/picture_tovary/35.jpg', 'SHETLAND CHUNKY ', '41700', '100', '150', '50% ВИРЖИН ШЕРСТЬ 50% акрил', 1),
(36, 4, 'media/picture_tovary/36.jpg', 'BELLA BABY', '19700', '50', '190', '65% Премиум-акрил - 35% Полиамид', 1),
(37, 4, 'media/picture_tovary/37.jpg', 'BABY', '23600', '50', '150', '100% акрил', 1),
(38, 4, 'media/picture_tovary/38.jpg', 'ETAMIN', '10000', '30', '180', '100% акрил', 1),
(39, 4, 'media/picture_tovary/39.jpg', 'DANTELA', '41300', '100', '24', '16% полиамид - 84% акрил', 1),
(40, 4, 'media/picture_tovary/40.jpg', 'FLOWER', '50700', '100', '80', '70% акрил - 25% шерсть', 1),
(41, 4, 'media/picture_tovary/41.jpg', 'ELISEE LINE', '16900', '50', '150', '100% акрил', 1),
(42, 4, 'media/picture_tovary/42.jpg', 'COTTON SOFT', '36600', '100', '600', '55% хлопок, 45% акрил', 1),
(43, 4, 'media/picture_tovary/43.jpg', 'CITY', '39400', '100', '450', '55% хлопок, 45% акрил', 1),
(44, 5, 'media/picture_tovary/44.jpg', 'SNOW LEOPARD', '43200', '100', '180', '30% мохер - 60% австралийский кашемир', 1),
(45, 5, 'media/picture_tovary/45.jpg', 'ANGORA GOLD', '36000', '100', '500', '10% шерсть - 75% акрил', 1),
(46, 5, 'media/picture_tovary/46.jpg', 'ANGORA GOLD', '32900', '100', '550', '10% шерсть - 80% акрил', 1),
(47, 5, 'media/picture_tovary/47.jpg', 'ANGORA RAM', '33700', '100', '500', '40% мохер - 60% акрил', 1),
(48, 5, 'media/picture_tovary/48.jpg', 'ANGORA DE LUXE ', '49900', '100', '520', '70% мохер - 30% акрил', 1),
(49, 5, 'media/picture_tovary/49.jpg', 'MOHAIR CLASSIC', '48800', '100', '200', '70% мохер - 30% акрил', 1),
(50, 5, 'media/picture_tovary/50.jpg', 'ANGORA', '33200', '100', '500', '40% ангора, 60% акрил', 1),
(51, 5, 'media/picture_tovary/51.jpg', 'ANGORA GOLD 70 ', '39400', '100', '550', '70% ангора, 30% акрил', 1),
(52, 5, 'media/picture_tovary/52.jpg', 'ANGORA MULTICOLOR ', '31800', '100', '500', '40 % ангора, 60 % акрил', 1),
(53, 5, 'media/picture_tovary/53.jpg', 'KID MOHAIR', '35600', '25', '230', '70% кидмохер, 30% акрил', 1),
(54, 6, 'media/picture_tovary/54.jpg', 'МАЛИНКА', '40600', '100', '150', '75%-вискоза 25%-полиэстер', 1),
(55, 6, 'media/picture_tovary/55.jpg', 'АРЛЕКИНО', '35400', '100', '320', '50%-искусственный шелк 35%-вискоза', 1),
(56, 6, 'media/picture_tovary/56.jpg', 'BOOM-COTTON', '43200', '50', '250', '70% хлопок, 30% вискоза', 1),
(57, 7, 'media/picture_tovary/57.jpg', 'SAL SIM', '34300', '100', '460', '95% акрил - 5% металлик', 1),
(58, 7, 'media/picture_tovary/58.jpg', 'ANGORA GOLD', '36000', '100', '500', '10% шерсть - 75% акрил', 1),
(59, 7, 'media/picture_tovary/59.jpg', 'SAL ABIYE', '47300', '100', '410', '10% полиэстер - 80% акрил', 1),
(60, 7, 'media/picture_tovary/60.jpg', 'BRIGHT', '35700', '90', '340', '80% полиамид - 20% металлик', 1),
(61, 8, 'media/picture_tovary/61.jpg', 'ECOLANA BOUCLE ', '18000', '50', '115', '88% шерсть - 12% нейлон', 1),
(62, 9, 'media/picture_tovary/62.jpg', 'SAL ABIYE', '47300', '100', '410', '10% полиэстер - 80% акрил', 1),
(63, 10, 'media/picture_tovary/63.jpg', 'SEKERIM 0-4', '30500', '100', '350', '90% акрил - 10% полиамид', 1),
(64, 10, 'media/picture_tovary/64.jpg', 'SEKERIM JUNIOR ', '32700', '100', '350', '90% акрил - 10% полиамид', 1),
(65, 10, 'media/picture_tovary/65.jpg', 'BRIGHT', '35700', '90', '340', '80% полиамид - 20% металлик', 1),
(66, 10, 'media/picture_tovary/66.jpg', 'CHRISTMAS', '17200', '50', '142', '100% полиамид', 1),
(67, 10, 'media/picture_tovary/67.jpg', 'TANGO', '51000', '100', '80', '100% полиамид', 1),
(68, 10, 'media/picture_tovary/68.jpg', 'ARTIC', '23500', '50', '300', ' 48% мериносовая шерсть, 25% волоконный  полиамид', 1),
(69, 10, 'media/picture_tovary/69.jpg', 'FURLANA', '50700', '100', '40', '45 % шерсть, 45 % акрил', 1),
(70, 10, 'media/picture_tovary/70.jpg', 'BELLA BABY', '19700', '50', '190', '65% Премиум-акрил - 35% Полиамид', 1),
(71, 10, 'media/picture_tovary/71.jpg', 'DANTELA', '41300', '100', '24', '16% полиамид - 84% акрил', 1),
(72, 10, 'media/picture_tovary/72.jpg', 'FLOWER', '50700', '100', '80', '70% акрил - 25% шерсть', 1),
(73, 11, 'media/picture_tovary/73.jpg', 'SOFTY', '19000', '50', '115', '100% Микрополиэстер', 1),
(74, 11, 'media/picture_tovary/74.jpg', 'SAL ABIYE', '47300', '100', '410', '10% полиэстер - 80% акрил', 1),
(75, 11, 'media/picture_tovary/75.jpg', 'МАЛИНКА', '40600', '100', '150', '75%-вискоза 25%-полиэстер', 1),
(76, 11, 'media/picture_tovary/76.jpg', 'HAPPY', '39900', '100', '175', '100% микро полиэстер', 1),
(77, 11, 'media/picture_tovary/77.jpg', 'SAMBA', '26100', '100', '150', '100% полиэстер', 1),
(78, 11, 'media/picture_tovary/78.jpg', 'ПЛЮШКА', '38900', '100', '180', '10% хлопок - 90% полиэстер', 1),
(79, 12, 'media/picture_tovary/79.jpg', 'BABY COTTON', '19700', '50', '225', '60% хлопок, 40% полиакрил', 1),
(80, 12, 'media/picture_tovary/80.jpg', 'ПЛЮШКА', '38900', '100', '180', '10% хлопок - 90% полиэстер', 1),
(81, 12, 'media/picture_tovary/81.jpg', 'BOOM-COTTON', '35600', '50', '250', '70% хлопок, 30% вискоза', 1),
(82, 12, 'media/picture_tovary/82.jpg', 'COTONAX', '41900', '100', '850', '50% хлопок, 50% акрил', 1),
(83, 12, 'media/picture_tovary/83.jpg', 'COTTON SOFT', '36600', '100', '600', '55% хлопок, 45% акрил', 1),
(84, 12, 'media/picture_tovary/84.jpg', 'BEGONIA', '24400', '50', '169', '100% мерсеризированный хлопок', 1),
(85, 12, 'media/picture_tovary/85.jpg', 'CITY', '39400', '100', '450', '55% хлопок, 45% акрил', 1),
(86, 12, 'media/picture_tovary/86.jpg', 'JEANS', '19700', '50', '160', '55% хлопок, 45% акрил', 1),
(87, 13, 'media/picture_tovary/87.jpg', 'SNOW LEOPARD', '43200', '100', '180', '30% мохер - 60% австралийский кашемир', 1),
(88, 13, 'media/picture_tovary/88.jpg', 'ANGORA GOLD SIMLI', '36000', '100', '500', '10% шерсть - 75% акрил', 1),
(89, 13, 'media/picture_tovary/89.jpg', 'ANGORA GOLD', '32900', '100', '550', '10% шерсть - 80% акрил', 1),
(90, 13, 'media/picture_tovary/90.jpg', 'LANAGOLD 800 ', '40000', '100', '800', '49% шерсть - 51% акрил', 1),
(91, 13, 'media/picture_tovary/91.jpg', 'LANAGOLD', '37700', '100', '240', '49% шерсть - 51% акрил', 1),
(92, 13, 'media/picture_tovary/92.jpg', 'LANAGOLD FINE ', '37700', '100', '390', '49% шерсть - 51% акрил', 1),
(93, 13, 'media/picture_tovary/93.jpg', 'ЛАЙКА', '37500', '100', '300', '75%-меринос 25%-шерсть собаки', 1),
(94, 13, 'media/picture_tovary/94.jpg', 'MERINO DE LUXE', '36800', '100', '280', '50% шерсть, 50% акрил', 1),
(95, 13, 'media/picture_tovary/95.jpg', 'MERINO BULKY', '36700', '100', '100', '30% шерсть, 70% акрил', 1),
(96, 13, 'media/picture_tovary/96.jpg', 'ARTIC', '23500', '50', '300', ' 48% мериносовая шерсть, 27% полиакрил.', 1),
(97, 13, 'media/picture_tovary/97.jpg', 'BABY WOOL', '21700', '50', '200', '40% шерсть, 20% кашемир', 1),
(98, 13, 'media/picture_tovary/98.jpg', 'CRAZY COLOR', '40700', '100', '260', '25% шерсть - 75% акрил', 1),
(99, 13, 'media/picture_tovary/99.jpg', 'FURLANA', '50700', '100', '40', '45 % шерсть, 45 % акрил', 1),
(100, 13, 'media/picture_tovary/100.jpg', 'BIANCA BABYLUX ', '22500', '50', '150', '45 % детская шерсть, 55 % премиум акрил', 1),
(101, 13, 'media/picture_tovary/101.jpg', 'SHETLAND CHUNKY ', '41700', '100', '150', '50% ВИРЖИН ШЕРСТЬ 50% акрил', 1),
(102, 13, 'media/picture_tovary/102.jpg', 'KANGAROO WOOL ', '43900', '100', '300', '95%-шерсть (меринос) 5%- кенгуру', 1),
(103, 13, 'media/picture_tovary/103.jpg', 'SOFIT', '41900', '100', '380', '45%-шерсть 55%-шелк искусственный', 1),
(104, 13, 'media/picture_tovary/104.jpg', 'АРЛЕКИНО', '35400', '100', '320', '50%-искусственный шелк 35%-вискоза', 1),
(105, 13, 'media/picture_tovary/105.jpg', 'ECOLANA BOUCLE ', '18000', '50', '115', '88% шерсть - 12% нейлон', 1),
(106, 13, 'media/picture_tovary/106.jpg', 'FLOWER', '50700', '100', '80', '70% акрил - 25% шерсть', 1),
(107, 14, 'media/picture_tovary/107.jpg', 'SOFIT', '41900', '100', '380', ' 45%-шерсть 55%-шелк искусственный', 1),
(108, 14, 'media/picture_tovary/108.jpg', 'АРЛЕКИНО', '35400', '100', '320', ' 50%-искусственный шелк 35%-вискоза', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isadmin` int(11) NOT NULL DEFAULT '1',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `isadmin`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'aa', 2, 'aa@aa.aa', '$2y$10$qheRAcJ7dbvxvilW4tYVzuDmSzC7iG5duPDmcBYHLQ7tsGnoEKyKS', 'EoRq73HNhQ60KYeLG6DdMZEcYvuA669jrGJ0ph3CuGxOwvSKvzT6464Y82q8', '2015-03-22 17:43:04', '2015-05-21 20:05:52'),
(2, 'bb', 1, 'bb@bb.bb', '$2y$10$7.aynoO2KQ/RfJ8LpWOXe.M9RqauTNTOgcPysKXNCk/3e/2eAJkvO', 'xIjpdBwSbVMqz5oidIGhMKM4h3oGq6RF265guQxCCPDH1nq5x1x5s4HGlMmM', '2015-03-25 09:25:38', '2015-03-25 09:34:09');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
