-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: dbempresa
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `NIT` varchar(45) DEFAULT NULL,
  `genero` bit(1) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo_electronico` varchar(45) DEFAULT NULL,
  `fechaingreso` datetime DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,'Fernando','Caxaj','12345',_binary '\0','3354','fcaxajl@miumg.edu.gt','2020-10-02 00:00:00');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `idcompra` int NOT NULL AUTO_INCREMENT,
  `no_orden_compra` int DEFAULT NULL,
  `idproveedor` int DEFAULT NULL,
  `fecha_orden` date DEFAULT NULL,
  `fechaingreso` datetime DEFAULT NULL,
  PRIMARY KEY (`idcompra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras_detalle`
--

DROP TABLE IF EXISTS `compras_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras_detalle` (
  `idcompra_detalle` bigint NOT NULL AUTO_INCREMENT,
  `idcompra` int DEFAULT NULL,
  `idproducto` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio_costo_unitario` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`idcompra_detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras_detalle`
--

LOCK TABLES `compras_detalle` WRITE;
/*!40000 ALTER TABLE `compras_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `compras_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(60) DEFAULT NULL,
  `apellidos` varchar(60) DEFAULT NULL,
  `dirreccion` varchar(80) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `DPI` varchar(25) DEFAULT NULL,
  `genero` bit(1) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `idPuesto` int DEFAULT NULL,
  `fecha_inicio_labores` date DEFAULT NULL,
  `fechaingreso` date DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (2,'Fernando','Caxaj','casablanca','53185325','2906041090301',NULL,'2020-10-01',2,'2020-10-01','2020-10-08'),(3,'Jose','Marquez','12','3354','196465454',NULL,'2020-10-02',1,'2020-10-08','2020-10-06');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idmarca` smallint NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idmarca`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Cocacolas'),(2,'Pepsi'),(3,'Maggi');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `Activo` tinyint DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_padre_id` (`Activo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Productos',1,'productos.jsp'),(2,'Marcas',1,'marcas.jsp'),(3,'Empleados',1,'empleados.jsp'),(4,'Ventas',1,'ventas.jsp'),(5,'Puestos',1,'puestos.jsp'),(6,'Clientes',1,'clientes.jsp'),(7,'Proveedores',1,'proveedores.jsp'),(8,'Compras',1,'#'),(9,'Usuarios',1,'usuarios.jsp'),(10,'Cerrar Sesion',1,'login.jsp');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(45) DEFAULT NULL,
  `idMarca` smallint DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Imagen` longblob,
  `precio_costo` decimal(8,2) DEFAULT NULL,
  `precio_venta` decimal(8,2) DEFAULT NULL,
  `existencia` int DEFAULT NULL,
  `fecha_ingreso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (8,'chocolates',2,'Bebida Refrescante',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0¢\0\0@\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0\0ø\Ú\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0¾/bs÷öŸö†*]ù\äG¨æ²ˆ\æ„,‡*H>\Çõ.’\èÏ“U;£W&€\ì„p}k=.¥p\ßQS%âŸ¼¬¿Nk7M£EQ3Ao¤|\ÜU«mri&R¸T#>\çÒ±e¹P1$÷ôªg$’y\'’MO°SV{\r\×pznj\Ïu%\Ü\ï<Œ¬\îy TY5@dr	ÛŠ\\8\ë†úñZ{.UdO´Mİ–²z\ç¥YQ•0¶*ˆ¸S\Ôú\ÓÁR8 ş5=\ÑjK£5c¿ŠN­°ú0\Åfë¾h@ ¤ñõªòL\Éõ¨I\É$ıj©\ÓiÜŠ•.¹Hù£š~(\Åt\\\ç°\ÎhæŸŠ1E\Â\Ã9£š~(\Å\æiø£\\,3š9§\âŒQp°\ÎhæŸŠ1E\Â\Ã9£š~(\Å\æiø£\\,3š9§\âŒQp°\ÎhæŸŠ1E\Â\Ã9£š~(\Å\ÒóO\Å¢\áaœ\Ñ\Í?b‹…†sG4üQŠ.\Í\ÓñF(¸Xg4sO\Å¢\áaœ\ÔÖ·\Şm\ß\Â\Ã\r\Å3b‡ª³\ZvwF\Ğ|€A\È#‚;Ñ“Y\Ö÷e\n\î\îóŒP÷²¿L(ö®f\îo\íqxõ5\ŞDdúk5\ËIË³7\Ô\æ“J—vK«\Ù\ßQş\ê=I\ÅYß•È¬¼U«{…Hv¹?)ã´NšJ\è!6Ş¤\äši&¢{¥ş\'\êqP›‰p>‚¥A²œ\Ò,’}j7Gñg\é\ÍW9=I?^i1V©÷d:‘/4üQŠ\Ö\æV\Í;š\\S±N\ì,8i1O#šLT\Üch\Å;b‹€\ÜQŠv)B!@\å+€\ÌRº22²ŸB1]¶•\áû}1|û’²Î£%\İO¦™ı*ƒ…›%‚¸c“‘š\äXµ)5¢\êu<+I9;7\Ğ\åñF+vM2\ÚNŠ\È\Ù5R]\"Tÿ\0V\ê\ã\Ğñ[*\Ñ{™:3^fn(©å¶–õ‘°¸\ÍE\Åj¤¨Í¦·Š1N\Å§q\r\Å§bŒQpŠ1N\Å¢\à7bŠ1EÀm§bŒQpŠ1N\Å¢\à7bŠ1EÀn(\Å;b‹€\ÜQŠv(\Å Š1N\Å§pŠ)Ø£\\ÑŠv(\Å¸£\ìQŠ.qF)Ø£\\\âŒS±F(¸\r\Å§bŒQpŠ1N\Å¢\à7bŠ1EÀn(§bŒQpŠ1N\Å¢\à7bŠ1EÀm§bŒQpŠ1N\Å¤‘\Â7Fz\0*_³\'«~t\èx\É\"¤¯‰ªª5÷>ƒ\r…¤\é§(ô*\Í&)\äsIŠ÷OŸ°\ÜQN\Å¤Š’X®b‘Ô²£† wÁ\Í%&)5uf5£¹±w­¶ ÿ\0¼}‘\çˆúş¹¨A•#\ê\rgbr8>Õ’¡«GCgY·w©¬&~£4ñt?‰#YIq*ÿ\0~¼Ô‚ğÿ\0À\Ô:,µY\Z\É4oÀ`=\Él\à›–‰rˆqü«<\\F{‘õ*HG(ÿ\0‘¨\ä’\ÛBù\ÓZ\êi\n\Õ\ÈG³\ÕI4\ëˆÿ\0ƒpõCš\ĞR¸o¨©õ\ŞV_§5Js^dºp~F!Aô#˜®‡0\Ü\ìj¼\Úl”2	\à\çùÕª\ëf¬g*\rj\ÌlQŠu.+s˜£\ìQŠ\ÃqF)Ø¢€°\ÜQN\Å ,7bŠ1@Xn(\Å?PŠ1N\Å\0\ÜQŠv(\Åa¸£\ìQŠ\ÃqF)\ÔS¸£\ìQŠ@7bŠ1@Xn(§bŒPŠ1N\Å ,7bŠZ\Ã(\Å;´†bŒS±KG\×\Ã1I\Åv\Ğx_O’IOûoşmmt\ëV+h±ÜŸÖ¸e\ÙM‘À\Ëy4K‹‚6òÉŸ\î¡\ÅFÑ´nQÁVS‚§±®öMb\Ê?ùo»‘I¬T\Ñ#\Ö.§ºslü®\ÎM8bŞ®j\È\'„J\Ê\ì\æ±MrF1}k´‹Â¶1\ã\Íi¥>\í·ùU?i–ZH–\Ö\İcu•Al’H9ÿ\0\nÎ¶:<­B÷\îkCùÓ­\Ø\å2Ş¿•\ÏLŸ\\óE×›*Ó–\í³Ö\nqøR.[ÿ\0Ç™İ“ùşµMÇ¯\éU\ì\Ï\îf_M­ú\ãúÕŒ\ï­fjV=i1O=i1_N|¥„¤§bŒPb’E1IŠu†ÑŠu\\\Å´P‰\\tcøóOºÃŠT´˜Ôš&ó”‡>˜¦ıªP\n«¤`Œ\ç5”Nln(\Å:Š²ÑŠu\\,&)1N¢‹€\ÜQŠu\0\ÜQN¢€E:Š\0n(§Q@\r£\ê(¸	ŠLS¨ \âŠu\\\âŠu\0\ÜR\Ò\Ñ\Å\07¸©<™vòŸ`\ê\ÛN\ãL¤¤À\Ó[£\ê)\Ü\ÑN¢‹€\Ú1N¢‹€\ÜRâ–ŒP‡öœÓ§\ï®d$pAb3Q˜‡©>ÂªUY/\àŒ¸-£<w\ê?B1ø\×4£J\î\Æ\Ês‹SHİ\Éùš¹§k\Û\ã`\Şs’3ŒV47	p[`8P	lpr3\ÅL›:ƒ‘U\ÉN¤{ Sœ%Ù›Rj—²g7¢ü¿Ê¨_»\Ëm!wf#\æ$Ó£\Í‘VŒ–UQúš¯s-ºB\ë6«`‚G!r}¸ë’§²Šj\é3®Ÿ´”“³z™ş‚Œ\ç¥7>\Ãñ¤\Íy\'´[³\'2/8h\Î?¥IŸ¥V²ô\È\Æx$¯\æ1ıi\Ü\Ğ2r9£\â9¤\Å}5Ï”b—b‹€˜£´b‹€˜£¸£\\\Å¥\Å¢\à&(\Å.(\Å1F)qF(¸	Š0)qF(¸	Š1KŠ1EÀLQŠ\\QŠ.bŒRÑŠ.bŒR\ÑEÀLQŠ\\QŠ.bŒR\âŒQpb–Š.bŒR\â\Z‘8À\éCv\ZW,\Ø\éZŠ·U\Ú\Ò\Ì\ØÁ­H|#+\ç\İ*ûF¥¿hGm—l\Ñ[\ê+-¸—\n\Ù=?•“swp\\©½i—\Õ	¼\ïmV¤Ÿ+²ô;U*pŠ\æWe´\Éc\'\Ë!À8Á\à\Ñp\Õö‘Í…ó©„\Íññ\èNkR\×S¿¹ŒGgl#I8ü\ëiÕ©¥½Y¥NO[ú\"”^½|y’Cú–şUv/	D9\êFõØ¡Aw{ªDJ\Ü<±g\ĞmñBId—\ï\È\ïşóY\'Zzó$¼‹µ(;r·\ên\r/Dµÿ\0X\È\Ä\ÏIsú\npÔ´‹?õ§<¸©®t!\'\n2OaRy3Góy[±ü$šürl¥Z\ßR5/¼C\Ä&$†@¤ƒ’@ı+ô\Äò+A·2p1\Í%Ä¢gVh\ÆCŠ\è£EA]hsUª\æ\ì&(\Å-®‹˜	Š1KŠ(¸	Š1KŠ1EÀLR8\Îp;Ó±U¯\ï\Z\Êu@Å›ö¬\ê\ÔT \å\'¢.9NJ1WlÃ›\Ä,\ÂO/oÌ¸\n9#œs\èpF~•œ’´ ©r\ÊÑLú÷\è\rLñ©“\Ì,Û•Ë®\ÒÜ’~½\Í:\ëø1ş8¯—)Ö¨“wG\ÑRÁ:q»V°±\ß\\\Â\n¤Ì¡N1Iö™¤q¾i=‹Uó@<­ts\ÊÖ»±^\Î½‘9\n{dûŠ\\\ãµ7#\ëGÖ¤³p>Põœ\\ŸNn*µ»m®\Ú~h<Rys\Æı6°?­t_\Ù\Ë\é\\±\àô\é\é[¿\ÛCüš\0B94˜§\Í%}%Ï•bŠLQpbŠJ.bŒR\ÑEÀLQŠZ\\QpŠ1KE1F)Øª÷Rˆ\á`\ŞA\Æ1@wTq<`¨ \äJ\Ê2¹\'ŒOsS\Z9	V œgŠ«b™jg¸85.*@n(§b’‹±ká¶–š{¤‰C\0@~µRM0dùr†\0\àduüª§˜\çv89\Å/˜ÿ\0\Ş#\é\Åc\ÔN\îWù9Sj\É\r–#…”\ÜS‰$\å‰\'ÔšJ\Ù^Ú˜»_A1F)ivg¸¢\à7b–Š.bŒS±IEÀLQŠZ(¸\0,Ÿt‘ô –=XŸÆ=iv0Š°_R1KA\ê7j\ËR¸°¶\ìª‚\Ù\éUñF)J*J\Í]\r7t\ìË²j·W\0¬\×•=Fx?•V2/¯\ä*,R\â¥SŠ\ÙXn¬ú2CO\îXúC\ÍCŠ*¹S\Ü\\ï¸”b–‘\ÊÆ…˜…U$ñŠ¦\ÒWd†(\ÅV“R¶\0„•]û(\Ï5]õ);\"¯5Á[3\ÃQv”®üU¾†(\Ås—¾&—N»…%…eŠ@s•—ßŸJ°|F\Äº`Œ‚_9©Y®\ÅI¶®[\Â\Ô]\r¼QŠ\æ\åñL¶\ÒBe·¢wÁIg¿\á]1b=+§Š§ˆMÁ\ìgR”©Û™n7™¯iá¿» şµ«Š\Í\×\ÇüI¦=Ô©,b½	z\Z\à\ß.\"/\Ì\å_z’W\ß\Z\ÕD–ô?ˆ\ëRù£\ËT?{+ä©«M3\ë§4\â\Õ\ÇfŒ÷Ï½3>ô  òp2+\Ò8K¦\ç\éV„Ÿ\Ä\ê·4\áaÀÌ¿’\Ğ‹\'Í°\ä*ÀqFj´1-¸)¹9ı\Ô&Fhüÿ\0:x\ïœ\Ò\ïö?:r94˜§É£ôw>`n(\Å;b•Àn(\Å;bÀn(\Å;b‹…†\âŒS±F(¸\r\Å¦ˆL¦1\"\ïsjµıÑ÷* –byÀÿ\0\Zi6\ì ¸¾PJ@\Ã#’ç ª’n\È\İ\Ô\ëQ(ÁÀ\É\0\æ¤r¡\Ï\Ì2I\'5¢I\0\Ù şy©n¤\Ù M¸U\î{\Ó:ş8şu%Ô\ç\é÷D˜Ä”Œ€\Ø\Ï\\fŒ\\ü¤s“òEB\"RF;Ÿ›Ú§p1’J¶Ğ§#9\éŠ[°ÿ\02Dsó0`v\à\Ô\ÑÜ”ÿ\0Y’3€z\â«`\ä0,lŒ\â—a\Ø\î³Qÿ\0\ê\Å\'ajiñVì¦²…[\ív\Í;ò\à\àX6ó4.2\Ä!?6kP`€A\àŒzÊ¤.¬\ß\Ü\\$\â\îq¬ZÇ‘o§@œ`ªF\â÷\âCôªØ£”h\Æ;_\ï5u¤÷±­\r™·\Ût‰\n•”I  \äzgŞ–\æöú\å°€¨\ç	XûG¥;,:>†§\Ø\İİ»²½¶–J\È}\Ér\ãÌQ€\íŞ¡\Å8\äõ$ö\ä\æŒVñVV1n\î\ãqF)Ø£\î!¸«6S\Ãk#¼\Ö\Ë8#\åzZƒb¦QR\\¬qm;£]|@#ÿ\0Seo¦W¹Ö®n€\Ú@1T1F+8Ğ‚wKSG^mX$>c–Àp;SqN\Å­V†[\Å§bŒS¸\r\Å§bŒR¸\r\ÅA|?\Ğ.?ë™«Q\Ú^\\\ï–U¶·™\Ü\ãv{:\ê+R¹&\æHƒ0”e\Î \à×Œ\Æ\Â¥e~–:£…š´š\Ñ\êc£\âEúÕ‡zk•ş¢y+\ã~#´\Ë×‘\å’Ø¢3m\È;FqÒ’\ÌÌ™\ã`A#«\Îşõz\èS|ª64OKÚ¬‹ä¸o@J\ç‘^’0@oP\ry^§¶±õQü«³ğ]ô÷ºt\és3\Êa*—9!Jôı+\İ\Êj(7\æ\Êw‚’\èt8¬Ÿ\å,\ápH+&2>”“x€E#\Æ-òUŠ’[\Óğªš‹jhQ•V% \íÏ¯\ë[\ãqôeJPN\ï`Á\à«*±››œõã°“!’:TPœ\Ï\î~nı\rkµµ¹<Æ­„óQ˜\á@vÆ€„\nğ!4š²=¹Q›“iYòƒô£#©\Ï\çM¥8ô¯P\Ä\Ó\Îy\'·s\ïLó\ZûK¿\ßğ s‚=\Å&I\ãğ¥¤2J§\Åiğ:~”XG7\å¹?,n}0¦¥òfÿ\02\ß·ó\êO*LSùQ`±)šLT‡©¤¯¡>\\eú(”bŠZ\0f(\Å>Š\0n*µ\Õ\ÒZ…\r»s}\Ü\â¬I\"\Ä71À\è=\ë\Zü¬³Áù‡C\ÛSJ\ïP[ØŠIT\Í#…$‘€}úS€d±,\ìr=)l¸#x>09­P\í¨\èøûÇ’9&•\Âòz\ä“ú\Ôh<Ì’N	”òxü)\ÜV¶\Ã\ã\å\Ô{­1\ß$’rI\Í	\' ¡“­Dû6ƒøP˜r»\ê[·û\ë\î\Ê)\×22I´¹UOLçš¯œ\00X20\Çz±q*½\ÌN„0\ÉC\Û>\Õ-\ê\n-ùc\0²\ã\n€ƒÿ\0\ë8 \ä\Ô{òK2>ó\Â÷\Ç×ƒ\ÍE\æ¹}Û\ìc ô\ã§\éOó]Ü’\ÌU\â	û\ß\áŞ\ØpB7…ûÀrÍ·ŸóùÖ••\æğ\"“€\á½k*\àrK9;@]£¾\Ù\ïŒS$\"Bw6€\0>\ß\áC\Õj¾§KF+*\ÏS1‚³\îtV¯¯ô­+i\Ö\æ3\"\0úÕ›M\nÄ”˜§\ÑHbŒS\è bŒS\è bŒS\è bŒS\è¢\à3bŠZ\0f(\Å>Š\0eV¸½\ŞMŒ¬[\â®V.®qx=\ĞZ\àÌ«Î…z{\ÜÖŒ\åf\\\\XA¶H#\ÌP\ØÇ±\ãÿ\0\ÕX\×e\åRÁ¤%›y\ÎI9\íÒ£/M/_-[ZµÔûŒoÊƒLYş?Ò˜m\×û\íùSŒ”\Ã%s+R3nÙ¿:i†/ö¿:Rô\ÂõJ\ãÔ†[Y_{Ç¹±Œ’i\é4šUÁ\Óİ fÓœ‘õüh/QM\Ì2U#ô­¡9\ÆI¦\Ñ[\èõFö\ÔòH\Ï:«³\Ì\Ã\å\Í]²¿mÁI\rŒ•#\éJ$hˆe8`x\"ºe+÷=:5¤š]ŠI½ê¼“õª\ÂYd@Ln¸ ŒTn&ÿ\0Lr;Š˜\Ók¡\Ø\ê\'\Ô\Õ\ŞLÑŸj2|´\ÎAÀ\È=©s\Çõ¯A{4a|ÀŸ•?5^\Õÿ\0sô8©³ıiˆ»¦HE\æ	\ê¤V¾úÀ²“e\äg\Ôâ¶‹ÿ\0­\0K¿¿…;½Vó>½©ûÏ¡ f¡\êj…Æ·§\Ú\Îğ\Ïr©\"}\å*N?!Yú¶¿-¬Ñ¥¼°’A,H\r\\õÄ·7SMpT\Ë(vŒ\nõª\âT]£«>z•ew±è¶·0\ß@\'¶I$\0GÖ¥\ÅyÖ‘©7R\á÷´C;‘O\\Ã¦k¹‹SYaI|¦Eq\à¯½kF§´^dÕ§\ìß“.bƒ×¯@\ß1\Ï\ïg\ÜqUÌŠü4¹…³Š\Ş\Æ\ìm\ê:²şu\Å\ÊÄœÄÇ§½dKsDO#<\Õ	oa€»r@9\Ï?\çŠ,‘qŒ¥\ÒÅ¿¶´“2Œ@\Ü{\çüH¨<ÀğF¥¾fS\É\çøª¦Je1’§\'˜4\ç‘,G\0ş\îz}iß©²‚J\Ö-$ü¤òj30À \åıj\ä’{0\Ï\âú\âF\Ñ\É<ñ\ïúsEÁSD\é.$\08\ÅK¼d÷I\nO¿Ê©\ÆAV;³À\Çlri\ï!wHÁÜ¡p„ñ‘ı3Ò‹‡\"Ü›\í69\nH\Ç\\qLy?(\ç#¿ù\æ¢9p\Ì~ñ>Ô‡$\0\ç§=)\Ü9V\å\ëY\0u\Î0Fß¡ÿ\0*pÀŒ\ç\ï\Ç.\ãíš ŒP•<†2úó\ÍI\ç1İƒ’TÇŒ\ã~´º‰\Æ\ãÜˆİ³\ÕI\í\Ïÿ\0^\\\"z¾±U¥p\\¶~\\\ä{œZW8\çû¬p}{\Õ\\.<\ÉÔ“ƒŒ\×ù\ãoQ\×ÿ\0*4\É\É\éÇ°ÿ\0&“<g  q\ïùŠ.¥˜\È\0\î\êFF0z\ëR\Û\\›[¡!$\ã†Rz\Õ4œ1\à€?\ÏÖ˜\Ïq\Îi\\—­·™n!Y£G¡\ïRb¹M;Tû,Ä©Xe•3\éü\ëb\ß[V“lè¨§€\Ë\Î>¹\íS\È÷D5fi\âŒS\r\Ì!™Wc\ÏSRe|¿3#f7níŠ‘	Š+\Z÷\Ä\"Å´K ‚\ÎzŸlv\â®éš¬\Zœy„•}\ä#·\é\Í;=\Çgk—1F)%–8x’EBG3Y‹®\'\ÎEOSøĞ“{\Ô\ÅRÔ®$„\"\Æq¸°\ê1T#Ö¥6ù£*AÀ$zcü÷¬û\İRIr®\î\Ä«`c®1V¡gv+7¢4\ìµ9>\ÓRH%Yo\\Âµd¹·‰\Ê\É<HÀ\à«8W<\ï2\'!”†§¡¨æ”¼ŠfbÄ¹œ\ç8¤\ì\İÖ†Šûb¹\ÍU™l\Ğ\\nx\ÚC™’@\éù\n\è\"¹†\á\Ê\Ã\"»(\É¥§Ô–¬\ÚŠ†k{§x÷`H\Ç\åVhx}k9\Æ3¤®4\Ü]\Ñ\æW2\Ü\ÛŞ”ó\å)¿Œ·QŸò+X¿\'\ëO¾ğÖ¡pò2@¤‡,§\Ì<ÿ\0Z\é\Z‡üú·\æ?Æ¾F®«zAõ\èz¾\Ò\r-QP½0½\\:.£ÿ\0>¯ùñª×¶7V\î¡h¢)bA\äô\éY}ZªWqpFI»&®D^£& ûló\Óô5%«­\í\Ê\Û\Û~òfªŒ\ãô•97d™£ƒJ\íh;4‡¿\Ó¡ı‡©Ï£şcüiƒ©d¢?_Qş5¯Õªÿ\0+#\ÚCº8\êd\Ç	ŸCVä²¸ILDb\Èâ¡š\Ê\á\á Drzr+¡E\ßc²\Z4\Í\Íù\0úŒÑš†\"D1†á‚€G§¥\ë¦\å’\æ“}8ZÜ¸°±2G4}Š\ë\êóÀ\ÎO‘\ÇsS—¨¬¬n‡˜L\rƒÀ9k\ìW=<–\ç\é@ŠB“#z05´dõ?Ö±ş\År3û–\Ï\ÔV\ÇØ®±\Ì\rœzŠ@\'™NóO©ü\é>\Åv?\åƒr=©\ßaºÿ\0\rúP#\nóJAt]˜É¹yR1óƒX²I‡•d\Ø\r~_ó\ë]\0’\æ\Ì«©\ÚJL,Î™rq‘l¿ZÂ•\æy¼³BkyT‹w‚Ó±:-E)«¾\ãô\Ñ˜‰b¦2Åù}ñúV¬Ú¼3 V™™A\ÈMcD\'9Àp½søû\Õ\Ëm:9£..d…c\0\È\ÒÇ…\0÷\á¹\íÀ\É9\Î1\ÍkO\à¶3©„Sw-+¬©½\ÉÁ+Š>„~kBÉœ;2ı)wŒ¤nOc]¦\Æ/\n\Ó5ƒ®ğ»‡<\áNŠLÀp„9¥eCras²(|\Å1­\ïeùK,l$8zo–\èO>…¡&\Çÿ\0<\ß%³\Ô7ùıj$\ÎCBœÀ\Ò\Éx±!. |Hşt\Ä\Ô\ây6›uAüL\Ì>¼w¨úò\ìC¡S±4§®:ƒ\Óñ\Ïø\Óv’\ãQ¾\İsSXJ·\×>_’©´\å²rvúôü?\Ze\ÍÎ¥2L\Åa‰Š¹Q\Ø\ì?\Ú\ì\\0µ\Z\×A#Hd!şV\Æx\ëI¼ ûÄ“õ©5y,\ì±Z\àÿ\0\ÓBvş½O¥g[Şª[À„H>õQ\ÇE«ÙXI¥v\Ñs\Ì\Ë\î#\îŒ½¨ü€”œõÿ\0=*’\Ú\æ\å‚\ã8@?­h¥\ÔHcXX°`¸\Ú;\Óx\èôFN„–\Ê\ä&\ÈÌ0¥±»\Ğ\Ğ/¡0pA<JÔš\Õ%³{~\0aÁ¡®UÑ£rŒ0\ÊpA*\'Œšz$tS\ÃBkV\îiı¶\ãŒdğzÕ‡|òO[ğ¬\ë+½Gd\Ç\ÊpF@¤¸¸¹³Ûˆ„\0e›?\Ë\ëUOvù—\Ü*˜D­\Èõó5†H$ü¥º¾\â¡\Î\âOA\Ô÷\ÅAesqp$ó#n1\åŒûw¥{…Cå˜§\ÜMµº\Å\Ó\Ø\ät¤›OrÀ|ƒ\Øc\0Tmp¾xR>óŸL\Ó|\É0¶Ÿ\Ğ\0¨ˆ¸y\ÌH ß¯Ò‡‰‹Ù‰Roq&¢¹\Øg,@Œ\ãÿ\0\ÕS‹Æ‰œ9\Î*¹U’GS+6@À\È\Ï_Î£#‚_t…†005¤q\Ør¢\Ú\ÕW3*Z…iPsşOjÎ†YQ\Õ\Ñ\Û\å=I\Èj5¾‹\å\Ïÿ\0[©õ : M¡Š±\Ú	=I\ïÓ¨§*·w2Tœot\ë˜ ?.8\É\éş5-¼òZ\ÈRÀäƒŒóšŠ\ÒHKù;œœ†-\ï×Šap\'O/#/ÂimS)Ã¥\Ô\'“)31¨\ØH\ë\Ï\ë\Æj,ÿ\0}™—û¤\ç¸gOŸp€	#­>\íx!\ÂI?\İÖ“¬Ş—%SW\ĞIA\ÜvŒ\0/ûÙ§ó%°bÄ¹›4ªğŒYz÷ªFğ\Å$\ë\ÕYˆ®?úÔ½¥\ÊPmYnM\æ\æ¯È­†$™Ò™-\Ä\èn&Û—\'n	ÿ\08«:u‘ÕµX•üˆ\İ\Ó\0>„œş5K\Ä\ÚL–W…ax§„1\Ø\ÑH\àô\È\ätü+‡Œ)¨Á_MOC\r†§R-\ÍÙ¢İ–¢DŠ\äÄ¬C(\Ï‡®FkZ\ŞI.¦\Ö9efMÊ¨9\Çù5\Ëé°²¦%N§!O<\ê=+¯ğ¨1K4®«%C•8c\Ç\éœsŠÒ®:T°\î¢JıŒ£ƒJ\êŸF÷,\Ù\êW\áŸ-\Z»]€\Ç\åW—Zˆ©\ÌRdv® >@\é\Ít‰;He+\Ç9£‰–*ü\É+1ÁC\ã\ÊÛ¹¡q«‡B°++7\ßOz‚=Nx\á(\Ä1\çy\"«}Ÿ¦¥†\İLÑ‡!”œN+\Ñ\å²\Øó£f\ÒOq\Ö¿e\ï\Ü\Ñ0\É\0g«øªúŸL‹¸0da‘Œü\Õ?\ÙT$\Ç$:6\0\'€?­e^\Í–\ÓF²`yÿ\0\ëW%y\ÂT¤\ï\Ğ\ê£MÆ¬o\Ü\är*ÿ\0‡®>\Í\â+9q»Œg®TŠÑ¶µKÅ²O;T\Z¶šuŒWP\ÌV\çÍˆ\åpWô¯›§‰„&›\è\Ï~²N*ú£¥ş\×ÿ\0¦øõG&«+\äF¡¯R+0\ŞÛ\á›ñ\Å\'\Û\íóŒK’p2\0¯e\æ\Øku</©TZ\ØÁ–)nu9 Œ•\å` d\çŞ™{kq`c[¸ü¦‘w*±#\é\Ûñ«—Wo’\ê\Ò\ác%·+eeÏ¸wªwV\Z\ä\ë-\Å\Â\È;L“#ü+È–!J¥\Ó\\¬õ¡$’O{·SK\Ô>b\ÛXdPI¸\È÷®‹¢Î–\Î@öP3´\n—x¬ı:Aö(Á\ÏË‘Æ¬ùxÿ\0\ëQq\Z6rc¿­X\Íf\Ø\Ëó¸\Ï`jÑ•F2{\â˜\Ë\× şu®“)O<€k\0\È;t÷«\Ğ\Íû„\ç \ÆhD\Ì?ıt\ï6¨y¹\äq\ëKöŠ.#\Ä<–W\áE´O[’>f\';³ôÏµrù5¿\â1k\ZzLşB°¬¥²H\î‹>\â0¢ÖŠœSµ\Ù\ÒMl7?\äVÖ«f,t\Ûr&ve\Ã(}¡[¯÷y g\Ğbª\é\Ñ.§­Á+Å¶+q½‘Á\ïõ$\n¿«½ÔºL\çQp\Ò-\Ğh0\Â÷¯\×õ¬j\İI(«¤mM¦®Ş¦?oÿ\0>¬~³\è)¦hNG\Ù`ƒ#ÿ\0*¾}\åG\áB¿fS\å\êÍ‹;\Ñ,\È§ª’T\ÈP\ä|¹\ÎK~>ı:\Ô7\ZŒ\"d[H#HT`”\Êùø\'\åÏ§5A%e†H€d*NO§?Ö›±ˆ\'i\Æ2N3IBM\ì&\ámYr\æas2¹Ô¨\Ë\ã\ïQ\\<ù>ds(FXœw\àÿ\0ŸJ†#¼Œ(g;GÊµuD·º“MŠş²E\å‚\ÛÁûgõÉ©mÅ«6•\ì\ÉtK\ËË©™`¶T@\0’\âF<\ã§ÔŸj\é†S€8<ô\ÎNµ^\ÖK8aX-¦„\"Œ×ƒMgkz\ÒÙ©‚¦\à™¿\çŸÿ\0_½b\ê9;$h©¥©_Z¸³¶¤6ñ5\Ñ;‹Œü¾ıy\'šÉŠI®g˜2H{€3øš¬7LK\r\Ò19b\êA#C>\ĞJÊ§%q‚+¦%\Ü\ÊT\â÷\'{\ë\È\î^‚Æ \0?ËµK¦M-\ÅøG.\àN\âz{~5½Œ·Wƒj\ãz…\nN:}kF;½69`–4c½˜Àõ¨u\ï¹\ÉYò\êo8ÿ\0‰e\Äíœ¬­\Zó\Ø ?I®+;ù\êO$õ\Í^½Ô¦µ(’G#3Œ.\ß\çTÎ§rH0\Åp¿W\áO\Ú+XQ§4\ïc@\ÂZ±+\Ê\ÈH\ÏW\Ô\Ömü\Í±+®\İ\Ê\ÜdgµQûmóœ˜S>®Âq¨g\"X\Ó\ØsÎ©TIh”Û¹f\ÊY\ÃùP¦C\Ëm\Î*S\ÓB²_]yI#LK(Bnn]˜Ÿ\ï•\ç­!Û€\åpY³XJm»\ìC¢\ï\Òæ¬º¸\Êa¥\í…k8„3\æA\äFyW$\Ó<Å’À³1\áP`^´\Ül\Î\æD=6¨\Ü\ÃüşFv\êJ¡ú’¹dÌŠo\İ!\Ç\ä)§sŒ…`I$ŒÒ¦µÓ§¸EØ£<5j=4D›^\Ñ\'|\çyp¿\äV‘\Å$\ís9¸\ÇKÜ¡,ıqŒ\ã\0‚Oÿ\0ª­\\H\"€1Û·8\È \í÷\ãÒ¬\Ã`\ÈIo-9Êª\íüi\Òi\É$f6#a9À\â·X¤Ş¬æ“„š)[\Ú\İ\Ã ó·l!A\àşU^gdù”\É3\ßü\æ·.ú\Ö\'Ü\åUe’\Ò\Ùö¬+$Fv>rÆ­bn\Ì\Òm\Ù\ê@\Â?™A|d2ô§|²i\å\Û\í9RÀÛœ}3R\Éj\Îb>\\‹¸\ç\0—\ë\Ç\áNû:e‹A)1@\İ\Ç\ëT±)\Z*qFl–³&Õƒ!\ç\'Æ£¨]#‘ñ+°Âs“Š\í4]\Ê÷J¸º¹‰Ä¤rƒ¹*=\Ï~¸«7ğö\å<ú\Ë[\İ`Kùe\ë€3Œ\çò£\ë/¡\Ñ\Z7W3-l-mt/I]¢Ic¶Wa\Ä}\îl“j\çn#û;\"ÿ\0yŒg9­\É.›\ìvVğ\îŠ\âğ\Î%€\Ç^§\ã\\Ş§$\é~cfRb„d\Óş™¬h:²“rwFµhÓ”³ß©§g¦ı²\ê\Ö%-º\à\Ça\ßô­\ê\Ğ\Ü\Ûi\Út\"\ãl_fó\äŒ\åIópq\×\å¯­[±²†\çÁ\Ü<şU\ÈEòŒ30g\Èzƒ8 \ÕÜµà¸º¸B\n¨§<(Q¦+–¤\å;Å½6Š§’\Ñ\Ûñ2\âO:dŒ¥\Æq[vw\İ±|²\0\ì\r\İø\Õ\Ì\é—PC«Y\È\É#¢LŒFó\È§>½+n\æ\æ-\æuL\ØÊœ\è9õ\äUQ«*\r\É;+øªj¥;J÷¾†§\Ú=½Io\':!1Á \â±ô\Ée’iI`HQŒ®s\Ø~˜­\ÛY¥2fù\0\Î\0?¥h³z\ÍòGVûœ°\Ëee6´$··H\Æ0@TJ:ş]ÿ\0Æ¹¤\ÑOVù7‚3LöWr. =`o\ÂN¿¥S¿–À•ó­\ZC\Èl~•\Ë^¶!\Â\Õ²\ìtB&©\ZT£¡«O(\ê|X&vÛ˜\É\ì\Ï\åYÚ•õ…‘E)3»Œ€1ù×œ½÷¢=:X¥¨´\î‡K0\æ IG\Úb\'»Æ¬ı\ŞT¦m¤dA¨M„!\Ã,\ÒeH j“KCO¬Áµt\Õü3·>÷\\T`( `u¨\ä™PcÔŸJo›ƒ×jgM¢ú#¶\";Â§®H\\ô$zûv­¾2J‚7xİ‘ıEE>‹w%Ä’ @’p3\ÍNšM×“´Æ¿0ÁAş5\ß*Š\Ê\ÌòfÒ“³,\Ø[\Ú\Ëó\ê3VwU{{y\â$†NA?ÊŸÓ¨#ğ®ŠsN(„\Ó-ZÉ‰3Ê´÷¹;ÂƒÕ†A\í\Çÿ\0ZªBÿ\0¾üT’\É\å¸\ã#$:Vu\ÛIXR¿BH\å(Y	$Ÿ~jkmNA\Ş	V †\ìs\ÓğªÏ“&Ye,8\ã\êC„\Î2r}\ë›\ÛK]uf¸{Jv’½\Ëÿ\0Ú¯\İó¥ş\Öoùæ¿f;¯İœsšM\æk>\çw±‡cv\ëMŠ\ço\Ú#b‘–+Š¦l4˜¾û[®?½8ÿ\0\Z\Ç{`}{b?\à{ÿ\0•>;+\0›\ÛP‰S;AXˆÉªNV\ÖLò½”Vòû‘§Î‘krC\Äe\'h1\İx\ëÒ“\Ä©¶H\ËmùÁ\'\ÏZ£\è\Öò+™®\'‘X0+=ªjñ®lO\Şl1şM\\kJ6Š¿«%\Ú6Q¿©šZ\Ædši%™Tcc \0gÓšf¥umpŠÀbPÛ²„)>\ßJ­˜µ“Ÿ¼ÀT^hU[\Óp\Î*ı¬õM\è	»\Ş\â\Éš4\ÌŒñŞµ%\Õ\ç–‹b*2•8õ¥\Ó,\í/ q9BH\Ú\0«O‡n\Ä=\Ã; dÿ\0!V±Q\ÒL§>gµ\Ú2¬#x§my€’¸\äô÷­‹­:Yl,\"X]¥BÁ\ÆÜ‘\ÓùóO2h¶\ÛIR”0[“ƒS[j¶r9Kx&Â©b|¼p>¦°\"m\Ş+B\Ô\å\Òùdµ¿Z2eÁ\Î3\è}G·J\Ç\×\áŠ(\")+\ÆU@\Ï\Õb\ÛW´”L\Ğ[J©\ïb#?­T¼\Õm.€e<NF\écò5T\ë%¼u)Ê¤´\åv2\ìn¤Ó£’;r¸\å‹\Ód—\í†\âl€\ÄdŸAZ·cj\á³71P\Ù2ğ3Y÷\ZˆÁX­­Ğ\Çó5¯\ÖI$„Û½¾ó[ûJÁ1²\Ş\åñ·9!sƒ“\ë×Šu¾£)IcƒNóRU*\ÂY	\àœö\ÇÒ³­õhÎŸ¹/af¦vûqA½–P_Ë†\à~ó`?€®v\ßc¡º‹[$h^\Û\êz›\Æó\ÃB5Ú 6\0­Sm;\Ëÿ\0]yi®dÉ¨e¶‰­\Ä\é¼uV/!¥0%ª}\Ó+¹_\æi)>\ä^o\í}\È|qF\ælI½!Måƒ»\éP}¦.‰1ÿ\0jOğ0¼hOú,L†\Ó\æùü\0«MeÀ(\nz¬K\êió4\'r½¼W³I›kv#.søµXM\än{™ „±\Îd ÿ\0.•NigrV\âı˜ƒ‚Œøü¸¨6ÛO˜\ç\×h_\æMo©<\ì\Ë2\ÛÄ\"{\èŸq\Æ\"¿­\Û}&\Ú\ÛşY«0\èH\Î+·\É?¸³óOmÛŸ–+¨\Ñ\Ò\ç\ìa.\í\Û~\â\Å\Ü\ã©\éjÊ¬¬·0\Ä)$¬\Æ\\\İAl£Ï•S=9\ÍR—R¨ƒ<fƒ\"\ímû}½\ë^]\Î\æ@òBY‡Oœÿ\0,\Ó%\Òaw°¡q—À:OS*	]İ²;«‹ø\Ò{*\Ò>d&L–S\Ó \äƒ\ÓÒ¡\Z-\ÌAD\×\êY[q9o˜zV šú\"6\\2\íP1ôMª\ê@ù\Ó\Ü1 m\Ü\ê§úW¡O‡J\Î-ŠU/²K\äc¥“j$«€ÿ\0ª­>m¦\ÍY#œ°Ü¯\ÜG\Ôv5<º\ÜĞˆ¤˜²1µGò\\c{óK‰¥(~\í4Ë¡Zj\Ít\äd™ıyMµ?öm¾1‡ú\îªQ\ï¶|˜˜©\0pyıj\í7~İ€\îCW”\êToF[\Â\Ê?d½ad–ó¹„,¹*\Ìq\Ï\âq‘øÖ…Æ•­¦\ÜI±’Yvqµ‚ª€ô\çó±ª€H„M‚Ë‚G\Ğö«v\Úú\Å	O´8Â™W\îşC‘]¸lR„m;ß¹p÷+FE•…\Í\Äo9xò¹Ã±÷®r\ãE½—\Ä:”O	#Ø‚G\0(şÖº8Î¤†_³\ë\á®^@ª\æ?_Êi—/r÷2j2I<‹µ\ä%‡§Òº>¯Ë­\Â3Œ/e¹Ÿ\á{h\åÑ»\Ê\ì \Ğuş´x\Ú(´INöùˆœb´SIH€øÀ*Cc¡IdC\ÉW¼÷‰n§=ô½\ìdœTù¬yİ¬H.l›\'Qœœÿ\0wö\"H´\Ù\æd€0*\×\Ømqk\0úF´yq¯\İEAŠuq.mr\èUJŠm;lb\ØX\Ü\ÙH\æuv‚vy­KY˜ıÚ˜ŸB*2H9{b¦[MIô6†3–Í¯™k=O§\éU/_\îg¸#š_5ÿ\0ıb¡¸\İ8Qœmö\ë]•±œ\ZOR¨\â!¦\Ù]\Üuık\Ä$y\Ö\Ävqõ­Ç·“Ÿp99\ã‘ylº\Ìp\Ãq\èÁ,A\'òõ5\ÏF\É\Ü\í–\"”\â\ì\Ét«\à·lz¡?\Ëú\Õ\ã/a×¯A4\ÜobVS‘r*ñÓ¥#‰\à\'(Ÿ#wLQ\ÅSJÌ­+’’1·~Ÿ\ài’\Èc°…R7\Ü\ã¥[O™1HJñ•ƒUnVQfñª¶[<\×\'8¥®qª¶–\ê\äğ\Ì\ŞJo|’¼“\Îi~\ĞÀ`*Z0ƒ+(\0«pG\×Ş2µ\åG¡\Ë	-“7\ì\î%hRB<Š˜\İJ1û\ÂG¸³´\é\ÙGª±ÇµLe¬ud<-&–¹n9>Ñ•˜ \\sÀ\Õi,e.J4[I\ày•\ä\àÒ¾\îŒv\r\ëG¼–ú²ÁË›\İzöü*~Œ*˜¥·Á™J†\àdõ©Œ\İp0jXn°\ç(¤c<Ğ®µ&\ê\ÒjV\Ø\Ê2{Ñ¾¶ŒĞ‘óZ\Â\ß@)<\ËOùò‹ò\\şF\ë)k\Ê\Ì–‰ÿ\0/.\ßõ\ÎıqO3Bğ¤¥\Ë\0Å;W$ñ\ï\éP™# cşü¿\à(\ã!‹\0\ç\Ô\Ö\ì=ä®®i‰V\ÊÔº\Åõ\\\ê	\ÏÖ¨¥à½º\â\0N<¼v©/|×²\Ê\Ã1\ÜÀ\åj¤vW±Fó=¤\ëBÈ¬\ã³}O>Í·}\Ä{\İ\ê“n£¨1P›–\ìT}\åU‰!°r¡f\Î\Â\âúB‘¨FI=‡\áZY%vh©¾‰Œ2±\ê\ÄıM_µ·²6±\Éuu\"3\äˆ\Ò\"\Ç\Ç_Â¢‡N¶–t‡\íŒ\îÍ´ $~gjG³\Ä0Gö·ò—\Ë \\òOõ4Ÿ‘¥8´\ïªùî²¼¹†%ûcjHU\éõ©,¥°7E½µÑ‘ƒ!gp;sPÁu¦[:È°\Ş<¨r3ƒN±š\ÓÌš\â+)‰w\äÏ’•c{ó0\Ñygn$K{	°\ãkŸ†j³\Ş(û¶v\ëşû;ÿ\0QRµ\å¸ÿ\0W§/\ÖY\Ë~‚š5œ\â\í¢ô@	ü\Îi¯O¼9t\Ùüİ†n\îœM\Ç\\\0\à~9¬‹QûS–³˜)$©”c\êk K}j÷ö\×S\ï°~˜©¢ğ~¡1Ì«\ng¼¸\ÕFª†\í	\É-\Ú_;œ•­»\År\É\"\á×‚õ¹q„{p¹ÀPG\ç]%‡ƒ-\í\æ2İ²\Ì\Är£*\äkz\Ş\Æ\Ú\Ìb\ŞAŒp3ü\ë:¸¨6­«%b”V¹\Çk-Áù\ÌÜ€_À\ÕB4šSˆa}×¢<1HAx£b:PqN\n\0€b°X›+$Dñi»\Ø\áb\Ñui~\ì\Æ=IÕ¨ü#u)\âhTû’\æºú1Rñ{Y¼Lº$~\Û\Âv‘gw›Ã£ô­´«+õv©õÛŸ\çWé˜¬\İI=Ù”ªN[¶GŒ \â“&)1Qs2\å’^\Ã\å»Ê‹œş\í¶æ²µ)m¬\íö\ÜmHp2¶3õ>Õ·s7Ù iv4…z*ƒ“ù\n\ão¦–ú\æIfW‚1Œ‡,\Û!]y¥\×DoCš÷[u:{\Èn!FNR¤k^™âŒ³ª !I\Î55œ–\Ñ\é25È‰I•OúwşU™}r·S©[v–~	Ç°<WE5\ïlz\npğ·™)Õ®\Ê\æ =Ê§_Î­i·\Ë\æ‘\ä §8¬\ÉbW­ •\ÕWs3\à=p;~ur\ËlP\ÈËŒ“š\Òp²zF4¢Ó“:²ô\ÂõŠ5\Çñ†úŒ\Õi|G5¼\Å&·GC)+‘\\jŒ\Çc©¦ù#““Ö˜vœñ\É8¬XüOlü<S!ö\ÃV”:dgŠ%Ğ¯m¨ó~Ÿ­5#P~\ã0^N)¥ø\"¬Y¿2}&\ÚFs\ÃÓši+‹\È\á@Nª\Ã ‡İŸÎ¶\Â‰‡\ÔP\áH\0€qÓ”\ÇD9\Êzû\Ôh÷G²\ë·fIöˆIñ8¦\È\è±t\nK\0\n‚XU\ÑS?t`\Z\Ê\×\í’=V\\’0û\Ü\Õ\Æ	\É+\îa,Ö·Ğ–ó\Ävvù–\Ç÷8_\Ìÿ\0L\Ö\çˆ/.IUq6\Æ1ŸÇ¯ò¬¢O\å\Å@ H\Ï f½\nt!8ĞŒUŞ§E¢\Ü\Ê`0>\íË’	\ã\ëøµ©\çH\0\å¹÷®wM½	w™\ÊÀ±R\0zv\ë\éZ\"úK\ë£2\îŠ\á#\ë\Ç\×\Ôzv¥VŒrOĞ¨SŒ\ä \ãn­”µû©M\ÊÇ½¼¢€\í\ÎrÂ³\ì¦h§«\Î=ıuk\\ \İFA\Îcúw5Z\Ö\ÖyAx\ã;q\Ä\ã4â’‚L×–İ–ˆé£•dEu?+ƒFG©¬ı6;´\ß	·v\0n\ãò©\äw\ï£/\Ô\\\Î6vL\İ:R\ÖÉ²\É|`\ädò0i<\ç\è$a85H\ÜZh¸‰Çµ5:4ŸC\n9Œsrxn¹«ˆY\ÈU™œ\ÖuÀ>aÀ8‚@«º-\Èğ)b0\nAÇµuIitJ••‘\×\Ø\è0.$e•\æ‚\Û\ÜÓ¤\Ò}\Ù\Ï\â´Ï´N‡W\Ç\×4¿n˜pX¨¼ö\æ\İ\îr\É\âc¯™^\âÍ­”1u`N8\ÅW&´wı´\æe@9\È\ãù\ÓN”Üœ¨\ÍRš_µ,RJ\Õ]™ŸšX\Îğ«gI˜tu?˜¨e²š$.B•^I5jQ{3uˆ¦İ®†\åp\Ùb\è\0\ëI¾ /F\ïzv5V;ô=6•²‡>¬7:·1D1Hƒı•”““Ò“\'\Ôÿ\0*\àsovxm\î\î)-\ê:§¨–ûÇ–¤1°UQ’r1Vğ=?>iqøRR³¸FVi]ıŸsw~R;y\Ùw…fX\ÉÀ\éúWge¡\Åe!{x\î\Ù\È\Æ\é\n ?…oóÜŸÎ›[\Ï\å¢V:\'Š›w‡7g\áY-\îRsp»Ñ·Œ\ÒE\á7yp¹\r¸\Îk¥¢£\ÛÏ¹?Yªúœ­Ç…^\"XnI\Ï\Êp/ÿ\0]6\ßH”†X-$\n\ÃkŸÎº\êOóšX•‰öóz¶\Ì\Ë/\ÙC3[,’õ%\ÆqøV”p\Å\Ä1\"ı\Õ“õı\r(qôú\Önm»¶K“–\î\âó\ïETˆ)1KE\0&)1N¤ ¦Ó©´))h C+÷Ä\Ï´1S‚\ï&Aş5\Ğ\ÔR\Å\ÜM\Z\ÉşøùÖi=UÊƒŠw’º9\Õu;Óµ\'“øm\Óo\ë\×õªòh·ó°‘ y9ù”É—?Ÿz\í¶(B®\Ñ\ĞŠ\\ÀÕª¯o…$oõ„¾¤sqé’=\Ğ\é\ÅCû¡q\É\ç¹õúU„Ò­„{^\ÙPwP?¯ZÛ¤5´·\Ø\Êu§%«2ãµ·ˆb8cQ\ß\å\Îi\â(À*#@§¨\n^1)\ê£ğ¨Íºö$~´½£z¶ev\Êf\Ú\0S\Æ1Yz¾“jmL¡]H\0†õú\Öñ·aĞƒúU[\ë9n-Z1ò’A\ÜF@\ÇÒ®Ö¦´ªII]\és„šÙ­òIO\Õ[¿ú,<ó±xü+&XRB\ÑH‚“†ğ\àúV„R ‰0ùT]u\Ò=ªi-V\Ä\å\êk7ù\ß\éU	©m¤Ã·Ò°’\Ğ\Ù=M\rô\Òõ¾22¸\æ²|A,±\Ù\ÄĞ»#y¸\Ê†¦\æiR²¹²d¬\İyó£\Î?\İ?øğ¬+]bøË€27€j{V[«I ‘0Xdc½m\Z.2O±“¨¤š1jkh\ã–C\ç\ÚH^ô\éR6\Ú;õ=\él¿\Ö7¸®\Æ\î™\È\âŞ‰š\Öö\ÖwO©\'\ï:ƒ\é\Ü\×Go¢\é‚‘\Î\Ù\ÎI\\ˆ%e8`r\í]2%\Ì	*ôa\Èô5\ÉU=,İˆXz·¼fO	\ÚM:\Ë$²¸Q€¸ÿ\0\ëÕ±¡\Ûe8\ã\0Ê³†\ä\ÉVeˆ8§‹\ë”\é+ı	\Ïó¬;\êeR…f\Óz›[¥´{!P«œzÒ¾}\È÷æ²†­8\á¶¨\Æ*p\Õs÷¡\Çû­YòKs–T¦®\ÚØ³-´\ç|7\ÕEQ—I³|ÿ\0£¨ÿ\0t‘üª\íP\ËõşTŸj…úH¿Î©s.\ä©N=Z*Ç¥Y\Â\n¤|g\'$óJmm\Ğ°B†\Ú2*\Îğ~\î\Ğ\æšrr8\éj¹¤÷d)\ÉJí”‹\ÔE\é\ïm(\é´ı\rDñ\Î\0R´€9\Åh­\Ü÷–\"œº \ŞsÖ‚\ä\ã±œT9`ü‚>£ª°:t\æù­vYK‰2Y÷\04©xòH\"™\Ûc®aT‰¦y˜`}h\äL\ÂXHj\Ö\æ\ÉÓ¬\äû­ÿ\0|\Éş4c\Ûÿ\0~O\ÌU!.<ŒóK\æ\'÷G,»œ\îxõghzšm8õ4\Ú\à8‚Š(¦EPEPEPEPŒ‡úÓ·úÊ™Er@A\èsE3üú\Z\\·\×\ë\Å\\u%\Ç\Ó\ëKL\Óiô”mQ@„¦Ó¨ \ZJu%E-%0Š¥{¬\Ø\Ø³N\ZOù\å\Üß\éø\â±n¼Iw6V\Ö5µCüOó¹şƒõ­cFR\èi\n3ŸÂi¢¶Œ\Éq*Eş\'8®SX¼‹R“m´—³©<);b?E\êßS\Ú÷S\îo6\æsüNwş°­{\r*h\çy\ÙSa\ÈA\É?\áú\Öñ„ik}N¥B4W4Ş½Œ nT¥F\núRñ\Æ}y=qO¹ÿ\0„\àuóıj\'\È$‚­·\Ôï‹¼S ½2$e\à‘”¡\ê2?\Ï56‡{=\ÅÔ‰#\ï<ŒqL89¡\àŠÉ=´\ÇieÁ\á\Æj\ÒRMn-3³\Íeøƒ=}¥\È\Õ-#Q¹–ñb’ft*N•«{l·°™™Wpb@ôÿ\0=kg5sG.x»¼\ëÒµ\ì-b¹\ÚEl«`08\íO\Ô\í¡·\Ò]!@ 2“§õ—gq,D„‘•H\Î\ã?\ã]\çM­W¸\Òz—\ï´ÔŠ\ÖIFùFv‘Ö³­\ÖŒ`\Õ\Ù/e–‰\Ø2°Á\È\ÅW\0`z\nqºM0’M¦‡\äõ\íWô«¯.C•ù_cÿ\0\×ş•™¾\ä0 \àƒ}(qº°\â\ì\îuJaz«\rÈ¸…_¹CO\Şk›–\Ú\Şú’¦—÷¦fšr\08\àô>´ùD\ìôc‹\Ó	b‡º¯\'Ú˜^˜M4‰p‹\İy¸9\ÇZQ{*cÃÆ«¦§Ê™ƒ\ÃSwº/NP2[0©“UlQNFx8¬‚i›<uS\Ğÿ\0õ¨öiô1–\rhnGqı£ûˆĞ‡a¸1<S$\Ón“şY†ÿ\0tƒTô‹Ák<\Ïòò¸úö­§Õ–4\İ\"¹\ÆPæ²’pvŠ\Ğ\ÅJ¦òA]\Ò\Ã<z\ÕMUwü½t\é}€X\È8ÿ\0\n\Û\Ë\Ô\Æ\Ş\Î3üéªn‡õ\Ù-%KŒ0\í\È\Ï5kûNOù\åoÿ\0~…Q¹\Äw2 \Æˆ¨÷\Z\Ö;‚´\Õ\ÏH \ä\Ò`\ÑEy\'‚4`\ÑE\04`\ÑE\04`\ÑE\04`\ÑE\04`\ÑE\04`\ÑE\04`\àÀdŸJ(§\ÔhÈ“\Ä\Úlw‚\Õ^I$\'\rµùÿ\0JÔ†Eš1$-”=1üè¢·­MA+ZXt’£2Iò¢ğ[®)\ÅÒŠ+Á\ĞL\Z0h¢„\Ú})0h¢€ƒI°ó\ì2h¢š\Ü]L+\ß\ÛC#Ck\\\Ê?À£ñ<şB°\ï5[ûì‰§1\Æz\Å\Ê?\Ô\ÑEzP¥\Ú\Èôğ”!5\Í$W¶·id[F7p?l\Ûh\0a®¤,¸‡óÿ\0õQEEYµ±8Ê³¤ùa±§)\nm†5Eô©0h¢¹ny\×m\êe\ëq(·G¡\Ë\à°\'ƒXfŠ+®—\Âz\ØO\áü\ÆL&Š+dn>\Î4Š\êˆQ»p•±\ÍVuw.\Å\\Ä¶_¨şurOlbŠ+Z?	O‰f“4QZ4\0Nq\Ød\ÑE\0_Ò¿\Õ\Ëşğ«\Ü\ÑEs\Ïvo\r†“M$\ÑE$1™9ük:\ŞöY•Â¼\äQEh–Œ\ÎOTO\æúƒI¼\Z(¡\Ø\ÂM0š(¦€t$ùŸQW£Gx&!€U\0²ÿ\0şª(¤÷\\¼ \Æ7dûÓ’úP\åˆøO¢Š†¥B›oB»»H\å˜üÇ“Ú¤\ìÀ½}è¢­\"–ˆÿ\Ù',1.00,1.00,6,'2020-10-12'),(9,'Coca Lata',1,'Bebida Refrescante',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0C\0															\r\r%\Z%))%756\Z*2>-)0;!ÿ\Û\0C	,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,ÿÀ\0\0\Ì\0™\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0K\0\0\0\0!1\"AQaq‘¡2BR±#r’Á\Ñ\áğ$3b4STs‚¢ñCDc\Â\Ò%t“£²³ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\05\0\0\0\0\0\0\0!1AQa\"q‘¡±Á#\Ñğ2B\á$ñr²\Âÿ\Ú\0\0\0?\0õº\åv¹^^_Wœk?F\îã¹¼KkG’\æ’x{¸*¹\ÉS„V\çR\Õ,ô\ÈD“’]²\"‰>ÛŸ\áY)~”\ë“\Ív\ĞÁšDŠ$Û¹‹HÁ>\ß*Zi#kiºh\ä¹{FH=*Õ¬`šVŠE˜L#pA!”#ğöÖK¸\ì®Sq\îL½›\Ğ Ÿ\ëÆ³ú–¨‘\\<(\Ò\ß\ß@Z¥·‹0¤’#ö\'\ĞVr\ãT\Õ\æ–HÂˆÂ¨}³I#\á	\Ç=«L†9&v|µoa/`{\í>?ñ.\í”ù4¨\Ã5IÕ´ÿ\0Œƒ\ÜIü…x\áº\ÔÔ®ù‘w(a²$SĞ‚\Ùü\êBöó8k‰=P~KP°ñOŸQ\Ñ{\Õt“\Ò\î/ù¿…Z·ú{ı›˜Oü@~u\ã«{p:Nÿ\0?º¯MRùO\ßGÿ\0M\ì\æ¡ú\Z‹\ØVX›\ì\É~«)üJ¼\rsTŒ³\Â\ŞDG\ä\Ô|Jµyu\ë›y8ı‡ş5\Ş\ÉĞ®\ZJ†\ê\Õ\é5õc\íş—I\"\ŞBY\ì“Ÿ,wÊµv\×\İC\Ä-º)Wrœ}„\Z\áK+y¡^\Â\ÒY\ZY“{78bv/°QU\Úğ$h¼‡ú§A\Ì\ÕgN°\'qˆƒÔ\ì?}X\ÏûBhô‹Xby®.ğ\Ë`]6$¾\ÅM¤¸\Ú\ê$\áÈµ¸\ãmgV–1µ\í\ÉFÊ’Ghq\ÏJ–\Ôü_1C=­\ë1ampFzˆ¤?º»õ\rKı’\çÿ\0¶ÿ\0Â‰Œ\\¡–q_¥h\íN\Ò\Èm,$¸cˆ\í\â;¥vıQ\Íf%úP—w	\ÒOij[˜c}Á|\ÙÀ\İğ\Ö\Æó\èm©gµ¼´\í[\íK,Œe>Ö“šP	£HSe¬÷Ÿ û¡¢\Ñu\rRğ_j\àGAK`r\ÛGD8\è<ù¡5{U-P@½œsoQ…‰S%\äÀ?¬Öœj\Ú1ö˜\ë‘*\Ò_¤1Nö6¶»\âñv™À;nQŸ#ö°P\'¦3STÓ¾IC[\áÀ,\ì®òKpö¿\İ\àm\ĞBAØ„mA\ã `ŸZAwµ³´q\Ë03K+$•üY\ØóŸwºµR­¤R¬—wEE.Š\ÒH2KO\0•–´º¶:‚ö’¦]%7¬VV9\Æz\í¡\Î\ã`\Î%i¢`†HÀ\Zs²\å¤bò\Ú\ê~šÜ‰\í÷¼Pƒ\àHùüU3I$’y\'®}i\íœó&¡,7—\åH‚[t¨\Òn\Èls\Ğq9¥(7s\Ä\êñ%\Ä\ë*§-$`7¯‘ğ4§k)X\Ó;\Ømcb9g\Èå¯ª®!4®#…w»!r2v‚N3R\ÊYXe8`\Ã\"5- «jÁfU\Ø$s•\É`Fx\É\ÏÊœ*öF¶½`¹Š/hÀøl—¾¿:a­/o\"¹QQ¸›@›j5\á\Å-eUH\\8&E%—¡_\åT¹a\âiÌ–7 h»µ\\\íL…¸‡<“ş‡§=Œ›\Ö\ÈGwrE\ÎC\n	Z\í4\Ò\Å(¸7üÓ¡\è~—M¬7öIÅ¿FV9B‘¼öd‚\ÜdŠg$ú–›kIy:¤Q0FV(0]8\ÈøŠ\ËiW-iv#“*“\â&1µó\Ü\'?}i\Ô\ãM:Y»\'Š\â\Ù\ÒL‘›W/>ƒ”>]\Ó÷jÁ‡zÀ/š¨©ƒôÓ[v\êª\Øhw73\Ø[µË³JG,\Ç$i¦\ïZª\Ö\Ö\Ú\Ò\à6¤jg%ˆrO5~•p1\ÃRªe{^ò\æ‹ªwÚ¬I \áÖ”İ°/i†+¸¦ü3\í¦·?\áŸm$›©¡\ÊKˆÁcwA>x©şğ\n†;\Õ,R­%vˆ±L¡\Õ©\ä\n»\ê¶f \Ô÷ET54¬p\Û*”\à“\é\è+\áwpùÂ¯>B·N§y7µ•3«\âj¾\r&\ÖSh#™\\FrAöô¬\Ò\rf{‹‹¨vJ$$˜ğ®UI@…—œV\Æ[Ûˆô\ë\İ\È\0H·¹s^i¨1’\îV\î÷€\'\É%‰,\Ùñ5œÚ²<\Ë\Ùj~œºP4\É*•†÷8Ê’q¸’G¾†,@>\0\äpG¿­_(\ä{Iùš…¯\×.\âˆó=¤\ß\îĞ=ü}R·3e­™\Â8\Ëİ 	İ¬Ÿ^+{\ĞV\é\"Wu\Ûp²)ó\Ç_\ë\n®¢\Ôt\É\ÄÁ>Ù€Ü’<¤€ùøƒM5©\"\Ú0?¼/\éw\Z4\ç>§Ÿw­B\ÏV‚eú­øNø\Ø$p;9LH\0úş^&a:ª	Y\06]Õ¼º‡’	\\&¡`o	Oo×±\'ÉLg¡òüœ¶\Õ\à\í`“²¸Œl­± ñS\à\éU¾—5¬©q§2‚€\Å\ÏH\åT ù\ï¥\Óm&\Z…hC?esı\Şb2bu=Qº©ı\âˆ;7(8¶£\àhhxÿ\0\Å\Ş\Ç\ßV6º…ş,V÷Š\Å8=X/tmâ¾Ÿ•h\Ò\â\ÚbZ6H\İÃ²©…\Èc\Ær0=ie¥Õ†«Šh\ĞJ\ãóƒø¢n¿¿ó¢d±†+)ãŒ¹\Ø^xÌ‡v\Æ\Î–4f—\Ù\Ì%$1:F\ïK‹\Ødz¤7R\Ä\0]Š\ÌcV\r‚[\ãœS=N\áis¡\ÃÈ’ƒŒ«*=œšC9r\é»ˆg¡\àŠc¨¾\ë]œ\æÕ˜û@EıÔ­;\ì\â7?\Ú\ĞmTÅ–Y%\êÿ\0G\ï^ÿ\0I°¸w/#GµÙ€•b¼\âš\Ög\èQ\'B¶?\çqÿ\015¦« ±346G\Íuş¿÷RI¼s\ÓÆ]ŸÑ\ÖıÕŸ\Ô#’[k¨£\Æù\"t\\ô†9¤\êaz5ec• Œõò«))\Óõç·’\Şa¶9Vi«#2öl¡G\0\Èõ£q¨ÿ\0«OÛ 4j™\n¸ ^§“L`‰<©‚\Ş\áÀ!x\ÏZkonÑ‘	­½D\àqX¸\é^ór‚\Õ\")¤jc\â\Ê+\Ìol\çõT~úõqOö>¢<\Ò }ªW”\ê87\r·;\Ê\ç ÁÀ¬\Ñv\'W\ÑşŒGš9ûQğ\äS]²†\ßSº³Ø“y\ÚM,”p§\Ä:QZz\Ëq§\ë0+Ğ˜\\\Êû¶.,\ĞO@<)(µW{Q·§\ÂM†W\î¸U\Ë$·g\æI{íƒ# ô(	8?ñ§GO¸+\Â\ĞÜ¢®X\Û>\æ„\á©,¼±ö\Ğ\Ú,\Óû\È\İ†]\ÉÍ£qhˆ‡ô°\rŒ{\ÉúûºSÈ¦Óµ(\å‰X6õ\Ù$Mİ”<u\ãÀŒ\Ò-&{›™u\í(\ZD‹$v8ş¾YŸK’P\Z\Î[9b9l¥fd~œ\Æş>\Ì\Zj7¹£=u$3Jw@‡‹E­Ÿ1{Ÿ¢a&‰u‰-$\íœª³•q\È\Ã}“ò¦I«¶ò0h¤|wU–,`\È1’\çœT./¯¬%,ñ%Å§\èÑp¯¡\0er¹Á\'ñ®Í®Y5¤\Ûc+£F¨\ê¡ApW,Àø{*dFÛ‹‘\Ñ’VN#s\ã\0‚_Pyxd³²\Ê}11ò¢\ï6zù`¹_Ù˜Š†[\Ø:ñù\n²\à\æ\ÏLÿ\0)¾_ÿ\0*·ï¥¢6i=Â¿«n)XzŸú•\êA\İ°m‡ˆ‘\Ï\Ç¨\Íyf‡/\ÒY4¸K&(“|O¸`´‘¾C©#<‚>¤\Òø\Õo\á{öK6\Ş&\É;\ÆGwh\Æ85rÀ\×6÷_=«.d\ÎËŠ\Ó]\âûM&›­7¼û)\ï¥uªê“šœJ‘öª\ÊF\Ó\ê‹+(¾±|lh»Àg¡\ÃU¶§ş\ÙiûÎ À\Ûf\à™ÀVª\Ú$Ç–:\n+²8\'\ÇÂ…k\Ëw+,\Ñ\Ær~\Ó\0*kª\é‡\ì\Ü\Âs\äÀ\Õ\Ó\Ş\\nªp‹·¼iZ=;ÿ\0ú-yTøg<\í# ?xø\Zõ?¤¶‰©´n¤”ˆ\ã*×•JAqŒõ\Ç$\çO^\ìÀ[?‡\Øq\ë\ì–\ÏÔ’\'9\ã0h½-¥şÎ½hyš\Ú\î;¾G\Ù\íd#È\Ô-\ÇBzÓš»CŸ\êó\Ø	p\É\Ğ6ISñ\ã\ßJ\Ä\ë+}¥\Â.Fv\çmG‚*\â>\ÉVöÅ™m\Ùr\nºİ¸\Ê><<¿¬†ı¤“>\ÕMB2¶Á…º‰~\Ómüc©óü™^%Î›+Oo´[Ë¸<§Oğ\İOç‡µj_i±J·Ib\étö*Mı\Û{)]\Ûnñ\éš#\0‚“{\İ$M–1‹‘\Z÷;\ß^y5µÔ¶×‘\Í	F\ÎFR0TúZ\ÄK;¥úõœV\ß[#)$É“ \Ş÷‡=yñ\ÈY\Ú\Ü^İ˜`\nX+H\ì\çj\"/Vc\åNmm\ïm¥\í,olg|a\áI±Ú\á²L\é\Ïó,d·…\Â^º6K›_g9\èq&£§\İ\ËÚƒ¾BİªJ7Er¤\ä\îğ Õ·E\ØAwj\Õ\'m†3\Ë[\Ê	\r.¸4ò\Û\Âm.\â\Üt’\Úğ\Ïù†Ê®º¶´‡N»‰cX¡Xœ¨´=\å\ÚOqŠ™‚\à\çp€İ¦Y#˜Zò@6Ğ\Í=l²D\ã\Ù\ç\Ó<ó×š”\Ç6¶Ÿ\åš\ì|V&ª\Øğ|ıq]\æ\İ”óü\âŒş\êMš´sş\æŸ\Í\nô£ºõ®“ \ÙFñ´·Ol.#N\0(Y—¼\Ş\ã\á[-3Qò\Ê\Ú\êY Gw”W?t\ä\ç#Æ¼jde\ZC*©¤\Û\"ŒğK3¹?:\'Jµ\Õu	ƒY\Å$‹;\Ì\àª\0\àS\áV,šùYa*©Àquøù/_»tuBŒ¬0NT‚>Tª~	¥En\Z\çO¹v\Ïv\é\ãÁ=6‘M\'ñ¥f~>\ÒY€\áIš\Ş\Ù\æ\Ş\Ö\êX°%°2y\Ï4Gaoş |.2İ‰\Ø,‹´9ÀÜ~9\æ¯\í\ï<\×ö£¡²öMIºf’Y\ZS»%d9ysZ»(´ûˆó6\êË€\ÊÈ¹\ÌqH`ú9ô–9.%–kRI\0“>\Â\Ôd:f¹–ó‚{7lˆª¡W$n\íÜ‚¬ee<¢\Ìp+~’iñA¥^\İ`Qb^\Íq°\î•G5\çd*¶{¹\äõnztğ¯@Ö—[}\'Wú\æ\Ş\Åms\×zº•\Æ8¯?›;\Çq3\Ó)©gd 9š+M‰c^	>\ÉtÁsÇ†:z\×cTX\Ê\ã¡\ïzf¾|–$¬IöI¨.N\ì“\ŞóëŠ9-h¾‹Gis\ä-o8\r*\Æ«‚;H\Ç†<|ş>\Ä\Z—-¡3G¹\íI\Î\î­|\Ó\Èÿ\0G€È’$‘oM›3’\ÙÀ:ya¨\Çwı\Şu\İ.Q\ãa…“ øù\è=Ä‚\Î\Õdë “gHeƒ6[Ë¯\æ\É6p–\×\Êd\â\Ñ\àv`\Ø#\'\Ë<o¥w¡\Ü#3Z\Ö3’#$	S\Ğgƒ\éW\Şhi\'\ém\Ç-qıR:~U\Û;û»5\×vÓ°E 3°\0é°‘‚1\ê}¾GY‚ÒŒ¹¨2W\Ô?BAw)m½\àsõ=MZH‘Š$§ı\"Õ\Çu$j«\Ëy\ígH¤b\Èq$,¬LrFz:d\ÕÚŒš}\Ä\Ëul\ì²JØ#*wc¢°\Êó\ãÏ¯G¹\Ñ\ZGvŸ<‹x˜‰]\Ê=~U\Ú%ºõN1Û–²[a x\Ä}|uJ˜\àûI®1Å¹\'¢Ü“\ÓÃ²üª.{\Ã\ßSÁkI7a2|3n\Ô ˜\æ½B\è\è\Ñu`yÎh \\!cd\Ş6†\ãœÕ‹¢ı\Ô=-–kME·\ÜÀ®H×€Ñ±\éì¯´­-b\Æ\Îû·U\"(\í\È\ÚI\İGœ*j>‡Ø¦IX²ò\n¨i¦\\°Y¹óXi\ÈŞ»â»¦5œƒR\Ò!3\Ş\É&\Ğ07]\Ì\0ó©\Ü}\ïe„ztBb\ÊYŸ$\Éô-\Éû~\Ã@—  \Û’\ÏF\Ò5\Î\Ğ:–\ÆU9\ç\ÔQİ\Ç\à¨¬cxÄ®z\äf®\Ø\ß\ë\åùW\æ\ÛT\Ùj\Ú`yT3&\ï²\0ó?Ê¬®U©o%St«]\Ã\èúªœ\Ğuá—šòy^zc¦3\á^›ª]E4:¢\ìe\ì\í%R\ã8e\"°ö\á- |\0Ì¬Xdg!<\Önj¦TL7\0‘\à¶\ß\rsO²\Î\É\Ô\ç8\É<uÁ\'ü8şURIó=y9\ãÖ®p#$xŒs‘\Çõü\à ò\â@\ÎX`œó“+\×\ÉiÀ\Ís~\ÖC‚v²8©\ÚCQz­Õ…\äv·ıÛ‚\î³)‘T(+’:#ùPƒ+,\'Ht  %‰\Ü2\0şº\Ó\ë\İ\Úé¤–Xf\É6c\ŞÄŠ9úæœ€Ó…gö¤\ÑE<n–\ã\\øp\Õ§\ër¦Ø¯Jƒe\\Wõ\àş~\Ú\Ò\Âö\×qn£š2@\ÃcÃ¼­\ÈøV>+o©\Ü<z…»˜\äRŠñõ\ÂH›¡õÂ®’)¬\ÕdF/¿\è÷±T+\è\Ş`Ÿ\ämó™“…\ÂB]™O;ƒ¡vÁ\à{ºÿ\0»\'\í£iÛªƒœ\")ÿ\0…X\nûT’\Ú\ËM’\İ#3G\Ø\ÛÆ \Ìóó4€jº²¢\îlt\É\Ø[Œ\Ã43µ\ÅÌŒ\Î\ï#\ígv‘‹0D%˜ƒ÷úÔRÀ\Ò\ÜÊŒ[&£x\×T\Ëv´\Ş\×\'\×D3œ¸ö~B‰Q›	˜Œ\à?»µ\ãœ\Ñj?ùL\Í\âu5\0û-‰ 7\Ù\\Nmnğ½ƒ\è‚\íú?¥\ç\ÄN\ßœóO«¢\ê\Ëmamo\Z¨@÷\æ\ç{÷·­\ÚÛ–&IP2‹Ê|H£şº(\Ùbs	4n2»¼¦—¤n\\x-\"¼‘$f8\0uÁ?\09¢ÿ\0´\Ò\ç¼TE.–Q;¼g\î€W\Ô\Õumlm±\Öü¸)\Â\Ã~\ä°\\Jïˆ£ ~9xø(\æ®\Í\ßú\Äı\çW\ÇdK¿\åD}Dş?•\Z6<Œ‚{Bš•»¨$0o.?:\Õ#\É\n`\ã,\ÜV;›\ädT‘˜Œ4\è8Ú¡\ç‰4I\êj>HõU\Â6_5\ËÉ³®\ÌÀöİ‚\Ù\È\'*ÃŸug®wÉ§ä”BNz\ÏJu¨E\ÙE$j…U­\ç\ÎNIfŒM.¿UŠ\Æ\ä\ä1õŸ\í\É:\â?ùZİ\à	˜÷X¦pˆûÇŒø\àŸ\n€\'¾s×\"G¯5\'löj1’\ç\ÃMA<\0a±ŸNN*\Ì®´…\Ç´\Èc–‡-\Ç \Éë´>\Ò\æ+†aª\éR6e@óF¸;öõ\î	ğa\é\Å(nWŒ–ÁŒ\ä\ä\íÀÇ·\çGZ¶«¥eæ¶Ú±\r*‚¬PŸ½\İ\'\Ï?ôj˜\åc¢¤\Ú\ÑÜ¶F‹K\ä9#­5k+\Õú½\ìi?uƒó‘\êzoÆ‹L‚%š \Î\Ös)\İŒíw#\ç9§ş(G°ÓµD6\î\Û’1\Ã}™PãŸ¢,mõKa-¼®ˆŒövnO@ŒÇ§ÎŸ\Ä1õY™bq§~Å‡\Ôu>‹;wnm.&›=›wX\ànC‚¬|¸4L°=2`ú„˜~x€uOy Ÿ\å\\hnn5T†\é‹L÷!faÀÚ£$Œx`qL>‘«\í±/pv¨H\èm`?<{)f\Æ,÷\núJ’d‚—fm\Æ\Ã/\è³LOxz\æ˜(Æˆñ\ê‡õa\ÛK\Î3MŠ•\Ğt\ãñ/\Ş@<òd}\Õ\ÆG¹1V\ën\Ç7t\ê\Öı£¶µ·2\0*œIc“\×Æš,f(ƒ\Ú\Ê{P8\Øİ€’+0G< R\ÈøÁ9%”c\"™i\Ò_]\İ\Ãn¤€4¤¯)\Z}£\ÏÀ{jŠF½ò\áŠ\Ê\Ìö\âq	š\\‹`\Ä\0\ÎA\Ãdw¹\'5\Ëk‹©\'E²X\Ó\Ë&œ]\Ú\Æö³­¥¬Mq°,e^¥©6œ—v³J.\âds\Çxc\àzQ+(\Ì-\rq\ÈñAfM³NE«\É!as:g#\0£\Ø«~¤ÿ\0\íw?´?…F$|c?}±Wö’~8h\Õı4¬İ‹©x)TÑˆWôQ\åºg\ËÖ©‹µe\Ø\ç,\İ\àû«GokoÙ¡”vyp~\Èô\ÅÀE}@\Å´\Å\Ù\Ş\Èfp2HõCg1cúa§€Œ\æ”jÀ\î:[;\Ö#Cm._x·Ÿ»÷„<šG«2¶›rÃ¤–\ÈAım•IW\äõ>\ËM°^\\\âz…\ç÷$©\\º¢¥{59\Î<ğ|Wv{\Ùó\'TÑ»‹“{ú\Z(€µ\ÄüÂ¯†N\ÊX%\äöR¬„¸R	§\Íc$Ú„\n——{^d$÷X.\î\ÙHr8\É;OR1œc\Ã4~—©,õi™Z\İ\Û\nNdI\ç#ğŸ\Zbcb©¶¤%\àJÑŠ\Ù\Ìk\â\n\Z\Î\æ{y\ÚxOg¹ËºğÊ“¬<¼«]5òG¸Š– {EY[£‚\nõæ€“F·fg·n\Çy\Ğd\Ä@m\Ü˜ô¢ ³¼x^^\ÌD±:ph\È .İ£\Ğû½hƒ­ĞªùŸ³\ê\àŞ’›À\äON½²Ui?\Öõ˜®B—i\nªœ…\Û(•¯^Ab€n‘RI‰ÁÚ™\îªú¤ÿ\0\Z\"\Ù\ëQÆ‡·!W<÷d\\\î\Í\r«»¶¡|[\î¾\Ï]ª¡E<¶7­Ô¿Oµq¼\È`#\Ç/T¥Û¾şC\0VŠ\í{=DBC\Ã!ö˜\ÚCÇŸ5š*\Ìp9g!@ñ%¸°Õ‘vh\Ğõ¥_>Qk\ÑÃŠ-dŸ:dø³°M&\Ú^(m£Hb2\Ê fr ’\çÏŸ4DsiñJò*«\Ë\"\ìwÛ´•\ÎqH\ÖB@ûYÀó«¹û®}ÆˆÚAcœË’S\ÜÚ–²*®9\0õ>µ\É\Ö\Ê\æ>Íxr®8*|\Å*E˜ô‰Ï¸\Ñq\Ãr\ßp¯©ü\èû\Ñ(\Â[‘A,; ÷-´ŒŒÑ’§‚\Ü\äyÕ¿]_\ÅÂ®“F\âS,òJX…^P\0ğEwû\Çÿ\07ö\ÍS\Z\Ú\â\"\0®\âQ\Ãp>\"­Bs\ÏV=|ª\îÁ;\Øõğj¤C•\0ùµz\Æ8j \âÒ•k‘a~\Ä\äiyö©¸%´D<÷­\à_ƒ¨­\æ¡\Íe}’H%V+\Ô§‘šÁ\\e4RŒG\è‡f=B\Ì\0ªª\Ëa!k>?¸uoº\Ä\İòAöşfš\é’\Ë“y4D‰yjv©cT\î\äøJ¤ŒyéŒŸg4\ÓGš%•\íd\0\Ãv6n°·‘\×\ãQ‹@\æ\Ñ±ÎµÀ±#˜\Zù+/H•ì§ˆ¨/2¨B‘„\È,\\|Aó¯µ;‰\í\çh¥´¶’\Õ\È\èm\Çy|•\Ó\rŸ}}hös\í9hŸ½6{Ã§_1\ãüé†—©+ˆ\í.¬‹İ†Bq¸tŸ\Ä<?S0\İÅ§%WP\İ\ÜLš?˜\Ğ§\Ğı4\çdRN\â\â\Ú.V•··Y­.4y\ÚUs÷À\àô«®5™ÑŠ5²,Š6ÑŸ\n@\ë³Ç¾”M¢\ŞC9šk…,\ÌÁ\Ï\éÁ=s\r3‚\Ş\âò\İáºDhTY\åVW\ç9F\Ï%zB¤\ã(~\ÜzH1\ÇD`\Ég<ûüú”’ydy^r\Ìd/\Úldw•vª»®\ç”t\"œybDVª\åFFtpU‘Š°>Q½ûM&a\ãnö\î|\Ì\"(-¹ióò\ê\áø[#\İ\rÇ•ı’û{]KOÃ¶YõbÌ‡ò­ª¯%Æ\ç-;Œœx\Ô)~ƒû»™ˆ\â;5\'ñ\Ê€ù\Ó[\ÚjZlfN\Í@E2HFv“¸\Î·\âôLù\'ª¢«›ü\àñ\Ì\éo’\Ê\İ@1\Æ5hD\n  q*##>T\à`+rU{\0ğö\0©Ö MwE\ë.\æ¾Ï­Wº¹¿\Ù\\º•‘¥²O\îæ¹L|«¤ò}µ\ÂEQyŸª\İ„cõO`/‰:]\Ø\È\ÜN\ã€?H	­\í\áU»\ã8†C<\Öü¥\êEN\ás\ä	Z§Ú»ZµŸ¸bp<\Â\ÄJ\Û{#\Ï\n:u©£0\nÁ\Øc¼„¬G\Èæ¨¸=\ÔıEüªvıÏ´Y—¼|iKY·Z§:òa+U–úµ«G>Öš2;m„\ä0=\Ùyı\ä{Q^\Ø\Ïdø‰‰X\ä\0…#>>Gúö}óA$rBûd^¶X\Ói\È\ÓZ;K\ÛMALlµ\ÚD\Ğ9\èJg¨÷S1‘0±Èª\n†K³]\Å\á\É(³\Ön-\ÄqÌ¢d\áT’D€yñ÷Št5›\0€”¸-³µ?­»*o£ñ4½­¬\Æ?\ÊPY\ê°\ïTúf¤œvÇœnŒ>d•L™\â\È¡ˆöegnøO+\ÛúğC\\\Ê\Ó\Í4\Ä2\È\\¨\è3\áWÌ‡ûOs\ã{pWõ\\ıµdZEü\Î;DG\Æ\ævRøÿ\0*©<ûqDjÑ¬¤\éPq\Ş€û‘•\Ú	÷n?õ®G°¹\î\Zú\İ35\\;\È\áˆ\Ş\Æ\æ\Ù\Ø\0Q:-¿cb’ß¹s9ıS…OÏ¾ˆ·9µ»rù\"‹8\Ü \ÓÆ‹UUTB¢ 8„ÑŸµ\Ö{ú‘	¸sV`cZÅšS4’\Ï\ĞùŸ²ô<ûO©®Zûp¨³Q\Õj\áñª˜\×Y\ê¦q\âj%y|\Ç¨n¨3`ù\Ô9üG\à(evé™xdş¨\Ïò¨–o\0\ësòÆ¡¿®*%óGK]IŸ‚\ç9t1ı\Z\Ã\ëºmõ¼7\ëd­%­\Ö\Öd/Ó¸\0<ElXõ¡f\Ë(BÙ›„§(«¤£“> ñ^/r¬0 €r•}lÄ¬‘°{¨Áğ¯B\Õl\ìd%®¬D\É\Èi\"\ÊÎ¾ ¯&ch\Ò\ÖZ“G\Ô¹M\Ê=.\ÄU{\é\Ñaš\×S\íºy%\Û\æ<¾\É)`\ÄŸÀ=\ç­VûÕ£(Y]I!”Aô#š|4MAZ9#ú…\Ê$¢R±\Ê\0r\î°e\è|y¡_FÖ‘‹=p\âpğ\á³Jˆ\Ş\İBµu},¢\ÂFøêˆ±Ö®\áD[\'ûd\í—Ë¨>ñMS\\Ó\Ú[„>F5oÿ\0V¬ø\Ó5‘ÿ\0›~\çş\êšéº¹?\è¥O^ü‘ıT\Ë\'™¿\éVOE³$\í\Ü\àyõøH¶…\ÙúŸ\nƒ\×b’O\ÄUz,r\Ï5Ö£9,\ÌZ(Ùº³q½¿ =ô½´Û¬/k=¼-÷²\æB=Š‹ùšqå¼p\ÚÛ«\Èc@ˆ‹ö:³yg©&š‡y#ñI UrR\Ó@b¤\Í\Î\Ô\ŞùwõLÊ«¸ÌªÌªƒ%ˆ\0EıÑ§´\İx1q\"Y\Ïf­ö™\â?\×ZÙ¤b¬\ê\Ä(\è=¦´–s–@	<S®hs<#&tqº1üµLˆòª\Ø\às\\\Ş\äy^Oğ¨‰ó<š\éBº\ã1\çz¿\n¨Ÿ™\ëS&ªb9¨½u\Â\ÕŞ¿•Gp5ö\rI±\\\\¨—\Ù\Ç\ÔK?B];\ÇÖº@\Íu|XŸ!’jº{€«02|G_i®/ &·òH¯4iXº©I?D£|Vµ%9\Ç5[\"‘Ò¸Z\n\èy	&‹ı\É?\ïQş\Ğ\ÃUF\Ï\\N\Óş>@š\İ<QŸ\n¡‹®+˜l»½+õ}xõn?ú‰\Ë`°\Õdyc\Ô\Í!ÿ\0™ÀùV¨\Åğ¨˜\ÓÊ¥{.on=ÿ\0\ßM#Œr«ˆ\×ß³Ÿ\ni¶Ø\Äò±\å\Û>½˜&›\Ë\r”d¾!¹Ï¶£½¼}\Ø\ãDQƒ„PÊ„ù^\r›ùùŞˆ\×ªº‡\åU€\Ï\Æ\Üú€iÍŸt\ã\ÓÆ…c\ÙFÀ\0®°“ªò3§\ç\ÅqŠÖ¹*\r\ãD^º‹5TÍŒ\×Z¨“¡\ä×†ex•[K†\ÆpzŠ\çlÿ\0ˆ|\r/\Û\Ú\ç_\n\ëÿ\Ù',4.00,5.00,200,'2020-10-24'),(10,'dfgh',1,'fg',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0¢\0\0@\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0\0ø\Ú\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0¾/bs÷öŸö†*]ù\äG¨æ²ˆ\æ„,‡*H>\Çõ.’\èÏ“U;£W&€\ì„p}k=.¥p\ßQS%âŸ¼¬¿Nk7M£EQ3Ao¤|\ÜU«mri&R¸T#>\çÒ±e¹P1$÷ôªg$’y\'’MO°SV{\r\×pznj\Ïu%\Ü\ï<Œ¬\îy TY5@dr	ÛŠ\\8\ë†úñZ{.UdO´Mİ–²z\ç¥YQ•0¶*ˆ¸S\Ôú\ÓÁR8 ş5=\ÑjK£5c¿ŠN­°ú0\Åfë¾h@ ¤ñõªòL\Éõ¨I\É$ıj©\ÓiÜŠ•.¹Hù£š~(\Åt\\\ç°\ÎhæŸŠ1E\Â\Ã9£š~(\Å\æiø£\\,3š9§\âŒQp°\ÎhæŸŠ1E\Â\Ã9£š~(\Å\æiø£\\,3š9§\âŒQp°\ÎhæŸŠ1E\Â\Ã9£š~(\Å\ÒóO\Å¢\áaœ\Ñ\Í?b‹…†sG4üQŠ.\Í\ÓñF(¸Xg4sO\Å¢\áaœ\ÔÖ·\Şm\ß\Â\Ã\r\Å3b‡ª³\ZvwF\Ğ|€A\È#‚;Ñ“Y\Ö÷e\n\î\îóŒP÷²¿L(ö®f\îo\íqxõ5\ŞDdúk5\ËIË³7\Ô\æ“J—vK«\Ù\ßQş\ê=I\ÅYß•È¬¼U«{…Hv¹?)ã´NšJ\è!6Ş¤\äši&¢{¥ş\'\êqP›‰p>‚¥A²œ\Ò,’}j7Gñg\é\ÍW9=I?^i1V©÷d:‘/4üQŠ\Ö\æV\Í;š\\S±N\ì,8i1O#šLT\Üch\Å;b‹€\ÜQŠv)B!@\å+€\ÌRº22²ŸB1]¶•\áû}1|û’²Î£%\İO¦™ı*ƒ…›%‚¸c“‘š\äXµ)5¢\êu<+I9;7\Ğ\åñF+vM2\ÚNŠ\È\Ù5R]\"Tÿ\0V\ê\ã\Ğñ[*\Ñ{™:3^fn(©å¶–õ‘°¸\ÍE\Åj¤¨Í¦·Š1N\Å§q\r\Å§bŒQpŠ1N\Å¢\à7bŠ1EÀm§bŒQpŠ1N\Å¢\à7bŠ1EÀn(\Å;b‹€\ÜQŠv(\Å Š1N\Å§pŠ)Ø£\\ÑŠv(\Å¸£\ìQŠ.qF)Ø£\\\âŒS±F(¸\r\Å§bŒQpŠ1N\Å¢\à7bŠ1EÀn(§bŒQpŠ1N\Å¢\à7bŠ1EÀm§bŒQpŠ1N\Å¤‘\Â7Fz\0*_³\'«~t\èx\É\"¤¯‰ªª5÷>ƒ\r…¤\é§(ô*\Í&)\äsIŠ÷OŸ°\ÜQN\Å¤Š’X®b‘Ô²£† wÁ\Í%&)5uf5£¹±w­¶ ÿ\0¼}‘\çˆúş¹¨A•#\ê\rgbr8>Õ’¡«GCgY·w©¬&~£4ñt?‰#YIq*ÿ\0~¼Ô‚ğÿ\0À\Ô:,µY\Z\É4oÀ`=\Él\à›–‰rˆqü«<\\F{‘õ*HG(ÿ\0‘¨\ä’\ÛBù\ÓZ\êi\n\Õ\ÈG³\ÕI4\ëˆÿ\0ƒpõCš\ĞR¸o¨©õ\ŞV_§5Js^dºp~F!Aô#˜®‡0\Ü\ìj¼\Úl”2	\à\çùÕª\ëf¬g*\rj\ÌlQŠu.+s˜£\ìQŠ\ÃqF)Ø¢€°\ÜQN\Å ,7bŠ1@Xn(\Å?PŠ1N\Å\0\ÜQŠv(\Åa¸£\ìQŠ\ÃqF)\ÔS¸£\ìQŠ@7bŠ1@Xn(§bŒPŠ1N\Å ,7bŠZ\Ã(\Å;´†bŒS±KG\×\Ã1I\Åv\Ğx_O’IOûoşmmt\ëV+h±ÜŸÖ¸e\ÙM‘À\Ëy4K‹‚6òÉŸ\î¡\ÅFÑ´nQÁVS‚§±®öMb\Ê?ùo»‘I¬T\Ñ#\Ö.§ºslü®\ÎM8bŞ®j\È\'„J\Ê\ì\æ±MrF1}k´‹Â¶1\ã\Íi¥>\í·ùU?i–ZH–\Ö\İcu•Al’H9ÿ\0\nÎ¶:<­B÷\îkCùÓ­\Ø\å2Ş¿•\ÏLŸ\\óE×›*Ó–\í³Ö\nqøR.[ÿ\0Ç™İ“ùşµMÇ¯\éU\ì\Ï\îf_M­ú\ãúÕŒ\ï­fjV=i1O=i1_N|¥„¤§bŒPb’E1IŠu†ÑŠu\\\Å´P‰\\tcøóOºÃŠT´˜Ôš&ó”‡>˜¦ıªP\n«¤`Œ\ç5”Nln(\Å:Š²ÑŠu\\,&)1N¢‹€\ÜQŠu\0\ÜQN¢€E:Š\0n(§Q@\r£\ê(¸	ŠLS¨ \âŠu\\\âŠu\0\ÜR\Ò\Ñ\Å\07¸©<™vòŸ`\ê\ÛN\ãL¤¤À\Ó[£\ê)\Ü\ÑN¢‹€\Ú1N¢‹€\ÜRâ–ŒP‡öœÓ§\ï®d$pAb3Q˜‡©>ÂªUY/\àŒ¸-£<w\ê?B1ø\×4£J\î\Æ\Ês‹SHİ\Éùš¹§k\Û\ã`\Şs’3ŒV47	p[`8P	lpr3\ÅL›:ƒ‘U\ÉN¤{ Sœ%Ù›Rj—²g7¢ü¿Ê¨_»\Ëm!wf#\æ$Ó£\Í‘VŒ–UQúš¯s-ºB\ë6«`‚G!r}¸ë’§²Šj\é3®Ÿ´”“³z™ş‚Œ\ç¥7>\Ãñ¤\Íy\'´[³\'2/8h\Î?¥IŸ¥V²ô\È\Æx$¯\æ1ıi\Ü\Ğ2r9£\â9¤\Å}5Ï”b—b‹€˜£´b‹€˜£¸£\\\Å¥\Å¢\à&(\Å.(\Å1F)qF(¸	Š0)qF(¸	Š1KŠ1EÀLQŠ\\QŠ.bŒRÑŠ.bŒR\ÑEÀLQŠ\\QŠ.bŒR\âŒQpb–Š.bŒR\â\Z‘8À\éCv\ZW,\Ø\éZŠ·U\Ú\Ò\Ì\ØÁ­H|#+\ç\İ*ûF¥¿hGm—l\Ñ[\ê+-¸—\n\Ù=?•“swp\\©½i—\Õ	¼\ïmV¤Ÿ+²ô;U*pŠ\æWe´\Éc\'\Ë!À8Á\à\Ñp\Õö‘Í…ó©„\Íññ\èNkR\×S¿¹ŒGgl#I8ü\ëiÕ©¥½Y¥NO[ú\"”^½|y’Cú–şUv/	D9\êFõØ¡Aw{ªDJ\Ü<±g\ĞmñBId—\ï\È\ïşóY\'Zzó$¼‹µ(;r·\ên\r/Dµÿ\0X\È\Ä\ÏIsú\npÔ´‹?õ§<¸©®t!\'\n2OaRy3Góy[±ü$šürl¥Z\ßR5/¼C\Ä&$†@¤ƒ’@ı+ô\Äò+A·2p1\Í%Ä¢gVh\ÆCŠ\è£EA]hsUª\æ\ì&(\Å-®‹˜	Š1KŠ(¸	Š1KŠ1EÀLR8\Îp;Ó±U¯\ï\Z\Êu@Å›ö¬\ê\ÔT \å\'¢.9NJ1WlÃ›\Ä,\ÂO/oÌ¸\n9#œs\èpF~•œ’´ ©r\ÊÑLú÷\è\rLñ©“\Ì,Û•Ë®\ÒÜ’~½\Í:\ëø1ş8¯—)Ö¨“wG\ÑRÁ:q»V°±\ß\\\Â\n¤Ì¡N1Iö™¤q¾i=‹Uó@<­ts\ÊÖ»±^\Î½‘9\n{dûŠ\\\ãµ7#\ëGÖ¤³p>Põœ\\ŸNn*µ»m®\Ú~h<Rys\Æı6°?­t_\Ù\Ë\é\\±\àô\é\é[¿\ÛCüš\0B94˜§\Í%}%Ï•bŠLQpbŠJ.bŒR\ÑEÀLQŠZ\\QpŠ1KE1F)Øª÷Rˆ\á`\ŞA\Æ1@wTq<`¨ \äJ\Ê2¹\'ŒOsS\Z9	V œgŠ«b™jg¸85.*@n(§b’‹±ká¶–š{¤‰C\0@~µRM0dùr†\0\àduüª§˜\çv89\Å/˜ÿ\0\Ş#\é\Åc\ÔN\îWù9Sj\É\r–#…”\ÜS‰$\å‰\'ÔšJ\Ù^Ú˜»_A1F)ivg¸¢\à7b–Š.bŒS±IEÀLQŠZ(¸\0,Ÿt‘ô –=XŸÆ=iv0Š°_R1KA\ê7j\ËR¸°¶\ìª‚\Ù\éUñF)J*J\Í]\r7t\ìË²j·W\0¬\×•=Fx?•V2/¯\ä*,R\â¥SŠ\ÙXn¬ú2CO\îXúC\ÍCŠ*¹S\Ü\\ï¸”b–‘\ÊÆ…˜…U$ñŠ¦\ÒWd†(\ÅV“R¶\0„•]û(\Ï5]õ);\"¯5Á[3\ÃQv”®üU¾†(\Ås—¾&—N»…%…eŠ@s•—ßŸJ°|F\Äº`Œ‚_9©Y®\ÅI¶®[\Â\Ô]\r¼QŠ\æ\åñL¶\ÒBe·¢wÁIg¿\á]1b=+§Š§ˆMÁ\ìgR”©Û™n7™¯iá¿» şµ«Š\Í\×\ÇüI¦=Ô©,b½	z\Z\à\ß.\"/\Ì\å_z’W\ß\Z\ÕD–ô?ˆ\ëRù£\ËT?{+ä©«M3\ë§4\â\Õ\ÇfŒ÷Ï½3>ô  òp2+\Ò8K¦\ç\éV„Ÿ\Ä\ê·4\áaÀÌ¿’\Ğ‹\'Í°\ä*ÀqFj´1-¸)¹9ı\Ô&Fhüÿ\0:x\ïœ\Ò\ïö?:r94˜§É£ôw>`n(\Å;b•Àn(\Å;bÀn(\Å;b‹…†\âŒS±F(¸\r\Å¦ˆL¦1\"\ïsjµıÑ÷* –byÀÿ\0\Zi6\ì ¸¾PJ@\Ã#’ç ª’n\È\İ\Ô\ëQ(ÁÀ\É\0\æ¤r¡\Ï\Ì2I\'5¢I\0\Ù şy©n¤\Ù M¸U\î{\Ó:ş8şu%Ô\ç\é÷D˜Ä”Œ€\Ø\Ï\\fŒ\\ü¤s“òEB\"RF;Ÿ›Ú§p1’J¶Ğ§#9\éŠ[°ÿ\02Dsó0`v\à\Ô\ÑÜ”ÿ\0Y’3€z\â«`\ä0,lŒ\â—a\Ø\î³Qÿ\0\ê\Å\'ajiñVì¦²…[\ív\Í;ò\à\àX6ó4.2\Ä!?6kP`€A\àŒzÊ¤.¬\ß\Ü\\$\â\îq¬ZÇ‘o§@œ`ªF\â÷\âCôªØ£”h\Æ;_\ï5u¤÷±­\r™·\Ût‰\n•”I  \äzgŞ–\æöú\å°€¨\ç	XûG¥;,:>†§\Ø\İİ»²½¶–J\È}\Ér\ãÌQ€\íŞ¡\Å8\äõ$ö\ä\æŒVñVV1n\î\ãqF)Ø£\î!¸«6S\Ãk#¼\Ö\Ë8#\åzZƒb¦QR\\¬qm;£]|@#ÿ\0Seo¦W¹Ö®n€\Ú@1T1F+8Ğ‚wKSG^mX$>c–Àp;SqN\Å­V†[\Å§bŒS¸\r\Å§bŒR¸\r\ÅA|?\Ğ.?ë™«Q\Ú^\\\ï–U¶·™\Ü\ãv{:\ê+R¹&\æHƒ0”e\Î \à×Œ\Æ\Â¥e~–:£…š´š\Ñ\êc£\âEúÕ‡zk•ş¢y+\ã~#´\Ë×‘\å’Ø¢3m\È;FqÒ’\ÌÌ™\ã`A#«\Îşõz\èS|ª64OKÚ¬‹ä¸o@J\ç‘^’0@oP\ry^§¶±õQü«³ğ]ô÷ºt\és3\Êa*—9!Jôı+\İ\Êj(7\æ\Êw‚’\èt8¬Ÿ\å,\ápH+&2>”“x€E#\Æ-òUŠ’[\Óğªš‹jhQ•V% \íÏ¯\ë[\ãqôeJPN\ï`Á\à«*±››œõã°“!’:TPœ\Ï\î~nı\rkµµ¹<Æ­„óQ˜\á@vÆ€„\nğ!4š²=¹Q›“iYòƒô£#©\Ï\çM¥8ô¯P\Ä\Ó\Îy\'·s\ïLó\ZûK¿\ßğ s‚=\Å&I\ãğ¥¤2J§\Åiğ:~”XG7\å¹?,n}0¦¥òfÿ\02\ß·ó\êO*LSùQ`±)šLT‡©¤¯¡>\\eú(”bŠZ\0f(\Å>Š\0n*µ\Õ\ÒZ…\r»s}\Ü\â¬I\"\Ä71À\è=\ë\Zü¬³Áù‡C\ÛSJ\ïP[ØŠIT\Í#…$‘€}úS€d±,\ìr=)l¸#x>09­P\í¨\èøûÇ’9&•\Âòz\ä“ú\Ôh<Ì’N	”òxü)\ÜV¶\Ã\ã\å\Ô{­1\ß$’rI\Í	\' ¡“­Dû6ƒøP˜r»\ê[·û\ë\î\Ê)\×22I´¹UOLçš¯œ\00X20\Çz±q*½\ÌN„0\ÉC\Û>\Õ-\ê\n-ùc\0²\ã\n€ƒÿ\0\ë8 \ä\Ô{òK2>ó\Â÷\Ç×ƒ\ÍE\æ¹}Û\ìc ô\ã§\éOó]Ü’\ÌU\â	û\ß\áŞ\ØpB7…ûÀrÍ·ŸóùÖ••\æğ\"“€\á½k*\àrK9;@]£¾\Ù\ïŒS$\"Bw6€\0>\ß\áC\Õj¾§KF+*\ÏS1‚³\îtV¯¯ô­+i\Ö\æ3\"\0úÕ›M\nÄ”˜§\ÑHbŒS\è bŒS\è bŒS\è bŒS\è¢\à3bŠZ\0f(\Å>Š\0eV¸½\ŞMŒ¬[\â®V.®qx=\ĞZ\àÌ«Î…z{\ÜÖŒ\åf\\\\XA¶H#\ÌP\ØÇ±\ãÿ\0\ÕX\×e\åRÁ¤%›y\ÎI9\íÒ£/M/_-[ZµÔûŒoÊƒLYş?Ò˜m\×û\íùSŒ”\Ã%s+R3nÙ¿:i†/ö¿:Rô\ÂõJ\ãÔ†[Y_{Ç¹±Œ’i\é4šUÁ\Óİ fÓœ‘õüh/QM\Ì2U#ô­¡9\ÆI¦\Ñ[\èõFö\ÔòH\Ï:«³\Ì\Ã\å\Í]²¿mÁI\rŒ•#\éJ$hˆe8`x\"ºe+÷=:5¤š]ŠI½ê¼“õª\ÂYd@Ln¸ ŒTn&ÿ\0Lr;Š˜\Ók¡\Ø\ê\'\Ô\Õ\ŞLÑŸj2|´\ÎAÀ\È=©s\Çõ¯A{4a|ÀŸ•?5^\Õÿ\0sô8©³ıiˆ»¦HE\æ	\ê¤V¾úÀ²“e\äg\Ôâ¶‹ÿ\0­\0K¿¿…;½Vó>½©ûÏ¡ f¡\êj…Æ·§\Ú\Îğ\Ïr©\"}\å*N?!Yú¶¿-¬Ñ¥¼°’A,H\r\\õÄ·7SMpT\Ë(vŒ\nõª\âT]£«>z•ew±è¶·0\ß@\'¶I$\0GÖ¥\ÅyÖ‘©7R\á÷´C;‘O\\Ã¦k¹‹SYaI|¦Eq\à¯½kF§´^dÕ§\ìß“.bƒ×¯@\ß1\Ï\ïg\ÜqUÌŠü4¹…³Š\Ş\Æ\ìm\ê:²şu\Å\ÊÄœÄÇ§½dKsDO#<\Õ	oa€»r@9\Ï?\çŠ,‘qŒ¥\ÒÅ¿¶´“2Œ@\Ü{\çüH¨<ÀğF¥¾fS\É\çøª¦Je1’§\'˜4\ç‘,G\0ş\îz}iß©²‚J\Ö-$ü¤òj30À \åıj\ä’{0\Ï\âú\âF\Ñ\É<ñ\ïúsEÁSD\é.$\08\ÅK¼d÷I\nO¿Ê©\ÆAV;³À\Çlri\ï!wHÁÜ¡p„ñ‘ı3Ò‹‡\"Ü›\í69\nH\Ç\\qLy?(\ç#¿ù\æ¢9p\Ì~ñ>Ô‡$\0\ç§=)\Ü9V\å\ëY\0u\Î0Fß¡ÿ\0*pÀŒ\ç\ï\Ç.\ãíš ŒP•<†2úó\ÍI\ç1İƒ’TÇŒ\ã~´º‰\Æ\ãÜˆİ³\ÕI\í\Ïÿ\0^\\\"z¾±U¥p\\¶~\\\ä{œZW8\çû¬p}{\Õ\\.<\ÉÔ“ƒŒ\×ù\ãoQ\×ÿ\0*4\É\É\éÇ°ÿ\0&“<g  q\ïùŠ.¥˜\È\0\î\êFF0z\ëR\Û\\›[¡!$\ã†Rz\Õ4œ1\à€?\ÏÖ˜\Ïq\Îi\\—­·™n!Y£G¡\ïRb¹M;Tû,Ä©Xe•3\éü\ëb\ß[V“lè¨§€\Ë\Î>¹\íS\È÷D5fi\âŒS\r\Ì!™Wc\ÏSRe|¿3#f7níŠ‘	Š+\Z÷\Ä\"Å´K ‚\ÎzŸlv\â®éš¬\Zœy„•}\ä#·\é\Í;=\Çgk—1F)%–8x’EBG3Y‹®\'\ÎEOSøĞ“{\Ô\ÅRÔ®$„\"\Æq¸°\ê1T#Ö¥6ù£*AÀ$zcü÷¬û\İRIr®\î\Ä«`c®1V¡gv+7¢4\ìµ9>\ÓRH%Yo\\Âµd¹·‰\Ê\É<HÀ\à«8W<\ï2\'!”†§¡¨æ”¼ŠfbÄ¹œ\ç8¤\ì\İÖ†Šûb¹\ÍU™l\Ğ\\nx\ÚC™’@\éù\n\è\"¹†\á\Ê\Ã\"»(\É¥§Ô–¬\ÚŠ†k{§x÷`H\Ç\åVhx}k9\Æ3¤®4\Ü]\Ñ\æW2\Ü\ÛŞ”ó\å)¿Œ·QŸò+X¿\'\ëO¾ğÖ¡pò2@¤‡,§\Ì<ÿ\0Z\é\Z‡üú·\æ?Æ¾F®«zAõ\èz¾\Ò\r-QP½0½\\:.£ÿ\0>¯ùñª×¶7V\î¡h¢)bA\äô\éY}ZªWqpFI»&®D^£& ûló\Óô5%«­\í\Ê\Û\Û~òfªŒ\ãô•97d™£ƒJ\íh;4‡¿\Ó¡ı‡©Ï£şcüiƒ©d¢?_Qş5¯Õªÿ\0+#\ÚCº8\êd\Ç	ŸCVä²¸ILDb\Èâ¡š\Ê\á\á Drzr+¡E\ßc²\Z4\Í\Íù\0úŒÑš†\"D1†á‚€G§¥\ë¦\å’\æ“}8ZÜ¸°±2G4}Š\ë\êóÀ\ÎO‘\ÇsS—¨¬¬n‡˜L\rƒÀ9k\ìW=<–\ç\é@ŠB“#z05´dõ?Ö±ş\År3û–\Ï\ÔV\ÇØ®±\Ì\rœzŠ@\'™NóO©ü\é>\Åv?\åƒr=©\ßaºÿ\0\rúP#\nóJAt]˜É¹yR1óƒX²I‡•d\Ø\r~_ó\ë]\0’\æ\Ì«©\ÚJL,Î™rq‘l¿ZÂ•\æy¼³BkyT‹w‚Ó±:-E)«¾\ãô\Ñ˜‰b¦2Åù}ñúV¬Ú¼3 V™™A\ÈMcD\'9Àp½søû\Õ\Ëm:9£..d…c\0\È\ÒÇ…\0÷\á¹\íÀ\É9\Î1\ÍkO\à¶3©„Sw-+¬©½\ÉÁ+Š>„~kBÉœ;2ı)wŒ¤nOc]¦\Æ/\n\Ó5ƒ®ğ»‡<\áNŠLÀp„9¥eCras²(|\Å1­\ïeùK,l$8zo–\èO>…¡&\Çÿ\0<\ß%³\Ô7ùıj$\ÎCBœÀ\Ò\Éx±!. |Hşt\Ä\Ô\ây6›uAüL\Ì>¼w¨úò\ìC¡S±4§®:ƒ\Óñ\Ïø\Óv’\ãQ¾\İsSXJ·\×>_’©´\å²rvúôü?\Ze\ÍÎ¥2L\Åa‰Š¹Q\Ø\ì?\Ú\ì\\0µ\Z\×A#Hd!şV\Æx\ëI¼ ûÄ“õ©5y,\ì±Z\àÿ\0\ÓBvş½O¥g[Şª[À„H>õQ\ÇE«ÙXI¥v\Ñs\Ì\Ë\î#\îŒ½¨ü€”œõÿ\0=*’\Ú\æ\å‚\ã8@?­h¥\ÔHcXX°`¸\Ú;\Óx\èôFN„–\Ê\ä&\ÈÌ0¥±»\Ğ\Ğ/¡0pA<JÔš\Õ%³{~\0aÁ¡®UÑ£rŒ0\ÊpA*\'Œšz$tS\ÃBkV\îiı¶\ãŒdğzÕ‡|òO[ğ¬\ë+½Gd\Ç\ÊpF@¤¸¸¹³Ûˆ„\0e›?\Ë\ëUOvù—\Ü*˜D­\Èõó5†H$ü¥º¾\â¡\Î\âOA\Ô÷\ÅAesqp$ó#n1\åŒûw¥{…Cå˜§\ÜMµº\Å\Ó\Ø\ät¤›OrÀ|ƒ\Øc\0Tmp¾xR>óŸL\Ó|\É0¶Ÿ\Ğ\0¨ˆ¸y\ÌH ß¯Ò‡‰‹Ù‰Roq&¢¹\Øg,@Œ\ãÿ\0\ÕS‹Æ‰œ9\Î*¹U’GS+6@À\È\Ï_Î£#‚_t…†005¤q\Ør¢\Ú\ÕW3*Z…iPsşOjÎ†YQ\Õ\Ñ\Û\å=I\Èj5¾‹\å\Ïÿ\0[©õ : M¡Š±\Ú	=I\ïÓ¨§*·w2Tœot\ë˜ ?.8\É\éş5-¼òZ\ÈRÀäƒŒóšŠ\ÒHKù;œœ†-\ï×Šap\'O/#/ÂimS)Ã¥\Ô\'“)31¨\ØH\ë\Ï\ë\Æj,ÿ\0}™—û¤\ç¸gOŸp€	#­>\íx!\ÂI?\İÖ“¬Ş—%SW\ĞIA\ÜvŒ\0/ûÙ§ó%°bÄ¹›4ªğŒYz÷ªFğ\Å$\ë\ÕYˆ®?úÔ½¥\ÊPmYnM\æ\æ¯È­†$™Ò™-\Ä\èn&Û—\'n	ÿ\08«:u‘ÕµX•üˆ\İ\Ó\0>„œş5K\Ä\ÚL–W…ax§„1\Ø\ÑH\àô\È\ätü+‡Œ)¨Á_MOC\r†§R-\ÍÙ¢İ–¢DŠ\äÄ¬C(\Ï‡®FkZ\ŞI.¦\Ö9efMÊ¨9\Çù5\Ëé°²¦%N§!O<\ê=+¯ğ¨1K4®«%C•8c\Ç\éœsŠÒ®:T°\î¢JıŒ£ƒJ\êŸF÷,\Ù\êW\áŸ-\Z»]€\Ç\åW—Zˆ©\ÌRdv® >@\é\Ít‰;He+\Ç9£‰–*ü\É+1ÁC\ã\ÊÛ¹¡q«‡B°++7\ßOz‚=Nx\á(\Ä1\çy\"«}Ÿ¦¥†\İLÑ‡!”œN+\Ñ\å²\Øó£f\ÒOq\Ö¿e\ï\Ü\Ñ0\É\0g«øªúŸL‹¸0da‘Œü\Õ?\ÙT$\Ç$:6\0\'€?­e^\Í–\ÓF²`yÿ\0\ëW%y\ÂT¤\ï\Ğ\ê£MÆ¬o\Ü\är*ÿ\0‡®>\Í\â+9q»Œg®TŠÑ¶µKÅ²O;T\Z¶šuŒWP\ÌV\çÍˆ\åpWô¯›§‰„&›\è\Ï~²N*ú£¥ş\×ÿ\0¦øõG&«+\äF¡¯R+0\ŞÛ\á›ñ\Å\'\Û\íóŒK’p2\0¯e\æ\Øku</©TZ\ØÁ–)nu9 Œ•\å` d\çŞ™{kq`c[¸ü¦‘w*±#\é\Ûñ«—Wo’\ê\Ò\ác%·+eeÏ¸wªwV\Z\ä\ë-\Å\Â\È;L“#ü+È–!J¥\Ó\\¬õ¡$’O{·SK\Ô>b\ÛXdPI¸\È÷®‹¢Î–\Î@öP3´\n—x¬ı:Aö(Á\ÏË‘Æ¬ùxÿ\0\ëQq\Z6rc¿­X\Íf\Ø\Ëó¸\Ï`jÑ•F2{\â˜\Ë\× şu®“)O<€k\0\È;t÷«\Ğ\Íû„\ç \ÆhD\Ì?ıt\ï6¨y¹\äq\ëKöŠ.#\Ä<–W\áE´O[’>f\';³ôÏµrù5¿\â1k\ZzLşB°¬¥²H\î‹>\â0¢ÖŠœSµ\Ù\ÒMl7?\äVÖ«f,t\Ûr&ve\Ã(}¡[¯÷y g\Ğbª\é\Ñ.§­Á+Å¶+q½‘Á\ïõ$\n¿«½ÔºL\çQp\Ò-\Ğh0\Â÷¯\×õ¬j\İI(«¤mM¦®Ş¦?oÿ\0>¬~³\è)¦hNG\Ù`ƒ#ÿ\0*¾}\åG\áB¿fS\å\êÍ‹;\Ñ,\È§ª’T\ÈP\ä|¹\ÎK~>ı:\Ô7\ZŒ\"d[H#HT`”\Êùø\'\åÏ§5A%e†H€d*NO§?Ö›±ˆ\'i\Æ2N3IBM\ì&\ámYr\æas2¹Ô¨\Ë\ã\ïQ\\<ù>ds(FXœw\àÿ\0ŸJ†#¼Œ(g;GÊµuD·º“MŠş²E\å‚\ÛÁûgõÉ©mÅ«6•\ì\ÉtK\ËË©™`¶T@\0’\âF<\ã§ÔŸj\é†S€8<ô\ÎNµ^\ÖK8aX-¦„\"Œ×ƒMgkz\ÒÙ©‚¦\à™¿\çŸÿ\0_½b\ê9;$h©¥©_Z¸³¶¤6ñ5\Ñ;‹Œü¾ıy\'šÉŠI®g˜2H{€3øš¬7LK\r\Ò19b\êA#C>\ĞJÊ§%q‚+¦%\Ü\ÊT\â÷\'{\ë\È\î^‚Æ \0?ËµK¦M-\ÅøG.\àN\âz{~5½Œ·Wƒj\ãz…\nN:}kF;½69`–4c½˜Àõ¨u\ï¹\ÉYò\êo8ÿ\0‰e\Äíœ¬­\Zó\Ø ?I®+;ù\êO$õ\Í^½Ô¦µ(’G#3Œ.\ß\çTÎ§rH0\Åp¿W\áO\Ú+XQ§4\ïc@\ÂZ±+\Ê\ÈH\ÏW\Ô\Ömü\Í±+®\İ\Ê\ÜdgµQûmóœ˜S>®Âq¨g\"X\Ó\ØsÎ©TIh”Û¹f\ÊY\ÃùP¦C\Ëm\Î*S\ÓB²_]yI#LK(Bnn]˜Ÿ\ï•\ç­!Û€\åpY³XJm»\ìC¢\ï\Òæ¬º¸\Êa¥\í…k8„3\æA\äFyW$\Ó<Å’À³1\áP`^´\Ül\Î\æD=6¨\Ü\ÃüşFv\êJ¡ú’¹dÌŠo\İ!\Ç\ä)§sŒ…`I$ŒÒ¦µÓ§¸EØ£<5j=4D›^\Ñ\'|\çyp¿\äV‘\Å$\ís9¸\ÇKÜ¡,ıqŒ\ã\0‚Oÿ\0ª­\\H\"€1Û·8\È \í÷\ãÒ¬\Ã`\ÈIo-9Êª\íüi\Òi\É$f6#a9À\â·X¤Ş¬æ“„š)[\Ú\İ\Ã ó·l!A\àşU^gdù”\É3\ßü\æ·.ú\Ö\'Ü\åUe’\Ò\Ùö¬+$Fv>rÆ­bn\Ì\Òm\Ù\ê@\Â?™A|d2ô§|²i\å\Û\í9RÀÛœ}3R\Éj\Îb>\\‹¸\ç\0—\ë\Ç\áNû:e‹A)1@\İ\Ç\ëT±)\Z*qFl–³&Õƒ!\ç\'Æ£¨]#‘ñ+°Âs“Š\í4]\Ê÷J¸º¹‰Ä¤rƒ¹*=\Ï~¸«7ğö\å<ú\Ë[\İ`Kùe\ë€3Œ\çò£\ë/¡\Ñ\Z7W3-l-mt/I]¢Ic¶Wa\Ä}\îl“j\çn#û;\"ÿ\0yŒg9­\É.›\ìvVğ\îŠ\âğ\Î%€\Ç^§\ã\\Ş§$\é~cfRb„d\Óş™¬h:²“rwFµhÓ”³ß©§g¦ı²\ê\Ö%-º\à\Ça\ßô­\ê\Ğ\Ü\Ûi\Út\"\ãl_fó\äŒ\åIópq\×\å¯­[±²†\çÁ\Ü<şU\ÈEòŒ30g\Èzƒ8 \ÕÜµà¸º¸B\n¨§<(Q¦+–¤\å;Å½6Š§’\Ñ\Ûñ2\âO:dŒ¥\Æq[vw\İ±|²\0\ì\r\İø\Õ\Ì\é—PC«Y\È\É#¢LŒFó\È§>½+n\æ\æ-\æuL\ØÊœ\è9õ\äUQ«*\r\É;+øªj¥;J÷¾†§\Ú=½Io\':!1Á \â±ô\Ée’iI`HQŒ®s\Ø~˜­\ÛY¥2fù\0\Î\0?¥h³z\ÍòGVûœ°\Ëee6´$··H\Æ0@TJ:ş]ÿ\0Æ¹¤\ÑOVù7‚3LöWr. =`o\ÂN¿¥S¿–À•ó­\ZC\Èl~•\Ë^¶!\Â\Õ²\ìtB&©\ZT£¡«O(\ê|X&vÛ˜\É\ì\Ï\åYÚ•õ…‘E)3»Œ€1ù×œ½÷¢=:X¥¨´\î‡K0\æ IG\Úb\'»Æ¬ı\ŞT¦m¤dA¨M„!\Ã,\ÒeH j“KCO¬Áµt\Õü3·>÷\\T`( `u¨\ä™PcÔŸJo›ƒ×jgM¢ú#¶\";Â§®H\\ô$zûv­¾2J‚7xİ‘ıEE>‹w%Ä’ @’p3\ÍNšM×“´Æ¿0ÁAş5\ß*Š\Ê\ÌòfÒ“³,\Ø[\Ú\Ëó\ê3VwU{{y\â$†NA?ÊŸÓ¨#ğ®ŠsN(„\Ó-ZÉ‰3Ê´÷¹;ÂƒÕ†A\í\Çÿ\0ZªBÿ\0¾üT’\É\å¸\ã#$:Vu\ÛIXR¿BH\å(Y	$Ÿ~jkmNA\Ş	V †\ìs\ÓğªÏ“&Ye,8\ã\êC„\Î2r}\ë›\ÛK]uf¸{Jv’½\Ëÿ\0Ú¯\İó¥ş\Öoùæ¿f;¯İœsšM\æk>\çw±‡cv\ëMŠ\ço\Ú#b‘–+Š¦l4˜¾û[®?½8ÿ\0\Z\Ç{`}{b?\à{ÿ\0•>;+\0›\ÛP‰S;AXˆÉªNV\ÖLò½”Vòû‘§Î‘krC\Äe\'h1\İx\ëÒ“\Ä©¶H\ËmùÁ\'\ÏZ£\è\Öò+™®\'‘X0+=ªjñ®lO\Şl1şM\\kJ6Š¿«%\Ú6Q¿©šZ\Ædši%™Tcc \0gÓšf¥umpŠÀbPÛ²„)>\ßJ­˜µ“Ÿ¼ÀT^hU[\Óp\Î*ı¬õM\è	»\Ş\â\Éš4\ÌŒñŞµ%\Õ\ç–‹b*2•8õ¥\Ó,\í/ q9BH\Ú\0«O‡n\Ä=\Ã; dÿ\0!V±Q\ÒL§>gµ\Ú2¬#x§my€’¸\äô÷­‹­:Yl,\"X]¥BÁ\ÆÜ‘\ÓùóO2h¶\ÛIR”0[“ƒS[j¶r9Kx&Â©b|¼p>¦°\"m\Ş+B\Ô\å\Òùdµ¿Z2eÁ\Î3\è}G·J\Ç\×\áŠ(\")+\ÆU@\Ï\Õb\ÛW´”L\Ğ[J©\ïb#?­T¼\Õm.€e<NF\écò5T\ë%¼u)Ê¤´\åv2\ìn¤Ó£’;r¸\å‹\Ód—\í†\âl€\ÄdŸAZ·cj\á³71P\Ù2ğ3Y÷\ZˆÁX­­Ğ\Çó5¯\ÖI$„Û½¾ó[ûJÁ1²\Ş\åñ·9!sƒ“\ë×Šu¾£)IcƒNóRU*\ÂY	\àœö\ÇÒ³­õhÎŸ¹/af¦vûqA½–P_Ë†\à~ó`?€®v\ßc¡º‹[$h^\Û\êz›\Æó\ÃB5Ú 6\0­Sm;\Ëÿ\0]yi®dÉ¨e¶‰­\Ä\é¼uV/!¥0%ª}\Ó+¹_\æi)>\ä^o\í}\È|qF\ælI½!Måƒ»\éP}¦.‰1ÿ\0jOğ0¼hOú,L†\Ó\æùü\0«MeÀ(\nz¬K\êió4\'r½¼W³I›kv#.søµXM\än{™ „±\Îd ÿ\0.•NigrV\âı˜ƒ‚Œøü¸¨6ÛO˜\ç\×h_\æMo©<\ì\Ë2\ÛÄ\"{\èŸq\Æ\"¿­\Û}&\Ú\ÛşY«0\èH\Î+·\É?¸³óOmÛŸ–+¨\Ñ\Ò\ç\ìa.\í\Û~\â\Å\Ü\ã©\éjÊ¬¬·0\Ä)$¬\Æ\\\İAl£Ï•S=9\ÍR—R¨ƒ<fƒ\"\ímû}½\ë^]\Î\æ@òBY‡Oœÿ\0,\Ó%\Òaw°¡q—À:OS*	]İ²;«‹ø\Ò{*\Ò>d&L–S\Ó \äƒ\ÓÒ¡\Z-\ÌAD\×\êY[q9o˜zV šú\"6\\2\íP1ôMª\ê@ù\Ó\Ü1 m\Ü\ê§úW¡O‡J\Î-ŠU/²K\äc¥“j$«€ÿ\0ª­>m¦\ÍY#œ°Ü¯\ÜG\Ôv5<º\ÜĞˆ¤˜²1µGò\\c{óK‰¥(~\í4Ë¡Zj\Ít\äd™ıyMµ?öm¾1‡ú\îªQ\ï¶|˜˜©\0pyıj\í7~İ€\îCW”\êToF[\Â\Ê?d½ad–ó¹„,¹*\Ìq\Ï\âq‘øÖ…Æ•­¦\ÜI±’Yvqµ‚ª€ô\çó±ª€H„M‚Ë‚G\Ğö«v\Úú\Å	O´8Â™W\îşC‘]¸lR„m;ß¹p÷+FE•…\Í\Äo9xò¹Ã±÷®r\ãE½—\Ä:”O	#Ø‚G\0(şÖº8Î¤†_³\ë\á®^@ª\æ?_Êi—/r÷2j2I<‹µ\ä%‡§Òº>¯Ë­\Â3Œ/e¹Ÿ\á{h\åÑ»\Ê\ì \Ğuş´x\Ú(´INöùˆœb´SIH€øÀ*Cc¡IdC\ÉW¼÷‰n§=ô½\ìdœTù¬yİ¬H.l›\'Qœœÿ\0wö\"H´\Ù\æd€0*\×\Ømqk\0úF´yq¯\İEAŠuq.mr\èUJŠm;lb\ØX\Ü\ÙH\æuv‚vy­KY˜ıÚ˜ŸB*2H9{b¦[MIô6†3–Í¯™k=O§\éU/_\îg¸#š_5ÿ\0ıb¡¸\İ8Qœmö\ë]•±œ\ZOR¨\â!¦\Ù]\Üuık\Ä$y\Ö\Ävqõ­Ç·“Ÿp99\ã‘ylº\Ìp\Ãq\èÁ,A\'òõ5\ÏF\É\Ü\í–\"”\â\ì\Ét«\à·lz¡?\Ëú\Õ\ã/a×¯A4\ÜobVS‘r*ñÓ¥#‰\à\'(Ÿ#wLQ\ÅSJÌ­+’’1·~Ÿ\ài’\Èc°…R7\Ü\ã¥[O™1HJñ•ƒUnVQfñª¶[<\×\'8¥®qª¶–\ê\äğ\Ì\ŞJo|’¼“\Îi~\ĞÀ`*Z0ƒ+(\0«pG\×Ş2µ\åG¡\Ë	-“7\ì\î%hRB<Š˜\İJ1û\ÂG¸³´\é\ÙGª±ÇµLe¬ud<-&–¹n9>Ñ•˜ \\sÀ\Õi,e.J4[I\ày•\ä\àÒ¾\îŒv\r\ëG¼–ú²ÁË›\İzöü*~Œ*˜¥·Á™J†\àdõ©Œ\İp0jXn°\ç(¤c<Ğ®µ&\ê\ÒjV\Ø\Ê2{Ñ¾¶ŒĞ‘óZ\Â\ß@)<\ËOùò‹ò\\şF\ë)k\Ê\Ì–‰ÿ\0/.\ßõ\ÎıqO3Bğ¤¥\Ë\0Å;W$ñ\ï\éP™# cşü¿\à(\ã!‹\0\ç\Ô\Ö\ì=ä®®i‰V\ÊÔº\Åõ\\\ê	\ÏÖ¨¥à½º\â\0N<¼v©/|×²\Ê\Ã1\ÜÀ\åj¤vW±Fó=¤\ëBÈ¬\ã³}O>Í·}\Ä{\İ\ê“n£¨1P›–\ìT}\åU‰!°r¡f\Î\Â\âúB‘¨FI=‡\áZY%vh©¾‰Œ2±\ê\ÄıM_µ·²6±\Éuu\"3\äˆ\Ò\"\Ç\Ç_Â¢‡N¶–t‡\íŒ\îÍ´ $~gjG³\Ä0Gö·ò—\Ë \\òOõ4Ÿ‘¥8´\ïªùî²¼¹†%ûcjHU\éõ©,¥°7E½µÑ‘ƒ!gp;sPÁu¦[:È°\Ş<¨r3ƒN±š\ÓÌš\â+)‰w\äÏ’•c{ó0\Ñygn$K{	°\ãkŸ†j³\Ş(û¶v\ëşû;ÿ\0QRµ\å¸ÿ\0W§/\ÖY\Ë~‚š5œ\â\í¢ô@	ü\Îi¯O¼9t\Ùüİ†n\îœM\Ç\\\0\à~9¬‹QûS–³˜)$©”c\êk K}j÷ö\×S\ï°~˜©¢ğ~¡1Ì«\ng¼¸\ÕFª†\í	\É-\Ú_;œ•­»\År\É\"\á×‚õ¹q„{p¹ÀPG\ç]%‡ƒ-\í\æ2İ²\Ì\Är£*\äkz\Ş\Æ\Ú\Ìb\ŞAŒp3ü\ë:¸¨6­«%b”V¹\Çk-Áù\ÌÜ€_À\ÕB4šSˆa}×¢<1HAx£b:PqN\n\0€b°X›+$Dñi»\Ø\áb\Ñui~\ì\Æ=IÕ¨ü#u)\âhTû’\æºú1Rñ{Y¼Lº$~\Û\Âv‘gw›Ã£ô­´«+õv©õÛŸ\çWé˜¬\İI=Ù”ªN[¶GŒ \â“&)1Qs2\å’^\Ã\å»Ê‹œş\í¶æ²µ)m¬\íö\ÜmHp2¶3õ>Õ·s7Ù iv4…z*ƒ“ù\n\ão¦–ú\æIfW‚1Œ‡,\Û!]y¥\×DoCš÷[u:{\Èn!FNR¤k^™âŒ³ª !I\Î55œ–\Ñ\é25È‰I•OúwşU™}r·S©[v–~	Ç°<WE5\ïlz\npğ·™)Õ®\Ê\æ =Ê§_Î­i·\Ë\æ‘\ä §8¬\ÉbW­ •\ÕWs3\à=p;~ur\ËlP\ÈËŒ“š\Òp²zF4¢Ó“:²ô\ÂõŠ5\Çñ†úŒ\Õi|G5¼\Å&·GC)+‘\\jŒ\Çc©¦ù#““Ö˜vœñ\É8¬XüOlü<S!ö\ÃV”:dgŠ%Ğ¯m¨ó~Ÿ­5#P~\ã0^N)¥ø\"¬Y¿2}&\ÚFs\ÃÓši+‹\È\á@Nª\Ã ‡İŸÎ¶\Â‰‡\ÔP\áH\0€qÓ”\ÇD9\Êzû\Ôh÷G²\ë·fIöˆIñ8¦\È\è±t\nK\0\n‚XU\ÑS?t`\Z\Ê\×\í’=V\\’0û\Ü\Õ\Æ	\É+\îa,Ö·Ğ–ó\Ävvù–\Ç÷8_\Ìÿ\0L\Ö\çˆ/.IUq6\Æ1ŸÇ¯ò¬¢O\å\Å@ H\Ï f½\nt!8ĞŒUŞ§E¢\Ü\Ê`0>\íË’	\ã\ëøµ©\çH\0\å¹÷®wM½	w™\ÊÀ±R\0zv\ë\éZ\"úK\ë£2\îŠ\á#\ë\Ç\×\Ôzv¥VŒrOĞ¨SŒ\ä \ãn­”µû©M\ÊÇ½¼¢€\í\ÎrÂ³\ì¦h§«\Î=ıuk\\ \İFA\Îcúw5Z\Ö\ÖyAx\ã;q\Ä\ã4â’‚L×–İ–ˆé£•dEu?+ƒFG©¬ı6;´\ß	·v\0n\ãò©\äw\ï£/\Ô\\\Î6vL\İ:R\ÖÉ²\É|`\ädò0i<\ç\è$a85H\ÜZh¸‰Çµ5:4ŸC\n9Œsrxn¹«ˆY\ÈU™œ\ÖuÀ>aÀ8‚@«º-\Èğ)b0\nAÇµuIitJ••‘\×\Ø\è0.$e•\æ‚\Û\ÜÓ¤\Ò}\Ù\Ï\â´Ï´N‡W\Ç\×4¿n˜pX¨¼ö\æ\İ\îr\É\âc¯™^\âÍ­”1u`N8\ÅW&´wı´\æe@9\È\ãù\ÓN”Üœ¨\ÍRš_µ,RJ\Õ]™ŸšX\Îğ«gI˜tu?˜¨e²š$.B•^I5jQ{3uˆ¦İ®†\åp\Ùb\è\0\ëI¾ /F\ïzv5V;ô=6•²‡>¬7:·1D1Hƒı•”““Ò“\'\Ôÿ\0*\àsovxm\î\î)-\ê:§¨–ûÇ–¤1°UQ’r1Vğ=?>iqøRR³¸FVi]ıŸsw~R;y\Ùw…fX\ÉÀ\éúWge¡\Åe!{x\î\Ù\È\Æ\é\n ?…oóÜŸÎ›[\Ï\å¢V:\'Š›w‡7g\áY-\îRsp»Ñ·Œ\ÒE\á7yp¹\r¸\Îk¥¢£\ÛÏ¹?Yªúœ­Ç…^\"XnI\Ï\Êp/ÿ\0]6\ßH”†X-$\n\ÃkŸÎº\êOóšX•‰öóz¶\Ì\Ë/\ÙC3[,’õ%\ÆqøV”p\Å\Ä1\"ı\Õ“õı\r(qôú\Önm»¶K“–\î\âó\ïETˆ)1KE\0&)1N¤ ¦Ó©´))h C+÷Ä\Ï´1S‚\ï&Aş5\Ğ\ÔR\Å\ÜM\Z\ÉşøùÖi=UÊƒŠw’º9\Õu;Óµ\'“øm\Óo\ë\×õªòh·ó°‘ y9ù”É—?Ÿz\í¶(B®\Ñ\ĞŠ\\ÀÕª¯o…$oõ„¾¤sqé’=\Ğ\é\ÅCû¡q\É\ç¹õúU„Ò­„{^\ÙPwP?¯ZÛ¤5´·\Ø\Êu§%«2ãµ·ˆb8cQ\ß\å\Îi\â(À*#@§¨\n^1)\ê£ğ¨Íºö$~´½£z¶ev\Êf\Ú\0S\Æ1Yz¾“jmL¡]H\0†õú\Öñ·aĞƒúU[\ë9n-Z1ò’A\ÜF@\ÇÒ®Ö¦´ªII]\és„šÙ­òIO\Õ[¿ú,<ó±xü+&XRB\ÑH‚“†ğ\àúV„R ‰0ùT]u\Ò=ªi-V\Ä\å\êk7ù\ß\éU	©m¤Ã·Ò°’\Ğ\Ù=M\rô\Òõ¾22¸\æ²|A,±\Ù\ÄĞ»#y¸\Ê†¦\æiR²¹²d¬\İyó£\Î?\İ?øğ¬+]bøË€27€j{V[«I ‘0Xdc½m\Z.2O±“¨¤š1jkh\ã–C\ç\ÚH^ô\éR6\Ú;õ=\él¿\Ö7¸®\Æ\î™\È\âŞ‰š\Öö\ÖwO©\'\ï:ƒ\é\Ü\×Go¢\é‚‘\Î\Ù\ÎI\\ˆ%e8`r\í]2%\Ì	*ôa\Èô5\ÉU=,İˆXz·¼fO	\ÚM:\Ë$²¸Q€¸ÿ\0\ëÕ±¡\Ûe8\ã\0Ê³†\ä\ÉVeˆ8§‹\ë”\é+ı	\Ïó¬;\êeR…f\Óz›[¥´{!P«œzÒ¾}\È÷æ²†­8\á¶¨\Æ*p\Õs÷¡\Çû­YòKs–T¦®\ÚØ³-´\ç|7\ÕEQ—I³|ÿ\0£¨ÿ\0t‘üª\íP\ËõşTŸj…úH¿Î©s.\ä©N=Z*Ç¥Y\Â\n¤|g\'$óJmm\Ğ°B†\Ú2*\Îğ~\î\Ğ\æšrr8\éj¹¤÷d)\ÉJí”‹\ÔE\é\ïm(\é´ı\rDñ\Î\0R´€9\Åh­\Ü÷–\"œº \ŞsÖ‚\ä\ã±œT9`ü‚>£ª°:t\æù­vYK‰2Y÷\04©xòH\"™\Ûc®aT‰¦y˜`}h\äL\ÂXHj\Ö\æ\ÉÓ¬\äû­ÿ\0|\Éş4c\Ûÿ\0~O\ÌU!.<ŒóK\æ\'÷G,»œ\îxõghzšm8õ4\Ú\à8‚Š(¦EPEPEPEPŒ‡úÓ·úÊ™Er@A\èsE3üú\Z\\·\×\ë\Å\\u%\Ç\Ó\ëKL\Óiô”mQ@„¦Ó¨ \ZJu%E-%0Š¥{¬\Ø\Ø³N\ZOù\å\Üß\éø\â±n¼Iw6V\Ö5µCüOó¹şƒõ­cFR\èi\n3ŸÂi¢¶Œ\Éq*Eş\'8®SX¼‹R“m´—³©<);b?E\êßS\Ú÷S\îo6\æsüNwş°­{\r*h\çy\ÙSa\ÈA\É?\áú\Öñ„ik}N¥B4W4Ş½Œ nT¥F\núRñ\Æ}y=qO¹ÿ\0„\àuóıj\'\È$‚­·\Ôï‹¼S ½2$e\à‘”¡\ê2?\Ï56‡{=\ÅÔ‰#\ï<ŒqL89¡\àŠÉ=´\ÇieÁ\á\Æj\ÒRMn-3³\Íeøƒ=}¥\È\Õ-#Q¹–ñb’ft*N•«{l·°™™Wpb@ôÿ\0=kg5sG.x»¼\ëÒµ\ì-b¹\ÚEl«`08\íO\Ô\í¡·\Ò]!@ 2“§õ—gq,D„‘•H\Î\ã?\ã]\çM­W¸\Òz—\ï´ÔŠ\ÖIFùFv‘Ö³­\ÖŒ`\Õ\Ù/e–‰\Ø2°Á\È\ÅW\0`z\nqºM0’M¦‡\äõ\íWô«¯.C•ù_cÿ\0\×ş•™¾\ä0 \àƒ}(qº°\â\ì\îuJaz«\rÈ¸…_¹CO\Şk›–\Ú\Şú’¦—÷¦fšr\08\àô>´ùD\ìôc‹\Ó	b‡º¯\'Ú˜^˜M4‰p‹\İy¸9\ÇZQ{*cÃÆ«¦§Ê™ƒ\ÃSwº/NP2[0©“UlQNFx8¬‚i›<uS\Ğÿ\0õ¨öiô1–\rhnGqı£ûˆĞ‡a¸1<S$\Ón“şY†ÿ\0tƒTô‹Ák<\Ïòò¸úö­§Õ–4\İ\"¹\ÆPæ²’pvŠ\Ğ\ÅJ¦òA]\Ò\Ã<z\ÕMUwü½t\é}€X\È8ÿ\0\n\Û\Ë\Ô\Æ\Ş\Î3üéªn‡õ\Ù-%KŒ0\í\È\Ï5kûNOù\åoÿ\0~…Q¹\Äw2 \Æˆ¨÷\Z\Ö;‚´\Õ\ÏH \ä\Ò`\ÑEy\'‚4`\ÑE\04`\ÑE\04`\ÑE\04`\ÑE\04`\ÑE\04`\ÑE\04`\àÀdŸJ(§\ÔhÈ“\Ä\Úlw‚\Õ^I$\'\rµùÿ\0JÔ†Eš1$-”=1üè¢·­MA+ZXt’£2Iò¢ğ[®)\ÅÒŠ+Á\ĞL\Z0h¢„\Ú})0h¢€ƒI°ó\ì2h¢š\Ü]L+\ß\ÛC#Ck\\\Ê?À£ñ<şB°\ï5[ûì‰§1\Æz\Å\Ê?\Ô\ÑEzP¥\Ú\Èôğ”!5\Í$W¶·id[F7p?l\Ûh\0a®¤,¸‡óÿ\0õQEEYµ±8Ê³¤ùa±§)\nm†5Eô©0h¢¹ny\×m\êe\ëq(·G¡\Ë\à°\'ƒXfŠ+®—\Âz\ØO\áü\ÆL&Š+dn>\Î4Š\êˆQ»p•±\ÍVuw.\Å\\Ä¶_¨şurOlbŠ+Z?	O‰f“4QZ4\0Nq\Ød\ÑE\0_Ò¿\Õ\Ëşğ«\Ü\ÑEs\Ïvo\r†“M$\ÑE$1™9ük:\ŞöY•Â¼\äQEh–Œ\ÎOTO\æúƒI¼\Z(¡\Ø\ÂM0š(¦€t$ùŸQW£Gx&!€U\0²ÿ\0şª(¤÷\\¼ \Æ7dûÓ’úP\åˆøO¢Š†¥B›oB»»H\å˜üÇ“Ú¤\ìÀ½}è¢­\"–ˆÿ\Ù',5.00,6.00,55,'2020-10-23');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idproveedor` int NOT NULL AUTO_INCREMENT,
  `proveedor` varchar(60) DEFAULT NULL,
  `nit` varchar(12) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idproveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (2,'coca','12345','casa','3354');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puestos`
--

DROP TABLE IF EXISTS `puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puestos` (
  `idPuesto` smallint NOT NULL AUTO_INCREMENT,
  `puesto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puestos`
--

LOCK TABLES `puestos` WRITE;
/*!40000 ALTER TABLE `puestos` DISABLE KEYS */;
INSERT INTO `puestos` VALUES (1,'Gerente Principal'),(2,'Cajero');
/*!40000 ALTER TABLE `puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_usuario` (
  `idtipo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'Administrador'),(2,'Bodeguero'),(3,'Gerente');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsusario` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) DEFAULT NULL,
  `correo` varchar(40) DEFAULT NULL,
  `contra` varchar(45) DEFAULT NULL,
  `foto` longblob,
  `productos` tinyint DEFAULT NULL,
  `marcas` tinyint DEFAULT NULL,
  `empleados` tinyint DEFAULT NULL,
  `puestos` tinyint DEFAULT NULL,
  `clientes` tinyint DEFAULT NULL,
  `proveedores` tinyint DEFAULT NULL,
  `compras` tinyint DEFAULT NULL,
  `ventas` tinyint DEFAULT NULL,
  `usuarios` tinyint DEFAULT NULL,
  PRIMARY KEY (`idUsusario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Admin','1','admin',NULL,1,1,1,1,1,1,1,1,1),(2,'Fer','2','fer123',NULL,1,1,1,0,0,0,0,0,0),(3,'Alex','3','alex123',NULL,1,1,1,1,1,1,1,1,1),(6,'Andres','Andres@gmail.com','andres',NULL,0,0,0,0,0,0,0,1,0),(7,'Fernando','ferchonando26@gmail.com','ferluan123',NULL,0,0,0,0,0,0,0,1,0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idVenta` int NOT NULL AUTO_INCREMENT,
  `nofactura` int DEFAULT NULL,
  `serie` char(1) DEFAULT NULL,
  `fechafactura` date DEFAULT NULL,
  `idcliente` int DEFAULT NULL,
  `idempleado` int DEFAULT NULL,
  `fechaingreso` datetime DEFAULT NULL,
  PRIMARY KEY (`idVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_detalle`
--

DROP TABLE IF EXISTS `ventas_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_detalle` (
  `idventa_detalle` int NOT NULL AUTO_INCREMENT,
  `idventa` int DEFAULT NULL,
  `idproducto` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio_unitario` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`idventa_detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_detalle`
--

LOCK TABLES `ventas_detalle` WRITE;
/*!40000 ALTER TABLE `ventas_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-26 13:53:44
