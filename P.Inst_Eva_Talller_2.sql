-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2023 a las 03:35:20
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `ID_Matrícula` int(11) NOT NULL,
  `NúmeroDocumento` int(11) NOT NULL,
  `Nombre` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Grado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`ID_Matrícula`, `NúmeroDocumento`, `Nombre`, `Grado`) VALUES
(1, 1037620017, 'Juan Hernández', 8),
(2, 1037620018, 'Ana Gómez', 9),
(3, 1037620019, 'Liliana Sierra', 3),
(4, 1037620020, 'Camila Bedoya', 4),
(5, 1037620021, 'Miguel Arias', 1),
(6, 1037620022, 'Nikol Tamayo', 6),
(7, 1037620023, 'Juan Lopera', 8),
(8, 1037620024, 'Fanery Correa', 7),
(9, 1037620025, 'Jose Rodríguez', 9),
(10, 1037620026, 'Diana Restrepo', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `Grado` int(11) NOT NULL,
  `NivelEducativo` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Código_Puerta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`Grado`, `NivelEducativo`, `Código_Puerta`) VALUES
(1, 'Primaria', 1),
(2, 'Primaria', 2),
(3, 'Primaria', 3),
(4, 'Primaria', 4),
(5, 'Primaria', 5),
(6, 'Bachillerato', 6),
(7, 'Bachillerato', 7),
(8, 'Bachillerato', 8),
(9, 'Bachillerato', 9),
(10, 'Bachillerato', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imparte1`
--

CREATE TABLE `imparte1` (
  `ID_Imparte` int(11) NOT NULL,
  `ID_Profesor` int(11) NOT NULL,
  `Grado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `imparte1`
--

INSERT INTO `imparte1` (`ID_Imparte`, `ID_Profesor`, `Grado`) VALUES
(100, 43724560, 1),
(101, 1037620019, 2),
(102, 70568874, 3),
(103, 43724568, 4),
(104, 1037620071, 5),
(105, 70568877, 6),
(106, 43724566, 7),
(107, 1037620083, 8),
(108, 70568972, 9),
(109, 43724563, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `ID_Materia` int(11) NOT NULL,
  `Materia` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`ID_Materia`, `Materia`) VALUES
(500, 'Biología'),
(501, 'Matemáticas'),
(502, 'FinanzasPersonales'),
(503, 'Inglés'),
(504, 'CompetenciasCiudadanas'),
(505, 'Física'),
(506, 'Química'),
(507, 'Cálculo'),
(508, 'Estadística'),
(509, 'EdFísica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `ID_Profesor` int(11) NOT NULL,
  `ID_Materia` int(11) NOT NULL,
  `NúmeroDocumento` int(11) NOT NULL,
  `Nombre` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Asignatura` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`ID_Profesor`, `ID_Materia`, `NúmeroDocumento`, `Nombre`, `Asignatura`) VALUES
(6605, 508, 1037655000, 'Marta gallego', 'Estadística'),
(6615, 507, 1037655000, 'Carlos Atehortúa', 'Cálculo'),
(6625, 506, 1037655000, 'Jhon Pulgarín', 'Química'),
(6635, 509, 1037655000, 'Fredy Hincapié', 'EdFísica'),
(6645, 505, 1037655000, 'Luis Vélez', 'Física'),
(6655, 504, 1037655000, 'Sandra Gallego', 'CompetenciasCiudadanas'),
(6665, 503, 1037655000, 'Linda Caicedo', 'Inglés'),
(6675, 502, 1037655000, 'Lionel Messi', 'FinanzasPersonales'),
(6685, 501, 1037655000, 'Naruto Uzumaki', 'Matemáticas'),
(6695, 500, 1037655000, 'Ronaldinho Gaucho', 'Biología');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`ID_Matrícula`),
  ADD KEY `Grado` (`Grado`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`Grado`);

--
-- Indices de la tabla `imparte1`
--
ALTER TABLE `imparte1`
  ADD PRIMARY KEY (`ID_Imparte`),
  ADD KEY `ID_Profesor` (`ID_Profesor`),
  ADD KEY `Grado` (`Grado`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`ID_Materia`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`ID_Profesor`),
  ADD KEY `ID_Materia` (`ID_Materia`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`Grado`) REFERENCES `grados` (`Grado`);

--
-- Filtros para la tabla `imparte1`
--
ALTER TABLE `imparte1`
  ADD CONSTRAINT `imparte1_ibfk_1` FOREIGN KEY (`ID_Profesor`) REFERENCES `profesores` (`ID_Profesor`),
  ADD CONSTRAINT `imparte1_ibfk_2` FOREIGN KEY (`Grado`) REFERENCES `grados` (`Grado`);

--
-- Filtros para la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD CONSTRAINT `profesores_ibfk_1` FOREIGN KEY (`ID_Materia`) REFERENCES `materias` (`ID_Materia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
