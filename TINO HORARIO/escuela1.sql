-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2024 a las 03:12:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `horas_docencia` int(11) NOT NULL,
  `horas_descarga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre`, `rfc`, `curp`, `correo`, `clave`, `horas_docencia`, `horas_descarga`) VALUES
(2, 'Nadxielli Ruiz Lagunas', 'LOPA950715HT7', 'LOPA950715MDFRN0', 'ana.lopez@example.com', 'clave123', 20, 5),
(3, 'Florentino Lopez Luis', 'HECA860101HT2', 'HECA860101HDFRN0', 'tnt.radio95.1@example.com', 'clave456', 25, 7),
(4, 'Manuel Sanchez Orozco', 'PEMA940630HT9', 'PEMA940630MDFRN1', 'maria.perez@example.com', 'clave789', 18, 6),
(5, 'Aurelio Martinez Morgan', 'MAJO850925HT1', 'MAJO850925HDFRN0', 'jose.martinez@example.com', 'clave321', 30, 4),
(6, 'David Lopez Felix Orozco', 'GOLU930312HT4', 'GOLU930312MDFRN0', 'luisa.gomez@example.com', 'clave654', 28, 3),
(7, 'Carlos Jesus Betanzos Antonio', 'RAJU920218HT6', 'RAJU920218HDFRN2', 'juan.ramirez@example.com', 'clave987', 22, 5),
(8, 'Israel Ruiz Carballo', 'TOEL900120HT9', 'TOEL900120MDFRN0', 'elena.torres@example.com', 'clave246', 27, 6),
(9, 'Rosendo Arenas Villalobos', 'ORRI880303HT5', 'ORRI880303HDFRN1', 'ricardo.ortiz@example.com', 'clave135', 29, 7),
(10, 'Aquiles Cerqueda Lopez', 'CHSO910715HT8', 'CHSO910715MDFRN0', 'sofia.chavez@example.com', 'clave579', 24, 3),
(11, 'Rosa Lopez Ruiz', 'FEMI860601HT7', 'FEMI860601HDFRN0', 'miguel.fernandez@example.com', 'clave864', 26, 2),
(12, 'Laura S?nchez', 'SALA920909HT3', 'SALA920909MDFRN1', 'laura.sanchez@example.com', 'clave741', 21, 6),
(13, 'Guadalupe Fuentes Fuentes', 'CAAN930817HT1', 'CAAN930817HDFRN0', 'andres.castillo@example.com', 'clave852', 23, 4),
(14, 'Martin Nieto Guerra', 'VAPA940504HT7', 'VAPA940504MDFRN0', 'patricia.vargas@example.com', 'clave963', 20, 5),
(15, 'Adan Santiago Osuna', 'REDI850118HT5', 'REDI850118HDFRN2', 'diego.reyes@example.com', 'clave174', 19, 6),
(16, 'Silviano Peralta Luis', 'FLCA870803HT9', 'FLCA870803MDFRN0', 'carolina.flores@example.com', 'clave285', 18, 7),
(17, 'Julissa Jimenez Valdivieso', 'CRRO880217HT2', 'CRRO880217HDFRN1', 'roberto.cruz@example.com', 'clave396', 30, 3),
(18, 'Eduardo Toledo Molina', 'GAVA910608HT4', 'GAVA910608MDFRN0', 'valeria.garcia@example.com', 'clave487', 28, 2),
(19, 'Benigno Francisco Hernandez Sanchez', 'ROAD890721HT1', 'ROAD890721HDFRN2', 'adrian.rojas@example.com', 'clave568', 26, 4),
(20, 'Ruben Antonio Reyes Benitez', 'MOPA900915HT6', 'MOPA900915MDFRN0', 'paola.morales@example.com', 'clave697', 22, 7),
(21, 'Hugo Aguilar', 'AGHU860112HT9', 'AGHU860112HDFRN1', 'hugo.aguilar@example.com', 'clave798', 24, 6),
(22, 'Gabriela Ruiz', 'RUGA950303HT5', 'RUGA950303MDFRN0', 'gabriela.ruiz@example.com', 'clave871', 25, 5),
(23, 'Jorge Navarro', 'NAJO890916HT3', 'NAJO890916HDFRN1', 'jorge.navarro@example.com', 'clave962', 30, 3),
(24, 'Monserrat Mej?a', 'MEMO910415HT7', 'MEMO910415MDFRN0', 'monserrat.mejia@example.com', 'clave163', 29, 4),
(25, 'Eduardo N??ez', 'NUEA870510HT9', 'NUEA870510HDFRN0', 'eduardo.nunez@example.com', 'clave294', 27, 2),
(26, 'Beatriz Luna', 'LUBE900720HT1', 'LUBE900720MDFRN1', 'beatriz.luna@example.com', 'clave375', 21, 6),
(27, 'Daniel Soto', 'SODA850315HT2', 'SODA850315HDFRN2', 'daniel.soto@example.com', 'clave486', 23, 4),
(28, 'Carmen Vega', 'VECA940109HT4', 'VECA940109MDFRN0', 'carmen.vega@example.com', 'clave597', 20, 5),
(29, 'Alejandro Silva', '', 'SIAL880224HDFRN1', 'alejandro.silva@example.com', 'clave618', 19, 7),
(30, 'Rosa D?az', 'DIRO870807HT8', 'DIRO870807MDFRN0', 'rosa.diaz@example.com', 'clave729', 18, 6),
(31, 'Francisco Pena', 'PEFR860504HT3', 'PEFR860504HDFRN2', 'francisco.pena@example.com', 'clave834', 30, 4),
(32, 'Diana Paredes', 'PADI910114HT9', 'PADI910114MDFRN0', 'diana.paredes@example.com', 'clave915', 28, 3),
(33, 'Esteban Arce', 'AREST920407HT', 'AREST920407HDFRN0', 'esteban.arce@example.com', 'clave126', 24, 7),
(34, 'Yolanda Quintero', 'QUYO950910HT1', 'QUYO950910MDFRN0', 'yolanda.quintero@example.com', 'clave237', 26, 6),
(35, 'Fernando Lara', 'LAFE870101HT4', 'LAFE870101HDFRN0', 'fernando.lara@example.com', 'clave348', 22, 5),
(36, 'Luc?a Herrera', 'HELU940311HT7', 'HELU940311MDFRN1', 'lucia.herrera@example.com', 'clave459', 23, 4),
(37, 'Santiago M?ndez', 'MESA890807HT6', 'MESA890807HDFRN2', 'santiago.mendez@example.com', 'clave570', 25, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_materia`
--

CREATE TABLE `docente_materia` (
  `id` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente_materia`
--

INSERT INTO `docente_materia` (`id`, `id_docente`, `id_materia`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 4, 1),
(4, 2, 2),
(5, 5, 2),
(6, 6, 2),
(7, 3, 3),
(8, 7, 3),
(9, 8, 3),
(10, 4, 4),
(11, 9, 4),
(12, 10, 4),
(13, 11, 4),
(14, 5, 5),
(15, 12, 5),
(16, 13, 5),
(17, 6, 6),
(18, 14, 6),
(19, 15, 6),
(20, 16, 6),
(21, 7, 7),
(22, 17, 7),
(23, 18, 7),
(24, 8, 8),
(25, 19, 8),
(26, 20, 8),
(27, 21, 8),
(28, 9, 9),
(29, 22, 9),
(30, 23, 9),
(31, 10, 10),
(32, 24, 10),
(33, 25, 10),
(34, 11, 11),
(35, 26, 11),
(36, 27, 11),
(37, 28, 11),
(38, 12, 12),
(39, 29, 12),
(40, 30, 12),
(41, 13, 13),
(42, 31, 13),
(43, 32, 13),
(44, 33, 13),
(45, 14, 14),
(46, 34, 14),
(47, 2, 14),
(48, 15, 15),
(49, 3, 15),
(50, 4, 15),
(51, 5, 15),
(52, 16, 16),
(53, 6, 16),
(54, 7, 16),
(55, 17, 17),
(56, 8, 17),
(57, 9, 17),
(58, 10, 17),
(59, 18, 18),
(60, 11, 18),
(61, 12, 18),
(62, 19, 19),
(63, 13, 19),
(64, 14, 19),
(65, 15, 19),
(66, 20, 20),
(67, 16, 20),
(68, 17, 20),
(69, 21, 21),
(70, 18, 21),
(71, 19, 21),
(72, 20, 21),
(73, 22, 22),
(74, 21, 22),
(75, 22, 22),
(76, 23, 23),
(77, 23, 23),
(78, 24, 23),
(79, 25, 23),
(80, 24, 24),
(81, 26, 24),
(82, 27, 24),
(83, 25, 25),
(84, 28, 25),
(85, 29, 25),
(86, 30, 25),
(87, 26, 26),
(88, 31, 26),
(89, 32, 26),
(90, 27, 27),
(91, 33, 27),
(92, 34, 27),
(93, 2, 27),
(94, 28, 28),
(95, 3, 28),
(96, 4, 28),
(97, 29, 29),
(98, 5, 29),
(99, 6, 29),
(100, 7, 29),
(101, 30, 30),
(102, 8, 30),
(103, 9, 30),
(104, 31, 31),
(105, 10, 31),
(106, 11, 31),
(107, 12, 31),
(108, 32, 32),
(109, 13, 32),
(110, 14, 32),
(111, 33, 33),
(112, 15, 33),
(113, 16, 33),
(114, 17, 33),
(115, 34, 34),
(116, 18, 34),
(117, 19, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `grado` int(11) NOT NULL,
  `grupo` char(1) NOT NULL,
  `turno` enum('Matutino','Vespertino') NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  `modalidad` varchar(50) NOT NULL,
  `aula` varchar(20) DEFAULT NULL,
  `id_tutor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id`, `grado`, `grupo`, `turno`, `especialidad`, `modalidad`, `aula`, `id_tutor`) VALUES
(35, 1, 'A', 'Vespertino', 'Administracion de Recursos Humanos', '2024', 'Aula 1', NULL),
(36, 1, 'B', 'Vespertino', 'Administracion de Recursos Humanos', '2024', 'Aula 2', NULL),
(37, 1, 'C', 'Vespertino', 'Administracion de Recursos Humanos', '2024', 'Aula 3', NULL),
(38, 1, 'D', 'Vespertino', 'Administracion de Recursos Humanos', '2024', 'Aula 4', NULL),
(39, 1, 'E', 'Vespertino', 'Construccion', '2024', 'Aula 5', NULL),
(40, 1, 'F', 'Vespertino', 'Construccion', '2024', 'Aula 6', NULL),
(41, 1, 'G', 'Vespertino', 'Ofimatica', '2024', 'Aula 7', NULL),
(42, 1, 'H', 'Vespertino', 'Enfermeria', '2024', 'Aula 8', NULL),
(43, 1, 'I', 'Vespertino', 'Enfermeria', '2024', 'Aula 9', NULL),
(44, 1, 'J', 'Vespertino', 'Enfermeria', '2024', 'Aula 10', NULL),
(45, 1, 'K', 'Vespertino', 'Programacion', '2024', 'Aula 11', NULL),
(46, 1, 'L', 'Vespertino', 'Programacion', '2024', 'Aula 12', NULL),
(47, 3, 'A', 'Matutino', 'Administracion de Recursos Humanos', '2024', 'Aula 13', NULL),
(48, 3, 'B', 'Matutino', 'Administracion de Recursos Humanos', '2024', 'Aula 14', NULL),
(49, 3, 'C', 'Matutino', 'Administracion de Recursos Humanos', '2024', 'Aula 15', NULL),
(50, 3, 'D', 'Matutino', 'Administracion de Recursos Humanos', '2024', 'Aula 16', NULL),
(51, 3, 'E', 'Matutino', 'Construccion', '2024', 'Aula 17', NULL),
(52, 3, 'F', 'Matutino', 'Construccion', '2024', 'Aula 18', NULL),
(53, 3, 'G', 'Matutino', 'Ofimatica', '2024', 'Aula 19', NULL),
(54, 3, 'H', 'Vespertino', 'Enfermeria', '2024', 'Aula 20', NULL),
(55, 3, 'I', 'Vespertino', 'Enfermeria', '2024', 'Aula 1', NULL),
(56, 3, 'J', 'Vespertino', 'Enfermeria', '2024', 'Aula 2', NULL),
(57, 3, '', 'Vespertino', 'Programacion', '2024', 'Aula 3', NULL),
(58, 3, 'L', 'Vespertino', 'Programacion', '2024', 'Aula 4', NULL),
(59, 5, 'A', 'Matutino', 'Administracion de Recursos Humanos', '2017', 'Aula 5', NULL),
(60, 5, 'B', 'Matutino', 'Administracion de Recursos Humanos', '2017', 'Aula 6', NULL),
(61, 5, 'C', 'Matutino', 'Administracion de Recursos Humanos', '2017', 'Aula 7', NULL),
(62, 5, 'D', 'Matutino', 'Administracion de Recursos Humanos', '2017', 'Aula 8', NULL),
(63, 5, 'E', 'Matutino', 'Construccion', '2017', 'Aula 9', NULL),
(64, 5, 'F', 'Matutino', 'Construccion', '2017', 'Aula 10', 30),
(65, 5, 'G', 'Matutino', 'Ofimatica', '2017', 'Aula 11', NULL),
(66, 5, 'H', 'Matutino', 'Enfermeria', '2017', 'Aula 12', NULL),
(67, 5, 'I', 'Matutino', 'Enfermeria', '2017', 'Aula 13', NULL),
(68, 5, 'J', 'Matutino', 'Enfermeria', '2017', 'Aula 14', NULL),
(69, 5, 'K', 'Matutino', 'Programacion', '2017', 'Aula 15', 4),
(70, 5, 'L', 'Matutino', 'Programacion', '2017', 'Aula 16', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `dia` enum('Lunes','Martes','Miercoles','Jueves','Viernes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `id_grupo`, `id_docente`, `id_materia`, `hora`, `dia`) VALUES
(483, 38, 2, 31, '7:00-7:50', 'Lunes'),
(484, 38, 2, 31, '7:50-8:40', 'Lunes'),
(485, 38, 2, 31, '8:40-9:30', 'Lunes'),
(486, 38, 2, 31, '9:30-10:20', 'Lunes'),
(487, 38, 2, 31, '10:50-11:40', 'Lunes'),
(488, 38, 2, 31, '11:40-12:30', 'Lunes'),
(489, 38, 2, 31, '7:00-7:50', 'Martes'),
(490, 38, 2, 31, '7:50-8:40', 'Martes'),
(491, 38, 2, 31, '8:40-9:30', 'Martes'),
(492, 38, 2, 31, '9:30-10:20', 'Martes'),
(493, 38, 2, 31, '10:50-11:40', 'Martes'),
(494, 38, 2, 31, '11:40-12:30', 'Martes'),
(495, 38, 2, 31, '7:00-7:50', ''),
(496, 38, 2, 31, '7:50-8:40', ''),
(497, 38, 2, 31, '8:40-9:30', ''),
(498, 38, 2, 31, '9:30-10:20', ''),
(499, 38, 2, 31, '10:50-11:40', ''),
(500, 38, 2, 31, '11:40-12:30', ''),
(501, 38, 2, 31, '7:00-7:50', 'Jueves'),
(502, 38, 2, 31, '7:50-8:40', 'Jueves'),
(503, 38, 2, 31, '8:40-9:30', 'Jueves'),
(504, 38, 2, 31, '9:30-10:20', 'Jueves'),
(505, 38, 2, 31, '10:50-11:40', 'Jueves'),
(506, 38, 2, 31, '11:40-12:30', 'Jueves'),
(507, 38, 2, 31, '7:00-7:50', 'Viernes'),
(508, 38, 2, 31, '7:50-8:40', 'Viernes'),
(509, 38, 2, 31, '8:40-9:30', 'Viernes'),
(510, 38, 2, 31, '9:30-10:20', 'Viernes'),
(511, 38, 2, 31, '10:50-11:40', 'Viernes'),
(512, 38, 2, 31, '11:40-12:30', 'Viernes'),
(513, 36, 2, 31, '7:00-7:50', 'Lunes'),
(514, 36, 2, 31, '7:50-8:40', 'Lunes'),
(515, 36, 2, 31, '8:40-9:30', 'Lunes'),
(516, 36, 2, 31, '9:30-10:20', 'Lunes'),
(517, 36, 2, 31, '10:50-11:40', 'Lunes'),
(518, 36, 2, 31, '11:40-12:30', 'Lunes'),
(519, 36, 2, 31, '7:00-7:50', 'Martes'),
(520, 36, 2, 31, '7:50-8:40', 'Martes'),
(521, 36, 2, 31, '8:40-9:30', 'Martes'),
(522, 36, 2, 31, '9:30-10:20', 'Martes'),
(523, 36, 2, 31, '10:50-11:40', 'Martes'),
(524, 36, 2, 31, '11:40-12:30', 'Martes'),
(525, 36, 2, 31, '7:00-7:50', 'Miercoles'),
(526, 36, 2, 31, '7:50-8:40', 'Miercoles'),
(527, 36, 2, 31, '8:40-9:30', 'Miercoles'),
(528, 36, 2, 31, '9:30-10:20', 'Miercoles'),
(529, 36, 2, 31, '10:50-11:40', 'Miercoles'),
(530, 36, 2, 31, '11:40-12:30', 'Miercoles'),
(531, 36, 2, 31, '7:00-7:50', 'Jueves'),
(532, 36, 2, 31, '7:50-8:40', 'Jueves'),
(533, 36, 2, 31, '8:40-9:30', 'Jueves'),
(534, 36, 2, 31, '9:30-10:20', 'Jueves'),
(535, 36, 2, 31, '10:50-11:40', 'Jueves'),
(536, 36, 2, 31, '11:40-12:30', 'Jueves'),
(537, 36, 2, 31, '7:00-7:50', 'Viernes'),
(538, 36, 2, 31, '7:50-8:40', 'Viernes'),
(539, 36, 2, 31, '8:40-9:30', 'Viernes'),
(540, 36, 2, 31, '9:30-10:20', 'Viernes'),
(541, 36, 2, 31, '10:50-11:40', 'Viernes'),
(542, 36, 2, 31, '11:40-12:30', 'Viernes'),
(543, 69, 2, 16, '7:00-7:50', 'Lunes'),
(544, 69, 2, 16, '7:50-8:40', 'Lunes'),
(545, 69, 14, 48, '8:40-9:30', 'Lunes'),
(546, 69, 14, 48, '9:30-10:20', 'Lunes'),
(547, 69, 34, 52, '10:50-11:40', 'Lunes'),
(548, 69, 34, 52, '11:40-12:30', 'Lunes'),
(549, 69, 2, 42, '7:00-7:50', 'Martes'),
(550, 69, 2, 42, '7:50-8:40', 'Martes'),
(551, 69, 2, 18, '8:40-9:30', 'Martes'),
(552, 69, 2, 18, '9:30-10:20', 'Martes'),
(553, 69, 33, 50, '10:50-11:40', 'Martes'),
(554, 69, 33, 50, '11:40-12:30', 'Martes'),
(555, 69, 2, 42, '7:00-7:50', 'Miercoles'),
(556, 69, 2, 42, '7:50-8:40', 'Miercoles'),
(557, 69, 2, 16, '8:40-9:30', 'Miercoles'),
(558, 69, 2, 16, '9:30-10:20', 'Miercoles'),
(559, 69, 2, 18, '10:50-11:40', 'Miercoles'),
(560, 69, 2, 18, '11:40-12:30', 'Miercoles'),
(561, 69, 2, 16, '7:00-7:50', 'Jueves'),
(562, 69, 2, 16, '7:50-8:40', 'Jueves'),
(563, 69, 2, 50, '8:40-9:30', 'Jueves'),
(564, 69, 2, 50, '9:30-10:20', 'Jueves'),
(565, 69, 2, 52, '10:50-11:40', 'Jueves'),
(566, 69, 2, 52, '11:40-12:30', 'Jueves'),
(567, 69, 2, 48, '7:00-7:50', 'Viernes'),
(568, 69, 2, 48, '7:50-8:40', 'Viernes'),
(569, 69, 2, 18, '8:40-9:30', 'Viernes'),
(570, 69, 2, 18, '9:30-10:20', 'Viernes'),
(571, 69, 2, 50, '10:50-11:40', 'Viernes'),
(572, 69, 2, 52, '11:40-12:30', 'Viernes'),
(573, 69, 2, 16, '7:00-7:50', 'Lunes'),
(574, 69, 2, 16, '7:50-8:40', 'Lunes'),
(575, 69, 7, 48, '8:40-9:30', 'Lunes'),
(576, 69, 7, 18, '9:30-10:20', 'Lunes'),
(577, 69, 6, 52, '10:50-11:40', 'Lunes'),
(578, 69, 6, 52, '11:40-12:30', 'Lunes'),
(579, 69, 4, 51, '7:00-7:50', 'Martes'),
(580, 69, 4, 51, '7:50-8:40', 'Martes'),
(581, 69, 3, 18, '8:40-9:30', 'Martes'),
(582, 69, 3, 18, '9:30-10:20', 'Martes'),
(583, 69, 5, 50, '10:50-11:40', 'Martes'),
(584, 69, 5, 50, '11:40-12:30', 'Martes'),
(585, 69, 4, 51, '7:00-7:50', 'Miercoles'),
(586, 69, 4, 51, '7:50-8:40', 'Miercoles'),
(587, 69, 2, 16, '8:40-9:30', 'Miercoles'),
(588, 69, 2, 16, '9:30-10:20', 'Miercoles'),
(589, 69, 3, 18, '10:50-11:40', 'Miercoles'),
(590, 69, 3, 18, '11:40-12:30', 'Miercoles'),
(591, 69, 2, 16, '7:00-7:50', 'Jueves'),
(592, 69, 2, 16, '7:50-8:40', 'Jueves'),
(593, 69, 5, 50, '8:40-9:30', 'Jueves'),
(594, 69, 5, 50, '9:30-10:20', 'Jueves'),
(595, 69, 6, 52, '10:50-11:40', 'Jueves'),
(596, 69, 6, 52, '11:40-12:30', 'Jueves'),
(597, 69, 7, 48, '7:00-7:50', 'Viernes'),
(598, 69, 7, 48, '7:50-8:40', 'Viernes'),
(599, 69, 3, 18, '8:40-9:30', 'Viernes'),
(600, 69, 3, 18, '9:30-10:20', 'Viernes'),
(601, 69, 5, 50, '10:50-11:40', 'Viernes'),
(602, 69, 6, 52, '11:40-12:30', 'Viernes'),
(603, 69, 2, 16, '7:00-7:50', 'Lunes'),
(604, 69, 2, 16, '7:50-8:40', 'Lunes'),
(605, 69, 7, 48, '8:40-9:30', 'Lunes'),
(606, 69, 7, 48, '9:30-10:20', 'Lunes'),
(607, 69, 6, 52, '10:50-11:40', 'Lunes'),
(608, 69, 6, 52, '11:40-12:30', 'Lunes'),
(609, 69, 4, 51, '7:00-7:50', 'Martes'),
(610, 69, 4, 51, '7:50-8:40', 'Martes'),
(611, 69, 3, 18, '8:40-9:30', 'Martes'),
(612, 69, 3, 18, '9:30-10:20', 'Martes'),
(613, 69, 5, 50, '10:50-11:40', 'Martes'),
(614, 69, 5, 50, '11:40-12:30', 'Martes'),
(615, 69, 4, 51, '7:00-7:50', 'Miercoles'),
(616, 69, 4, 51, '7:50-8:40', 'Miercoles'),
(617, 69, 2, 16, '8:40-9:30', 'Miercoles'),
(618, 69, 2, 16, '9:30-10:20', 'Miercoles'),
(619, 69, 3, 18, '10:50-11:40', 'Miercoles'),
(620, 69, 3, 18, '11:40-12:30', 'Miercoles'),
(621, 69, 2, 16, '7:00-7:50', 'Jueves'),
(622, 69, 2, 16, '7:50-8:40', 'Jueves'),
(623, 69, 5, 50, '8:40-9:30', 'Jueves'),
(624, 69, 5, 50, '9:30-10:20', 'Jueves'),
(625, 69, 6, 52, '10:50-11:40', 'Jueves'),
(626, 69, 6, 52, '11:40-12:30', 'Jueves'),
(627, 69, 7, 48, '7:00-7:50', 'Viernes'),
(628, 69, 7, 48, '7:50-8:40', 'Viernes'),
(629, 69, 2, 18, '8:40-9:30', 'Viernes'),
(630, 69, 2, 18, '9:30-10:20', 'Viernes'),
(631, 69, 5, 50, '10:50-11:40', 'Viernes'),
(632, 69, 6, 52, '11:40-12:30', 'Viernes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `horas_semanales` int(11) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `especialidad` varchar(50) DEFAULT NULL,
  `componente` varchar(50) DEFAULT NULL,
  `programa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `clave`, `nombre`, `horas_semanales`, `semestre`, `especialidad`, `componente`, `programa`) VALUES
(1, 'MAT01', 'Algebra', 4, 1, NULL, 'Componente Basico', '2024'),
(2, 'MAT02', 'Geometria Analitica', 4, 3, NULL, 'Componente Basico', '2024'),
(3, 'FIS01', 'Fisica I', 3, 1, NULL, 'Componente Basico', '2024'),
(4, 'FIS02', 'Biologia', 3, 3, NULL, 'Componente Basico', '2024'),
(5, 'ING01', 'Ingles I', 2, 1, NULL, 'Componente Basico', '2024'),
(6, 'ING02', 'Ingles III', 2, 3, NULL, 'Componente Basico', '2024'),
(7, 'QUI01', 'Química I', 3, 1, NULL, 'Componente Basico', '2024'),
(8, 'QUI02', 'Química III', 3, 3, NULL, 'Componente Basico', '2024'),
(9, 'ETI01', 'Tecnologia, Ciencia, Sociedad y Valores', 2, 1, NULL, 'Componente Basico', '2024'),
(10, 'INF01', 'Informatica Basica', 2, 1, NULL, 'Componente Basico', '2024'),
(11, 'MAT03', 'Calculo Integral', 4, 5, NULL, 'Componente Basico', '2017'),
(12, 'FIS03', 'Fisica II', 3, 5, NULL, 'Componente Basico', '2017'),
(13, 'ING03', 'Ingles V', 2, 5, NULL, 'Componente Basico', '2017'),
(14, 'ADM01', 'Administracion Basica', 3, 5, NULL, 'Componente Basico', '2017'),
(15, 'PRG01', 'Fundamentos de Programación', 4, 1, 'Programacino', 'Componente Profesional', '2024'),
(16, 'PRG02', 'Crea Bases de Datos para paginas Web', 4, 3, 'Programacion', 'Componente Profesional', '2024'),
(17, 'PRG03', 'Programación Orientada a Objetos', 5, 5, 'Programacion', 'Componente Profesional', '2017'),
(18, 'PRG04', 'Desarrolla Paginas Web con Conexion a base de Datos', 5, 5, 'Programacion', 'Componente Profesional', '2017'),
(19, 'OFI01', 'Introducción a la Ofimática', 4, 1, 'Ofimatica', 'Componente Profesional', '2024'),
(20, 'OFI02', 'Procesadores de Texto Avanzados', 3, 3, 'Ofimatica', 'Componente Profesional', '2024'),
(21, '', 'Hojas de Cálculo', 5, 5, 'Ofimatica', 'Componente Profesional', '2017'),
(22, 'OFI04', 'Herramientas de Presentación', 4, 5, 'Ofimatica', 'Componente Profesional', '2017'),
(23, 'CON01', 'Introducción a la Construcción', 3, 1, 'Construccion', 'Componente Profesional', '2024'),
(24, 'CON02', 'Materiales de Construcción', 4, 3, 'Construccion', 'Componente Profesional', '2024'),
(25, 'CON03', 'Estructuras Básicas', 5, 5, 'Construccion', 'Componente Profesional', '2017'),
(26, 'CON04', 'Dibujo Técnico', 5, 5, 'Construccion', 'Componente Profesional', '2017'),
(27, 'ENF01', 'Fundamentos de Enfermería', 4, 1, 'Enfermeria', 'Componente Profesional', '2024'),
(28, 'ENF02', 'Anatomía y Fisiología', 4, 3, 'Enfermeria', 'Componente Profesional', '2024'),
(29, '', 'Procedimientos Clínicos', 5, 5, 'Enfermeria', 'Componente Profesional', '2017'),
(30, 'ENF04', 'Salud Pública', 5, 5, 'Enfermer?a', 'Componente Profesional', '2017'),
(31, 'ADM02', 'Introducción a los Recursos Humanos', 0, 1, 'Administracion de Recursos Humanos', 'Componente Profesional', '2024'),
(32, 'ADM03', 'Psicología Organizacional', 4, 3, 'Administracion de Recursos Humanos', 'Componente Profesional', '2024'),
(33, 'ADM04', 'Gestion del Talento Humano', 5, 5, 'Administracion de Recursos Humanos', 'Componente Profesional', '2017'),
(34, 'ADM05', 'Desarrollo Organizacional', 5, 5, 'Administracion de Recursos Humanos', 'Componente Profesional', '2017'),
(40, 'MAT01', 'Algebra', 4, 1, 'Programacion', 'Componente Basico', '2024'),
(41, 'MAT02', 'Geometria Analitica', 4, 3, 'Programacion', 'Componente Basico', '2024'),
(42, 'FIS01', 'Fisica I', 3, 1, 'Programacion', 'Componente Basico', '2024'),
(43, 'FIS02', 'Biologia', 3, 3, 'Programacion', 'Componente Basico', '2024'),
(44, 'ING01', 'Ingles I', 2, 1, 'Programacion', 'Componente Basico', '2024'),
(45, 'ING02', 'Ingles III', 2, 3, 'Programacion', 'Componente Basico', '2024'),
(46, 'QUI01', 'Química I', 3, 1, 'Programacion', 'Componente Basico', '2024'),
(47, 'QUI02', 'Química III', 3, 3, 'Programacion', 'Componente Basico', '2024'),
(48, 'ETI01', 'Tecnologia, Ciencia, Sociedad y Valores', 2, 1, 'Programacion', 'Componente Basico', '2024'),
(49, 'INF01', 'Informatica Basica', 2, 1, 'Programacion', 'Componente Basico', '2024'),
(50, 'MAT03', 'Calculo Integral', 4, 5, 'Programacion', 'Componente Basico', '2017'),
(51, 'FIS03', 'Fisica II', 3, 5, 'Programacion', 'Componente Basico', '2017'),
(52, 'ING03', 'Ingles V', 2, 5, 'Programacion', 'Componente Basico', '2017'),
(53, 'ADM01', 'Administracion Basica', 3, 5, 'Programacion', 'Componente Basico', '2017'),
(55, 'MAT01', 'Algebra', 4, 1, 'Construccion', 'Componente Basico', '2024'),
(56, 'MAT02', 'Geometria Analitica', 4, 3, 'Construccion', 'Componente Basico', '2024'),
(57, 'FIS01', 'Fisica I', 3, 1, 'Construccion', 'Componente Basico', '2024'),
(58, 'FIS02', 'Biologia', 3, 3, 'Construccion', 'Componente Basico', '2024'),
(59, 'ING01', 'Ingles I', 2, 1, 'Construccion', 'Componente Basico', '2024'),
(60, 'ING02', 'Ingles III', 2, 3, 'Construccion', 'Componente Basico', '2024'),
(61, 'QUI01', 'Química I', 3, 1, 'Construccion', 'Componente Basico', '2024'),
(62, 'QUI02', 'Química III', 3, 3, 'Construccion', 'Componente Basico', '2024'),
(63, 'ETI01', 'Tecnologia, Ciencia, Sociedad y Valores', 2, 1, 'Construccion', 'Componente Basico', '2024'),
(64, 'INF01', 'Informatica Basica', 2, 1, 'Construccion', 'Componente Basico', '2024'),
(65, 'MAT03', 'Calculo Integral', 4, 5, 'Construccion', 'Componente Basico', '2017'),
(66, 'FIS03', 'Fisica II', 3, 5, 'Construccion', 'Componente Basico', '2017'),
(67, 'ING03', 'Ingles V', 2, 5, 'Construccion', 'Componente Basico', '2017'),
(68, 'ADM01', 'Administracion Basica', 3, 5, 'Construccion', 'Componente Basico', '2017'),
(70, 'MAT01', 'Algebra', 4, 1, 'Enfermeria', 'Componente Basico', '2024'),
(71, 'MAT02', 'Geometria Analitica', 4, 3, 'Enfermeria', 'Componente Basico', '2024'),
(72, 'FIS01', 'Fisica I', 3, 1, 'Enfermeria', 'Componente Basico', '2024'),
(73, 'FIS02', 'Biologia', 3, 3, 'Enfermeria', 'Componente Basico', '2024'),
(74, 'ING01', 'Ingles I', 2, 1, 'Enfermeria', 'Componente Basico', '2024'),
(75, 'ING02', 'Ingles III', 2, 3, 'Enfermeria', 'Componente Basico', '2024'),
(76, 'QUI01', 'Química I', 3, 1, 'Enfermeria', 'Componente Basico', '2024'),
(77, 'QUI02', 'Química III', 3, 3, 'Enfermeria', 'Componente Basico', '2024'),
(78, 'ETI01', 'Tecnologia, Ciencia, Sociedad y Valores', 2, 1, 'Enfermeria', 'Componente Basico', '2024'),
(79, 'INF01', 'Informatica Basica', 2, 1, 'Enfermeria', 'Componente Basico', '2024'),
(80, 'MAT03', 'Calculo Integral', 4, 5, 'Enfermeria', 'Componente Basico', '2017'),
(81, 'FIS03', 'Fisica II', 3, 5, 'Enfermeria', 'Componente Basico', '2017'),
(82, 'ING03', 'Ingles V', 2, 5, 'Enfermeria', 'Componente Basico', '2017'),
(83, 'ADM01', 'Administracion Basica', 3, 5, 'Enfermeria', 'Componente Basico', '2017'),
(85, 'MAT01', 'Algebra', 4, 1, 'Administracion de Recursos Humanos', 'Componente Basico', '2024'),
(86, 'MAT02', 'Geometria Analitica', 4, 3, 'Administracion de Recursos Humanos', 'Componente Basico', '2024'),
(87, 'FIS01', 'Fisica I', 3, 1, 'Administracion de Recursos Humanos', 'Componente Basico', '2024'),
(88, 'FIS02', 'Biologia', 3, 3, 'Administracion de Recursos Humanos', 'Componente Basico', '2024'),
(89, 'ING01', 'Ingles I', 2, 1, 'Administracion de Recursos Humanos', 'Componente Basico', '2024'),
(90, 'ING02', 'Ingles III', 2, 3, 'Administracion de Recursos Humanos', 'Componente Basico', '2024'),
(91, 'QUI01', 'Química I', 3, 1, 'Administracion de Recursos Humanos', 'Componente Basico', '2024'),
(92, 'QUI02', 'Química III', 3, 3, 'Administracion de Recursos Humanos', 'Componente Basico', '2024'),
(93, 'ETI01', 'Tecnologia, Ciencia, Sociedad y Valores', 2, 1, 'Administracion de Recursos Humanos', 'Componente Basico', '2024'),
(94, 'INF01', 'Informatica Basica', 2, 1, 'Administracion de Recursos Humanos', 'Componente Basico', '2024'),
(95, 'MAT03', 'Calculo Integral', 4, 5, 'Administracion de Recursos Humanos', 'Componente Basico', '2017'),
(96, 'FIS03', 'Fisica II', 3, 5, 'Administracion de Recursos Humanos', 'Componente Basico', '2017'),
(97, 'ING03', 'Ingles V', 2, 5, 'Administracion de Recursos Humanos', 'Componente Basico', '2017'),
(98, 'ADM01', 'Administracion Basica', 3, 5, 'Administracion de Recursos Humanos', 'Componente Basico', '2017'),
(100, 'MAT01', 'Algebra', 4, 1, 'Ofimatica', 'Componente Basico', '2024'),
(101, 'MAT02', 'Geometria Analitica', 4, 3, 'Ofimatica', 'Componente Basico', '2024'),
(102, 'FIS01', 'Fisica I', 3, 1, 'Ofimatica', 'Componente Basico', '2024'),
(103, 'FIS02', 'Biologia', 3, 3, 'Ofimatica', 'Componente Basico', '2024'),
(104, 'ING01', 'Ingles I', 2, 1, 'Ofimatica', 'Componente Basico', '2024'),
(105, 'ING02', 'Ingles III', 2, 3, 'Ofimatica', 'Componente Basico', '2024'),
(106, 'QUI01', 'Química I', 3, 1, 'Ofimatica', 'Componente Basico', '2024'),
(107, 'QUI02', 'Química III', 3, 3, 'Ofimatica', 'Componente Basico', '2024'),
(108, 'ETI01', 'Tecnologia, Ciencia, Sociedad y Valores', 2, 1, 'Ofimatica', 'Componente Basico', '2024'),
(109, 'INF01', 'Informatica Basica', 2, 1, 'Ofimatica', 'Componente Basico', '2024'),
(110, 'MAT03', 'Calculo Integral', 4, 5, 'Ofimatica', 'Componente Basico', '2017'),
(111, 'FIS03', 'Fisica II', 3, 5, 'Ofimatica', 'Componente Basico', '2017'),
(112, 'ING03', 'Ingles V', 2, 5, 'Ofimatica', 'Componente Basico', '2017'),
(113, 'ADM01', 'Administracion Basica', 3, 5, 'Ofimatica', 'Componente Basico', '2017');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`) VALUES
(1, 'prueba', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rfc` (`rfc`),
  ADD UNIQUE KEY `curp` (`curp`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `docente_materia`
--
ALTER TABLE `docente_materia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tutor` (`id_tutor`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_grupo` (`id_grupo`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clave` (`clave`) USING BTREE,
  ADD KEY `clave_2` (`clave`,`nombre`,`horas_semanales`,`semestre`) USING BTREE,
  ADD KEY `id` (`id`,`clave`,`nombre`,`horas_semanales`,`semestre`,`especialidad`,`componente`,`programa`) USING BTREE,
  ADD KEY `id_2` (`id`,`clave`,`nombre`,`horas_semanales`,`semestre`,`especialidad`,`componente`,`programa`) USING BTREE;

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `docente_materia`
--
ALTER TABLE `docente_materia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=633;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `docente_materia`
--
ALTER TABLE `docente_materia`
  ADD CONSTRAINT `docente_materia_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `docente_materia_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`id_tutor`) REFERENCES `docentes` (`id`);

--
-- Filtros para la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id`),
  ADD CONSTRAINT `horarios_ibfk_2` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`),
  ADD CONSTRAINT `horarios_ibfk_3` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
