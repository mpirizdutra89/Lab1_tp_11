-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-05-2024 a las 23:55:04
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `idcomentario` int NOT NULL AUTO_INCREMENT,
  `miembros_idmiembro` int NOT NULL,
  `libros_idlibro` int NOT NULL,
  `comentario` varchar(300) NOT NULL,
  PRIMARY KEY (`idcomentario`),
  KEY `fk_comentarios_miembros1_idx` (`miembros_idmiembro`),
  KEY `fk_comentarios_libros1_idx` (`libros_idlibro`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`idcomentario`, `miembros_idmiembro`, `libros_idlibro`, `comentario`) VALUES
(14, 1, 1, 'Excelente libro, me mantuvo intrigado de principio a fin.'),
(15, 1, 2, 'Una obra maestra de la literatura, recomendada para todos.'),
(16, 1, 2, 'Interesante trama, aunque el final me dejó un poco decepcionado.'),
(17, 1, 4, 'Me encantó este libro, lo releería una y otra vez.'),
(18, 1, 4, 'Una historia mágica que cautiva desde la primera página.'),
(19, 1, 4, 'Don Quijote es un personaje inolvidable, ¡este libro es imprescindible!'),
(20, 2, 3, 'La narrativa de este libro es simplemente espectacular.'),
(21, 2, 3, 'Una lectura conmovedora que te hace reflexionar sobre la vida.'),
(22, 2, 3, 'Me transportó a un mundo de fantasía y aventura, ¡fue genial!'),
(23, 2, 4, 'Una historia emocionante que te mantiene al borde del asiento hasta el final.'),
(24, 2, 4, 'libro aburrido'),
(25, 3, 2, 'hola mundo'),
(26, 3, 1, 'La narrativa de este libro es simplemente espectacular.'),
(27, 3, 1, 'Una lectura conmovedora que te hace reflexionar sobre la vida.'),
(28, 3, 1, 'Me transportó a un mundo de fantasía y aventura, ¡fue genial!'),
(29, 3, 3, 'Una historia emocionante que te mantiene al borde del asiento hasta el final.'),
(30, 3, 3, 'libro aburrido'),
(31, 3, 2, 'hola mundo'),
(32, 4, 2, 'hola mundo'),
(33, 4, 1, 'La narrativa de este libro es simplemente espectacular.'),
(34, 4, 1, 'Una lectura conmovedora que te hace reflexionar sobre la vida.'),
(35, 4, 1, 'Me transportó a un mundo de fantasía y aventura, ¡fue genial!'),
(36, 4, 3, 'Una historia emocionante que te mantiene al borde del asiento hasta el final.'),
(37, 4, 3, 'libro aburrido'),
(38, 4, 2, 'hola mundo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

DROP TABLE IF EXISTS `libros`;
CREATE TABLE IF NOT EXISTS `libros` (
  `idlibro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `genero` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idlibro`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

DROP TABLE IF EXISTS `miembros`;
CREATE TABLE IF NOT EXISTS `miembros` (
  `idmiembro` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idmiembro`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `miembros`
--

INSERT INTO `miembros` (`idmiembro`, `nombre`, `direccion`, `telefono`, `email`) VALUES
(1, 'Piriz Martin', 'Abelardo Figuero 149, San Luis', '2664859918', 'mpirizdutra@ulp.edu.ar'),
(2, 'Carlos', 'direccion, Ciudad Y', '987-654-3210', 'carlos@ulp.edu.ar'),
(3, 'ariel', 'direccion, Ciudad Z', '555-123-4567', 'ariel@ulp.edu.ar'),
(4, 'agustin', 'direccion, Ciudad W', '777-888-9999', 'agustin@ulp.edu.ar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
CREATE TABLE IF NOT EXISTS `prestamos` (
  `idprestamo` int NOT NULL AUTO_INCREMENT,
  `libros_idlibro` int NOT NULL,
  `miembros_idmiembro` int NOT NULL,
  `fecha_prestamo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_devolucion` datetime DEFAULT NULL,
  PRIMARY KEY (`idprestamo`),
  KEY `fk_prestamos_libros_idx` (`libros_idlibro`),
  KEY `fk_prestamos_miembros1_idx` (`miembros_idmiembro`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`idprestamo`, `libros_idlibro`, `miembros_idmiembro`, `fecha_prestamo`, `fecha_devolucion`) VALUES
(16, 1, 1, '2024-05-05 20:24:02', NULL),
(17, 2, 2, '2024-05-05 20:24:13', NULL),
(18, 3, 3, '2024-05-05 20:24:43', '2024-05-07 20:24:15'),
(19, 4, 4, '2024-05-05 20:24:43', '2024-05-06 20:24:15');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_comentarios_libros1` FOREIGN KEY (`libros_idlibro`) REFERENCES `libros` (`idlibro`),
  ADD CONSTRAINT `fk_comentarios_miembros1` FOREIGN KEY (`miembros_idmiembro`) REFERENCES `miembros` (`idmiembro`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `fk_prestamos_libros` FOREIGN KEY (`libros_idlibro`) REFERENCES `libros` (`idlibro`),
  ADD CONSTRAINT `fk_prestamos_miembros1` FOREIGN KEY (`miembros_idmiembro`) REFERENCES `miembros` (`idmiembro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
