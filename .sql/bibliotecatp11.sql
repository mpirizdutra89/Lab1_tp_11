-- -----------------------------------------------------
-- Base de datos lab1_tp11
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `lab1_tp11` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
USE `lab1_tp11` ;

-- -----------------------------------------------------
-- Table `lab1_tp11`.`libros`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab1_tp11`.`libros` ;

CREATE  TABLE IF NOT EXISTS `lab1_tp11`.`libros` (
  `idlibro` INT NOT NULL AUTO_INCREMENT ,
  `titulo` VARCHAR(50) NOT NULL ,
  `autor` VARCHAR(30) NOT NULL ,
  `genero` VARCHAR(25) NULL ,
  PRIMARY KEY (`idlibro`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab1_tp11`.`miembros`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab1_tp11`.`miembros` ;

CREATE  TABLE IF NOT EXISTS `lab1_tp11`.`miembros` (
  `idmiembro` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(30) NULL ,
  `direccion` VARCHAR(50) NULL ,
  `telefono` VARCHAR(20) NULL ,
  PRIMARY KEY (`idmiembro`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab1_tp11`.`prestamos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab1_tp11`.`prestamos` ;

CREATE  TABLE IF NOT EXISTS `lab1_tp11`.`prestamos` (
  `idprestamo` INT NOT NULL AUTO_INCREMENT ,
  `libros_idlibro` INT NOT NULL ,
  `miembros_idmiembro` INT NOT NULL ,
  `fecha_prestamo` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `fecha_devolucion` DATETIME NULL ,
  PRIMARY KEY (`idprestamo`) ,
  INDEX `fk_prestamos_libros_idx` (`libros_idlibro` ASC) ,
  INDEX `fk_prestamos_miembros1_idx` (`miembros_idmiembro` ASC) ,
  CONSTRAINT `fk_prestamos_libros`
    FOREIGN KEY (`libros_idlibro` )
    REFERENCES `lab1_tp11`.`libros` (`idlibro` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_prestamos_miembros1`
    FOREIGN KEY (`miembros_idmiembro` )
    REFERENCES `lab1_tp11`.`miembros` (`idmiembro` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab1_tp11`.`comentarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab1_tp11`.`comentarios` ;

CREATE  TABLE IF NOT EXISTS `lab1_tp11`.`comentarios` (
  `idcomentario` INT NOT NULL AUTO_INCREMENT ,
  `miembros_idmiembro` INT NOT NULL ,
  `libros_idlibro` INT NOT NULL ,
  `comentario` VARCHAR(300) NOT NULL ,
  PRIMARY KEY (`idcomentario`) ,
  INDEX `fk_comentarios_miembros1_idx` (`miembros_idmiembro` ASC) ,
  INDEX `fk_comentarios_libros1_idx` (`libros_idlibro` ASC) ,
  CONSTRAINT `fk_comentarios_miembros1`
    FOREIGN KEY (`miembros_idmiembro` )
    REFERENCES `lab1_tp11`.`miembros` (`idmiembro` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentarios_libros1`
    FOREIGN KEY (`libros_idlibro` )
    REFERENCES `lab1_tp11`.`libros` (`idlibro` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `lab1_tp11` ;


