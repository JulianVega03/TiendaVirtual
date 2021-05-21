-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2018 a las 03:44:09
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(3) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Camisas', 'Camisa de cuero'),
(2, 'Pantalones', 'Pantalones ajustados'),
(3, 'Bermudas', 'bermmudass'),
(4, 'Accesorios', 'accesorios de todo tipo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`nombre`, `apellido`, `direccion`, `fecha_nacimiento`, `telefono`, `email`, `clave`) VALUES
('Elver', 'Gonzales', 'Calle 2 N° 5-42 Aeropuerto', '2018-12-10', '3167458944', 'elvergon@gmail.com', 'julianvega03'),
('Julian Andres', 'Becerra', 'Av 7 N° 24-14 Villas del Tejar', '2018-12-06', '3114029073', 'julian_bec@hotmail.com', 'JulianVega03'),
('Yeison', 'Cordoba', 'Av7', '2018-12-07', '5819526', 'yilberpo@gmail.com', 'yesioncccc'),
('andres', 'ñañes', 'calle 7', '2018-12-07', '6256634', 'yilberpoo@gmail.com', '01059814');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `num_detalle` int(7) NOT NULL,
  `id_factura` int(7) NOT NULL,
  `id_producto` int(7) NOT NULL,
  `cantidad` int(4) NOT NULL,
  `precio` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`num_detalle`, `id_factura`, `id_producto`, `cantidad`, `precio`) VALUES
(2303, 1, 10, 2, 110000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `num_factura` int(7) NOT NULL,
  `id_cliente` varchar(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`num_factura`, `id_cliente`, `fecha`) VALUES
(1, 'yilberpo@gmail.com', '2018-12-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(7) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` int(6) NOT NULL,
  `stock` int(8) NOT NULL,
  `id_categoria` int(3) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `id_categoria`, `imagen`) VALUES
(1, 'Camisa Cuero', 'Camisa Koaj 100% cuero - 28', 45000, 3, 1, 'camisa-1.jpg'),
(5, 'Camisa Sencilla', 'camisa 100% algodon', 34000, 4, 1, 'camisa-2.jpg'),
(6, 'Camisa Slim', 'Casual', 25000, 2, 1, 'camisa-3.jpg'),
(7, 'Camisa Manga la', 'azul', 49990, 1, 1, 'camisa-4.jpg'),
(8, 'Camisa Dictrict', 'talla S', 27990, 5, 1, 'camisa-5.jpg'),
(9, 'Pantalon AC', 'talla 32', 79990, 5, 2, 'pantalon-3.jpg'),
(10, 'Mochila Koaj', 'Mochila Grande ', 55000, 1, 4, 'accesorio-1.jpg'),
(11, 'Pantalon GEF', 'Talla 28', 60000, 5, 2, 'pantalon-2.jpg'),
(12, 'Pantalon Fit Co', 'Silueta Ajustada - 30', 78000, 2, 2, 'pantalon-1.jpg'),
(14, 'Gorra District', 'Color negro - logo district', 26500, 2, 4, 'accesorio-4.jpg'),
(15, 'Mochila distric', 'Color Azul- tamaño mediano - 100% tela\r\nimpermedable', 65400, 1, 4, 'accesorio-3.jpg'),
(16, 'Bermuda Fitco', 'Bermuda tela jean', 45600, 1, 3, 'bermuda-1.jpg'),
(17, 'Bermuda Slim', 'Tela jean Bermuda Corta', 55000, 2, 3, 'bermuda-2.jpg'),
(18, 'Bermuda Atletic', 'Bermuda Deportiva comoda', 56300, 2, 3, 'bermuda-4.jpg'),
(19, 'Bermuda Azul', 'Bermuda Azul Cielo', 62000, 1, 3, 'bermuda-3.jpg'),
(20, 'Pantalon Sport', 'Pantalon textura sport', 64000, 2, 2, 'pantalon-4.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`num_detalle`),
  ADD KEY `id_factura` (`id_factura`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`num_factura`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `num_detalle` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2304;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `num_factura` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`num_factura`),
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`email`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
