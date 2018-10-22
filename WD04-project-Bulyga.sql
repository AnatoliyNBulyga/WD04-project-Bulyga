-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 22 2018 г., 23:57
-- Версия сервера: 5.5.45-log
-- Версия PHP: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `WD04-project-Bulyga`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Егор Казаков', 'Я - веб разработчик');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(2, 'Путешествия'),
(6, 'Покупки'),
(7, 'Заметки');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `author_id` int(11) unsigned DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` int(11) unsigned DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_posts_author` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`, `cat`, `update_time`) VALUES
(18, 'Интересная задачка по программированию', 'Перебрать все целые числа на заданном отрезке с заданным шагом, не используя операторы ветвления (if, if-else, switch-case…), операторы цикла (for, while, do-while…) и операторы безусловного перехода (goto, break…). Также нельзя генерировать и выполнять код во время выполнения программы, то есть в JavaScript, например, вам нельзя использовать функцию eval.\r\n\r\nЯзык программирования можете взять любой. Я выбрал JavaScript.\r\n\r\nПримеры такого перебора. В данном случае это просто вывод всех перебираемых чисел на консоль. (Реализация функции iterate, естественно, пропущена):', 14, '2018-10-13 12:05:09', '50097351.jpg', '320-50097351.jpg', 2, NULL),
(19, 'Использование CSS3 mask для создания универсальных иконок', 'Решение заключается в использовании CSS3-параметра mask, который позволяет произвольные цвет либо изображение на другое изображение либо на SVG.\r\n\r\nИтак, допустим, что у нас есть 3 блока с разными фонами: красным, темно-серым, и текстурным, а также черная png-иконка, размещенная в этих блоках.', 14, '2018-10-13 12:06:09', '87582702.jpg', '320-87582702.jpg', 6, NULL),
(21, 'Как я провел это лето', 'dsfdfsdfdf', 14, '2018-10-13 12:21:39', NULL, NULL, 2, NULL),
(22, 'ООП в PHP: Исключения', 'Под исключительной ситуацией понимают такую ситуацию возникшею в ходе выполнения кода, когда неясно, что делать дальше или дальнейшее выполнение кода бессмысленно. К примеру, скрипту не удалось установить соединение с базой данных, тогда добавление или выборка данных из неё заведомо бессмысленна. В php в подобных ситуациях часто нативная функция просто возвращает false и выполнение заведомо неработающего кода продолжается. Чтобы избежать подобной ситуации можно проверять значение возвращаемое функцией и, в случае если оно говорит о произошедшей ошибке, выводит предупреждение. Такой подход имеет некоторые недостатки. Во-первых, для изменения действий выполняемых при ошибке пользователю вашего кода придётся редактировать ваш код. Намного лучше было бы позволить ему самому определять механизм обработки этой ошибки. Во-вторых, возвращённое функцией значение не всегда может быть верно расценено, или вовсе остаться непроверяемым, тогда в случае ошибки придётся тратить время на выяснение её причин. В-третьих, не всегда верно стремиться обработать любую проблему прямо в методе или в функции, ведь в таком случае валидация параметров и обработка ошибок может загромоздить изначально достаточно простой код. Намного лучше каким-нибудь образом сообщить пользователю вашего кода, что что-то пошло не так, позволив ему самому решать, что делать в таком случае.', 14, '2018-10-13 12:25:32', '58240966.jpg', '320-58240966.jpg', 2, NULL),
(23, 'Как я провел это лето', 'Прекрасно! Прекрасно!', 14, '2018-10-17 21:41:54', '93954772.jpg', '320-93954772.jpg', 7, '2018-10-19 22:46:19'),
(24, 'Кому на Руси жить хорошо?', 'Интересный вопрос', 14, '2018-10-17 21:42:18', '81661071.jpg', '320-81661071.jpg', 7, '2018-10-19 22:49:25'),
(27, 'Wi-Fi адаптер TP-LINK TL-WN822N', '<h1>Wi-Fi адаптер</h1>\r\n\r\n<p><strong>Адаптер</strong> был куплен на замену<em> китайскому свистку,</em> который в один прекрасный день окончательно достал своей глючностью и периодическими подвисаниями связи. К роутеру это безымянное чудо инженерной мысли из Поднебесной подключалось на скорости 54 Мбит/с, на деле тянуло не более мегабайта в секунду.</p>\r\n\r\n<p>Дума думалась недолго, спустя пару часов серфинга выбор пал на весь такой красивый беленький&nbsp;<strong>TP-LINK TL-WN822N</strong>.</p>\r\n', 14, '2018-10-22 21:34:21', '85940246.jpg', '320-85940246.jpg', 7, '2018-10-22 21:35:07'),
(29, 'Как я провел эту осень', '<p>Прекрасно</p>\r\n', 14, '2018-10-22 23:13:28', '26759643.jpg', '320-26759643.jpg', 6, '2018-10-22 23:15:35');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `firstname`, `secondname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(14, 'info@admin.com', '$2y$10$YFaRdxZtqab.PT32DjFSI.Ph2lGQmURQDXlnm8gQuXfX6M5WXfOCa', 'admin', 'Анатолий', 'Булыга', 'Запорожье', 'Украина', '51940307.jpg', '48-51940307.jpg', 'ylojrPwpaJ0NgqZ', 0),
(16, 'info3@admin.com', '$2y$10$zZltFApimImtvpm074KWPeRy2uWAfxcG5hSu5Enn1rMRW2pY02CYG', 'user', 'Анатолий', 'Булыга', 'Запорожье', 'Украина', '74574890.jpg', '48-74574890.jpg', NULL, NULL),
(17, 'info@admin.co', '$2y$10$S5hf8Xu1JlNHhAvqjXUuMeC1DOausyjhk9xK7IrdEWrPqdZowrQY.', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'info2@admin.com', '$2y$10$mzeD5x4DhBOs8TlA4W8je.WcBuiyxv2cDPdkrr0oI.LFyfviAt3c2', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'neadmin@admin.com', '$2y$10$ZxlLQA6KSUOspBcWJB1EXuGCyEHXMCZmurw0BHH3ihjlnfdVRsg8O', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
