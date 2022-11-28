
CREATE DATABASE /*!32312 IF NOT EXISTS*/`empresa` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;

USE `empresa`;

/*Table structure for table `categoria_salario` */

DROP TABLE IF EXISTS `categoria_salario`;

CREATE TABLE `categoria_salario` (
  `no_categoria` INT(11) DEFAULT NULL,
  `salario_minimo` DECIMAL(4,0) DEFAULT NULL,
  `salario_maximo` DECIMAL(4,0) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `id_clientes` INT(11) NOT NULL,
  `nombre` VARCHAR(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` VARCHAR(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ciudad` VARCHAR(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Estado` VARCHAR(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cp` VARCHAR(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cod_area` INT(12) DEFAULT NULL,
  `telefono` VARCHAR(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `no_emp` INT(11) NOT NULL,
  `limite_credito` DECIMAL(9,2) DEFAULT NULL,
  `comentarios` BLOB DEFAULT NULL,
  PRIMARY KEY (`id_clientes`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `departamento` */

DROP TABLE IF EXISTS `departamento`;

CREATE TABLE `departamento` (
  `no_departamento` INT(11) NOT NULL,
  `nombre` VARCHAR(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ubicacion` VARCHAR(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`no_departamento`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


/*Table structure for table `empleados` */

DROP TABLE IF EXISTS `empleados`;

CREATE TABLE `empleados` (
  `no_empleado` INT(11) NOT NULL,
  `no_departamento` INT(11) NOT NULL,
  `nombre` VARCHAR(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `puesto` VARCHAR(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `jefe_directo` INT(11) DEFAULT NULL,
  `f_ingreso` DATE DEFAULT NULL,
  `salario` DECIMAL(7,2) DEFAULT NULL,
  `comision` DECIMAL(7,2) DEFAULT NULL,
  PRIMARY KEY (`no_empleado`),
  KEY `fk_empleados_departamento_idx` (`no_departamento`),
  CONSTRAINT `fk_empleados_departamento` FOREIGN KEY (`no_departamento`) REFERENCES `departamento` (`no_departamento`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `ordenes` */

DROP TABLE IF EXISTS `ordenes`;

CREATE TABLE `ordenes` (
  `id_orden` INT(11) NOT NULL,
  `id_clientes` INT(11) NOT NULL,
  `fecha_orden` DATE DEFAULT NULL,
  `con_plan` VARCHAR(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_envio` DATE DEFAULT NULL,
  `total` DECIMAL(8,2) DEFAULT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `fk_ordenes_clientes1_idx` (`id_clientes`),
  CONSTRAINT `fk_ordenes_clientes1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id_producto` INT(11) NOT NULL,
  `descripcion` VARCHAR(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


/*Table structure for table `precio` */

DROP TABLE IF EXISTS `precio`;

CREATE TABLE `precio` (
  `idPrecio` INT(11) NOT NULL AUTO_INCREMENT,
  `id_producto` INT(11) NOT NULL,
  `precio_normal` DECIMAL(8,2) DEFAULT NULL,
  `precio_minimo` DECIMAL(8,2) DEFAULT NULL,
  `fecha_inicio` DATE DEFAULT NULL,
  `fecha_final` DATE DEFAULT NULL,
  PRIMARY KEY (`idPrecio`),
  KEY `fk_precio_productos1_idx` (`id_producto`),
  CONSTRAINT `fk_precio_productos1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=INNODB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `detalle_orden` */

DROP TABLE IF EXISTS `detalle_orden`;

CREATE TABLE `detalle_orden` (
  `id_detalle_orden` INT(11) NOT NULL AUTO_INCREMENT,
  `id_orden` INT(11) NOT NULL,
  `id_productos` INT(11) NOT NULL,
  `precio_actual` DECIMAL(8,2) DEFAULT NULL,
  `cantidad` DECIMAL(8,0) DEFAULT NULL,
  `total_articulos` DECIMAL(8,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_orden`),
  KEY `fk_detalle_orden_productos1_idx` (`id_productos`),
  KEY `fk_detalle_orden_ordenes1` (`id_orden`),
  CONSTRAINT `fk_detalle_orden_ordenes1` FOREIGN KEY (`id_orden`) REFERENCES `ordenes` (`id_orden`),
  CONSTRAINT `fk_detalle_orden_productos1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_producto`)
) ENGINE=INNODB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

