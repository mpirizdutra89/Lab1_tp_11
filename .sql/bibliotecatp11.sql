-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2024 a las 09:20:09
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

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`idcomentario`, `miembros_idmiembro`, `libros_idlibro`, `comentario`) VALUES
(1, 1, 1, 'Excelente libro, me mantuvo intrigado de principio a fin.'),
(2, 2, 2, 'Una obra maestra de la literatura, recomendada para todos.'),
(3, 3, 3, 'Interesante trama, aunque el final me dejó un poco decepcionado.'),
(4, 4, 4, 'Me encantó este libro, lo releería una y otra vez.'),
(5, 2, 5, 'Una historia mágica que cautiva desde la primera página.'),
(6, 3, 6, 'Don Quijote es un personaje inolvidable, ¡este libro es imprescindible!'),
(7, 1, 7, 'La narrativa de este libro es simplemente espectacular.'),
(8, 4, 8, 'Una lectura conmovedora que te hace reflexionar sobre la vida.'),
(9, 2, 9, 'Me transportó a un mundo de fantasía y aventura, ¡fue genial!'),
(10, 1, 10, 'Una historia emocionante que te mantiene al borde del asiento hasta el final.');

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
(1, 'El señor de los anillos', 'J. R. R. Tolkien', 'fantasía'),
(2, 'Harry Potter: la piedra filosofal.', 'J. K. Rowling', 'fantasía'),
(3, 'La caída de la casa Usher', 'Edgar Allan Poe', 'terror literario'),
(4, 'Un amor de otra época', 'Adam West', 'Novela Rosa'),
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
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `miembros`
--

INSERT INTO `miembros` (`idmiembro`, `nombre`, `direccion`, `telefono`,email) VALUES
(1, 'Piriz Martin', 'Abelardo Figuero 149, San Luis', '2664859918','mpirizdutra@ulp.edu.ar'),
(2, 'Carlos', 'direccion, Ciudad Y', '987-654-3210','carlos@ulp.edu.ar'),
(3, 'ariel', 'direccion, Ciudad Z', '555-123-4567','ariel@ulp.edu.ar'),
(4, 'agustin', 'direccion, Ciudad W', '777-888-9999','agustin@ulp.edu.ar');


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
  MODIFY `idcomentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
