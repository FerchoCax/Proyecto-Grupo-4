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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (8,'chocolates',2,'Bebida Refrescante',_binary '�\��\�\0JFIF\0\0\0\0\0\0\0�\�\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0�\0\0@\0\0\0\0\0\0\0\0\0\0\0\0�\�\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=�\�\0C\r=)#)==================================================��\0\0�\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�/bs�����*]�\�G�沈\�,�*H>\��.�\�ϓU;�W&�\�p}k=.�p\�QS%⟼��Nk7M�EQ3Ao�|\�U�mri&R�T#>\�ұe�P1$���g$�y\'�MO�SV{\r\�pznj\�u%\�\�<��\�y TY5@dr	ۊ�\\8\���Z{.UdO�Mݖ�z\�Y�Q�0�*��S\��\��R8 �5=\�jK�5c��N���0\�f돾h@ ������L\���I\�$�j�\�i܊�.�H���~(\�t\\\�\�h柊1E\�\�9��~(\�\�i��\\,3�9�\�Qp�\�h柊1E\�\�9��~(\�\�i��\\,3�9�\�Qp�\�h柊1E\�\�9��~(\�\��O\��\�a�\�\�?b���sG4�Q�.\�\��F(�Xg4sO\��\�a�\�ַ\�m\�\�\�\r\�3b���\ZvwF\�|�A\�#�;ѓY\���e\n\�\��P���L(��f\�o\��q�x�5\�D�d�k5\�I˳7\�\�J�vK�\�\�Q�\�=I\�YߕȬ�U�{�Hv�?)㎴N�J\�!6ޤ\�i&�{��\'\�qP��p>��A��\�,�}j7�G�g\�\�W9=I?^i1V��d:��/4�Q�\�\�V\�;�\\S�N\�,8�i1O#�LT\�ch\�;b��\�Q�v)B!@\�+�\�R�22��B1]��\��}1|���Σ%�\�O���*���%��c���\�X�)5�\�u<+I9;7\�\��F+vM2\�N�\�\�5R]\"T�\0V\�\�\��[*\�{�:3^fn(�嶖����\�E\�j���ͦ��1N\��q\r\��b�Qp�1N\��\�7b��1E�m�b�Qp�1N\��\�7b��1E�n(\�;b��\�Q�v(\� �1N\��p�)أ\\ъv(\���\�Q�.qF)أ\\\�S�F(�\r\��b�Qp�1N\��\�7b��1E�n(�b�Qp�1N\��\�7b��1E�m�b�Qp�1N\���\�7Fz\0*_�\'�~t\�x�\�\"�����5�>�\r��\�(�*\�&)\�sI��O��\�QN\����X�b�Բ�� w�\�%&)5uf5���w����\0�}�\�����A�#\�\rgb��r8>Ւ��GCgY�w��&�~�4�t?�#YIq*�\0~�Ԃ��\0�\�:,�Y\Z\�4o�`=�\�l\����r�q��<\\F{��*HG(�\0��\�\�B�\�Z\�i\n\�\�G�\�I4\��\0�p�C�\�R�o���\�V_�5Js^d�p~F!A�#���0\��\�j�\�l�2	\�\��ժ\�f�g*\rj�\�lQ�u.+s��\�Q�\�qF)آ��\�QN\��,7b��1@Xn(\�?P�1N\�\0\�Q�v(\�a��\�Q�\�qF)\�S��\�Q�@7b��1@Xn(�b�P�1N\��,7b��Z\�(\�;��b�S�K�G\�\�1I\�v\�x_O��IO�o�mmt\�V+h�܁�ָe��\�M���\�y4�K��6�ɟ\�\�FѴnQ�VS�����Mb\�?�o��I�T\�#\�.���sl��\�M8bޮj\�\'�J\�\�\�MrF1�}k��¶1\�\�i�>\���U?i�ZH�\�\�cu�Al�H9�\0\nζ:<�B�\�kC�ӝ�\�\�2޿�\�L�\\�Eכ*Ӗ\��֍\nq�R.[�\0Ǚݓ����Mǯ\�U\�\�\�f_M��\��Ռ\�fjV=i1O=i1_N|����b�Pb��E1I�u�ъu\\\��P�\\tc��O��Ê�T��Ԛ&󔎇>����P\n��`�\�5�Nln(\�:��ъu\\,&)1N���\�Q�u\0\�QN��E:�\0n(�Q@\r�\�(�	�LS��\�u\\\�u\0\�R\�\�\�\07��<�v�`\�\�N\�L����\�[��\�)\�\�N���\�1N���\�R▌P���ӧ\�d$pAb3Q���>ªUY/\���-��<w\�?B1�\�4�J�\�\�\�s��SHݎ\�����k\�\�`\�s�3�V47	p[`8P	lpr3\�L��:��U\�N�{�S�%ٛRj��g7���ʨ_�\�m!wf#\�$ӣ\��V��UQ���s-�B\�6�`�G!r}�뒧��j\�3������z�����\�7>\��\�y\'�[�\'2/8h\�?�I��V��\�\�x$�\�1�i\�\�2r9�\�9�\�}5ϔb�b�����b������\\\��\��\�&(\�.(\�1F)qF(�	�0)qF(�	�1K�1E�LQ�\\Q�.b�Rъ.b�R\�E�LQ�\\Q�.b�R\�Qpb��.b�R\�\Z�8�\�Cv\ZW,\�\�Z��U\�\�\�\���H|#+\�\�*�F���hGm�l\�[\�+-��\n\�=?��swp\\��i�\�	�\�mV��+��;U*p�\�We�\�c\'\�!�8�\�\��p�\����ͅ�\���\�NkR\�S���Ggl#I8�\�iթ��Y�NO[�\"�^�|y�C���Uv/	D9�\�F�ء�Aw{�DJ\�<�g\�m�BId�\�\�\���Y\'Zz�$���(;r�\�n\r/D��\0X\�\�\�Is�\npԴ�?��<���t!\'\n2OaRy3G�y[��$��rl�Z\�R5/�C\�&$�@���@�+�\��+A�2p1\�%ĢgVh\�C�\�EA]hsU�\�\�&(\�-���	�1K�(�	�1K�1E�LR8\�p;ӱU�\�\Z\�u@ś��\�\�T�\�\'�.�9NJ1WlÛ\�,\�O/o̸\n9#�s\�pF~������r\�яL��\�\rL�\�,ەˮ\�ܒ~�\�:\��1�8���)֨�wG\�R�:q�V��\�\\\�\n�̡�N1I���q�i=�U�@<��ts\�ֻ�^\���9\n{d��\\\�7#\�G֤�p>P��\\�Nn*��m�\�~h<Rys\��6�?�t_\�\�\�\\��\��\�\�[�\�C��\0B94��\�%}%ϕb��LQpb��J.b�R\�E�LQ�Z\\Qp�1KE1F)ت�R�\�`\�A\�1@wTq�<`� \�J\�2�\'��OsS\Z9	V �g��b��jg�85.*@n(�b����kᶖ�{��C\0@~�RM0d�r�\0\�du����\�v89\�/��\0\�#\�\�c\�N\�W�9Sj\�\r�#��\�S�$\�\'ԚJ\�^ژ�_A1F)ivg��\�7b��.b�S�IE�LQ�Z(�\0,�t����=X�Ǝ=iv0��_R1KA\�7j\�R���\��\�\�U�F)J*J\�]\r7t\�˲j�W\0�\��=Fx?�V2/�\�*,R\�S�\�Xn����2CO�\�X��C\�C�*�S\�\\︔b��\�ƅ��U$�\�Wd�(\�V�R�\0��]�(\�5]�);\"��5�[3\�Qv����U���(\�s��&�N��%�e�@s����ߟJ�|F\��`��_9�Y�\�I��[\�\�]\r�Q�\�\��L�\�Be���w�Ig�\�]1b=+����M�\�gR��ۙn7��iΏ ����\�\�\��I�=ԩ�,b�	z\Z\�\�.\"/\�\�_z�W\�\Z\�D��?�\�R��\�T?{+䩫M3\�4\�\�\�f��Ͻ3>�� �p2+\�8K�\�\�V��\�\��4\�a�̿�\��\'Ͱ\�*�q�Fj�1-�)��9�\�&Fh��\0:�x\�\�\��?�:r94��ɣ�w>`n(\�;b��n(\�;b��n(\�;b���\�S�F(�\r\���L�1\"\�s�j��я�*��by��\0\Zi6\� ��PJ@\�#�砪�n\�\�\�\�Q(��\�\0\�r�\�\�2I\'�5�I\0\� ��y�n�\� M�U\�{\�:�8�u%ԁ\�\��D�Ĕ��\�\�\\f��\\��s���EB\"RF;��ڧp1�J�Ч#9\��[��\02Ds�0`v\�\�\�ܔ�\0Y�3�z\�`\�0,l�\�a\�\���Q�\0\�\�\'aji�V즲�[\�v\�;�\�\�X6�4.2\�!?6kP`�A\���zʤ.�\�\�\\$\�\�q�ZǑo�@�`�F\��\�C��أ�h\�;_\�5u����\r��\�t�\n��I  \�zgޖ\���\����\�	X�G�;,:>��\�\�ݻ����J\�}\�r\�̍Q�\�ޡ\�8\��$�\�\�V�VV1n\�\�qF)أ\�!��6S\�k#�\�\�8#\�zZ�b�QR\\�qm;�]|@#�\0Seo�W�֮n�\�@1T1F+8ЂwKSG^mX$>c���p;SqN\��V�[�\��b�S�\r\��b�R�\r\�A|?\�.?뙫Q\�^\\\�U���\�\�v{:�\�+R�&\�H�0�e\� \�ם�\�\��e~�:�����\�\�c�\�E�Շzk���y+\�~#�\�ב\�آ3m\�;FqҒ\�̙�\�`�A#�\���z\�S|�64OKڬ�䁸o�@J\�^�0@oP\ry^�����Q����]���t\�s3\�a�*�9!J��+\�\�j(7\�\�w��\�t8��\�,\�pH+&2>��x�E#\�-�U��[\����jhQ�V% \�ϯ\�[\�q�eJPN\�`�\�*������㰓!��:TP�\�\�~n�\rk���<ƭ���Q�\�@vƀ��\n�!4��=�Q��iY���#�\�\�M�8��P\�\�\�y\'�s\�L��\Z��K�\��s�=\�&I\����2J�\�i�:~�XG7\�?,n}0���f�\0�2\���\�O*L�S�Q`�)�LT�����>\\e�(�b��Z\0f(\�>�\0n*�\�\�Z�\r�s}\�\�I\"\�71�\�=\�\Z������C\�SJ\�P[؊IT\�#�$��}�S�d�,\�r=)l�#x>09�P\��\���ǒ9&�\��z\��\�h<̒N	��x�)\�V�\�\�\�\�{�1\�$�rI\�	\' ����D��6��P�r�\�[��\�\�\�)\�22I��UOL皯�\00X20\�z�q*�\�N�0\�C\�>\�-\�\n-�c\0�\�\n���\0\�8 \�\�{�K2>�\��\�׃\�E\�}ێ\�c �\�\�O�]ܒ\�U�\�	�\�\�ށ\�pB7���rͷ���֕�\��\"��\�k*\�rK9;@]���\�\�S$\"Bw6�\0>\�\�C\�j��KF+*\�S1��\�tV����+i\�\�3\"\0�՛M\nĔ��\�Hb�S\�b�S\�b�S\�b�S\�\�3b��Z\0f(\�>�\0eV���\�M��[\�V.�qx=\�Z\�̫΅z{\�֌\�f\\�\\XA�H#\�P\�Ǳ\��\0\�X\�e�\�R��%�y\�I9\�ң/M/_-[Z�Ԟ���oʞ�LY�?Ҙm\��\��S��\�%s+�R3n�ٿ:i�/��:R�\��J\�Ԇ[Y_{ǹ���i\�4�U��\�ݠf�Ӝ���h/QM\�2U#���9\�I�\�[\��F�\��H\�:���\�\�\�\�]���m�I\r��#�\�J$h�e8`x\"�e+�=:5��]�I�꼓��\�Yd@Ln� �Tn&�\0�Lr;��\�k�\�\�\'\�\�\�Lџj�2|�\�A�\�=�s\���A{4a|���?5^\��\0s�8����i���HE\�	\�V�����e\�g\�ⶋ��\0�\0K����;�V�>���ϡ�f�\�j�Ʒ�\�\��\�r�\"}\�*N?!Y���-�ѥ���A,H\r\\��ķ7SMpT\�(v�\n��\�T]��>z�ew�趷0\�@\'��I$\0�G֥\�y֑��7R�\���C;�O\\�æk��SYaI|�Eq�\����kF��^dէ\�ߓ.b��׏�@\�1\�\�g\�qŮ�4����\�\�\�m\�:��u\�\�ĜĎǧ�dKsDO#<\�	oa��r@9\�?\�,�q��\�ſ����2�@\�{\��H�<��F��fS\�\����Je1��\'��4\�,G\0�\�z}iߩ��J\�-$���j30� �\��j\�{0\�\��\�F\�\�<�\��sE�SD\�.$�\08\�K�d�I\nO�ʩ\�AV;��\�lri\�!wH�ܡp���3ҋ�\"ܛ\�6�9\nH\�\\qLy?(\�#��\�9p\�~�>ԇ$\0\�=)\�9V\�\�Y\0u\�0Fߡ�\0*p��\�\�\�.\�횠�P�<�2���\�I\�1݃�T�ǌ\�~���\�\�܈ݳ\�I\�\��\0^�\\\"z����U�p\\�~\\\�{�ZW8\���p}{\�\\.<\�ԓ���\��\�oQ\��\0�*4\�\�\�ǰ�\0&�<g� q\���.��\�\0\�\�FF0z�\�R\�\\�[�!$\�Rz\�4�1\��?\�֐��\��q\�i\\����n!Y�G�\�Rb�M;T�,ĩXe��3\��\�b\�[V�l訧�\�\�>�\�S\��D5fi\�S\r\�!�Wc\�SRe|�3#f7n튑	�+\Z�\�\"ŴK �\�z�lv\�隬\Z�y���}\�#�\�\�;=\�gk�1F)%�8x�EBG�3Y��\'\�EOS�Г{\�\�RԮ$�\"\�q��\�1T#֥6��*A�$zc����\�RIr�\�\��`c�1V�gv+7�4\�9>\�RH%Yo\\�µd���\�\�<H�\�8W<\�2\'!�����攼�fbĹ�\�8�\�\�ֆ��b�\�U�l\�\\nx\�C��@\��\n\�\"��\�\�\�\"�(\���Ԗ�\���k{�x�`H\�\�Vhx}k9\�3���4\�]\�\�W2\�\�ޔ�\�)���Q��+X�\'\�O��֡p�2@��,�\�<�\0Z�\�\Z����\�?ƾF��zA�\�z�\�\r-QP�0�\\:.��\0>����׶7V\�h�)bA\��\�Y}Z�WqpFI�&�D^�&��l�\��5%��\�\�\�\�~�f���\���97d���J\�h;4��\�����ϣ�c�i��d�?_Q�5�ժ�\0+#\�C�8\�d\�	�CV䲸ILDb\�⡚\�\�\� Drzr+�E\�c�\Z4\�\��\0��њ�\"D1�ႀG��\�\�\�}8Zܸ��2G4}�\�\����\�O�\�sS����n��L\r��9k\�W=<�\�\�@�B�#z05�d�?ֱ�\�r3��\�\�V\�خ�\�\r�z�@\'�N�O��\�>\�v?\�r=�\�a��\0�\r�P#\n�JAt]�ɹyR1��X�I��d\�\r��~_�\�]\0�\�\���\�JL,Ιrq��l��Z\�y��BkyT�w�ӱ�:-E)��\��\���b�2Ł�}��V�ڼ3 V��A\�McD\'9�p�s��\�\�m:9�..d�c\0\�\�ǅ\0�\�\��\�9\�1\�kO\�3��Sw-+���\��+�>�~kBɜ;2��)w���nOc]�\�/\n\�5���<\�N�L�p�9�eCras�(|\�1�\�e�K,l$8zo�\�O>��&\��\0<\�%�\�7��j$\�CB���\�\�x�!. |H�t\�\�\�y6�uA�L\�>�w���\�C�S�4��:�\��\��\�v��\�Q��\�sSXJ�\�>_���\�rv���?\Ze��\�Υ2L\�a���Q�\�\�?�\�\�\\0�\Z\�A�#Hd!�V\�x\�I� �ē��5y,\�Z\��\0\�Bv��O�g[ު[����H>�Q\�E�َXI�v\�s\�\�\�#\����������\0=*��\�\�\�\�8@?�h�\�HcXX�`�\�;\�x\��FN��\�\�&\�̎0���\�\�/�0pA<JԚ\�%�{~\0a���Uѣr�0\�pA*\'��z$tS\�BkV\�i��\�d�zՇ|�O[�\�+�Gd\�\�pF@������ۈ��\0e�?\�\�UOv��\�*�D�\���5�H$�����\�\�\�OA\��\�Aesqp$�#n1\��w�{�C嘧\�M��\�\�\�\�t��Or�|�\�c\0Tmp�xR>��L\�|\�0��\�\0���y\�H ߯҇��ىRoq&���\�g,@�\��\0\�S�Ɖ�9\�*���U�GS+6@�\�\�_Σ#�_t��005�q\�r�\�\�W3*Z���iPs�OjΆYQ\�\�\�\�=I\��j5��\�\��\0[���:�M���\�	=I\�Ө�*�w2T�ot\���� ?.8\�\��5-��Z\�R�䃌�\�HK�;���-\�׊ap\'O/#/imS)å�\�\'�)31�\�H\�\�\�\�j,�\0}����\��gO�p��	#�>\�x!\�I?\�֓�ޗ%SW\�IA\�v�\0/�٧�%�bĐ��4���Yz��F�\�$\�\�Y��?�Խ�\�PmYnM\�\��ȭ�$�ҙ-\�\�n&ۗ\'n	�\08�:u�յX���\�\�\0�>���5K\�\�L�W�ax��1\�\�H\��\�\�t�+���)��_MOC\r��R-\�٢ݖ��D�\�ĬC(\���FkZ\�I.�\�9efMʨ9\��5\�鰲�%N�!O<\�=+��1K4���%C�8c\�\�s�Ү:T�\�J�����J\�F�,\�\�W\�-\Z��]�\�\�W�Z��\�Rdv� >@\�\�t�;He+�\�9���*�\�+1�C\�\�۹�q��B�++7\�Oz�=Nx\�(\�1\�y\"�}����\�Lч!��N+\�\�\��f\�Oq\��e�\�\�\�0\�\0g�����L��0da���\�?\�T$\�$:6\0\'�?�e^\��\�F�`y�\0\�W%y\�T�\�\�\�MƬo\�\�r*�\0��>\�\�+9q��g�T�Ѷ�K�ŲO;T\Z��u�WP\�V\�͈\�pW������&�\�\�~�N*����\��\0���G&�+\�F��R+0\�ۏ\��\�\'\�\��K�p2\0�e\�\�ku</�TZ\���)nu9 ��\�` d\�ޙ{kq`c[����w*�#\�\��Wo�\�\�\�c%�+eeϸw�wV\Z�\�\�-\�\�\�;L�#�+Ȗ!J�\�\\���$�O{�SK\�>b�\�XdPI�\�����Ζ\�@�P�3�\n�x��:A�(�\�ˑ�Ƭ��x�\0\�Qq\Z6rc��X\�f\�\��\�`jѕF2{\�\�\� �u��)�O<�k\0\�;t��\�\���\�\�hD\�?�t\�6�y�\�q\�K��.#\�<�W\�E�O[�>f\';��ϵr�5�\�1k\ZzL�B����H\�>\�0�֊�S�\�\�Ml7?\�V֫f,t\�r&ve\�(}�[��y g\�b�\�\�.���+Ŷ+q���\��$\n���ԺL\�Qp\�-\�h0\���\���j\�I(��mM��ަ?�o�\0>�~�\�)�hNG\�`�#�\0�*�}�\�G\�B�fS\�\�͋;\�,\�����T\�P\�|�\�K~>�:\�7\Z�\"d[H#HT`�\����\'\�ϧ5A%e�H�d*NO�?֛��\'i\�2N3IBM\�&\�mYr\�as2�Ԩ\�\�\�Q\\<��>ds(�FX�w\��\0�J�#��(�g;GʵuD���M���E\�\���g�ɩmū�6�\�\�tK\�˩�`�T@\0�\�F<\�ԟj\�S�8<�\�N�^\�K8aX-��\"�׃�Mgkz\�٩��\����\��\0_�b\�9;$h���_Z�����6�5\�;�����y\'�ɊI�g�2H{�3���7LK\r\�19b\�A#C>\�Jʧ%q�+�%\�\�T\��\'{\�\�\�^��Ơ\0?˵K�M-\��G.\�N\�z{~5���W�j\�z�\nN:}kF;�69`�4c������u\�\�Y�\�o8�\0�e\�휬�\Z�\� ?�I�+;�\�O$�\�^�Ԧ�(�G#3�.\�\�TΧrH0\�p�W\�O\�+XQ�4\�c@\�Z�+\�\�H\�W\�\�m�\��+�\�\�\�dg�Q�m�S>�q�g\"X\�\�s�ΩTIh�۹f\�Y\��P�C\�m\�*S\�B�_]yI�#LK(Bnn]��\�\�!ۀ\�pY�XJm�\�C�\�\�欺��\�a�\�k8�3\�A\�FyW$\�<Ő���1\�P`^�\�l\�\�D=6�\�\���Fv\�J����d̊o\�!\�\�)�s��`I$�Ҧ�ӧ�Eأ<5j=4D�^\�\'|\�yp�\�V�\�$\�s9�\�Kܡ,�q�\�\0�O�\0��\\H\"�1۷8\� \��\�Ҭ\�`\�Io-9ʪ\��i\�i\�$f6#a9�\�X�ެ擄�)[\�\�\� �l!A\��U^gd��\�3\��\�.�\�\'ܐ\�Ue�\�\���+$�Fv>rƭbn\�\�m\�\�@\�?�A|d2��|�i\�\�\�9R�ۜ}3R\�j\�b>\\��\�\0�\�\�\�N�:e�A)1@\�\�\�T�)\Z*qFl��&Ճ!\�\'�ƣ�]#��+�s��\�4]\��J����Ĥ�r��*=\�~��7����\�<�\�[\�`K�e�\�3�\��\�/�\�\Z7W3-l-mt/I]�Ic�Wa�\�}\�l��j\�n#�;\"�\0y�g9�\�.�\�vV�\�\��\�%�\�^�\�\\ާ$\�~cfRb�d\����h:��rwF�hӔ�ߩ�g���\�\�%-�\�\�a\���\�\�\�\�i\�t\"\�l_f�\�\�I�pq\�\���[���\���\�<�U\�E��30g\�z��8 \�ฺܵ��B\n��<(Q��+��\�;Ž6���\�\��2\�O:d���\�q[vw\��|�\0\�\r\��\�\�\�PC�Y\�\�#�L�F�\��>�+n\�\�-\�u�L\�ʜ\�9�\�UQ�*\r\�;+��j�;J����\�=�Io\'�:!1� \��\�e�iI`HQ��s\�~��\�Y�2f�\0\�\0?�h�z\��GV���\�ee6�$���H\�0@TJ:�]�\0ƹ�\�OV�7�3�L�Wr. =`o\�N��S�����\ZC�\�l~�\�^�!\�\��\�tB�&�\ZT���O(\�|X&vۘ\�\�\�\�Yڕ���E)3���1�ל���=:X���\�K0\�IG\�b\'�Ƭ��\�T�m�dA�M�!\�,\�eH j�KCO���t\���3��>�\\T`( `u�\�Pc�ԟJo��אjgM��#��\";§�H\\�$z�v��2J��7xݑ�EE>�w%Ē�@�p3\�N�Mד�ƿ0�A�5\�*�\�\��fғ�,\�[\�\��\�3VwU{{y\�$��NA?ʟӨ#�sN(�\�-Zɉ�3ʞ���;ՆA\�\��\0Z�B�\0��T�\�\�\�#$:Vu\�IXR�BH\�(Y	$�~jkmNA\�	V �\�s\��ϓ&Ye,8\�\�C�\�2r}\�\�K]uf�{Jv��\��\0گ\���\�o�濝f;�ݜs�M\�k>\�w��cv\�M�\�o\�#b��+��l4���[�?�8�\0\Z\�{`}{b?\�{�\0�>;+\0�\�P�S;AX�ɪNV\�L�V����Αkr�C\�e\'h1\�x\�ғ\���H\�m��\'\�Z�\�\��+��\'�X0+=�j�lO\�l�1��M\\kJ6���%\�6Q���Z\�d�i%�Tcc \0gӚf�ump���bP۲�)>\�J�������T^hU[\�p\�*���M\�	�\�\�\��4\���޵%\�\��b*2�8��\�,\�/ q9�BH\�\0�O�n\�=\�;�d�\0!V�Q�\�L�>g�\�2�#x��my���\������:Yl,\"X]�B�\�ܑ\���O2h�\�IR�0[��S[j�r9Kx&©b|�p>���\"m\�+B\�\�\��d��Z2e�\�3\�}G�J\�\�\�(\")+\�U@\�\�b\�W��L\�[J�\�b#?�T�\�m.�e<�NF\�c�5T\�%�u)ʤ�\�v2\�n�ӣ�;r��\�\�d�\��\�l�\�d�AZ�cj\��71P\�2�3Y�\Z���X��Ў�\��5�\�I$�۽��[�J�1�\�\��9!s��\�׊u��)Ic�N�RU*\�Y	\���\�ҳ��hΟ�/af�v�qA��P_ˆ\�~�`?��v\�c���[$h^\�\�z�\��\�B5ڠ6\0�Sm;\��\0]yi�dɨe���\�\�uV/!�0%�}\�+�_\�i)>\�^o\�}\�|qF\�lI�!M吃�\�P}�.�1�\0jO�0�hO�,L�\�\���\0�Me�(�\nz�K\�i�4\'r��W�I�kv�#.s��XM\�n{����\�d �\0.�NigrV\����������6ێO�\�\�h_\�Mo�<�\�\�2\�Ď\"{\�q\�\"���\�}&\�\��Y�0\�H\�+��\�?���Om۟�+�\�\�\�\�a.\�\�~\�\�\�\�\�jʬ��0\�)$�\�\\\�Al�ϕS=9\�R�R���<f�\"\�m�}�\�^]\�\�@�BY�O��\0,\�%\�aw��q����:�OS�*	]ݲ;���\�{*\�>d&L�S\� \�\�ҡ\Z-\�AD\�\�Y[q9o�zV���\"6\\2\�P1�M�\�@�\�\�1 m\�\��W�O�J\�-�U/�K\�c���j$����\0��>�m�\�Y#��ܯ\�G\�v5<��\�Ј���1�G�\\c�{�K��(~\�4ˡZj\�t\�d��yM�?�m�1��\�Q\�|���\0py�j\�7~݀\�CW�\�ToF[\�\�?d�ad��,�*\�q\�\�q��օƕ��\�I��Yvq�����\�����H�M�˂G\���v\��\�	O�8W\��C�]�lR�m;߹p�+FE��\�\�o9x��ñ��r\�E��\�:�O	#�؂G\0(�ֺ8Τ�_�\�\��^@�\�?_ʐi�/r�2j2I<��\�%��Һ>�˭\�3�/e��\�{h\�ѐ��\�\�\�u��x�\�(�IN����b�SIH���*Cc�IdC\�W���n�=��\�d�T��yݬH.l�\'Q���\0w�\"H�\�\�d�0*\�\�mqk\0�F�yq�\�EA�uq.mr\�UJ�m;lb\�X\�\�H\�uv�vy�KY���ژ�B*2H9{b��[MI�6�3�ͯ�k=O�\�U/_\�g�#�_5�\0�b��\�8Q�m�\�]���\ZOR�\�!�\�]\�u�k\�$y\�\�vq��Ƿ���p99\��yl��\�p\�q\��,A\'��5\�F\�\�\�\"�\�\�\�t�\��lz�?\��\�\�/aׯA4\�obVS��r*�ӥ#�\�\'�(�#wLQ\�SJ̭+��1��~�\�i�\�c���R7\�\�[O�1HJ��UnVQf�[<\�\'8��q����\�\��\�\�Jo|���\�i~\��`*�Z0�+(\0�pG\�ޏ2�\�G�\�	-�7\�\�%hRB<��\�J1�\�G���\�\�G��ǵLe�ud<-&���n9>ѕ��\\s�\�i,e.J4[I\�y��\�\�Ҿ\��v\r\�G�����˛\�z���*~�*�����J�\�d���\�p0jXn�\�(�c<Ю�&\�\�jV\�\�2{Ѿ��Б�Z\�\�@)<\�O���\\�F\�)k\�\����\0/.\��\��qO3B��\�\0Ł;W$�\�\�P�# c���\�(�\�!�\0\�\�\�\�=䮮i�V\�Ժ\��\\�\�	\�֨�ེ\�\0N<�v�/|ײ\�\�1\��\�j�vW�F�=�\�BȬ\�}O>ͷ}\�{\�\��n��1P��\�T}\�U�!�r�f\�\�\��B��FI=�\�ZY%vh����2�\�\��M_���6�\�uu\"3\�\�\"\�\�_¢�N��t�\�\�ʹ�$~gjG�\�0G���\� \\�O�4���8�\����%�cjHU\���,��7�E��ё�!gp;sP�u�[:Ȱ\�<�r3��N��\�̚\�+)��w\�ϒ�c{�0\�ygn$K{	�\�k��j�\�(��v\���;�\0QR�\��\0W�/\�Y\�~��5�\�\���@	�\�i�O�9t\��݆n\�M\�\\\0\�~9���Q�S���)$��c\�k�K}j���\�S\�~����~�1̫\ng���\�F��\�	\�-\�_;����\�r\�\"\�ׂ��q�{p��PG\�]%��-\�\�2ݲ\�\�r�*\�kz\�\�\�\�b\�A�p3�\�:��6��%b�V�\�k-��\�܀_�\�B4�S�a}ע<1HAx�b:PqN\n\0�b�X�+$D�i�\�\�b\�ui~\�\�=Iը�#u)\�hT��\��1R�{Y�L�$�~\�\�v�gw�Í�����+�v���۟\�W阬\�I=ٔ�N[�G��\�&)1Qs2�\�^\�\�ʋ��\��沵)m�\��\�mHp2�3�>շs7٠iv4�z*���\n\�o���\�IfW�1��,\�!]y�\�DoC��[u:{\�n!FNR��k^��⌳��!I\�55��\�\�25ȉI�O�w�U�}r�S��[v�~	ǰ<WE5\�lz\np��)ծ\�\� =ʧ_έi�\�\��\� ��8�\�bW����\�Ws3\�=p;~ur\�lP\�ˌ��\�p�zF4�Ӎ�:��\���5\����\�i|G5�\�&�GC)+�\\j��\�c���#���֘v��\�8�X�Ol�<S!�\�V��:dg�%Яm��~��5#P~\�0^N)��\"�Y�2}&\�Fs\�Ӛi+�\�\�@N�\� �ݟΏ�\���\�P\�H\0�qӎ�\�D9\�z�\�h�G�\�fI���I�8�\�\��t\nK\0\n�XU\�S?t`\Z\�\�\�=V\\�0�\�\�\�	\�+\�a,ַЖ�\�vv���\��8_\��\0L\�\�/.IUq6\�1�ǯ�O\�\�@ �H\� f�\nt!8ЌUާE�\�\�`0>\�˒	\�\�����\�H\0\���wM�	w�\���R\0zv\�\�Z\"�K\�2\�\�#\�\�\�\�zv�V�rOШS�\�\�n�����M\�ǽ���\�\�r³\�h��\�=�uk\\ \�FA\�c�w5Z\�\�yAx\�;q�\�\�4⒂Lזݖ�飕dEu?+�FG���6;�\�	�v\0n\��\�w�\�/\�\\\�6vL\�:R\�ɲ\�|`\�d�0i<\�\�$a�85H\�Zh��ǵ5:4�C\n9�srxn���Y\�U����\�u�>a�8�@��-\��)b0\nAǵuIitJ���\�\�\�0.$e��\��\�\�Ӥ\�}\�\�\�ϴN�W\�\�4�n�pX���\�\�\�r\�\�c��^\�ͭ�1u`N8\�W&�w��\�e@9\�\��\�N�ܜ�\�R�_�,RJ\�]���X\��gI�tu?��e��$.B�^I5jQ{3u��ݮ�\�p\�b\�\0\�I��/F\�zv5V;�=6���>�7:�1D1H������ғ\'\��\0*\�sovxm\�\�)-\�:����ǖ�1�UQ�r1V�=?>iq�RR��FVi�]��sw~R;y\�w�fX\��\��Wge�\�e!{x\�\�\�\�\�\n�?�o�ܟΛ[\�\�V:\'��w��7g\�Y-\�Rsp�ѷ�\�E\�7y�p�\r�\�k���\�Ϲ?Y����ǅ^\"Xn�I\�\�p/�\0]6\�H��X-$\n\�k�κ\�O�X����z�\�\�/\�C3[,��%\�q�V�p\�\�1\"�\�����\r(q��\�nm��K��\�\��\�ET�)1KE\0&)1N���ө�))h�C+�č\��1S�\�&A�5\�\�R\�\�M\Z\����֐i=Uʃ�w��9\�u;ӵ\'��m\�o\�\����h�󰑠y9��ɗ?�z\��(B�\�\��\\�ժ�o�$o����sq钍=\�\�\�C��q\�\���U�ҭ�{^\�PwP?�Zۤ5��\�\�u�%�2㵷�b8cQ\�\�\�i\�(�*#@��\n^1)\��ͺ�$~���z�ev\�f\�\0S�\�1Yz��jmL�]H\0���\��aЃ�U[\�9n-Z1�A\�F@\�Ү֦��II]\�s��٭�IO\�[��,<�x�+&XRB\�H����\��V�R �0�T]u\�=�i-V\�\�\�k7�\�\�U	�m�÷Ұ�\�\�=M\r�\���22�\�|A,�\�\�л#y�\���\�iR���d�\�y�\�?\�?��+]b�ˀ27�j{�V[�I �0Xdc�m\Z.2O�����1jkh\�C\�\�H^�\�R6\�;�=\�l�\�7��\�\�\�\�މ�\��\�wO�\'\�:��\�\�\�Go�\��\�\�\�I\\�%e8`r\�]2%\�	*�a\��5\�U=,݈Xz��fO	\�M:\�$��Q���\0\�ձ�\�e8\�\0��ʳ�\�\�Ve�8��\�\�+�	\��;\�eR�f\�z�[��{!P���zҾ}\��沆�8\��\�*p\�s��\���Y�Ks�T��\�س-�\�|7\�EQ�I�|�\0���\0t���\�P\���T�j��H��Ωs.\�N=Z*ǥY\�\n�|g\'$�Jmm\��B�\�2*\��~\�\�\�rr8\�j���d)\�J픋\�E\�\�m(\��\rD�\�\0R���9\�h�\���\"���\�sւ\�\��T9`��>���:t\���vYK�2Y�\04�x�H\"�\�c�aT��y�`}h\�L\�XHj\�\�\�Ӭ\����\0|\��4c\��\0~O\�U!.<��K\�\'��G,��\�x�ghz�m8�4\�\�8��(�EPEPEPEP����ӷ��ʙEr@A\�sE3��\Z\\�\�\�\�\\u%\�\�\�KL\�i��mQ@��Ө�\ZJu%E-%0��{�\�\��N\ZO�\�\�ߐ\��\�n�Iw6V\�5�C�O�����cFR\�i\n3��i���\�q*E�\'8�SX��R�m����<);b?E\�ߍS\��S\�o6\�s�Nw���{\r*h\�y\�Sa\�A\�?\��\��ik}N�B4W4޽��nT��F\n�R�\�}y=qO��\0��\�u��j\'\�$���\�S �2$e\����\�2?\�56�{=\�ԉ#\�<��qL89�\��ɐ=�\�ie�\�\�j\�RMn-3�\�e���=}�\�\�-#Q���b�ft*N���{l����Wpb@��\0=kg5sG.x��\�ҵ\�-b��\�El�`08\�O\�\���\�]!@�2������gq,D���H\�\�?\�]\�M�W�\�z�\�Ԋ\�IF�Fv�ֳ�\��`\�\�/e��\�2��\�\�W\0`z\nq�M0�M��\��\�W���.C��_c�\0\������\�0 \���}(q��\�\�\�uJaz�\rȸ�_��CO\�k��\�\�������f�r\08\��>��D\��c�\�	b���\'ژ^�M4�p�\�y�9\�ZQ{*cÎƫ��ʙ�\�Sw�/NP2[0��UlQNFx8��i�<uS\��\0���i�1�\rhnGq����Їa�1<S$\�n��Y��\0t�T��k<\�������Ֆ4\�\"�\�P沒pv�\�\�J��A]\�\�<z\�MUw��t\�}�X\�8�\0\n\�\�\�\�\�\�3�骍n��\�-%K�0\�\�\�5k�NO�\�o�\0~�Q�\�w2�\����\Z\�;��\�\�H \�\�`\�Ey\'�4`\�E\04`\�E\04`\�E\04`\�E\04`\�E\04`\�E\04`\���d�J(�\�hȓ\�\�lw�\�^I$\'\r���\0JԆE�1$-�=1�袷�MA+ZXt��2I��[�)\�Ҋ+�\�L\Z0h���\�})0h���I��\�2h��\�]L+\�\�C#Ck\\\�?���<�B�\�5[�쉧1\�z\�\�?\�\�EzP�\�\���!5\�$W��id[F7�p?�l\�h\0a��,����\0�QEEY��8ʳ��a��)\nm�5E��0h��ny\�m\�e\�q(�G�\�\�\'�Xf�+��\�z\�O\��\�L&�+dn>\�4�\��Q�p��\�Vuw.�\�\\Ķ_��u�rOlb�+Z?	�O�f�4QZ�4\0Nq\�d\�E\0_ҿ\�\���\�\�Es\�vo\r��M$\�E$1�9�k:\��Y��\�QEh��\�OTO\���I�\Z(�\�\�M0�(��t$��QW�Gx&!�U\0���\0��(��\\� \�7d�Ӓ�P\��O�����B�oB��H\��Ǔڤ\���}袭\"���\�',1.00,1.00,6,'2020-10-12'),(9,'Coca Lata',1,'Bebida Refrescante',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0C\0															\r\r%\Z%))%756\Z*2>-)0;!�\�\0C	,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,��\0\0\�\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0K\0\0\0\0!1\"AQaq���2BR�#r��\�\��$3b4STs���CDc\�\�%t�����\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\05\0\0\0\0\0\0\0!1AQa\"q����#�\��2B\�$�r�\��\�\0\0\0?\0��\�v�^^_W�k?F\�㹼KkG�\�x{�*�\�S��V\�R\�,�\�D��]�\"�>۟\�Y)~�\�\�v\���D�$۹�H�>\�*Zi#k�i�h\�{FH=*լ`�V�E�L#pA!�#��֏K�\�Sq\�L��\���\�Ƴ����\\<(\�\�\�@Z���0���#�\'\�Vr\�T\�\�H¨}�I#\�	\�=�L�9&v|�oa/`{\�>?�.\��4�\�5Iմ��\0��\�I��x\�\�Ԯ��w(a�$SЂ\��\�B��8k�=�P~KP��O�Q\�{\�t�\�\�/���Z��{���O�@~u\�{p:N�\0?��MR�O\�G�\0M\�\��\Z��\�VX�\�\�~�)��J��\rsT���\�\�DG\�\�|J�yu\�y8���5\�\�Ю\ZJ�\�\�\�5�c\���I\"\�BY\���,wʵv\�\�C\�-�)Wr�}�\Z\�K+y�^\�\�Y\ZY�{78bv/�QU\��$h�����A\�\�gN�\'q��Ԑ\�?}X\��B�h�Xby�.�\�`]6$�\�M��\�\�$\�ȵ�\�mgV�1�\�\�FʒGhq\�J�\��_1C=�\�1ampFz��?���\rK��\��\0��\0�\\��q_�h\�N\�\�m,$�c�\�\�;�v�Q\�f%�P�w	\�Oij[�c}�|\��\��\�\��\�m�g���\�[\�K,�e>֓�P	�HSe��������\�u\rR�_j\�GAK`r\�GD8\�<��5{�U�-P@��soQ��S%\��?�֜j\�1��\�*\�_�1N�6��\��v��;nQ�#���P\'�3STӾIC[\��,\��Kp��\�\�m\�BA؄mA\� `�ZAw���q\�03K+$��Y\��w��R���R��w�EE.�\�H2KO\0������:����]%�7�VV9\�z�\��\�\�`\�%i�`�H�\Zs�\�b�\�\�~�܉\���P�\�H��U3�I$�y\'�}i\��&�,7�\�H�[t�\�n\�ls\�q�9��(7s\�\��%\�\�*�-$`7���4�k)X\�;\�mcb9g\�寪�!4�#�w�!r2v�N3R\�YXe8`\�\"5- �j�fU\�$s�\�`Fx\�\�ʜ�*�F���`���/h��l����:a�/o\"�QQ��@�j5\�\�-eUH\\8&E%��_\�T�a\�i̖7��h��\\\�L���<�����=����\�\�GwrE\�C\n	Z\�4\�\�(�7�ӡ\�~�M�7�IſFV9B���d�\�d�g$���kIy:�Q0FV(0]�8\���\�iW-iv#�*�\�&1��\�\'?}i�\�\�M:Y�\'�\�\�\�L��W�/>��>]\��j��z�/�����Ӑ[v\��\�hw73\�[�˳JG,\�$�i�\�Z�\�\�\�\�\��6�jg%�rO5~�p1\�R�e{^�\��wڬI \�֔ݰ�/i�+���3\���?\�m$���\�K���cwA>x����\n�;\�,R�%v��L�\��\�\n�\�f �\��ET54�p\�*�\��\�\�+\�wp�¯>B�N�y7��3�\�j�\r&\�Sh#�\\�FrA����\�\rf{���vJ$$��UI@���V\�[ۈ�\�\�\�\0H��s^i�1�\�V\���\'\�%�,\��5�ڲ<\�\�j~��P4\�*���8ʒq��G��,@>\0\�pG��_(\�{I�����\�.\��=�\�\�Ў=�}R�3e��\�8\�ݠ	ݬ�^�+{\�V\�\"W��u\�p�)�\�_\�\n��\�t\�\���>ـܒ<�����M5�\"\�0?�/\�w\Z4\�>��w�B\�V�e���N�\�$p;9LH\0��^&a:�	Y\0�6]�ռ����	\\&�`o	Ooױ\'�ɞLg�����\�\�\�`����l��� �S\�\�U��5��q�2���\�\�H\�T���\�\�m&\Z��hC?es�\�b2bu=Q���\�;7(8��\�hhx�\0\�\�\�\�V6����,V��\�8=X/tm⾟�h\�\�\�bZ6�H\�ò��\�c\�r0=ie�Ն��h\�J\����n���d��+)㌹\�^ẋv\�\��4f�\�\�%$1:F\��K�\�dz�7R\�\0]�\�cV\r�[\�S=N\�is�\�Ȓ���*=��C9r\��g�\��c��\�]�\�՘�@E�ԭ;�\�\�7?\�\�mTŖY�%\��\0G\�^�\0I��w/#G�ـ�b�\�\�g\�Q\'B�?\�q�\015�� �346G\�u���RI�s\�Ɲ]�я\��՟\�#�[k��\��\"t\\��9�\�az5ec� ���))\��緒\�a�9Vi��#2�l�G\0\���q��\0�O۠4j�\n��^��L`�<��\�\��!x\�Zkonё�	��D\�qX�\�^�r�\�\")�j���c\�\�+\�ol\��T~���qO�>�<\� }��W�\�87\r�;\�\�����\�v\'W\���G�9��Q�\�S]��\�S����ؓy\�M,�p�\�:QZz\�q�\�0+И\\\���.,\�O@<)(�W{Q��\�M�W\�U\�$�g�\�I{펃#��(	8?�GO�+\�\�ܢ�X\�>\��\�,���\�\�,\��\�\��]\�͎�qh����\r�{\�����SȦӵ(\�X6�\�$Mݔ<u\���\�-&{��u\�(\ZD�$v�8��Y�K�P\Z\�[9b9l�fd~�\��>\�\Zj7��=u$3Jw@��E��1{��a&�u�-$\�����q\�\�}��I����0h��|wU�,`\�1��\�T./��%,�%ŧ\�ѝp��\0er��\'��ͮY5�\�c+�F�\�ApW,��{*dFۋ�\��VN#s\�\0�_Pyxd��\�}1�1�\�6z�`�_٘��[\�:��\n�\�\�\�L�\0)�_�\0*�異6i=¿�n)Xz���\�A\��m���\�\��\�yf�/\�Y4�K&(�|O�`���C�#<�>�\��\�o\�{��K6\�&\�;\�Gwh\�85r�\�6�_=�.d\�ˊ\�]�\��M&��7��)\�u�ꓚ�J���\�F\�\�+(��|lh��g�\�U����\�i�Π�\�f\���V�\�$ǖ:\n+�8\'\�k\�w+,\�\�r~\�\0*k�\�\�\�\�s\��\�\�\�\\n�p���iZ�=;�\0�-yT�g<\�#�?x�\Z�?�����n���\�*וJAq��\�$\�O^\��[?�\�q\�\�\�Ԓ\'9\�0h�-��νhy�\�\�;��G\�\�d#ȍ\�-\�BzӚ�C�\��\�	p\�\�6IS�\�\�J\�\�+}��\�.Fv\�mG�*\�>\�V�řm\�r\n�ݸ\�><<�������>\�MB2�����~\�m�c����^%Λ+Oo�[˸<�O�\�O珇�j_i�J�Ib\�t��*M�\�{)]\�n�\�#\0��{\�$M�1��\Z�;\�^y5�Զב\�	F\�FR0T�Z\�K;����V\�[#)$ɓ�\����=y�\�Y\�\�^ݘ`\nX+H\�\�j\"/Vc\�Nmm\�m�\�,olg|a\�I�ځ\�L\�\��,d��\�^�6K�_g�9�\�q&��\�\�ڃ�BݪJ7Er�\�\�� շ�E\�Awj\�\'m�3\�[\�	\r.�4�\�\�m.\�\�t�\��\���ʮ����N��cX�X���=\�\�O�q���\�\�p�ݦY#�Z�@6Џ\�=l�D\�\�\�\�<�ך�\�6��\�\�|V&�\��|�q]�\�\����\��\�M��s�\�\�\n�������\�F�Ol.#N\0(Y��\�\�\�[-3Q��\�\�\�Y G�w�W�?t\�\�#Ƽjde\ZC*��\�\"��K3�?:\'J�\�u	�Y\�$�;\�\���\0\�S\�V,��Ya*��qu��/_�tuB��0NT�>T�~	�En\Z\�O�v\�v\�\��=6��M\'�f~>\�Y�\�I�\�\�\�\�\�\�X�%�2y\�4Gao��|.2݉\�,��9�ܞ~9\�\�\�<\������MI�f�Y\ZS�%d9ysZ�(����6\�ˀ\�ȹ\�qH`�9��9.%�kRI�\0�>\�\�d:f���{7l���W$n\�܂�ee<�\�p+~�i�A�^\�`Qb^\�q�\�G5\�d*�{�\��nzt�@֗[}\'W�\�\�\�ms�\�z��\�8�?�;\�q3\�)�gd�9�+M�c^	>\�t�sǆ:z\�cTX\�\�\�zf�|�$��I��I�.N\�\��늁9-h��Gis\�-o8\r*\���;H\��<|�>\�\Z��-�3G�\�I\�\�|\�\��\0G�Ȓ$�oM�3�\��:ya�\�w�\�u\�.Q\�a������\�=Ă\�\�d렓gHe�6[˯\�\�6�p�\�\�d\�\�\�v`�\�#\'\�<o�w�\�#3Z\�3�#$	S\�g�\�W\�hi\'\�m�\�-q�R:~U\�;��5\�vӰE 3�\0鰑�1\�}�GY�Ҍ��2W\�?BAw�)m�\�s�=MZH��$��\"Ձ\�u�$j�\�y\�gH�b\�q$,�LrFz:d\�ڌ�}\�\�ul\�J؞#*wc��\��\�ϯ�G�\�\ZGv�<��x��]\�=~U\�%��N1ۖ�[a x\�}|uJ�\��I�1Ź\'�ܓ\�ò��.{\�\�S�kI7a2|3n\� ��\�B�\�\�\�u`yΝh�\\!cd\�6�\�Ջ��\�=-�kME�\���H�׀ѱ\�쯴�-b\�\���U\"(\�\�\�I\�G��*j>�ؐ�IX��\n��i�\\�Y��Xi\�޻⻦5��R�\�!3\�\�&\�07]\�\0�\�}\�e�ztBb\�Y�$\��-\��~\�@� �\��\�F\�5\�\�:�\�U9\�\�Qݝ\�\���cxĮz\�f�\�\�\�\��W\�\�T\�j\�`yT3&\�\0�?ʬ�U�o%St�]\�\�����\�uᗚ�y�^zc�3\�^��]E4:�\�e\�\�%R\�8e\"��\�- |\0̬Xdg!�<\�nj�TL7\0�\�\�\rsO�\�\�\�\�8\�<u�\'�8�URI�=y9\�֮p#$x��s�\���\��\�@\�X`��+\�\�i�\�s~\�C�v�8�\�CQz�Յ\�v��ۂ\�)�T(+�:�#�P�+,\'Ht  %�\�2\0��\�\�\�\�餖Xf\�6c\�Ċ9�最Ӆg��\�E<n�\�\\�p\��\�r�دJ�e\\W��\��~\�\�\��\�qn���2@\�cü�\��V>+o�\�<z���\�R���\�H���®�)�\�dF/�\���T+\��\�`�\�m󙓅\�B]�O;��v�\�{��\0�\'\��iۍ�����\")�\0�X\n�T�\�\�M�\�#3G\�\�Ơ\����4�j����\�lt\�\�[�\�43�\�̌\�\�#\�gv��0D%�����ԝR�\�\�ʌ[&�x\�T\�v�\�\�\'\�D3���~B�Q�	��\�?��\�\�j?�L\�\�u5\0�-��7\�\\Nmn�\�\��?�\�\�N\���O��\�\�mamo\Z�@�\�\�{���\�ۖ&IP2�ʐ|H���(\�bs	4n2�����n\\x-\"��$f8\0u�?\09��\0�\�\�TE.�Q;�g\�W\�\�umlm�\���)\�\�~\�\\J ~9x�(\�\�\��\���\�W\�dK�\�D}D�?�\Z6<��{B����$0o.?:�\�#\�\n`\�,\�V;�\�dT���4\�8ڝ�\��4I\�j>H�U\�6_5\�ɳ�\����݂\�\�\'*ßug�wɧ䁔BNz�\�Ju�E\�E$j�U�\�\�NIf��M.�U�\�\�\�1��\�\�:\�?�Zݎ\�	��X�p��ǌ�\��\n�\'�s׏\"G�5\'l�j1�\�\�MA<\0a��NN*\����\��\�c��-\� \�봎>\�\�+�a�\�R6e@�F�;��\�	�a\�\�(nW����\�\�\��Ƿ\�GZ���e涐ڱ\r*��P��\�\'\�?�j�\�c��\�\�ܶF�K\�9#�5k+\���\�i?u���\�zoƏ�L�%� \�\�s)\��퐐w#\�9��(G�ӵD6\�\��1\�}�P㟁�,m�Ka-������vnO@�ǧΟ\�1�Y�bq�~Ň\�u>�;wnm.&��=�wX\�nC��|�4L�=2`����~x�uOy �\�\\hnn5T�\�L�!fa�ڣ$�x`qL>��\���/pv�H\�m`?<{)f\�,�\n�J�d��fm\�\�/\�LOxz\�(ƈ�\��a\�K\�3M��\�t\��/\�@<�d}\�\�G�1V\�n\�7t\�\������2\0*��Ic�\�ƚ,f(�\�\�{P8\�ݞ��+0G<��R\���9%�c\"�i\�_]\�\�n��4��)\Z}�\��{j�F��\��\�\��\�q	�\\�`\�\0\�A\�dw�\'5\�k��\'E�X�\�\�&�]\�\������Mq�,e^��6��v�J.\�ds\�xc\�zQ+(\�-\rq\��A�f�M�NE�\�!as:g#\0�\��~��\0\�w?�?�F$|�c?}�W��~8h\��4�݋�x)TшW�Q\�g\�֩��e\�\�,\�\���Goko١�v�yp~\��\��E�}@\��\�\�\�\�fp2H�Cg1c�a���\�j�\�:[�;\�#Cm._x�����<�G�2��rä�\�A�m�IW\��>\�M�^\\\�z�\��$�\\���{59\�<�|Wv{\��\'Tѻ���{�\Z(��\��¯�N\�X%\��R���R	�\�c$ڄ\n��{^d$�X.\�\�Hr8\�;OR1�c\�4~��,�i�Z\�\�\nNdI\�#�\Zbcb���%\�Jъ\�\�k\�\n\Z\�\�{y\�xOg�˺�ʓ��<��]5�G��� �{EY[��\n�怓F�fg�n\�y\�d\�@m\��������x^^\�D�:ph\� .ݣ\���h���Ъ���\�\�ޒ��\�ON��Ui?\����B�i\n���\�(��^Ab�n�RI��ڙ\�����\0\Z\"\�\�QƇ�!W<�d\\\�\�\r����|[\�\�]��E<�7�ԿO�q�\�`#\�/T�۾�C\0V�\�{=DBC\�!��\�Cǟ5�*\�p9g!@�%��Ցvh\����_>Qk\�Ê-d�:�d���M&\�^(m��Hb2\� fr��\�ϟ4Dsi�J�*�\�\"\�w۴�\�qH\�B@�Y�����}ƈڎAc�˒S\�ږ�*�9\0�>�\�\�\�\�>͏xr�8*|\�*E��ϸ\�q\�r\�p���\��\�(\�[�A,;��-���ђ��\�\�yտ]_\�®�F�\�S,�JX�^P\0�Ew�\��\07�\�S\Z\�\�\"\0�\�Q\�p>\"�Bs\�V=|�\��;\���j�C�\0��z\�8j�\�ҕk�a~\�\�iy����%�D<��\�_���\�\�e}�H%V+\�����\\e4R�G\�f=B\�\0���\�a!k>?�uo�\�\��A��f�\�\��y4D�yjv�cT\�\��J��y錟g4\�G�%�\�d\0\�v��6n���\�\�Q�@\�\��ε��#�\Z�+/H�질�/2�B��\�,\\|A�;�\�\�h����\�\�\�m\�y|�\�\r�}}h�s\�9h��6{ç_1\��醗�+�\�.��݆Bq�t�\�<?�S0\�ŧ%WP\�\�L�?�\���\��4\�dRN\�\�\�.V���Y�.4y\�Us��\����5�ъ5�,�6џ\n@\�Ǿ�M�\�C9�k�,\��\�\��=s�\r3�\�\��\�ẎDhTY\�VW\�9F\�%zB�\�(~\�zH1\�D`\�g<������ydy^r\�d/\�ld�w�v���\�t�\"�ybDV�\�FFtpU���>Q��M&a\�n�\�|\�\"(-�i��\�\��[#\�\rǕ���{]KO�öY�ḃ���%ƍ\�-;��x\�)~�����\�;5\'�\���\�[�\�jZlfN\�@E2HFv���\��\��L�\'�����\��\�\�o�\�\�@1\�5h�D\n ��q�*##>T\�`+rU{\0��\0�֠MwE\�.\�ϭW���\�\\�����O\�湏L|���}�\�EQy��\��c�O�`/�:]\�\�\�N\�?H	�\�\�U�\�8�C�<\���\�EN\�s\�	Z�ڍ�Z���bp<\�\�J\�{#\�\n:u��0\n�\�c����G\�樸=\��E��v�ϴY���|iKY�Z�:�a+U����G>֚2;m�\�0=\�y�\�{Q^\�\�d����X\�\0�#>>G��}�A$rB�d^�X\�i\�\�Z;K\�MALl�\�D\�9\�Jg��S1�0�Ȫ\n�K�]\�\�\�(�\�n-\�q̢d\�T�D�y���t5�\0���-���?��*o��4���\�?\�PY\�\��T�f��vǜn�>d�L�\�\����egn�O+\���C\\\�\�\�4\�2\�\\�\�3\�Ẇ�Os\�{pW�\\��dZE�\�;DG\�\�vR��\0*�<�qDjѬ��\�Pq\�����\�	�n?��G��\�\Z�\�35\\;\�\�\�\�\�\�\�\0Q:-�cb�߹s9�S�O�Ͼ���9��r�\"�8\� \�ƋUUT�B� 8�џ�\�{��	��sV`cZŚ�S4�\�\�����<�O��Z�p��Q\�j\��\�Y\�q\�j%y|\��n�3`�\�9�G\�(ev限xd��\��o\0\�s�ơ��*%�GK]I��\�9t1�\Z\�\�m��7\�d�%�\�\�d/Ӹ\0<ElX��f\�(Bٛ��(����>��^/r�0 �r�}lĬ��{���B\�l\�d%��D\�\�i\"\�ξ��&�ch\�\�Z�G\��M\�=.\�U{\�\�a�\�S\��y%\�\�<�\�)`\���=\�V�գ(Y]I!��A�#�|4MAZ9#��\�$�R�\�\0r\�e\�|y�_F֑�=p\�p�\�J�\�\�B�u},�\�F��ꈱ֮\�D[�\'�d\�˨>�MS\\ӏ\�[�>F5o�\0V��\�5��\0���~\��\�麹?\�O^���T\�\'��\�VOE�$\�\�\�y��H��\���\n�\�b�O\�Uz,r\�5֣9,\�Z(ٺ�q�� =���۬/k=�-��\�B=����q卼p\�۫\�c@����:�yg�&��y#�I�UrR\�@b�\�\�\�\��w�L�ʫ�̪̪�%�\0E�ѧ�\�x1q\"Y\�f����\�?\�Z٤b�\�\�(\�=���s�@	<S�hs�<#&tq�1��L��\�\�s�\\\�\�y^O���<�\�B�\�1\�z��\n���\�S&�b9���u\�\�޿�Gp5�\rI�\\\\��\�\�\�K�?�B];\�ֺ@\�u|X�!�j�{��02|G_i�/ &��H�4iX��I?D�|V�%9\�5[\"�ҸZ\n\�y	&��\�?\�Q�\�\�UF\�\\N\���>@�\�<Q�\n���+�l��+�}x�n?���\�`�\�dyc\�\�!�\0���V�\��\�ʥ{.on=�\0\�M#�r��\�߳��\ni�؍\��\�\�>��&�\�\r�d�!�϶���}\�\�DQ��Pʄ�^\r���ވ\�����\�U�\�\�\���i͟t\�\�ƅ�c\�F�\0�����3�\�\�q��ֹ�*\r\�D^��5T͌\�Z���\�׆ex�[K�\�pz�\�l�\0�|\r/\�\�\�_�\n\��\�',4.00,5.00,200,'2020-10-24');
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
  `tipo` int DEFAULT NULL,
  `contra` varchar(45) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Admin',1,'admin',1,1,1,0,1,1,1,1,1),(2,'Fer',2,'fer123',1,1,1,0,0,0,0,0,0),(3,'Alex',3,'alex123',1,1,1,1,1,1,1,1,1);
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

-- Dump completed on 2020-10-25 20:19:31