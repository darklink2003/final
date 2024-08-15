-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2020 a las 16:02:32
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_ser_qr_code_2016`
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
('-1120472505', 'Marlen', 'Vargas', 's', 's', 'phpqrcode/temp//test81b6c215eaab2b746b8d17b72b2fe7a2_2016_10_28_16_20_54camilo_f.png', '2016-10-28 09:20:53', 2, 1, 15, 0),
('-123', 'Natalia', 'Urrea', 's', 's', 'phpqrcode/temp//testb521479538cdc3073fe582ceb01ec24e_2016_10_28_17_43_47camilo_f.png', '2016-10-28 10:43:45', 2, 2, 15, 0),
('-1234', 'Ruben', 'Olmos', 's', 's', 'phpqrcode/temp//test3272f81e998999f479a54c5e60a0d942_2016_10_28_17_49_39camilo_f.png', '2016-10-28 10:49:37', 2, 2, 14, 0),
('-126876', 'Evan David', 'Rodriguez', 's', 's', NULL, '2016-10-28 11:33:54', 2, 2, 14, 0),
('1000128040', 'Andrea', 'Ariza', 's', 's', 'phpqrcode/temp//test2e1529d40323c74d1ec143003f5f94df_2016_10_28_18_45_22camilo_f.png', '2016-10-28 11:45:21', 2, 2, 15, 0),
('10002280503', 'Osmel', 'Vargas', 's', 's', 'phpqrcode/temp//test640cf75201449ade35f7764d5f8e9a52_2016_10_28_19_03_11camilo_f.png', '2016-10-28 12:03:09', 2, 1, 14, 0),
('1000291513', 'Isabel', 'Castaneda', 's', 's', 'phpqrcode/temp//test6dae0853f222ed64fba077c5635ffb31_2016_10_28_18_30_11camilo_f.png', '2016-10-28 11:30:09', 2, 2, 15, 0),
('1000383285', 'Juan Jose', 'Rivera Suarez', 's', 's', 'phpqrcode/temp//test8fae69ee31181c2d65bf6bdddeab7439_2016_10_28_18_29_15camilo_f.png', '2016-10-28 11:29:13', 2, 2, 14, 0),
('1000992472', 'Juana Valentina', 'Bazurto', 's', 's', 'phpqrcode/temp//testf54bea0f8cdf1ddaef7d752caa435231_2016_10_28_18_44_16camilo_f.png', '2016-10-28 11:44:14', 2, 2, 15, 0),
('1001044263', 'Karen Valentina', 'Rueda', 's', 's', 'phpqrcode/temp//test0db9d1fc91a38efd64f94f9731c08dec_2016_10_28_18_29_42camilo_f.png', '2016-10-28 11:29:40', 2, 2, 15, 0),
('1001116083', 'Sara', 'Palacios', 's', 's', 'phpqrcode/temp//tested44e4599102b29c3ca15479520b7c04_2016_10_28_18_32_03camilo_f.png', '2016-10-28 11:32:02', 2, 2, 15, 0),
('1001273119', 'Juan Camilo', 'Ardila', 's', 's', 'phpqrcode/temp//test314d3eb12c90810145d21cedd3133fa4_2016_10_28_18_45_48camilo_f.png', '2016-10-28 11:45:45', 2, 2, 14, 0),
('1001294614', 'Yenny', 'Sallejas', 's', 's', 'phpqrcode/temp//test65ef2d56b43d229da3e605fc0887d000_2016_10_28_19_41_07camilo_f.png', '2016-10-28 12:41:04', 2, 2, 15, 0),
('1001550374', 'Duvan', 'Mieles Regiã‘o', 's', 's', 'phpqrcode/temp//testb08cf3037ffc7506638c2a5989b0001f_2016_10_28_18_26_39camilo_f.png', '2016-10-28 10:59:27', 2, 1, 14, 0),
('1002206334', 'Katherin', 'Gomez', 's', 's', 'phpqrcode/temp//test60a536d00609687eefdfd5f373df8048_2016_10_28_18_31_45camilo_f.png', '2016-10-28 11:31:43', 2, 2, 15, 0),
('1002777576', 'Oscar Alejandro', 'Gomez Galindez', 's', 's', 'phpqrcode/temp//test089bd93c1d913513da0ff21e0477dcc9_2016_10_28_18_32_20camilo_f.png', '2016-10-28 11:32:18', 3, 2, 14, 0),
('1002962995', 'Jhon', 'Barrientos', 's', 's', 'phpqrcode/temp//test07b56e65af1baf4ce150456f0683b010_2016_10_28_18_44_20camilo_f.png', '2016-10-28 11:44:17', 2, 2, 14, 0),
('1004418326', 'Angie Liseth', 'Garzon Palacios', 's', 's', 'phpqrcode/temp//test36056434586da02b99acb1a8d6fc9b3f_2016_10_28_20_10_14camilo_f.png', '2016-10-28 13:10:12', 2, 1, 15, 0),
('1005131926', 'Camilo', 'Delgadillo', 's', 's', 'phpqrcode/temp//test8197cc4dddd43561ea1a43d12876ca16_2016_10_28_17_43_00camilo_f.png', '2016-10-28 10:42:59', 2, 2, 14, 0),
('1005712579', 'Andres Felipe', 'Gutierrez Figueroa', 's', 's', 'phpqrcode/temp//testeb890ee93a977a7c20fff881ba053ab3_2016_10_28_18_31_23camilo_f.png', '2016-10-28 11:31:21', 3, 2, 14, 0),
('1006107007', 'Orlando', 'Montenegro', 's', 's', 'phpqrcode/temp//test3a22ef5bea361dc557aab2b161896d07_2016_10_28_18_31_18camilo_f.png', '2016-10-28 11:31:16', 2, 2, 14, 0),
('1006432178', 'Yulior', 'Soto', 's', 's', 'phpqrcode/temp//test7c6be032613a83c2602f9e7a7973997f_2016_10_28_17_09_50camilo_f.png', '2016-10-28 10:09:48', 2, 1, 14, 0),
('1006534731', 'Angela', 'Barrera Zamora', 's', 's', 'phpqrcode/temp//test23faedd84172abf47cd9157c8abbd2a0_2016_10_28_19_38_12camilo_f.png', '2016-10-28 12:38:08', 2, 1, 15, 0),
('1006700264', 'Cesar', 'Puin Nieves', 's', 's', 'phpqrcode/temp//test04c3bc462d8da26aae2af1f8bf2655e3_2016_10_28_19_09_51camilo_f.png', '2016-10-28 07:47:50', 1, 1, 14, 0),
('1006700269', 'Faizuly', 'Baron', 's', 's', 'phpqrcode/temp//test606e871e1712e829995bb9fa841d479f_2016_10_28_19_41_18camilo_f.png', '2016-10-28 12:41:15', 2, 2, 15, 0),
('1006700560', 'Kevin Alexander', 'Suarez Orjuela', 's', 's', 'phpqrcode/temp//test2ccc7faaeb57b2349ea1d3384c9355e2_2016_10_28_18_45_51camilo_f.png', '2016-10-28 11:45:48', 3, 2, 14, 0),
('1006700605', 'Joseph', 'Prieto', 's', 's', 'phpqrcode/temp//testc63a3c722a699a1bc6b1ee7ed623b163_2016_10_28_18_35_19camilo_f.png', '2016-10-28 11:35:17', 2, 2, 14, 0),
('1006700669', 'Yesmi Yiced', 'Vanegas Lopez', 's', 's', 'phpqrcode/temp//teste17bebb301897a28e5106be3a45c65c1_2016_10_28_17_44_29camilo_f.png', '2016-10-28 10:44:26', 2, 2, 15, 0),
('1006700774', 'Juan Felipe', 'Ardila Gomez', 's', 's', 'phpqrcode/temp//test0e4041b45f91f350a26d20dd43f0e194_2016_10_28_18_43_27camilo_f.png', '2016-10-28 11:43:24', 3, 2, 14, 0),
('1006700778', 'Nallely', 'Pachon', 's', 's', 'phpqrcode/temp//test95c6ee1b0f396d58357caf7ea826f079_2016_10_28_18_32_33camilo_f.png', '2016-10-28 11:32:29', 2, 2, 15, 0),
('1006700868', 'Edwin', 'Pineros', 's', 's', 'phpqrcode/temp//test62df4eec63eb5cf6e23417a33f092338_2016_10_28_18_21_09camilo_f.png', '2016-10-28 11:21:06', 2, 1, 14, 0),
('1006700882', 'Yerison Alberto', 'Daza Daza', 's', 's', 'phpqrcode/temp//test3c9fb5ad324797559cbca7c8b8363352_2016_10_28_19_34_53camilo_f.png', '2016-10-28 12:34:51', 2, 1, 14, 0),
('1006701027', 'Yenny Mabel', 'Cruz Rodriguez', 's', 's', 'phpqrcode/temp//test9cb576146b769fb002cd8b3951ef7269_2016_10_28_20_05_24camilo_f.png', '2016-10-28 13:05:22', 3, 1, 15, 0),
('1006701178', 'Michel', 'Suarez', 's', 's', 'phpqrcode/temp//test22e7319e36c8ee0207a4ddaf88e6bf3d_2016_10_28_18_44_06camilo_f.png', '2016-10-28 11:44:04', 2, 2, 15, 0),
('1006701228', 'Angie Camila', 'Beltran Suarez', 's', 's', 'phpqrcode/temp//teste0a2ba61d2ccc9b41803cae534c6db2c_2016_10_28_20_18_42camilo_f.png', '2016-10-28 13:18:25', 6, 2, 15, 0),
('1006701449', 'Johan', 'Castaneda', 's', 's', 'phpqrcode/temp//test1c75d3ae749bfa4f2b00ca12f8c8ec21_2016_10_28_18_30_33camilo_f.png', '2016-10-28 11:30:32', 2, 2, 14, 0),
('1006701492', 'Fabian', 'Marin', 's', 's', 'phpqrcode/temp//testf0fefa2a9d3b5bf8d49eab62e553e2f6_2016_10_28_19_03_01camilo_f.png', '2016-10-28 12:02:58', 2, 1, 14, 0),
('1006701905', 'Samanta', 'Vasquez', 's', 's', 'phpqrcode/temp//testfc77a08298733bd43bf80c06ecfff9b1_2016_10_28_17_59_10camilo_f.png', '2016-10-28 10:54:44', 2, 2, 15, 0),
('1006702165', 'Andres', 'Rodrigues', 's', 's', 'phpqrcode/temp//test8f3048a1b66d5350e04c1d81769bedcb_2016_10_28_18_30_16camilo_f.png', '2016-10-28 11:30:14', 2, 2, 14, 0),
('1006702229', 'Jhon Edwar', 'Sabedra Rinta', 's', 's', 'phpqrcode/temp//test479582b79b1c8195a4e17513ad84f53d_2016_10_28_18_30_00camilo_f.png', '2016-10-28 11:29:57', 3, 2, 14, 0),
('1006723333', 'Laura Nathalia', 'Mejia Mogollon', 's', 's', 'phpqrcode/temp//testbb6e35a0c0d3cde0067dce7083425788_2016_10_28_18_33_49camilo_f.png', '2016-10-28 11:33:48', 2, 2, 15, 0),
('1006723354', 'Daniela', 'Urrea', 's', 's', 'phpqrcode/temp//testc5d2c38cb0f10cf84f5014e6630e1ce7_2016_10_28_17_43_22camilo_f.png', '2016-10-28 10:43:21', 2, 2, 15, 0),
('1006723355', 'Ricardo', 'Carvajar', 's', 's', 'phpqrcode/temp//test1b1704dede4fc423cfe4a266ef796b8a_2016_10_28_18_43_27camilo_f.png', '2016-10-28 11:43:25', 2, 2, 14, 0),
('1006723418', 'Disney Tatiana', 'Aguirre Velasquez', 's', 's', 'phpqrcode/temp//testc65387b9f1bf2cf3c645efde10b784ff_2016_10_28_20_04_29camilo_f.png', '2016-10-28 13:04:23', 2, 1, 15, 0),
('1006723503', 'Elizues', 'Gamboa Duarte', 's', 's', 'phpqrcode/temp//test988f0580d46365ec023fb429fa2f7d3b_2016_10_28_19_52_40camilo_f.png', '2016-10-28 12:52:35', 2, 1, 14, 0),
('1006723736', 'Laura Nathalia', 'Mejia', 's', 's', 'phpqrcode/temp//test2966fbb8919e87eae191471c0332e9ea_2016_10_28_18_41_59camilo_f.png', '2016-10-28 11:41:57', 2, 2, 15, 0),
('1006723759', 'Andres Santiago', 'Bohorquez', 's', 's', 'phpqrcode/temp//test6ce6983485988466013c0967f2ef0a1e_2016_10_28_18_26_54camilo_f.png', '2016-10-28 11:26:53', 2, 2, 14, 0),
('1006775966', 'Alejandra', 'Fragua', 's', 's', 'phpqrcode/temp//testbf53ef211b224849f3b3007453def584_2016_10_28_16_43_07camilo_f.png', '2016-10-28 09:43:04', 2, 2, 15, 0),
('1006776082', 'Windy Paola', 'Jimenez Casallas', 's', 's', 'phpqrcode/temp//testbff8933379bdc432d10df9ffcc2c2ba9_2016_10_28_01_07_15camilo_f.png', '2016-10-27 18:05:28', 3, 2, 15, 0),
('1006782800', 'Lady Millena', 'Martinez Pulido', 's', 's', 'phpqrcode/temp//testec610fa17ec2f9131193d56c4bf7cb54_2016_10_28_20_00_21camilo_f.png', '2016-10-28 13:00:19', 3, 1, 15, 0),
('1006782873', 'Haider', 'Diaz', 's', 's', 'phpqrcode/temp//test9d1b6d0f1ee43a6892f429dfe01d89c1_2016_10_28_18_48_03camilo_f.png', '2016-10-28 11:48:01', 2, 1, 14, 0),
('1006782887', 'Edinson', 'Zamudio', 's', 's', 'phpqrcode/temp//testfc273b9eeffb36cfc06ad4782bf1ea6b_2016_10_28_16_55_14camilo_f.png', '2016-10-28 09:55:12', 2, 1, 14, 0),
('1006782966', 'Nasly Norely', 'Bermudez Romero', 's', 's', 'phpqrcode/temp//testdc08861ae1976744975c0a317b1125f9_2016_10_28_18_25_37camilo_f.png', '2016-10-28 11:25:35', 3, 1, 15, 0),
('1006783179', 'Crisma', 'Lesmes', 's', 's', 'phpqrcode/temp//test8c2550e2744cfad65241c1d1960cc754_2016_10_28_17_09_59camilo_f.png', '2016-10-28 10:09:57', 3, 1, 15, 0),
('1006783343', 'Jency Dayana', 'Pinto', 's', 's', 'phpqrcode/temp//testfb1d566097e5d754ea9dd68bb6eaf558_2016_10_28_15_52_30camilo_f.png', '2016-10-28 08:52:27', 4, 2, 15, 0),
('1006783569', 'Mercy', 'Rivera', 's', 's', 'phpqrcode/temp//test93e626d3378bb9380ff8c94d1a5c1cef_2016_10_28_20_07_11camilo_f.png', '2016-10-28 13:07:09', 2, 2, 15, 0),
('1006811574', 'Angie Paola', 'Aranda', 's', 's', 'phpqrcode/temp//test9d83649f09dfd3089086f4cb1f2bfb55_2016_10_28_20_05_20camilo_f.png', '2016-10-28 13:05:17', 2, 1, 15, 0),
('1006811621', 'Sulma Carolina', 'Vega', 's', 's', 'phpqrcode/temp//testb51345b52719b82aa38fc242e5541457_2016_10_28_19_59_32camilo_f.png', '2016-10-28 12:59:30', 2, 2, 15, 0),
('1006840369', 'Samira Selenia', 'Leon Diaz', 's', 's', 'phpqrcode/temp//test1731c1ccfd6b111e0ced5b56757a3e49_2016_10_28_19_38_40camilo_f.png', '2016-10-28 12:38:38', 2, 1, 15, 0),
('1006840473', 'Cherly', 'Garcia', 's', 's', 'phpqrcode/temp//test4ac9aae46cad029dee3b5d37e9ad91a1_2016_10_28_19_55_50camilo_f.png', '2016-10-28 12:55:46', 2, 1, 15, 0),
('1006840496', 'Kennet', 'Cifuentes Beltran', 's', 's', 'phpqrcode/temp//testfe86b4caa532343cf18c975e133aa03a_2016_10_28_19_58_32camilo_f.png', '2016-10-28 12:58:29', 2, 2, 14, 0),
('1006840619', 'Luz Adriana', 'Hernandez', 's', 's', 'phpqrcode/temp//test6a791c6611dec04814bc3cd9fc8a993d_2016_10_28_19_59_36camilo_f.png', '2016-10-28 12:59:33', 2, 1, 15, 0),
('1006874359', 'Juan Felipe', 'Restrepo', 's', 's', 'phpqrcode/temp//testd0bb3c16001cfd788256be3a8c5395e3_2016_10_28_18_31_22camilo_f.png', '2016-10-28 11:31:19', 2, 2, 14, 0),
('1006877813', 'Paula', 'Calzada', 's', 's', 'phpqrcode/temp//teste4ed1e7cd6a81843d746e1fdcec1aedd_2016_10_28_18_26_10camilo_f.png', '2016-10-28 11:26:08', 2, 2, 15, 0),
('1006903378', 'Daniela Fernanda', 'Hariza Pardo', 's', 's', 'phpqrcode/temp//testc41f4d4119e31bc1f183320a0848557a_2016_10_28_20_18_36camilo_f.png', '2016-10-28 13:18:34', 3, 2, 14, 0),
('1006981291', 'Andres', 'Ramirez', 's', 's', 'phpqrcode/temp//testfe896b6c9452692adf5ee0f332e4c9e2_2016_10_28_17_42_43camilo_f.png', '2016-10-28 10:42:41', 2, 2, 14, 0),
('1007097819', 'Yessica Alegandra', 'Ruales', 's', 's', 'phpqrcode/temp//test3e42b45854f8c7162fa2dba98b9d8a65_2016_10_28_20_05_42camilo_f.png', '2016-10-28 13:05:40', 3, 1, 15, 0),
('1007244157', 'Yeiner Fabian', 'Roa Astroz', 's', 's', 'phpqrcode/temp//test00103156a7d00a3bf7453c27501f8b57_2016_10_28_20_02_18camilo_f.png', '2016-10-28 13:02:16', 2, 2, 14, 0),
('1007245361', 'Natalia', 'Urrea', 's', 's', 'phpqrcode/temp//test7f46688121ad70cebb37811726838832_2016_10_28_17_52_41camilo_f.png', '2016-10-28 10:50:29', 2, 2, 15, 0),
('1007292581', 'Audri', 'Lancheros', 's', 's', 'phpqrcode/temp//testade31191a1c5fa824814a7f76be878f9_2016_10_28_18_52_04camilo_f.png', '2016-10-28 11:52:02', 2, 2, 15, 0),
('1007293033', 'Nilson Gulian', 'Mejia', 's', 's', 'phpqrcode/temp//test9f045dff6a32e9c47acb564203831c49_2016_10_28_19_37_58camilo_f.png', '2016-10-28 12:37:56', 2, 1, 14, 0),
('1007293077', 'Yeison', 'Salgado', 's', 's', 'phpqrcode/temp//test676fc2cbbf8bfbf5fef2743d3ebdb9cc_2016_10_28_15_11_22camilo_f.png', '2016-10-28 08:11:17', 1, 1, 14, 0),
('1007293116', 'Yeiny Milena', 'Martinez', 's', 's', 'phpqrcode/temp//test8ee871e1687311fffd8bf51eebe39bdd_2016_10_28_16_54_08camilo_f.png', '2016-10-28 09:54:05', 2, 1, 15, 0),
('1007293278', 'Deisy', 'Ortiz', 's', 's', 'phpqrcode/temp//testf1824607df456d5fb58feb0b3d2bc59d_2016_10_28_17_47_37camilo_f.png', '2016-10-28 10:47:35', 2, 2, 15, 0),
('1007293399', 'Karol', 'Hernandez', 's', 's', 'phpqrcode/temp//testc895e9ff97f705b8eba3b46fa6845cfb_2016_10_28_18_31_11camilo_f.png', '2016-10-28 11:31:09', 2, 2, 15, 0),
('1007293416', 'Linda Paola', 'Bermudez Hernandez', 's', 's', 'phpqrcode/temp//testacd2708ae10c34c548137d22d9487a3f_2016_10_28_01_12_22camilo_f.png', '2016-10-27 18:11:49', 3, 2, 15, 0),
('1007293505', 'Sebastian', 'Castaneda', 's', 's', 'phpqrcode/temp//test9273f92b283eeb7b5a2a4015956ca2bb_2016_10_28_18_35_32camilo_f.png', '2016-10-28 11:35:30', 3, 2, 14, 0),
('1007293586', 'Marisol', 'Vasquez', 's', 's', 'phpqrcode/temp//test120f933d31016d96169e83bcef013158_2016_10_28_19_17_32camilo_f.png', '2016-10-28 12:17:29', 2, 2, 15, 0),
('1007293633', 'Sebastian', 'Duarte', 's', 's', 'phpqrcode/temp//test222fa6418199fdf77fb7e6157f6b34b5_2016_10_28_17_14_08camilo_f.png', '2016-10-28 10:14:07', 2, 1, 14, 0),
('1007293647', 'Byro Camilo', 'Diaz Gaitan', 's', 's', 'phpqrcode/temp//teste9c21b742962fe6376571076a112a463_2016_10_28_18_28_53camilo_f.png', '2016-10-28 11:28:50', 3, 2, 14, 0),
('1007293889', 'Laura Camila', 'Roa Perez', 's', 's', 'phpqrcode/temp//teste286eaa7718efcc2939fe483db881621_2016_10_28_16_10_17camilo_f.png', '2016-10-28 09:10:10', 3, 2, 15, 0),
('1007293915', 'Diego', 'Alvarez Cardenas', 's', 's', 'phpqrcode/temp//testc7222f07571ec4c75c2c36595b99c0e5_2016_10_28_01_07_51camilo_f.png', '2016-10-27 18:07:47', 3, 2, 14, 0),
('1007293922', 'Duvan Antonio', 'Lopez Acosta', 's', 's', 'phpqrcode/temp//testae2d370ee0d5600ca79b01a59f965e5e_2016_10_28_15_58_34camilo_f.png', '2016-10-28 08:58:32', 2, 1, 14, 0),
('1007294145', 'Sergio Alejandro', 'Garnica Cuesta', 's', 's', 'phpqrcode/temp//test63d35178330f23401f71e4fe68cf3544_2016_10_28_15_06_42camilo_f.png', '2016-10-28 07:48:00', 1, 2, 14, 0),
('1007294462', 'Laura Valentina', 'Valencia', 's', 's', 'phpqrcode/temp//test9a7e513e3a9f3b1c53ac08d89e4862ea_2016_10_28_16_43_33camilo_f.png', '2016-10-28 09:43:30', 2, 2, 15, 0),
('1007294478', 'Alejandro', 'Suarez', 's', 's', 'phpqrcode/temp//test0306ad08482b70f7bdccede724d41367_2016_10_28_18_23_11camilo_f.png', '2016-10-28 11:23:09', 2, 2, 14, 0),
('1007294499', 'Yeimy', 'Novoa Montenegro', 's', 's', 'phpqrcode/temp//testfcdc1fe73b494d22fb47b24760ca2946_2016_10_28_20_12_30camilo_f.png', '2016-10-28 13:12:27', 2, 2, 15, 0),
('1007294508', 'Alejandra', 'Garcia', 's', 's', 'phpqrcode/temp//test575301ca5065f21b5871bdf03a6e1594_2016_10_28_17_13_44camilo_f.png', '2016-10-28 10:13:42', 2, 2, 15, 0),
('1007294631', 'Milton', 'Javier', 's', 's', 'phpqrcode/temp//test98263bea5ccc32caac7df84c41d9e957_2016_10_28_17_35_36camilo_f.png', '2016-10-28 10:35:35', 2, 2, 14, 0),
('1007294632', 'Dayana Angelica', 'Tejeiro', 's', 's', 'phpqrcode/temp//test2a7d830bacd3bf6665213da071e20c51_2016_10_28_19_19_10camilo_f.png', '2016-10-28 12:18:52', 3, 2, 15, 0),
('1007294697', 'Julieth', 'Cardona', 's', 's', 'phpqrcode/temp//test1246584f1420b44c6967392440d8e076_2016_10_28_18_24_16camilo_f.png', '2016-10-28 11:24:14', 2, 2, 15, 0),
('1007294784', 'Yeison', 'Fajardo', 's', 's', 'phpqrcode/temp//testdbb6d587cadc62e523eb13fabc6dab23_2016_10_28_17_11_22camilo_f.png', '2016-10-28 10:11:20', 2, 2, 14, 0),
('1007294801', 'Maria Alejandra', 'Lopez Tabares', 's', 's', 'phpqrcode/temp//test12f46d8c7e47f0ae5e4268b15fa693b6_2016_10_28_20_01_44camilo_f.png', '2016-10-28 13:01:42', 3, 2, 15, 0),
('1007294960', 'Luisa Fernanda', 'Jaramillo Diaz', 's', 's', 'phpqrcode/temp//testd69f0851b790cc3f9f95c8ed82dc97af_2016_10_28_18_34_57camilo_f.png', '2016-10-28 11:34:55', 2, 2, 15, 0),
('1007421232', 'Jhon Faiber', 'Avila', 's', 's', 'phpqrcode/temp//testa1321f5e66624ce19c12970ccac2f70f_2016_10_28_18_23_27camilo_f.png', '2016-10-28 11:23:25', 2, 2, 14, 0),
('1007421319', 'Laura Fernada', 'Lopez', 's', 's', 'phpqrcode/temp//test38537146d882152ac5451575fe7e8996_2016_10_28_17_43_37camilo_f.png', '2016-10-28 10:43:35', 2, 2, 15, 0),
('1007584840', 'Camila', 'Gomez Pena', 's', 's', 'phpqrcode/temp//test2aabde7bcc1bcb5172be7905a85dbca1_2016_10_28_18_26_37camilo_f.png', '2016-10-28 11:26:36', 2, 2, 15, 0),
('1007666821', 'Yezer', 'Calderon Castro', 's', 's', 'phpqrcode/temp//test3697e37370ef5ae9b0fe960356b3b048_2016_10_28_17_42_42camilo_f.png', '2016-10-28 10:42:41', 2, 2, 14, 0),
('100793802', 'Claudia', 'Riveros', 's', 's', 'phpqrcode/temp//testf0fc60a2809a37344bd496a37db67f15_2016_10_28_17_44_30camilo_f.png', '2016-10-28 10:44:28', 2, 2, 15, 0),
('1009273357', 'Brayan', 'Franco', 's', 's', 'phpqrcode/temp//test82261e0d320e21685ee1e6b40591f6f3_2016_10_28_19_19_49camilo_f.png', '2016-10-28 12:19:47', 2, 2, 14, 0),
('10097828', 'Jairo Duque', 'Garvez', 's', 's', 'phpqrcode/temp//test89ef00de7b394894cfbe28f591d5ac4d_2016_10_28_16_29_48camilo_f.png', '2016-10-28 09:29:47', 2, 1, 14, 0),
('1010091057', 'Brayan', 'Inojosa Inojosa', 's', 's', 'phpqrcode/temp//testcea29de753702125518dbb6d1147ce5a_2016_10_28_19_42_45camilo_f.png', '2016-10-28 12:42:43', 2, 1, 14, 0),
('1010116654', 'Selena', 'Molina', 's', 's', 'phpqrcode/temp//testa61ab9676136924e520c576b63a98818_2016_10_28_19_25_38camilo_f.png', '2016-10-28 12:25:37', 2, 1, 15, 0),
('1014251183', 'Helber', 'Mahecha', 's', 's', 'phpqrcode/temp//test9342d6c3c320f691563f0dbff055a218_2016_10_28_18_59_46camilo_f.png', '2016-10-28 11:59:44', 2, 1, 14, 0),
('10159993012', 'Juan Felipe', 'Castro Sabogal', 's', 's', 'phpqrcode/temp//testa8b90f5ad5b2eb000d6d2a0761706d61_2016_10_28_18_44_43camilo_f.png', '2016-10-28 11:44:40', 3, 2, 14, 0),
('1020581207', 'Sharon Dayana', 'Guerrero Rodriguez', 's', 's', 'phpqrcode/temp//testbf59fe006faefdea9f84b01d54dbffd4_2016_10_28_20_01_34camilo_f.png', '2016-10-28 13:01:33', 2, 1, 15, 0),
('1027890178', 'Yaneida', 'Mancada', 's', 's', 'phpqrcode/temp//test356b413a55a4e97a81b2ca1b9cc0422e_2016_10_28_19_55_00camilo_f.png', '2016-10-28 12:54:57', 2, 2, 15, 0),
('1027890778', 'Yaneida', 'Moncada Restrepo', 's', 's', 'phpqrcode/temp//testd059e0bc2795472afb53cda44487975d_2016_10_28_20_12_25camilo_f.png', '2016-10-28 13:12:22', 3, 1, 15, 0),
('1030683631', 'Daniela', 'Bentancourt Ramirez', 's', 's', 'phpqrcode/temp//test484ad809bea62606338c952e10b944af_2016_10_28_20_11_38camilo_f.png', '2016-10-28 13:11:35', 2, 1, 15, 0),
('1032396776', 'Adriana', 'Garcia', 's', 's', 'phpqrcode/temp//test2a1239562badda13d1f9fd024ff1f716_2016_10_28_18_02_17camilo_f.png', '2016-10-28 11:02:15', 2, 1, 15, 0),
('103889097', 'Carlos Andres', 'Hinestroza Murillo', 's', 's', 'phpqrcode/temp//testa88c678cb4005ffee45afa6efab70e80_2016_10_28_19_54_37camilo_f.png', '2016-10-28 12:54:35', 2, 1, 14, 0),
('1045486787', 'Carlos Analias', 'Molina Romero', 's', 's', 'phpqrcode/temp//test52a431fcf9a4deeff35b29583e1531c6_2016_10_28_17_59_20camilo_f.png', '2016-10-28 10:59:18', 3, 1, 14, 0),
('1051502051', 'Marcela', 'Martinez', 's', 's', 'phpqrcode/temp//testf0ca487491ae6f81218b0dfb4e5a05e9_2016_10_28_16_16_13camilo_f.png', '2016-10-28 09:16:11', 3, 1, 15, 0),
('1052070327', 'Deiber Manuel', 'Martinez', 's', 's', 'phpqrcode/temp//testbf4071f836e27ac53da2a1445e82d85b_2016_10_28_18_01_53camilo_f.png', '2016-10-28 11:01:52', 3, 1, 14, 0),
('1052400689', 'Lesdy', 'Carrillo', 's', 's', 'phpqrcode/temp//test8ff3c3d440c39a88370f02dc840ae5ed_2016_10_28_18_59_31camilo_f.png', '2016-10-28 11:59:30', 2, 1, 15, 0),
('1053797229', 'Catalina', 'Oidor Garcia', 's', 's', 'phpqrcode/temp//teste693b3fbb66c69ffd35ee2ddce39116a_2016_10_28_18_10_06camilo_f.png', '2016-10-28 11:10:05', 6, 1, 15, 0),
('1055313237', 'Mary Luz', 'Gutierrez Piragauta', 's', 's', 'phpqrcode/temp//test78ce439ff9c4131151dc6510ec175a74_2016_10_28_20_17_08camilo_f.png', '2016-10-28 13:17:06', 3, 1, 15, 0),
('1060416324', 'Yermison', 'Valencia', 's', 's', 'phpqrcode/temp//testf53b0e0badfa28e74a2345afe07b9dbf_2016_10_28_17_59_44camilo_f.png', '2016-10-28 10:59:42', 2, 1, 14, 0),
('1065863463', 'Carlos', 'Perez', 's', 's', 'phpqrcode/temp//test2fee32c7751ed4c86df7a485a75af621_2016_10_28_18_22_21camilo_f.png', '2016-10-28 11:22:20', 2, 1, 14, 0),
('106782906', 'Ludy', 'Melo', 's', 's', 'phpqrcode/temp//test716502e74873b2a9f5c6e98acccf2cd0_2016_10_28_16_55_01camilo_f.png', '2016-10-28 09:55:00', 2, 2, 15, 0),
('1075253823', 'Ricardo', 'Paredes', 's', 's', 'phpqrcode/temp//test47dc6652be4ba9b7f0e61549a8689dd4_2016_10_28_17_53_39camilo_f.png', '2016-10-28 10:53:36', 2, 1, 14, 0),
('1076385282', 'Maritza', 'Sanchez', 's', 's', 'phpqrcode/temp//test2d7d79764709eefd007bb6bbd085fe19_2016_10_28_19_53_21camilo_f.png', '2016-10-28 12:53:19', 2, 1, 15, 0),
('1095804202', 'Deimi Lizeth', 'Gomez Diaz', 's', 's', 'phpqrcode/temp//testb14d6509e1b099baedfc69dcddf30a16_2016_10_28_01_06_13camilo_f.png', '2016-10-27 18:05:14', 1, 1, 15, 0),
('1108150983', 'Sandra Marcela', 'Ortiz Martinez', 's', 's', 'phpqrcode/temp//test89494de4f4b57e6b93f9a39c77c3ae56_2016_10_28_18_46_06camilo_f.png', '2016-10-28 11:46:04', 2, 1, 15, 0),
('1109004047', 'Yeison', 'Arena Valencia', 's', 's', 'phpqrcode/temp//testc83e555d5007b95f11283448125314c4_2016_10_28_18_01_15camilo_f.png', '2016-10-28 11:01:13', 3, 1, 14, 0),
('1115185383', 'Sergio', 'Gonzalez', 's', 's', 'phpqrcode/temp//test7aede1f26f710f2300639485559d7682_2016_10_28_19_02_16camilo_f.png', '2016-10-28 12:02:15', 2, 1, 14, 0),
('1118288078', 'Yeimi', 'Sanchez', 's', 's', 'phpqrcode/temp//testd7f0b764bb07bc7073387692594b9ef0_2016_10_28_17_40_06camilo_f.png', '2016-10-28 10:40:05', 2, 1, 15, 0),
('1118837841', 'Kelly', 'Rojas', 's', 's', 'phpqrcode/temp//testacbb0c19fa5aa031d981191ad1f7e17f_2016_10_28_17_39_42camilo_f.png', '2016-10-28 10:39:41', 2, 1, 15, 0),
('1120160601', 'Yenny', 'Salazar Cano', 's', 's', 'phpqrcode/temp//test4fb657a5e2ae5605da031aecadfa78fd_2016_10_28_20_07_26camilo_f.png', '2016-10-28 13:07:23', 2, 1, 15, 0),
('1120339882', 'Felipe', 'Mejia', 's', 's', 'phpqrcode/temp//testbe8c0a3e0af5e973563dfc3a544ddec3_2016_10_28_17_57_52camilo_f.png', '2016-10-28 10:57:50', 2, 2, 14, 0),
('1120354303', 'Ginna Alejandra', 'Alvarez Vanegas', 's', 's', 'phpqrcode/temp//testaba3a8c86d93da8366614fe0bcedc0c7_2016_10_28_18_48_40camilo_f.png', '2016-10-28 11:48:37', 2, 2, 15, 0),
('1120357864', 'Yenni Melissa', 'Trujillo', 's', 's', 'phpqrcode/temp//test6ac73f3527c32dcc5721af28adecf3a6_2016_10_28_16_37_13camilo_f.png', '2016-10-28 09:37:11', 2, 1, 15, 0),
('1120360446', 'Hilder', 'Adamez', 's', 's', 'phpqrcode/temp//test867d87f6b25f3424700cc4fb7154bb6c_2016_10_28_20_16_26camilo_f.png', '2016-10-28 13:16:24', 3, 1, 14, 0),
('1120384280', 'Dania', 'Tabare', 's', 's', 'phpqrcode/temp//test2b93298bb38304a60f3aa5db77edf04a_2016_10_28_19_54_34camilo_f.png', '2016-10-28 12:54:32', 2, 1, 15, 0),
('1120472505', 'Marlen', 'Vargas', 's', 's', 'phpqrcode/temp//testcc0d09c14adbf54acb0859a309f0d6db_2016_10_28_16_23_04camilo_f.png', '2016-10-28 09:23:02', 2, 1, 15, 0),
('1120558432', 'Yordan', 'Martinez', 's', 's', 'phpqrcode/temp//testdf3e3c72d4ce520dd907db0d5ef08d30_2016_10_28_18_20_17camilo_f.png', '2016-10-28 11:20:16', 3, 1, 14, 0),
('1120559727', 'Lina Marcela', 'Beltran', 's', 's', 'phpqrcode/temp//test704312ae6d99e55f744442c71a54b5f5_2016_10_28_16_46_13camilo_f.png', '2016-10-28 09:46:11', 2, 2, 15, 0),
('1120559879', 'Edison Alejandro', 'Sanchez Diaz', 's', 's', 'phpqrcode/temp//test0c87e976d026745c55d1656dc6b443f8_2016_10_28_18_19_57camilo_f.png', '2016-10-28 11:19:55', 4, 1, 14, 0),
('1120560510', 'Ana Mariceli', 'Rinta', 's', 's', 'phpqrcode/temp//test44ca98e7f53ac01b3ac6e29e2c1fc09d_2016_10_28_20_14_11camilo_f.png', '2016-10-28 13:14:09', 2, 1, 15, 0),
('1120560601', 'Yenny', 'Salazar Cano', 's', 's', 'phpqrcode/temp//testd52d2cda5f5a08ada2e877bc797641b8_2016_10_28_20_07_54camilo_f.png', '2016-10-28 13:07:52', 2, 1, 15, 0),
('1120560996', 'Marco Antonio', 'Cordero', 's', 's', 'phpqrcode/temp//test724018ccc096a0745e0e720b5afef9ad_2016_10_28_18_02_23camilo_f.png', '2016-10-28 11:02:21', 2, 1, 14, 0),
('1120561068', 'Deisy', 'Aguirre', 's', 's', 'phpqrcode/temp//testce84b1b21f471a97abddda2e4213ce91_2016_10_28_16_52_50camilo_f.png', '2016-10-28 09:52:45', 2, 1, 15, 0),
('1120561654', 'Yenifer', 'Hernandez', 's', 's', 'phpqrcode/temp//testd1e382be62854008d433f9d5dc7b648f_2016_10_28_16_24_16camilo_f.png', '2016-10-28 09:24:10', 2, 1, 15, 0),
('1120561822', 'Elena', 'Giraldo', 's', 's', 'phpqrcode/temp//testb03df7814e6569548be166b6b61b8527_2016_10_28_17_39_00camilo_f.png', '2016-10-28 10:38:58', 2, 1, 15, 0),
('1120562142', 'Sandra Milena', 'Garcia', 's', 's', 'phpqrcode/temp//test8701806897ee2a3aea9f84026b06d7db_2016_10_28_16_25_58camilo_f.png', '2016-10-28 09:25:54', 2, 1, 15, 0),
('1120562628', 'Neymar', 'Murillo', 's', 's', 'phpqrcode/temp//test0841271e1afa398536251f61056acf47_2016_10_28_18_12_56camilo_f.png', '2016-10-28 11:12:54', 2, 1, 14, 0),
('1120563173', 'Leonor', 'Barreto', 's', 's', 'phpqrcode/temp//teste257d67bd32920320063879ae962e8dd_2016_10_28_19_55_20camilo_f.png', '2016-10-28 12:55:17', 4, 1, 15, 0),
('1120564340', 'Sandra Liliana', 'Moreno', 's', 's', 'phpqrcode/temp//testcc22dc1e776a6dc8f1e4e65a06e845c5_2016_10_28_17_03_13camilo_f.png', '2016-10-28 10:03:11', 2, 1, 15, 0),
('1120564844', 'Ruby Priscila', 'Norato Aguilar', 's', 's', 'phpqrcode/temp//test48a57915368205695d610b33a44ce835_2016_10_28_20_15_48camilo_f.png', '2016-10-28 13:15:46', 3, 1, 15, 0),
('1120565410', 'Carlos', 'Diaz Hernandes', 's', 's', 'phpqrcode/temp//testd28f2d659e99c99de627ae8888859af6_2016_10_28_16_01_55camilo_f.png', '2016-10-28 09:01:54', 5, 1, 14, 0),
('1120566116', 'Yeferson', 'Ropero', 's', 's', 'phpqrcode/temp//test13c2551739d97677a57b8ae8ac90b52f_2016_10_28_01_53_10camilo_f.png', '2016-10-27 18:52:01', 6, 1, 14, 0),
('1120569728', 'Cesar', 'Aredondo', 's', 's', 'phpqrcode/temp//test8107158d75ade116e6b91f5e3ca3ee06_2016_10_28_18_54_11camilo_f.png', '2016-10-28 11:54:09', 2, 1, 14, 0),
('1120570086', 'Critina', 'Urrea', 's', 's', 'phpqrcode/temp//teste56dc10919c6cab4d729e0ae389bd950_2016_10_28_20_16_04camilo_f.png', '2016-10-28 13:16:03', 2, 1, 15, 0),
('1120570735', 'Jeffer', 'Vicente', 's', 's', 'phpqrcode/temp//test24135775a163ee2172f9646c762aa633_2016_10_28_18_51_07camilo_f.png', '2016-10-28 11:51:06', 2, 1, 14, 0),
('1120571589', 'Anderson', 'Vega', 's', 's', 'phpqrcode/temp//test774de0c371521c5b22bbe42adb8a5f96_2016_10_28_16_52_48camilo_f.png', '2016-10-28 09:52:47', 2, 1, 14, 0),
('1120571673', 'Dioniseldo', 'Alvarado', 's', 's', 'phpqrcode/temp//test6d78aca95c789febc2d7d051c70b20d0_2016_10_28_18_04_20camilo_f.png', '2016-10-28 11:04:18', 2, 1, 14, 0),
('1120571711', 'Kelly Dayana', 'Barreto Murcia', 's', 's', 'phpqrcode/temp//test7db38cb388dceae20f94ddb1bace97a7_2016_10_28_20_04_20camilo_f.png', '2016-10-28 13:04:17', 2, 1, 15, 0),
('1120571755', 'Monica', 'Martinez Rivera', 's', 's', 'phpqrcode/temp//test12dfd4a88c6dcdc42a2122080ce884bc_2016_10_28_17_53_09camilo_f.png', '2016-10-28 10:53:07', 2, 1, 15, 0),
('112057179', 'Marbel', 'Jimenez', 's', 's', 'phpqrcode/temp//test4e8ea75e2ac0efa2c768cf1d4c7e53e3_2016_10_28_18_48_09camilo_f.png', '2016-10-28 11:48:07', 2, 1, 15, 0),
('1120572550', 'Angela', 'Montenegro', 's', 's', 'phpqrcode/temp//testfc06ac4d8c5072caf37e3dcef9d3eb0e_2016_10_28_17_07_28camilo_f.png', '2016-10-28 10:07:27', 2, 1, 15, 0),
('1120572644', 'Stiven', 'Peã±a', 's', 's', 'phpqrcode/temp//test5527369f81996045591ca56f38b709af_2016_10_28_01_18_17camilo_f.png', '2016-10-27 18:18:14', 2, 1, 14, 0),
('1120572705', 'Eroel', 'Villegas', 's', 's', 'phpqrcode/temp//test50d0821e298d084d2b6d339adf1ab437_2016_10_28_17_08_58camilo_f.png', '2016-10-28 10:08:56', 2, 1, 14, 0),
('1120573437', 'Edwin Uriel', 'Becerra Torres', 's', 's', 'phpqrcode/temp//test7facf2def8bfed5f1d5af8f40f57510a_2016_10_28_01_12_49camilo_f.png', '2016-10-27 18:12:43', 2, 1, 14, 0),
('1120573472', 'Dario', 'Montoya', 's', 's', 'phpqrcode/temp//testb3d25286a4cee9b59798ba013674841c_2016_10_28_20_03_09camilo_f.png', '2016-10-28 13:03:07', 2, 1, 14, 0),
('1120573749', 'Jessica Norely', 'Daza Bernal', 's', 's', 'phpqrcode/temp//test0b300851257b44396d847098eee6101b_2016_10_28_17_12_28camilo_f.png', '2016-10-28 10:12:27', 2, 1, 15, 0),
('1120574316', 'Maricela', 'Gomez', 's', 's', 'phpqrcode/temp//testf8d12e4a9b4502a0bf3ee86f20dc9adf_2016_10_28_20_01_58camilo_f.png', '2016-10-28 12:52:33', 2, 1, 15, 0),
('1120574943', 'Juan Manuel', 'Nino Garzon', 's', 's', 'phpqrcode/temp//test5737bff0bf8b86bee05e4090be48917e_2016_10_28_17_17_34camilo_f.png', '2016-10-28 10:17:31', 2, 2, 14, 0),
('1120575317', 'Mary Luz', 'Martinez', 's', 's', 'phpqrcode/temp//testcc7e556e78d5d8987e89ff15c0f28a5d_2016_10_28_17_38_19camilo_f.png', '2016-10-28 10:38:15', 2, 1, 15, 0),
('1120575710', 'Yesica Alejandra', 'Villalba', 's', 's', 'phpqrcode/temp//test3e679dfbc6e7384f217056ea7e6ba970_2016_10_28_16_59_37camilo_f.png', '2016-10-28 09:59:32', 2, 1, 15, 0),
('1120575982', 'Nayibe Shiley', 'Suarez', 's', 's', 'phpqrcode/temp//testc9cf309dea77079388436781e9cc1e76_2016_10_28_17_30_16camilo_f.png', '2016-10-28 10:30:13', 3, 1, 15, 0),
('1120576073', 'Jhonatan', 'Guerrero', 's', 's', 'phpqrcode/temp//test11e85593c755927fc3475188985d2f8e_2016_10_28_20_11_46camilo_f.png', '2016-10-28 13:11:44', 2, 1, 14, 0),
('1120576703', 'Demetrio', 'Contreras', 's', 's', 'phpqrcode/temp//testba78509e29c540a54761013b5f7e130d_2016_10_28_17_37_20camilo_f.png', '2016-10-28 10:37:18', 2, 1, 14, 0),
('1120577148', 'Yimer Augusto', 'Moreno Melo', 's', 's', 'phpqrcode/temp//test0ce50881939e5bead0be321ddfc94bff_2016_10_28_01_25_17camilo_f.png', '2016-10-27 18:25:14', 1, 1, 14, 0),
('1120578095', 'Andrea', 'Perdomo', 's', 's', 'phpqrcode/temp//testadb6f61d000b40a1af88af26e65a8008_2016_10_28_20_13_56camilo_f.png', '2016-10-28 13:13:54', 3, 1, 15, 0),
('1120578156', 'Asmin Paola', 'Vasallo', 's', 's', 'phpqrcode/temp//testf9f41937cee7ea3d6201bb8e7600c188_2016_10_28_19_50_04camilo_f.png', '2016-10-28 12:50:01', 2, 1, 15, 0),
('1120578295', 'Leidy', 'Madrigal', 's', 's', 'phpqrcode/temp//teste4ccad353e0a4fdda966971123e676f6_2016_10_28_16_54_04camilo_f.png', '2016-10-28 09:54:02', 2, 1, 15, 0),
('1120578424', 'Daniel Alberto', 'Acevedo', 's', 's', 'phpqrcode/temp//testa032de1f07546bb72728278fb7806781_2016_10_28_19_57_03camilo_f.png', '2016-10-28 12:57:00', 3, 1, 14, 0),
('1120578567', 'Mailey Yojana', 'Herrera Piedrahita', 's', 's', 'phpqrcode/temp//test1570e3fee1d77d27ccbc4eb030276c26_2016_10_28_19_59_17camilo_f.png', '2016-10-28 12:59:15', 3, 1, 15, 0),
('1120578783', 'Ricardo', 'Vargas Sanchez', 's', 's', 'phpqrcode/temp//testb1c1d79487c7b4ddd7b898293411af10_2016_10_27_21_30_29camilo_f.png', '2016-10-27 14:30:27', 1, 1, 14, 0),
('1120578883', 'Kevin', 'Rojas', 's', 's', 'phpqrcode/temp//test1e66a5cfb4cafd81f0d378344de001b3_2016_10_28_17_05_02camilo_f.png', '2016-10-28 10:05:01', 2, 1, 14, 0),
('1120578887', 'Sergio Leonardo', 'Quintanilla Ussa', 's', 's', 'phpqrcode/temp//test0af6075abe8240b3577e10d62755e088_2016_10_28_01_50_20camilo_f.png', '2016-10-27 18:50:17', 3, 1, 14, 0),
('1120578915', 'Erika Carolina', 'Calderon Ramirez', 's', 's', 'phpqrcode/temp//testd00f105a93f696397841e153a69de935_2016_10_28_19_56_55camilo_f.png', '2016-10-28 12:56:52', 2, 1, 15, 0),
('1120578967', 'Diana', 'Floriano', 's', 's', 'phpqrcode/temp//test3982c7ad5791d33955dbadfea7f1d1e2_2016_10_28_19_38_13camilo_f.png', '2016-10-28 12:38:09', 2, 1, 15, 0),
('1120579126', 'Jhon', 'Loaiza', 's', 's', 'phpqrcode/temp//test3599b792f360d7bba7ef79c6e4ae2ec5_2016_10_28_20_12_27camilo_f.png', '2016-10-28 12:58:35', 3, 1, 14, 0),
('1120579269', 'Alejandra', 'Alvarez', 's', 's', 'phpqrcode/temp//test20661ec6160df3a7d48496318de557b6_2016_10_28_18_26_20camilo_f.png', '2016-10-28 11:26:18', 3, 1, 15, 0),
('1120579343', 'Yesica Marcela', 'Parra Rodriguez', 's', 's', 'phpqrcode/temp//test0ab18118cc9adfeeb916bcb914a56002_2016_10_28_20_14_25camilo_f.png', '2016-10-28 13:14:23', 3, 1, 15, 0),
('1120579443', 'Leidy Natalia', 'Murillo', 's', 's', 'phpqrcode/temp//test0ef6bc99affdf3f2f22939f6ce7c6582_2016_10_28_19_08_41camilo_f.png', '2016-10-28 12:08:39', 2, 1, 15, 0),
('1120579543', 'Solangie', 'Querubin', 's', 's', 'phpqrcode/temp//testad8bae67014b8691d6940b6dd0599d01_2016_10_28_20_13_01camilo_f.png', '2016-10-28 13:12:58', 3, 1, 15, 0),
('1120579567', 'Leydi Vaneza', 'Quintero Hernandez', 's', 's', 'phpqrcode/temp//test7c2fd627915a07e982b87bef2b3e6e2b_2016_10_28_20_04_12camilo_f.png', '2016-10-28 13:04:10', 3, 1, 15, 0),
('1120579619', 'Marlon', 'Carranza', 's', 's', 'phpqrcode/temp//test679b7a3d41ca0cc9e757df09919a3469_2016_10_28_17_11_15camilo_f.png', '2016-10-28 10:11:13', 3, 1, 14, 0),
('1120579761', 'Yudi Marcela', 'Beltran', 's', 's', 'phpqrcode/temp//test11c2b5854f27e24af75493c8f41ea4e3_2016_10_28_20_03_24camilo_f.png', '2016-10-28 13:03:21', 2, 1, 15, 0),
('1120579871', 'Yilber Daniel', 'Gutierrez Duran', 's', 's', 'phpqrcode/temp//testcc5aff2e16722b28ff5cb6f6641a7844_2016_10_28_01_49_15camilo_f.png', '2016-10-27 18:49:14', 3, 1, 14, 0),
('1120579999', 'Lina Marcela', 'Martin', 's', 's', 'phpqrcode/temp//test6444c16f467c5e90019401f11881f2eb_2016_10_28_18_25_28camilo_f.png', '2016-10-28 11:25:26', 3, 1, 15, 0),
('1120580044', 'Jhon Alexander', 'Moreno Melo', 's', 's', 'phpqrcode/temp//testd7dbda110e981d5c06a1da39753704b0_2016_10_28_19_33_11camilo_f.png', '2016-10-27 18:11:43', 3, 1, 14, 0),
('1120580227', 'Eliana Mayerly', 'Martinez Hernandez', 's', 's', 'phpqrcode/temp//testf40be92717b8c45ae26abf7a0e9c8e9e_2016_10_28_20_06_04camilo_f.png', '2016-10-28 13:06:03', 2, 1, 15, 0),
('1120580270', 'Angie', 'Burgos', 's', 's', 'phpqrcode/temp//test67496d0edbb6076d5290e9fd16c5f5bf_2016_10_28_18_22_15camilo_f.png', '2016-10-28 11:22:12', 3, 1, 15, 0),
('1120580281', 'Lorena', 'Lopero', 's', 's', 'phpqrcode/temp//test871d8ee51f8c62a501aa27ddde1e7830_2016_10_28_20_11_36camilo_f.png', '2016-10-28 12:59:04', 3, 1, 15, 0),
('1120580691', 'Katherine', 'Gordillo Sanchez', 's', 's', 'phpqrcode/temp//test811ed28588605a8ff47693559c250733_2016_10_28_20_03_00camilo_f.png', '2016-10-28 13:02:58', 3, 1, 15, 0),
('1120580782', 'Juan Camilo', 'Mejia Castro', 's', 's', 'phpqrcode/temp//test06dadb71047a4d59a9c1a69d2f9cb49f_2016_10_28_15_04_10camilo_f.png', '2016-10-28 08:04:09', 1, 1, 14, 0),
('1120580891', 'Jose Giovanny', 'Tiote Sanchez', 's', 's', 'phpqrcode/temp//test5d718766688e0b38da90534d7413f622_2016_10_28_19_52_23camilo_f.png', '2016-10-28 12:51:58', 2, 1, 14, 0),
('1120581207', 'Sharon Dayana', 'Guerrero Rodriguez', 's', 's', 'phpqrcode/temp//test9771372878bdcb1d6609599b3a0c5622_2016_10_28_20_05_58camilo_f.png', '2016-10-28 13:05:56', 2, 1, 15, 0),
('1120581372', 'Cristina', 'Aponte', 's', 's', 'phpqrcode/temp//test888149a61bf91253a1c6df6bf5d22151_2016_10_28_19_28_11camilo_f.png', '2016-10-28 12:28:09', 3, 1, 15, 0),
('1120581411', 'Oscar', 'Gomez', 's', 's', 'phpqrcode/temp//teste4b9a33ef920ff8737fc9c47cad69bab_2016_10_28_16_03_07camilo_f.png', '2016-10-28 09:03:06', 2, 1, 14, 0),
('1120581449', 'Juan Sebastian', 'Inestrosa Lazo', 's', 's', 'phpqrcode/temp//testd04d071c6ef0ecb66542c5602e11b2f1_2016_10_28_18_13_24camilo_f.png', '2016-10-28 11:13:23', 2, 1, 14, 0),
('1120581456', 'Carlos Duvan', 'Clavijo Paez', 's', 's', 'phpqrcode/temp//test912c3b9b8028f6b297cff7630649fc11_2016_10_28_19_37_13camilo_f.png', '2016-10-28 12:37:10', 2, 1, 14, 0),
('1120581523', 'Vanesa', 'Mesa', 's', 's', 'phpqrcode/temp//test36606b1dca986c347838a04a42e195e2_2016_10_28_19_57_17camilo_f.png', '2016-10-28 12:57:15', 3, 1, 15, 0),
('1120581711', 'Leonardo', 'Beltran Pereira', 's', 's', 'phpqrcode/temp//test1f1822e69bf86b247673e2747231d4f3_2016_10_28_19_37_58camilo_f.png', '2016-10-28 12:37:55', 2, 1, 14, 0),
('1120581883', 'Marco Tulio', 'Gonzalez Aguirre', 's', 's', 'phpqrcode/temp//test39fc74b8e9f9f713b9e2c81d01c8547e_2016_10_28_19_30_12camilo_f.png', '2016-10-28 12:30:08', 1, 1, 14, 0),
('1120582025', 'Caren Yibeth', 'Novoa', 's', 's', 'phpqrcode/temp//test17d221a105995d70f4cc0ad7dd21bdb7_2016_10_28_15_13_11camilo_f.png', '2016-10-28 08:12:50', 3, 1, 15, 0),
('1120582036', 'Jeimi', 'Pava', 's', 's', 'phpqrcode/temp//test2cb922da4fa4214163b8d7afa029c40f_2016_10_28_17_34_23camilo_f.png', '2016-10-28 10:34:19', 3, 1, 15, 0),
('1120582083', 'Edwin', 'Morales', 's', 's', 'phpqrcode/temp//testda051b9d3bcc40c608e8d518465f44bc_2016_10_28_19_03_40camilo_f.png', '2016-10-28 12:03:39', 2, 1, 14, 0),
('1120582187', 'Sandor', 'Salcedo', 's', 's', 'phpqrcode/temp//test01f24467f6135a04628c93d73d58489a_2016_10_28_17_22_57camilo_f.png', '2016-10-28 10:22:56', 2, 1, 14, 0),
('1120582199', 'Mayerly Alexandra', 'Vega Rodriguez', 's', 's', 'phpqrcode/temp//testee4ee972847b8b87b7c685774d4ff627_2016_10_28_19_56_15camilo_f.png', '2016-10-28 12:56:13', 3, 1, 15, 0),
('1120582252', 'Robinson', 'Delgadillo', 's', 's', 'phpqrcode/temp//test07688a51dfed4ac56868ee97aa297e28_2016_10_28_19_03_00camilo_f.png', '2016-10-28 12:02:58', 2, 1, 14, 0),
('1120582479', 'Angie', 'Huerta', 's', 's', 'phpqrcode/temp//testeb87de96410fcf70fd8b884cf15b99dc_2016_10_28_19_57_21camilo_f.png', '2016-10-28 12:57:20', 2, 1, 15, 0),
('1120582602', 'Nasly', 'Pulido', 's', 's', 'phpqrcode/temp//testa3794417cc2dab6626f6e107c96f9e96_2016_10_28_20_01_29camilo_f.png', '2016-10-28 13:01:27', 3, 1, 15, 0),
('1120582697', 'Jeiver', 'Pineros', 's', 's', 'phpqrcode/temp//test81ee1fb2f55657922237bc53a8ce1437_2016_10_28_17_15_37camilo_f.png', '2016-10-28 10:15:36', 2, 1, 14, 0),
('1120582767', 'Jhonnatan', 'Cubides', 's', 's', 'phpqrcode/temp//test3d4bd697e4901bf4387b09d66c2fcf16_2016_10_28_14_59_27camilo_f.png', '2016-10-28 07:47:58', 1, 1, 14, 0),
('1120582802', 'Dubier', 'Perez', 's', 's', 'phpqrcode/temp//test7e9db6a599911584953f1f74d51bd63c_2016_10_28_19_03_42camilo_f.png', '2016-10-28 12:03:40', 2, 1, 14, 0),
('1120925998', 'Ester Isnedia', 'Bedoya PeÃ‘a', 's', 's', 'phpqrcode/temp//test32aee171e38cec9ad9274e4c2608cc51_2016_10_28_20_16_18camilo_f.png', '2016-10-28 13:16:16', 3, 1, 15, 0),
('1120957108', 'Mariana', 'Viojo Guerrero', 's', 's', 'phpqrcode/temp//test5057246681eab4ab664fb7ba365244a2_2016_10_28_19_57_07camilo_f.png', '2016-10-28 12:57:05', 2, 1, 15, 0),
('1121417292', 'Yorladis', 'Neira', 's', 's', 'phpqrcode/temp//test070de19d68bf8978952e513664f30303_2016_10_28_20_19_10camilo_f.png', '2016-10-28 13:19:08', 3, 1, 15, 0),
('1121854913', 'Nilson Fernandes', 'Sabana', 's', 's', 'phpqrcode/temp//testae14367e1810da958e5218b2fe8ffe44_2016_10_28_20_03_27camilo_f.png', '2016-10-28 13:03:25', 2, 1, 14, 0),
('1121866494', 'Richard', 'Pardo', 's', 's', 'phpqrcode/temp//test1b36be8aa0c4d9e1450aa850763cfa0a_2016_10_28_16_27_07camilo_f.png', '2016-10-28 09:27:05', 2, 1, 14, 0),
('1121886664', 'Vania', 'Borrero', 's', 's', 'phpqrcode/temp//testf5cedeca0c373b818a670204ec030a99_2016_10_28_16_27_52camilo_f.png', '2016-10-28 09:27:48', 2, 1, 15, 0),
('1121948168', 'Cesar', 'Velasquez', 's', 's', 'phpqrcode/temp//testc26bde34872f3a51e0cecb458690bdb1_2016_10_28_19_42_36camilo_f.png', '2016-10-28 12:42:33', 2, 1, 14, 0),
('1121948407', 'Angie Valeria', 'Romero Sanchez', 's', 's', 'phpqrcode/temp//test1c62e1be8aa3196b16e10154212763ca_2016_10_28_17_47_42camilo_f.png', '2016-10-28 10:47:39', 2, 1, 15, 0),
('1122122685', 'Liliana', 'Ramirez', 's', 's', 'phpqrcode/temp//test6bc8f1b4af70076ddeb184ee0b6076a1_2016_10_28_16_22_15camilo_f.png', '2016-10-28 09:22:14', 2, 1, 15, 0),
('1122236033', 'Yeison Daniel', 'Mureillo Rivas', 's', 's', 'phpqrcode/temp//test662c84abb4911f611d9f3d3abcff66a6_2016_10_28_15_02_20camilo_f.png', '2016-10-28 08:02:06', 1, 1, 14, 0),
('1122237390', 'Leidy', 'Bonilla', 's', 's', 'phpqrcode/temp//test98394843f893db4ee1a115fe26a9adfc_2016_10_28_19_17_18camilo_f.png', '2016-10-28 12:17:17', 2, 2, 15, 0),
('1122237482', 'Lorena', 'Bedoya', 's', 's', 'phpqrcode/temp//teste06bfca378cbe9aba92b1c59b229a70d_2016_10_28_16_22_45camilo_f.png', '2016-10-28 09:22:43', 2, 1, 15, 0),
('1122237931', 'Erica', 'Gonzalez', 's', 's', 'phpqrcode/temp//testdaee4b23379993383bf6dfbf945d839a_2016_10_28_19_16_19camilo_f.png', '2016-10-28 12:16:17', 2, 1, 15, 0),
('1122238584', 'Jose Ivan', 'Solaque Martinez', 's', 's', 'phpqrcode/temp//testeeace9c34416a22eaea449773266a2a1_2016_10_28_19_58_03camilo_f.png', '2016-10-28 12:58:01', 2, 1, 14, 0),
('1122239347', 'Neidy', 'Lozano', 's', 's', 'phpqrcode/temp//test32f563d6787ab55511396e134f5d5808_2016_10_28_17_15_36camilo_f.png', '2016-10-28 10:15:33', 3, 1, 15, 0),
('1122239413', 'Jessica', 'Lopez', 's', 's', 'phpqrcode/temp//test2e4ae1b7b1f666a15b66c53d79472742_2016_10_28_19_48_56camilo_f.png', '2016-10-28 12:48:54', 2, 1, 15, 0),
('1122239448', 'Brayan', 'Lopez', 's', 's', 'phpqrcode/temp//test4877bfa8f18432ea279d9b60ad246d5f_2016_10_28_19_15_21camilo_f.png', '2016-10-28 12:15:19', 2, 1, 14, 0),
('1122239550', 'Adrian', 'Pinto', 's', 's', 'phpqrcode/temp//test0c39fe5defebf943d7516b72d2bb3dd0_2016_10_28_19_59_30camilo_f.png', '2016-10-28 12:59:28', 3, 1, 14, 0),
('1122239676', 'Damari Johana', 'Vera', 's', 's', 'phpqrcode/temp//test96fb48ef97882193b675ca95f3c67b6f_2016_10_28_15_46_24camilo_f.png', '2016-10-28 08:46:21', 2, 1, 15, 0),
('1122508440', 'Nicol', 'Garcia', 's', 's', 'phpqrcode/temp//testa06579239d01b70f6a76e0d966ad87f0_2016_10_28_18_30_13camilo_f.png', '2016-10-28 11:30:11', 2, 2, 15, 0),
('1122510202', 'Steicy', 'Daza', 's', 's', 'phpqrcode/temp//test79f53b12de228bc137c4b86a2ec394f3_2016_10_28_18_52_47camilo_f.png', '2016-10-28 11:52:46', 2, 2, 15, 0),
('1122727272', 'Jefferson', 'Valencia', 's', 's', 'phpqrcode/temp//testa0d9a426d6794afbcc04f4b9630e20b6_2016_10_28_18_23_03camilo_f.png', '2016-10-28 11:22:59', 2, 1, 14, 0),
('1123059150', 'William Fernando', 'Porras', 's', 's', 'phpqrcode/temp//test1ffab7bef655c5f0b076bdb55d23034e_2016_10_28_19_39_46camilo_f.png', '2016-10-28 12:39:44', 2, 1, 14, 0),
('1123160019', 'Carlos Mario', 'Zapata Peralta', 's', 's', 'phpqrcode/temp//test13f7c48877af8283b4ed73de35e42118_2016_10_28_18_19_51camilo_f.png', '2016-10-28 11:19:47', 3, 1, 14, 0),
('1123162453', 'Angie', 'Hernandez', 's', 's', 'phpqrcode/temp//teste6f598e9598eac8314eddee757a48a9f_2016_10_28_18_25_02camilo_f.png', '2016-10-28 11:25:00', 2, 1, 15, 0),
('1124798198', 'Derly', 'Chipiaje Gaitan', 's', 's', 'phpqrcode/temp//test55a03e1b8e9c6bf62db91171c7ee1094_2016_10_28_01_15_49camilo_f.png', '2016-10-27 18:15:13', 2, 1, 15, 0),
('112772994', 'Angela Maria', 'Moreno', 's', 's', 'phpqrcode/temp//test80e4db1969f011ff17f265af06f3bdfb_2016_10_28_19_49_03camilo_f.png', '2016-10-28 12:49:01', 2, 1, 15, 0),
('1129574804', 'Hugo', 'Rosania', 's', 's', 'phpqrcode/temp//testefcf0ef6e9472929f6e202c7e856985b_2016_10_28_17_12_04camilo_f.png', '2016-10-28 10:12:02', 2, 1, 14, 0),
('1133924007', 'Erica', 'Moreno', 's', 's', 'phpqrcode/temp//testcdabb46aa61deda8d97c023e07e3a5da_2016_10_28_19_53_35camilo_f.png', '2016-10-28 12:52:58', 2, 1, 15, 0),
('1152446346', 'Laura', 'Salgado', 's', 's', 'phpqrcode/temp//testb11e9902600e546a3370bfe025258e47_2016_10_28_16_24_34camilo_f.png', '2016-10-28 09:24:32', 2, 1, 15, 0),
('118547649', 'Freily', 'Gonzales', 's', 's', 'phpqrcode/temp//testa90c16b6d4f686cdeea7e4054545463e_2016_10_28_19_08_28camilo_f.png', '2016-10-28 12:08:25', 2, 1, 14, 0),
('1192803698', 'Diana Carolina', 'Gimenes Mutis', 's', 's', 'phpqrcode/temp//test416f09805ce415639bfcee3bce743bb1_2016_10_28_18_23_58camilo_f.png', '2016-10-28 11:23:54', 2, 2, 15, 0),
('1193046880', 'Wilmer Alexander', 'Cordero', 's', 's', 'phpqrcode/temp//test930e94da8403b80cc2db1322779f0d63_2016_10_28_18_05_44camilo_f.png', '2016-10-28 11:05:43', 3, 1, 14, 0),
('1193048656', 'Marlon', 'Lozano Fajardo', 's', 's', 'phpqrcode/temp//test49a121e68502133769d4ce7c540cbc9e_2016_10_28_20_01_08camilo_f.png', '2016-10-28 13:01:06', 2, 2, 14, 0),
('1193076184', 'Said', 'Guerrero Quintero', 's', 's', 'phpqrcode/temp//testcc377fa1e345588c3cb19aebcfb54f4e_2016_10_28_17_59_49camilo_f.png', '2016-10-28 10:59:47', 3, 1, 14, 0),
('1193134131', 'Dahiana', 'Calderon', 's', 's', 'phpqrcode/temp//test01bf8283b918d4ae4a7e03a9ae22a943_2016_10_28_18_43_26camilo_f.png', '2016-10-28 11:43:19', 2, 2, 15, 0),
('1193312925', 'Daniela Carolina', 'Blanquicett Zapata', 's', 's', 'phpqrcode/temp//test46eb636e982a72972bdd417e0587a287_2016_10_28_20_07_02camilo_f.png', '2016-10-28 13:07:00', 3, 1, 15, 0),
('1193458462', 'Stiven', 'Pinta', 's', 's', 'phpqrcode/temp//testd017ea08f37a51f6ea559b11296a0886_2016_10_28_18_28_49camilo_f.png', '2016-10-28 11:28:48', 2, 2, 14, 0),
('120566234', 'Yeison', 'Hernandez', 's', 's', 'phpqrcode/temp//test5a3931cd0fb55584be6536f2cb71be9e_2016_10_28_19_40_58camilo_f.png', '2016-10-28 12:40:55', 2, 2, 14, 0),
('120579658', 'Victor Andres', 'Zuleta Zuleta', 's', 's', 'phpqrcode/temp//test40bd19f395d4db1c2f662d66fe9c0a84_2016_10_28_01_12_43camilo_f.png', '2016-10-27 18:12:38', 3, 1, 14, 0),
('120581589', 'Luis Angel', 'Jimenes', 's', 's', 'phpqrcode/temp//test4abe31d7ee0f4ec97317ae9d78b55b61_2016_10_28_19_47_47camilo_f.png', '2016-10-28 12:47:45', 2, 1, 14, 0),
('121901844', 'Figueroa', 'Perez', 's', 's', 'phpqrcode/temp//test0a94fc06c74ca4c407765dac1ac1a409_2016_10_28_20_01_59camilo_f.png', '2016-10-28 13:01:57', 3, 1, 15, 0),
('123123123999', 'Brayan', 'Basallo', 's', 's', 'phpqrcode/temp//test8dd31aba7fd6b668becddeb638052885_2019_11_13_22_21_41camilo_f.png', '2019-11-13 16:21:37', 3, 1, 14, 0),
('12455704', 'Julio', 'Vallejo', 's', 's', 'phpqrcode/temp//testc6cbdd00a45ad8d60749e79a48fb1008_2016_10_28_20_19_00camilo_f.png', '2016-10-28 13:18:57', 3, 1, 14, 0),
('13927273', 'Carlos Arturo', 'Galvis Osorio', 's', 's', 'phpqrcode/temp//test3857c315217bfbc8ad4f8afee8b94506_2016_10_28_17_18_20camilo_f.png', '2016-10-28 10:18:18', 2, 1, 14, 0),
('13929674', 'Omar', 'Ramires', 's', 's', 'phpqrcode/temp//test2f7177e5705960b96f5768c81c35d811_2016_10_28_15_59_18camilo_f.png', '2016-10-28 08:59:11', 2, 1, 14, 0),
('14135036', 'Daniel', 'Lugo Camacho', 's', 's', 'phpqrcode/temp//test19dea9cd33819ef2cc46cba3fc0d1fae_2016_10_28_17_20_49camilo_f.png', '2016-10-28 07:53:33', 4, 1, 14, 0),
('14698949', 'Camilo', 'Castro', 's', 's', 'phpqrcode/temp//testf3376de60bafba25f986846b1cb3b45b_2016_10_28_18_07_56camilo_f.png', '2016-10-28 11:07:54', 4, 1, 14, 0),
('14872497', 'Joaquin', 'Cortes', 's', 's', 'phpqrcode/temp//testdb6a2246a7082d3b5e8fc4ad5359d907_2016_10_28_17_24_43camilo_f.png', '2016-10-28 10:24:40', 2, 1, 14, 0),
('16185787', 'Juan Salvador', 'Alvarez Ramirez', 's', 's', 'phpqrcode/temp//testad7aaff1bc4e85b6d724f0ec40acddf9_2016_10_28_16_25_43camilo_f.png', '2016-10-28 09:25:41', 2, 1, 14, 0),
('17324943', 'Victor Alfonso', 'Puente', 's', 's', 'phpqrcode/temp//test7877918fd5dd3f6ec3a3e1a8a195f4a2_2016_10_28_19_01_25camilo_f.png', '2016-10-28 12:01:23', 4, 1, 15, 0),
('17328298', 'Edgar Augusto', 'Braga Silva', 's', 's', 'phpqrcode/temp//test735e2acd9533fa8e36ee5fe554824855_2016_10_27_21_13_02camilo_f.png', '2016-10-27 14:12:59', 6, 1, 14, 0),
('17332441', 'Gabriel', 'Galeano', 's', 's', 'phpqrcode/temp//test8568b98260a6dcc62af509d4d6d3b7ce_2016_10_28_19_58_31camilo_f.png', '2016-10-28 12:58:28', 4, 1, 14, 0),
('17338674', 'Alfonso', 'Fontecha', 's', 's', 'phpqrcode/temp//testedb49a737c6fcd682d111eebd7f100f5_2016_10_28_01_35_03camilo_f.png', '2016-10-27 18:34:52', 2, 1, 14, 0),
('17345777', 'Luis Alejandro', 'Jimenez Rodriguez', 's', 's', 'phpqrcode/temp//testa1aacff8fcbe6fe05c19172ff9c972ed_2016_10_28_20_03_02camilo_f.png', '2016-10-28 13:03:00', 2, 1, 14, 0),
('17410542', 'Alvaro', 'Contreras', 's', 's', 'phpqrcode/temp//testc21a0dfa93b4a985a9c08a417733c08e_2016_10_28_18_55_54camilo_f.png', '2016-10-28 11:55:53', 2, 1, 14, 0),
('18222245', 'Ricardo', 'Almario', 's', 's', 'phpqrcode/temp//testa929b47c3e1f82e1df11cb7b2042fc39_2016_10_28_17_11_18camilo_f.png', '2016-10-28 10:11:16', 2, 1, 14, 0),
('18223309', 'Ilder', 'Cuesta', 's', 's', 'phpqrcode/temp//test718684c1138c97a200c4adb3dbe4ed5a_2016_10_28_19_15_48camilo_f.png', '2016-10-28 12:15:44', 2, 1, 14, 0),
('18224162', 'Wilian', 'Perez', 's', 's', 'phpqrcode/temp//test705c56c1155bf26426f98031f57c47fe_2016_10_28_16_08_00camilo_f.png', '2016-10-28 09:07:58', 2, 1, 14, 0),
('18224425', 'Ariel', 'Mosquera Morales', 's', 's', 'phpqrcode/temp//testf11d5e63c3e8d892977496f2af43f948_2016_10_28_16_26_40camilo_f.png', '2016-10-28 09:26:38', 2, 1, 14, 0),
('18224471', 'Adrian', 'Querubin Velasquez', 's', 's', 'phpqrcode/temp//test046a3e93777e24f9766b6182b4c6e72c_2016_10_28_15_42_29camilo_f.png', '2016-10-28 08:41:05', 4, 1, 14, 0),
('18224810', 'Willian', 'Fernandez', 's', 's', 'phpqrcode/temp//testdd1e355dcbc24455a7a78d6a620ce1e8_2016_10_28_18_04_02camilo_f.png', '2016-10-28 11:03:59', 2, 1, 14, 0),
('18236087', 'Carlos', 'Valecia', 's', 's', 'phpqrcode/temp//testfdb0b3022708855a04d51d89682a8c1b_2016_10_28_18_10_15camilo_f.png', '2016-10-28 11:10:14', 4, 1, 14, 0),
('18840609', 'Ruben Dario', 'Pinilla', 's', 's', 'phpqrcode/temp//test1966b5cbbe788750794925bcd5274fef_2016_10_28_18_24_40camilo_f.png', '2016-10-28 11:24:37', 3, 1, 14, 0),
('21086498', 'Maria', 'Moreno Quiroga', 's', 's', 'phpqrcode/temp//testbfc2809330ce205e0e926d67d6ffcecd_2016_10_28_16_25_17camilo_f.png', '2016-10-28 09:25:16', 2, 1, 15, 0),
('21174940', 'Rosa', 'Montenegro', 's', 's', 'phpqrcode/temp//test49023032d5210ffe784696161f63d80a_2016_10_28_18_59_25camilo_f.png', '2016-10-28 11:59:23', 2, 1, 15, 0),
('25099998', 'Adiela', 'Corrales', 's', 's', 'phpqrcode/temp//test111cdb96020dd2e31aef4278adc53396_2016_10_28_16_25_05camilo_f.png', '2016-10-28 09:25:03', 2, 1, 15, 0),
('27090627', 'Maria Fernanda', 'Higidio', 's', 's', 'phpqrcode/temp//test14a0df0cbb2cf81a7d0e9ffa4b904760_2016_10_28_20_10_02camilo_f.png', '2016-10-28 13:09:58', 2, 1, 15, 0);
INSERT INTO `tb_personas` (`num_doc`, `nombres`, `apellidos`, `sn_mostrar`, `sn_contar`, `url_imagen`, `fecha_registro`, `cod_rol`, `cod_tipo_doc`, `cod_genero`, `cod_programa`) VALUES
('2746846', 'Luis Enrique', 'Guerrero', 's', 's', 'phpqrcode/temp//testb3ef29917405bc59f690da4192ae6575_2016_10_28_17_08_33camilo_f.png', '2016-10-28 10:08:31', 2, 1, 14, 0),
('28917478', 'Sandra', 'Sanchez', 's', 's', 'phpqrcode/temp//testc5ac772d28ae477d786360e8dc4f579e_2016_10_28_19_55_14camilo_f.png', '2016-10-28 12:55:10', 3, 1, 15, 0),
('30231985', 'Natalia Marcela', 'Garcia Gonsalez', 's', 's', 'phpqrcode/temp//test55051969c5ecce869f50b7347f43b11f_2016_10_28_19_12_07camilo_f.png', '2016-10-28 12:12:05', 4, 1, 15, 0),
('3127332872', 'Gloria Ines', 'Reyes LÃ³pez', 's', 's', 'phpqrcode/temp//testc194891d8367e7a461cd555f2aaa2c99_2016_10_28_17_25_52camilo_f.png', '2016-10-28 10:25:50', 2, 1, 15, 0),
('31346010696', 'Camilo', 'Beltran', 's', 's', 'phpqrcode/temp//testf9550bf34e468aebab6f116068cca4ae_2016_10_28_17_50_42camilo_f.png', '2016-10-28 10:50:38', 2, 2, 14, 0),
('3209445136', 'Kebin', 'Murillo', 's', 's', 'phpqrcode/temp//test2b4d0c19085cbc6c9e839fd176ad7c92_2016_10_28_18_43_57camilo_f.png', '2016-10-28 11:43:55', 2, 2, 14, 0),
('3213982410', 'Juliana', 'Franco', 's', 's', 'phpqrcode/temp//test50a12e3bba614eb63a4e969c638bda02_2016_10_28_18_45_13camilo_f.png', '2016-10-28 11:45:11', 2, 2, 15, 0),
('33366422', 'Doly', 'Arias', 's', 's', 'phpqrcode/temp//test0e26b56ac976f82a1c8e573118d784fc_2016_10_28_17_24_54camilo_f.png', '2016-10-28 10:24:52', 2, 1, 15, 0),
('37368567', 'Ledy', 'Pallares', 's', 's', 'phpqrcode/temp//test8613e254fc6415dcb260197493c52538_2016_10_28_18_01_09camilo_f.png', '2016-10-28 11:01:08', 2, 1, 15, 0),
('39556683', 'Maria Herlinda', 'Herrera Ticora', 's', 's', 'phpqrcode/temp//testa9b4450d36f3d303ed3ab363f930b620_2016_10_28_18_37_46camilo_f.png', '2016-10-28 11:37:42', 2, 1, 15, 0),
('40187464', 'Jeimy', 'Hernandez', 's', 's', 'phpqrcode/temp//test95ac5b241e5d6aab39fe2e21efdb6e48_2016_10_28_19_44_25camilo_f.png', '2016-10-28 12:44:24', 2, 1, 15, 0),
('40188913', 'Francedy', 'Arenas', 's', 's', 'phpqrcode/temp//test51d8dc3c0b823b25785de704886869ff_2016_10_28_18_15_43camilo_f.png', '2016-10-28 11:15:42', 2, 1, 15, 0),
('40326817', 'Ana Paola', 'Carrillo', 's', 's', 'phpqrcode/temp//test8fe5a7d30ae7676f74cc916d57640605_2016_10_28_19_41_54camilo_f.png', '2016-10-28 12:41:47', 2, 1, 15, 0),
('40328375', 'Maria', 'Moreno', 's', 's', 'phpqrcode/temp//test7d72ead39a4bb59e9184e56acf867159_2016_10_28_19_21_36camilo_f.png', '2016-10-28 12:21:33', 2, 1, 15, 0),
('40386775', 'Lorena', 'Rodriguez', 's', 's', 'phpqrcode/temp//test4f29b751928d4e32ef054afa8e758ba8_2016_10_28_19_02_18camilo_f.png', '2016-10-28 12:02:14', 2, 1, 15, 0),
('40395679', 'Paola', 'Munos', 's', 's', 'phpqrcode/temp//test5877028fdf08d09aeb9800d3a24e8423_2016_10_28_18_39_14camilo_f.png', '2016-10-28 11:39:11', 2, 1, 15, 0),
('40670800', 'Ruth Enith', 'Salazar Correa', 's', 's', 'phpqrcode/temp//test22933c81099aa0bdb44c7c55a823c3b7_2016_10_28_16_22_42camilo_f.png', '2016-10-28 09:22:40', 2, 1, 15, 0),
('41211361', 'Maria', 'Diaz', 's', 's', 'phpqrcode/temp//test7a6a654c57d643dfb4fb891c1b261c82_2016_10_28_16_29_34camilo_f.png', '2016-10-28 09:29:31', 2, 1, 15, 0),
('41212155', 'Azucena', 'Sanabria', 's', 's', 'phpqrcode/temp//test7ed07532610fd653bc8758f2fc8fafea_2016_10_28_20_00_19camilo_f.png', '2016-10-28 13:00:17', 3, 1, 15, 0),
('41212339', 'Ruby Rocio', 'Rodriguez Fuente', 's', 's', 'phpqrcode/temp//test660b64353271693c9d7b68ce412e5284_2016_10_28_19_50_51camilo_f.png', '2016-10-28 12:50:48', 2, 1, 15, 0),
('41213033', 'Dilian Zulema', 'Tique', 's', 's', 'phpqrcode/temp//test389f6602243c23c121f2f5f8a5fbddd8_2016_10_28_17_43_09camilo_f.png', '2016-10-28 10:43:05', 4, 1, 15, 0),
('41213451', 'Mayerly', 'Cavides', 's', 's', 'phpqrcode/temp//test3fb14ef60f7249ac54bbfde069223a9c_2016_10_28_19_00_20camilo_f.png', '2016-10-28 12:00:18', 2, 1, 15, 0),
('41214999', 'Avelania', 'Bravo', 's', 's', 'phpqrcode/temp//testa24d5daec576af1f8aec0738154b6cfc_2016_10_28_16_51_58camilo_f.png', '2016-10-28 09:51:56', 2, 1, 15, 0),
('41241078', 'Lucy', 'Castro', 's', 's', 'phpqrcode/temp//test0e6494c08c974398fe580d88aa210f91_2016_10_28_18_48_19camilo_f.png', '2016-10-28 11:48:18', 2, 1, 15, 0),
('41242764', 'Yolanda', 'Varela Muercia', 's', 's', 'phpqrcode/temp//test0e293d8b06a2315f3c13f22b9d7c942b_2016_10_28_16_25_24camilo_f.png', '2016-10-28 09:25:21', 2, 1, 15, 0),
('41242890', 'Sandra', 'Borta', 's', 's', 'phpqrcode/temp//testc6f49d882ef2d49a83706429f6669540_2016_10_28_19_44_29camilo_f.png', '2016-10-28 12:44:27', 3, 1, 15, 0),
('41243280', 'Yeidy', 'Galeano Castaneda', 's', 's', 'phpqrcode/temp//testb2b5fb50c2f7d179284ea9f28075526b_2016_10_28_16_24_25camilo_f.png', '2016-10-28 09:24:23', 2, 1, 15, 0),
('41243514', 'Esmeralda', 'Cabiedes Castano', 's', 's', 'phpqrcode/temp//testefd91e0b843b27d89a5f0fe58ce604b0_2016_10_28_17_30_58camilo_f.png', '2016-10-28 10:30:50', 2, 1, 15, 0),
('4165577', 'Jose Epimenio', 'Galindo', 's', 's', 'phpqrcode/temp//test5442d5583945d81951549b585d29cfe4_2016_10_28_17_12_33camilo_f.png', '2016-10-28 10:12:30', 2, 1, 14, 0),
('46373927', 'Yaneth', 'Barela', 's', 's', 'phpqrcode/temp//test2d1a09d1b9570b88237994c108361e6e_2016_10_28_19_57_02camilo_f.png', '2016-10-28 12:57:00', 2, 1, 15, 0),
('5087469', 'Evelis', 'Padilla', 's', 's', 'phpqrcode/temp//test0bab167f04f56e9e4efa2dca4f7cbe3c_2016_10_28_17_06_57camilo_f.png', '2016-10-28 10:05:46', 2, 1, 15, 0),
('52750467', 'Ana Milena', 'Galindo', 's', 's', 'phpqrcode/temp//test9d6a8ece3e94154503ce9a42a31ad54e_2016_10_28_16_50_51camilo_f.png', '2016-10-28 09:50:47', 2, 1, 15, 0),
('52823697', 'Jhonatan', 'Ariza', 's', 's', 'phpqrcode/temp//test9c93320bf7d3999621e4be78b0b2d437_2016_10_28_16_23_16camilo_f.png', '2016-10-28 09:23:15', 2, 1, 14, 0),
('52840148', 'Esmid', 'Borja Chacon', 's', 's', 'phpqrcode/temp//test4397b71b410e6afdccca78198fe28eec_2016_10_28_20_16_20camilo_f.png', '2016-10-28 13:16:11', 3, 1, 14, 0),
('53091805', 'Liana', 'Baron', 's', 's', 'phpqrcode/temp//test51dca10f5f4b3bee80e5460df42bc5b4_2016_10_28_16_22_16camilo_f.png', '2016-10-28 09:22:14', 2, 1, 15, 0),
('53168025', 'Isabel', 'Avila', 's', 's', 'phpqrcode/temp//teste77c573bfdad6b4fae1c08571064840e_2016_10_28_18_06_21camilo_f.png', '2016-10-28 11:06:20', 2, 1, 15, 0),
('5825445', 'Pedro', 'Oviedo', 's', 's', 'phpqrcode/temp//testfb5deab1a97ff6b229ccbb77ac080899_2016_10_28_16_53_31camilo_f.png', '2016-10-28 09:53:29', 2, 1, 14, 0),
('617812115952', 'Jorge', 'Urbiã‘es', 's', 's', 'phpqrcode/temp//test107cff552cfd2a7cb118332ad35198ab_2016_10_28_19_52_10camilo_f.png', '2016-10-28 12:52:08', 2, 1, 14, 0),
('6316605', 'Ferney Adolfo', 'Mejia Correa', 's', 's', 'phpqrcode/temp//test31ff78cb2c12bdc112ff64438c7ec4ef_2016_10_28_19_27_16camilo_f.png', '2016-10-28 12:27:14', 2, 1, 14, 0),
('65501803', 'Marcela Lilian', 'Castiblanco Garcia', 's', 's', 'phpqrcode/temp//test17f8efc894aec30f254c407aa7d0fd1b_2016_10_28_15_44_25camilo_f.png', '2016-10-28 08:44:06', 2, 1, 15, 0),
('70787054', 'Abel Antonio', 'Alvarez', 's', 's', 'phpqrcode/temp//test83299bc26a413b923803c1467a8218ce_2016_10_28_18_00_56camilo_f.png', '2016-10-28 11:00:54', 3, 1, 14, 0),
('7698104', 'Oscar Eduardo', 'Santacruz', 's', 's', 'phpqrcode/temp//testef102391ff9f03ba96a370b620173c1b_2016_10_28_15_44_38camilo_f.png', '2016-10-28 08:44:18', 2, 1, 14, 0),
('7725447', 'Juan Pablo', 'Sterling', 's', 's', 'phpqrcode/temp//teste938f52e394737d21bdf630e59a198f9_2016_10_28_17_23_45camilo_f.png', '2016-10-28 10:23:44', 4, 1, 14, 0),
('79219879', 'Edison', 'Ramirez', 's', 's', 'phpqrcode/temp//testc8e234c749f4617b1cffb7954513cc8b_2016_10_28_19_18_59camilo_f.png', '2016-10-28 12:18:57', 2, 1, 14, 0),
('79457120', 'Juan Carlos', 'Sanchez Botero', 's', 's', 'phpqrcode/temp//testd4199c760f635c6c238451252b6d7b68_2016_10_27_21_33_11camilo_f.png', '2016-10-27 14:33:09', 6, 1, 14, 0),
('79648048', 'Giovanni', 'Rodriguez', 's', 's', 'phpqrcode/temp//test614a796e7c8dab5946f075f4b797cfe3_2016_10_28_18_10_47camilo_f.png', '2016-10-28 11:10:46', 4, 1, 14, 0),
('80127287', 'Wilson Arley', 'Narvaes', 's', 's', 'phpqrcode/temp//test34973d82168487a0a5a4556fdb22f633_2016_10_28_18_00_59camilo_f.png', '2016-10-28 11:00:57', 2, 1, 14, 0),
('80227249', 'Miguel Angel', 'Marroquin', 's', 's', 'phpqrcode/temp//test4824699830d71ad49844ac33896d5fc3_2016_10_28_18_00_08camilo_f.png', '2016-10-28 11:00:06', 2, 1, 14, 0),
('86011478', 'Jhon', 'Cifuentes', 's', 's', 'phpqrcode/temp//test404bee3bc8e81ffe57a74274e28676d7_2016_10_28_18_07_19camilo_f.png', '2016-10-28 11:07:17', 2, 1, 14, 0),
('86014641', 'Leonardo', 'Velasquez', 's', 's', 'phpqrcode/temp//test05f70565c8cb1b299c5760380bcb9456_2016_10_28_20_19_04camilo_f.png', '2016-10-28 13:19:03', 2, 1, 14, 0),
('86058926', 'Hernando', 'Rozo Becerra', 's', 's', 'phpqrcode/temp//test1f3a0aa53b22a8faa0295d64bf567a7a_2016_10_28_01_00_58camilo_f.png', '2016-10-27 14:36:50', 4, 1, 14, 0),
('86060165', 'Jose Eliberto', 'Peã±a Ruiz', 's', 's', 'phpqrcode/temp//testf9281d01a989757599ab86d5202f8a34_2016_10_28_19_17_24camilo_f.png', '2016-10-28 12:17:21', 2, 1, 14, 0),
('86062997', 'Jose Willlintong', 'Herrera', 's', 's', 'phpqrcode/temp//test0f743760cbcaacf37958a546dc41d0bb_2016_10_28_19_15_11camilo_f.png', '2016-10-28 12:15:08', 3, 1, 14, 0),
('86068242', 'Fanor Andres', 'Ortiz', 's', 's', 'phpqrcode/temp//test2657a3c45643cd4a8f77064588405ef0_2016_10_28_15_35_12camilo_f.png', '2016-10-28 08:35:08', 4, 1, 14, 0),
('86069194', 'Edgar Camilo', 'Figueroa', 's', 's', 'phpqrcode/temp//test66e7627ef2c5e574492e9c4e2f75d01b_2016_10_28_15_09_11camilo_f.png', '2016-10-28 08:09:06', 4, 1, 14, 0),
('86978943', 'Cesar Andres', 'Escalante', 's', 's', 'phpqrcode/temp//test7cb0f822550f5025702e71dd446d0c05_2016_10_28_16_39_09camilo_f.png', '2016-10-28 09:39:06', 2, 1, 14, 0),
('88289961', 'Pedro', 'Molina', 's', 's', 'phpqrcode/temp//test039ba9d0700ac1f79642c9bd1a8f6257_2016_10_28_16_11_46camilo_f.png', '2016-10-28 09:11:44', 6, 1, 14, 0),
('8860637', 'Daniel', 'Velasques', 's', 's', 'phpqrcode/temp//testf18d7dbce76f1dfec48617603f2aab8d_2016_10_28_17_59_09camilo_f.png', '2016-10-28 10:59:07', 2, 1, 14, 0),
('9021030', 'Miguel', 'Furnieles', 's', 's', 'phpqrcode/temp//test9cba8e5f43d426d15c2fec21928c09a7_2016_10_28_17_58_51camilo_f.png', '2016-10-28 10:58:50', 3, 1, 14, 0),
('91362585', 'Wilson', 'Duarte', 's', 's', 'phpqrcode/temp//testa7bfac417842d64512986a3618ce53db_2016_10_28_16_54_05camilo_f.png', '2016-10-28 09:54:03', 2, 1, 14, 0),
('91459209', 'Fredy', 'Buitrago', 's', 's', 'phpqrcode/temp//test36c6485fdc11f1f5055c3f0518ea0dfb_2016_10_28_18_01_12camilo_f.png', '2016-10-28 11:01:11', 2, 1, 14, 0),
('91490547', 'John Alfonso', 'Calderon NiÃ±o', 's', 's', 'phpqrcode/temp//test473281575c89d2c30bd6bfad6ef72241_2016_10_28_20_09_07camilo_f.png', '2016-10-28 13:09:05', 4, 1, 14, 0),
('92259605', 'Favio', 'Alvarez', 's', 's', 'phpqrcode/temp//testf2f1e22ec70f64ea5a95371c27a41175_2016_10_28_19_53_06camilo_f.png', '2016-10-28 12:53:03', 2, 1, 14, 0),
('93137296', 'Juan Pablo', 'Pantoja', 's', 's', 'phpqrcode/temp//test683d2061cd6c5a059134d1ee118906b2_2016_10_28_17_39_11camilo_f.png', '2016-10-28 10:39:10', 2, 1, 14, 0),
('93235367', 'Orlando', 'Herrera', 's', 's', 'phpqrcode/temp//test9e9bf3db2dc7f72076c29406543d197d_2016_10_28_19_06_53camilo_f.png', '2016-10-28 12:06:51', 2, 1, 14, 0),
('97610683', 'Haminson', 'Floreano', 's', 's', 'phpqrcode/temp//test65ff9d235fbd1a65d74fd4681bf50b97_2016_10_28_17_08_01camilo_f.png', '2016-10-28 10:08:00', 2, 1, 14, 0),
('97610691', 'Freddy Augusto', 'LondoÃ‘o', 's', 's', 'phpqrcode/temp//testaa28134587254453b993628e5b73a982_2016_10_28_20_08_04camilo_f.png', '2016-10-28 13:08:02', 2, 1, 14, 0),
('97610710', 'Ruben Dario', 'Jaramillo L', 's', 's', 'phpqrcode/temp//test108ed8c852a233966b2c78715b60b82b_2016_10_28_18_38_42camilo_f.png', '2016-10-28 11:38:40', 2, 1, 15, 0),
('97611520', 'Edwin', 'Aguilar', 's', 's', 'phpqrcode/temp//testbba26b0e86cbdddea3e16ba93fcb63bf_2016_10_28_18_51_59camilo_f.png', '2016-10-28 11:51:58', 4, 1, 14, 0),
('97611591', 'Janier', 'Cardona', 's', 's', 'phpqrcode/temp//testa4c659d0e304a3b25d6488a9a8b4de74_2016_10_28_18_04_44camilo_f.png', '2016-10-28 11:04:43', 2, 1, 14, 0),
('97611781', 'Willintong', 'Marin', 's', 's', 'phpqrcode/temp//test89a98988d09388f2793c6272494f6e7f_2016_10_28_18_12_50camilo_f.png', '2016-10-28 11:12:47', 4, 1, 14, 0),
('97612479', 'Winson', 'Galan', 's', 's', 'phpqrcode/temp//teste484fd74d1dd4ea688ad4cea522243d0_2016_10_28_19_39_02camilo_f.png', '2016-10-28 12:39:01', 2, 1, 14, 0),
('97613239', 'Miguel', 'Guerrero', 's', 's', 'phpqrcode/temp//test4fe8ae1b5e407c70a31d6bde03349660_2016_10_28_19_44_10camilo_f.png', '2016-10-28 12:44:08', 2, 1, 14, 0),
('97613738', 'Cesar Orlando', 'Osorio Crespo', 's', 's', 'phpqrcode/temp//test06c97ed7c98cb0a51caf8cf01ff2a477_2016_10_28_17_08_09camilo_f.png', '2016-10-28 10:08:07', 4, 1, 14, 0),
('9770451', 'John', 'Gamboa', 's', 's', 'phpqrcode/temp//testcfbcf0db5c85f2fa36508c3835d49c8a_2016_10_28_18_11_33camilo_f.png', '2016-10-28 11:11:32', 4, 1, 14, 0),
('98052162505', 'Nixon', 'Martinez', 's', 's', 'phpqrcode/temp//test3f6c7791a146ce8084b7bdaf43ad5f34_2016_10_28_15_15_01camilo_f.png', '2016-10-28 08:14:58', 5, 2, 14, 0),
('98072561112', 'Lina Marcela', 'Rizo Giraldo', 's', 's', 'phpqrcode/temp//test9a4138eb17e01602abed4e3e3d279927_2016_10_28_01_13_11camilo_f.png', '2016-10-27 18:13:08', 3, 2, 15, 0),
('98080951221', 'Jose Armando', 'Gutierrez Olmos', 's', 's', 'phpqrcode/temp//test7e2d0b23cfb1340a047ece4d1502a2d8_2016_10_28_18_20_38camilo_f.png', '2016-10-28 11:20:36', 2, 2, 14, 0),
('98082769102', 'Alejandro', 'Leon', 's', 's', 'phpqrcode/temp//test5506f214dc07ea8b9cac7705ace4e5ef_2016_10_28_19_19_49camilo_f.png', '2016-10-28 12:19:47', 2, 2, 14, 0),
('98083163470', 'Julieh', 'Grisales', 's', 's', 'phpqrcode/temp//test9e9c7fec3c2211c50c495586f1089fad_2016_10_28_18_36_27camilo_f.png', '2016-10-28 11:36:26', 3, 2, 15, 0),
('9809036797', 'Camila', 'Caicedo', 's', 's', 'phpqrcode/temp//test54adec060bbadf0967fa85f2744daa8b_2016_10_28_20_05_40camilo_f.png', '2016-10-28 13:05:39', 3, 2, 15, 0),
('98091253160', 'Yeimar Augusto', 'Ayala Sarmiento', 's', 's', 'phpqrcode/temp//test5b0d7aa7aac17e21d5e5c44df8b65094_2016_10_28_19_35_04camilo_f.png', '2016-10-28 12:35:03', 2, 2, 14, 0),
('98092220451', 'Paula', 'Ramirez', 's', 's', 'phpqrcode/temp//testeb81e3918e12c8c66ef00d09e41456d8_2016_10_28_20_18_07camilo_f.png', '2016-10-28 13:18:05', 3, 2, 15, 0),
('98101069443', 'Leandro', 'Gonzales', 's', 's', 'phpqrcode/temp//teste5b52abbffca32bcc1d0dec155c75ca8_2016_10_28_19_04_26camilo_f.png', '2016-10-28 12:04:23', 4, 2, 14, 0),
('98101117812', 'Monica', 'Gonzales', 's', 's', 'phpqrcode/temp//test8ed317a94f7837c1fdcee6edcd948402_2016_10_28_16_22_05camilo_f.png', '2016-10-28 09:22:03', 2, 2, 15, 0),
('98102153731', 'Paula Andrea', 'Cepeda', 's', 's', 'phpqrcode/temp//test3ad8bc9e0944c249009b7338315a0747_2016_10_28_17_11_42camilo_f.png', '2016-10-28 10:11:40', 2, 2, 15, 0),
('98102364970', 'Marly Yurany', 'Herrera', 's', 's', 'phpqrcode/temp//testa2fc4778a471a3845e2ea5b7caaeb2fb_2016_10_28_20_04_16camilo_f.png', '2016-10-28 13:04:14', 3, 2, 15, 0),
('98120612930', 'Jhenci', 'Vera', 's', 's', 'phpqrcode/temp//testfb11f85babf1c51abd3e51118ed9ae63_2016_10_28_17_31_11camilo_f.png', '2016-10-28 10:31:08', 2, 2, 15, 0),
('99010905016', 'Vanessa', 'Melo CastaÃ±o', 's', 's', 'phpqrcode/temp//test0c6f9bc3aed6a87c6dd9ea74a5487b73_2016_10_28_01_27_29camilo_f.png', '2016-10-27 18:25:25', 3, 2, 14, 0),
('99022312983', 'Cristian David', 'Osorio Montenegro', 's', 's', 'phpqrcode/temp//test7b164d2e1b658f2fd594a4404866cc09_2016_10_28_01_07_39camilo_f.png', '2016-10-27 18:05:16', 1, 2, 14, 0),
('99022616079', 'Ana Meliza', 'Huiza Lopez', 's', 's', 'phpqrcode/temp//test4b5c5b0f58156b326744056121c9aca1_2016_10_28_19_47_05camilo_f.png', '2016-10-28 12:47:04', 2, 2, 15, 0),
('99032008751', 'Yeidi Alejandra', 'Franco Castillo', 's', 's', 'phpqrcode/temp//teste5a9ea091c8063bc42f61f42ff8f6a73_2016_10_28_17_43_30camilo_f.png', '2016-10-28 10:43:27', 2, 2, 15, 0),
('99032108292', 'Maria Alejandra', 'Avila', 's', 's', 'phpqrcode/temp//teste1d4b8d7f8569576d0173bdbdc5e7e50_2016_10_28_17_45_52camilo_f.png', '2016-10-28 10:45:50', 2, 2, 15, 0),
('99040704783', 'David', 'Diaz', 's', 's', 'phpqrcode/temp//test940b8f14a7dabd97090a7deede4dddc3_2016_10_28_18_27_25camilo_f.png', '2016-10-28 11:27:22', 2, 2, 14, 0),
('99050913135', 'Luisa', 'Giraldo', 's', 's', 'phpqrcode/temp//test4c6104ec8cf5d3023ea37ee9687aa1ef_2016_10_28_16_04_42camilo_f.png', '2016-10-28 09:03:26', 2, 2, 15, 0),
('99051810216', 'Carolina', 'Aguilar Galeano', 's', 's', 'phpqrcode/temp//test8a6c3e280bb03151278b52b263aa3576_2016_10_28_19_41_00camilo_f.png', '2016-10-28 12:40:58', 2, 2, 15, 0),
('99060309139', 'Veronmica', 'Palacios', 's', 's', 'phpqrcode/temp//testebe9cf91780a7cb0bb837ccb4f098492_2016_10_28_18_25_45camilo_f.png', '2016-10-28 11:25:44', 2, 2, 15, 0),
('99061811237', 'Natalia', 'Gomez', 's', 's', 'phpqrcode/temp//testa35cf12f9bf7178b1811abc4e2cb5414_2016_10_28_18_45_00camilo_f.png', '2016-10-28 11:44:58', 2, 2, 15, 0),
('99061909652', 'Maria Fernanda', 'Rodriguez', 's', 's', 'phpqrcode/temp//testb25d87881f7e922c6ff0eb689a343a9b_2016_10_28_16_09_50camilo_f.png', '2016-10-28 09:09:48', 2, 2, 15, 0),
('99062313370', 'Melitza', 'Mondragon', 's', 's', 'phpqrcode/temp//test2f514f6c656c546384531f157d9fed5d_2016_10_28_01_22_00camilo_f.png', '2016-10-27 18:20:52', 2, 2, 15, 0),
('99081710038', 'Francis Surley', 'Guerrero Jimenez', 's', 's', 'phpqrcode/temp//test63f0c56707741f40b7d1027917e118f1_2016_10_28_19_16_08camilo_f.png', '2016-10-28 12:16:05', 3, 2, 15, 0),
('99090501468', 'Jhon', 'Bernal', 's', 's', 'phpqrcode/temp//testa49f7ce4b092e8aa718b604508071f01_2016_10_28_16_52_36camilo_f.png', '2016-10-28 09:52:35', 2, 2, 14, 0),
('99090811149', 'Juan Felipe', 'Marin', 's', 's', 'phpqrcode/temp//test82ba32f5bdb4efcb76423a0f14032dd7_2016_10_28_18_26_55camilo_f.png', '2016-10-28 11:26:53', 2, 2, 14, 0),
('99092709139', 'Ruby Damaris', 'Ramirez', 's', 's', 'phpqrcode/temp//test42c3f6dcd5a8c201d4c26b6ddbdb4f4e_2016_10_28_19_20_13camilo_f.png', '2016-10-28 12:20:10', 2, 2, 15, 0),
('990927139', 'Ruby Damaris', 'Ramirez', 's', 's', 'phpqrcode/temp//test023ccd10bc9a98a0e56f27b687bb770e_2016_10_28_19_15_50camilo_f.png', '2016-10-28 12:15:48', 2, 2, 15, 0),
('99101407884', 'Wilker Andres', 'Cuenun Buitrago', 's', 's', 'phpqrcode/temp//test1efd53cc784510f9c37c54b5af7bdc05_2016_10_28_19_37_58camilo_f.png', '2016-10-28 12:37:54', 3, 2, 14, 0),
('99101906430', 'Natalia', 'Ibanez', 's', 's', 'phpqrcode/temp//test23e4fce0a0583d6bb83763949fd0fbf9_2016_10_28_18_49_17camilo_f.png', '2016-10-28 11:49:15', 2, 2, 15, 0);

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
(3245, '17328298', '17328298', '2016-10-27 14:12:59'),
(3262, '1120578783', '1120578783', '2016-10-27 14:30:27'),
(3264, '79457120', '79457120', '2016-10-27 14:33:09'),
(3266, '86058926', '86058926', '2016-10-27 14:36:50'),
(3267, '1095804202', '1095804202', '2016-10-27 18:05:14'),
(3268, '99022312983', '99022312983', '2016-10-27 18:05:16'),
(3269, '1006776082', '1006776082', '2016-10-27 18:05:28'),
(3271, '1006776082', '1006776082', '2016-10-27 18:07:13'),
(3272, '1007293915', '1007293915', '2016-10-27 18:07:47'),
(3278, '1120580044', '1120580044', '2016-10-27 18:11:43'),
(3279, '1007293416', '1007293416', '2016-10-27 18:11:49'),
(3280, '120579658', '120579658', '2016-10-27 18:12:38'),
(3281, '1120573437', '1120573437', '2016-10-27 18:12:43'),
(3282, '98072561112', '98072561112', '2016-10-27 18:13:08'),
(3286, '1124798198', '1124798198', '2016-10-27 18:15:13'),
(3290, '1120572644', '1120572644', '2016-10-27 18:18:14'),
(3291, '99062313370', '99062313370', '2016-10-27 18:20:52'),
(3292, '99062313370', '99062313370', '2016-10-27 18:21:58'),
(3293, '1120577148', '1120577148', '2016-10-27 18:25:14'),
(3294, '99010905016', '99010905016', '2016-10-27 18:25:25'),
(3295, '99010905016', '99010905016', '2016-10-27 18:27:28'),
(3301, '17338674', '17338674', '2016-10-27 18:34:52'),
(3307, '1120579871', '1120579871', '2016-10-27 18:49:14'),
(3309, '1120578887', '1120578887', '2016-10-27 18:50:17'),
(3313, '1120566116', '1120566116', '2016-10-27 18:52:01'),
(3316, '1006700264', '1006700264', '2016-10-28 07:47:50'),
(3317, '1120582767', '1120582767', '2016-10-28 07:47:58'),
(3318, '1007294145', '1007294145', '2016-10-28 07:48:00'),
(3319, '1120582767', '1120582767', '2016-10-28 07:49:43'),
(3320, '14135036', '14135036', '2016-10-28 07:53:33'),
(3322, '1120582767', '1120582767', '2016-10-28 07:59:24'),
(3323, '1006700264', '1006700264', '2016-10-28 08:01:48'),
(3324, '1122236033', '1122236033', '2016-10-28 08:02:06'),
(3325, '1120580782', '1120580782', '2016-10-28 08:04:09'),
(3327, '1007294145', '1007294145', '2016-10-28 08:06:39'),
(3328, '1120566116', '1120566116', '2016-10-28 08:08:22'),
(3329, '86069194', '86069194', '2016-10-28 08:09:06'),
(3330, '1120566116', '1120566116', '2016-10-28 08:10:00'),
(3332, '1007293077', '1007293077', '2016-10-28 08:11:17'),
(3333, '1120582025', '1120582025', '2016-10-28 08:12:50'),
(3334, '98052162505', '98052162505', '2016-10-28 08:14:58'),
(3339, '86068242', '86068242', '2016-10-28 08:35:08'),
(3343, '18224471', '18224471', '2016-10-28 08:41:05'),
(3351, '65501803', '65501803', '2016-10-28 08:44:06'),
(3352, '7698104', '7698104', '2016-10-28 08:44:18'),
(3354, '1122239676', '1122239676', '2016-10-28 08:46:21'),
(3370, '1006783343', '1006783343', '2016-10-28 08:52:27'),
(3385, '1007293922', '1007293922', '2016-10-28 08:58:32'),
(3386, '13929674', '13929674', '2016-10-28 08:59:11'),
(3393, '1120565410', '1120565410', '2016-10-28 09:01:54'),
(3396, '1120581411', '1120581411', '2016-10-28 09:03:06'),
(3397, '99050913135', '99050913135', '2016-10-28 09:03:26'),
(3402, '99050913135', '99050913135', '2016-10-28 09:04:40'),
(3410, '18224162', '18224162', '2016-10-28 09:07:58'),
(3416, '99061909652', '99061909652', '2016-10-28 09:09:48'),
(3418, '1007293889', '1007293889', '2016-10-28 09:10:10'),
(3423, '88289961', '88289961', '2016-10-28 09:11:44'),
(3437, '1051502051', '1051502051', '2016-10-28 09:16:11'),
(3441, '1051502051', '1051502051', '2016-10-28 09:17:42'),
(3444, '1051502051', '1051502051', '2016-10-28 09:18:49'),
(3447, '-1120472505', '-1120472505', '2016-10-28 09:20:53'),
(3449, '98101117812', '98101117812', '2016-10-28 09:22:03'),
(3450, '1122122685', '1122122685', '2016-10-28 09:22:14'),
(3451, '53091805', '53091805', '2016-10-28 09:22:14'),
(3452, '40670800', '40670800', '2016-10-28 09:22:40'),
(3453, '1122237482', '1122237482', '2016-10-28 09:22:43'),
(3455, '1120472505', '1120472505', '2016-10-28 09:23:02'),
(3456, '52823697', '52823697', '2016-10-28 09:23:15'),
(3457, '1120561654', '1120561654', '2016-10-28 09:24:10'),
(3458, '41243280', '41243280', '2016-10-28 09:24:23'),
(3459, '1152446346', '1152446346', '2016-10-28 09:24:32'),
(3460, '25099998', '25099998', '2016-10-28 09:25:03'),
(3461, '21086498', '21086498', '2016-10-28 09:25:16'),
(3462, '41242764', '41242764', '2016-10-28 09:25:21'),
(3463, '16185787', '16185787', '2016-10-28 09:25:41'),
(3464, '1120562142', '1120562142', '2016-10-28 09:25:54'),
(3465, '18224425', '18224425', '2016-10-28 09:26:38'),
(3466, '1121866494', '1121866494', '2016-10-28 09:27:05'),
(3467, '1121886664', '1121886664', '2016-10-28 09:27:48'),
(3473, '41211361', '41211361', '2016-10-28 09:29:31'),
(3474, '10097828', '10097828', '2016-10-28 09:29:47'),
(3493, '1120357864', '1120357864', '2016-10-28 09:37:11'),
(3498, '86978943', '86978943', '2016-10-28 09:39:06'),
(3503, '1006775966', '1006775966', '2016-10-28 09:43:05'),
(3505, '1007294462', '1007294462', '2016-10-28 09:43:30'),
(3510, '1120559727', '1120559727', '2016-10-28 09:46:11'),
(3522, '52750467', '52750467', '2016-10-28 09:50:47'),
(3524, '41214999', '41214999', '2016-10-28 09:51:56'),
(3525, '99090501468', '99090501468', '2016-10-28 09:52:35'),
(3526, '1120561068', '1120561068', '2016-10-28 09:52:45'),
(3527, '1120571589', '1120571589', '2016-10-28 09:52:47'),
(3528, '5825445', '5825445', '2016-10-28 09:53:29'),
(3529, '1120578295', '1120578295', '2016-10-28 09:54:02'),
(3530, '91362585', '91362585', '2016-10-28 09:54:03'),
(3531, '1007293116', '1007293116', '2016-10-28 09:54:05'),
(3533, '106782906', '106782906', '2016-10-28 09:55:00'),
(3534, '1006782887', '1006782887', '2016-10-28 09:55:12'),
(3543, '1120575710', '1120575710', '2016-10-28 09:59:32'),
(3555, '1120564340', '1120564340', '2016-10-28 10:03:11'),
(3557, '1120578883', '1120578883', '2016-10-28 10:05:01'),
(3562, '5087469', '5087469', '2016-10-28 10:05:46'),
(3565, '5087469', '5087469', '2016-10-28 10:06:55'),
(3566, '1120572550', '1120572550', '2016-10-28 10:07:27'),
(3568, '97610683', '97610683', '2016-10-28 10:08:00'),
(3569, '97613738', '97613738', '2016-10-28 10:08:07'),
(3571, '2746846', '2746846', '2016-10-28 10:08:31'),
(3573, '1120572705', '1120572705', '2016-10-28 10:08:56'),
(3574, '1006432178', '1006432178', '2016-10-28 10:09:48'),
(3575, '1006783179', '1006783179', '2016-10-28 10:09:57'),
(3578, '1120579619', '1120579619', '2016-10-28 10:11:13'),
(3579, '18222245', '18222245', '2016-10-28 10:11:16'),
(3580, '1007294784', '1007294784', '2016-10-28 10:11:20'),
(3581, '98102153731', '98102153731', '2016-10-28 10:11:40'),
(3582, '1129574804', '1129574804', '2016-10-28 10:12:02'),
(3583, '1120573749', '1120573749', '2016-10-28 10:12:27'),
(3584, '4165577', '4165577', '2016-10-28 10:12:30'),
(3586, '1007294508', '1007294508', '2016-10-28 10:13:42'),
(3587, '1007293633', '1007293633', '2016-10-28 10:14:07'),
(3590, '1122239347', '1122239347', '2016-10-28 10:15:33'),
(3591, '1120582697', '1120582697', '2016-10-28 10:15:36'),
(3595, '1120574943', '1120574943', '2016-10-28 10:17:31'),
(3596, '13927273', '13927273', '2016-10-28 10:18:18'),
(3601, '14135036', '14135036', '2016-10-28 10:20:46'),
(3602, '14135036', '14135036', '2016-10-28 10:20:57'),
(3605, '1120582187', '1120582187', '2016-10-28 10:22:56'),
(3606, '7725447', '7725447', '2016-10-28 10:23:44'),
(3608, '14872497', '14872497', '2016-10-28 10:24:40'),
(3610, '33366422', '33366422', '2016-10-28 10:24:52'),
(3612, '3127332872', '3127332872', '2016-10-28 10:25:50'),
(3618, '1051502051', '1051502051', '2016-10-28 10:29:45'),
(3619, '1120575982', '1120575982', '2016-10-28 10:30:13'),
(3621, '41243514', '41243514', '2016-10-28 10:30:50'),
(3623, '98120612930', '98120612930', '2016-10-28 10:31:08'),
(3628, '1120582036', '1120582036', '2016-10-28 10:34:19'),
(3632, '1007294631', '1007294631', '2016-10-28 10:35:35'),
(3635, '1120576703', '1120576703', '2016-10-28 10:37:18'),
(3639, '1120575317', '1120575317', '2016-10-28 10:38:15'),
(3641, '1120561822', '1120561822', '2016-10-28 10:38:58'),
(3642, '93137296', '93137296', '2016-10-28 10:39:10'),
(3643, '1120582036', '1120582036', '2016-10-28 10:39:17'),
(3644, '1118837841', '1118837841', '2016-10-28 10:39:41'),
(3646, '1118288078', '1118288078', '2016-10-28 10:40:05'),
(3648, '1007666821', '1007666821', '2016-10-28 10:42:41'),
(3649, '1006981291', '1006981291', '2016-10-28 10:42:41'),
(3650, '1005131926', '1005131926', '2016-10-28 10:42:59'),
(3651, '41213033', '41213033', '2016-10-28 10:43:05'),
(3652, '1006723354', '1006723354', '2016-10-28 10:43:21'),
(3653, '99032008751', '99032008751', '2016-10-28 10:43:27'),
(3654, '1007421319', '1007421319', '2016-10-28 10:43:35'),
(3655, '-123', '-123', '2016-10-28 10:43:45'),
(3656, '1006700669', '1006700669', '2016-10-28 10:44:26'),
(3657, '100793802', '100793802', '2016-10-28 10:44:28'),
(3659, '99032108292', '99032108292', '2016-10-28 10:45:50'),
(3663, '1007293278', '1007293278', '2016-10-28 10:47:35'),
(3664, '1121948407', '1121948407', '2016-10-28 10:47:39'),
(3667, '-1234', '-1234', '2016-10-28 10:49:37'),
(3668, '1007245361', '1007245361', '2016-10-28 10:50:29'),
(3669, '31346010696', '31346010696', '2016-10-28 10:50:38'),
(3670, '1007245361', '1007245361', '2016-10-28 10:52:38'),
(3671, '1120571755', '1120571755', '2016-10-28 10:53:07'),
(3672, '1075253823', '1075253823', '2016-10-28 10:53:36'),
(3673, '1006701905', '1006701905', '2016-10-28 10:54:44'),
(3674, '1006701905', '1006701905', '2016-10-28 10:55:49'),
(3675, '1120339882', '1120339882', '2016-10-28 10:57:50'),
(3676, '9021030', '9021030', '2016-10-28 10:58:50'),
(3677, '8860637', '8860637', '2016-10-28 10:59:07'),
(3678, '1006701905', '1006701905', '2016-10-28 10:59:07'),
(3679, '1045486787', '1045486787', '2016-10-28 10:59:18'),
(3680, '1001550374', '1001550374', '2016-10-28 10:59:27'),
(3681, '1060416324', '1060416324', '2016-10-28 10:59:42'),
(3682, '1193076184', '1193076184', '2016-10-28 10:59:47'),
(3683, '80227249', '80227249', '2016-10-28 11:00:06'),
(3684, '70787054', '70787054', '2016-10-28 11:00:54'),
(3685, '80127287', '80127287', '2016-10-28 11:00:57'),
(3686, '37368567', '37368567', '2016-10-28 11:01:08'),
(3687, '91459209', '91459209', '2016-10-28 11:01:11'),
(3688, '1109004047', '1109004047', '2016-10-28 11:01:13'),
(3689, '1052070327', '1052070327', '2016-10-28 11:01:52'),
(3691, '1032396776', '1032396776', '2016-10-28 11:02:15'),
(3692, '1120560996', '1120560996', '2016-10-28 11:02:21'),
(3693, '18224810', '18224810', '2016-10-28 11:03:59'),
(3696, '1120571673', '1120571673', '2016-10-28 11:04:18'),
(3697, '97611591', '97611591', '2016-10-28 11:04:43'),
(3698, '1193046880', '1193046880', '2016-10-28 11:05:43'),
(3700, '53168025', '53168025', '2016-10-28 11:06:20'),
(3701, '31346010696', '31346010696', '2016-10-28 11:06:24'),
(3702, '86011478', '86011478', '2016-10-28 11:07:17'),
(3704, '14698949', '14698949', '2016-10-28 11:07:54'),
(3706, '1053797229', '1053797229', '2016-10-28 11:10:05'),
(3707, '18236087', '18236087', '2016-10-28 11:10:14'),
(3708, '79648048', '79648048', '2016-10-28 11:10:46'),
(3709, '9770451', '9770451', '2016-10-28 11:11:32'),
(3710, '97611781', '97611781', '2016-10-28 11:12:47'),
(3711, '1120562628', '1120562628', '2016-10-28 11:12:54'),
(3713, '1120581449', '1120581449', '2016-10-28 11:13:23'),
(3714, '40188913', '40188913', '2016-10-28 11:15:42'),
(3715, '1120571755', '1120571755', '2016-10-28 11:15:45'),
(3718, '1123160019', '1123160019', '2016-10-28 11:19:47'),
(3719, '1120559879', '1120559879', '2016-10-28 11:19:55'),
(3720, '1120558432', '1120558432', '2016-10-28 11:20:16'),
(3721, '98080951221', '98080951221', '2016-10-28 11:20:36'),
(3722, '1006700868', '1006700868', '2016-10-28 11:21:06'),
(3723, '1120580270', '1120580270', '2016-10-28 11:22:12'),
(3724, '1065863463', '1065863463', '2016-10-28 11:22:20'),
(3727, '1122727272', '1122727272', '2016-10-28 11:23:00'),
(3728, '1007294478', '1007294478', '2016-10-28 11:23:09'),
(3729, '1007421232', '1007421232', '2016-10-28 11:23:25'),
(3730, '1192803698', '1192803698', '2016-10-28 11:23:54'),
(3731, '1007294697', '1007294697', '2016-10-28 11:24:14'),
(3733, '18840609', '18840609', '2016-10-28 11:24:37'),
(3734, '1123162453', '1123162453', '2016-10-28 11:25:00'),
(3735, '1120579999', '1120579999', '2016-10-28 11:25:26'),
(3737, '1006782966', '1006782966', '2016-10-28 11:25:35'),
(3738, '99060309139', '99060309139', '2016-10-28 11:25:44'),
(3740, '1006877813', '1006877813', '2016-10-28 11:26:08'),
(3741, '1120579269', '1120579269', '2016-10-28 11:26:18'),
(3742, '1007584840', '1007584840', '2016-10-28 11:26:36'),
(3744, '1006723759', '1006723759', '2016-10-28 11:26:53'),
(3745, '99090811149', '99090811149', '2016-10-28 11:26:53'),
(3746, '99040704783', '99040704783', '2016-10-28 11:27:22'),
(3747, '-1234', '-1234', '2016-10-28 11:28:48'),
(3748, '1193458462', '1193458462', '2016-10-28 11:28:48'),
(3749, '1007293647', '1007293647', '2016-10-28 11:28:50'),
(3750, '1000383285', '1000383285', '2016-10-28 11:29:13'),
(3753, '1001044263', '1001044263', '2016-10-28 11:29:40'),
(3754, '1006702229', '1006702229', '2016-10-28 11:29:57'),
(3756, '1000291513', '1000291513', '2016-10-28 11:30:09'),
(3757, '1122508440', '1122508440', '2016-10-28 11:30:11'),
(3758, '1006702165', '1006702165', '2016-10-28 11:30:14'),
(3759, '1006701449', '1006701449', '2016-10-28 11:30:32'),
(3762, '1007293399', '1007293399', '2016-10-28 11:31:09'),
(3763, '1006107007', '1006107007', '2016-10-28 11:31:16'),
(3764, '1006874359', '1006874359', '2016-10-28 11:31:20'),
(3765, '1005712579', '1005712579', '2016-10-28 11:31:21'),
(3766, '1002206334', '1002206334', '2016-10-28 11:31:43'),
(3767, '1001116083', '1001116083', '2016-10-28 11:32:02'),
(3768, '1002777576', '1002777576', '2016-10-28 11:32:18'),
(3769, '1006700778', '1006700778', '2016-10-28 11:32:29'),
(3770, '1006723333', '1006723333', '2016-10-28 11:33:48'),
(3771, '-126876', '-126876', '2016-10-28 11:33:54'),
(3773, '1007294960', '1007294960', '2016-10-28 11:34:55'),
(3775, '1006700605', '1006700605', '2016-10-28 11:35:17'),
(3776, '1007293505', '1007293505', '2016-10-28 11:35:30'),
(3777, '98083163470', '98083163470', '2016-10-28 11:36:26'),
(3779, '39556683', '39556683', '2016-10-28 11:37:42'),
(3780, '97610710', '97610710', '2016-10-28 11:38:40'),
(3782, '40395679', '40395679', '2016-10-28 11:39:11'),
(3784, '1007294960', '1007294960', '2016-10-28 11:40:20'),
(3786, '1006723736', '1006723736', '2016-10-28 11:41:57'),
(3787, '1193134131', '1193134131', '2016-10-28 11:43:19'),
(3788, '1006700774', '1006700774', '2016-10-28 11:43:24'),
(3789, '1006723355', '1006723355', '2016-10-28 11:43:25'),
(3790, '3209445136', '3209445136', '2016-10-28 11:43:55'),
(3791, '1006701178', '1006701178', '2016-10-28 11:44:04'),
(3792, '1000992472', '1000992472', '2016-10-28 11:44:14'),
(3793, '1002962995', '1002962995', '2016-10-28 11:44:17'),
(3794, '10159993012', '10159993012', '2016-10-28 11:44:40'),
(3795, '99061811237', '99061811237', '2016-10-28 11:44:58'),
(3796, '3213982410', '3213982410', '2016-10-28 11:45:11'),
(3797, '1000128040', '1000128040', '2016-10-28 11:45:21'),
(3798, '1001273119', '1001273119', '2016-10-28 11:45:45'),
(3799, '1006700560', '1006700560', '2016-10-28 11:45:48'),
(3800, '1108150983', '1108150983', '2016-10-28 11:46:04'),
(3801, '1006782873', '1006782873', '2016-10-28 11:48:01'),
(3802, '112057179', '112057179', '2016-10-28 11:48:07'),
(3803, '41241078', '41241078', '2016-10-28 11:48:18'),
(3804, '1120354303', '1120354303', '2016-10-28 11:48:37'),
(3805, '99101906430', '99101906430', '2016-10-28 11:49:15'),
(3807, '1120570735', '1120570735', '2016-10-28 11:51:06'),
(3808, '97611520', '97611520', '2016-10-28 11:51:58'),
(3809, '1007292581', '1007292581', '2016-10-28 11:52:02'),
(3810, '1122510202', '1122510202', '2016-10-28 11:52:46'),
(3811, '1120569728', '1120569728', '2016-10-28 11:54:09'),
(3814, '17410542', '17410542', '2016-10-28 11:55:53'),
(3815, '21174940', '21174940', '2016-10-28 11:59:23'),
(3816, '1052400689', '1052400689', '2016-10-28 11:59:30'),
(3817, '1014251183', '1014251183', '2016-10-28 11:59:44'),
(3818, '41213451', '41213451', '2016-10-28 12:00:18'),
(3819, '17324943', '17324943', '2016-10-28 12:01:23'),
(3820, '40386775', '40386775', '2016-10-28 12:02:14'),
(3821, '1115185383', '1115185383', '2016-10-28 12:02:15'),
(3823, '1120582252', '1120582252', '2016-10-28 12:02:58'),
(3824, '1006701492', '1006701492', '2016-10-28 12:02:58'),
(3825, '10002280503', '10002280503', '2016-10-28 12:03:09'),
(3826, '1120582083', '1120582083', '2016-10-28 12:03:39'),
(3827, '1120582802', '1120582802', '2016-10-28 12:03:40'),
(3828, '1007293077', '1007293077', '2016-10-28 12:03:45'),
(3829, '98101069443', '98101069443', '2016-10-28 12:04:23'),
(3830, '93235367', '93235367', '2016-10-28 12:06:51'),
(3832, '118547649', '118547649', '2016-10-28 12:08:25'),
(3834, '1120579443', '1120579443', '2016-10-28 12:08:39'),
(3836, '1006700264', '1006700264', '2016-10-28 12:09:45'),
(3841, '30231985', '30231985', '2016-10-28 12:12:05'),
(3845, '86062997', '86062997', '2016-10-28 12:15:08'),
(3846, '1122239448', '1122239448', '2016-10-28 12:15:19'),
(3847, '18223309', '18223309', '2016-10-28 12:15:44'),
(3848, '990927139', '990927139', '2016-10-28 12:15:48'),
(3849, '99081710038', '99081710038', '2016-10-28 12:16:05'),
(3850, '1122237931', '1122237931', '2016-10-28 12:16:17'),
(3851, '1122237390', '1122237390', '2016-10-28 12:17:17'),
(3852, '86060165', '86060165', '2016-10-28 12:17:21'),
(3853, '1007293586', '1007293586', '2016-10-28 12:17:29'),
(3854, '1007294632', '1007294632', '2016-10-28 12:18:52'),
(3855, '79219879', '79219879', '2016-10-28 12:18:57'),
(3857, '98082769102', '98082769102', '2016-10-28 12:19:47'),
(3858, '1009273357', '1009273357', '2016-10-28 12:19:47'),
(3859, '99092709139', '99092709139', '2016-10-28 12:20:10'),
(3861, '99092709139', '99092709139', '2016-10-28 12:21:13'),
(3862, '40328375', '40328375', '2016-10-28 12:21:33'),
(3866, '1010116654', '1010116654', '2016-10-28 12:25:37'),
(3867, '6316605', '6316605', '2016-10-28 12:27:14'),
(3870, '1120581372', '1120581372', '2016-10-28 12:28:09'),
(3871, '1120581883', '1120581883', '2016-10-28 12:30:08'),
(3872, '1120581883', '1120581883', '2016-10-28 12:31:20'),
(3874, '1120580044', '1120580044', '2016-10-28 12:33:09'),
(3875, '1006700882', '1006700882', '2016-10-28 12:34:51'),
(3876, '98091253160', '98091253160', '2016-10-28 12:35:03'),
(3877, '1120581456', '1120581456', '2016-10-28 12:37:10'),
(3878, '99101407884', '99101407884', '2016-10-28 12:37:54'),
(3879, '1120581711', '1120581711', '2016-10-28 12:37:55'),
(3880, '1007293033', '1007293033', '2016-10-28 12:37:56'),
(3881, '1006534731', '1006534731', '2016-10-28 12:38:08'),
(3882, '1120578967', '1120578967', '2016-10-28 12:38:09'),
(3883, '1006840369', '1006840369', '2016-10-28 12:38:38'),
(3884, '97612479', '97612479', '2016-10-28 12:39:01'),
(3885, '1123059150', '1123059150', '2016-10-28 12:39:44'),
(3886, '120566234', '120566234', '2016-10-28 12:40:55'),
(3887, '99051810216', '99051810216', '2016-10-28 12:40:58'),
(3888, '1001294614', '1001294614', '2016-10-28 12:41:04'),
(3889, '1006700269', '1006700269', '2016-10-28 12:41:15'),
(3890, '40326817', '40326817', '2016-10-28 12:41:47'),
(3891, '1121948168', '1121948168', '2016-10-28 12:42:33'),
(3892, '1010091057', '1010091057', '2016-10-28 12:42:43'),
(3895, '97613239', '97613239', '2016-10-28 12:44:08'),
(3896, '40187464', '40187464', '2016-10-28 12:44:24'),
(3897, '41242890', '41242890', '2016-10-28 12:44:27'),
(3898, '99022616079', '99022616079', '2016-10-28 12:47:04'),
(3899, '120581589', '120581589', '2016-10-28 12:47:45'),
(3900, '1122239413', '1122239413', '2016-10-28 12:48:54'),
(3901, '112772994', '112772994', '2016-10-28 12:49:01'),
(3902, '1120578156', '1120578156', '2016-10-28 12:50:01'),
(3903, '1122239413', '1122239413', '2016-10-28 12:50:27'),
(3904, '41212339', '41212339', '2016-10-28 12:50:48'),
(3905, '1120580891', '1120580891', '2016-10-28 12:51:58'),
(3906, '617812115952', '617812115952', '2016-10-28 12:52:08'),
(3907, '1120574316', '1120574316', '2016-10-28 12:52:33'),
(3908, '1006723503', '1006723503', '2016-10-28 12:52:35'),
(3909, '1133924007', '1133924007', '2016-10-28 12:52:58'),
(3910, '92259605', '92259605', '2016-10-28 12:53:03'),
(3911, '1076385282', '1076385282', '2016-10-28 12:53:19'),
(3914, '1120384280', '1120384280', '2016-10-28 12:54:32'),
(3915, '103889097', '103889097', '2016-10-28 12:54:35'),
(3916, '1027890178', '1027890178', '2016-10-28 12:54:57'),
(3918, '28917478', '28917478', '2016-10-28 12:55:10'),
(3920, '1120563173', '1120563173', '2016-10-28 12:55:17'),
(3921, '1006840473', '1006840473', '2016-10-28 12:55:46'),
(3922, '103889097', '103889097', '2016-10-28 12:55:56'),
(3923, '1120582199', '1120582199', '2016-10-28 12:56:13'),
(3925, '1120578915', '1120578915', '2016-10-28 12:56:52'),
(3926, '46373927', '46373927', '2016-10-28 12:57:00'),
(3927, '1120578424', '1120578424', '2016-10-28 12:57:00'),
(3928, '1120957108', '1120957108', '2016-10-28 12:57:05'),
(3929, '1120581523', '1120581523', '2016-10-28 12:57:15'),
(3930, '1120582479', '1120582479', '2016-10-28 12:57:20'),
(3931, '1122238584', '1122238584', '2016-10-28 12:58:01'),
(3933, '17332441', '17332441', '2016-10-28 12:58:28'),
(3934, '1006840496', '1006840496', '2016-10-28 12:58:29'),
(3935, '1120579126', '1120579126', '2016-10-28 12:58:35'),
(3936, '1120580281', '1120580281', '2016-10-28 12:59:04'),
(3937, '1120578567', '1120578567', '2016-10-28 12:59:15'),
(3938, '1122239550', '1122239550', '2016-10-28 12:59:28'),
(3939, '1006811621', '1006811621', '2016-10-28 12:59:30'),
(3940, '1006840619', '1006840619', '2016-10-28 12:59:33'),
(3941, '41212155', '41212155', '2016-10-28 13:00:17'),
(3942, '1006782800', '1006782800', '2016-10-28 13:00:19'),
(3943, '1193048656', '1193048656', '2016-10-28 13:01:06'),
(3944, '1120582602', '1120582602', '2016-10-28 13:01:27'),
(3945, '1020581207', '1020581207', '2016-10-28 13:01:33'),
(3946, '1007294801', '1007294801', '2016-10-28 13:01:42'),
(3947, '1120574316', '1120574316', '2016-10-28 13:01:56'),
(3948, '121901844', '121901844', '2016-10-28 13:01:57'),
(3949, '1007244157', '1007244157', '2016-10-28 13:02:16'),
(3950, '1120580691', '1120580691', '2016-10-28 13:02:58'),
(3951, '17345777', '17345777', '2016-10-28 13:03:00'),
(3952, '1120573472', '1120573472', '2016-10-28 13:03:07'),
(3953, '1120579761', '1120579761', '2016-10-28 13:03:21'),
(3954, '1121854913', '1121854913', '2016-10-28 13:03:25'),
(3955, '1120579567', '1120579567', '2016-10-28 13:04:10'),
(3956, '98102364970', '98102364970', '2016-10-28 13:04:14'),
(3957, '1120571711', '1120571711', '2016-10-28 13:04:17'),
(3958, '1006723418', '1006723418', '2016-10-28 13:04:23'),
(3959, '1006811574', '1006811574', '2016-10-28 13:05:17'),
(3960, '1006701027', '1006701027', '2016-10-28 13:05:22'),
(3961, '9809036797', '9809036797', '2016-10-28 13:05:39'),
(3962, '1007097819', '1007097819', '2016-10-28 13:05:40'),
(3964, '1120581207', '1120581207', '2016-10-28 13:05:56'),
(3965, '1120580227', '1120580227', '2016-10-28 13:06:03'),
(3966, '1193312925', '1193312925', '2016-10-28 13:07:00'),
(3967, '1006783569', '1006783569', '2016-10-28 13:07:09'),
(3968, '1120160601', '1120160601', '2016-10-28 13:07:23'),
(3969, '1120560601', '1120560601', '2016-10-28 13:07:52'),
(3970, '97610691', '97610691', '2016-10-28 13:08:02'),
(3971, '91490547', '91490547', '2016-10-28 13:09:05'),
(3972, '27090627', '27090627', '2016-10-28 13:09:58'),
(3973, '1004418326', '1004418326', '2016-10-28 13:10:12'),
(3975, '1120580281', '1120580281', '2016-10-28 13:11:34'),
(3976, '1030683631', '1030683631', '2016-10-28 13:11:35'),
(3978, '1120580691', '1120580691', '2016-10-28 13:11:39'),
(3980, '1120576073', '1120576073', '2016-10-28 13:11:44'),
(3983, '1027890778', '1027890778', '2016-10-28 13:12:23'),
(3984, '1120579126', '1120579126', '2016-10-28 13:12:23'),
(3985, '1007294499', '1007294499', '2016-10-28 13:12:27'),
(3986, '1120579543', '1120579543', '2016-10-28 13:12:58'),
(3987, '1120578095', '1120578095', '2016-10-28 13:13:54'),
(3988, '1120560510', '1120560510', '2016-10-28 13:14:09'),
(3989, '1120580281', '1120580281', '2016-10-28 13:14:13'),
(3990, '1120579343', '1120579343', '2016-10-28 13:14:23'),
(3991, '1120564844', '1120564844', '2016-10-28 13:15:46'),
(3992, '1120570086', '1120570086', '2016-10-28 13:16:03'),
(3993, '1007294499', '1007294499', '2016-10-28 13:16:09'),
(3994, '52840148', '52840148', '2016-10-28 13:16:11'),
(3995, '1120925998', '1120925998', '2016-10-28 13:16:16'),
(3996, '52840148', '52840148', '2016-10-28 13:16:18'),
(3997, '1120360446', '1120360446', '2016-10-28 13:16:24'),
(3998, '1055313237', '1055313237', '2016-10-28 13:17:06'),
(4000, '91490547', '91490547', '2016-10-28 13:17:45'),
(4001, '98092220451', '98092220451', '2016-10-28 13:18:05'),
(4002, '1006701228', '1006701228', '2016-10-28 13:18:25'),
(4003, '1006903378', '1006903378', '2016-10-28 13:18:34'),
(4004, '1006701228', '1006701228', '2016-10-28 13:18:40'),
(4006, '12455704', '12455704', '2016-10-28 13:18:57'),
(4007, '86014641', '86014641', '2016-10-28 13:19:03'),
(4008, '1121417292', '1121417292', '2016-10-28 13:19:08'),
(4009, '86069194', '86069194', '2019-11-13 16:18:05'),
(4010, '123123123999', '123123123999', '2019-11-13 16:21:37'),
(4012, '86069194', '86069194', '2020-09-14 17:11:14'),
(4013, '86069194', '86069194', '2020-09-14 17:20:31'),
(4014, '86069194', '86069194', '2020-09-14 17:25:42');

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
(1, '86069194', 24, '2020-09-14 17:17:46'),
(2, '86069194', 32, '2020-09-14 17:17:46'),
(3, '86069194', 35, '2020-09-14 17:17:46'),
(4, '86069194', 39, '2020-09-14 17:17:47'),
(5, '86069194', 43, '2020-09-14 17:17:47'),
(6, '86069194', 45, '2020-09-14 17:17:47'),
(7, '86069194', 10, '2020-09-14 17:18:45'),
(8, '86069194', 15, '2020-09-14 17:18:45'),
(9, '86069194', 25, '2020-09-14 17:18:45'),
(10, '86069194', 34, '2020-09-14 17:18:46'),
(11, '86069194', 38, '2020-09-14 17:18:46'),
(12, '86069194', 42, '2020-09-14 17:18:46'),
(13, '86069194', 44, '2020-09-14 17:18:46'),
(14, '86069194', 46, '2020-09-14 17:18:46'),
(15, '86069194', 9, '2020-09-14 17:25:59'),
(16, '86069194', 14, '2020-09-14 17:25:59'),
(17, '86069194', 32, '2020-09-14 17:25:59'),
(18, '86069194', 35, '2020-09-14 17:25:59'),
(19, '86069194', 43, '2020-09-14 17:25:59'),
(20, '86069194', 45, '2020-09-14 17:25:59');

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
(6, 'Administrativo-Sena');

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
  MODIFY `cod_pers_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4015;

--
-- AUTO_INCREMENT de la tabla `tb_personas_respuestas`
--
ALTER TABLE `tb_personas_respuestas`
  MODIFY `id_persona_respuesta` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `cod_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
