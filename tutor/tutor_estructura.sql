-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 31-12-2016 a las 12:07:59
-- Versión del servidor: 5.7.16-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.8-0ubuntu0.16.04.3

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tutor`
--
CREATE DATABASE IF NOT EXISTS `tutor` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tutor`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
  `id_materia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_m` varchar(255) NOT NULL,
  `texto_m` longtext,
  `enlace` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta1`
--

CREATE TABLE IF NOT EXISTS `pregunta1` (
  `id_pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) NOT NULL,
  `id_materia` int(11) NOT NULL,
  PRIMARY KEY (`id_pregunta`,`correo`,`id_materia`),
  KEY `fk_pregunta1_1_idx` (`correo`),
  KEY `fk_pregunta1_2_idx` (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta2`
--

CREATE TABLE IF NOT EXISTS `pregunta2` (
  `id_pregunta` int(11) NOT NULL,
  `texto_p` longtext,
  PRIMARY KEY (`id_pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta1`
--

CREATE TABLE IF NOT EXISTS `respuesta1` (
  `id_respuesta` int(11) NOT NULL AUTO_INCREMENT,
  `id_pregunta` int(11) NOT NULL,
  PRIMARY KEY (`id_respuesta`,`id_pregunta`),
  KEY `fk_respuesta1_1_idx` (`id_pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta2`
--

CREATE TABLE IF NOT EXISTS `respuesta2` (
  `id_respuesta` int(11) NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `d` varchar(255) NOT NULL,
  `correcta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_respuesta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado1`
--

CREATE TABLE IF NOT EXISTS `resultado1` (
  `id_resultado` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) NOT NULL,
  PRIMARY KEY (`id_resultado`,`correo`),
  KEY `fk_resultado1_1_idx` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado2`
--

CREATE TABLE IF NOT EXISTS `resultado2` (
  `id_resultado` int(11) NOT NULL,
  `json` longtext,
  PRIMARY KEY (`id_resultado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `correo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pregunta1`
--
ALTER TABLE `pregunta1`
  ADD CONSTRAINT `fk_pregunta1_1` FOREIGN KEY (`correo`) REFERENCES `usuario` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pregunta1_2` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pregunta2`
--
ALTER TABLE `pregunta2`
  ADD CONSTRAINT `fk_pregunta2_1` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta1` (`id_pregunta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `respuesta1`
--
ALTER TABLE `respuesta1`
  ADD CONSTRAINT `fk_respuesta1_1` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta1` (`id_pregunta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `respuesta2`
--
ALTER TABLE `respuesta2`
  ADD CONSTRAINT `fk_respuesta2_1` FOREIGN KEY (`id_respuesta`) REFERENCES `respuesta1` (`id_respuesta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `resultado1`
--
ALTER TABLE `resultado1`
  ADD CONSTRAINT `fk_resultado1_1` FOREIGN KEY (`correo`) REFERENCES `usuario` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `resultado2`
--
ALTER TABLE `resultado2`
  ADD CONSTRAINT `fk_resultado2_1` FOREIGN KEY (`id_resultado`) REFERENCES `resultado1` (`id_resultado`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
