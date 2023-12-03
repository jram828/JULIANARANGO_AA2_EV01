-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2023 a las 00:00:59
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crm_aveza`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `facturacionid` int(5) NOT NULL,
  `cedula` int(10) NOT NULL,
  `numero_contrato` int(5) NOT NULL,
  `impuesto` float DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cartera`
--

CREATE TABLE `tbl_cartera` (
  `cartera_id` smallint(6) NOT NULL,
  `numero_caso` int(5) NOT NULL,
  `cedula` int(10) NOT NULL,
  `Estado_deuda` float(12,2) DEFAULT NULL,
  `Valor_deuda` float(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_caso`
--

CREATE TABLE `tbl_caso` (
  `numero_caso` int(5) NOT NULL,
  `cedula` int(10) NOT NULL,
  `casoid` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_citas`
--

CREATE TABLE `tbl_citas` (
  `citaid` int(5) NOT NULL,
  `cedula` int(10) NOT NULL,
  `fechaC` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ciudad`
--

CREATE TABLE `tbl_ciudad` (
  `codigo_ciudad` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `codigo_departamento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_ciudad`
--

INSERT INTO `tbl_ciudad` (`codigo_ciudad`, `descripcion`, `codigo_departamento`) VALUES
('1', 'Medellin', '05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_departamento`
--

CREATE TABLE `tbl_departamento` (
  `codigo_departamento` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `codigo_pais` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_departamento`
--

INSERT INTO `tbl_departamento` (`codigo_departamento`, `descripcion`, `codigo_pais`) VALUES
('05', 'Antioquia', '169'),
('11', 'Bogota D.C', '169');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_documentoslegales`
--

CREATE TABLE `tbl_documentoslegales` (
  `id_documento_legal` smallint(6) NOT NULL,
  `cedula` int(10) NOT NULL,
  `Remitente` varchar(50) NOT NULL,
  `Destinatario` varchar(50) NOT NULL,
  `fechaD` date DEFAULT NULL,
  `idtipo` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_financiamiento`
--

CREATE TABLE `tbl_financiamiento` (
  `Financiamientoid` smallint(6) NOT NULL,
  `numero_contrato` int(5) NOT NULL,
  `cedula` int(10) NOT NULL,
  `Valordecuota` float(12,2) NOT NULL,
  `Numero_Cuotas` smallint(6) NOT NULL,
  `Montoapagar` float(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pais`
--

CREATE TABLE `tbl_pais` (
  `codigo_pais` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_pais`
--

INSERT INTO `tbl_pais` (`codigo_pais`, `descripcion`) VALUES
('169', 'Colombia'),
('27', 'Aruba.'),
('59', 'Argelia'),
('63', 'Argentina'),
('850', 'Venezuela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registro_cliente`
--

CREATE TABLE `tbl_registro_cliente` (
  `cedula` int(10) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `codigo_ciudad` varchar(20) NOT NULL,
  `direccion` varchar(15) NOT NULL,
  `tipo_usuario` smallint(6) NOT NULL,
  `contrasena` varchar(16) NOT NULL,
  `Tipo_de_caso` int(20) NOT NULL,
  `valor_pretensiones` varchar(30) NOT NULL,
  `honorarios` varchar(30) NOT NULL,
  `forma_de_pago` varchar(20) NOT NULL,
  `tiene_contrato` varchar(20) NOT NULL,
  `aceptacion_cotizacion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_registro_cliente`
--

INSERT INTO `tbl_registro_cliente` (`cedula`, `nombres`, `apellidos`, `correo`, `telefono`, `codigo_ciudad`, `direccion`, `tipo_usuario`, `contrasena`, `Tipo_de_caso`, `valor_pretensiones`, `honorarios`, `forma_de_pago`, `tiene_contrato`, `aceptacion_cotizacion`) VALUES
(71366468, 'Julian Rodrigo', 'Arango Mesa', 'jram828@yahoo.com', 3204746006, '1', 'calle 8 3  33', 1, 'Jram830828', 1, '1000000000', '32000000', 'contado', 'si', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipodecaso`
--

CREATE TABLE `tbl_tipodecaso` (
  `Casoid` smallint(6) NOT NULL,
  `Descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipodeusuario`
--

CREATE TABLE `tbl_tipodeusuario` (
  `Tipo_usuario` smallint(6) NOT NULL,
  `Descripcion` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_tipodeusuario`
--

INSERT INTO `tbl_tipodeusuario` (`Tipo_usuario`, `Descripcion`) VALUES
(1, 'Administrador'),
(2, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipodocumentolegal`
--

CREATE TABLE `tbl_tipodocumentolegal` (
  `idtipo` smallint(6) NOT NULL,
  `Descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD PRIMARY KEY (`facturacionid`),
  ADD KEY `FK_registro_cliente_facturacion` (`cedula`);

--
-- Indices de la tabla `tbl_cartera`
--
ALTER TABLE `tbl_cartera`
  ADD PRIMARY KEY (`cartera_id`),
  ADD KEY `FK_registro_cliente_cartera` (`cedula`),
  ADD KEY `FK_caso_cartera` (`numero_caso`);

--
-- Indices de la tabla `tbl_caso`
--
ALTER TABLE `tbl_caso`
  ADD PRIMARY KEY (`numero_caso`),
  ADD KEY `FK_tipodecaso_tblcaso` (`casoid`),
  ADD KEY `FK_registro_cliente_caso` (`cedula`);

--
-- Indices de la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  ADD PRIMARY KEY (`citaid`),
  ADD KEY `FK_registro_cliente_citas` (`cedula`);

--
-- Indices de la tabla `tbl_ciudad`
--
ALTER TABLE `tbl_ciudad`
  ADD PRIMARY KEY (`codigo_ciudad`),
  ADD KEY `codigo_departamento` (`codigo_departamento`);

--
-- Indices de la tabla `tbl_departamento`
--
ALTER TABLE `tbl_departamento`
  ADD PRIMARY KEY (`codigo_departamento`),
  ADD KEY `codigo_departamento` (`codigo_departamento`),
  ADD KEY `codigo_pais` (`codigo_pais`);

--
-- Indices de la tabla `tbl_documentoslegales`
--
ALTER TABLE `tbl_documentoslegales`
  ADD PRIMARY KEY (`id_documento_legal`),
  ADD KEY `FK_registro_cliente_documentoslegales` (`cedula`),
  ADD KEY `FK_tipodocumentolegal_documentoslegales` (`idtipo`);

--
-- Indices de la tabla `tbl_financiamiento`
--
ALTER TABLE `tbl_financiamiento`
  ADD PRIMARY KEY (`Financiamientoid`),
  ADD KEY `FK_registro_cliente_financiamiento` (`cedula`);

--
-- Indices de la tabla `tbl_pais`
--
ALTER TABLE `tbl_pais`
  ADD PRIMARY KEY (`codigo_pais`);

--
-- Indices de la tabla `tbl_registro_cliente`
--
ALTER TABLE `tbl_registro_cliente`
  ADD PRIMARY KEY (`cedula`),
  ADD KEY `FK_tipodeusuario_tbl_registro_cliente` (`tipo_usuario`),
  ADD KEY `FK_ciudad_registro_cliente` (`codigo_ciudad`);

--
-- Indices de la tabla `tbl_tipodecaso`
--
ALTER TABLE `tbl_tipodecaso`
  ADD PRIMARY KEY (`Casoid`);

--
-- Indices de la tabla `tbl_tipodeusuario`
--
ALTER TABLE `tbl_tipodeusuario`
  ADD PRIMARY KEY (`Tipo_usuario`);

--
-- Indices de la tabla `tbl_tipodocumentolegal`
--
ALTER TABLE `tbl_tipodocumentolegal`
  ADD PRIMARY KEY (`idtipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  MODIFY `citaid` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_financiamiento`
--
ALTER TABLE `tbl_financiamiento`
  MODIFY `Financiamientoid` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD CONSTRAINT `FK_registro_cliente_facturacion` FOREIGN KEY (`cedula`) REFERENCES `tbl_registro_cliente` (`cedula`);

--
-- Filtros para la tabla `tbl_cartera`
--
ALTER TABLE `tbl_cartera`
  ADD CONSTRAINT `FK_caso_cartera` FOREIGN KEY (`numero_caso`) REFERENCES `tbl_caso` (`numero_caso`),
  ADD CONSTRAINT `FK_registro_cliente_cartera` FOREIGN KEY (`cedula`) REFERENCES `tbl_registro_cliente` (`cedula`);

--
-- Filtros para la tabla `tbl_caso`
--
ALTER TABLE `tbl_caso`
  ADD CONSTRAINT `FK_registro_cliente_caso` FOREIGN KEY (`cedula`) REFERENCES `tbl_registro_cliente` (`cedula`),
  ADD CONSTRAINT `FK_tipodecaso_tblcaso` FOREIGN KEY (`casoid`) REFERENCES `tbl_tipodecaso` (`Casoid`);

--
-- Filtros para la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  ADD CONSTRAINT `FK_registro_cliente_citas` FOREIGN KEY (`cedula`) REFERENCES `tbl_registro_cliente` (`cedula`);

--
-- Filtros para la tabla `tbl_ciudad`
--
ALTER TABLE `tbl_ciudad`
  ADD CONSTRAINT `tbl_ciudad_ibfk_1` FOREIGN KEY (`codigo_departamento`) REFERENCES `tbl_departamento` (`codigo_departamento`);

--
-- Filtros para la tabla `tbl_departamento`
--
ALTER TABLE `tbl_departamento`
  ADD CONSTRAINT `tbl_departamento_ibfk_1` FOREIGN KEY (`codigo_pais`) REFERENCES `tbl_pais` (`codigo_pais`);

--
-- Filtros para la tabla `tbl_documentoslegales`
--
ALTER TABLE `tbl_documentoslegales`
  ADD CONSTRAINT `FK_registro_cliente_documentoslegales` FOREIGN KEY (`cedula`) REFERENCES `tbl_registro_cliente` (`cedula`),
  ADD CONSTRAINT `FK_tipodocumentolegal_documentoslegales` FOREIGN KEY (`idtipo`) REFERENCES `tbl_tipodocumentolegal` (`idtipo`);

--
-- Filtros para la tabla `tbl_financiamiento`
--
ALTER TABLE `tbl_financiamiento`
  ADD CONSTRAINT `FK_registro_cliente_financiamiento` FOREIGN KEY (`cedula`) REFERENCES `tbl_registro_cliente` (`cedula`);

--
-- Filtros para la tabla `tbl_registro_cliente`
--
ALTER TABLE `tbl_registro_cliente`
  ADD CONSTRAINT `FK_ciudad_registro_cliente` FOREIGN KEY (`codigo_ciudad`) REFERENCES `tbl_ciudad` (`codigo_ciudad`),
  ADD CONSTRAINT `FK_tipodeusuario_tbl_registro_cliente` FOREIGN KEY (`tipo_usuario`) REFERENCES `tbl_tipodeusuario` (`Tipo_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
