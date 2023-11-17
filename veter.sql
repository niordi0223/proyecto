-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: veterinaria
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citas` (
  `id` int(11) NOT NULL,
  `nombredelC` varchar(45) DEFAULT NULL,
  `idveterinario` varchar(45) DEFAULT NULL,
  `mascota` varchar(45) DEFAULT NULL,
  `dia` varchar(45) DEFAULT NULL,
  `hora` varchar(45) DEFAULT NULL,
  `estatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (2,'Carlos mendez perez','1','Perrito','12/12/2022','12:00 pm','ACEPTADO');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatus`
--

DROP TABLE IF EXISTS `estatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmascota` varchar(45) DEFAULT NULL,
  `lugar` varchar(45) DEFAULT NULL,
  `dias` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatus`
--

LOCK TABLES `estatus` WRITE;
/*!40000 ALTER TABLE `estatus` DISABLE KEYS */;
INSERT INTO `estatus` VALUES (1,'1','Clinica Valle de Bravo','4');
/*!40000 ALTER TABLE `estatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images_tabla`
--

DROP TABLE IF EXISTS `images_tabla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images_tabla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagenes` longblob NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images_tabla`
--

LOCK TABLES `images_tabla` WRITE;
/*!40000 ALTER TABLE `images_tabla` DISABLE KEYS */;
INSERT INTO `images_tabla` VALUES (3,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\â(ICC_PROFILE\0\0\0\0\0\0\00\0\0mntrRGB XYZ \0\0\0\0\0\0\0\0\0\0\0\0acsp\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ö\Ö\0\0\0\0\0\Ó-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	desc\0\0\0ð\0\0\0trXYZ\0\0d\0\0\0gXYZ\0\0x\0\0\0bXYZ\0\0Œ\0\0\0rTRC\0\0 \0\0\0(gTRC\0\0 \0\0\0(bTRC\0\0 \0\0\0(wtpt\0\0\È\0\0\0cprt\0\0\Ü\0\0\0<mluc\0\0\0\0\0\0\0\0\0\0enUS\0\0\0X\0\0\0\0s\0R\0G\0B\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0o¢\0\08õ\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0\ÚXYZ \0\0\0\0\0\0$ \0\0„\0\0¶\Ïpara\0\0\0\0\0\0\0\0ff\0\0ò§\0\0\rY\0\0\Ð\0\0\n[\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0ö\Ö\0\0\0\0\0\Ó-mluc\0\0\0\0\0\0\0\0\0\0enUS\0\0\0 \0\0\0\0G\0o\0o\0g\0l\0e\0 \0I\0n\0c\0.\0 \02\00\01\06ÿ\Û\0C\0	\n\n			\n\n		\r\r\nÿ\Û\0C	ÿÀ\0<+\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿ\Ä\0`\0\n\0\0!1AQ\"56Vaqt“”²\Ñ\Ò27SUWrs‘¡³Á#4CTu±$3BR’£	Dcdv‚ƒ¢´ð%&8Eb„\Â\Óñÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\06\0	\0\0\0\01q!23AQR\"a‘ÁS¡ð#\áB\Ññ‚±ÿ\Ú\0\0\0?\0ýSDDœ§Uº\ÜÀ®\Z\Å\ZE±\Ö\éZ\é¥øñ-++¬˜Šš\ÝCC\Çus[£ŽW5¼¡\Îv¾|\ÚÀo]½u¢u\Æ\ÝS@Ê¹©]Q\á\Â@’\"á–³If7Œ\Æü”{i\Ð&´\è\åú9mDA$C%l±±\Õ.28’ò\í_|3Ù³/>‘\n•P\ìUö‹Wi\Ú\ÉÓŽŠÒŒo+¿r\á­›~\riSH7Œp0.‰©¬FjkCn³\Õ]„ŽŽPò8¸\ã¸H9\ë\Ç\ç­\é+„ð•\ÎË…)l–\Ê\ìÖ¿d®Mšš¢¾6;Y\Ì°S\í\Ú\æ8\ëƒb\Ü.¬õ0\Ú\ä¶\ã,Gj¹[­\Þ\ÅIq¢š6MUM\È\ÙzRFCh\0\ì\Ö\íÁ\×WGh’Ï‰q’º\ÑDmÂºŠ«ôóÓ’\\[#žžnsŽ{Á\',–f±\Ì\çi:&¾«N¢„š“j\ÍIZ\Ü8%n\rwoK:vÒ†#¹\à\Û6°Y\íõ¸–‚¢zˆ\îð\Ì:X\\ð\ç‹]«“C,ö…¤\éI\ÚK\Æ\Ö=I´Û®\Öl^\ÛEÅ°™…5EC]œO\È8ž/aÍ¤¸\ìs)\è\"ñ_¤LO`¨»P\Ù,–ºŠy/õ¬\èªyˆqi%\ä¹\å\Ä\äz’±Ü¶ix6a)0k0¤W»\Ì5-¹{.û³fi¬’¯2x\×8·W=¼\ËT©Ö•\×®G:¦®\×\Úr©FS••“{\É\'ee\Ã\Íø\áŠ#\í&ð‰\ÒF¸\ÕGO&©e¥\Ô\ÐUSGó\Í,Ž-\ã	s«NÝ½H“i\Ë-§`\ÛlúLÒŽ.Ò½~Ã°a\Ú{%ª\Z*\Éå¬†S9ŠX\Ú\â\Æ\ê¿-~«a\Ë!\ÝT»pU\ÃW‰/§bq÷‹’¾\ÎÁõ\rÈ‰œ53\'1žY–\æw-\ï	h²Õ„qM\ËR\\kgªºR\ÓR\ÌÉµ5\Z!`h 4\r¤žñ¿,–p§[~ò|?÷ý\í@\×\Ò\Ò\ï¤T’¥¼·“v[\ß.ÿ\0	‡ÇºJ¾`M$a{M\Ò*\álA\rE;\ê\\\×	¡­`.`/\Ö\Õ\rp\È–y\çµ_hw\Zb<{„e\Å\×\ÚZX)\ë*\ç6\ÆCšM#\\Dnyq9¸\È\0Z\Ï	‹´c¶`Œ9„›XÊº¸ªw}k!m­\Ì{z¢\ÃÕ¿6:A\Ô\ç—6\å(\á\Û\Ãô8z„S\ÐS²›9\Z\0\Ì÷v-\Ê3õ\ß³£GN–µ«\'\è\Å]_\Ü\Ò\áóJ\×ÿ\0\è\çûNŸ4¥Ò–&\ÒE\æ‹?‡ª\êmì¦†)›UU8{YÌ¼µ­Ö‘\Û\Î\Ç7/<\Â{‹mú·\á\è+#¶Úr‚¢†\ßSGž2C¸üö\æ\áÕ´‘—ù·©JÑ \Ì%kÁ7œS=m\Â\Ý{¬š¶ \Îð×µòž¤´µKA£%m†ô	`´\Ð\Üh/ø†ù‰[q£\çû\'U¬#¦-F5¡ mÛ­–¶Í…ip¬š\Ýgò\Ý	\ÓÜ¬\í»\Æ\í5½\Çak\Zmv$\ÓE\ïG7º\ìsjÃ²\Ýp\Ô\Õp\Ïm/d´\Ò:\"\á{¯°­\Ø2\ÞVE:M\ÒƒGzÿ\0Ce\ésÒ¾ž\Â_\ÑP¹Œ\Ö‘\Ä\êy€\åß±HnV›m5Ev5\Ä÷8_k’\ÑK]SK(\é\Þ\Ò\ÒÖ´@9\ì÷,•Fð\ÕL>–k•\Å\ÌÁ¢FÓŒ\Ø@{5O\Ôó—%;•[RO¬\×p\Ò#&¥•œ“¿Ä›¿-r2³p‘\Ç5\ZH²aú\Æaš«Uö\á%q\Û\Û4’R·Y\ÍfµN|K\ÞA-h\Ï#É±e\íšT\Ó5F˜Y£ó&¹Û©‰ž\íSCK84TûHkž\é5x\Â\0Ù‘“³b\ËYx,a‹ö™)1f!|V\Z\ã]l‚Yb1Ò—9\ÌkCa\Å\Ã2z­ƒ\"½p\ïŠ</t©¸[4Šøšú³W]He„EVI\ê™\'\èõˆ#0v\î<‹\ÃH\á¼ûù\ícM\rh–\ï­\'\Íwi®\n\Ë\áÃŠo\è7ð‘\ÇZH±\áû‹0\ÝMªûY%3#·¶id¦¸3Z§3ŽfZÑ˜\Ïn¯.\ë¡= iOHõ•×‹\Û0\í>¡¬ª¡k ‚QU#\ã~Mp%å¡¹f)#fK\Ëð[\Ãv®\ÍSKŠñ\Ña\ê\ã[m¦šh\Ý8qqtaº›C‹¶“›¶\r«\ÑÖŽ­z6´UY\íUuUQ\ÕV\Ï\\\çT\ë\Ê\íbÑª\0\È\æ¶R…dÓ›\áÿ\0‡»Th\Z\íWŒ´úA6\ì¥~Ñ²\Ê÷!\Ý-ðŒ\ÅøWH5øC\Ú\è\åeŽ¤«5UHð\×\ã0ì‹©pêŸ³7w~û„>’-5¶¹l–]ž\Ý[i†\á\ÑºJ‡\Æù¤\Ëô&F9­„Œõs“!™\Þ3\nE\Æz²b\ÜKQŠ)1-ú\ÅUp…´÷&\ÛjDm­¹j‡\æ\ÒFC1›H9\ë\Çð|²\â©C©qf\"³C%m\Õ0QÔµ\Ñ\Ô@\ÐC›#]´–°Èœ÷¬e\r\"ò³\àyô­h§:ò§Uñ•\â“IZ\î\Éx\ák‘\Åv&Ç·\Îx>\ãm¹\ÚFuttÏšIal.\r\ãòsHk¤;šü€\È\ÂZ8I\ã™4‹d±WG†\ê\íW\ÚÙ©˜\Ë|s=ô\àI<T¤‹ƒ|ùr\È\Õ\Ü°´µV\n«]\â\ïj\é~„\Û\ÚIZô\Î\ËZ95šNG—\"ÕŠ³p]\ÃVZ\ë%lx³\Ô3Öº²\ßM4±º(CŽoŒ7SÞ¸\äI÷Ù´dFÕ¥]>¿œ¿\Ùç–¬\Ú\n5/BM\'-\æ÷•¿\ãuf°²Á£Á\ÂLm°3\Ö\Úð¹°Cˆ\r¢h„s6¦Fñšš\Ì\ê\Ë[\Ïi\'>e¶Ç¥M/cYˆ©´qd\ÃÏ´\áj\Èh*i\î‘µ5’gœ¦7‚\r#-`wg·<†}\Ü°\Ãð,˜Ù› £–\ênüx1‰D†M}_{–¯&\ìû¹¯‹\ç\\?u¿\×Þ­ø§Ù¡¼:).”6ú‘5¯a=Sú`H ˆÏ¾J\Ër²·\ÏU=_¯i\î©Trþ$\ì\ïgn\növ4Þž§\Âø\ÓJWª=–Ž\åEOBEMUT‘2I\Ð\ç<·&žF5¹\å–\ÜóV8W„n‘n1c[uU–\Õx¹\á\êV\Ñ}%E;&$€Zc”—¸\r`Af\Í\à©\nÿ\0Á\Ë\â#ˆº2\åsh\ÄB—Œ{³º“m;rÿ\06k\Æ\ÕÁ·P\Õ\Þ+\ëqN!¸\Õ_-ñ\Ð\ÖTTT´J\â\Ç\ÉC˜\ÐZ\à\ZÑ\êr·¨Ü¯~‡S\ÕûA\Z\ËÓ“Qø°’\ï½k¯*ñ±i /\âŒ_q´â©¬¨‚(\çŒP6Zy£\Ïc™-<\Ä\È29u[Žjhiv{Q†¸?\Ûð\Õ]\Òò\Ìmˆ\ëoW\Z€mÒ¦X\ÍE<|\ìÉ€f\ÍÀ\î\nL²\ÐIk´Q\Û\'¯ª¯}%<p:ª¤ƒ,\å­\0½\ä\0–g 6’½UEOÉ¨¡§\ÑÑ•-=^Jüo~ýþeðU_#~j¹…¸\í•DD$\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" Š™ŽtQ\0DDD@DDé¦§³\Ö\ÏO!ŽX\é\äs\0Í¤4\äv÷T@1v-\Ë#‰*\ÇsŠ‡\ÔR\æ$\Ï\Ø‡ƒK\æ•\êÃ©hS«º‘N\Ö)W¥W\Ñ\êST¦\âšw±–\é»né’«\ÅC\ê\'MØ³¶J¯¨±(»Ÿƒ\Ñýˆ¨þg¦~«ú™n›±gl•^*Q:nÅ²Ux¨}E‰E‚\Ñýˆ~g¦~«2\Ý7b\Î\Ù*¼T>¢tÝ‹;dªñPú‹‰ø-Ø‡\æzg\ê³-\Óv,í’«\ÅC\ê\'MØ³¶J¯¨±(Ÿ‚\Ñýˆ~g¦~«=¯ø\ã\ÑYêª©±=[$™µ\ÜT;6ý6Ú=M²Ž¢i\Ü\ç\ËO\Þ\ìš3qh$\î\î®w\Å=\Öý_\æD\Øú\ËAŸ\î\ÑyWµ\Õ(QœU8\Ú\è»ìž“[H§QÕ–õŸ—B\'üsþ\ïB¯\ïŽ\Ý\è_Cz\ÆbO†ð¶K\Î\'¿[\í4Œä©­©d1°w\\\â\á–\ã#Å»\ãŸ÷zŠ\Ç?\îô(ú\É\Â\'A’\ã¦Å¥\Ü)[YS²\"º\Ä_.Üº­\Õm\æ\ÍHms\\3Tƒ\ãŠw\Ç?\îô\'\ïŽ\Ý\è^™Ž}\ËŽ1‡G˜N\çqET”ö«=;ªª\åŽ\Êæ±¼\Ì`.\'và¡´•\ØJ\î\È\Íñnø\çýÞ„\âŸñ\Ïû½H\ÐÖ™°>plXó\0UU\ÍkšW\Â:.•ôòµ\í\Þ\Ò\×w\ÆÑ˜[\ÖcKV\à\ÈNüOŽ)ÿ\0ÿ\0»ÐœSþ9ÿ\0w¡}\æ9\ÓY¼\á	>8§|sþ\ïB§\ïŽ\Ý\è_dŽu\ç4‚8Œ¹k´¸å¼Œ³Ø¡\áqk»\â\Ýñ\Ïû½	Å»\ã\ßöBŒô-\ÂG\Úq}ö“\nU\Í\r\Ë\×ICp ª\rlñ9Ž-\È›	\"\"”	iS‚¹>8·|sþ\ïBqnø\çýÞ…¥c8hwGõ¬¶\ã}\'\á›%d‡&\Ó\Ö\Ü\âŠS\Þav·Ü¯0v•´k¤>3¤\\wb¿:õ\ÙA_\Ïn\\\íi\Ì5\îK\àm7\ró?\îô*qnø\çýÞ…an\Z>\ÅZ[\Äz†ªj<Q‡\\\êzÖŠ¸\ËA/„ƒ\Õž\Ðr!y\Ø8J\è¯\é~\ï \ÛEÆ½ø¦\Ê\Âú¨\ßo•l\0–¶R2$k\æÝ„¢\âÕ»\àD¾ß±)Ÿñ\Ïû½\n¼Sþ9ÿ\0w¡T¹÷ª¸\æ€ø\â\Ýñ\Ïû½\n¼[¾9ÿ\0w¡EC„ÆŠ]¦¶\è·;Å¯‰Òˆºaa¥ÅœnZ \ê‚y»»B•ÛŸbvR\'c\çŠ\Ç?\îô\'ÿ\0Ž\Ý\è_yŽpª¤|Sþ9ÿ\0w¡8§üsþ\ïBôDŸÿ\0Ž\Ý\èN)ÿ\0ÿ\0»Ð½\ç\Å?\ãŸ÷zŠ\Ç?\îô/D@yñOø\çýÞ„\âŸñ\Ïû½\Ñ|Sþ9ÿ\0w¡8§üsþ\ïBû\Ì\r\å3ó@|qOø\çýÞ„\âŸñ\Ïû½\ÑQñ\Å?\ãŸ÷zŠ\Ç?\îô/EL\Ç:\ãŠ\Ç?\îô\'ÿ\0Ž\Ý\è_yŽp™Žt\Çÿ\0Ž\Ý\èN)ÿ\0ÿ\0»Ð¾ó\ê¨\r7J÷k®ÀWK½ž\á%5e;Xc”5®-\Í\ían<\ËD8·Œ\Úq-Yÿ\0Â‡ÿ\0\ë\Én:qÛ£\É\åñ\Z£—û\ã\ßVKFXI\ÔIÙ”}«Ò«\èõiªSqM;\Ø\ÊôÝ‹;dªñPú‰\Óv,í’«\ÅC\ê,J.\ß\à´b*™\é—\ê³-\Óv,í’«\ÅC\ê\'MØ³¶J¯¨±(Ÿ‚\Ñýˆ\Ìô\Ï\Õf[¦\ìY\Û%WŠ‡\ÔN›±gl•^*QbQ?£ûü\ÏLýVeºnÅ²Ux¨}D\é»v\ÉU\â¡õ%ðZ?±\Ìô\Ï\Õf[¦\ìY\Û%WŠ‡\ÔN›±ol•^*·\Þ,J#Ð´{[qµž™Þ«\',=4\Õ6J\ZŠ™L²\ËOžò\0.%£3°÷,Š\Å\á~\Çm¾˜QQª+M¯™õ\Ý¹Qƒ~DE¼\Æ\âN°\\<\Z_4¨8\ïSŽ$\ë\ÃÁ¥óJƒŽõf\Ô³\Í\r²\ê\ÒÉ„DVS!\0DD+ö?[õ˜]d\ë%‚\Å\æ…\ÎØ§±úß«ü\Â\è›\'Y(</4*Î¾\êC\"ý±½:™¢ð\ìW\åo,\Óo\Ì9‚´…Y4¸/\Ü\èƒ\íú¯–4\ç¹\Ñ72òw‘Ù³•~©˜\ÉCžz¿iz\r9\\\ì5òb\Új˜ª\ã¨)„\\dc&“v©Ì•~	*Ðœ°N\åÙ¿ð\Î+¬ˆ‡…\æ#\ÐÞ“8-\ãYp\Ý4/›\rRGQH÷Ú¤¥u,¡\Ù0\Æd¹£´(fÇ¦\Ý0Q\Ã}\Ø\àbk\î\Íx†Ž\Ýs3\é™8\08®»¡u\ï	ý\â.˜fÕ£úUM`Ã²W²¢ý•;ŸSUb8\È:­\Ì\ï.\Íg¯\ÜtS‰4=I »•ŠV\á*FB\ÆR\Ó\Ô>þŒ\æ\Ò^\Âžc2yR<³ùµo\ÛL\\T Ÿkÿ\0\á\rh†‹ð“\à\ïI¥ý i\Û.÷Z*‰©c°×º‚ž‹‰/§&m{œ\è\ËÝ¬H\ê²”% \î:e\Æ\\´\Û\Ó>(¬¸Oƒ\ã0\Ú/\ÈTß‘kžN \0s\Ë>©v\Ðe·h2]h²\é6 m\ÔTu3\ÖIN\É^\ç<\æ÷k8\æ÷dIÙš\Æ\àNZ3Á\Zª\Ð\\T•V[¬.eÚ \Èc¨®‘\Ä\È\ç7\"	 n\ÜWÿ\0#ª¢¸5e™\Þä©·\ÆÒ»\É§¡-(\é	ÿ\0ð\ä\Æ\éØº¿\Ùû|õ]\rpHC_d2i\ÝÎ³X\Zõ¤>pBÄšu\Å\ZJ\Ä\Ö\ÌOi¶WT\ÛMž\á%:–\æ\ëFÍ’–õE\Üü‹¦0\ïa}\\´g²\×E„®®‘\Õ4Î¸LùI~Z\ÙJ]®7’Á¼tg€ôQ_¡|9k«‡Ü©\êij ’²I$ts´¶@$\'X	ÛšÎ«\ÞUqin\ç\Ü\×M8\ÊÁ7š¹\Ê|\ï\Ú@\á? \Ëö Ò–•1$S\á÷\ÉCE5®´Ð¼G¬&•\Ñ\ädv\á´\å\Ô÷Ö±ÁÏ…^›mü\ZtÅ‹/•\Õ8ª§\Êb³WÖ·^C˜\Ú$#ß†û\ì\Ï:\ë¼\'£Mbm\èN¶§3‰\ë*e–¹Ð½\ís\Úðs\Ô\Ì\r»El:\àÿ\0€t1£´]c·¶¶\Üø\Ýì„•Q‡¾¾W\ÒI.Íº\ÜÜE_\ÍÃ‚qIgÝ™.\ì\Ûyv9ó‚Äºr\Ñ#4Å¤=3c\Z¼Ar¨œ³ nÎ¦¥ ;\Z gPyú¦„-[‚FŸ´©¥N\Øó\ncLdë¥«\r\Ùjh)!§”ò˜j\ZÁPZ3\î’\ìùv.‰²p<\Ð\îutXI˜–Án¸\Èdªµ\ÛqdR¼[&®G”r«½pIÐ–„ñu\Óh\ï\Õ\Û\îWˆ$¦©×¯šXø·¼8†±\Î-@\ä\ÍJk\ÔÞ·\Ãf­ó±\r=\Ë^\î\é\ß\ås‘¿\á\Ëÿ\0Ô¶™‰\Úx\×mÌŸù\Ã\×jðŒ¼\ã? \ìgzÀ\È\ëõ%¢y(ø¦\ë=¯\r\Ú\æŽRdw•–Šø3\èŸCx¶ýp%ž¶–\ë‰\\]p’j\éfk\Éqq\Õk\É\r\ÚNì”¦ø\Úö\ÞÀ\æ8wdµ\Î.T#Ib¢‘œeþiT\ì\Ýÿ\0có«þxc\â\ê|]ñc)\ïx\ï£\Ëf–\à\Õ\ÄF×·_2Žy»&\Î^\Ö\Å\Ú?\Ñ%N,\ÃXR\ÛmØ‚†¤¶\ÏS\â’y_—÷@´ƒ#rÿ\0\Ìw§x\àw¡\Z\ì[&:±Ù®xRÿ\0;‹¦®\Ãw9­Ï”“´¸DC]ü\Â\Ù0\×ý\á\ÌC.¨§ºß¯´™ô-\Æûsž¾jl÷ñ\\kˆþ\èk’–í•¬—ð`£g+»\Þ\ça¿\å[ºmý…Pþ!«c\Ðö‘1\Å\Ãþ\"ú@\ÂU¸ž²{-+\'\Ñ9ÿ\0£f¬qòrfr\ÛÊº¦‡ƒ&‰­\Úg›O”¶j\Ö\ã	\Øø\ßRk\å1dæ†Ÿ\ÑkjnÉ‡¸2h›\éz\ë§Mž¶<Yxu®•ñ;Y­i\Ê\"uÆÁaG\àT×¶2_\\	­ñ\ïÛ»ñ‰\Ê\Üô±¥\Ý/ð\Ò6ƒñn0a›%Æ²¹²ÀýZ\ádm3&Û©TNÁ­°dB¦?\ÆZI\à÷\Ã3h\ã\ãüE|Ã˜±±ômš\ï\\\ê\î(9Ú®,{ósw\ëo\Ëb\êðb\Ñ.‹tƒ}\Òv\r³\Ö\Ó_ñ.K_4¬~»õÝ“\â\Ö\ír\Å\Ø83\Úiô÷y\á‹¯o¿^\ê#m-–\Ô\â(mT\Íj´fu\ä9ž¬\å¿rA\Ù\Óù/‹\çòÿ\0ð\Å\Þ\Õ>x\ì\æviÿ\0\Ê{K‚Ž\'®ö	ñN\ÓA®8­QG#ƒyò\Ö\í\æW8SJºK\á!\Ã\è\ãk\Ö\ÂxM\Õ\r†\ÓjŸ¡*kx§\ê‡>P5òw¾\ØFÌ¹\×Q3ƒ‰šc\Óø³We¸mWGK\Åd\è\ÝýzžõÇ“•z\ãn\rZ&\ÇX²ŸWX\êm˜¢›-KÍž¶Z\Z³—#¤‰\Í\×ÃšS´4ø\ÙJù¼\ìl¨÷¥6»\Ûø\Ç\ê\\\Ù4a6	Ä¶Ê»“oÌ·<IMž\ïW\ÑÌ¬Ù˜1¾S\Æ1ã”‚A\Æ\Å%³v|\ëB\ÃúÁöE.š[\Å\êõL\ÇGO[y¹MXúv;\ß\ÃÝª\Ìò\ä\î[\ëF\\™)\ì`±>‘‚\" ˆ€\"\"‡ÿ\0õi7\Ümq¶b\n‹Tt\Ô\Ð\ÃJÈžP$Ö©\Ö\Þ\"\Ô27mÙ´-Ø¯‡Eœ\è\ÚH\å lN\à\Ñ\àÒ”5Q\Óa»”™Á¹†\0#[\ß\æ:’5wwBòK,tñÁ>»\Äù\Z\Ç\åÅƒÔ¹ºÀÿ\0!°ó¾ˆ\Øaœó\Ëÿ\0|©\Å3X8\Æ\ÜÀ\È†ÁÌ£€F£‘\é%±\Õ\ß=…¯-¤|l1²=b\âðË½žG›%ˆ~—ø‰\\\ép­Ï¡\Ý.Œˆóv³\ÍHv±÷ ‡n_Ls…\"ˆ˜\Ö\ê66†“´*œL%º¼K2\ä\Zƒ,¿öOÚ¤\Z\rF–cŽ•q\á\Ê\íQ9ŠV<$m\rq\Ö\ÕË—T\ß^\Õ:SŠ\Â:œ1tl™Bx¶7]\Î4¸dð2\ÛÌ·ƒD“Å·3¿©Ux¨\É\Ö1´‘¸\Z3ôža©l\áºø³É®Í§ K˜\Öz¿¹^Z´‹Ks»Aim¦±ŽÁ¢MSª3¯\Öú=VY\î[k¢cÍ\Ùó·ÿ\0y#b®\Ö´2\Ì\r©Àv4m8|\Þwg«\â5GO÷Ç¾¤]8|\Þ~Œˆ\Õ?\ßú³jIfP6Ç­K\'ö(ˆ‹¾SDD \"\"\0ˆˆ\"(x±&ü/\Ø\í·Ábó\Ê,^\ìv\Û\à±ye\Ï\êó¼Ïµh½d‚\"-g \Æ\âN°\\<\Z_4¨8\ïSŽ$\ë\ÃÁ¥óJƒŽõf\Ô³\Í\r²\ê\ÒÉ„DVS!\0DD+ö?[õ˜]d\ë%‚\Å\æ…\ÎØ§±úß«ü\Â\è›\'Y(</4*Î¾\êC\"ý±½:™¢ø*ªUÀE\ÕT+^\Ä\ÚAÁx6¢\n\\S‰(m’Ô´¾TJ^Ñ¼Ž|-\Û\ËD8o)	\í\å¢/œ7”„ö‹Döò\Ñ\Î›\ÊB{yh‹\ç\Í\å!½¢\Ñ=¼´Eófòž\ÞZ\"ùÀ³yH@oh´Oo-|\àY¼¤\'·–ˆ¾p,\ÞR\Ú-\Û\ËD_8o)	\í\å¢/œ7”„ö‹Döò\Ñ\Î›\ÊB{yh‹\ç\Í\å!½¢\Ñ=¼´Eófòž\ÞZ\"ùÀ³yH@oh´Oo-|\àY¼¤\'·–ˆ¾p,\ÞR\Ú-\Û\ËD_8o)	\í\å¢/œ7”„ö‹Döò\Ñ\Î›\ÊB{yh‹\ç\Í\å!½¢\Ñ=¼´Eófòž\ÞZ\"ùÀ³yH@oh´Oo-|\àY¼¤\'·–ˆ¾p,\ÞR\Ú-\Û\ËD_8o)	\í\å¢/œ7”„ö‹Döò\Ñ\Î›\ÊB{yh‹\ç\Í\å!½¢\Ñ=¼´Eófòž\ÞZ\"ùÀ³yH@oh´Oo-|\àY¼¤\'·–ˆ¾p,\ÞR\Ú-\Û\ËD_8o)	\í\å¢/œ7”„ö‹C:s\Ñ\ÇH6`\0\Ìÿ\0ip´]m\×\ËtkElUtULA<Nc\ÚwFð€¼DD‡§ƒ\ÏÑñ\Z£—û\ã\ßR6œ~/?F?\ÄjŽ_\ï}Yµ$³(cÖ¥“ûDE\ß)Œ\"\"\0DD<	X“~\ìv\Û\à±ye/ö;mðX¼À²‹\çõy\ÞgÚ´^„2A³\Ðcq\'X.\r/šTw©\Çu‚\á\à\Òù¥A\Çz³jY\æŠ\Ùuid\Â\"+)ˆŠˆ€\"\"Š{­ú¿\Ì.‰²u’ƒÁbóB\çlS\Øýo\ÕþatM“¬”šg_u!‘~\ØÞL\Ñ|Uª\à\"\êŠ.T\á†?ù»x\Þy]Vw.T\á‡\Ùvð)üô\0\î\È\'* \È\" \È\" \È\" \È\" \È\" \Ù\Î•u\ê\Ñn•\Ü.T\Ôò=¥\Ìl’\0\çp9•\Å=U=d-©¥’\Äñ›^\×f\n\× ™ð\'„\Ê`3h\Ö,\Ö\ZÀs\ä¾ù3\ç@2	O\Íy¾¢\åd•­’Lõ\ZN\×e¿ €ô\È&APe\ÈA\ï*÷P‚d‚d‚d‚d‚d‚d‚du\0q}E\ÝZ9\è	ÿ\0\r‹ó\\+Qú¼¿A\ß\ÑwVþ°Ÿð\Ø\Ð\ê\" 4=8ü^~Œˆ\Õ¿\ßú‘´\ãðayú1þ#Trÿ\0|{\êÍ¨y%™@\Ûµ,ŸØ¢\".ùLa€ˆˆ\" ˆ¡\àJÄ›ð¿c¶\ß‹\Ì(±x_±\Ûo‚\Å\æ”_?«\Îó>Õ¢ô!’ˆµžƒ‰:Ápði|Ò \ã½N8“¬—\Í*;Õ›Pr\Ï4P6Ë«K&XLx„DP@DD¬S\Øýo\ÕþatM“¬”š;bž\Ç\ë~¯ó¢ld ðX¼Ð«:û©‹ö\Æô\êf‹àª¨WTP\î\\©\Ã²\ì1\àSù\ëª\Î\åÊœ0û.\Ã?ž€‚9Q9Q\0DDD@\0O\å\ÞDN\ã\æh˜«\n_+ñµ#·\Ä\Ù)\à }3\ÃjO\×.\'>©®+,eƒ±möš\Ù-¦I)ç£Ž@bup\Ô22/ ;w&JHE	pH7wr0©Àø\Æ+µ\Âõ@\Ë{«\ëlôômœ\Îöµ“4“\'Rs$8Ï‘X\Ñ\è\ï1•:°\ÃKQ[GPÈÁ\ïscg÷\Ã<†þnU.¢”\á\Ø+CCYGOX\ÃJ/m­Ž\Õ8	¨\ÆZÐ—\äKs\æÝ³.U\ï.\Ån¬µÁM@\ÊFUŽ!Õ•¡\Ï£Ìœ³òrw”€ˆš×€q\äsÝMc¡Š\ájú±ÜŸEk’^Ó©“GfÅ³\è\ß\â\\;M[K~–\'\ÂùZ\ê|¤×“-\\‰y\Èó\æ\î­\É-\Æ\árB\" ˆ€\"\"\0ˆˆ\" ˆ€ó¨ý^_ \ïè»«@ÿ\0\ØOølk…j?W—\è;ú.\ê\Ð?Àöþ\Z}DD‡§ƒ\ÏÑñ\Z£—û\ã\ßR6œ~/?F?\ÄjŽ_\ï}Yµ$³(cÖ¥“ûDE\ß)Œ\"\"\0DD<	X“~\ìv\Û\à±ye/ö;mðX¼À²‹\çõy\ÞgÚ´^„2A³\Ðcq\'X.\r/šTw©\Çu‚\á\à\Òù¥A\Çz³jY\æŠ\Ùuid\Â\"+)ˆŠˆ€\"\"Š{­ú¿\Ì.‰²u’ƒÁbóB\çlS\Øýo\ÕþatM“¬”šg_u!‘~\ØÞL\Ñ|Uª\à\"\êŠË•8aö]†<\n=uYÜ¹S†e\ØcÀ§ó\ÐG*\'* ‰Ë’\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ˆ€ó¨ý^_ \ïè»«@ÿ\0\ØOølk…j?W—\è;ú.\ê\Ð?Àöþ\Z}DD‡§ƒ\ÏÑñ\Z£—û\ã\ßR6œ~/?F?\ÄjŽ_\ï}Yµ$³(cÖ¥“ûDE\ß)Œ\"\"\0DD<	X“~\ìv\Û\à±ye/ö;mðX¼À²‹\çõy\ÞgÚ´^„2A³\Ðcq\'X.\r/šTw©\Çu‚\á\à\Òù¥A\Çz³jY\æŠ\Ùuid\Â\"+)ˆŠˆ€\"\"Š{­ú¿\Ì.‰²u’ƒÁbóB\çlS\Øýo\ÕþatM“¬”šg_u!‘~\ØÞL\Ñ|Uª\à\"\êŠË•8aö]†<\n=uYÜ¹S†e\ØcÀ§ó\ÐG*&ó±;¨K\Þ\Ùg‰³\Ý+\á¥cÎ«LŽ\Ë3\Ì9×¼5Tõ²¢\Úø¤n»\×f\Ò9\Â\Ç\ßì¯½AqUŠw\Äò\æ¿P’3l!\Í-þG\íX€\Ù\ÑtµR]¤‘\Ôü^o|A\ÒÃžL~}KN\ç\0cb l”Õ´•±ñÔ•QL\ÂawdyW\ÔU4ó¸¶)\Ø÷³hp$slZ \Ñ\Ül·\"ó\0`t\"VV\æ#\'l\ÏYzt…5®£¹˜\êI‰\âgA¬\íh\ÜH\Ïh.<²FK6‰ªi\é\ÃLó²=wj·YÀfO\'}z7v°Ù³ù­=\Ú<ŠI –k£ž\èHq{¡f¶e\ÝKõº‘\Õr+´SV\ê‹h¾Hö\Ï4r‡>CK5¿ÃžE\Ç[kŽýˆA½\Í4Tñ:y\ålq±¥\ÎsŽ@\ÊO2¬r2Vµñ¼8<\Òyƒ¹`/¸B;\å\r-Õ t<f\"\é`5À´õs\08r¹Y\Ú0VœFüBËµD¥\í \ÄöŒ\ÏP–¶{FÀ@!mš\ÃnÑ³zù\ã¡\ã8®5š\àkj\ëò\çË™ióh\Únw¼JEÁc˜\èó\r\ä\Ì\\ +\Ï\Ú\Æ‚\Â\ê†ŒQ¾WR0¸³\\» 7\05²Ë˜ 7mf\ì\Z\Ãn\í«\ä\ÍÖºV‚óª\ÐNóÌµJÛ¨¢¥c«$–j@\Æ\Å9``k‰:¿\å\Ï>N\â¬°Dè¢¹\êuD‡2œ7_c†ruG\\\í¤€v F\Ø\\\Ýú\Í\È÷UV‡Šã‚’–™—·ÿ\0fªè¦¸Ó·a:½KFy4u;ò%oƒ`2r\Þs\Þy\ÐD@\0DDD@\0DDD@y\Ô~¯/\Ðwô]Õ \ì\'ü65Âµ«\É\Ýc¿¢\î­üa?á± 7\ÔD@hzqø0¼ýÿ\0ª9¾=õ#i\Ç\à\ÂóôcüF¨\åþø÷Õ›PòK2¶=jY?±DD]ò˜\Â\"!D@CÀ•‰7\á~\Çm¾˜Qbð¿c¶\ß‹\Ì(¾W\æ}«E\èC$k=7u‚\á\à\Òù¥A\Çzœq\'X.\r/šTw«6 \åžh m—V–L\"\"°2˜ñˆ €ˆˆ\" 1X§±úß«ü\Â\è›\'Y(</4.v\Å=\Öý_\æD\Ù:\ÉA\à±y¡Vu÷R\í\é\Ô\ÍÁUP*®.¨¡Ü¹S†e\ØcÀ§ó\×UË•xaö[†<\n8 !›½bj—Q\Ø\íï«\×,fYÏ´¬\ïµ.‘NÞ•ª¾\ÖúV\ÏÁß²\ê¯ÿ\0ù\Ð\èQö¤\Ò/j\Õ_k})\íI¤^Õª¾\ÖúWW\"”}©4‹ÚµW\Ú\ßJ{Ri<ºVª\Ì÷[\é]\\‡r‡Ãˆ\\NPö¥\Ò&Yô¯U–Y\ïn\ïµWÚ“H½«U}­ô©\"ó¥\r5\Ùkn\ì‡Do¹CL\ê™-\Ò\Ó\È@©k25ûskœs\Ú\Ì/Z}(\éšzX*Æ‡]J\ÇK•N\ã6 {\ØY\ç›\ÞNõ\×!»bF>ÔºD\í^«\ío¥WÚ“H½«U}­ô©¿E˜\ï\ã*›\ë1–Ž¦\Â\ÐÛª[\äœ\Èj\ã-Ì¿-Àƒ°å³™oü»€\ï,¾d\Þ\î\Ç(ûRiµj¯µ¾”ö¤\Ò/j\Õ_k}+«‘1(ûRiµj¯µ¾•C¢]\"™\Â\Õ_k}+«\Õ\ï\Þ?\Ñ\Ê\Ñ>¤h{0\ÅKšw\æúW×µ&‘{Vªû[\é]KlýF.ñþ«Ö¡òG²B\Íy\Z\Ç9ÿ\03€\Ì\æT7epr¯µ.‘{Vªû[\éOjM\"ö­Uö·Ò¤K.–4±	¨©\Ä\Z8®«£ÑµýC$R@]&®«Z\ç(\rê‹†Ì\ç^—}.é’Š\Òn\Ö\í\nMV÷MG)\rC„\Î\ã\"k\æq\Ë<ƒ	,î²·öÿ\0°Ÿn\Äo\íI¤]ý+U}­ô§µ.‘;Wª\Ù\Ýo¥JtúRÒ•K\ç,\Ñ%\\-¦©\âõ^\í²E«\Ï\Î9\ÇS\Ý\Í-\ZO\Ò\Õ\Éö\×I¢g\Ó\Ó\É8eT²\Êö9Œ\Öh\×cÝ™““²;/‰\Ø%Ã{Ri\Îª\ËvöúSÚ“H½«Um\î·Ò¥g¥\r,XqM\ÒÙ‡4S-Ö‚‚’Yi\åsM[\Ú\"1\'½h%ò¶Ÿ\ÑwWµ\ÃI\ÚW¤\Ãø*\åK¡\Éj.‚fGy¤a¾\Å0‘›‹²\ê²Ì»h\äÈ¬S\Þþù&\Üx‘Gµ&‘{Vªû[\é\î\'µ&‘{Vªû[\éR-V–4\Ã\Ñqô>‰*b§¦ºT\Ò\Õ0µ\Ït´Í§‘ñI#\Òw\á–y¯¬9¥½4]¡¥«º\èFJ\0a×ª‹¢‰‘²üš\Âr\rV\çŸù–O‚»ù?¨Q»úÿ\0q\íI¤]¿ü­U³~\ÖúSÚ“H½«U}­ô©\n¿L\Za‡\r>õA¡zªª\ÆÀ\à\Ê9\Ññ“	\\\Ð3=S[¨¶ŽP¥ûue\Ê\ÏEp¸Ð¾Šª¢’MLã™…\äuLþG1¹#\Ä\Æ\ç.»DúCcKß†*CF\ÒK›³\ïA¢m\"8/TAÛ½¾•\Õùôÿ\0@¯º\Õ\ã\Ì\åÔ·x\"ù“‘Ê¾ÔºE\ÝÒµW\Ú\ßJ{Ri<ºVªß–ö\ïûT\Ç|\Ò‘m˜Ò¶\ÛoÑ}v‚ÍŠ´jƒ-N®\çÏ‹9\ç«\Ë\ÜXt£¦Š»­©\í\Ñ[á ª†.‰k\Ø\î1Ž5Q\Ç&Óh¹\ï\0\å\ïTG\âi/\ïö\ÄIn¦GcDšE#1…ªˆ\ï·Ò©\íK¤N\Õ\ê¶w[\éRe•ôÁ_\ÐÚš’ ç»¢]4oÁ«Ô´\î\Í\Çÿ\0Ä–’7­\ÏGØ»b™/Qb|Q`6\ê÷SRq™‘S÷²5\Ä\íÏ—-™•1ø—ò/d™\Ì÷ü%‹ð\åe¶\ß[…\î2UÝ¥tTBÆ½\Ò9\Ö;5¹\Ä\\™x²\n_0\Ý\Ú\ßÊ¥ôt\Ó\Î\Æño™¬{œ\Íf¼\ä@c»\Äm]!¥;\rF#\Çx\ÙI]Ð’KUV\Þ3\"r€ƒ–\\¹½FzsÐœZ$Ã¸JŽ\Ýu\ãhg\ÄÏª0g#ˆ™Ô³\ë89\î9g˜\'v\ä$Žjr\èyr\åa9óœ·®\ê\Ð?Àöþ\Z\áZ\Õ\äúoò]Õ \ì\'ü64úˆˆ\rN?Ÿ£\â5G/÷Ç¾¤m8ü^~Œˆ\Õ¿\ßú³jIfP6Ç­K\'ö(ˆ‹¾SDD \"\"\0ˆˆ\"(x±&ü/\Ø\í·Ábó\Ê,^\ìv\Û\à±ye\Ï\êó¼Ïµh½d‚\"-g \Æ\âN°\\<\Z_4¨8\ïSŽ$\ë\ÃÁ¥óJƒŽõf\Ô³\Í\r²\ê\ÒÉ„DVS!\0DD+ö?[õ˜]d\ë%‚\Å\æ…\ÎØ§±úß«ü\Â\è›\'Y(</4*Î¾\êC\"ý±½:™¢ø*ªUÀE\Õ;—*ð\Ã\ì·xþq]Tw.U\á‡\Ùnð)ü\â€Áðm¢©¯\Æ5p\Ò62ñFNOvC-a\Ü+¤\Æ¾K³þÞª\ç\Þ\nž\Öø¼æ®µ\r3¥‹\ï\ÅRx÷z©\Ò\Å÷\â©<{½Uº\"K\ébûñTž=Þª¨\Ã7Ì³\Òmÿ\0¬;\Õ[|\âC\ÄYk\ê\\÷gÈ£\Zo\ZQB\ê\È\è+\r,\Ô0=¬\è¹)3\Ë&\äsw	\åEÅ‡À\Ïô³}øªO\ïUS¥«\é\Ý!\åþüúªÊŽç¥·eÑ˜~Àk9“[Õvr’Üs4­­\ÒÑ£´P5\Ìv´Œ/n\ÐÆ·>ps\'“!–ò¡“bô\á«\ç,tœÿ\0ß»\ÕN–oŸI\ã\Ý\ê«jé´«W„\çú:*+\ïDj\Äd=œNýc³\"w–[\rA!®\âZ¨&…Ôêˆ˜¤ûxÁ³xÜ§¹ø_û‹.–o‡öTž=Þªt±}øªO\ïUnM/¤$\ÒúX¾üU\'wª©&¾67&YÛžo¢·U\ç?÷/ú\'ú 4;F½Io‰ÌŠ—Tƒ–sž¢¯:Y¾\ÙRx÷z«b°õ®ñþ¥dN\ä›\Ò\Õ÷\â©6rq\ç/1S¥«\ï\Å\Òeõ\ç\Õ^x\åšG7[iÁÎ„Pˆ\ä\è\Íp5µón©žmoµ|\Ük4­\\\ëuª\ÛP3µ\Z\é5Lq\ë87=»z\Üû\å=ºZ¾\ç²*N\ï\éÏª-_2þ\ê“Ç¿ùW\ÜZGm\ÆSo u,’´¿Q\äql. \ç\ÊH\î}Å»7J\Þkýˆc ·µ\ílïˆ—™¹»:ž]\ê°/úZ¾\íý\'wô\ç\ÕN–o£öT`}{¶\åYª1#hhã¬§§t\æ—ûL¡ù\Ì³&\å‘­?	ûr2“S\n#Q\Õ8™l;\Z2<£—‘H2\Ý-_\ì\é<yõ¥«\ï\Å\Òxó\ê¯\nJ\Ý+TO+*­\Êf\ë×¶Mqª\È]§f\Ý\Ëîº£H²\á\Éx»cs3µ‘q2°\Þ\çkf6A´\å¼ ·\Ða«\áb£Ë›>ªt³}?²¤ò‡z«\ï\rŒp\ëýA¾6F[ã…¬f±Œñ²µ\à7ksj\Ü)\çN\×!>64K–½²‚¡ÎŠ—!ý¹õW\Ý&½ºš\'6:P\Zv\Îy¾Š\Ûok©ú²¼\ä¬e¾\Êk¥kœ\Êzc+ƒFd†·2wb”¯†#¹­œ9z\"\Ú0N\ï\íõS¥«\æyñt›9xó\ê-.\ãŠ½û1Êº\Ò\èX\Ø\éc–\'7 ö’N©IÙ·w2UTÞ€Š¦,OR\Ú`\É\ZdŽ7±­asžAÛ¸‡o2\é~[++\É&y®Ò‰ºt·{\à£~\\yõzZ¾òGG\ãÏª´z¹\å5ó\ÅK‹_¯®)µZ¶5vóƒ™\çV\á/ô¢/ce¸\Íq¬ž¦@f\0»ü!Ù“¹ 4®¾‚\éCyJ\æP\Ò7ž\í¬iX\Â\×]oÒ–ŽŸX\ØFµmP\Z’gú\è\ÃS±\ìÿ\0hþ–e»\éIÌIº7‘\î\rkkª\Éq\Ø\0\â¹V\Ã\"\ão¸\á¼-¾ºž©Œ\Ä$9\Ð\Ê×†ž…˜dH;€ôœ\ßQú¼ŸA\ßÐ®\ê\Ð?Àöþ\Z\áZ”òƒþG~kº´ð=„ÿ\0†Æ€\ßQ¡\é\Ç\à\ÂóôcüF¨\åþø÷Ô§ƒ\ÏÑñ\Z£—û\ã\ßVmC\É,\Ê\Øõ©dþ\Åw\Êcˆ„D@\0DEV$ß…û¶ø,^`YE‹\ÂýŽ\Û|/0,¢ùý^w™ö­¡DE¬ô\ÜI\Ö‡ƒK\æ•\êqÄ`¸x4¾iPqÞ¬Úƒ–y¢¶]ZY0ˆŠÀ\Êc\Ä\"\"‚\" ˆ€\Åbž\Ç\ë~¯ó¢ld ðX¼Ð¹\Ûö?[õ˜]d\ë%‚\Å\æ…Y\×\ÝHd_¶7§S4_U@ª¸º¢‡r\å^}–\áŸ\Î+ªŽ\åÊ¼0û-\Ã?œP\Ù,˜ê±°O\Å? \\uµ¶kuÕq\äºÿ\0€\Õ\Êü;>¬ðy\Í]j€²\è[—Ê§\Ä5:\åò©ñ\rWÈ€±\è[—Ê§\Ä5:\Z\ãò·û\rW5™b|AÅ¥\í-\Ìo…\Ñh“[…A\ã\ÚÀûlÔ¦F¹Á­• u]WTZs žB9”À‘z\Z\ãò¯û\rN…¹\×_ö\Z´\ÚL\r¡9Ï¥˜š` ;\'’zÙ–Cg2V\à,_X\ÆeŽ\çŽHŸ\Æ4ˆŽ«Ýž\Ía­¹£0\0\Ë>\\ö&›—BÜ¾Uÿ\0a©\Ð÷•¿\Ùj\Ôk°#ºaIð\åv6«Žyª8Á[N\ÍIðÑ·v¶GzöÁ¸ã†®\Ó\Ü+o\Z\ÃC\Ä5^\×›Isóyq#~[÷±k›GBÜ¾U>!©Ð·/•Oˆj¼n|«\é	,z\åò©ñ\r_2\Ò\ÜDO\Î\é˜\Õ;8†ó,‚óŸû—ýýk5\Ä\Û!-¹\ä6\ì\âÎ¯\Í-\Äm7_ö\Z¾,jƒ¼©V¸\Ã;Yh\èC\äc,-~¨9Ýš†Á{\Ð\×º\ëþ\ÃS¡n_*ÿ\0°Õ¥\×h\ç>h\â¶cŠ¸(\"lA”ò5\Î9³2spp\'7eŸ.\Î\êöªÀ¸¶ZP\Ú|{Wünz\Ü^l\â\Æ\æž{6m$“’m\ÝrùWý†ªt-\Ç>ºÿ\0°Õ¯A„1=\Â\ZÎœ*¤ce\ÊÇ·0\á¬IhÛjû«\ã`*«\ÍuUm5òh:(D.\Ö1õó8oÏ“™Cv\Ùz\ãò¯û\rT\èk‡\Ê\ß\ìµZ\ÑYki(h\èx™ì¦¦\â$\ÖcI•\ÙdO¾¼V¥o\Ñm\æ\Éj¤¡³\ãzöM¦J™§Ö”Í™ÝµÙŒ³9mF\r\ã¡n;½•ÿ\0a©\Ð\×º\ëþ\ÃV›E£\ìSKm.\Çuñ‚\è\ÞÀv\ÈZð\ì\Éÿ\0šrÿ\0ñ\ÚŠYF8©šVl\0°†\í\ØFy\ï \ï\äR\r³¡n_*ÿ\0°\Ô\×º\ëŸþV\é„ë®´vh¦¾\Ô\n›c\ã’Y\ÚKz †»X7’J»\ÂV\n¼;C-U\È\Õ\ëI®\ÂZF¨\Ë.RI\ÝÎˆ†z\Ýi®\ÝR]t\Ìqgö-_T´uî¢…¯¹\æ\×FCwd®oÿ\0†Tú2½(ò4pdf\ßè„˜š™©ië¡ «½S2ªv\Å\àf±kw‘\ÞA5Ì¯ÔƒŒi9qQõC—óQ\í\ÚËŠî·ª«\ë½\ìys`u<[ZÓ“9vl9‘Ê«6«­m’½³\Ã<\ç.,\È\Ð÷]Ks#—b\ê-šŠr©\Äñú³\Þv{56—HA¾\Ðë†‰I1G˜\å­öƒ·^Q@&\×u\r\Ö8µ\Æ(°ól\åQ¥^\Z–¥\Ó\Îp½\â9~\Çmsò\ÏP–òuDg\ß[†Ž²\Ôù,¾\Â\Õ\Ó\ÒõS	¥\Ú\É\Ú3\Þs;F{V5ôhS§½	\Ü\Êe)YÄô\çmx\ëG\×IE\\N¸U;Q\Ì\r(vfÿ\0\ç±F),öª*<YEo‚šog]00G›M,\ä‚\0\0\î\î\åüÔ·¦\ï„\rúýg\à(Ã…wZ°wý ?úI\×4õ}G\êò\06;/±wVþ°Ÿð\Ø\×\n\Ô~¯/\Ðwô]Õ \ì\'ü64úˆˆ\rN?Ÿ£\â5G/÷Ç¾¤m8ü^~Œˆ\Õ¿\ßú³jIfP6Ç­K\'ö(ˆ‹¾SDD \"\"\0ˆˆ\"(x±&ü/\Ø\í·Ábó\Ê,^\ìv\Û\à±ye\Ï\êó¼Ïµh½d‚\"-g \Æ\âN°\\<\Z_4¨8\ïSŽ$\ë\ÃÁ¥óJƒŽõf\Ô³\Í\r²\ê\ÒÉ„DVS!\0DD+ö?[õ˜]d\ë%‚\Å\æ…\ÎØ§±úß«ü\Â\è›\'Y(</4*Î¾\êC\"ý±½:™¢ø*ªUÀE\Õ;—*ð\Ã\ì·xþq]Tw.U\á‡\Ùnð)üâ€°\à¯u8\æ¶)uµzž¥Å§c‡2\ê\Ñi£<“x÷\ÍrŸY\à§\ÇU²TLÈ›\Ð\Z\Ïph\ÏXs®¯öR\Ø?û…7o¥ñ\ìE4\Þ>OY=ˆ£\æ›\Ç\É\ë/¯emŸ(Sx\ÖúS\Ù[g\Ê\Þ5¾”œ–\Ê\Ø^ó(kF±\Îw\åþkGzÁu¦“¡/°\É\Ñ\Ñ>zmJ\Ç~–6žá“¶€w•˜š\ãj–\'F\êúb\×4‡~•»óZSt_£8š\Ö\Ä\ác$de•å¥\0ð\ÒÀr\Ì÷IPˆf\Øcp/msFD‘X\í™óeó3ð\ì	®lasšÀ\rk†nv\áï·œŽ]\å¬Sh\ãG´Ž†²]fòû\"\âs\Ö.\åw9û—\ÕFŽô}TÖ¶j§;‹.tn\èó¬\Ç8\æ\ç­¼©26J¹0\Ý\r®5—&CJ\Çjºg\Ö80mbì—•º¿Ýª_Imº¶¢vG\ÆGTòC3\Ë[~\ì\ÈÚ°’\àMM‡\ä\ÃU2¶¢\ß4\Ý\è\å­.%\Ù¼œùw,…›\à\ËÁ·+mD1\Ë7A\Æ\rH-ŽÁ\Ôh\Ï`Í¡;ñ1\ìgE¦Œüw“\ÖOb(ù¦ñòz\Ë\è]mƒÿ\0¸Sx\æúS\Ù[g\Ê\Þ5¾”$ùö\"šo\'¬¾eµQ¶\'&\ÏTþ\Ýü\ßIz{+lùB›Æ·Ò¾fº[LO\áM\ïO\í[\Í\ß@XX­to¶D\â&\Ïo\í\Þ9~’ô¹¶\Åf¤u}Ò­\Ô\Ô\ì :I*^\0\'v\Ü\×Í†\çmm®\0\ë…09Ú·œ÷W\Íú“bZk¼MKQL^\Ùf`-9ŽU-¬\Ã¦e[n¬\âe\ËUÆ­\Ã[3\Þ\îu\ï©`\0pfD3­v\Ðw‰kUú=\Ñ\Íuh¸\É+\"‘­†´±\Ô4†ƒÉ¬R§Gº<«¦\èYe\0ñ\Æbö\×òü²9»<À\î)\Î\Øl—‰ek]&zº‚¬—gÍ–¶kUyÁ”U\ÒU\ÞYð€dcª^>õgÀ\ÐVC]\ìdH\ÙFU™88¸mÛ´žúø¬Á˜.\áp©ºV\\æ–¢¥\âMcp?£\Èe“}H\ît¶\É\é›Y²>³Œl¨y¹gžy\î\Éc\í·\\!w‰\Ó\Ûo1TD\×j—¶­ùg\Íï»‹Öž‡R\ÅKUP5”T\æš jF\\^YmÛ·¾°GZ5Š†’\ÙN\Èiá¢\ÉXXK‰\Ì\ëdv\æŒ$Ã•1	\à¹Fø\Ü\í@\áZ\â¹³\Öß±}\Ø\Z\Ð\ãq`ƒÑ®\Ûÿ\0™kTú;\Ñ\Õ=!¡5ñ\ê˜Æ½i% µ\íÙ·a\ÊGm\ïs/¸0\0§…¬Šq¬Ó›d5¥\Ï\"2Ì\Ù8ý\É\ä»•V´\Éw+ˆ\Óÿ\0w\ÆT¼kwŽk\Ö\Øl˜Ÿ5®±\Õ1\Äó\Ë*$\ê\\7ƒµb*ð¶­\Ö>\ë+k€AOWÖ††\ä	\0\ív\\§?½dp\í\Ã4&†\Ýrk\Ø÷™ùê„sŽò\\NeHg½\Ö\×F\ÛmN\\p<Yý¼ž²ô£µQô™Žq·öòsw\×\Í\Ú\çmuº¤6\áLOvq­ô¯º;· \áÿ\0\âùˆÛŸ\é[\Í\ßN=‡swÄ¸b\ÉxŠ\Í\\ú ù#/’A;\Ë\"Ù°;ª\ØN[„¸\×@\à%«©k‹5ò\ã%\Ø>Ü–L#xu}M\ÂLWk«uIyts¿©h\'g)!\ÜW.\Â\\|MŽkŽ)‘øuvF\ÆDo-\Ìo\Ën\àºj–‡«Ë‰\äß®\ä\ì¸\ãŒ\ï†Ik\Å08¹\ÒI—.\ÍûNÅœ²TYoô®«·\Z§@\Ùa\î–A¬FÃ–\ÝÙ­:|7q›2\Õ\á§9ñ\0p\Z²\ì\Í\Þ÷!·3–\åž\Ã0\Õ\Ù\ê\ßE\Î\Ð\Ë{™˜Š	\0!ù\ï\Ü7……zZ7§zRã™”\'W{\â\\\rMVJªœ£ˆlµbš¤\\*œ\ÇL\ç\È\Ç~‹k\\3\Ï#\ÜQ¿?ˆ¨(°mUÚ¾‹¡›{s#†™®\Í\Î\èYŽn.\ärËœ\æ¥\Ý%UST\é?F\ÝQ¹WUg¨\à\ì¿C\ÜZW\rNÇ°Wý ?úY—<ôœ\ÏQú¼ŸA\ßnEwVþ°Ÿð\Ø\×\n\Ô~¯\'\Ðwô+º´ð=„ÿ\0†Æ€\ßQ¡\é\Ç\à\ÂóôcüF¨\åþø÷Ô§ƒ\ÏÑñ\Z£—û\ã\ßVmC\É,\Ê\Øõ©dþ\Åw\Êcˆ„D@\0DEV$ß…û¶ø,^`YE‹\ÂýŽ\Û|/0,¢ùý^w™ö­¡DE¬ô\ÜI\Ö‡ƒK\æ•\êqÄ`¸x4¾iPqÞ¬Úƒ–y¢¶]ZY0ˆŠÀ\Êc\Ä\"\"‚\" ˆ€\Åbž\Ç\ë~¯ó¢ld ðX¼Ð¹\Ûö?[õ˜]d\ë%‚\Å\æ…Y\×\ÝHd_¶7§S4_U@ª¸º¢‡r\å^}—aŸ\Î+ªŽ\åÊ¼0».\Ã?œP|ƒ]k†c ]°\î\ÏX.´Gñlûð|Æ˜w\âÊ»¦%¯\èZy)Mv£œK‹‡#A\æ]\n8Fh¶Wmÿ\0ª\Ë\ê $ž*?ŠgØœTÏ±F\Þ\è\Ýö\Ì\ï%—\ÕOtnˆûfw’\Ë\ê $iø˜btÎ‰¹F\Ò\í€r Pi§\×t³g€VÁQ;Ì±ˆ8 ™&{œA\ÌP­\Ï½8jœH\â\Ãý–_UcÝ¦\Ý¹®i­¦s]žc\Ø÷\í\Ìd\Ã\Ê6\"ùÍ²›Iø¨\êÁt\Î\Ë6´3iÌ‘°r\í*Vi;QqFZ\ÐD²\Ø[{½ñ\Ïp\r9Í˜Z“tÑ HÆ¬u”ƒü ‹{\Ç.\åï¯£¦½9Žc«©œ×Œ‹M½ùeþ•Ì¸w6»–“°}·\rÍŠŒÎžŠ¸‡q1\ë?_›/\äJõ\ÂúCÂ¸¾\ç%ª\Í+Ÿ<4Íª{^À\Ò\ZHeÏ´g\ßRNZ\rŠœ\ÒGr°¹\Ú\æ1A&¦¶\ìò\Õ\ËrôƒOš¦—¦¼E¥º¥Ì¡{IÄ†÷Øøÿ\0xÙ|\ÉI±\Ædß±WŠ\â™ö(\ÔpŒ\Ñl®òY}U_tnˆûfw’\Ë\ê©$’x¨þ)Ÿbøš(ø—\ç}\é\ä\î(\ç\Ý¢>Ù\ä²ú«\æ^z$tnkq+³ ÿ\0\Íe\æú(\r\î\Ã=‹‡8\ÚwòwUû¢‹\â™öZ¸Ah¢Š†:i±!f`\åM)þŠ»<#4G\Û+ÿ\0«/ª„œI¤¬9…®³\Ú.PNfŠ‰ÕŒÔ‹1)¡i\å\í\Èw\n­“0]v¤tõ\Ò=­Õ±\æ\á˜\Ï,‡6\Üù¶­j}<\èJ®A5M\â)^\Òs\èd$ÿ\0wº¼#\Ó^\ásŸ\ru3\àA\"\Þñ˜þM\î¬U\Ö?\ß\ï^<?¸³q¶\é]h\ëXMDœS3f\ÍbH{¤»\Ê\Ö\á¤\ì7m­®¢},®}‹rcCˆ#0\Ü\ÈÝ¬;ù­f\r6\è&\Æ\êjúh\Ì?Ý–\ÐH5r\Ú2\êv%^šô[#ä«¯¦™\Òg¹\Ö÷’\â9OS™Ü²\æ\×=5A[ªiú&8\Ð$,\Õ\Ìõ<\ëO¶\é«×Š>¦x:.¥p’\Þ+‹pn«ù‰\'`\åVc„†\Ú\Z~\0F•™†ó§\îV‡Mzv³Mm)\ØG±\ï\Ë\ÑE`m\Òv	dT\n\àaœ\Æ#{b%¥\Ï\ÏTsÔ\Ü\Ë#IŠ\ì7*Jª\Ëy5’>6FGo- [Ïž[€tÓ WE=M\ÅÀs‰¾Ç¿&ˆ\Ø5vo?j¹¦\ÓÞ…)\Zö\Ò\Þ#ˆI\ïƒ(¤h?cT<‚6[Vðýæ¾–\ßKO1udP\Ê×º0\02\Ä\ÙZßµ¯iÏº¶\Ö\Çý“~\ÅG§}\Å3*c¼D\Ùchc\Ú\0\0\0NÍ€öA]7„fˆ€Ë¦Wÿ\0V_UI\n\æÿ\0wŠ?cjr¿ÝžE÷C]\07.-§wqF\×\Ú&©£–±)\×{H\ÓJ\é_Tü!ôM4q;\æ04\åK)\åôQŽ\æbûŽ\å¶\âm¢µ¶¶žh1d.#`h\æ¿\ÉZM¤º˜^\Æ7\Ï&m\ÏY­ \î\rû}A\é\ãAq\Ï5U66¹C,\î{¥\"9\\±\Ì\äH‚¾ö\ÎÐ³\âd58Þ¶¡¢X¥%ôògœn\r\Ì3\Þ\æÑ°.¦þ‚¢“W¹\åÝ®\ä\ìø|\ÚE¹\Ó\Ô=‡¹\ÌkrakIx\'>LÀh\Â×§\ß\è]=½´¿¥s[¶»T„\æ9w\ìQô‘¡÷6Fûb\Ü\Ü\0ƒ«¥sŽ¨\0ž¦Ó³ud\ìúb\Ñ\r¢\àúöcšÉµ™Å˜\ßM&®ý››·%®»\Ñeñ«2`«)^O“Ò€šPÑ©­þ\ÝU\Üý’\Ñxi=°`¦±\íq\é€\ì?ù¬\Ë[\á¥c\Ö\nž\ßy¬’Š\ßUTk\'¦·\Í3\é\Ã\á-c\Ã	=Wsú¨3\Üin–\Ü;Lq=\Ã]\à¿\ÉQ<®±MC\r=C\Î\Öms\Z\ÒIs5»§!¹s\ÏQZ‚\r4™‘\ß\ÑwVþ°Ÿð\Ø\×\n\Ôg\Ðò\æÀ\ïè»«@ÿ\0\ØOølh\rõ\Zœ~/?F?\ÄjŽ_\ï}H\Úqø0¼ýÿ\0ª9¾=õf\Ô<’Ì mZ–O\ìQ|¦0ˆˆ@DDDPð%bMø_±\Ûo‚\Å\æ”X¼/\Ø\í·Ábó\Ê/Ÿ\Õ\çyŸj\Ñz\ÉDZ\ÏAÄ`¸x4¾iPqÞ§I\Ö‡ƒK\æ•\êÍ¨9gš(eÕ¥“ˆ¬¦<B\"( \"\"\0ˆˆV)\ì~·\êÿ\00º&\É\ÖJ‹\Í±Ocõ¿Wù…\Ñ6N²Px,^hU}Ô†Eûczu3EðUT\n«€‹ª(w.T\á‡\Ùvð)üõ\Õgr\åN}—aŸ\Ï@A¨œ¨€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ˆ€ó¨ý^_ \ïè»«@ÿ\0\ØOølk…j?W—\è;ú.\ê\Ð?Àöþ\Z}DD‡§ƒ\ÏÑñ\Z£—û\ã\ßR6œ~/?F?\ÄjŽ_\ï}Yµ$³(cÖ¥“ûDE\ß)Œ\"\"\0DD<	X“~\ìv\Û\à±ye/ö;mðX¼À²‹\çõy\ÞgÚ´^„2A³\Ðcq\'X.\r/šTw©\Çu‚\á\à\Òù¥A\Çz³jY\æŠ\Ùuid\Â\"+)ˆŠˆ€\"\"Š{­ú¿\Ì.‰²u’ƒÁbóB\çlS\Øýo\ÕþatM“¬”šg_u!‘~\ØÞL\Ñ|Uª\à\"\êŠË•8aö]†<\n=uYÜ¹S†e\ØcÀ§ó\ÐG*\'* ˆ€\"\"\0ˆˆ\" ˆ€\"\"\0‰\ÝD29\åÊ‚\áòM\Û\Ð\\\"\"\0ˆˆ1ˆ€\"\"\0ˆˆ\" ˆ€ó¨ý^_ \ïè»«@ÿ\0\ØOølk…j?W—\è;ú.\ê\Ð?Àöþ\Z}DD‡§ƒ\ÏÑñ\Z£—û\ã\ßR6œ~/?F?\ÄjŽ_\ï}Yµ$³(cÖ¥“ûDE\ß)Œ\"\"\0DD<	X“~\ìv\Û\à±ye/ö;mðX¼À²‹\çõy\ÞgÚ´^„2A³\Ðcq\'X.\r/šTw©\Çu‚\á\à\Òù¥A\Çz³jY\æŠ\Ùuid\Â\"+)ˆŠˆ€\"\"Š{­ú¿\Ì.‰²u’ƒÁbóB\çlS\Øýo\ÕþatM“¬”šg_u!‘~\ØÞL\Ñ|Uª\à\"\êŠË•8aö]†<\n=uYÜ¹S†e\ØcÀ§ó\ÐG*\'* ˆ€\"\"\0ˆˆ\" ˆ€\"\"\å\î-cœ6	”·­§	\á~·\×V@ùg¨„I#\Ì\Î\Ú\âO2\Õfþ\åÿ\0Dÿ\0E½`«0©Ž¬®e8kgaUm¨©V(:M§~\Ç[Î¤aNøö>§Á˜jž&u¾W¶6—–²W\ë¹¶\ï\æî•|š3eº\×tsˆ¦¼\rjgk<d\Ð\ÜËž	\ê\0ª\Ïw*\Ýý’·~ýO\ã[\éZUnŽ0M{®Â¢\í)Š\è\Ç68›PÀ\Ê\"\çk=ÐŒ¶;ª9\æ	\Ëf[\êô%ó\ÊK\êp¡Z·ü›-\Í\ÓD&:i©®ôµQTU\nF\ËOVdlrj\ëdòR2Û™\äWõ4\Ú.£µUW{|P¾Tµ\æ¿a‰þõ\ãª\Ú{â±´º/\ÃM¼Ãˆ®ø²¦\ëq†X_\ÆLi£c£‰¥¬ˆ²6–\í9»-cžü¶,lº	\ÑÜ¶º›t—êš‡K\\+ žªHjN™d\rl-tM\Öp\rsNA\Û\Öÿ\0^¥\×\Ç?\ä\ÍU—ºF|É¢P\ê\ÍþÙ­r\Ö\è6ôyÖŸUÁ®-\Z\Ûr.h<Ä€³½#a¾ZsgÆ»oÞµŒ/¢\Ü„ï–œCo»°\Ô\Úik©X\ÆEKO$O‘\æ8X\Ð8†–]\Üù7\Ór·~ÿ\0O\Íý\ëVšºF‘)\É\çsÕªšÜ“0L‡\à¶\Ô\ÍšöD\ç5\Üsö\n\Ñ-ò>Z\Zy$%\ÎtM$ÿ\0%\'^.6÷Zk\0®§\ÌÀð?J\Þc\ÝQ…·e¾œ„D\ÜÂµl½Z\Õ#Q\Õm\á\îvµ4ªO{\Ôl¹DEm;+\0ˆˆHDDD@y\Ô~¯/\Ðwô]Õ \ì\'ü65Âµ«\Ëôýuh\à{	ÿ\0\r¾¢\"CÓÁ…\ç\è\ÇøQ\Ëýñ\ï©N?Ÿ£\â5G/÷Ç¾¬Ú‡’Y”\r±\ëR\ÉýŠ\"\"\ï”\Æˆ€\"\"\0ˆŠ¬I¿ö;mðX¼À²‹…û¶ø,^`YEóú¼\ï3\íZ/B ˆ‹Y\è1¸“¬—\Í*;\Ô\ã‰:Ápði|Ò \ã½Yµ,ÿ\0b¶=ZY0ˆŠÀ\Êc\Ä\"\"‚\" ˆ€\Åbž\Ç\ë~¯ó¢ld ðX¼Ð¹\Ûö?[õ˜]d\ë%‚\Å\æ…Y\×\ÝHd_¶7§S4_U@ª¸º¢‡r\åN}–\áŸ\Ï]VTG¦­\Öi^\íjºR\â8\í¦\Ý–>œË¯¬s\Ïc†H9\åEÐ¾\ã\Û\ÆþŸ)|Þº{o¾Ry½t=\"\è_q\í\ã·\ÊO!w®ž\ã\Û\Ço”žB\ï]\ÏHº\Ü{x\íò“\È]ë§¸öñ\Û\å\'»\×@s\Ò.…÷\Þ;|¤òz\é\î=¼vùI\ä.õ\Ðô‹¡}Ç·Ž\ß)<…Þº{o¾Ry½t=\"\è_q\í\ã·\ÊO!w®ž\ã\Û\Ço”žB\ï]\ÏHº\Ü{x\íò“\È]ë§¸öñ\Û\å\'»\×@s\ÖÑ´Šò”¿»\Æ?\î\Ñ^\ã\Û\Ço”žB\ï]=Ç·Ž\ß)<…Þº‡.n&2J\\\Z9×¡)~\"?ô\èJ_ˆýtO¸öñ\Û\Ý/»\×U÷\Þ;|¤òz\ëN\Ô7c\à\ç^„¥øˆÿ\0\Ð¡)~\"?ô\Ñ^\ã\Û\Ço”žB\ï]=Ç·Ž\ß)<…ÞºŸNÝ\à\ç^„¥øˆÿ\0\Ð¡)~\"?ô\Ñ^\ã\Û\Ço”žB\ï]=Ç·Ž\ß)<…Þºzpð7c\ãø9×¡iF\Þ!Ÿ\é\× \0p\Ü9—Bûo¾Ry½t÷\Þ;|¤òzè’*±’I`s\Ò.…÷\Þ;|¤òz\é\î=¼vùI\ä.õ\ÖDœô‹¡}Ç·Ž\ß)<…Þº{o¾Ry½t=\"\è_q\í\ã·\ÊO!w®ž\ã\Û\Ço”žB\ï]\ÏHº\Ü{x\íò“\È]ë§¸öñ\Û\å\'»\×@s\Ò.…÷\Þ;|¤òz\é\î=¼vùI\ä.õ\Ð\íQú¼¿A\ß\ÑwVþðŸðØ”7/»\Ë\ã{:}¥\Z\Í#>€q\Ëfÿ\0~º\0aw`¬iÂŽ«\è§Z\é™Nf\ÕË—\"`DD‡§ƒ\ÏÑñ\Z£—û\ã\ßR6œ~/?F?\ÄjŽ_\ï}Yµ$³(cÖ¥“ûDE\ß)Œ\"\"\0DD<	X“~\ìv\Û\à±ye/ö;mðX¼À²‹\çõy\ÞgÚ´^„2A³\Ðc1\'Xn\r/šTw©\Ã\Ü?qsˆ\0R\ÊI\'p\Õ*öJ\Ýûý7o¥Y5”c;¾\è¡\í|%*´·Uø2\å·²v\ï\ß\éük})ì»÷ú\Z\ßJ\ï\ï\Ç\ÉLTª{_Ð¹Emì»÷ú\Z\ßJ{\'nýþŸÆ·Ò›ñò=*ž\×ô.Q[{\'nýþŸÆ·Òž\ÉÛ¿§ñ­ô¦ü|J§µý”V\Þ\ÉÛ¿§ñ­ô§²v\ï\ß\éük})¿#Ò©\íB\Ïö?[õ˜]d\ë%‚\Å\æ…\ÍØ¢\ão}‚±­\Îs2\0H3\'0ºF\ÈG°”šk^\ÉJ¤lûÍ„£N¦ò·_U@ª¸(¹„D@\0DDD@\0DDD@3\n¢¦c3\è\n¢\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ˆ€\"\"CÓÁ…\ç\è\ÇøQ\Ëýñ\ï©Nk4_zs\È\022I?ôQ‹®v\ícý¾ŸÆ·Ò¬šŠJ0•\ßr…¶”«R\ÝW\àþ\Å\Â+od\íß¿\Óø\ÖúS\Ù;w\ïôþ5¾•\ßS’›\éTö¿¡rŠ\Û\Ù;w\ïôþ5¾”öN\Ýûý?o¥7\ã\äzU=¯\è\\¢¶öN\Ýûý?o¥=“·~ÿ\0O\ã[\éMøù•Okú(­½“·~ÿ\0O\ã[\éOd\íß¿\Óø\ÖúS~>G¥S\Úþ…\Ê+od\íß¿\Óø\ÖúS\Ù+w\ïô\Þ5¾•¤-‰*•Kò¿¡<a~\Çm¾˜Qb°«šü9lsI	Á\ZeU¯;\Ìû6‹Ð†H\"\"\Öz*ˆ™4n†X\Ã\ã{K\\\Ò3\à¬p\Âøo–\ÅA\ä\íô,©Mû2R¤ã„¡s#Ò¾\Zù\nƒ\É\Û\èN•ð\×\ÈTN\ßB\Ê\ßL“~^Yœ=¨\Åô¯†¾B òvú¥|5ò“·Ð²™&I¿/,zpö£Ò¾\Zù\nƒ\É\Û\èN•ð\×\ÈTN\ßB\Êd™&ü¼±\é\ÃÚŒ_Jøk\ä*\'o¡:W\Ã_!Py;})’d›òòÇ§j1.\Âølå•†‡\É\Û\èYFµ­­°@¾ˆT˜#nX³(\Æ1\åV+±UPrª¨2ˆ€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆuòýj\Ã\Ôôõ7z®\"*ª¸(bp\Ï.šiq·&‚Fnp\î2H\0‘K5þ\Ó~ öJ\Ó^ÊŠ^:h¹‚ø¥tO03\ìp\Ü\ì³‚	ÀiÁ|¿Va§Zé¡šž\ÕsuÎ¥’K¨^\è\à”B\Ñ\Ü2¹„óeš‰¨t9¤{-ö9-”µ”N ±Á_V\ê\à\Çÿ\0ft’Õ±­2\é&»XœˆË˜-‘ŒZ\â\Ì¤ŸOµ—«M¼\Ä+\î”t\Ü|Í§‹Ž™¬×•\Þö6\æv¸ò´¯sUI¨ˆdr9¸l*\0´hN\ìj\ìF÷£ûM¶“Oqž*–\ÓKV)\ßLø\Øù¥ ¶I\ìˆ\ÖÉ¬KB¶¸h3Eh·>,b»\\«\á¹\ÔÞ›S+=‘ª{žÉœ\\\Ó\Æ6.1\á \r‡h2§r>HÞ—ƒ¡*«i©\ât\ÒË˜†B\Ö4½Å frkAsŽ\ÍÀy><GO5e¶’\n:÷û!N\ê®1\ÔÎ‰°3W1\Çk\ê˜\Üs\ËSWXó\0¡\èO\Çn¿Ú£\ÃÉ®\Ðt\r¢ý-X\ãii\ßJ\ÚWA@\ÖkZ\É*‘\êI\È\ä]‘\ã*Ë\Òz;%dsWô-\åµM3\ÕR\Ì\Þ&\Za³Z8£ˆ\íi9\Üò%\Å7#\äoKÁÐ‚h8·<H\Ò\ØÁ\Ö-9\å’Ô¨tµƒ.VÊ›\Å$——QSÏ°W\ÆÚ‚]ª¼ Ô’s\ÈE®Nõˆ\ÑÞŽd\Ñ\Õ>*6»\r+!­’CCO(`°\Ñ\Ç³\ÜwI$‚L\Ü\ì\ÎÖ’JÕ­øCJ\ØJ\Éq¥À\Øq¶ú[¤\ÑSÁl–ø\ê‡Z©\Ú\Çq’\ÄùK›®ò\àMn¨=\Ã\n1¾$\ï;ö\ZÄ¶l_c¤\Äx~¯¢­õ\Ì2A)‰ñdH ±\à9„A\0‚ ,eH\Ø_]*­6y.“IF÷\Å4òY\ë!¤\×a\É\ÍmL‘\\AÙ“^Na}`\ëTö5£\Ã\Æ\Ù\r¾Ž(\é˜\ê–\Ì^ò\Ì\Ü\á½Á\Û\Ü}ñ$¨‚\r\â\Ïkzü5>œ]«j]CŸmEMG\Z\éu\Ýº\Ññe\äkF5€\î\n1w»!¹,	\â;½¥õòZ\Ùs¤udP2¦Jq3L­…\åÁ²\ç˜i-x\ì%§˜«ŽŠ§\Õèˆ²vÀu†E@7M\âSw¿\Ü`À\Øv¡Õ®±@M\ÅStU4q¶ª‘½Nq±\Ù=¹ŽŒ1»\0cÁ\Òùs²VAq\Ã6ZiIP(©!‘¼E-EEH/s\0nC‹…£T\å\ï·eš\Ër>Fô¼p¹\Ñ\Ûé¦ª¨|Žm;d¾y5vnŽ0^\í\ã`{EUNö\æ%kzb\×u%£ºD0 ºb{¬·¦\×\á›snu÷Ù§8‚J°ù§·>¬\á-\0\Ø\éš\Æj–³sIXˆt+‹ªŸrª½\àºCUSlª ©«¡¸Ee\ÊZŠ€\ç\ÌùÜµDmkC^Nm.i\ØSr>Hß—ƒ¤öH\Ðø\Þ\×4\î \æ\núZÞŽl—;‚,ökµ®Ž¶š™¢¦]3`¥d§ªxŽ6õ-\ZÄ“–\Ì\É+dZˆ\"\"\0DDD@xVR\Ó\ÖÀ\êZºx\ç†A“ã‘¡\Ípî‚¬Ãœ¶:\'o¡eJoÙ’•\'%Ë™¾•ð\×\ÈTN\ßBt¯†¾B òvúPúd›òò\Èô\á\íF/¥|5ò“·Ð+á¯¨<¾…”\É2MùycÓ‡µ¾•ð\×\ÈTN\ßBt¯†¾B òvúS$\É7\å\åN\ÔbúW\Ã_!Py;}	Ò¾\Zù\nƒ\É\Û\èYL“$ß—–=8{Q‹\é_\r|…A\ä\íô*/‡3\ÌX¨<¾…•#¾›¶d›òòÇ¥ó§Š8\"l\Æ#Ž6†±­€6\0½Uªƒb\à\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDÿ\Ù','2022-05-23 17:46:10'),(4,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\â(ICC_PROFILE\0\0\0\0\0\0\00\0\0mntrRGB XYZ \0\0\0\0\0\0\0\0\0\0\0\0acsp\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ö\Ö\0\0\0\0\0\Ó-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	desc\0\0\0ð\0\0\0trXYZ\0\0d\0\0\0gXYZ\0\0x\0\0\0bXYZ\0\0Œ\0\0\0rTRC\0\0 \0\0\0(gTRC\0\0 \0\0\0(bTRC\0\0 \0\0\0(wtpt\0\0\È\0\0\0cprt\0\0\Ü\0\0\0<mluc\0\0\0\0\0\0\0\0\0\0enUS\0\0\0X\0\0\0\0s\0R\0G\0B\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0o¢\0\08õ\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0\ÚXYZ \0\0\0\0\0\0$ \0\0„\0\0¶\Ïpara\0\0\0\0\0\0\0\0ff\0\0ò§\0\0\rY\0\0\Ð\0\0\n[\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0ö\Ö\0\0\0\0\0\Ó-mluc\0\0\0\0\0\0\0\0\0\0enUS\0\0\0 \0\0\0\0G\0o\0o\0g\0l\0e\0 \0I\0n\0c\0.\0 \02\00\01\06ÿ\Û\0C\0	\n\n			\n\n		\r\r\nÿ\Û\0C	ÿÀ\0Œ\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿ\Ä\0W\0\0\0\0!1567AQasu²´\"Ut‘“•±\Ñ2VW³\Ó#q\Òð34r”¡Á	$%RBbe‚CDTd’\áñÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0?\0\0\0\0\0\04q15!23A‘ÁQRS\"¡\Ña’±$rðBCD¢²\áñÿ\Ú\0\0\0?\0ýRÁ8†	\ÄH­¼h‰aZ‡ÿ\0-\'UJ758“\Ô^W“h-6—ª¥º\Ë5ÁÙ­@\ß.ö\ËIFjrz†jrz‰ýL\àŒ\Ô\äõ\Ô\äõšœž¡šœž¢@šœž¡šœž¢@E\ÖD\ï•u‘4\ÉYÁÿ\0\Û<¾0L4=\Ö\ß.\êó•–Bø\ã)÷\ÏV\Õ\åŸºÜ¾5”\êÖ„\âœF\ÉQºI^ŒcQ\\\ç*\àˆ‰Â¥j\ì\ÕÈµ­i\ÙV/\í%\åKp´*\ì\Zj\ÚjuEÁQ\Ò10\Å4\ã‡©\Æ8b²a8c\ïG\Å8_\'yK¹W»\×\Â\à\Þ\Zk^Ê©\ÐÙ¡v–95±\í]-rp¢›6<*˜p8\Â\"qŒa–ŽBQx\rzÿ\0\Þz»›r\í»\Óg\Øu6\ÅM•E-TT\ÉûÚ—5¸£Ê¦§±\ß+\æZ2cA~\ïÈ­º•\Õr\Ë\ìú¤r9ŽTG¦r#³W\r¢Ž1õDLø¬\ÜSþÑŠqŽ@¯D]KˆñK,Sˆ…TN3“Œ\äT\ÅI\â\Ë9¼C98Š.;%\"¹b\É\ÍÍ¶)©\ÖÁ¾š’¢¥Q{¤«š\Ø\\Ÿùs—Ðº\Ë\ê75ZŠ\ÝJŸ\è#®ž”p\à‰êž‹$T^\0®D\\3JŸ,;(2?\êºK&û[\Ó>×¯V¥5•gS:ª²Lt&3N“ŸlÉžP­\è.½:[–\r±V\×:ŽŽðYR\ÙòV#~\×qîˆˆõNE\Å8…3\Ò\à™ü¼V\Þsx‚*/Adód¢^M’7\çcý»OVUd\ËUxs\Ý\Z\ìñ5\\šxQO·!› /VVo\íý¹ööJ\í{±Itk\ÝKG_V×£+Zsqñš‰œ¹¹Éš®L\ÕM<™\éDa\ãÆ„\ãN8øN«Á€+š‰Ž9Èœ:\è/ýæ«¹\×*Ú½6}‰Sk\Ô\Ùtr\Ô\ÅANŸ¼¨s[Š1¼ªEUtbfS38CaEELp\'GX\ìv\ÊÅ»–Œ˜\Ðß»\Çq«nmT’\Æû:­Žj1\Ê\Ôrg\";Ã…³3›¡W„õTM3„ñxŠ¢cd˜/\0Á8‚)!\é\'Á8‰\0F	\Ä0N\"@‚qˆ`œC\â$…TMj\â\'EÄ#\â\'¨º€`œC\âŒ\äš4o\na‰*¸¢…\"PóÄˆ‹xo„\Ûy¸?ò°\ä\ÍNOQ\Æý\Ð\ÞN˜›ªÃ”¾\ì}{=\ZCŽÞ™\Û]e©\É\ê©\É\ê$-z3S“\Ô3S“\ÔH3S“\Ô3S“\ÔH3S“\Ô3S“\ÔH3S“\Ôo,DKF·Gÿ\0¼¦nù-\Û\Z\Îe¿ôò•·;¿Ì¬¼ÿ\0¢\Êj&\àœD7W È¤º\Ì\0\0—[y6‚\ÐóizªQË¬¼o&\ÐZm/UJ9u–kƒ³^° o—{e¤€Á*dñ\0 \0\0\0ô]mò\î¯9Y\Ùd/Ž2‡º\Û\å\Ý^r³²\È_e>ú\ÍyC¨n·/eCl\è¾Vµ\ÅØ½}­»¦Jz¹)YDÉ£\\\ZO+bUE\à\\¦ÿ\0\rš+¿f\ì^±\ÒÒ¶ªÔ¬ªš©ªö\ç\Êõ~	Šk]˜^\Ì,”^Ìµ\äðd\î\ä6‘Ö½¤úU*¦\îQþ\îv=Ø»\ÃCT©¶?lFÉ®B2EC|²\Ïq,\'^û¦•½U«\rD’÷$…VF½Šˆªˆ\Üp\Ã\Öi\ì\æš\"\Òkþž+%¤MQgñ\Æ}°\ÅH\ì=¼v\Ï\Ù²&òE`5¶\ídFªŒ§–\n—¶7·þ\Ü\Z\ì\ÝM\â7=†O½[-òchÙ™`½v\Ì\ÖÐ•lz8l\ëJz9ª¥_\Þwz‰cr:G5ªÖµsSUE\àúvdrñZ÷s)y~¼4KieAõÍ²c—U§™\ï‘Òª¯þ\È\äD^&c\ÂX›26.\ä\ÆúA•(¨[$öŒ–»>¯jq7ME\ÎñWB\"\ã úSù,ðµ\ãG®?´¦f*š¦\ÏÆ¿\Óÿ\0ª!ùS\ÊEsvGdJ×¾¥¯O“úKA¶-¥Q:º¢°\ÌøpG\ëLQ\Z\ì5\"¢\á¬]œ¦_\ë7þ6…þ¥½–—\í\r»\à´P\çL\Ü\ÛN$F\ç.•n\Z0Ô©¯Fƒy\ØÍ±öû\Þƒ\ånýÚ¶g\ÐoNYŸWUAM[û¥ŠšW½ñ«\ÕS\çºE^\Õ\á>»?bXi¶\Ú[&‚\ÈK\ßWi2ª6%v4Ù‰[\Úe\Í×˜\Õ\à\Öy§¥LM3\Ç\n:ÿ\0ŒO_èŠ¢™\ìð\éU\é†\Ð2\ã-ïµ¶+X;1b¿Vý«k¢®E£´\æe=4“¹Œ¦Ž\ìÆµ­F\é\Ã.v8\âr\å\ÊÌ½•¬\r—.\Ê-\ä¦\Ê+þ®´]UIiM\r3bžfÆ”ñÓ¢÷65©#WL\å\Í\\UqRß¿›rŸxvX;\ìè¬µ½–|t­™¯«Í¦ý\Ü\Î{°“7N…NQ\Ù“ ³b\ÆG¶)\ÑY‹Sy\íú\Ê:¹i³¤§§‚‘‹$ò:DL­ws\\W^‚)\î\×\ÏM]8i\ãÿ\0·‹,fÊ‰«Fq\×³–‘™Q\ÊM‘l“\ØwŽª\î\Õ\å.Ï¤ª¼6…»”ò5\ÎF9¬T\Ò\ÔvvŽ4MGy³Ì¼›òCMY‘[\ÝnCg^©\Ö\ïZ´ö•¥=k£–H\ÖF\ÖS¾W*\Ã*¶)cvoŠ©\".­G%‹²aÕ¯yl\\›Û™µ)(o^Ka¦§³[Y‹`¬†$gˆ\ç\'\ÙUVc*ñš6ÊŒ‚l¸\ÙIt¬6Ó°.•õ\rs\'úºY\Ò%TŽ\Í|\ë\"³£>\Ë[Â’9x0<Zu\Ä\Å>5ÛŒ{&\ÏÃ¥Ã£ú\áû´-™\Õ5v\Þ\ÅÚºº‡\Ï<Í³$’W»=\ÊúuW*ñª®\'\éz\ÇF²&•ly\ß\Ç<s²b¶U²•Y\é\î\ÔvK›p#¡m³\Ý\ë;žjÄ°«ûŸ‹\ãý‡a«€öTl\Â&±p\Ð\ÔOô=\ã\Ý\ÕM?U_®4\ã3?L?3¶Ó³+\Û52‘ò…}¯a¾©\Ô1\Ôø\Ý\Å\ßHtM\ÍEÕ˜\Æ\àš8\Ôý¾9<¹÷õöS\ïU\Ê\é,+B+RÏ“=\Ì|1ý—5\ÍTT×‚¦¥Mg—/\Æ\ÄÌ¨\ä\Ó/sl‰\Ø\Ï[d\ËSj:E¶n\í¥*ÁB?L™D\\1TEÃuk-\n+d\ÆRo%Y}\Ûedò\ïXµQ\×UR\Ù‚\ÖVZktB÷«Q±ÃŠ®)¥W\â<Qù¬¨§\Æ8\ëªú­+¯\Âh\êy\×&‹üSo’ÿ\0\èõ/þ\È\Ø\ë¶)_‹\åkß½“0Ú—¢Òªe’\ÛG\è)5KÜ”Ùµ\Ü\ÌW\ÅÁ8¹nn\ÆÜ¥X{8\ï_«¢³R\êZt\ÓS¹•X\Ôg¹±¢c\Z\Ä]8\ÇíŠ™W\É\Å\êË³ya²›O”\ÖýO\Ü+3Ü½\Öiž\Þè™¾&‰\Ç\Â|\ã\î\èˆ\ãUxõ=\ÕÚª~uS\é‡[[\ØGy¶`\äfI2\Ñ{-¹,ë¼©cYñY–œÔšF·9j\ê‘e‘3šˆŽUn\r\ÅS5Ž\Ù^\Ê[ò-²%×’ö\Ú6³ò{OU\r“jM*¬ñ5–5n\Ú\Ö\Är\'’÷\Øw’+\í±; w¢›*ôKUGQUlw;:e¨GB\ÈqÁ0j*¹sB&:Mb\æ\Çò»²‹k[T)I|ò¾Êš\ÖS\Ö/sX£“=aI4b\Õr\È\ç.ŒQ˜\éÐŸM¢:]>‡„4\á\ï‹Í„ôz3_—V‘3é‚¹¹»&/\îJ?\á\ßO}¨mªš\Û\Óm[õ6-\r¡Võ™ô\Ù\Ï{–OU±\Æ\äN%T^@\äob\ì6†I¬+\ïjeù®Q­\Û.R[\Åõ\åJº\Z™£I\Z\Þãž‘¾6\ç#U®oŒˆ¸®\Z\åÀ\ØCnZ»\r$\Øõ•\nš+:\Ýe£5©EWI/\Ò#¦¨\îŠèœ«‚bŠŽV¹8œ¦ñ“‹7e\Õ\ÐÉ­›’š‹±tþ—dR²É¤¼\ßZ«Ø”±µ\ËO›œ²#<\\pUM\'Ò¹Šª®cŒá†˜uþ¯ŽŽ:\ã\Õú=w©­Š+Š’ß´¡´-`c*ª\á§\îžTLô9Ù¸®œ1]gduö\r}‘GEj\Ú.´+ ‘\ÏT¬F,\Ò\"x\Ï\ÍM	Š\éÀ\ì3\Å\êž\0\0„€\0\0\0Gzm\ê\Ë:*{*ÎŠºÑ´ª>K\Õ+Or1\ÏU’DcÕ­F±u1ËŠ¢a­S¼:\ënÁ³/\r+(\íZu–8\ål\ÌV\Êø\ÞÇ¦8+\\\ÅG&…TÐºQU8@×¥\Ê}ß²)Ü—••ud?»©‚*yj™\È\Õwsl±1Z÷+Q‰¡\Ø9˜µ®\\\Ò•û…bPTÚµ\Ó,\É¥Eñ\"=d\îi‹œ\ÄDLÿ\0p\ÅN…>¶d\Î\äF¬V\ØLÁF¢,òª*¢*g¹\Ø9\ëŠ\â÷b\å\áU>¹\îUÚš®:÷Ym\îñ¹^Žl¯b9U\ÙÊŽFª#“;N\nŠšWF•S\änQ\î‹ì‰­©+§†š…¯I¨\æŽEî¨‹¹¨\ç#‘t*\"¦´Ö‹‡OZ\î\Ò%m]«\Ü!tŒH%\îR9$b²W»þ\í\Ó5«Ä«©S¾§¸WR–ÌžÈ†\ÊD¥¨tn‘«4Š\åV\"#0z¹\\™¨\ÔDDTD\à\á0\ïwt»´UU*K\nµZö\ÔÊŽv\ÄDr£¼d\Â&h\\Qp\Ò:±Gƒ\à\\«\Ý¤\Ò\ÅÜ­d†²\Ï\ËfT\"=\æ£3[™œ¸\ç¢\ã†˜\â¨%\Ê\ÝÈ‰‰#\ëk“V¥Yõ]NwpF+–\\;ž=\Ï¹sõxªšô}&O.•ô\Õ4\ÖR¤´kû‡>¢W÷4L0DG9S\ÍLRa£O“«›M\Ýû‰5>	\Ò\È\å\îNnj±3œ¸7]	¡1\\0\ÅI\êLÿ\0\ÍR\îÓ™*K5KŸ®…\ëMES4hþ\è\æ5¹\é\Z\"¹U¿g^½i¤\Øl‹^‚Ý³\âµ,\ÙúyqDW\Æ\èÜŠ\×*9®k‘\ÕEEEEDTT:i2ut\ç¿\êœ\Þèª®FT\Ì\ÔUW«\Õ\Ø#‘3³•WzuÕ•ePØ¶|Ve›N\Ó@˜1™\Ê\ì1\\UU\ÎUUUUU\ÅW#©\n\rû¡¼17U‡)\Äý\Ð\ÞN˜›ªÃ”¾lYz4‡½3–š\È\02Zð\0\0\0\0\0\0\Ýò[¶5œ\Ë~&nù-\Û\Z\Îe¿ô\ÊV\Ü\îÿ\01²\×\Ùe7W \ÈÅº½E%\Ö`\0º\ÛÉ´‡›K\ÕRŽ]e\ãy6‚\ÐóizªQË¬³\\šõ…|»\Û-$\0	S\'ˆ\0!\0\0\0\0¢\ëo—uy\Ê\Î\Ë!|q”=\Ö\ß.\êó•–Bø\ã)÷\Ök\ÊCu¹|k)V\çsSEQ\àž6I¨­{\\ˆ¨\ä\ÃR¢\èS•	58cJ\Æà¥¤†Š\é©`Ž(bj28\ãj5¬jjDDÔœ‡\"±\\˜;J.³0J\"0\ê‡\"llH\ãkZÖ¦ˆ˜\"\'&Y¸\ëô\0–9«Ã¤ÁÐ±\ÏkÕUn8*¦*˜œ ‹\Õ\á!YŠ`¸)˜Ñš¼†@sTf¯@sW€f®&@7Äj±\íkšº4*ŒÁ¨\ÔDLÃ€\ÌŽj\ãˆ\Í\à2`!u© \0\0\0\0\0\0\0\0\0\0#ø\0À\ÃN$€!u¨)‡žº\É\ÓuXrœO\Ý\r\äé‰º¬9K\æÅ—£G½3¶š\È\02šð\0\0\0\0\0\0\Ýò[¶5œ\Ë~&nù-\Û\Z\Îe¿ô\ÊV\Ü\îÿ\01²\×\Ùe7W \ÈÅº½E%\Ö`\0º\ÛÉ´‡›K\ÕRŽ]e\ãy6‚\ÐóizªQË¬³\\šõ…|»\Û-$\0	S\'ˆ\0!\0\0\0\0¢\ëo—uy\Ê\Î\Ë!|q”=\Ö\ß.\êó•–Bø\ã)÷\Ök\ÊCu¹|k,’“T±„B€\ÄbSW·eÎº7¦Ôº•—vÜ©¨²flKq,nr±¯ñU\Ò\"ª`ôÖ‰§ªðÁ¸\ßt\ï³ƒõ\0¾±”/†\r\Æû§x½œ¨<0n7\Ý;\Å\ì\àý@/¬F%\áƒq¾\é\Þ/g\ê÷Nñ{8?P\ë‰Bø`\Üoºw‹\ÙÁúƒ\Ã\ã}Ó¼^\Î\Ôú\ÄbP¾7\î\âöp~ ðÁ¸\ßt\ï³ƒõ\0¾±”/†\r\Æû§x½œ¨<0n7\Ý;\Å\ì\àý@/¬F%\áƒq¾\é\Þ/g\ê÷Nñ{8?P\ë‰Bø`\Üoºw‹\ÙÁúƒ\Ã\ã}Ó¼^\Î\Ôú\ÄbP¾7\î\âöp~ ðÁ¸\ßt\ï³ƒõ\0¾±”/†\r\Æû§x½œ¨<0n7\Ý;\Å\ì\àý@/¬F%\áƒq¾\é\Þ/g\ê÷Nñ{8?P\ë‰Bø`\Üoºw‹\ÙÁúƒ\Ã\ã}Ó¼^\Î\Ôú\ÄbP¾7\î\âöp~ ðÁ¸\ßt\ï³ƒõ\0¾±”/†\r\Æû§x½œ¨<0n7\Ý;\Å\ì\àý@/¬F%\áƒq¾\é\Þ/g\ê÷Nñ{8?P\ëBø`\Üoºw‹\ÙÁúƒ\Ã\ã.«©xý\Ãú€_K¨)§\ä\Ç)¶>U,*‹vÅ¡­¤Šš©ÔŽ­kó\ÑqL\×*aƒ“„\Ü‰C\Ï\Ý\r\äé‰º¬9N\'\î†òt\Ä\ÝV¥ób\ËÑ£ŽÞ™\ËMd\0Mx\0\0\0\0\0\0nù-\Û\Z\Îe¿H7|–\íg2ß‰ze+nw˜\Ùkì²›«\Ðdb\Ý^ƒ\"’\ë0\0]m\ä\ÚCÍ¥\ê©G.²ñ¼›Ahy´½U(\å\ÖY®\ÍzÂ¾]í–’\0©“\Ä\0€\0\0\0\Ñu·Ëº¼\åge¾8\Ê\ëo—uy\Ê\Î\Ë!|q”û\ë5\å¡ºÜ¾5–HIIªX\Â’\å›~+\æ˜aÿ\0Rgf„\Ó\Í\Ã,\Ûñ\ßN’gf„\ÓÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0õf\Ä-ÀZ\ëÿ\0¬\Ëùq—²”N\ÄÀZý3/\å\Æ^\ÊD¡\ç‡\î†òt\Ä\ÝV§÷Cy:bn«Rù±e\è\Ñ\ÇoLå¦²\0¦¼\0\0\0\0\0\07|–\íg2ß‰¤¾KvÆ³™o\ÄÀ½2•·;¿\ÌlµöYM\Õ\è21n¯A‘Iu˜\0.¶òm¡\æ\ÒõT£—Yx\ÞM ´<\Ú^ª”r\ë,\×f½a@\ß.ö\ËI\0‚T\É\â\0@\0\0\0\èº\Û\å\Ý^r³²\È_eu·Ëº¼\åge¾8\Ê}õšò‡P\Ýn_\Z\Ë$$„$\Õ,a\nI\nƒrÍ¿ô\é&vhM<\Ü2Í¿ô\é&vhM<\0\0\0\0\0\0\0\0ð¾Ü±#ªZ\'\Û4-¨Gf,+P\Ä~<Y¸\ã!÷p/«ÿ\0\ÑOÝŠû6’úÞŠz\ÛÁui\ë\Ç&m=£-dˆ±Å‚\Æå•¸\"®„Dbð\ë\":\çùcý1ùq[1\×\Ð\ÌôŠ\Z\È$z£•\Z\ÙZª¹«‚\èÇUx±CŸ\ãÁ\Ëý|\Ï?>Ø¶lªQömeE;£³-\ê†:7`­•²¦c‘pÖ˜\è^P\í­BñYÖ…¡%=æµž”m²j#k\ê\ìWN\ç$¨©\Â\Õ\Ã\ìãšœD\Ç\\b‰\ê\\ð\ÔAPÅ’žx\åb*µ\\\Ç\"¢*h]Z´\è998x½1f\Ú\í§[gYÎ¶­ ©ª¶\Ý?Ñ¤V9\é“¹\à\æ\éL4`©ÀŠš”\é­<¡^lk»PûzZ\Z\ï«lú•Ï\ßóÏ‘ù²#\"n‡jñœ\år&8f\é\ÄSù°N=\0ŠŠ˜¦”\ÃSIð¶Ü±Uô[.©Gfw©b¿;‹7q\ä5Œž\Ë_iU[¶¡jVT¾;N¢šI:º&FŠ™¹­]x)V\ÅWN‰WV­‡-[/t\Ò2ÍŠ?ú¤¿óö]žª‰†+s\Ã®”Ö“\×£\Ã¡ùxiÔˆ¸”=ù·j¯¢ú[Á;{Ôô.¨t²\ÑOµ#W\ãƒc~—*1­n	­]Š)\Ï=½y\è©E\à´$tô¶-J\È\é\Îl“=.jð\"¦*¨šŽ±xª¢p§§@DU\ÅG\'õJZ·†ôY\Öl\Ô-µ\æú¾–ó\ÔP\Ô\Ö\ÕW¾a§H‘ñµõ\rkœ\Ô\Ï\\1\ÃN†ð\ÍÅ«¼V½å¥‚Û·*§ŽžÇ†©	%dS9d{Zõ\ÎkØ±­©Žð“\Ãýøb‰\ê\Çýøà´€ô\ã\ÊH\0\0\0\0\0\0\0Õ›wkôÌ¿—{)D\ìA\Ü¯\Ó2þ\\e\ì¤Jx~\èo\'LM\Õa\Êq?t7“¦&\ê°\å/›^vô\ÎZk \0\ÊkÀ\0\0\0\0\0w\Én\Ø\Ös-øšA»\ä·lk9–üL\Ó)[s»ü\Æ\Ë_e”\Ý^ƒ#\êô—Y€\0\ëo&\ÐZm/UJ9u—\ä\ÚCÍ¥\ê©G.²\Ípvk\Ö\rò\ïl´\0X%Lž \0„\0\0\0\0>‹­¾]\Õ\ç+;,…ñ\ÆP÷[|»«\ÎVvYãŒ§\ßY¯(u\r\Ö\åñ¬²BHBMR\Æ¤ x7,\Ûñ\ßN’gf„\Ó\Í\Ã,\Ûñ\ßN’gf„\ÓÀ\0\0\0\0\0\0\0\0=:p\Ã?\Ø\0x``œ‰Á¨c§÷Òž\0hÖ¸k\ÅW\r8ñÿ\0QÀ©À©¥8ÀŠð\é\×\é¥0×£„@ºô/°ºxy=\0\0\Ñ\Åÿ\0óˆrðòhþ´€\0\0\0\0\0\0\0\0\0\0«6 \î\×\é™.2öR‰Øƒ¸_¦eü¸\Ë\ÙH”<ðý\Ð\ÞN˜›ªÃ”\â~\èo\'LM\Õa\Ê_6,½\Z8\íéœ´\Ö@”×€\0\0\0\0\0\ï’Ý±¬\æ[ñ4ƒw\Én\Ø\Ös-ø˜¦R¶\çwù–¾\Ë)º½F-\Õ\è2).³\0\0%\Ö\ÞM ´<\Ú^ª”r\ë/É´‡›K\ÕRŽ]eš\à\ì×¬(\å\Þ\Ùi \0°J™<@\0\0\0\0}[|»«\ÎVvYãŒ¡\î¶ùwWœ¬\ì²\ÇO¾³^P\ê­\Ë\ãYd„„š¥Œ!I!@ðnY·ã¾$\Î\Í	§›†Y·ã¾$\Î\Í	§€\0\0\0\0\0\0\0\0\0\0\0.…Ã‡\â\0Ò¸&œua§ü4\è\Ä\0‘§‹“\Ò\0LQW‰k\0\0\0\0\0\0\0\0\0\0\0\0Õ›wkôÌ¿—{)D\ìA\Ü¯\Ó2þ\\e\ì¤Jx~\èo\'LM\Õa\Êq?t7“¦&\ê°\å/›^vô\ÎZk \0\ÊkÀ\0\0\0\0\0w\Én\Ø\Ös-øšA»\ä·lk9–üL\Ó)[s»ü\Æ\Ë_e”\Ý^ƒ#\êô—Y€\0\ëo&\ÐZm/UJ9u—\ä\ÚCÍ¥\ê©G.²\Ípvk\Ö\rò\ïl´\0X%Lž \0„\0\0\0\0>‹­¾]\Õ\ç+;,…ñ\ÆP÷[|»«\ÎVvYãŒ§\ßY¯(u\r\Ö\åñ¬²BHBMR\Æ¤ x7,\Ûñ\ßN’gf„\Ó\Í\Ã,\Ûñ\ßN’gf„\ÓÀ\0\0\0\0\0\0\0\0\è_Pô/¨&œx0\ãÿ\0rª¡¾U´VÅ¯4–\Ëfm4\Õ\è±>ÑŽfD‘\Ê\ä>£]\"\"&r»\ÐZºy\ÔÃ¸CŠªÀ\Ì]ö•Z˜¯§‡N<\\º)ðhVP-\Ëa)*’Š\ÏJW,-¨ÁÊ¯WI:Ä\ÍQUvµÖ¸rüu¹N·\ì».’¦Ð³,þ\ïVKû¹‘1’1\\ŒWHöøø&\ãÃ¨²’650F\"q`\Ý\ZÃ¢‰ÈtMsSDV\ã†õ!¬²õ\×6\îZ·†²::vS:FÀŽUÁ«‚+\×M+‚âŠ‰Ë‚\Z\í>R\íz\ë29\ÛõM,òSM#[4‹3›žˆ\è‘Q\ÍDj*\éTÁQq\ÔYV,k\Zf®´\ÃB„Š,Z½É¨­ÁQs^B<SV\rL¤¤4R2J«5Õ\Ò\É3ódñS1Ê˜¦k^².«Qu\ã†\'aq\ï=m\çg\Ó\ê’8\Ñôø÷8\Õˆ¨÷&)‚®…DNþ&\Ó\Üa\Ç«Š`\ïZq5b\"5ˆš0\\ýq y\á\'\à¡qþÐ¾ Bú‡ \0\0\0\0\0\0\0\0VlA\Ü¯\Ó2þ\\e\ì¥±p¿L\Ëùq—²‘(y\áû¡¼17U‡)\Äý\Ð\ÞN˜›ªÃ”¾lYz4q\Û\Ó9i¬€)¯\0\0\0\0\0\0\r\ß%»cYÌ·\âi\ï’Ý±¬\æ[ñ0/L¥m\Î\ïó-}–SuzŒ[«\ÐdR]f\0\0K­¼›Ahy´½U(\å\Ö^7“h-6—ª¥º\Ë5ÁÙ¯XP7Ë½²\Ò@`•2x€\0\0\0\0ú.¶ùwWœ¬\ì²\ÇC\Ýmò\î¯9Y\Ùd/Ž2Ÿ}f¼¡\Ô7[—Æ²\É	!	5KB’B\àÜ³o\Ç}:IšO7³o\Ç}:IšO\0\0\0\0\0\0’6I\ãÊ¨Žz\"\àz	›n³\Ø\×-­hiLu·\äyú“û\Ô<\ã~\'¶!þÉŸ\áO€Wƒ\Õòµ¡\ëo\Èx9\Ý_+Z¶ü‹`Sø9\Ý_+Z¶ü‡ƒ\Õòµ¡\ëoÈ¶\0?ƒ\Õòµ¡\ëo\Èx9\Ý_+Z¶ü‹`Sø9\Ý_+Z¶ü‡ƒ\Õòµ¡\ëoÈ¶\0?ƒ\Õòµ¡\ëo\Èx9\Ý_+Z¶ü‹`:•?ƒ\Õòµ¡\ëo\Èx9\Ý_+Z¶ü‹`Sø9\Ý_+Z¶ü7*Y\'±.=«gWUM,•\r…R\\0DTU]_ÀôQVlˆ\Üe7ž·ª\à<\ä\ë\0\0\0\0\0\0\0z³b\à-~™—ò\ã/e(ˆ;€µúf_ËŒ½”‰C\Ï\Ý\r\äé‰º¬9N\'\î†òt\Ä\ÝV¥ób\ËÑ£ŽÞ™\ËMd\0Mx\0\0\0\0\0\0nù-\Û\Z\Îe¿H7|–\íg2ß‰ze+nw˜\Ùkì²›«\Ðdb\Ý^ƒ\"’\ë0\0]m\ä\ÚCÍ¥\ê©G.²ñ¼›Ahy´½U(\å\ÖY®\ÍzÂ¾]í–’\0©“\Ä\0€\0\0\0\Ñu·Ëº¼\åge¾8\Ê\ëo—uy\Ê\Î\Ë!|q”û\ë5\å¡ºÜ¾5–HIIªX\Â’\å›~;\é\ÒL\ìÐšy¸e›~;\é\ÒL\ìÐšx\0\0\0\0\0\0´ŸÞ¡\çñ=±öLÿ\0\n|\Òz‡œo\Äö\Ä?\Ù3ü)ð0\0\0\0\0C•\Õs\Õ\Zˆ˜ªª\ê0Šx\'Et2DMy®EÀA¬a¬\Ñò‡z\ë,•ŠË³&\îR\Ê\Ìù$D\Ò\ÖðaË¬\r\ãñB’³\ï•â³ªR§\ëI\æLqs&z\È\×\'\niÕ¨¸\ìºø\íK:ž¾$Á³±‡ð§ ¨\0\0«6Dn2›\Ï[\Õqi•fÈ\ÆSy\ëz®\ÎK¬\Ö\0\0\0\0\0\0\0õf\ÄÀZý3/\å\Æ^\ÊQ;wkôÌ¿—{)‡žº\É\ÓuXrœO\Ý\r\äé‰º¬9K\æÅ—£G½3–š\È\02šð\0\0\0\0\0\0\Ýò[¶5œ\Ë~&nù-\Û\Z\Îe¿ô\ÊV\Ü\îÿ\01²\×\Ùe7W \ÈÅº½E%\Ö`\0º\ÛÉ´‡›K\ÕRŽ]e\ãy6‚\ÐóizªQË¬³\\šõ…|»\Û-$\0	S\'ˆ\0!\0\0\0\0¢\ëo—uy\Ê\Î\Ë!|q”=\Ö\ß.\êó•–Bø\ã)÷\Ök\ÊCu¹|k,’“T±„)$(\r\Ë6üwÓ¤™Ù¡4óp\Ë6üwÓ¤™Ù¡4ð\0\0\0\0\0\09i?½C\Î7\â{b\ì™þø\'¤þõ8ß‰\íˆ²gøS\à`\0\0¹kAbY³W\Ì\äý\Úx©\Úw§e.òI6À£‘X¯DuJµ|dN\ãýp\Z•Ô¼3\Ø6¬S,ª”\ïr6fð#W‡\ÐuU•sW\ÕKYPõt’¹\\\åU\Ä\áû}³d\Å,KhÓ²J”GFÕ‘\\‹©M;)Wjº¹ñ[40ºU‰‰¬o\ÚÁB\á\ë+g9\ïTsÜ®T\ÃK—N	¨·n\r\å[f\Ìú-L™\ÕT‰š\åUñž\Ïû€¬,\ÛÕµj’–†ŠW¹]‚®b£Xœj«¨»l{9–M™Mg1\Ù\Éh\Üx×‡ýO·N”ÇŽ\0\0\0Y²#q”\ÞzÞ«‹L«6Dn2›\Ï[\Õpr]`.°\0\0\0\0\0\0«6 \î\×\é™.2öR‰Øƒ¸_¦eü¸\Ë\ÙH”<ðý\Ð\ÞN˜›ªÃ”\â~\èo\'LM\Õa\Ê_6,½\Z8\íéœ´\Ö@”×€\0\0\0\0\0\ï’Ý±¬\æ[ñ4ƒw\Én\Ø\Ös-ø˜¦R¶\çwù–¾\Ë)º½F-\Õ\è2).³\0\0%\Ö\ÞM ´<\Ú^ª”r\ë/É´‡›K\ÕRŽ]eš\à\ì×¬(\å\Þ\Ùi \0°J™<@\0\0\0\0}[|»«\ÎVvYãŒ¡\î¶ùwWœ¬\ì²\ÇO¾³^P\ê­\Ë\ãYd„„š¥Œ!I!@ðnY·ã¾$\Î\Í	§›†Y·ã¾$\Î\Í	§€\0\0\0\0\0\ËIý\êq¿\Ûÿ\0d\Ïð§Àñ=\'÷¨y\ÆüOlCý“?ÂŸ\03\0\0L=ZJû*\é^\æP£#{©S9_šŠ©Ÿ£\×I`˜¹zf½¨\æñ91\ÏJ\Õ\Åu®žš\ïûW\Ô_\ËfYª¸­ŸMé‰«þ\Ä}Wfy:—Ø·\äš\ïûW\Ôv\×Vº²Î·©\'¤\ïs¤F9¨‹\ã5u\â\\ÿ\0UÙžN¥ö-ù\ÅCE³á£‚7q¶4E1Á1\Ä\0\0\0\0«6Dn2›\Ï[\Õqi•fÈ\ÆSy\ëz®\ÎK¬\Ö\0\0\0\0\0\0\0õf\ÄÀZý3/\å\Æ^\ÊQ;wkôÌ¿—{)‡žº\É\ÓuXrœO\Ý\r\äé‰º¬9K\æÅ—£G½3–š\È\02šð\0\0\0\0\0\0\Ýò[¶5œ\Ë~&nù-\Û\Z\Îe¿ô\ÊV\Ü\îÿ\01²\×\Ùe7W \ÈÅº½E%\Ö`\0º\ÛÉ´‡›K\ÕRŽ]e\ãy6‚\ÐóizªQË¬³\\šõ…|»\Û-$\0	S\'ˆ\0!\0\0\0\0¢\ëo—uy\Ê\Î\Ë!|q”=\Ö\ß.\êó•–Bø\ã)÷\Ök\ÊCu¹|k,’“T±„)$(\r\Ë6üwÓ¤™Ù¡4óp\Ë6üwÓ¤™Ù¡4ð\0\0\0\0\0\09i?½C\Î7\â{b\ì™þø&§sYQÞ¸#^Š«É‰\ê8òÍ“¶\ÆÖ­¼ˆ¨ˆ‹û—\ë\Ãø¼ƒH\ïÏ“¯/\'±\Èw\ç\É×—“Ø¿\ä\î\r#¿>N¼¼ž\Åÿ\0!ßŸ\'^^Obÿ\0¸4Žüù:òò{ü‡~|yy=‹þ@n\à\Ò;ó\ä\ë\Ë\É\ì_òùòu\å\äö/ù»ƒH\ïÏ“¯/\'±\Èw\ç\É×—“Ø¿\ä\î\r#¿>N¼¼ž\Åÿ\0!ßŸ\'^^Obÿ\0¹Vlˆ\Üe7ž·ª\ã¼\ïÏ“¯/\'±\È\ÐrÍ”§z®\Äª•²©¯Vw77\Å\ÍT\ÇJJ.°5\é\ã\0\0\0\0\0\0\0z³b\à-~™—ò\ã/e(ˆ;€µúf_ËŒ½”‰C\Ï\Ý\r\äé‰º¬9N\'\î†òt\Ä\ÝV¥ób\ËÑ£ŽÞ™\ËMd\0Mx\0\0\0\0\0\0nù-\Û\Z\Îe¿H7|–\íg2ß‰ze+nw˜\Ùkì²›«\Ðdb\Ý^ƒ\"’\ë0\0]m\ä\ÚCÍ¥\ê©G.²ñ¼›Ahy´½U(\å\ÖY®\ÍzÂ¾]í–’\0©“\Ä\0€\0\0\0\Ñu·Ëº¼\åge¾8\Ê\ëo—uy\Ê\Î\Ë!|q”û\ë5\å¡ºÜ¾5–HIIªX\Â’\å›~;\é\ÒL\ìÐšy¸e›~;\é\ÒL\ìÐšx\0\0\0\0\0\0\0\0?¬\Ö\0\0\ÃúÀaý`|õ\Õôvm;ª\ëªMÐ®w\Ö~\Ú]*·Ù¿\ä|«¶³²œ+ª\"ueXl;N\ÕL\ÕcgUQ(™wxX?¬“ö\Ò\ìyU¾\Íÿ\0!ûiv<ª\ßfÿ\0‘\ã\â\ì>¸õ†G\à÷Ø¯ùgöwxX?¬“ö\Ò\ìyU¾\Íÿ\0!ûiv<ª\ßfÿ\0‘1µX}q\ëüñûÿ\0,þ\Î\ï\ë‡õ\Ò~\Ú]*·Ù¿\äeñ»R\Ê\ÈjÇŸ#‘­Ec\Ó_@¦\Æg®\'\ÎUÓ·QOJ«\Z\â?\Ó?³¹\ÃúÀaý`÷k\Ì?¬€\â\0\0\0\0\0\0\0Õ›wkôÌ¿—{)D\ìA\Ü¯\Ó2þ\\e\ì¤Jx~\èo\'LM\Õa\Êq?t7“¦&\ê°\å/›^vô\ÎZk \0\ÊkÀ\0\0\0\0\0w\Én\Ø\Ös-øšA»\ä·lk9–üL\Ó)[s»ü\Æ\Ë_e”\Ý^ƒ#\êô—Y€\0\ëo&\ÐZm/UJ9u—\ä\ÚCÍ¥\ê©G.²\Ípvk\Ö\rò\ïl´\0X%Lž \0„\0\0\0\0>‹­¾]\Õ\ç+;,…ñ\ÆP÷[|»«\ÎVvYãŒ§\ßY¯(u\r\Ö\åñ¬²BHBMR\Æ¤ x7,\Ûñ\ßN’gf„\Ó\Í\Ã,\Ûñ\ßN’gf„\ÓÀ\0\0\0\0\0\0\0\0\0\0\Öoþ\ÔS\ãÿ\0\ÖGðq¦q.8›ÿ\0ÚŠ<\à\ãLÑ†…C›\ï|ÿ\0œ§ý>\ïÔ¿Ø”D\Üv¸\Çü\Éÿ\0\Æ5§iR\Ù4R\×\Ö+’Q\ÊÖ«—J¢&„\åT>\Þ\Û\rcIe©t,VwEYX­Áºuÿ\0øü¾Ó³©­zl\ê\Är\Ã2\";5p]\nŠ˜/ñD:ø®¥‘Y\âL\åb\"\"¾W*\àŠ¸|J\å”\ØM\ÚLã‹¨m”\Þ1oŽ\Íô0ñù\ãû9?j\îòµdm©£j;9\í\\Z˜+S<do¬”½7u_Ü’Ø¦W\æ±ù¹ús^¸5p×¥N8®\n1Ó¹«U¿¼Uû.È¼ºbg¨Šk¡b\Ò\Ö%tP\Ë\ÝQZ¾4®Tñu&ü\Ô}1\Ùpžº±c\Ä\ßTcEx»œQS	q\Æ<uwhº\í3\ÇN\\T\ÆM*\Ä\Å?¶‹®\Ó\Æ\Å3ñ6z\Çõd_´\Ç\á{F1ÿ\0_\Ñm7\ì§ð$†ý–ÿ\0N\ÓO~«µ \0—\0\0\0\0\0\0\0«6 \î\×\é™.2öR‰Øƒ¸_¦eü¸\Ë\ÙH”<ðý\Ð\ÞN˜›ªÃ”\â~\èo\'LM\Õa\Ê_6,½\Z8\íéœ´\Ö@”×€\0\0\0\0\0\ï’Ý±¬\æ[ñ4ƒw\Én\Ø\Ös-ø˜¦R¶\çwù–¾\Ë)º½F-\Õ\è2).³\0\0%\Ö\ÞM ´<\Ú^ª”r\ë/É´‡›K\ÕRŽ]eš\à\ì×¬(\å\Þ\Ùi \0°J™<@\0\0\0\0}[|»«\ÎVvYãŒ¡\î¶ùwWœ¬\ì²\ÇO¾³^P\ê­\Ë\ãYd„„š¥Œ!I!@ðnY·ã¾$\Î\Í	§›†Y·ã¾$\Î\Í	§€\0\0\0\0\0\0\0\0\0\×[\Ö4V\í\Ð\ä™Ð¹¯l¬{Sœœ:\Ô\×û\ßI\ÃoIþ]¿3q\Ñwl»]];j\"e½º÷šö¹l¦\Ç`·ªÎ™œf#\çói\Ý\ïdòôŸ\å\Ó\æ;\Þ\É\å\é?Ë§\Ì\ÜAø%\ßö¡³ÿ\0o&8ü]~­;½\ìž^“üº|\Ç{\Ù<½\'ùtù›ˆ\Ýÿ\0jñþò\Çýe~­;½\ìž^“üº|Ì£\É\êwX\Ý5·+\ãd{˜¢g`¸\áŽ&\ÞT\\·}QUQ¶ü\ï\r½œ\ÙZmUM3\Õ10L\0l\Õ0\0\0\0\0\0\0\0\0\0«6 \î\×\é™.2öR‰Øƒ¸_¦eü¸\Ë\ÙH”<ðý\Ð\ÞN˜›ªÃ”\â~\èo\'LM\Õa\Ê_6,½\Z8\íéœ´\Ö@”×€\0\0\0\0\0\ï’Ý±¬\æ[ñ4ƒw\Én\Ø\Ös-ø˜¦R¶\çwù–¾\Ë)º½F-\Õ\è2).³\0\0%\Ö\ÞM ´<\Ú^ª”r\ë/É´‡›K\ÕRŽ]eš\à\ì×¬(\å\Þ\Ùi \0°J™<@\0\0\0\0}[|»«\ÎVvYãŒ¡\î¶ùwWœ¬\ì²\ÇO¾³^P\ê­\Ë\ãYd„„š¥Œ!I!@ðnY·ã¾$\Î\Í	§›†Y·ã¾$\Î\Í	§€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\êÍˆ;€µúf_ËŒ½”¢v \î\×\é™.2öR%<?t7“¦&\ê°\å8Ÿº\É\ÓuXr—Í‹/FŽ;zg-5\0e5\à\0\0\0\0\0»\ä·lk9–üM \Ýò[¶5œ\Ë~&é”­¹\Ýþce¯²\Ên¯A‘‹uzŠK¬À\0	u·“h-6—ª¥º\Ë\Æòm¡\æ\ÒõT£—Yf¸;5\ë\nùw¶ZH\0,¦O\0B\0\0\0\0E\Ö\ß.\êó•–Bø\ã({­¾]\Õ\ç+;,…ñ\ÆS\ï¬×”:†\ërø\ÖY!$!&©cRHP<–mø\ï§I3³Bi\æ\á–mø\ï§I3³Bi\à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0z³b\à-~™—ò\ã/e(ˆ;€µúf_ËŒ½”‰C\Ï\Ý\r\äé‰º¬9N\'\î†òt\Ä\ÝV¥ób\ËÑ£ŽÞ™\ËMd\0Mx\0\0\0\0\0\0nù-\Û\Z\Îe¿H7|–\íg2ß‰ze+nw˜\Ùkì²›«\Ðdb\Ý^ƒ\"’\ë0\0]m\ä\ÚCÍ¥\ê©G.²ñ¼›Ahy´½U(\å\ÖY®\ÍzÂ¾]í–’\0©“\Ä\0€\0\0\0\Ñu·Ëº¼\åge¾8\Ê\ëo—uy\Ê\Î\Ë!|q”û\ë5\å¡ºÜ¾5–HIIªX\Â’\å›~;\é\ÒL\ìÐšy¸e›~;\é\ÒL\ìÐšx\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬Øƒ¸_¦eü¸\Ë\ÙJ\'b\à-~™—ò\ã/e\"Pó\Ã÷Cy:bn«S‰û¡¼17U‡)|Ø²ôhã·¦r\ÓY\0S^\0\0\0\0\0\0¾KvÆ³™o\Ä\Ò\r\ß%»cYÌ·\â`^™JÛ\ß\æ6Zû,¦\êô·W È¤º\Ì\0\0—[y6‚\ÐóizªQË¬¼o&\ÐZm/UJ9u–kƒ³^° o—{e¤€Á*dñ\0 \0\0\0ô]mò\î¯9Y\Ùd/Ž2‡º\Û\å\Ý^r³²\È_e>ú\ÍyC¨n·/e’Bj–0…$…Á¹fßŽút“;4&žnfßŽút“;4&ž\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0«6 \î\×\é™.2öR‰Øƒ¸_¦eü¸\Ë\ÙH”<ðý\Ð\ÞN˜›ªÃ”\â~\èo\'LM\Õa\Ê_6,½\Z8\íéœ´\Ö@”×€\0\0\0\0\0\ï’Ý±¬\æ[ñ4ƒw\Én\Ø\Ös-ø˜¦R¶\çwù–¾\Ë)º½F-\Õ\è2).³\0\0%\Ö\ÞM ´<\Ú^ª”r\ë/É´‡›K\ÕRŽ]eš\à\ì×¬(\å\Þ\Ùi \0°J™<@\0\0\0\0}[|»«\ÎVvYãŒ¡\î¶ùwWœ¬\ì²\ÇO¾³^P\ê­\Ë\ãYd„„š¥Œ!Ä©ˆ&\ÊõÇ¿•\ÙX½µöuÄ¼U´•5\ì’\nŠ{:Y#‘¿G‰1k‘0](©\è5>÷\ÙHü6½^\é›\ä~‚¢rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\r¯Wºfù ¸rŒ9@üú\ï}”\Ãk\Õî™¾C½öR?\roWºfù ¸r…L@¥¶+Xv\íƒqm:{~Ã´,¹åµ¤‘‘VÓº¹™ŒDr5È‹†(¾¢\éR0Á8	R%<?t7“¦&\ê°\å8Ÿº\É\ÓuXr—Í‹/FŽ;zg-5\0e5\à\0\0\0\0\0»\ä·lk9–üM \Ýò[¶5œ\Ë~&é”­¹\Ýþce¯²\Ên¯A‘‹uzŠK¬À\0	u·“hm6—ª¥ºË¾ó¹[w­\'#ü\ÚIšÆ«•pb\êDÖ¥¶\ÃqÚ»Wü„¿\ÊX®;Z,\é®*œm\ì\Ù\í­\íl\æÎ™œ\"_x:ÿ\0®\ä»[\Ýó(ú\á¾Kµ½\ß7ò›ß‰±ú£\ÕPƒkûs\è\ì\×ýp\ß%\Ú\Þ\ï›ùG\×\rò]­\îù¿”|M\Õ§Àm_n}€:ÿ\0®\ä»[\Ýó(ú\á¾Kµ½\ß7ò‰±ú£\Ôø\r«\íÏ£°_õ\Ã|—k{¾o\å\\7\Év·»\æþQñ6?TzŸµ}¹ôw_FR®¯9YÙ¤/„\Ã(+“4Ö†Rn\Û\á³-GN\ê·\Ë$´’F\Æ5i\Þ\Ô\Å\ÎDM*¨ž’ýB¥{WM¦\Ó3L\ã»6u\Ø\ì1M¤a8\Ë$\ÔII­…„\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ä1@¦+¡H\â‰y\éû¡¼17U‡)ñZR\Ð^[\Åö]¦¹ö¬²1Ì¢‘\ísU¬ÁQQ0S®\ä»[\Ýó)w\Øö‹*l(‰ª8C“^{\ÓV\ÙiU4L\Æ3\à\ì\×ýp\ß%\Ú\Þ\ï›ùG\×\rò]­\îù¿”\Éø›ª=X?µ}¹ôv\0\ëþ¸o’\íow\Íü£\ë†ù.\Ö÷|\ß\Ê>&\Ç\êS\à6¯·>ŽÀ\×\rò]­\îù¿”}p\ß%\Ú\Þ\ï›ùG\Ä\ØýQ\ê|\Õö\ç\Ñ\Ø¯ú\á¾Kµ½\ß7ò®\ä»[\Ýó(ø›ª=O€Ú¾\Üú;w\Éf\Ø\Öó-ø•\Ç\×\rò]­\îù¿”ß²G]ô«N½­£¬‰[W÷ôÏ‰\Æ\à\ÎD\ÄÀ¼­\ì\ê\Ùj¦š¡·¸¶K{=¾Îªè˜ˆ\Ç\Ãø-6\ê21n¨È§ºˆ\0\"®„#W…t™‚0Fp¦@”±\Í¦@sFiÑšd\0\ÅZº99B\"¦@DT$\0\0\0\0\0\0\0\0\0\0\0\0\0:û~Ý²\îÅYx-º•§  …\Ó\ÔJ‘¹\ê\Æ54®kQ\\¿ÁT\ÂÊ¼–-¶ú\æY•­\Öu[\èª|Und\Ík\æâ¨™\Ø#ÛŠ¦)Ž)­›)—zÓ½Wi–šØ•µUôKY\Ý‡ü«*#’l8\ÕZ\Åoþâ¤´òO”\Åd¤¡³§šÖ¥µc¬šJ\ÄF\ÒI[h¤ò*\"¦/\Â\ÇpT\Ã7\éM4\Ìu\Ë\ÅSTOT/‹BÝ±lši«-[ZŽŽ\ntE–Y\çllb*\à™\Ê\åDLUQ4ð®Ðµ´ˆª‹S„\Å|tÐœê‡Ÿ«²+n\ÔAm\Ó\Çq,i\èk-«2©”µ\Ò\Ã5LôðN\×\ÊÕ¨\ÌûF5\Z\Çb¨Š\ä\Ç>\ëS\"¶„MžØ¢ºV%§Y[y¥­«¢•\Ñ\Æ\Él\È\Û\Üiió•ª‰\ZG;–<3x4\à„ô)ù¼ô\êù/D¬¥rµxñ\ÙL\ä\Å\ßÃŒ\êkh$mš\êJJ£\ëI–(\ÓèŽ‰\Ñ\"cŒ’¶\\\Ç1ž.…T\ÅØ¦j.(R—o#w¶\ïJ\ÇT]Ðžž\Îd¶eC\êQ¬²«Ø²Mû–f\â™\Ó,iœ˜xºL‚‹!w¾†jJYVt³f¾Ï¶\ßTŽž‘´´­GAUY\Ý\'I\ç\"\à©&œpD\n~i\éUòz*:ˆ&UlS1\ê\Ýh\×\"ª\Z½§•[c[U\×zÒ¼QC_fQ}>®>\å#’qDEsÑª\Ü\åUDFcœª©‚.(jy(\É-EÁµ++š–“\é³@ü\ç\ÔÕ¶I\äši4b\åE•jª®†ª&¦«B\ï]—So\Ïi\×:ó²¶žž*wÄ±PUM7vY¥¨|‹ž\Ôr=±\á£DDÁ¨ˆŠiÇ®Iª¬:¡s\Ý[\åwï¥Ÿ-¥wª*%Š	\ßM3*(æ¥–)[†-|S1j\éMmLq\Ðu•™U¹”­£c\ÔT\Úk-\ÇI_4v5d”´\È\Øû¢÷J†Ä°µs4\à¯\Ç\Òuù+ºV\åÌ³\êh\í\Ù%®«µjfµk+¥¨lŽ\îò=°\àn9±µ‰œˆˆª\Õ\\4šSre{*\ä¾Mª»\ÝÂ¶ñ\Ú\Ö)m=b–‘\ÒF\Õo\Ñ\ÑsZä…‹§7WYM=.)š§ÁAx\ì›I²¾žY\Ø\Ø\\\Æ+§¦–½\\Æ½‹#ZL\ÜU¸¢.(ªŠŠ‰\ËWl\ÐQ¶\'Jù^“N”\è°@ù³^¨«\ãf\"\æ7B\â\ç`\ÔÑŠ\éB…¶rx\ïvŒ–µ™f\Ö+\é\íºŠ(e™6\×V\Ï!s“\"¦‚,QËŠiDS’£!7’ÉšÑ‚\é\Ñ\ÐRQ\æ\Õ:;²5_2\Ñ$Jý\Z\\®|Žs—UD\ÅTõÐ£æŽ•Kõ+iŽ\Ò#\Íb\à\å\ÏL\Z¼JJU\Ó9\Ícg\\ý-Dr*¹98\Ï?U\ä&Ù°j§‚\ì\Ýk&¾\Âumt²f¨kY]\r=Ÿ+Ióš©\"ý*\\\ç#´¹#jð\"&Ir4û©kEm^k&\ÌZ\Ë:Ï‚Ž\ÏX‘¯Ju\\÷L±\èL\Ï\ZEb*i\ÍÑ¨ó4SŽ$U38`\Ý\åÊ•Ê‚ö:\åIhV%¨Ê˜è…™T´\í¨|M™±-JG\ÜQ\ëš\ì\Õ~8*h6D¯¢V«Ò®ku®z`Ÿ\Ö\ê<ýU‘\ëÿ\0_y-\Ûj–‚:Ðž×µ-8-%µ+jXø,m§_\'¤It™¹ÈŒ\ÃnþB-I\í*I\íû›b\ÙöRV\Ò\ÔVY\ÐN\ÙP\ÊjWµ½\ÑQ$W\Í#œô\\Q\Éö±\ÅI\èS‡t\êù=µtÉš½Ý˜?\Õ\ÎM<Xq…«¦EsV¢<Yö“9<_\ã\Äy\âƒc\å¸\ë\Ém­Af¾Ð²,»‚‘ý\Õ\ÊW¶g\Í\\ø\Ó=¬b¦š\ÅLQlÜ€\Ûu´v”w‚\Ê{\íKf²’RÑ’Ñ‰\ÉSAô\Ö\ÏPŒFF×¢¹‘µ‰ž\ç*ghTÀŽ…?4ô\êù=Œ•¨øÜŽj\êT\\P\Èù,»6Î²(a³lŠ\nj*:v\æ\ÃOMbŠ6\ëÁ­j\"\"r\"Yó}\0\0¨F\nd\0\Å\Z¸ª¨\Í2\0cš3L€\æŒ\Ó 9£4\ÈŽh\Í2\0cšFj\àf0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0…LHF\àœf@sWý\Â5pDU\Ä\ÈŠ·H\Í2\0B!¸\ë\ÃI1\Ö3W\ÈŠ7‡ñ2Ž\Æ3Uu©#Š¢¯	‹†f	\ærúB·# 0„€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ù','2022-05-23 18:27:21');
/*!40000 ALTER TABLE `images_tabla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascotas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpropietario` int(11) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkmascota_idx` (`idpropietario`),
  CONSTRAINT `fkmascota` FOREIGN KEY (`idpropietario`) REFERENCES `propietario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicina`
--

DROP TABLE IF EXISTS `medicina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicina`
--

LOCK TABLES `medicina` WRITE;
/*!40000 ALTER TABLE `medicina` DISABLE KEYS */;
INSERT INTO `medicina` VALUES (1,'Midocasol','Hidalofa122 mg');
/*!40000 ALTER TABLE `medicina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `stock` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Comida de Perro','croquetas para sus mascotas por kilo','100.0','100'),(2,'Comida de gato','Kiskas para sus gatos desde 1 Kilo','150.0','100');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietario`
--

DROP TABLE IF EXISTS `propietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario`
--

LOCK TABLES `propietario` WRITE;
/*!40000 ALTER TABLE `propietario` DISABLE KEYS */;
INSERT INTO `propietario` VALUES (1,'Carlos MArtinez Gutierrez','Cosillas amigo');
/*!40000 ALTER TABLE `propietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prueba`
--

DROP TABLE IF EXISTS `prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prueba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prueba` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prueba`
--

LOCK TABLES `prueba` WRITE;
/*!40000 ALTER TABLE `prueba` DISABLE KEYS */;
INSERT INTO `prueba` VALUES (1,'Perritos','Hidalofa122 mg');
/*!40000 ALTER TABLE `prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamiento`
--

DROP TABLE IF EXISTS `tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmascota` int(11) DEFAULT NULL,
  `medicamento` varchar(45) DEFAULT NULL,
  `tiempo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
INSERT INTO `tratamiento` VALUES (1,1,'2','6 dias'),(2,1,'2','3 dias'),(3,1,'2','3 dias');
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contra` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'tescirafa@gmail.com','medina21','Administrador'),(2,'tesci@gmail.com','medina21','Cliente'),(3,'naruto@gmail.com','medina21','Veterinario');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veterinarios`
--

DROP TABLE IF EXISTS `veterinarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veterinarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `horario` varchar(45) DEFAULT NULL,
  `cedula` varchar(45) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinarios`
--

LOCK TABLES `veterinarios` WRITE;
/*!40000 ALTER TABLE `veterinarios` DISABLE KEYS */;
INSERT INTO `veterinarios` VALUES (1,'Carlos Martinez Oscar','8:00 a.m a 6:00 p.m','100023281','ubicado en Santa Cecilia '),(2,'Miguel Perez OScar','8:00 a.m-6:00 pm','102123','Santa Fe ');
/*!40000 ALTER TABLE `veterinarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitas`
--

DROP TABLE IF EXISTS `visitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idanimal` int(11) DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitas`
--

LOCK TABLES `visitas` WRITE;
/*!40000 ALTER TABLE `visitas` DISABLE KEYS */;
INSERT INTO `visitas` VALUES (1,1,4),(2,1,2),(3,1,4),(4,1,4);
/*!40000 ALTER TABLE `visitas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23 23:19:48
