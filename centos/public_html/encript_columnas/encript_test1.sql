-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2020 a las 19:17:49
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `encript_test1`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `copyright_sp` (IN `valor` VARCHAR(255), OUT `valor_id` INT)  BEGIN
       INSERT INTO copyright (valor_original) values (valor);
       SELECT LAST_INSERT_ID() INTO valor_id;
	   SELECT MD5(CONCAT(valor , valor_id )) INTO @val_semilla;
	   SELECT HEX(AES_ENCRYPT( valor , @val_semilla )) INTO @val_encript;
       INSERT INTO copy       (id_copyright,column_copy ) values ( valor_id , @val_encript );
	   INSERT INTO copy_right (id_copyright,column_right) values ( valor_id , @val_semilla );
	   -- SELECT @val_encript; --
	   END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `copy`
--

CREATE TABLE `copy` (
  `id_copyright` int(11) NOT NULL,
  `column_copy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `copy`
--

INSERT INTO `copy` (`id_copyright`, `column_copy`) VALUES
(1, '?YM??w?M???W?'),
(2, '??\'?&?N?J?o??'),
(3, '???S????{|???oq'),
(4, '??l-?R?\'?\0E	ڦ?'),
(5, '???]&}ɑo\"???m?'),
(6, 'E6DBB4CD72C06F2913E7F88FA292B33E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `copyright`
--

CREATE TABLE `copyright` (
  `id` int(11) NOT NULL,
  `valor_original` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `copyright`
--

INSERT INTO `copyright` (`id`, `valor_original`) VALUES
(1, 'hol'),
(2, 'hola'),
(3, 'hola'),
(4, 'hola'),
(5, 'hola'),
(6, 'hola_final');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `copyright_view`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `copyright_view` (
`id` int(11)
,`valor_original` varchar(255)
,`column_copy` varchar(255)
,`column_right` varchar(255)
,`copyright_new` varbinary(383)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `copy_right`
--

CREATE TABLE `copy_right` (
  `id_copyright` int(11) NOT NULL,
  `column_right` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `copy_right`
--

INSERT INTO `copy_right` (`id_copyright`, `column_right`) VALUES
(1, '2f627547f87235a2365fe8922f55a7e4'),
(2, '370bec3471ae0e73d2a22e3dd333ae5f'),
(3, '464e3912cc8d118beb4c2ffb6d12eb7c'),
(4, 'ad03fa176f62b65887fa91b6044e3f42'),
(5, 'c0f6c835e09fd7eeb76c3e782e3a01af'),
(6, '1c11e9c28bdfdb5fdf28ecad26e2e4b1');

-- --------------------------------------------------------

--
-- Estructura para la vista `copyright_view`
--
DROP TABLE IF EXISTS `copyright_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `copyright_view`  AS  select `copyright`.`id` AS `id`,`copyright`.`valor_original` AS `valor_original`,`copy`.`column_copy` AS `column_copy`,`copy_right`.`column_right` AS `column_right`,aes_decrypt(unhex(`copy`.`column_copy`),`copy_right`.`column_right`) AS `copyright_new` from ((`copyright` join `copy` on((`copyright`.`id` = `copy`.`id_copyright`))) join `copy_right` on((`copyright`.`id` = `copy_right`.`id_copyright`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `copyright`
--
ALTER TABLE `copyright`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `copyright`
--
ALTER TABLE `copyright`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
