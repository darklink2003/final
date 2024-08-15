-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2016 a las 19:28:35
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ser4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_encuestas`
--

CREATE TABLE `tb_encuestas` (
  `id_encuesta` int(11) NOT NULL,
  `titulo_encuesta` varchar(100) NOT NULL,
  `descripcion_larga` varchar(500) DEFAULT NULL,
  `sn_publicar` tinyint(1) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_encuestas`
--

INSERT INTO `tb_encuestas` (`id_encuesta`, `titulo_encuesta`, `descripcion_larga`, `sn_publicar`, `fecha_registro`) VALUES
(1, 'Encuesta SER 2016', NULL, 0, '2015-11-04 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_genero`
--

CREATE TABLE `tb_genero` (
  `cod_genero` int(11) NOT NULL,
  `genero` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_genero`
--

INSERT INTO `tb_genero` (`cod_genero`, `genero`) VALUES
(14, 'Masculino'),
(15, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_personas`
--

CREATE TABLE `tb_personas` (
  `num_doc` varchar(15) NOT NULL,
  `nombres` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `sn_mostrar` varchar(1) DEFAULT NULL,
  `sn_contar` varchar(2) DEFAULT NULL,
  `url_imagen` varchar(500) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `cod_rol` int(11) NOT NULL,
  `cod_tipo_doc` int(11) NOT NULL,
  `cod_genero` int(11) NOT NULL,
  `cod_programa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_personas`
--

INSERT INTO `tb_personas` (`num_doc`, `nombres`, `apellidos`, `sn_mostrar`, `sn_contar`, `url_imagen`, `fecha_registro`, `cod_rol`, `cod_tipo_doc`, `cod_genero`, `cod_programa`) VALUES
('1006723305', 'Marby', 'Lopez', 's', 's', 'phpqrcode/temp//test3d3a9cb5556ad5b8a6e678733507a37d_2016_10_24_17_08_45camilo_f.png', '2016-10-24 10:08:36', 8, 2, 15, 0),
('1033752674', 'Cristhian Danilo', 'Carrillo Mendoza', 's', 's', 'phpqrcode/temp//test66e4b6637fc554262a6c28241fdd1347_2016_10_25_01_23_05camilo_f.png', '2016-10-24 18:22:37', 3, 1, 14, 0),
('1095804202', 'Deimi Lizeth', 'GÃ³mez DÃ­az', 's', 's', NULL, '2016-10-24 18:22:44', 3, 1, 15, 0),
('112050717', 'Efrain Alfonso', 'GÃ“mez CastaÃ‘o', 's', 's', 'phpqrcode/temp//testf2ee4435032cd968b1cc1def52fa622a_2016_10_24_19_44_45camilo_f.png', '2016-10-24 12:44:39', 3, 1, 14, 0),
('1120577148', 'Yimer Augusto', 'Moreno Melo', 's', 's', 'phpqrcode/temp//test0ce50881939e5bead0be321ddfc94bff_2016_10_24_20_04_11camilo_f.png', '2016-10-24 13:04:07', 3, 1, 14, 0),
('1120578783', 'Ricardo', 'Vargas Sanchez', 's', 's', 'phpqrcode/temp//testb1c1d79487c7b4ddd7b898293411af10_2016_10_27_19_21_43camilo_f.png', '2016-10-24 12:44:36', 3, 1, 14, 0),
('1120578956', 'Yeison', 'Cano', 's', 's', 'phpqrcode/temp//teste34fc125cf96cebb37511d6c02a701db_2016_10_24_20_03_37camilo_f.png', '2016-10-24 13:03:34', 6, 1, 14, 0),
('1120579462', 'Edwin Giovanny', 'Leon Quiroga', 's', 's', 'phpqrcode/temp//test784c7884b5565827f37ca8b4906ffe96_2016_10_24_23_04_11camilo_f.png', '2016-10-24 12:49:16', 8, 1, 14, 0),
('1120580717', 'Efrain Alfonso', 'GÃ“mez CastaÃ‘o', 's', 's', 'phpqrcode/temp//test77083bb58c471c0d315b9f1b0c03253c_2016_10_24_19_47_59camilo_f.png', '2016-10-24 12:47:50', 3, 1, 14, 0),
('1120580782', 'Camilo', 'Mejia', 's', 's', NULL, '2016-10-24 10:01:08', 3, 1, 14, 0),
('1120581953', 'Harley', 'Santoyo', 's', 's', 'phpqrcode/temp//test0e6423751c7c8d910ad85bcdf22598ef_2016_10_24_17_02_42camilo_f.png', '2016-10-24 10:02:35', 8, 1, 14, 0),
('1120582430', 'Ginna', 'Bonilla', 's', 's', 'phpqrcode/temp//testb24f5e420e0122f97eaa7f79a846caf5_2016_10_24_16_05_01camilo_f.png', '2016-10-24 09:04:29', 3, 1, 15, 0),
('1120582706', 'Edwar Esteban', 'Cruz Hernandez', 's', 's', 'phpqrcode/temp//test6c48d6ba537b8f6cc85b8c697c51c827_2016_10_27_19_19_56camilo_f.png', '2016-10-13 08:40:23', 6, 1, 14, 0),
('11234556', 'Nueva Opashk', 'Oasdojo', 's', 's', 'phpqrcode/temp//test763efc4c01f0de63ab2fcf602580f41b_2016_10_27_16_51_28camilo_f.png', '2016-10-27 09:51:27', 6, 2, 14, 0),
('1124798198', 'Derly', 'Chipiaje Gaitan', 's', 's', NULL, '2016-10-24 18:26:35', 3, 1, 15, 0),
('120580013', 'Loco', 'Loca', 's', 's', 'phpqrcode/temp//test2c999a9e160f37660643b593c6632b01_2016_10_27_16_45_26camilo_f.png', '2016-10-27 09:45:03', 3, 1, 15, 0),
('1234322897', 'Olaaa', 'Prueb', 's', 's', 'phpqrcode/temp//testb854b92e033ec287dac79f29fdcb3c02_2016_10_27_18_32_41camilo_f.png', '2016-10-27 11:32:39', 6, 1, 15, 0),
('12345678', 'Nuevo', 'Nuevo P', 's', 's', 'phpqrcode/temp//test94e2f7d78350bbd886f9d21f28faf51c_2016_10_19_13_53_52camilo_f.png', '2016-10-13 09:55:52', 7, 2, 15, 0),
('123456789', 'Prueba', 'Nueva', 's', 's', 'phpqrcode/temp//test385a211d7cf00637ed8a35add05246f8_2016_10_18_15_17_06camilo_f.png', '2016-10-18 08:17:03', 3, 1, 14, 0),
('1234567890', 'Ã‰frain Gay', 'CastaÃ±a', 's', 's', 'phpqrcode/temp//test4c279037fb4e0d721a0c7f4fcadb116d_2016_10_24_19_57_07camilo_f.png', '2016-10-24 12:57:03', 7, 1, 15, 0),
('1234789450', 'Juan', 'Fontecha', 's', 's', 'phpqrcode/temp//test1d8122030431d8db24285f2eeab287ae_2016_10_24_23_03_05camilo_f.png', '2016-10-24 12:54:02', 3, 1, 14, 0),
('1236578174', 'Efrain', 'Gomez', 's', 's', 'phpqrcode/temp//test9be99d68175211e91bc484db479e235d_2016_10_24_19_59_02camilo_f.png', '2016-10-24 12:58:59', 8, 1, 14, 0),
('14135036', 'Daniel Ferney', 'Lugo Camacho', 's', 's', 'phpqrcode/temp//test19dea9cd33819ef2cc46cba3fc0d1fae_2016_10_13_18_42_57camilo_f.png', '2016-10-13 11:42:55', 4, 1, 14, 0),
('76543', 'Ola Aq Hgahgsdjk', 'Hjdhdjkadshjk', 's', 's', 'phpqrcode/temp//test4828b190ceff9bad8223f0ff06b29047_2016_10_27_18_36_57camilo_f.png', '2016-10-27 11:36:55', 6, 3, 15, 0),
('86055000', 'Hernando', 'Rozo Becerra', 's', 's', 'phpqrcode/temp//test8f93f2ac0a44d649f294ba17221eeb1e_2016_10_25_01_22_47camilo_f.png', '2016-10-24 18:22:33', 4, 1, 14, 0),
('86058926', 'Hernando', 'Rozo Becerra', 's', 's', 'phpqrcode/temp//test1f3a0aa53b22a8faa0295d64bf567a7a_2016_10_25_01_24_37camilo_f.png', '2016-10-24 18:24:32', 6, 1, 15, 0),
('97051006066', 'Alfonso', 'CastaÃ±o', 's', 's', 'phpqrcode/temp//test0c1af5269afec1430ad05a64cf796317_2016_10_24_19_56_01camilo_f.png', '2016-10-24 12:55:59', 3, 2, 14, 0),
('98080169680', 'Wilson Eduardo', 'Guerrero Becerra', 's', 's', 'phpqrcode/temp//test1167bfed4e9150886186fdb966499ac9_2016_10_25_01_22_49camilo_f.png', '2016-10-24 18:21:33', 3, 2, 14, 0),
('98090254626', 'Edwar Esteban', 'Cruz Hernandez', 's', 's', 'phpqrcode/temp//testfd9bd0f2f3ce41e75cadbe8972cabbdc_2016_10_27_16_41_11camilo_f.png', '2016-10-19 20:52:15', 4, 2, 14, 0),
('9809254626', 'Edwar Esteban', 'Cruz Hernandez', 's', 's', 'phpqrcode/temp//test3b5161a789893df5c537802c25388508_2016_10_13_14_28_25camilo_f.png', '2016-10-13 07:28:21', 6, 2, 14, 0),
('98765432', 'Sonye', 'Noca', 's', 's', 'phpqrcode/temp//test27678267a42cbd9841760c764f007752_2016_10_24_20_02_32camilo_f.png', '2016-10-24 13:02:12', 6, 3, 14, 0),
('98765432134', 'Olnaus Di', 'Jkjljsdk', 's', 's', 'phpqrcode/temp//test63e6671802b62e599c7d444414fb3df8_2016_10_27_18_34_39camilo_f.png', '2016-10-27 11:34:07', 6, 2, 15, 0),
('99022312983', 'Cristian David', 'Osorio Montenegro', 's', 's', 'phpqrcode/temp//test7b164d2e1b658f2fd594a4404866cc09_2016_10_25_01_25_01camilo_f.png', '2016-10-24 18:22:34', 3, 2, 14, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_personas_registros`
--

CREATE TABLE `tb_personas_registros` (
  `cod_pers_reg` int(11) NOT NULL,
  `identif_1` varchar(15) NOT NULL,
  `identif_2` varchar(15) NOT NULL,
  `fec_reg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_personas_registros`
--

INSERT INTO `tb_personas_registros` (`cod_pers_reg`, `identif_1`, `identif_2`, `fec_reg`) VALUES
(3167, '9809254626', '9809254626', '2016-10-13 07:28:22'),
(3169, '1120582706', '1120582706', '2016-10-13 08:40:23'),
(3170, '12345678', '12345678', '2016-10-13 09:55:52'),
(3171, '14135036', '14135036', '2016-10-13 11:42:55'),
(3172, '123456789', '123456789', '2016-10-18 08:17:03'),
(3173, '12345678', '12345678', '2016-10-19 06:53:50'),
(3174, '98090254626', '98090254626', '2016-10-19 20:52:16'),
(3175, '1120582430', '1120582430', '2016-10-24 09:04:29'),
(3177, '1120580782', '1120580782', '2016-10-24 10:01:08'),
(3179, '1120581953', '1120581953', '2016-10-24 10:02:35'),
(3180, '1006723305', '1006723305', '2016-10-24 10:08:36'),
(3181, '1120578783', '1120578783', '2016-10-24 12:44:36'),
(3182, '112050717', '112050717', '2016-10-24 12:44:39'),
(3183, '1120580717', '1120580717', '2016-10-24 12:47:50'),
(3184, '1120579462', '1120579462', '2016-10-24 12:49:16'),
(3185, '1234789450', '1234789450', '2016-10-24 12:54:02'),
(3186, '97051006066', '97051006066', '2016-10-24 12:55:59'),
(3188, '1234567890', '1234567890', '2016-10-24 12:57:03'),
(3195, '1236578174', '1236578174', '2016-10-24 12:58:59'),
(3197, '98765432', '98765432', '2016-10-24 13:02:12'),
(3198, '1234789450', '1234789450', '2016-10-24 13:02:55'),
(3199, '1120578956', '1120578956', '2016-10-24 13:03:34'),
(3200, '1120577148', '1120577148', '2016-10-24 13:04:07'),
(3202, '1234789450', '1234789450', '2016-10-24 16:03:00'),
(3203, '1120579462', '1120579462', '2016-10-24 16:04:07'),
(3204, '1120579462', '1120579462', '2016-10-24 16:04:50'),
(3205, '1120579462', '1120579462', '2016-10-24 16:13:05'),
(3206, '98080169680', '98080169680', '2016-10-24 18:21:33'),
(3207, '86055000', '86055000', '2016-10-24 18:22:33'),
(3208, '99022312983', '99022312983', '2016-10-24 18:22:34'),
(3209, '1033752674', '1033752674', '2016-10-24 18:22:40'),
(3210, '1095804202', '1095804202', '2016-10-24 18:22:44'),
(3212, '86058926', '86058926', '2016-10-24 18:24:32'),
(3213, '1124798198', '1124798198', '2016-10-24 18:26:35'),
(3219, '1120578783', '1120578783', '2016-10-27 09:22:29'),
(3220, '98090254626', '98090254626', '2016-10-27 09:41:04'),
(3221, '120580013', '120580013', '2016-10-27 09:45:04'),
(3222, '120580013', '120580013', '2016-10-27 09:45:21'),
(3223, '11234556', '11234556', '2016-10-27 09:51:27'),
(3224, '1234322897', '1234322897', '2016-10-27 11:32:39'),
(3225, '98765432134', '98765432134', '2016-10-27 11:34:07'),
(3226, '76543', '76543', '2016-10-27 11:36:55'),
(3227, '1120582706', '1120582706', '2016-10-27 11:56:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_personas_respuestas`
--

CREATE TABLE `tb_personas_respuestas` (
  `id_persona_respuesta` bigint(20) UNSIGNED NOT NULL,
  `num_doc` varchar(15) NOT NULL,
  `id_posible_respuesta` int(11) NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_personas_respuestas`
--

INSERT INTO `tb_personas_respuestas` (`id_persona_respuesta`, `num_doc`, `id_posible_respuesta`, `fecha_registro`) VALUES
(9, '9809254626', 9, '2016-10-13 07:35:22'),
(10, '9809254626', 15, '2016-10-13 07:35:22'),
(11, '9809254626', 24, '2016-10-13 07:35:22'),
(12, '9809254626', 32, '2016-10-13 07:35:22'),
(13, '9809254626', 35, '2016-10-13 07:35:22'),
(14, '9809254626', 39, '2016-10-13 07:35:22'),
(15, '9809254626', 43, '2016-10-13 07:35:22'),
(16, '9809254626', 45, '2016-10-13 07:35:22'),
(17, '1120582706', 9, '2016-10-13 09:39:22'),
(18, '1120582706', 15, '2016-10-13 09:39:23'),
(19, '1120582706', 43, '2016-10-13 09:39:23'),
(20, '1120582706', 9, '2016-10-13 09:43:46'),
(21, '1120582706', 15, '2016-10-13 09:43:46'),
(22, '1120582706', 43, '2016-10-13 09:43:46'),
(23, '1120582706', 9, '2016-10-13 09:44:56'),
(24, '1120582706', 15, '2016-10-13 09:44:56'),
(25, '1120582706', 43, '2016-10-13 09:44:56'),
(26, '1120582706', 9, '2016-10-13 09:45:34'),
(27, '1120582706', 15, '2016-10-13 09:45:34'),
(28, '1120582706', 43, '2016-10-13 09:45:34'),
(29, '9809254626', 9, '2016-10-13 09:45:51'),
(30, '9809254626', 34, '2016-10-13 09:45:51'),
(31, '9809254626', 37, '2016-10-13 09:45:51'),
(32, '9809254626', 42, '2016-10-13 09:45:51'),
(33, '9809254626', 45, '2016-10-13 09:45:51'),
(34, '9809254626', 9, '2016-10-13 09:46:47'),
(35, '9809254626', 34, '2016-10-13 09:46:47'),
(36, '9809254626', 37, '2016-10-13 09:46:47'),
(37, '9809254626', 42, '2016-10-13 09:46:47'),
(38, '9809254626', 45, '2016-10-13 09:46:47'),
(39, '9809254626', 9, '2016-10-13 09:48:02'),
(40, '9809254626', 34, '2016-10-13 09:48:03'),
(41, '9809254626', 37, '2016-10-13 09:48:03'),
(42, '9809254626', 42, '2016-10-13 09:48:03'),
(43, '9809254626', 45, '2016-10-13 09:48:03'),
(44, '9809254626', 9, '2016-10-13 09:48:22'),
(45, '9809254626', 34, '2016-10-13 09:48:22'),
(46, '9809254626', 37, '2016-10-13 09:48:22'),
(47, '9809254626', 42, '2016-10-13 09:48:22'),
(48, '9809254626', 45, '2016-10-13 09:48:22'),
(49, '9809254626', 10, '2016-10-13 09:49:14'),
(50, '9809254626', 32, '2016-10-13 09:49:14'),
(51, '9809254626', 36, '2016-10-13 09:49:14'),
(52, '9809254626', 39, '2016-10-13 09:49:14'),
(53, '12345678', 9, '2016-10-13 09:56:53'),
(54, '12345678', 14, '2016-10-13 09:56:53'),
(55, '12345678', 24, '2016-10-13 09:56:53'),
(56, '12345678', 37, '2016-10-13 09:56:53'),
(57, '12345678', 39, '2016-10-13 09:56:54'),
(58, '12345678', 9, '2016-10-13 09:57:20'),
(59, '12345678', 14, '2016-10-13 09:57:20'),
(60, '12345678', 24, '2016-10-13 09:57:20'),
(61, '12345678', 37, '2016-10-13 09:57:20'),
(62, '12345678', 39, '2016-10-13 09:57:20'),
(63, '12345678', 9, '2016-10-13 09:58:11'),
(64, '12345678', 14, '2016-10-13 09:58:11'),
(65, '12345678', 24, '2016-10-13 09:58:11'),
(66, '12345678', 37, '2016-10-13 09:58:11'),
(67, '12345678', 39, '2016-10-13 09:58:11'),
(68, '12345678', 9, '2016-10-13 09:59:11'),
(69, '12345678', 14, '2016-10-13 09:59:11'),
(70, '12345678', 24, '2016-10-13 09:59:11'),
(71, '12345678', 37, '2016-10-13 09:59:11'),
(72, '12345678', 39, '2016-10-13 09:59:11'),
(73, '1120582706', 9, '2016-10-13 11:38:57'),
(74, '1120582706', 38, '2016-10-13 11:38:57'),
(75, '1120582706', 43, '2016-10-13 11:38:57'),
(76, '1120582706', 45, '2016-10-13 11:38:57'),
(77, '123456789', 36, '2016-10-18 08:28:15'),
(78, '123456789', 39, '2016-10-18 08:28:15'),
(79, '123456789', 43, '2016-10-18 08:28:15'),
(80, '1120582706', 36, '2016-10-19 06:53:25'),
(81, '1120582706', 39, '2016-10-19 06:53:25'),
(82, '1120582430', 9, '2016-10-24 09:53:27'),
(83, '1120582430', 14, '2016-10-24 09:53:27'),
(84, '1120582430', 24, '2016-10-24 09:53:27'),
(85, '1120582430', 32, '2016-10-24 09:53:27'),
(86, '1120582430', 35, '2016-10-24 09:53:27'),
(87, '1120582430', 39, '2016-10-24 09:53:27'),
(88, '1120582430', 43, '2016-10-24 09:53:27'),
(89, '1120582430', 45, '2016-10-24 09:53:27'),
(90, '1120581953', 10, '2016-10-24 10:05:22'),
(91, '1120581953', 15, '2016-10-24 10:05:22'),
(92, '1120581953', 25, '2016-10-24 10:05:22'),
(93, '1120581953', 34, '2016-10-24 10:05:22'),
(94, '1120581953', 38, '2016-10-24 10:05:22'),
(95, '1120581953', 42, '2016-10-24 10:05:22'),
(96, '1120581953', 44, '2016-10-24 10:05:23'),
(97, '1120581953', 46, '2016-10-24 10:05:23'),
(98, '1120581953', 10, '2016-10-24 10:05:53'),
(99, '1120581953', 15, '2016-10-24 10:05:53'),
(100, '1120581953', 25, '2016-10-24 10:05:53'),
(101, '1120581953', 34, '2016-10-24 10:05:53'),
(102, '1120581953', 38, '2016-10-24 10:05:53'),
(103, '1120581953', 42, '2016-10-24 10:05:53'),
(104, '1120581953', 44, '2016-10-24 10:05:53'),
(105, '1120581953', 46, '2016-10-24 10:05:53'),
(106, '1120581953', 10, '2016-10-24 10:05:53'),
(107, '1120581953', 15, '2016-10-24 10:05:53'),
(108, '1120581953', 25, '2016-10-24 10:05:53'),
(109, '1120581953', 34, '2016-10-24 10:05:53'),
(110, '1120581953', 38, '2016-10-24 10:05:53'),
(111, '1120581953', 42, '2016-10-24 10:05:53'),
(112, '1120581953', 44, '2016-10-24 10:05:53'),
(113, '1120581953', 46, '2016-10-24 10:05:53'),
(114, '1120581953', 10, '2016-10-24 10:05:53'),
(115, '1120581953', 15, '2016-10-24 10:05:53'),
(116, '1120581953', 25, '2016-10-24 10:05:53'),
(117, '1120581953', 34, '2016-10-24 10:05:53'),
(118, '1120581953', 38, '2016-10-24 10:05:53'),
(119, '1120581953', 42, '2016-10-24 10:05:53'),
(120, '1120581953', 44, '2016-10-24 10:05:53'),
(121, '1120581953', 46, '2016-10-24 10:05:53'),
(122, '1120581953', 10, '2016-10-24 10:06:42'),
(123, '1120581953', 15, '2016-10-24 10:06:42'),
(124, '1120581953', 25, '2016-10-24 10:06:42'),
(125, '1120581953', 34, '2016-10-24 10:06:42'),
(126, '1120581953', 38, '2016-10-24 10:06:42'),
(127, '1120581953', 42, '2016-10-24 10:06:42'),
(128, '1120581953', 44, '2016-10-24 10:06:42'),
(129, '1120581953', 46, '2016-10-24 10:06:42'),
(130, '1120581953', 10, '2016-10-24 10:06:43'),
(131, '1120581953', 15, '2016-10-24 10:06:43'),
(132, '1120581953', 25, '2016-10-24 10:06:43'),
(133, '1120581953', 34, '2016-10-24 10:06:43'),
(134, '1120581953', 38, '2016-10-24 10:06:43'),
(135, '1120581953', 42, '2016-10-24 10:06:43'),
(136, '1120581953', 44, '2016-10-24 10:06:43'),
(137, '1120581953', 46, '2016-10-24 10:06:43'),
(138, '1120581953', 10, '2016-10-24 10:06:43'),
(139, '1120581953', 15, '2016-10-24 10:06:43'),
(140, '1120581953', 25, '2016-10-24 10:06:43'),
(141, '1120581953', 34, '2016-10-24 10:06:43'),
(142, '1120581953', 38, '2016-10-24 10:06:43'),
(143, '1120581953', 42, '2016-10-24 10:06:43'),
(144, '1120581953', 44, '2016-10-24 10:06:43'),
(145, '1120581953', 46, '2016-10-24 10:06:43'),
(146, '1120580717', 9, '2016-10-24 12:51:50'),
(147, '1120580717', 15, '2016-10-24 12:51:50'),
(148, '1120580717', 25, '2016-10-24 12:51:50'),
(149, '1120579462', 9, '2016-10-24 12:56:00'),
(150, '1120579462', 14, '2016-10-24 12:56:00'),
(151, '1120579462', 24, '2016-10-24 12:56:00'),
(152, '1120579462', 35, '2016-10-24 12:56:00'),
(153, '1120579462', 39, '2016-10-24 12:56:00'),
(154, '1120579462', 43, '2016-10-24 12:56:00'),
(155, '1120579462', 45, '2016-10-24 12:56:00'),
(156, '1234789450', 10, '2016-10-24 13:04:16'),
(157, '1234789450', 15, '2016-10-24 13:04:16'),
(158, '1234789450', 25, '2016-10-24 13:04:16'),
(159, '1234789450', 34, '2016-10-24 13:04:16'),
(160, '1234789450', 38, '2016-10-24 13:04:16'),
(161, '1234789450', 42, '2016-10-24 13:04:16'),
(162, '1234789450', 44, '2016-10-24 13:04:16'),
(163, '1234789450', 46, '2016-10-24 13:04:16'),
(164, '1120578956', 9, '2016-10-24 13:04:39'),
(165, '1120578956', 14, '2016-10-24 13:04:39'),
(166, '1120578956', 24, '2016-10-24 13:04:39'),
(167, '1120578956', 32, '2016-10-24 13:04:39'),
(168, '1120578956', 35, '2016-10-24 13:04:39'),
(169, '1120578956', 39, '2016-10-24 13:04:39'),
(170, '1120578956', 43, '2016-10-24 13:04:39'),
(171, '1120578956', 45, '2016-10-24 13:04:39'),
(172, '1120577148', 9, '2016-10-24 13:05:36'),
(173, '1120577148', 14, '2016-10-24 13:05:36'),
(174, '1120577148', 24, '2016-10-24 13:05:36'),
(175, '1120577148', 35, '2016-10-24 13:05:36'),
(176, '1120577148', 39, '2016-10-24 13:05:36'),
(177, '1120577148', 43, '2016-10-24 13:05:36'),
(178, '1120577148', 45, '2016-10-24 13:05:36'),
(179, '1120578783', 9, '2016-10-27 12:26:56'),
(180, '1120578783', 15, '2016-10-27 12:26:56'),
(181, '1120578783', 24, '2016-10-27 12:26:56'),
(182, '1120578783', 34, '2016-10-27 12:26:56'),
(183, '1120578783', 37, '2016-10-27 12:26:56'),
(184, '1120578783', 39, '2016-10-27 12:26:56'),
(185, '1120578783', 43, '2016-10-27 12:26:56'),
(186, '1120578783', 46, '2016-10-27 12:26:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_posibles_respuestas`
--

CREATE TABLE `tb_posibles_respuestas` (
  `id_posible_respuesta` int(11) NOT NULL,
  `texto_respuesta` varchar(100) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `id_pregunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_posibles_respuestas`
--

INSERT INTO `tb_posibles_respuestas` (`id_posible_respuesta`, `texto_respuesta`, `fecha_registro`, `id_pregunta`) VALUES
(9, 'Sí', '0000-00-00 00:00:00', 5),
(10, 'No', '0000-00-00 00:00:00', 5),
(14, 'Sí', '0000-00-00 00:00:00', 6),
(15, 'No', '0000-00-00 00:00:00', 6),
(24, 'Sí', '0000-00-00 00:00:00', 7),
(25, 'No', '0000-00-00 00:00:00', 7),
(32, 'Sí', '0000-00-00 00:00:00', 8),
(34, 'No', '0000-00-00 00:00:00', 8),
(35, 'Excelente', '0000-00-00 00:00:00', 9),
(36, 'Buena', '0000-00-00 00:00:00', 9),
(37, 'Regular', '0000-00-00 00:00:00', 9),
(38, 'Mala', '0000-00-00 00:00:00', 9),
(39, 'Sí', '0000-00-00 00:00:00', 10),
(42, 'No', '0000-00-00 00:00:00', 10),
(43, 'Sí', '0000-00-00 00:00:00', 11),
(44, 'No', '0000-00-00 00:00:00', 11),
(45, 'Sí', '0000-00-00 00:00:00', 12),
(46, 'No', '0000-00-00 00:00:00', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_preguntas`
--

CREATE TABLE `tb_preguntas` (
  `id_pregunta` int(11) NOT NULL,
  `texto_pregunta` varchar(200) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `id_encuesta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_preguntas`
--

INSERT INTO `tb_preguntas` (`id_pregunta`, `texto_pregunta`, `fecha_registro`, `id_encuesta`) VALUES
(5, '¿Exposena cumplió sus expectativas?', '0000-00-00 00:00:00', 1),
(6, '¿Los procesos técnicos desarrollados son pertinentes y contribuyen al desarrollo agropecuario de  la región?', '0000-00-00 00:00:00', 1),
(7, '¿Considera que la actividad le puede beneficiar y ser aplicada  en su vida laboral?', '0000-00-00 00:00:00', 1),
(8, '¿Le gustaría ser parte de un programa de formación del SENA? En caso de estar en uno omita la pregunta.', '0000-00-00 00:00:00', 1),
(9, '¿Cómo califica usted la experiencia en Exposena 2016?', '0000-00-00 00:00:00', 1),
(10, '¿Insentivaría a otras personas a ser partícipes de éste evento?', '0000-00-00 00:00:00', 1),
(11, '¿Las instalaciones son visualmente agradables y cómodas para el desarrollo de las actividades?', '0000-00-00 00:00:00', 1),
(12, '¿Los aprendices SENA  mostraron conocimientos suficientes para resolver las preguntas o inquietudes?', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_programas`
--

CREATE TABLE `tb_programas` (
  `cod_programa` int(11) NOT NULL,
  `programa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_roles`
--

CREATE TABLE `tb_roles` (
  `cod_rol` int(11) NOT NULL,
  `desc_rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_roles`
--

INSERT INTO `tb_roles` (`cod_rol`, `desc_rol`) VALUES
(1, 'Registrador'),
(2, 'Visitante'),
(3, 'Aprendiz'),
(4, 'Instructor'),
(5, 'Otro'),
(6, 'Administrativo-Sena'),
(7, 'Expositor'),
(8, 'Competidor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tipo_doc`
--

CREATE TABLE `tb_tipo_doc` (
  `cod_tipo_doc` int(11) NOT NULL,
  `desc_tipo_doc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_tipo_doc`
--

INSERT INTO `tb_tipo_doc` (`cod_tipo_doc`, `desc_tipo_doc`) VALUES
(1, 'CC'),
(2, 'TI'),
(3, 'Otro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_encuestas`
--
ALTER TABLE `tb_encuestas`
  ADD PRIMARY KEY (`id_encuesta`);

--
-- Indices de la tabla `tb_genero`
--
ALTER TABLE `tb_genero`
  ADD PRIMARY KEY (`cod_genero`),
  ADD KEY `idx_cod_genero` (`cod_genero`);

--
-- Indices de la tabla `tb_personas`
--
ALTER TABLE `tb_personas`
  ADD PRIMARY KEY (`num_doc`),
  ADD KEY `COD_TIPO_DOC` (`cod_tipo_doc`),
  ADD KEY `ROL` (`cod_rol`),
  ADD KEY `cod_genero` (`cod_genero`);

--
-- Indices de la tabla `tb_personas_registros`
--
ALTER TABLE `tb_personas_registros`
  ADD PRIMARY KEY (`cod_pers_reg`),
  ADD KEY `idx_registrador` (`identif_1`),
  ADD KEY `idx_registrado_` (`identif_2`);

--
-- Indices de la tabla `tb_personas_respuestas`
--
ALTER TABLE `tb_personas_respuestas`
  ADD PRIMARY KEY (`id_persona_respuesta`),
  ADD KEY `idx_posible_respuesta` (`id_posible_respuesta`),
  ADD KEY `idx_num_doc` (`num_doc`);

--
-- Indices de la tabla `tb_posibles_respuestas`
--
ALTER TABLE `tb_posibles_respuestas`
  ADD PRIMARY KEY (`id_posible_respuesta`),
  ADD KEY `idx_pregunta` (`id_pregunta`);

--
-- Indices de la tabla `tb_preguntas`
--
ALTER TABLE `tb_preguntas`
  ADD PRIMARY KEY (`id_pregunta`),
  ADD KEY `idx_encuesta` (`id_encuesta`);

--
-- Indices de la tabla `tb_programas`
--
ALTER TABLE `tb_programas`
  ADD PRIMARY KEY (`cod_programa`);

--
-- Indices de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`cod_rol`);

--
-- Indices de la tabla `tb_tipo_doc`
--
ALTER TABLE `tb_tipo_doc`
  ADD PRIMARY KEY (`cod_tipo_doc`),
  ADD KEY `idx_cod_tipo_doc` (`cod_tipo_doc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_encuestas`
--
ALTER TABLE `tb_encuestas`
  MODIFY `id_encuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tb_genero`
--
ALTER TABLE `tb_genero`
  MODIFY `cod_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `tb_personas_registros`
--
ALTER TABLE `tb_personas_registros`
  MODIFY `cod_pers_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3228;
--
-- AUTO_INCREMENT de la tabla `tb_personas_respuestas`
--
ALTER TABLE `tb_personas_respuestas`
  MODIFY `id_persona_respuesta` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT de la tabla `tb_posibles_respuestas`
--
ALTER TABLE `tb_posibles_respuestas`
  MODIFY `id_posible_respuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT de la tabla `tb_preguntas`
--
ALTER TABLE `tb_preguntas`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `tb_programas`
--
ALTER TABLE `tb_programas`
  MODIFY `cod_programa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `cod_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tb_tipo_doc`
--
ALTER TABLE `tb_tipo_doc`
  MODIFY `cod_tipo_doc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_personas`
--
ALTER TABLE `tb_personas`
  ADD CONSTRAINT `tb_personas_ibfk_1` FOREIGN KEY (`cod_tipo_doc`) REFERENCES `tb_tipo_doc` (`cod_tipo_doc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_personas_ibfk_2` FOREIGN KEY (`cod_rol`) REFERENCES `tb_roles` (`cod_rol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_personas_ibfk_3` FOREIGN KEY (`cod_genero`) REFERENCES `tb_genero` (`cod_genero`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_personas_registros`
--
ALTER TABLE `tb_personas_registros`
  ADD CONSTRAINT `fk_registrado_` FOREIGN KEY (`identif_2`) REFERENCES `tb_personas` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_registrador` FOREIGN KEY (`identif_1`) REFERENCES `tb_personas` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_personas_respuestas`
--
ALTER TABLE `tb_personas_respuestas`
  ADD CONSTRAINT `fk_num_doc` FOREIGN KEY (`num_doc`) REFERENCES `tb_personas` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_posible_respuesta` FOREIGN KEY (`id_posible_respuesta`) REFERENCES `tb_posibles_respuestas` (`id_posible_respuesta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_posibles_respuestas`
--
ALTER TABLE `tb_posibles_respuestas`
  ADD CONSTRAINT `fk_pregunta` FOREIGN KEY (`id_pregunta`) REFERENCES `tb_preguntas` (`id_pregunta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_preguntas`
--
ALTER TABLE `tb_preguntas`
  ADD CONSTRAINT `fk_encuesta` FOREIGN KEY (`id_encuesta`) REFERENCES `tb_encuestas` (`id_encuesta`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
