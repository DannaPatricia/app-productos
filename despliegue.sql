-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2024 a las 12:57:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `despliegue`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `CODIGOCLIENTE` varchar(4) NOT NULL,
  `EMPRESA` varchar(24) DEFAULT NULL,
  `DIRECCION` varchar(19) DEFAULT NULL,
  `POBLACION` varchar(9) DEFAULT NULL,
  `TELEFONO` int(9) DEFAULT NULL,
  `RESPONSABLE` varchar(17) DEFAULT NULL,
  `HISTORIAL` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`CODIGOCLIENTE`, `EMPRESA`, `DIRECCION`, `POBLACION`, `TELEFONO`, `RESPONSABLE`, `HISTORIAL`) VALUES
('CT01', 'TV E HIJOS', 'LAS FUENTES 78', 'MADRID', 914456435, 'ANGEL MARTINEZ', ''),
('CT02', 'LA MODERNA', 'LA PALOMA 123', 'OVIEDO', 985323434, 'JUAN GARCIA', ''),
('CT03', 'EL PEQUENO ', 'MOTORES 34', 'BARCELONA', 934565343, 'ANA FERNANDEZ', ''),
('CT04', 'EXPORTASA', 'VALLECAS 34', 'MADRID', 913452378, 'ELVIRA GOMEZ', ''),
('CT06', 'CONFECCIONES AMPARO', 'LOS MOROS 23', 'GIJON', 985754332, 'LUIS ALVAREZ', ''),
('CT07', 'LA CASA DEL JUGUETE', 'AMERICA 45', 'MADRID', 912649987, 'ELIAS PEREZ', ''),
('CT08', 'JUGUETERIA SUAREZ', 'PARIS 123', 'BARCELONA', 933457866, 'JUAN GARCIA', ''),
('CT09', 'ALMACEN POPULAR', 'LAS FUENTES 124', 'BILBAO', 942347127, 'JOSE ALVAREZ', ''),
('CT10', 'FERETERIA EL CLAVO', 'PASEO DE ALAMOS 78', 'MADRID', 914354866, 'MANUEL MENENDEZ', ''),
('CT11', 'JUGUETES MARTINEZ', 'VIA LAYETANA 245', 'BARCELONA', 936628554, 'FRANCISCO CUEVAS', ''),
('CT12', 'FERNANDEZ SL', 'PASEO DEL MAR 45', 'SANTANDER', 942049586, 'ELISA COLLADO', ''),
('CT13', 'CONFECCIONES ARTIMEZ', 'GENERAL PERON 45', 'A CORUNA', 981345239, 'ESTEBAN PASCUAL', ''),
('CT14', 'DEPORTES GARCIA', 'GUZMAN EL BUENO 45', 'MADRID', 913299475, 'ANA JIMENEZ', ''),
('CT15', 'EXCLUSIVAS FERNANDEZ', 'LLOBREGAT 250', 'BARCELONA', 939558365, 'LUISA FERNANDEZ', ''),
('CT16', 'DEPORTES MORAN', 'AUTONOMIA 45', 'LUGO', 982986944, 'JOSE MANZANO', ''),
('CT17', 'BAZAR FRANCISCO', 'CARMEN 45', 'ZAMORA', 980495288, 'CARLOS BELTRAN', ''),
('CT18', 'JUGUETES LA SONRISA', 'LA BANEZA 67', 'LEON', 987945368, 'FAUSTINO PEREZ', ''),
('CT19', 'CONFECCIONES GALAN', 'FUENCARRAL 78', 'MADRID', 913859234, 'JUAN GARCIA', ''),
('CT20', 'LA CURTIDORA', 'OLIVARES 3', 'MALAGA', 953756259, 'MARIA GOMEZ', ''),
('CT21', 'LINEA JOVEN', 'SIERPES 78', 'SEVILLA', 953452567, 'ASUNCION SALADO', ''),
('CT22', 'BAZAR EL BARAT', 'DIAGONAL 56', 'BARCELONA', 936692866, 'ELISA DAPENA', ''),
('CT23', 'EL PALACIO DE LA MODA', 'ORTEGA Y GASSET 129', 'MADRID', 927785235, 'LAURA CARRASCO', ''),
('CT24', 'SAEZ Y CIA', 'INFANTA MERCEDS 23', 'SEVILLA', 954869234, 'MANUEL GUERRA', ''),
('CT25', 'DEPORTES EL MADRILENO', 'CASTILLA 345', 'ZARAGOZA', 976388934, 'CARLOS GONZALEZ', ''),
('CT26', 'FERRETERIA LA ESCOBA', 'ORENSE 7', 'MADRID', 918459346, 'JOSE GARCIA', ''),
('CT27', 'JUGUETES EL BARATO', 'VIA AUGUSTA 245', 'BARCELONA', 933486984, 'ELVIRA IGLESIAS', ''),
('CT28', 'CONFECCIONES HERMINIA', 'CORRIDA 345', 'GIJON', 985597315, 'ABEL GONZALEZ', ''),
('CT30', 'BAZAR EL ARGENTINO', 'ATOCHA 55', 'MADRID', 912495973, 'ADRIAN ALVAREZ', ''),
('CT31', 'LA TIENDA ELEGANTE', 'EL COMENDADOR 67', 'ZARAGOZA', 975694035, 'JOSE PASCUAL', ''),
('CT32', 'DEPORTES NAUTICOS GARCIA', 'JUAN FERNANDEZ 89', 'AVILA', 920268648, 'JUAN CONRADO', ''),
('CT33', 'CONFECCIONES RUIZ', 'LLOBREGAT 345', 'BARCELONA', 934587615, 'CARLOS SANZ', ''),
('CT34', 'BAZAR LA FARAONA', 'CASTILLA Y LEON 34', 'MADRID', 915483627, 'ANGEL SANTAMARIA', ''),
('CT35', 'FERRETERIA EL MARTILLO', 'CASTELLANOS 205', 'SALAMANCA', 923548965, 'JOAQUIN FERNANDEZ', ''),
('CT36', 'JUGUETES EDUCATIVOS SANZ', 'ORENSE 89', 'MADRID', 916872354, 'PEDRO IGLESIAS', ''),
('CT37', 'ALMACENES FERNANDEZ', 'ANTON 67', 'TERUEL', 978564025, 'MARIA ARDANZA', ''),
('CT38', 'CONFECCIONES MONICA', 'MOTORES 67', 'BARCELONA', 935681245, 'PEDRO SERRANO', ''),
('CT39', 'FERRETERIA LIMA', 'VALLECAS 45', 'MADRID', 913532785, 'LUIS GARCIA', ''),
('CT40', 'DEPORTES EL BRASILENO', 'ABEL MARTINEZ 67', 'SALAMANCA', 921548762, 'CARLOS GOMEZ', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_registro`
--

CREATE TABLE `login_registro` (
  `Id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `tecnologia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `login_registro`
--

INSERT INTO `login_registro` (`Id`, `nombre`, `apellidos`, `usuario`, `contraseña`, `pais`, `tecnologia`) VALUES
(1, 'nombre', 'apellidos', 'usuario', 'contraseña', 'pais', 'tecnologias'),
(2, 'Danna', 'Patricia', 'root', 'root', 'España', 'PHP'),
(3, 'SAM', 'Samuel', 'SAM', 'root', 'Venezuela', 'PHP'),
(4, 'simp', 'sim', 'elSimp', 'simp1234', 'Francia', 'php'),
(5, 'Pof', 'poof', 'popiPof', 'pof1234', 'España', 'php'),
(6, 'siu', 'siu', 'siu', 'siu', 'España', 'php'),
(7, 'elSamu', 'samu', 'elSamu', '1234', 'Mexico', 'java');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `NUMEROPEDIDO` int(4) NOT NULL,
  `CODIGOCLIENTE` varchar(4) DEFAULT NULL,
  `FECHADEPEDIDO` varchar(10) DEFAULT NULL,
  `FORMADEPAGO` varchar(8) DEFAULT NULL,
  `DESCUENTO` decimal(3,2) DEFAULT NULL,
  `ENVIADO` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`NUMEROPEDIDO`, `CODIGOCLIENTE`, `FECHADEPEDIDO`, `FORMADEPAGO`, `DESCUENTO`, `ENVIADO`) VALUES
(1, 'CT01', '11/03/2000', 'CONTADO', 0.02, 'VERDADERO'),
(3, 'CT23', '18/03/2000', 'APLAZADO', 0.06, 'FALSO'),
(5, 'CT25', '31/03/2000', 'CONTADO', 0.09, 'FALSO'),
(7, 'CT12', '12/04/2000', 'CONTADO', 0.07, 'FALSO'),
(8, 'CT01', '15/04/2000', 'TARJETA', 0.02, 'VERDADERO'),
(9, 'CT21', '21/04/2000', 'CONTADO', 0.04, 'FALSO'),
(11, 'CT04', '01/05/2001', 'CONTADO', 0.08, 'VERDADERO'),
(12, 'CT06', '19/05/2001', 'CONTADO', 0.09, 'VERDADERO'),
(13, 'CT13', '30/04/2000', 'APLAZADO', 0.03, 'FALSO'),
(16, 'CT25', '11/05/2001', 'CONTADO', 0.12, 'FALSO'),
(19, 'CT10', '22/05/2002', 'CONTADO', 0.07, 'VERDADERO'),
(21, 'CT16', '28/05/2001', 'CONTADO', 0.03, 'FALSO'),
(22, 'CT07', '31/05/2000', 'TARJETA', 0.05, 'VERDADERO'),
(25, 'CT18', '02/06/2000', 'CONTADO', 0.06, 'FALSO'),
(26, 'CT09', '04/06/2001', 'APLAZADO', 0.07, 'VERDADERO'),
(27, 'CT34', '06/06/2000', 'CONTADO', 0.04, 'FALSO'),
(28, 'CT28', '08/06/2000', 'APLAZADO', 0.08, 'FALSO'),
(29, 'CT30', '02/04/2001', 'TARJETA', 0.06, 'FALSO'),
(30, 'CT02', '15/08/2000', 'CONTADO', 0.06, 'VERDADERO'),
(31, 'CT30', '08/06/2000', 'TARJETA', 0.05, 'VERDADERO'),
(32, 'CT14', '20/06/2001', 'APLAZADO', 0.06, 'FALSO'),
(34, 'CT26', '23/06/2002', 'TARJETA', 0.05, 'FALSO'),
(35, 'CT26', '30/06/2001', 'CONTADO', 0.06, 'FALSO'),
(37, 'CT24', '02/07/2001', 'TARJETA', 0.03, 'VERDADERO'),
(39, 'CT20', '08/07/2001', 'TARJETA', 0.06, 'VERDADERO'),
(40, 'CT04', '12/07/2002', 'CONTADO', 0.12, 'FALSO'),
(42, 'CT34', '15/07/2002', 'APLAZADO', 0.07, 'VERDADERO'),
(43, 'CT09', '18/07/2001', 'CONTADO', 0.07, 'FALSO'),
(44, 'CT34', '20/07/2002', 'APLAZADO', 0.04, 'FALSO'),
(45, 'CT30', '22/07/2002', 'TARJETA', 0.07, 'FALSO'),
(46, 'CT31', '25/07/2002', 'CONTADO', 0.06, 'FALSO'),
(47, 'CT34', '31/07/2000', 'APLAZADO', 0.08, 'FALSO'),
(48, 'CT18', '30/08/2002', 'CONTADO', 0.03, 'FALSO'),
(49, 'CT28', '02/09/2002', 'CONTADO', 0.03, 'FALSO'),
(50, 'CT09', '05/09/2002', 'APLAZADO', 0.08, 'FALSO'),
(51, 'CT09', '05/09/2002', 'CONTADO', 0.05, 'VERDADERO'),
(63, 'CT28', '10/09/2000', 'CONTADO', 0.09, 'FALSO'),
(72, 'CT01', '18/08/2002', 'CONTADO', 0.05, 'VERDADERO'),
(73, 'CT01', '02/08/2001', 'CONTADO', 0.07, 'FALSO'),
(74, 'CT01', '17/09/2002', 'APLAZADO', 0.08, 'FALSO'),
(75, 'CT01', '30/09/2002', 'TARJETA', 0.12, 'FALSO'),
(76, 'CT01', '19/10/2002', 'CONTADO', 0.04, 'VERDADERO'),
(77, 'CT01', '28/10/2000', 'CONTADO', 0.05, 'FALSO'),
(79, 'CT34', '12/12/2000', 'CONTADO', 0.05, 'FALSO'),
(85, 'CT04', '23/12/2002', 'TARJETA', 0.04, 'FALSO'),
(86, 'CT09', '24/12/2001', 'APLAZADO', 0.03, 'FALSO'),
(98, 'CT01', '27/12/2001', 'CONTADO', 0.08, 'VERDADERO'),
(102, 'CT06', '12/01/2001', 'CONTADO', 0.07, 'VERDADERO'),
(103, 'CT02', '24/01/2001', 'CONTADO', 0.04, 'FALSO'),
(105, 'CT30', '01/01/2001', 'APLAZADO', 0.09, 'FALSO'),
(5005, 'CT30', '10/08/2002', 'TARJETA', 0.00, 'VERDADERO'),
(5050, 'CT30', '27/03/2002', 'TARJETA', 0.00, 'VERDADERO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `CODIGOARTICULO` varchar(4) NOT NULL,
  `SECCION` varchar(10) DEFAULT NULL,
  `NOMBREARTICULO` varchar(19) DEFAULT NULL,
  `PRECIO` decimal(6,3) DEFAULT NULL,
  `FECHA` varchar(10) DEFAULT NULL,
  `IMPORTADO` varchar(9) DEFAULT NULL,
  `PAISDEORIGEN` varchar(9) DEFAULT NULL,
  `FOTO` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`CODIGOARTICULO`, `SECCION`, `NOMBREARTICULO`, `PRECIO`, `FECHA`, `IMPORTADO`, `PAISDEORIGEN`, `FOTO`) VALUES
('123A', 'COMIDA', 'SAN JACOBO', 15.700, '20/12/24', 'FALSO', 'PORTUGAL', NULL),
('123Z', 'COMIDA', 'SAN JACOBO', 5.210, '08/11/24', 'VERDADERO', 'PORTUGAL', NULL),
('AR01', 'FERRETERIA', 'TV', 26.000, '22/10/2000', 'FALSO', 'ESPANA', ''),
('AR02', 'CONFECCION', 'TRAJE CABALLERO', 284.000, '11/03/2002', 'VERDADERO', 'ITALIA', ''),
('AR03', 'TOYS', 'COCHE TELEDIRIGIDO', 159.000, '26/05/2002', 'VERDADERO', 'MARRUECOS', ''),
('AR04', 'DEPORTES', 'RAQUETA TENIS', 75.000, '20/03/2000', 'VERDADERO', 'USA', ''),
('AR06', 'DEPORTES', 'MANCUERNAS', 65.000, '13/09/2000', 'VERDADERO', 'USA', ''),
('AR07', 'CONFECCION', 'SERRUCHO', 30.000, '23/03/2001', 'VERDADERO', 'FRANCIA', ''),
('AR08', 'TOYS', 'CORREPASILLOS', 103.000, '11/04/2000', 'VERDADERO', 'JAPON', ''),
('AR09', 'CONFECCION', 'PANTALON SENORA', 174.000, '10/01/2000', 'VERDADERO', 'MARRUECOS', ''),
('AR10', 'TOYS', 'CONSOLA VIDEO', 442.000, '24/09/2002', 'VERDADERO', 'USA', ''),
('AR11', 'CERAMICA', 'TUBOS', 168.000, '04/02/2000', 'VERDADERO', 'CHINA', ''),
('AR12', 'FERRETERIA', 'LLAVE INGLESA', 24.000, '23/05/2001', 'VERDADERO', 'USA', ''),
('AR13', 'CONFECCION', 'CAMISA CABALLERO', 67.000, '11/08/2002', 'FALSO', 'ESPANA', ''),
('AR14', 'TOYS', 'TREN ELECTRICO', 1.505, '03/07/2001', 'VERDADERO', 'JAPON', ''),
('AR15', 'CERAMICA', 'PLATO DECORATIVO', 54.000, '07/06/2000', 'VERDADERO', 'CHINA', ''),
('AR16', 'FERRETERIA', 'ALICATES', 6.000, '17/04/2000', 'VERDADERO', 'ITALIA', ''),
('AR17', 'TOYS', 'MUNECA ANDADORA', 105.000, '04/01/2001', 'FALSO', 'ESPANA', ''),
('AR18', 'DEPORTES', 'PISTOLA OLIMPICA', 51.000, '02/02/2001', 'VERDADERO', 'SUECIA', ''),
('AR19', 'CONFECCION', 'BLUSA SRA.', 101.000, '18/03/2000', 'VERDADERO', 'CHINA', ''),
('AR20', 'CERAMICA', 'JUEGO DE TE', 43.000, '15/01/2001', 'VERDADERO', 'CHINA', ''),
('AR21', 'CERAMICA', 'CENICERO', 19.000, '02/07/2001', 'VERDADERO', 'JAPON', ''),
('AR22', 'FERRETERIA', 'MARTILLO', 11.000, '04/09/2001', 'FALSO', 'ESPANA', ''),
('AR23', 'CONFECCION', 'CAZADORA PIEL', 522.000, '10/07/2001', 'VERDADERO', 'ITALIA', ''),
('AR24', 'DEPORTES', 'BALON RUGBY', 116.000, '11/11/2000', 'VERDADERO', 'USA', ''),
('AR25', 'DEPORTES', 'BALON BALONCESTO', 80.000, '25/06/2001', 'VERDADERO', 'JAPON', ''),
('AR26', 'TOYS', 'FUERTE DE SOLDADOS', 143.000, '25/11/2000', 'VERDADERO', 'JAPON', ''),
('AR27', 'CONFECCION', 'ABRIGO CABALLERO', 500.000, '05/04/2002', 'VERDADERO', 'ITALIA', ''),
('AR28', 'DEPORTES', 'BALON FUTBOL', 48.000, '04/07/2002', 'FALSO', 'ESPANA', ''),
('AR29', 'CONFECCION', 'ABRIGO SRA', 360.000, '03/05/2001', 'VERDADERO', 'MARRUECOS', ''),
('AR30', 'FERRETERIA', 'DESTORNILLADOR', 9.000, '20/02/2002', 'VERDADERO', 'FRANCIA', ''),
('AR31', 'TOYS', 'PISTOLA CON SONIDOS', 57.000, '15/04/2001', 'FALSO', 'ESPANA', ''),
('AR32', 'DEPORTES', 'CRONOMETRO', 444.000, '03/01/2002', 'VERDADERO', 'USA', ''),
('AR33', 'CERAMICA', 'MACETA', 29.000, '23/02/2000', 'FALSO', 'ESPANA', ''),
('AR34', 'OFICINA', 'PIE DE LAMPARA', 39.000, '27/05/2001', 'VERDADERO', 'TURQUIA', ''),
('AR35', 'FERRETERIA', 'LIMA GRANDE', 22.000, '10/08/2002', 'FALSO', 'ESPANA', ''),
('AR36', 'FERRETERIA', 'JUEGO DE BROCAS', 15.000, '04/07/2002', 'VERDADERO', 'TAIWAN', ''),
('AR37', 'CONFECCION', 'CINTURON DE PIEL', 4.000, '12/05/2002', 'FALSO', 'ESPANA', ''),
('AR38', 'DEPORTES', 'CANA DE PESCA', 275.000, '14/02/2000', 'VERDADERO', 'USA', ''),
('AR39', 'CERAMICA', 'JARRA CHINA', 127.000, '02/09/2002', 'VERDADERO', 'CHINA', ''),
('AR40', 'DEPORTES', 'BOTA ALPINISMO', 149.000, '05/05/2002', 'FALSO', 'ESPANA', ''),
('AR41', 'DEPORTES', 'PALAS DE PING PONG', 26.000, '02/02/2002', 'FALSO', 'ESPANA', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_pedidos`
--

CREATE TABLE `productos_pedidos` (
  `NUMEROPEDIDO` int(2) DEFAULT NULL,
  `CODIGOARTICULO` varchar(4) DEFAULT NULL,
  `UNIDADES` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `productos_pedidos`
--

INSERT INTO `productos_pedidos` (`NUMEROPEDIDO`, `CODIGOARTICULO`, `UNIDADES`) VALUES
(1, 'AR01', 11),
(3, 'AR02', 10),
(5, 'AR03', 10),
(7, 'AR03', 15),
(8, 'AR04', 2),
(9, 'AR06', 9),
(11, 'AR07', 4),
(12, 'AR07', 4),
(13, 'AR07', 7),
(16, 'AR08', 7),
(19, 'AR09', 20),
(21, 'AR11', 10),
(22, 'AR12', 1),
(25, 'AR13', 41),
(26, 'AR14', 4),
(27, 'AR15', 5),
(28, 'AR16', 2),
(28, 'AR16', 4),
(29, 'AR17', 6),
(30, 'AR18', 5),
(31, 'AR19', 5),
(32, 'AR21', 51),
(34, 'AR22', 12),
(35, 'AR23', 2),
(37, 'AR24', 21),
(39, 'AR25', 21),
(40, 'AR26', 2),
(42, 'AR27', 22),
(43, 'AR28', 2),
(44, 'AR01', 21),
(45, 'AR29', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`CODIGOCLIENTE`);

--
-- Indices de la tabla `login_registro`
--
ALTER TABLE `login_registro`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`NUMEROPEDIDO`),
  ADD KEY `CODIGOCLIENTE` (`CODIGOCLIENTE`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`CODIGOARTICULO`);

--
-- Indices de la tabla `productos_pedidos`
--
ALTER TABLE `productos_pedidos`
  ADD KEY `NUMEROPEDIDO` (`NUMEROPEDIDO`),
  ADD KEY `CODIGOARTICULO` (`CODIGOARTICULO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login_registro`
--
ALTER TABLE `login_registro`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`CODIGOCLIENTE`) REFERENCES `clientes` (`CODIGOCLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos_pedidos`
--
ALTER TABLE `productos_pedidos`
  ADD CONSTRAINT `productos_pedidos_ibfk_1` FOREIGN KEY (`NUMEROPEDIDO`) REFERENCES `pedidos` (`NUMEROPEDIDO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productos_pedidos_ibfk_2` FOREIGN KEY (`CODIGOARTICULO`) REFERENCES `productos` (`CODIGOARTICULO`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
