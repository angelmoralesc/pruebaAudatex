-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2017 a las 17:07:33
-- Versión del servidor: 5.6.28-0ubuntu0.15.10.1
-- Versión de PHP: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebaAT`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pet`
--

CREATE TABLE IF NOT EXISTS `pet` (
  `id` int(3) NOT NULL COMMENT 'pet identifier',
  `name` varchar(100) NOT NULL COMMENT 'pet name',
  `description` varchar(500) NOT NULL COMMENT 'pet description',
  `type` enum('D','C','O','') NOT NULL COMMENT 'pet type D=dog, C=cat, O=other ',
  `price` float NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT 'pet status 0=unsold, 1=sold'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pet`
--

INSERT INTO `pet` (`id`, `name`, `description`, `type`, `price`, `status`) VALUES
(1, 'pet 1', 'pet 1', 'D', 100, 0),
(2, 'pet 2', 'pet 2', 'C', 75, 1),
(3, 'pet 3', 'pet 3', 'C', 50, 0),
(4, 'pet 4', 'pet 4', 'D', 100, 0),
(5, 'pet 5', 'pet 5', 'O', 75, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pet`
--
ALTER TABLE `pet`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT COMMENT 'pet identifier',AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
