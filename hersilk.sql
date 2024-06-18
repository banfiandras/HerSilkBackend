-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jún 18. 09:18
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `hersilk`
--
CREATE DATABASE IF NOT EXISTS `hersilk` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hersilk`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `images`
--

INSERT INTO `images` (`id`, `filename`, `location`) VALUES
(82, 'a_0.JPG', '/storage/sal/a_0.JPG'),
(83, 'a_1.JPG', '/storage/sal/a_1.JPG'),
(84, 'a_2.JPG', '/storage/sal/a_2.JPG'),
(85, 'asd_0.jpg', '/storage/kendo/asd_0.jpg'),
(86, 'asd_1.JPG', '/storage/kendo/asd_1.JPG'),
(87, 'asd_2.jpg', '/storage/kendo/asd_2.jpg'),
(88, 'carous_0.jpeg', '/storage/carousel/carous_0.jpeg'),
(89, 'carous_1.jpg', '/storage/carousel/carous_1.jpg'),
(90, 'aaa_0.jpeg', '/storage/sal/aaa_0.jpeg'),
(91, 'aaaaaaaaaaaaaaa_0.jpeg', '/storage/sal/aaaaaaaaaaaaaaa_0.jpeg'),
(92, 'sssssssss_0.jpg', '/storage/sal/sssssssss_0.jpg'),
(93, 'grhrfh_0.jpg', '/storage/kendo/grhrfh_0.jpg'),
(94, 'testkendo_0.jpg', '/storage/kendo/testkendo_0.jpg'),
(95, 'testkendo_1.jpg', '/storage/kendo/testkendo_1.jpg'),
(96, 'testkendo_2.JPG', '/storage/kendo/testkendo_2.JPG'),
(97, 'testkendo_3.JPG', '/storage/kendo/testkendo_3.JPG');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'ayaya', '$2y$10$LpO.aARTq7g0wW7ZtRJGS.1rDKlSOpDHcwe6oJOvaA8Y7Hh733lum'),
(2, 'asd', '$2y$10$GB7oGW0F6ZiVR9rve1/RCuua08mA.ia1LwwP/EUgPdLKTWGW1U5iW'),
(3, 'asdasd', '$2y$10$1K8U7XA2pFDF2WdH4ZNNnuz1Q4LWJE/9q3RXhHUgMXcvQCeyMsWT2'),
(4, 'admin', '$2y$10$bI71wWDAns0mHWXtHmzWd.e4rpG8AuHgdFf1BY3Wi7SyQPvn2rOpO');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
