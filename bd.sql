-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 22 2016 г., 19:25
-- Версия сервера: 5.7.11
-- Версия PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

--
-- База данных: `bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) NOT NULL,
  `login` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `isnew` tinyint(1) NOT NULL DEFAULT '1',
  `isvalid` tinyint(1) NOT NULL DEFAULT '1',
  `isimportant` tinyint(1) NOT NULL DEFAULT '0',
  `isphones` tinyint(1) NOT NULL,
  `userbars` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `accounts`
--

INSERT INTO `accounts` (`id`, `login`, `password`, `ip`, `isnew`, `isvalid`, `isimportant`, `isphones`, `userbars`) VALUES
(1, 'kolyn_ivaniv@mail.ua', 'v19021974', '127.0.0.1', 1, 1, 0, 0, '[{"url":"\\/custom\\/ub\\/168a88b424dec8ab899af5d266301501\\/e835f6f0e0785550e71f23a485332564\\/bar.jpg"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(5) NOT NULL,
  `name` varchar(225) NOT NULL,
  `normalName` varchar(100) NOT NULL,
  `value` varchar(225) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `name`, `normalName`, `value`) VALUES
(1, 'accounts_per_page', 'Количество аккаунтов на странице', '15'),
(2, 'admin_login', 'Логин администратора', 'admin@gmail.com'),
(3, 'admin_password', 'Пароль администратора', 'admin'),
(4, 'yandex_user', 'Yandex логин', 'name@yandex.ru'),
(5, 'yandex_password', 'Yandex пароль', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
