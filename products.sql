-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 03 2015 г., 23:02
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `db_bestshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ves` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dlina` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sostav` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show_hide` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category`, `url_picture`, `name`, `price`, `ves`, `dlina`, `sostav`, `show_hide`) VALUES
(1, 'pryazha', 'media/picture_tovary/1.jpg', 'SOFTY(СОФТИ)', 'ЦЕНА 19000 РУБ', 'вес - 50гр.', 'длина - 115м.', 'состав - 100% микрополиэстер', 'show'),
(2, 'pryazha', 'media/picture_tovary/2.jpg', 'SEKERIM(ШЕКЕРИМ)', 'ЦЕНА 30200 РУБ', 'вес - 100гр.', 'длина - 350м.', 'состав - 100% акрил', 'show'),
(3, 'pryazha', 'media/picture_tovary/3.jpg', 'ŞEKERIM 0-4 (ШЕКЕРИМ)', ' цена 30 500 руб ', 'Вес = 100г', 'Длина = 350м', 'Состав = 90% акрил - 10% полиамид', 'show'),
(4, 'pryazha', 'media/picture_tovary/4.jpg', 'ŞEKERIM JUNIOR (ШЕКЕРИМ ДЖУНИОР)', ' цена 32 700 руб ', 'Вес = 100г', 'Длина = 350м', 'Состав = 90% акрил - 10% полиамид', 'show'),
(5, 'pryazha', 'media/picture_tovary/5.jpg', 'HAPPY (ХЭППИ)', ' цена 39 900 руб ', 'Вес: 100г,', 'длина: 175м,', 'состав: 100% микро полиэстер', 'show'),
(6, 'pryazha', 'media/picture_tovary/6.jpg', 'SAMBA (САМБА)', ' цена 26 100 руб ', 'Вес: 100г,', 'длина: 150м,', 'состав: 100% полиэстер.', 'show'),
(7, 'pryazha', 'media/picture_tovary/7.jpg', 'BABY WOOL (БЭЙБИ ВУЛ)', ' цена 21 700 руб ', 'Вес - 50г,', 'длина 200 м,', 'состав - 40% шерсть, 20% кашемир, 40% акрил', 'show'),
(8, 'pryazha', 'media/picture_tovary/8.jpg', 'BIANCA BABYLUX (БЬЯНКА БЭЙБИЛЮКС)', ' цена 22 500 руб ', 'Вес - 50 г,', 'длина - 150 м,', 'состав - 45 % детская шерсть, 55 % премиум акрил', 'show'),
(9, 'pryazha', 'media/picture_tovary/9.jpg', 'BELLA BABY (БЕЛЛА БЭЙБИ)', ' цена 19 700 руб ', 'Вес = 50 г', 'Длина = 190 м;', 'Состав - 65% Премиум-акрил - 35% Полиамид', 'show'),
(10, 'pryazha', 'media/picture_tovary/10.jpg', 'BABY COTTON (БЭЙБИ КОТТОН)', ' цена 19 700 руб ', 'Вес = 50 г', 'длина - 225 м,', 'состав - 60% хлопок, 40% полиакрил', 'show'),
(11, 'pryazha', 'media/picture_tovary/11.jpg', 'ПЛЮШКА', ' цена 38 900 руб ', 'Вес = 100 г', 'длина = 180 м,', 'состав - 10% хлопок - 90% полиэстер', 'show'),
(12, 'pryazha', 'media/picture_tovary/12.jpg', 'BABY (БЭЙБИ)', ' цена 37 400 руб ', 'Вес = 50 г', 'длина: 150м, ', 'состав: 100% акрил.', 'show'),
(13, 'pryazha', 'media/picture_tovary/13.jpg', 'ELISEE LINE (ЭЛИСЕ ЛАЙН)', ' цена 16 900 руб ', 'Вес = 50 г', 'длина: 150м, ', 'состав: 100% акрил.', 'show');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
