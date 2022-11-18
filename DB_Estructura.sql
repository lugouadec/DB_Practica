-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria_salario`
--

DROP TABLE IF EXISTS `categoria_salario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_salario` (
  `no_categoria` int DEFAULT NULL,
  `salario_minimo` decimal(4,0) DEFAULT NULL,
  `salario_maximo` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `no_departamento` int NOT NULL,
  `nombre` varchar(14) DEFAULT NULL,
  `ubicacion` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`no_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalle_orden`
--

DROP TABLE IF EXISTS `detalle_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_orden` (
  `id_articulos` int NOT NULL,
  `id_orden` int NOT NULL,
  `id_productos` int NOT NULL,
  `precio_actual` decimal(8,2) DEFAULT NULL,
  `cantidad` decimal(8,0) DEFAULT NULL,
  `total_articulos` decimal(8,2) DEFAULT NULL,
  `id_detalle_orden` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_detalle_orden`),
  KEY `fk_detalle_orden_productos1_idx` (`id_productos`),
  KEY `fk_detalle_orden_ordenes1` (`id_orden`),
  CONSTRAINT `fk_detalle_orden_ordenes1` FOREIGN KEY (`id_orden`) REFERENCES `ordenes` (`id_orden`),
  CONSTRAINT `fk_detalle_orden_productos1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `no_empleado` int NOT NULL,
  `no_departamento` int NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `puesto` varchar(20) DEFAULT NULL,
  `jefe_directo` int DEFAULT NULL,
  `fecha_alquiler` date DEFAULT NULL,
  `salario` decimal(7,2) DEFAULT NULL,
  `comision` decimal(7,2) DEFAULT NULL,
  `departamento_no_departamento` int NOT NULL,
  PRIMARY KEY (`no_empleado`),
  KEY `fk_empleados_departamento_idx` (`departamento_no_departamento`),
  CONSTRAINT `fk_empleados_departamento` FOREIGN KEY (`departamento_no_departamento`) REFERENCES `departamento` (`no_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenes` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `precio`
--

DROP TABLE IF EXISTS `precio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precio` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-17 22:48:04
