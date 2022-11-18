-- --------------------------------------------------------
-- Host:                         148.212.195.26
-- Versión del servidor:         8.0.31-0ubuntu0.20.04.1 - (Ubuntu)
-- SO del servidor:              Linux
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para empresa
DROP DATABASE IF EXISTS `empresa`;
CREATE DATABASE IF NOT EXISTS `empresa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `empresa`;

-- Volcando estructura para tabla empresa.categoria_salario
DROP TABLE IF EXISTS `categoria_salario`;
CREATE TABLE IF NOT EXISTS `categoria_salario` (
  `no_categoria` int DEFAULT NULL,
  `salario_minimo` decimal(4,0) DEFAULT NULL,
  `salario_maximo` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla empresa.clientes
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_clientes` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(40) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `Estado` varchar(2) DEFAULT NULL,
  `cp` varchar(9) DEFAULT NULL,
  `cod_area` int DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `no_emp` int NOT NULL,
  `limite_credito` decimal(9,2) DEFAULT NULL,
  `comentarios` blob,
  PRIMARY KEY (`id_clientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla empresa.departamento
DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `no_departamento` int NOT NULL,
  `nombre` varchar(14) DEFAULT NULL,
  `ubicacion` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`no_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla empresa.detalle_orden
DROP TABLE IF EXISTS `detalle_orden`;
CREATE TABLE IF NOT EXISTS `detalle_orden` (
  `id_detalle_orden` int NOT NULL AUTO_INCREMENT,
  `id_orden` int NOT NULL,
  `id_productos` int NOT NULL,
  `precio_actual` decimal(8,2) DEFAULT NULL,
  `cantidad` decimal(8,0) DEFAULT NULL,
  `total_articulos` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_orden`),
  KEY `fk_detalle_orden_productos1_idx` (`id_productos`),
  KEY `fk_detalle_orden_ordenes1` (`id_orden`),
  CONSTRAINT `fk_detalle_orden_ordenes1` FOREIGN KEY (`id_orden`) REFERENCES `ordenes` (`id_orden`),
  CONSTRAINT `fk_detalle_orden_productos1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla empresa.empleados
DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
  `no_empleado` int NOT NULL,
  `no_departamento` int NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `puesto` varchar(20) DEFAULT NULL,
  `jefe_directo` int DEFAULT NULL,
  `f_ingreso` date DEFAULT NULL,
  `salario` decimal(7,2) DEFAULT NULL,
  `comision` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`no_empleado`),
  KEY `fk_empleados_departamento_idx` (`no_departamento`),
  CONSTRAINT `fk_empleados_departamento` FOREIGN KEY (`no_departamento`) REFERENCES `departamento` (`no_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla empresa.ordenes
DROP TABLE IF EXISTS `ordenes`;
CREATE TABLE IF NOT EXISTS `ordenes` (
  `id_orden` int NOT NULL,
  `id_clientes` int NOT NULL,
  `fecha_orden` date DEFAULT NULL,
  `commplan` varchar(1) DEFAULT NULL,
  `fecha_envio` date DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `fk_ordenes_clientes1_idx` (`id_clientes`),
  CONSTRAINT `fk_ordenes_clientes1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla empresa.precio
DROP TABLE IF EXISTS `precio`;
CREATE TABLE IF NOT EXISTS `precio` (
  `idPrecio` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `precio_normal` decimal(8,2) DEFAULT NULL,
  `precio_minimo` decimal(8,2) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  PRIMARY KEY (`idPrecio`),
  KEY `fk_precio_productos1_idx` (`id_producto`),
  CONSTRAINT `fk_precio_productos1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla empresa.productos
DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
