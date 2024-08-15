-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-08-2016 a las 01:21:32
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_qr_code_sena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_encuestas`
--

CREATE TABLE IF NOT EXISTS `tb_encuestas` (
  `id_encuesta` int(11) NOT NULL,
  `titulo_encuesta` varchar(100) NOT NULL,
  `descripcion_larga` varchar(500) DEFAULT NULL,
  `sn_publicar` tinyint(1) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_encuestas`
--

INSERT INTO `tb_encuestas` (`id_encuesta`, `titulo_encuesta`, `descripcion_larga`, `sn_publicar`, `fecha_registro`) VALUES
(1, 'Encuesta Expo SENA 2015', NULL, 0, '2015-11-04 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_genero`
--

CREATE TABLE IF NOT EXISTS `tb_genero` (
  `cod_genero` int(11) NOT NULL,
  `genero` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `tb_personas` (
  `num_doc` varchar(15) NOT NULL,
  `nombres` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `sn_mostrar` varchar(1) DEFAULT NULL,
  `sn_contar` varchar(2) DEFAULT NULL,
  `url_imagen` varchar(500) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `rol` int(11) NOT NULL,
  `cod_tipo_doc` int(11) NOT NULL,
  `cod_genero` int(11) NOT NULL,
  `cod_programa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_personas_registros`
--

CREATE TABLE IF NOT EXISTS `tb_personas_registros` (
  `cod_pers_reg` int(11) NOT NULL,
  `identif_1` varchar(15) NOT NULL,
  `identif_2` varchar(15) NOT NULL,
  `fec_reg` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3150 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_personas_respuestas`
--

CREATE TABLE IF NOT EXISTS `tb_personas_respuestas` (
  `id_persona_respuesta` bigint(20) unsigned NOT NULL,
  `num_doc` varchar(15) NOT NULL,
  `id_posible_respuesta` int(11) NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1174 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_posibles_respuestas`
--

CREATE TABLE IF NOT EXISTS `tb_posibles_respuestas` (
  `id_posible_respuesta` int(11) NOT NULL,
  `texto_respuesta` varchar(100) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `id_pregunta` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_posibles_respuestas`
--

INSERT INTO `tb_posibles_respuestas` (`id_posible_respuesta`, `texto_respuesta`, `fecha_registro`, `id_pregunta`) VALUES
(9, 'Negocios', '0000-00-00 00:00:00', 5),
(10, 'Adquirir Conocimientos', '0000-00-00 00:00:00', 5),
(11, 'Entretenimiento', '0000-00-00 00:00:00', 5),
(12, 'Por curiosidad', '0000-00-00 00:00:00', 5),
(13, 'Otro', '0000-00-00 00:00:00', 5),
(14, 'Tecnología', '0000-00-00 00:00:00', 6),
(15, 'Agricultura', '0000-00-00 00:00:00', 6),
(16, 'Arte', '0000-00-00 00:00:00', 6),
(17, 'Gastronomía', '0000-00-00 00:00:00', 6),
(18, 'Agroindustria', '0000-00-00 00:00:00', 6),
(19, 'Salud', '0000-00-00 00:00:00', 6),
(20, 'Ambiental', '0000-00-00 00:00:00', 6),
(21, 'Construcción', '0000-00-00 00:00:00', 6),
(22, 'Comercio y servicio', '0000-00-00 00:00:00', 6),
(23, 'Otro', '0000-00-00 00:00:00', 6),
(24, 'Tecnológico', '0000-00-00 00:00:00', 7),
(25, 'Agricultura', '0000-00-00 00:00:00', 7),
(26, 'Arte', '0000-00-00 00:00:00', 7),
(27, 'Gastronómico', '0000-00-00 00:00:00', 7),
(28, 'Agroindustrial', '0000-00-00 00:00:00', 7),
(29, 'Salud', '0000-00-00 00:00:00', 7),
(30, 'Ambiental', '0000-00-00 00:00:00', 7),
(31, 'Construcción', '0000-00-00 00:00:00', 7),
(32, 'Comercio y servicios', '0000-00-00 00:00:00', 7),
(34, 'Otro', '0000-00-00 00:00:00', 7),
(35, 'Excelente', '0000-00-00 00:00:00', 8),
(36, 'Buena', '0000-00-00 00:00:00', 8),
(37, 'Regular', '0000-00-00 00:00:00', 8),
(38, 'Mala', '0000-00-00 00:00:00', 8),
(39, 'Sí', '0000-00-00 00:00:00', 9),
(42, 'No', '0000-00-00 00:00:00', 9),
(43, 'Sí', '0000-00-00 00:00:00', 10),
(44, 'No', '0000-00-00 00:00:00', 10),
(45, '1', '0000-00-00 00:00:00', 11),
(46, '2', '0000-00-00 00:00:00', 11),
(47, '3', '0000-00-00 00:00:00', 11),
(48, '4', '0000-00-00 00:00:00', 11),
(49, '5', '0000-00-00 00:00:00', 11),
(50, '1', '0000-00-00 00:00:00', 12),
(51, '2', '0000-00-00 00:00:00', 12),
(52, '3', '0000-00-00 00:00:00', 12),
(53, '4', '0000-00-00 00:00:00', 12),
(54, '5', '0000-00-00 00:00:00', 12),
(55, '1', '0000-00-00 00:00:00', 13),
(56, '2', '0000-00-00 00:00:00', 13),
(57, '3', '0000-00-00 00:00:00', 13),
(58, '4', '0000-00-00 00:00:00', 13),
(59, '5', '0000-00-00 00:00:00', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_preguntas`
--

CREATE TABLE IF NOT EXISTS `tb_preguntas` (
  `id_pregunta` int(11) NOT NULL,
  `texto_pregunta` varchar(200) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `id_encuesta` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_preguntas`
--

INSERT INTO `tb_preguntas` (`id_pregunta`, `texto_pregunta`, `fecha_registro`, `id_encuesta`) VALUES
(5, '¿Qué lo motiva a visitar Exposena 2015?', '0000-00-00 00:00:00', 1),
(6, '¿Cuál fue el área de interés  a visitar en Exposena?', '0000-00-00 00:00:00', 1),
(7, '¿Cuál fue el área que más agrado en la visita Exposena 2015?', '0000-00-00 00:00:00', 1),
(8, 'En términos generales, ¿Cómo califica usted la experiencia Exposena 2015?', '0000-00-00 00:00:00', 1),
(9, 'En comparación con otros años, ¿considera que ha mejorado?', '0000-00-00 00:00:00', 1),
(10, 'Recomendaría a otras personas a asistir a Exposena', '0000-00-00 00:00:00', 1),
(11, 'Las instalaciones son atractivas visualmente aptas para brindar atención', '0000-00-00 00:00:00', 1),
(12, 'Existe suficiente señalización para indicar donde obtener el servicio que requiere', '0000-00-00 00:00:00', 1),
(13, 'El personal que lo trato  mostro conocimientos suficientes para resolver las preguntas', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_programas`
--

CREATE TABLE IF NOT EXISTS `tb_programas` (
  `cod_programa` int(11) NOT NULL,
  `programa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_roles`
--

CREATE TABLE IF NOT EXISTS `tb_roles` (
  `cod_rol` int(11) NOT NULL,
  `desc_rol` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
(7, 'Expositor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tipo_doc`
--

CREATE TABLE IF NOT EXISTS `tb_tipo_doc` (
  `cod_tipo_doc` int(11) NOT NULL,
  `desc_tipo_doc` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
  ADD KEY `ROL` (`rol`),
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
  MODIFY `id_encuesta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tb_genero`
--
ALTER TABLE `tb_genero`
  MODIFY `cod_genero` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `tb_personas_registros`
--
ALTER TABLE `tb_personas_registros`
  MODIFY `cod_pers_reg` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3150;
--
-- AUTO_INCREMENT de la tabla `tb_personas_respuestas`
--
ALTER TABLE `tb_personas_respuestas`
  MODIFY `id_persona_respuesta` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1174;
--
-- AUTO_INCREMENT de la tabla `tb_posibles_respuestas`
--
ALTER TABLE `tb_posibles_respuestas`
  MODIFY `id_posible_respuesta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT de la tabla `tb_preguntas`
--
ALTER TABLE `tb_preguntas`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `tb_programas`
--
ALTER TABLE `tb_programas`
  MODIFY `cod_programa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `cod_rol` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `tb_tipo_doc`
--
ALTER TABLE `tb_tipo_doc`
  MODIFY `cod_tipo_doc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

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
