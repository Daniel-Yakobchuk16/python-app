-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 15 2023 г., 11:43
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `app_workers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `workers_info`
--

CREATE TABLE `workers_info` (
  `id` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Hours` int(255) NOT NULL,
  `Projects` int(255) NOT NULL,
  `Rating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `workers_info`
--

INSERT INTO `workers_info` (`id`, `Name`, `Hours`, `Projects`, `Rating`) VALUES
(1, 'Daniel', 869, 373, '5'),
(2, 'Bogdan', 236, 47, '4.7'),
(3, 'Alexa', 274, 24, '4.5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `workers_info`
--
ALTER TABLE `workers_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `workers_info`
--
ALTER TABLE `workers_info`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
