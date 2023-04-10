-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2023 a las 16:50:13
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `informacion`
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
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_post`, `id_usuario`, `texto_comentario`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 5, 'Idolo en Racing. Las gano todas', '2023-04-10 13:23:46', '2023-04-10 13:23:46', NULL),
(2, 1, 5, 'Muy buen arquero', '2023-04-10 13:24:30', '2023-04-10 13:24:30', NULL),
(3, 1, 5, 'muy bueno con los pies', '2023-04-10 13:25:45', '2023-04-10 13:25:45', NULL),
(4, 1, 5, 'Proximamente se va de racing', '2023-04-10 13:26:26', '2023-04-10 13:26:26', NULL),
(5, 2, 6, 'en su comienzo en comunicaciones estuvo bien', '2023-04-10 13:27:34', '2023-04-10 13:27:34', NULL),
(6, 2, 6, 'Bueno atajando penales. Fenomeno', '2023-04-10 13:28:00', '2023-04-10 13:28:00', NULL),
(7, 2, 6, 'Tiene su estilo atajando', '2023-04-10 13:30:18', '2023-04-10 13:30:18', NULL),
(8, 2, 6, 'Futuro europeo', '2023-04-10 13:30:36', '2023-04-10 13:30:36', NULL),
(9, 3, 7, 'Recien comenzando. Crack total', '2023-04-10 13:32:36', '2023-04-10 13:32:36', NULL),
(10, 3, 7, 'De a poco va mejorando', '2023-04-10 13:32:47', '2023-04-10 13:32:47', NULL),
(11, 3, 7, 'Futuro en liga brasileña', '2023-04-10 13:33:03', '2023-04-10 13:33:03', NULL),
(12, 3, 7, 'peleado con los hinchas', '2023-04-10 13:33:16', '2023-04-10 13:33:16', NULL),
(13, 4, 8, 'Recien comenzando. Crack total', '2023-04-10 13:40:19', '2023-04-10 13:40:19', NULL),
(14, 4, 8, 'mucho recorrido futbol argentino', '2023-04-10 13:40:46', '2023-04-10 13:40:46', NULL),
(15, 4, 8, 'Tiene sus diferencias con su club', '2023-04-10 13:40:59', '2023-04-10 13:40:59', NULL),
(16, 4, 8, 'estuvo por firmar para el real madrid', '2023-04-10 13:41:09', '2023-04-10 13:41:09', NULL),
(17, 5, 9, 'Jugador con mucho potencial, lo tuve en 5ta división y sus condiciones como clásico 10 se notaban', '2023-04-10 13:42:54', '2023-04-10 13:42:54', NULL),
(18, 5, 9, 'En inferiores la rompió', '2023-04-10 13:43:18', '2023-04-10 13:43:18', NULL),
(19, 5, 9, 'gran familia', '2023-04-10 13:43:29', '2023-04-10 13:43:29', NULL),
(20, 5, 9, 'potencial extremo', '2023-04-10 13:43:40', '2023-04-10 13:43:40', NULL),
(24, 8, 5, 'Tiene su estilo', '2023-04-10 13:46:22', '2023-04-10 13:46:22', NULL),
(25, 8, 5, 'Esta mejorando mucho', '2023-04-10 13:46:37', '2023-04-10 13:46:37', NULL),
(26, 8, 5, 'mejorando mucho', '2023-04-10 13:49:31', '2023-04-10 13:49:31', NULL),
(27, 8, 5, 'buen vinculo con los jovenes', '2023-04-10 13:50:27', '2023-04-10 13:50:27', NULL),
(28, 9, 6, 'Mejoranco muchisimo', '2023-04-10 13:51:27', '2023-04-10 13:51:27', NULL),
(29, 9, 6, 'buen vinculo con dirigentes', '2023-04-10 13:51:36', '2023-04-10 13:51:36', NULL),
(30, 9, 6, 'buena pegada', '2023-04-10 13:53:19', '2023-04-10 13:53:19', NULL),
(31, 9, 6, 'tiene lo suyo', '2023-04-10 13:53:38', '2023-04-10 13:53:38', NULL),
(32, 10, 7, 'lo que juega este muchacho es descomunal', '2023-04-10 13:54:29', '2023-04-10 13:54:29', NULL),
(33, 10, 7, 'buena volea', '2023-04-10 13:54:40', '2023-04-10 13:54:40', NULL),
(34, 10, 7, 'fenomeno', '2023-04-10 13:54:47', '2023-04-10 13:54:47', NULL),
(35, 10, 7, 'ambidiestro', '2023-04-10 13:54:51', '2023-04-10 13:54:51', NULL),
(36, 11, 8, 'ambidiestro', '2023-04-10 13:55:31', '2023-04-10 13:55:31', NULL),
(37, 11, 8, 'buena pegada tiro libres', '2023-04-10 13:55:39', '2023-04-10 13:55:39', NULL),
(38, 11, 8, 'jugador fenomenal', '2023-04-10 13:55:46', '2023-04-10 13:55:46', NULL),
(39, 11, 8, 'futuro europeo', '2023-04-10 13:55:50', '2023-04-10 13:55:50', NULL),
(40, 12, 9, 'futuro europeo', '2023-04-10 13:56:17', '2023-04-10 13:56:17', NULL),
(41, 12, 9, 'suele usar doble media', '2023-04-10 13:56:24', '2023-04-10 13:56:24', NULL),
(42, 12, 9, 'se comio un gol en el clasico', '2023-04-10 13:56:33', '2023-04-10 13:56:33', NULL),
(43, 12, 9, 'tiene su estilo', '2023-04-10 13:56:37', '2023-04-10 13:56:37', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_usuario`, `nombre_producto`, `descripcion`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 5, 'Gabriel Arias', 'Gabriel Arias Arroyo es un futbolista chileno nacido en Argentina. Juega como arquero en Racing Club', '2023-04-10 13:00:10', '2023-04-10 13:00:10', NULL),
(2, 6, 'German Salort', 'Germán Guillermo Salort es un futbolista argentino. Juega de Arquero y su equipo actual es Comunicac', '2023-04-10 13:01:11', '2023-04-10 13:01:11', NULL),
(3, 7, 'Leandro Brey', 'Leandro Brey es un futbolista argentino. Actualmente es el arquero de la Reserva del C.A Boca Junior', '2023-04-10 13:04:08', '2023-04-10 13:04:08', NULL),
(4, 8, 'Augusto Batalla', 'Augusto Batalla es un futbolista argentino. Actualmente es el arquero titular de San Lorenzo de Alma', '2023-04-10 13:05:44', '2023-04-10 13:05:44', NULL),
(5, 9, 'Facundo Mura', 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independien', '2023-04-10 13:07:00', '2023-04-10 13:07:00', NULL),
(8, 5, 'Federico Gattoni', 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independien', '2023-04-10 13:11:06', '2023-04-10 13:11:06', NULL),
(9, 6, 'Bruno Bianchi', 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independien', '2023-04-10 13:12:51', '2023-04-10 13:12:51', NULL),
(10, 7, 'Alan Rodriguez', 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independien', '2023-04-10 13:14:12', '2023-04-10 13:14:12', NULL),
(11, 8, 'Baltasar Barcia', 'Mateo Baltasar Barcia Fernández es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualme', '2023-04-10 13:15:18', '2023-04-10 13:15:18', NULL),
(12, 8, 'Ignacio Fernández', 'Ignacio Martín Fernández es un futbolista argentino. Se desempeña como mediocampista y su equipo act', '2023-04-10 13:16:06', '2023-04-10 13:16:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `info_foto` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  `dni` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `contrasena`, `info_foto`, `fecha`, `dni`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(5, 'matias12@gmail.com', 'Maticapo12', 'Soy matías', '2001-09-16', 44937403, '2023-04-10 12:47:44', '2023-04-10 12:47:44', NULL),
(6, 'nicofernandez@gmail.com', 'nicogenio', 'Soy nico', '2003-07-10', 44937505, '2023-04-10 12:49:12', '2023-04-10 12:49:12', NULL),
(7, 'germandíaz@gmail.com', 'cuenta12', 'Soy German', '1999-06-12', 44937303, '2023-04-10 12:50:15', '2023-04-10 12:50:15', NULL),
(8, 'manusoldano@gmail.com', 'manusoldano', 'Soy manu', '1995-03-10', 449373205, '2023-04-10 12:51:57', '2023-04-10 12:51:57', NULL),
(9, 'dylanleisner@gmail.com', 'dylan15', 'Soy dylan', '2003-08-12', 449373205, '2023-04-10 12:53:43', '2023-04-10 12:53:43', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
