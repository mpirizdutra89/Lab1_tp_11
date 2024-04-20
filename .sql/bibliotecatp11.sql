-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2024 a las 08:32:38
-- Versión del servidor: 5.7.14
-- Versión de PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lab1_tp11`
--
CREATE DATABASE IF NOT EXISTS `lab1_tp11` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lab1_tp11`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `idcomentario` int(11) NOT NULL,
  `miembros_idmiembro` int(11) NOT NULL,
  `libros_idlibro` int(11) NOT NULL,
  `comentario` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `idlibro` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `genero` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`idlibro`, `titulo`, `autor`, `genero`) VALUES
(1, 'El código Da Vinci', 'Dan Brown', 'Misterio'),
(2, 'Cien años de soledad', 'Gabriel García Márquez', 'Realismo mágico'),
(3, '1984', 'George Orwell', 'Ciencia ficción'),
(4, 'Orgullo y prejuicio', 'Jane Austen', 'Clásico'),
(5, 'Harry Potter y la piedra filosofal', 'J.K. Rowling', 'Fantasía'),
(6, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 'Clásico'),
(7, 'La sombra del viento', 'Carlos Ruiz Zafón', 'Misterio'),
(8, 'Matar a un ruiseñor', 'Harper Lee', 'Drama'),
(9, 'El señor de los anillos: La comunidad del anillo', 'J.R.R. Tolkien', 'Fantasía'),
(10, 'Crónica de una muerte anunciada', 'Gabriel García Márquez', 'Realismo mágico'),
(11, 'El alquimista', 'Paulo Coelho', 'Inspiracional'),
(12, 'Los pilares de la Tierra', 'Ken Follett', 'Histórica'),
(13, 'Moby Dick', 'Herman Melville', 'Aventura'),
(14, 'El retrato de Dorian Gray', 'Oscar Wilde', 'Gótico'),
(15, 'Los juegos del hambre', 'Suzanne Collins', 'Distopía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miembros`
--

CREATE TABLE `miembros` (
  `idmiembro` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `miembros`
--

INSERT INTO `miembros` (`idmiembro`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'Ana García', 'Calle 123, Ciudad X', '123-456-7890'),
(2, 'Juan Pérez', 'Avenida Principal, Ciudad Y', '987-654-3210'),
(3, 'María López', 'Plaza Central, Ciudad Z', '555-123-4567'),
(4, 'Pedro Martínez', 'Calle Mayor, Ciudad W', '777-888-9999'),
(5, 'Laura Rodríguez', 'Avenida Norte, Ciudad V', '111-222-3333'),
(6, 'Carlos Sánchez', 'Calle Sur, Ciudad U', '444-555-6666'),
(7, 'Sofía Fernández', 'Avenida Este, Ciudad T', '666-777-8888'),
(8, 'Luis Hernández', 'Calle Oeste, Ciudad S', '999-000-1111'),
(9, 'Lucía Gómez', 'Plaza Este, Ciudad R', '222-333-4444'),
(10, 'Javier Ruiz', 'Avenida Oeste, Ciudad Q', '888-999-0000'),
(11, 'Elena Díaz', 'Calle Este, Ciudad P', '333-444-5555'),
(12, 'Diego Torres', 'Plaza Norte, Ciudad O', '000-111-2222'),
(13, 'Marta Vargas', 'Calle Sur, Ciudad N', '777-888-9999'),
(14, 'Pablo Romero', 'Avenida Principal, Ciudad M', '111-222-3333'),
(15, 'Andrea Martín', 'Calle 123, Ciudad L', '444-555-6666');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `idprestamo` int(11) NOT NULL,
  `libros_idlibro` int(11) NOT NULL,
  `miembros_idmiembro` int(11) NOT NULL,
  `fecha_prestamo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_devolucion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`idprestamo`, `libros_idlibro`, `miembros_idmiembro`, `fecha_prestamo`, `fecha_devolucion`) VALUES
(1, 1, 1, '2024-04-20 00:00:00', NULL),
(2, 2, 2, '2024-04-20 00:00:00', '2024-04-27 00:00:00'),
(3, 3, 3, '2024-04-20 00:00:00', NULL),
(4, 4, 4, '2024-04-20 00:00:00', '2024-04-27 00:00:00'),
(5, 5, 5, '2024-04-20 00:00:00', NULL),
(6, 6, 6, '2024-04-20 00:00:00', '2024-04-27 00:00:00'),
(7, 7, 7, '2024-04-20 00:00:00', NULL),
(8, 8, 8, '2024-04-20 00:00:00', '2024-04-27 00:00:00'),
(9, 9, 9, '2024-04-20 00:00:00', NULL),
(10, 10, 10, '2024-04-20 00:00:00', '2024-04-27 00:00:00'),
(11, 11, 11, '2024-04-20 00:00:00', NULL),
(12, 12, 12, '2024-04-20 00:00:00', '2024-04-27 00:00:00'),
(13, 13, 13, '2024-04-20 00:00:00', NULL),
(14, 14, 14, '2024-04-20 00:00:00', '2024-04-27 00:00:00'),
(15, 15, 15, '2024-04-20 00:00:00', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idcomentario`),
  ADD KEY `fk_comentarios_miembros1_idx` (`miembros_idmiembro`),
  ADD KEY `fk_comentarios_libros1_idx` (`libros_idlibro`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`idlibro`);

--
-- Indices de la tabla `miembros`
--
ALTER TABLE `miembros`
  ADD PRIMARY KEY (`idmiembro`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`idprestamo`),
  ADD KEY `fk_prestamos_libros_idx` (`libros_idlibro`),
  ADD KEY `fk_prestamos_miembros1_idx` (`miembros_idmiembro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idcomentario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `idlibro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `miembros`
--
ALTER TABLE `miembros`
  MODIFY `idmiembro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `idprestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_comentarios_libros1` FOREIGN KEY (`libros_idlibro`) REFERENCES `libros` (`idlibro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentarios_miembros1` FOREIGN KEY (`miembros_idmiembro`) REFERENCES `miembros` (`idmiembro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `fk_prestamos_libros` FOREIGN KEY (`libros_idlibro`) REFERENCES `libros` (`idlibro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_prestamos_miembros1` FOREIGN KEY (`miembros_idmiembro`) REFERENCES `miembros` (`idmiembro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
