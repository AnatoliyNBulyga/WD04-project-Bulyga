-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 27 2018 г., 20:12
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
  `photo` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Aнатолий Булыга', '<p>Я - веб разработчик</p>\r\n', '482808055.jpg');

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
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_comments_post` (`post_id`),
  KEY `index_foreignkey_comments_user` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(1, 27, 14, 'Новый комментарий', '2018-10-23 23:11:32'),
(2, 27, 19, 'Еще один комментарий', '2018-10-24 21:57:35'),
(3, 22, 19, 'Интересный пост', '2018-10-24 22:13:34'),
(4, 23, 19, 'Новый комментарий', '2018-10-24 22:17:11'),
(5, 23, 19, 'Еще один комментарий', '2018-10-24 22:23:05'),
(6, 23, 19, 'Еще один комментарий', '2018-10-24 22:25:58'),
(7, 23, 19, 'Еще один комментарий', '2018-10-24 22:26:05');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `adress` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secondname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `adress`, `name`, `secondname`, `skype`, `vk`, `facebook`, `github`, `twitter`) VALUES
(1, 'anatoliynbulyga@gmail.com', '+3 8 098 590 65 45', 'adress', 'Анатолий', 'Булыга', 'anatoliybulyga', 'https://vk.com/id30084761', 'https://www.facebook.com/profile.php?id=100015295591350', 'https://github.com/AnatoliyNBulyga', 'twitter');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `period`, `title`, `description`) VALUES
(4, 'ceнтябрь 2017 - по февраль 2018', 'верстальщик', 'Верстка psd - макетов');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `email`, `name`, `message`, `message_file_name_original`, `message_file`, `date_time`) VALUES
(17, 'test@test.com', 'Анатолий', 'Новое сообщение', '24.jpg', '62676696.jpg', '2018-10-27 14:02:15'),
(18, 'test@test.com', 'Анатолий', 'Новое сообщение', '24.jpg', '99093627.jpg', '2018-10-27 15:25:55');

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
(27, 'Wi-Fi адаптер TP-LINK TL-WN822N', '<h1>Wi-Fi адаптер</h1>\r\n\r\n<p><strong>Адаптер</strong> был куплен на замену<em> китайскому свистку,</em> который в один прекрасный день окончательно достал своей глючностью и периодическими подвисаниями связи. К роутеру это безымянное чудо инженерной мысли из Поднебесной подключалось на скорости 54 Мбит/с, на деле тянуло не более мегабайта в секунду.</p>\r\n\r\n<p>Дума думалась недолго, спустя пару часов серфинга выбор пал на весь такой красивый беленький&nbsp;<strong>TP-LINK TL-WN822N</strong>.</p>\r\n', 14, '2018-10-22 21:34:21', '13831481.jpg', '320-13831481.jpg', 7, '2018-10-23 21:46:45'),
(29, 'Как я провел эту осень', '<p>Прекрасно</p>\r\n', 14, '2018-10-22 23:13:28', '', '', 6, '2018-10-23 20:43:30');

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `html` int(11) unsigned DEFAULT NULL,
  `css` int(11) unsigned DEFAULT NULL,
  `js` int(11) unsigned DEFAULT NULL,
  `jquery` int(11) unsigned DEFAULT NULL,
  `php` int(11) unsigned DEFAULT NULL,
  `mysql` int(11) unsigned DEFAULT NULL,
  `git` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gulp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npm` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yarn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jquery`, `php`, `mysql`, `git`, `gulp`, `npm`, `yarn`) VALUES
(1, 50, 50, 50, 50, 50, 50, '80', '90', '100', '40');

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
(19, 'neadmin@admin.com', '$2y$10$ZxlLQA6KSUOspBcWJB1EXuGCyEHXMCZmurw0BHH3ihjlnfdVRsg8O', 'user', 'Иван', 'Крузенштерн', 'Санкт-Петербург', 'Россия', '54670410.jpg', '48-54670410.jpg', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
