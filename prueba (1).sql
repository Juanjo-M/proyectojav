-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-03-2022 a las 13:53:30
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(450) NOT NULL,
  `direccion` varchar(450) DEFAULT NULL,
  `correo` varchar(450) DEFAULT NULL,
  `telefono` int(255) DEFAULT NULL,
  `salario` int(255) DEFAULT NULL,
  `foto` varchar(200) DEFAULT 'Ninguno',
  `fotoOld` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `direccion`, `correo`, `telefono`, `salario`, `foto`, `fotoOld`) VALUES
(15, 'a', 'Calle 13', 'b', 2331, 111, NULL, NULL),
(18, 'gsfssgf', 'aaaaaaaaaaaaaaaaaaaaaa', 'hjhkkk th ', 28374, 458549, 'Imagenes/fotos/ID-gsfssgf-BALL.jpg', NULL),
(19, 'dssdgsdg', 'gsgsgf', 'sfdf', 544334, 76474545, 'Imagenes/fotosHONGO.jpg', NULL),
(20, 'a', 'w', 'd', 1, 2, 'Imagenes/fotosBALL.jpg', NULL),
(23, 'a', 'b', 'c', 1, 2, 'Imagenes/fotos/sus.jpg0', NULL),
(24, 'rgg', 'gfdgffg', 'fdfd', 777, 8888, 'Imagenes/fotos/0images.jpg', NULL),
(26, 'tr', 'rt', 'gfd', 1, 222, 'Imagenes/fotosID-tr-BALL.jpg', NULL),
(27, 'a', 'fghfh', 'gfgfh', 3454, 9887, 'Imagenes/fotos/BALL.jpg', NULL),
(28, 'a', 'fd', 'ds', 354, 4554, 'Imagenes/fotos/BALL.jpg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cod_producto` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT 'Ninguno',
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod_producto`, `nombre`, `descripcion`) VALUES
(4, 'queso', 'un queso jaja'),
(6, 'queso', 'un queso jaja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `Cod_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `cod_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`Cod_venta`, `id_cliente`, `fecha_venta`, `cod_producto`) VALUES
(1, 15, '2022-03-16', 4),
(4, 20, '2022-03-02', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cod_producto`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`Cod_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `cod_producto` (`cod_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `cod_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `Cod_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`cod_producto`) REFERENCES `producto` (`cod_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
