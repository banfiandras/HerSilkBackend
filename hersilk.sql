-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jún 16. 01:55
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
(9, 'asd.jpg', '/storage/sal/asd.jpg'),
(10, 'aaaa.jpeg', '/storage/kendo/aaaa.jpeg'),
(11, 'asd.jpeg', '/storage/carousel/asd.jpeg'),
(12, 'aaaa.jpeg', '/storage/carousel/aaaa.jpeg'),
(13, 'ggsd.jpg', '/storage/sal/ggsd.jpg'),
(14, 'sgzk.jpg', '/storage/sal/sgzk.jpg'),
(15, 'ztikzt.JPG', '/storage/sal/ztikzt.JPG'),
(16, 'hztekt.JPG', '/storage/kendo/hztekt.JPG'),
(17, 'h6wjt7k.jpg', '/storage/kendo/h6wjt7k.jpg'),
(18, 'trzier.jpg', '/storage/sal/trzier.jpg'),
(19, 'hz4wwsh.jpg', '/storage/sal/hz4wwsh.jpg'),
(20, 'rjtrzjzzetj.JPG', '/storage/sal/rjtrzjzzetj.JPG'),
(21, 'hjrwztjtr.jpg', '/storage/sal/hjrwztjtr.jpg'),
(22, 'hjztejktj.jpg', '/storage/sal/hjztejktj.jpg'),
(23, 'dfhd.JPG', '/storage/kendo/dfhd.JPG'),
(24, 'tsrth.jpg', '/storage/kendo/tsrth.jpg'),
(25, 'wgehwrz.JPG', '/storage/kendo/wgehwrz.JPG'),
(26, 'hgardhd.JPG', '/storage/kendo/hgardhd.JPG'),
(27, 'grgew.JPG', '/storage/kendo/grgew.JPG'),
(28, 'rhgeg.jpg', '/storage/kendo/rhgeg.jpg'),
(29, 'sgwgweg.jpg', '/storage/kendo/sgwgweg.jpg'),
(30, 'wgwgw.jpeg', '/storage/sal/wgwgw.jpeg'),
(31, 'rgegegew.JPG', '/storage/kendo/rgegegew.JPG'),
(32, 'sgwgwgf.jpg', '/storage/kendo/sgwgwgf.jpg'),
(33, 'sdfsfsdf.jpg', '/storage/sal/sdfsfsdf.jpg'),
(34, 'fsfdsfs.jpg', '/storage/kendo/fsfdsfs.jpg'),
(35, 'sfsfsf.jpg', '/storage/sal/sfsfsf.jpg'),
(36, 'fssfsfd.JPG', '/storage/kendo/fssfsfd.JPG'),
(37, 'sfsdfssfdsfs.jpeg', '/storage/kendo/sfsdfssfdsfs.jpeg'),
(38, 'fsdfsdfds.JPG', '/storage/sal/fsdfsdfds.JPG'),
(39, 'sdfsdgshed.JPG', '/storage/sal/sdfsdgshed.JPG'),
(40, 'sdgsdgsdg.jpg', '/storage/sal/sdgsdgsdg.jpg'),
(41, 'herstjhrthj.jpg', '/storage/sal/herstjhrthj.jpg'),
(42, 'jtrjtekrzul.jpg', '/storage/sal/jtrjtekrzul.jpg'),
(43, 'h5trhrh.JPG', '/storage/sal/h5trhrh.JPG'),
(44, 'fianlly.jpg', '/storage/kendo/fianlly.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
