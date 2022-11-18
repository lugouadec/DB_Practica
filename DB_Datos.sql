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

-- Volcando datos para la tabla empresa.categoria_salario: ~0 rows (aproximadamente)
INSERT INTO `categoria_salario` (`no_categoria`, `salario_minimo`, `salario_maximo`) VALUES
	(1, 700, 1200),
	(2, 1201, 1400),
	(3, 1401, 2000),
	(4, 2001, 3000),
	(5, 3001, 9999);

-- Volcando datos para la tabla empresa.clientes: ~0 rows (aproximadamente)
INSERT INTO `clientes` (`id_clientes`, `nombre`, `direccion`, `ciudad`, `Estado`, `cp`, `cod_area`, `telefono`, `no_emp`, `limite_credito`, `comentarios`) VALUES
	(100, 'JOCKSPORTS', '345 VIEWRIDGE', 'BELMONT', 'CA', '96711', 415, '598-6609', 7844, 5000.00, _binary 0x47656e7465206d757920616d696761626c6520706172612074726162616a6172202d2d206c6520677573746120717565206c65206c6c616d656e204d696b65),
	(101, 'TKB SPORT SHOP', '490 BOLI RD.', 'REDWOOD CITY', 'CA', '94061', 415, '368-1223', 7521, 10000.00, _binary 0x5265702063616c6c656420352f382061626f7574206368616e676520696e206f72646572202d20636f6e74616374207368697070696e67),
	(102, 'VOLLYRITE', '9722 HAMILTON', 'BURLINGAME', 'CA', '95133', 415, '644-3341', 7654, 7000.00, _binary 0x436f6d7061c3b1c3ad612068616369c3a96e646f20756e61206772616e2070726f6d6f6369c3b36e20636f6d656e7a616e646f20656e2031302f38392e205072657061726164612070617261206772616e6465732070656469646f7320647572616e746520656c20696e766965726e6f),
	(103, 'JUST TENNIS', 'HILLVIEW MALL', 'BURLINGAME', 'CA', '97544', 415, '677-9312', 7521, 3000.00, _binary 0x436f6e74616374207265702061626f7574206e6577206c696e65206f662074656e6e6973207261636b6574732e),
	(104, 'EVERY MOUNTAIN', '574 SURRY RD.', 'CUPERTINO', 'CA', '93301', 408, '996-2323', 7499, 10000.00, _binary 0x636c69656e74657320776974682068696768206d61726b65742073686172652028323325292064756520746f2061676772657373697665206164766572746973696e672e),
	(105, 'K + T SPORTS', '3476 EL PASEO', 'SANTA CLARA', 'CA', '91003', 408, '376-9966', 7844, 5000.00, _binary 0x54656e647320746f206f72646572206c6172676520616d6f756e7473206f66206d65726368616e64697365206174206f6e63652e204163636f756e74696e6720697320636f6e7369646572696e672072616973696e6720746865697220637265646974206c696d69742e),
	(106, 'SHAPE UP', '908 SEQUOIA', 'PALO ALTO', 'CA', '94301', 415, '364-9777', 7521, 6000.00, _binary 0x537570706f727420696e74656e736976652e204f726465727320736d616c6c20616d6f6e747320283c2038303029206f66206d65726368616e6469736520617420612074696d652e),
	(107, 'WOMENS SPORT', 'VALCO VILLAGE', 'SUNNYVALE', 'CA', '93301', 408, '967-4398', 7499, 10000.00, _binary 0x46697273742073706f7274696e6720676f6f64732073746f726520676561726564206578636c75736976656c7920746f776172647320776f6d656e2e20556e757375616c2070726f6d6f74696f6e616c207374796c652e),
	(108, 'NORTH WOODS HEALTH AND FITNESS SUPPLY CENTER', '98 LONE PINE WAY', 'HIBBING', 'CA', '55649', 612, '566-9123', 7844, 8000.00, NULL);

-- Volcando datos para la tabla empresa.departamento: ~0 rows (aproximadamente)
INSERT INTO `departamento` (`no_departamento`, `nombre`, `ubicacion`) VALUES
	(10, 'CONTABILIDAD', 'CD. MEXICO'),
	(20, 'INVESTIGACION', 'MONTERREY'),
	(30, 'VENTAS', 'GUADALAJARA'),
	(40, 'OPERACIONES', 'TORREON');

-- Volcando datos para la tabla empresa.detalle_orden: ~0 rows (aproximadamente)
INSERT INTO `detalle_orden` (`id_detalle_orden`, `id_orden`, `id_productos`, `precio_actual`, `cantidad`, `total_articulos`) VALUES
	(1, 601, 200376, 2.40, 1, 2.40),
	(2, 601, 100890, 58.00, 1, 58.00),
	(3, 602, 100870, 2.80, 20, 56.00),
	(4, 603, 100860, 56.00, 4, 224.00),
	(5, 604, 100890, 58.00, 3, 174.00),
	(6, 604, 100861, 42.00, 2, 84.00),
	(7, 604, 100860, 44.00, 10, 440.00),
	(8, 605, 100861, 45.00, 100, 4500.00),
	(9, 605, 100870, 2.80, 500, 1400.00),
	(10, 605, 100890, 58.00, 5, 290.00),
	(11, 605, 101860, 24.00, 50, 1200.00),
	(12, 605, 101863, 9.00, 100, 900.00),
	(13, 605, 102130, 3.40, 10, 34.00),
	(14, 606, 102130, 3.40, 1, 3.40),
	(15, 607, 100871, 5.60, 1, 5.60),
	(16, 608, 101860, 24.00, 1, 24.00),
	(17, 608, 100871, 5.60, 2, 11.20),
	(18, 609, 100861, 35.00, 1, 35.00),
	(19, 609, 100870, 2.50, 5, 12.50),
	(20, 609, 100890, 50.00, 1, 50.00),
	(21, 610, 100860, 35.00, 1, 35.00),
	(22, 610, 100870, 2.80, 3, 8.40),
	(23, 611, 100861, 45.00, 1, 45.00),
	(24, 612, 100860, 30.00, 100, 3000.00),
	(25, 612, 100861, 40.50, 20, 810.00),
	(26, 612, 101863, 10.00, 150, 1500.00),
	(27, 612, 100871, 5.50, 100, 550.00),
	(28, 613, 100871, 5.60, 100, 560.00),
	(29, 613, 101860, 24.00, 200, 4800.00),
	(30, 613, 200380, 4.00, 150, 600.00),
	(31, 613, 200376, 2.20, 200, 440.00),
	(32, 614, 100860, 35.00, 444, 15540.00),
	(33, 614, 100870, 2.80, 1000, 2800.00),
	(34, 614, 100871, 5.60, 1000, 5600.00),
	(35, 615, 100861, 45.00, 4, 180.00),
	(36, 615, 100870, 2.80, 100, 280.00),
	(37, 615, 100870, 5.00, 50, 250.00),
	(38, 616, 100861, 45.00, 10, 450.00),
	(39, 616, 100870, 2.80, 50, 140.00),
	(40, 616, 100890, 58.00, 2, 116.00),
	(41, 616, 102130, 3.40, 10, 34.00),
	(42, 616, 200376, 2.40, 10, 24.00),
	(43, 617, 100860, 35.00, 50, 1750.00),
	(44, 617, 100861, 45.00, 100, 4500.00),
	(45, 617, 100870, 2.80, 500, 1400.00),
	(46, 617, 100871, 5.60, 500, 2800.00),
	(47, 617, 100890, 58.00, 500, 29000.00),
	(48, 617, 101860, 24.00, 100, 2400.00),
	(49, 617, 101863, 12.50, 200, 2500.00),
	(50, 617, 102130, 3.40, 100, 340.00),
	(51, 617, 200376, 2.40, 200, 480.00),
	(52, 617, 200380, 4.00, 300, 1200.00),
	(53, 618, 100860, 35.00, 23, 805.00),
	(54, 618, 100861, 45.11, 50, 2255.50),
	(55, 618, 100870, 45.00, 10, 450.00),
	(56, 619, 200380, 4.00, 100, 400.00),
	(57, 619, 200376, 2.40, 100, 240.00),
	(58, 619, 102130, 3.40, 100, 340.00),
	(59, 619, 100871, 5.60, 50, 280.00),
	(60, 620, 100860, 35.00, 10, 350.00),
	(61, 620, 200376, 2.40, 1000, 2400.00),
	(62, 620, 102130, 3.40, 500, 1700.00),
	(63, 621, 100861, 45.00, 10, 450.00),
	(64, 621, 100870, 2.80, 100, 280.00);

-- Volcando datos para la tabla empresa.empleados: ~0 rows (aproximadamente)
INSERT INTO `empleados` (`no_empleado`, `no_departamento`, `nombre`, `puesto`, `jefe_directo`, `f_ingreso`, `salario`, `comision`) VALUES
	(7369, 20, 'JACK', 'SECRETARIO', 7902, '2000-12-17', 800.00, NULL),
	(7499, 30, 'GERARDO', 'A. VENTAS', 7698, '2001-02-20', 1600.00, 300.00),
	(7521, 30, 'LAURA ', 'SECRETARIO', 7698, '2001-02-22', 1250.00, 500.00),
	(7566, 20, 'MIGUEL ANGEL SOLER ROCHA', 'GERENTE', 7839, '2001-04-01', 2975.00, NULL),
	(7654, 30, 'MARTIN', 'A. VENTAS', 7698, '2001-09-28', 1250.00, 1400.00),
	(7698, 30, 'CARLOS DE LA ROSA', 'GERENTE', 7839, '2001-05-01', 2850.00, NULL),
	(7782, 10, 'MARIA DE LA LUZ RIVAS', 'GERENTE', 7839, '2001-06-09', 2450.00, NULL),
	(7788, 20, 'MAURICIO', 'ANALYST', 7566, '2002-12-09', 3000.00, NULL),
	(7839, 10, 'LUIS ANTONIO MURRA ', 'DIRECTOR', NULL, '2001-11-17', 5000.00, NULL),
	(7844, 30, 'RICARDO', 'A. VENTAS', 7698, '2001-09-08', 1500.00, 0.00),
	(7876, 20, 'ALEJANDRO', 'SECRETARIO', 7788, '2003-01-12', 1100.00, NULL),
	(7900, 30, 'JAIME', 'SECRETARIO', 7698, '2001-12-03', 950.00, NULL),
	(7902, 20, 'OWALDO', 'ANALISTA', 7566, '2002-12-03', 3000.00, NULL),
	(7934, 10, 'TANIA', 'SECRETARIO', 7782, '2002-01-23', 1300.00, NULL);

-- Volcando datos para la tabla empresa.ordenes: ~0 rows (aproximadamente)
INSERT INTO `ordenes` (`id_orden`, `id_clientes`, `fecha_orden`, `commplan`, `fecha_envio`, `total`) VALUES
	(601, 106, '2006-05-01', 'A', '2006-06-30', 2.40),
	(602, 102, '2006-01-01', 'B', '2006-01-20', 56.00),
	(603, 102, '2006-01-05', NULL, '2006-01-05', 224.00),
	(604, 106, '2006-01-15', 'A', '2006-01-30', 698.00),
	(605, 106, '2006-06-15', 'A', '2006-06-30', 8324.00),
	(606, 100, '2006-06-14', 'A', '2006-06-30', 3.40),
	(607, 104, '2006-07-18', 'C', '2006-07-18', 5.60),
	(608, 104, '2002-07-25', 'C', '1086-07-25', 35.20),
	(609, 100, '2006-08-01', 'B', '1967-08-15', 97.50),
	(610, 101, '2007-01-07', 'A', '2007-01-08', 101.40),
	(611, 102, '2007-01-11', 'B', '2007-01-11', 45.00),
	(612, 104, '2007-01-15', 'C', '2007-01-20', 5860.00),
	(613, 102, '2007-02-01', NULL, '2007-02-01', 6400.00),
	(614, 102, '2007-02-01', NULL, '2007-02-05', 23940.00),
	(615, 107, '2007-02-01', NULL, '2007-02-06', 710.00),
	(616, 103, '2007-02-02', NULL, '2007-02-10', 764.00),
	(617, 105, '2007-02-05', NULL, '2007-03-03', 46370.00),
	(618, 102, '2007-02-15', 'A', '2007-03-06', 3510.50),
	(619, 104, '2007-02-22', NULL, '2004-02-04', 1260.00),
	(620, 108, '2007-03-12', NULL, '2007-03-12', 4450.00),
	(621, 100, '2007-03-15', 'A', '2007-01-01', 730.00);

-- Volcando datos para la tabla empresa.precio: ~0 rows (aproximadamente)
INSERT INTO `precio` (`idPrecio`, `id_producto`, `precio_normal`, `precio_minimo`, `fecha_inicio`, `fecha_final`) VALUES
	(1, 100871, 4.80, 3.20, '2005-01-01', '2005-12-01'),
	(2, 100890, 58.00, 46.40, '2005-01-01', NULL),
	(3, 100890, 54.00, 40.50, '2004-01-01', '2004-05-31'),
	(4, 100860, 35.00, 28.00, '2006-01-01', NULL),
	(5, 100860, 32.00, 25.60, '2006-01-01', '2006-05-31'),
	(6, 100860, 30.00, 24.00, '2005-01-01', '2005-05-31'),
	(7, 100861, 45.00, 36.00, '2006-01-01', NULL),
	(8, 100861, 42.00, 33.60, '2006-01-01', '2006-05-31'),
	(9, 100861, 39.00, 31.20, '2006-01-01', '2005-12-31'),
	(10, 100870, 2.80, 2.40, '2006-01-01', NULL),
	(11, 100870, 2.40, 1.90, '2005-01-01', '2005-12-01'),
	(12, 100871, 5.60, 4.80, '2006-01-01', NULL),
	(13, 101860, 24.00, 18.00, '2005-02-15', NULL),
	(14, 101863, 12.50, 9.40, '2005-02-15', NULL),
	(15, 101863, 12.50, 9.40, '2005-02-15', NULL),
	(16, 102130, 3.40, 2.80, '2005-08-18', NULL),
	(17, 200376, 2.40, 1.75, '2006-11-15', NULL),
	(18, 200380, 4.00, 3.20, '2006-11-15', NULL);

-- Volcando datos para la tabla empresa.productos: ~0 rows (aproximadamente)
INSERT INTO `productos` (`id_producto`, `descripcion`) VALUES
	(100860, 'ACE TENNIS RACKET I'),
	(100861, 'ACE TENNIS RACKET II'),
	(100870, 'ACE TENNIS BALLS-3 PACK'),
	(100871, 'ACE TENNIS BALLS-6 PACK'),
	(100890, 'ACE TENNIS NET'),
	(101860, 'SP TENNIS RACKET'),
	(101863, 'SP ENEIOR RACKET'),
	(102130, 'RH: "GUIDE TO TENNIS"'),
	(200376, 'SB ENERGY BAR-6 PACK'),
	(200380, 'SB VITA SNACK-6 PACK');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
