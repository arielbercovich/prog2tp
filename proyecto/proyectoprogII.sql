CREATE DATABASE  IF NOT EXISTS `proyectoprogII` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `proyectoprogII`;
-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 16-06-2023 a las 20:38:06
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoprogII`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_post` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `texto_comentario` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_post`, `id_usuario`, `texto_comentario`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 1, 'Idolo en Racing. Las gano todas', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(2, 1, 1, 'Muy buen arquero', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(3, 1, 1, 'muy bueno con los pies', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(4, 1, 1, 'Proximamente se va de racing', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(5, 2, 2, 'en su comienzo en comunicaciones estuvo bien', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(6, 2, 2, 'Bueno atajando penales. Fenomeno', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(7, 2, 2, 'Tiene su estilo atajando', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(8, 2, 2, 'Futuro europeo', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(9, 3, 3, 'Recien comenzando. Crack total', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(10, 3, 3, 'De a poco va mejorando', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(11, 3, 3, 'Futuro en liga brasileña', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(12, 3, 3, 'peleado con los hinchas', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(13, 4, 4, 'Recien comenzando. Crack total', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(14, 4, 4, 'mucho recorrido futbol argentino', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(15, 4, 4, 'Tiene sus diferencias con su club', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(16, 4, 4, 'estuvo por firmar para el real madrid', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(17, 5, 5, 'Jugador con mucho potencial, lo tuve en 5ta división y sus condiciones como clásico 10 se notaban', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(18, 5, 5, 'En inferiores la rompió', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(19, 5, 5, 'gran familia', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(20, 5, 1, 'potencial extremo', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(21, 2, 1, 'Tiene su estilo', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(22, 4, 1, 'Esta mejorando mucho', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(23, 4, 1, 'mejorando mucho', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(24, 1, 2, 'buen vinculo con los jovenes', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(25, 2, 2, 'Mejoranco muchisimo', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(26, 5, 2, 'buen vinculo con dirigentes', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(27, 5, 2, 'buena pegada', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(28, 2, 3, 'tiene lo suyo', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(29, 1, 3, 'lo que juega este muchacho es descomunal', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(30, 2, 3, 'buena volea', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(31, 10, 3, 'fenomeno', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(32, 10, 4, 'ambidiestro', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(33, 1, 4, 'ambidiestro', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(34, 1, 4, 'buena pegada tiro libres', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(35, 1, 4, 'jugador fenomenal', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(36, 1, 5, 'futuro europeo', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(37, 2, 5, 'futuro europeo', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(38, 2, 5, 'suele usar doble media', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(39, 2, 5, 'se comio un gol en el clasico', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(40, 2, 5, 'tiene su estilo', '2023-06-01 18:22:10', '2023-06-01 18:22:10', NULL),
(41, 18, 10, 'Una bestia, fisico increible', '2023-06-13 20:24:11', '2023-06-13 20:24:11', NULL),
(42, 18, 10, 'Recomendadisimo', '2023-06-13 20:24:28', '2023-06-13 20:24:28', NULL),
(43, 19, 10, 'ex? novio de @azulbid', '2023-06-13 20:25:05', '2023-06-13 20:25:05', NULL),
(44, 21, 10, 'Los bosteros lo extrañamos todos los días', '2023-06-13 20:28:46', '2023-06-13 20:28:46', NULL),
(45, 21, 10, 'si', '2023-06-13 20:32:31', '2023-06-13 20:32:31', NULL),
(46, 18, 10, 'maquina', '2023-06-13 21:13:27', '2023-06-13 21:13:27', NULL),
(47, 14, 11, 'maquina', '2023-06-14 02:28:45', '2023-06-14 02:28:45', NULL),
(48, 18, 11, 'Hola me interesa', '2023-06-14 15:41:33', '2023-06-14 15:41:33', NULL),
(49, 21, 11, 'Gran compañero', '2023-06-14 15:41:55', '2023-06-14 15:41:55', NULL),
(50, 22, 10, 'Una bestia, fisico increible', '2023-06-14 15:46:19', '2023-06-14 15:46:19', NULL),
(51, 23, 10, 'NUNCA TUVE UN PROFE ASI. UN GENIO', '2023-06-14 16:21:40', '2023-06-14 16:21:40', NULL),
(52, 25, 16, 'Mentira, es un crack', '2023-06-15 02:03:11', '2023-06-15 02:03:11', NULL),
(53, 23, 11, 'Uno de los mejores docentes de la Argentina', '2023-06-15 19:12:19', '2023-06-15 19:12:19', NULL),
(54, 23, 11, 'genio', '2023-06-15 19:16:47', '2023-06-15 19:16:47', NULL),
(55, 21, 11, 'Una bestia, fisico increible', '2023-06-15 19:18:33', '2023-06-15 19:18:33', NULL),
(56, 17, 11, 'Lo quiero', '2023-06-15 19:19:10', '2023-06-15 19:19:10', NULL),
(57, 11, 10, 'Que fututo!!!', '2023-06-16 14:11:22', '2023-06-16 14:11:22', NULL),
(58, 23, 10, 'genio', '2023-06-16 14:15:15', '2023-06-16 14:15:15', NULL),
(59, 23, 18, 'Arquerazo, lo tuve de compañero y me salvó las papas varias veces.', '2023-06-16 14:35:17', '2023-06-16 14:35:17', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `foto` varchar(1000) DEFAULT NULL,
  `posicion` varchar(255) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_usuario`, `nombre_producto`, `descripcion`, `createdAt`, `updatedAt`, `deletedAt`, `foto`, `posicion`, `detalle`) VALUES
(1, 1, 'Gabriel Arias', 'Gabriel Arias Arroyo es un futbolista chileno nacido en Argentina. Juega como arquero en Racing Club', '2023-06-01 18:22:10', '2023-06-12 15:07:36', NULL, 'https://www.racingclub.com.ar/img/futbol/plantel/880_arias.jpg?v=2.3', 'arquero', 'Racing - Arquero - 02/03/1990 - CHI'),
(2, 2, 'German Salort', 'Germán Guillermo Salort es un futbolista argentino. Juega de Arquero y su equipo actual es Comunicac', '2023-06-01 18:22:10', '2023-06-12 15:07:36', NULL, 'https://pbs.twimg.com/media/EDzsNBzWwAUvgkw.jpg:large', 'arquero', 'Comunicaciones - Arquero - 22/2/2000 - ARG'),
(3, 3, 'Leandro Brey', 'Leandro Brey es un futbolista argentino. Actualmente es el arquero de la Reserva del C.A Boca Junior', '2023-06-01 18:22:10', '2023-06-12 15:07:36', NULL, 'https://www.bocajuniors.com.ar/upload/files/brey_b2a82.jpg', 'arquero', 'Boca Juniors - Arquero - 02/10/2001 - ARG'),
(4, 4, 'Augusto Batalla', 'Augusto Batalla es un futbolista argentino. Actualmente es el arquero titular de San Lorenzo de Alma', '2023-06-01 18:22:10', '2023-06-12 15:07:36', NULL, 'https://sanlorenzo.com.ar/img/plantel/futbol/2023/g/01-27_1674850514.jpg', 'arquero', 'San Lorenzo - Arquero - 13/04/1997 - ARG'),
(5, 5, 'Facundo Mura', 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independien', '2023-06-01 18:22:10', '2023-06-12 15:07:36', NULL, 'https://www.racingclub.com.ar/img/futbol/plantel/1216_mura.jpg?v=2.3', 'defensor', 'Racing - Lateral Derecho - 29/02/2000 - ARG'),
(6, 1, 'Federico Gattoni', 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independien', '2023-06-01 18:22:10', '2023-06-12 15:07:36', NULL, 'https://sanlorenzo.com.ar/img/plantel/futbol/2023/g/01-27_1674847984.jpg', 'defensor', 'San Lorenzo - Defensor Central - 29/02/2000 - ARG'),
(7, 2, 'Bruno Bianchi', 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independien', '2023-06-01 18:22:10', '2023-06-12 15:07:36', NULL, 'https://imgsvr.radiocut.site/get/crop/center/200/200/cuts_logos/43/b1/43b1eee7-c083-4826-a87d-7ce240900b16.jpg', 'defensor', 'Atletico Tucuman - Defensor Central - 09/12/1993 - ARG'),
(8, 3, 'Alan Rodriguez', 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independien', '2023-06-01 18:22:10', '2023-06-12 15:07:36', NULL, 'https://rosariocentral.com/wp-content/uploads/2023/02/AlanRodriguez-16.png', 'defensor', 'Racing - Lateral Derecho - 29/02/2000 - ARG'),
(9, 4, 'Baltasar Barcia', 'Mateo Baltasar Barcia Fernández es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualme', '2023-06-01 18:22:10', '2023-06-12 15:07:36', NULL, 'https://www.cronica.com.ar/__export/1674582533591/sites/cronica/img/2023/01/24/baltasarbarcia_crop1674581889868.jpg_337303427.jpg', 'volante', 'Independiente - Volante Ofensivo - 19/02/2001 - URU'),
(10, 5, 'Ignacio Fernández', 'Ignacio Martín Fernández es un futbolista argentino. Se desempeña como mediocampista y su equipo act', '2023-06-01 18:22:10', '2023-06-12 15:07:36', NULL, 'https://www.cariverplate.com.ar/imagenes/jugadores/2022-12/1254-nacho_653x667.png', 'volante', 'River Plate - Mediocampista Ofensivo - 12/01/1990 - ARG'),
(11, 1, 'Federico Redondo', 'Redondo es crack', '2023-06-07 15:08:42', '2023-06-12 15:07:36', NULL, 'https://pbs.twimg.com/media/FwfpcvkWwAMT-cc.jpg:large', 'volante', 'Argentinos Juniors - Volante - 22/05/2003 - ARG'),
(12, 2, 'Cristian Medina', 'Medina bestia', '2023-06-07 15:08:42', '2023-06-12 15:07:36', NULL, 'https://www.bocajuniors.com.ar/upload/files/medina_548bd.jpg', 'volante', 'Boca Juniors - Volante - 12/12/2001 - ARG'),
(13, 3, 'Darío Benedetto', '\'El Pipa\'', '2023-06-07 15:08:42', '2023-06-12 15:07:36', NULL, 'https://www.bocajuniors.com.ar/upload/files/benedetto_84f59.jpg', 'delantero', 'Boca Juniors - Delantero Centro - 17/05/1990 - ARG'),
(14, 4, 'Lisandro Lopez', 'El Licha', '2023-06-07 15:08:42', '2023-06-12 15:07:36', NULL, 'https://media.ambito.com/p/9282eba9aea22c2acbd6b9c824a8766d/adjuntos/239/imagenes/039/560/0039560226/lisandro-lopez-sarmientojpg.jpg', 'delantero', 'Sarmiento - Delantero Centro - 02/03/1983 - ARG'),
(15, 5, 'Mateo Retegui', 'Mate italiano', '2023-06-07 15:08:42', '2023-06-12 15:07:36', NULL, 'https://www.lavoz.com.ar/resizer/4xzXMYlsTmC-Qfk2V1JqHF3Gyj4=/980x640/smart/filters:quality(75):format(webp)/cloudfront-us-east-1.images.arcpublishing.com/grupoclarin/TK6JSW44XZGFHO6RJJ76YDAFJM.jpg', 'delantero', 'Tigre - Delantero Centro - 07/10/2000 - ITA'),
(16, 1, 'Federico Girotti', 'Prestamo de River', '2023-06-07 15:08:42', '2023-06-12 15:07:36', NULL, 'https://www.clubtalleres.com.ar/wp-content/uploads/2022/03/WEB_GIROTTI-FEDERICO-1.png', 'delantero', 'Talleres - Delantero Centro - 02/02/2001 - ARG'),
(17, 10, 'Alejo Veliz', 'Futuro', '2023-06-12 13:51:01', '2023-06-12 14:02:06', NULL, 'https://rosariocentral.com/wp-content/uploads/2022/02/AlejoVeliz-9.png', 'delantero', 'Rosario Central - Delantero Centro - 07/01/2003 - ARG'),
(18, 10, 'Brian Kreiman', 'Es una bestia fisica. El jugador nacido en el año 2002 tiene un prometedor futuro por delante. Actualmente milita en Fenix', '2023-06-12 13:53:25', '2023-06-14 15:38:45', NULL, 'https://desdelaventana.com.ar/zixpanel/cache/med-fecha_2022-07-19_hora_04-59hs_nro-random_640.jpg', 'defensor', 'Fénix - Defensor Central - 03/10/2002 - ARG'),
(19, 13, 'Santiago Postel', 'xkxk', '2023-06-12 13:59:11', '2023-06-12 15:07:36', NULL, 'https://www.ligaprofesional.ar/wp-content/uploads/2023/03/IMG_9562.jpg', 'defensor', 'Platense - Defensor Central - 20/03/2003 - ARG'),
(21, 10, 'Roberto Abbondanzieri', '\"El Pato\". Idolo de Boca', '2023-06-13 20:27:57', '2023-06-16 15:41:39', NULL, 'https://cdn.lavozdesanjusto.com.ar/Imagenes/1200Imagea2140e350e0746d3a2c26af3a1c8e262.jpg', 'arquero', 'ARQUERO CATEGORIA SENIOR'),
(22, 11, 'Federico Postel', 'Gran potencial. Puede jugar de 6 o de 3. Actualmente en Suecia.', '2023-06-14 15:43:58', '2023-06-14 15:43:58', NULL, 'https://static.wixstatic.com/media/16b84e_d7fc88f52e854fee8110294746a7be08~mv2.png/v1/fill/w_1000,h_1000,al_c,q_90,usm_0.66_1.00_0.01/16b84e_d7fc88f52e854fee8110294746a7be08~mv2.png', 'defensor', 'Stockholm - Defensor - 20/03/2003 - ARG'),
(23, 11, 'Alejandro Vivone', 'Gran arquero, mejor docente. Actualmente está retirado del fútbol profesional y enseña Programación Web Full Stack en Digital House.', '2023-06-14 16:14:50', '2023-06-16 14:33:52', NULL, 'https://media.licdn.com/dms/image/C4E03AQEIEJCMHPH5Ng/profile-displayphoto-shrink_800_800/0/1534435497641?e=1692230400&v=beta&t=gAT2C69CV_9v_RuNjNhMm_CB1oJR1I2ra0eTIk5SlsM', 'arquero', 'Digital House - Programación Web Full Stack'),
(24, 16, 'Juani Carbonell', 'Juega de todas las posiciones. Ideal para partidos chivos', '2023-06-15 01:55:06', '2023-06-15 01:55:06', NULL, 'https://scontent.faep24-2.fna.fbcdn.net/v/t1.6435-9/52739797_2233561740227643_248557471180783616_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_ohc=iXxC2FAVq80AX-8WUsX&_nc_ht=scontent.faep24-2.fna&oh=00_AfADoGcDFIKY8rneTTO_Gubj6qKNXgzfJp4WbJP5VPbxVw&oe=64B1C814', 'delantero', '\"CABLEPELADO\"'),
(25, 16, 'Santiago Vinocur', 'Volante tibio, lagunero como pocos', '2023-06-15 02:02:11', '2023-06-15 02:02:11', NULL, 'https://scontent.faep24-1.fna.fbcdn.net/v/t31.18172-8/15137645_1779427678974387_3539949333810521795_o.jpg?_nc_cat=101&ccb=1-7&_nc_sid=9267fe&_nc_ohc=zHTQIyha6QYAX9eqOOy&_nc_ht=scontent.faep24-1.fna&oh=00_AfBQzOXL00mknelKdiQZqxUvM_4FuC2tbrP923vXcHuCNQ&oe=64B1EAAF', 'volante', 'Pecho frio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `info_foto` varchar(1000) NOT NULL,
  `fecha` date NOT NULL,
  `dni` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `usuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `contrasena`, `info_foto`, `fecha`, `dni`, `createdAt`, `updatedAt`, `deletedAt`, `usuario`) VALUES
(1, 'matias12@gmail.com', 'Maticapo12', 'https://media.licdn.com/dms/image/C4E03AQG7MvDaS2nASA/profile-displayphoto-shrink_200_200/0/1654300376204?e=1691020800&v=beta&t=gzv0NGNYY-fgEx74r-n4_G4Q5e_TAgWfNrGIuxr_OLU', '2001-09-16', 44937403, '2023-06-01 18:22:10', '2023-06-16 14:26:48', NULL, 'Matute'),
(2, 'nicofernandez@gmail.com', 'nicogenio', 'https://strikers.futbol/__export/1613315154824/sites/strikers/img/2021/02/14/disexo_sin_txtulo_-_2021-02-14t120409_550.png_462530703.png', '2003-07-10', 44937505, '2023-06-01 18:22:10', '2023-06-16 14:26:48', NULL, 'Nicolodeiro'),
(3, 'germandíaz@gmail.com', 'cuenta12', 'https://www.infobae.com/new-resizer/Y6dnTIrZomfKYH9XzerZO6jN9To=/1200x900/filters:format(webp):quality(85)//s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2017/08/25093531/celeste-marzella-esposa-cata-diaz-nota-770.jpg', '1999-06-12', 44937303, '2023-06-01 18:22:10', '2023-06-15 02:07:48', NULL, 'Catadiazq'),
(4, 'manusoldano@gmail.com', 'manusoldano', 'https://upload.wikimedia.org/wikipedia/commons/6/69/Germ%C3%A1n_D%C3%ADaz_L%C3%B3pez_01.JPG', '1995-03-10', 449373205, '2023-06-01 18:22:10', '2023-06-16 14:26:48', NULL, 'ManuSoldano'),
(5, 'dylanleisner@gmail.com', 'dylan15', 'https://media.licdn.com/dms/image/D4E03AQHGPgRjwM9w3A/profile-displayphoto-shrink_200_200/0/1665060443807?e=1691020800&v=beta&t=FAwQEq0AYpZyLD4NDRh3m8p6xzW_PaNeX1DMAhBOLQY', '2003-08-12', 449373205, '2023-06-01 18:22:10', '2023-06-16 14:26:48', NULL, 'El Lechuga'),
(6, 'aribercov@gmail.com', '$2a$10$1kzVWAmGQXuNW7TJa4tpDu.yU05ew76deq2KlQA6QrAcfMyW6xO0C', 'https://media.licdn.com/dms/image/D4E03AQHGPgRjwM9w3A/profile-displayphoto-shrink_200_200/0/1665060443807?e=1691020800&v=beta&t=FAwQEq0AYpZyLD4NDRh3m8p6xzW_PaNeX1DMAhBOLQY', '2002-10-22', 44497988, '2023-06-04 20:25:15', '2023-06-16 14:26:48', NULL, 'Aroloquerido'),
(7, 'rafael.bercovich@gmail.com', '$2a$10$3qRHcd0wrZ2FmflM2f8fH.I/tt2TwBAuWyhzj6PAhWY3lRpgN2mdG', 'https://media.licdn.com/dms/image/D4E03AQHGPgRjwM9w3A/profile-displayphoto-shrink_200_200/0/1665060443807?e=1691020800&v=beta&t=FAwQEq0AYpZyLD4NDRh3m8p6xzW_PaNeX1DMAhBOLQY', '1900-08-17', 23238340, '2023-06-05 12:17:09', '2023-06-16 14:26:48', NULL, 'RafaBer'),
(8, 'lorencozzo@udesa.edu.ar', '$2a$10$rrDuC0JauEqBCx5GlmFTNubGXpUiTAL8xHJM.2A3PoV8QcK/8ddya', 'https://media.licdn.com/dms/image/D4E03AQHGPgRjwM9w3A/profile-displayphoto-shrink_200_200/0/1665060443807?e=1691020800&v=beta&t=FAwQEq0AYpZyLD4NDRh3m8p6xzW_PaNeX1DMAhBOLQY', '2000-10-22', 2930390, '2023-06-05 12:27:22', '2023-06-16 14:26:48', NULL, 'Lolo123'),
(9, 'darioleisner@ey.org', '$2a$10$JGu97EcdCsXLG4fbNl.TmuzGhTjZFcSty4EtIOrjKwCono8.wIdzm', 'https://media.licdn.com/dms/image/D4E03AQHGPgRjwM9w3A/profile-displayphoto-shrink_200_200/0/1665060443807?e=1691020800&v=beta&t=FAwQEq0AYpZyLD4NDRh3m8p6xzW_PaNeX1DMAhBOLQY', '1970-02-10', 2203003, '2023-06-05 13:06:19', '2023-06-16 14:26:48', NULL, 'Dario Leisner (Daro)'),
(10, 'bremondino@dh.com', '$2a$10$Qba4RM0eSVICh1E6/Y7K0O/F2aOpG2IgP6wDwl/CE.GwqG1eC9lBu', 'https://elretiro.com.ar/wp-content/uploads/2022/01/WhatsApp-Image-2022-01-23-at-8.20.16-PM.jpeg', '1000-10-10', 45831391, '2023-06-05 13:35:32', '2023-06-15 19:11:45', NULL, 'Bauti'),
(11, 'riquelme@boca.com', '$2a$10$vniX0g5s5sBNwJSZuHNfPORY1Q0x/i.a3j4cCIJOK6eVgszeVZ40W', 'https://fotos.perfil.com/2010/07/01/trim/1140/641/0728-riquelme-conf-g-ced.jpg', '2012-12-12', 23230002, '2023-06-05 16:47:10', '2023-06-15 02:06:17', NULL, 'Juan Roman Riquelme'),
(12, 'ari@dh.com', '$2a$10$rqLwoP61IGsdctkFg8GHH..KPWYFPxvEXYIUvLnl9l4zVGFOCUtIS', 'foto', '2002-10-22', 44497988, '2023-06-11 13:53:49', '2023-06-13 21:24:57', NULL, 'arielb'),
(13, 'azulbid@gmail.com', '$2a$10$hdekPFmwmPAkQZRxHzBnweMieIxFazNfGaK2etNIk97Lri3BEQHiq', 'https://media.licdn.com/dms/image/D4E03AQHGPgRjwM9w3A/profile-displayphoto-shrink_200_200/0/1665060443807?e=1691020800&v=beta&t=FAwQEq0AYpZyLD4NDRh3m8p6xzW_PaNeX1DMAhBOLQY', '2023-06-30', 44360558, '2023-06-12 13:56:11', '2023-06-16 14:26:48', NULL, 'azulbid'),
(14, 'nteller@udesa.edu.ar', '$2a$10$GQbXvsN2UgiTj2Dqf/hOE.Yx26OJob5UnwCUOoYUjBHo9M86/wg3u', 'https://media.licdn.com/dms/image/D4E03AQHGPgRjwM9w3A/profile-displayphoto-shrink_200_200/0/1665060443807?e=1691020800&v=beta&t=FAwQEq0AYpZyLD4NDRh3m8p6xzW_PaNeX1DMAhBOLQY', '2003-02-20', 339999, '2023-06-12 14:02:43', '2023-06-16 14:26:48', NULL, 'NinaTe'),
(15, 'daro@ey.com', '$2a$10$fMdpi4vVEAeTgHuindNbQ.ao3Tc.JapoXazf/gHgIFpkdLOHcgQKm', 'https://media.licdn.com/dms/image/D4E03AQHGPgRjwM9w3A/profile-displayphoto-shrink_200_200/0/1665060443807?e=1691020800&v=beta&t=FAwQEq0AYpZyLD4NDRh3m8p6xzW_PaNeX1DMAhBOLQY', '1900-10-02', 123456, '2023-06-13 21:22:56', '2023-06-16 14:26:48', NULL, 'Elda'),
(16, 'lalo@cissab.org', '$2a$10$NLlHkXpsDfek6WPs78TayODV93DDUqb3J3ArjHlognQpMPjxi5O2O', 'https://media.licdn.com/dms/image/C4D03AQEAtz_HYJT3dg/profile-displayphoto-shrink_800_800/0/1641746163013?e=2147483647&v=beta&t=CWm6Pkfa3RZIRjVVLX5RCMbnxY3NqExXbfqv0D8BPSY', '1900-10-10', 9987, '2023-06-15 01:43:26', '2023-06-15 01:43:26', NULL, 'Lalo Lagunas'),
(17, 'mignaquy@dh.com', '$2a$10$xXtienNTVsGgOdqW97yWWeX3dWu8R.kLVeUF.DhQ.qb8Zs.83os5C', 'https://media.licdn.com/dms/image/C4D03AQHoSehqrkiKGA/profile-displayphoto-shrink_800_800/0/1530218535580?e=2147483647&v=beta&t=pjG1vWh1eTF9ZDqyUpS9-_Y_uh-k4hw33RmLU_s8fJU', '2000-10-10', 12345, '2023-06-16 14:28:35', '2023-06-16 14:28:35', NULL, 'Mignaquy'),
(18, 'lei@dh.com', '$2a$10$U2S.zRWP/LKNsHX1VsniluZ0nWiZKMFJ0NmkltyWmIOrqHVy.QwUO', 'https://media.licdn.com/dms/image/D4E03AQHGPgRjwM9w3A/profile-displayphoto-shrink_200_200/0/1665060443807?e=1691020800&v=beta&t=FAwQEq0AYpZyLD4NDRh3m8p6xzW_PaNeX1DMAhBOLQY', '2003-10-10', 1234, '2023-06-16 14:34:51', '2023-06-16 14:34:51', NULL, 'Dylan \"Data Analyst\" Leisner');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_post` (`id_post`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
