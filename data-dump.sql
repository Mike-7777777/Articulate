-- MySQL dump 10.13  Distrib 5.7.27, for Win32 (AMD64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `output_images`
--

DROP TABLE IF EXISTS `output_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `output_images` (
  `imageId` int(11) NOT NULL AUTO_INCREMENT,
  `imageType` varchar(255) NOT NULL,
  `imageData` longblob NOT NULL,
  PRIMARY KEY (`imageId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `output_images`
--

LOCK TABLES `output_images` WRITE;
/*!40000 ALTER TABLE `output_images` DISABLE KEYS */;
INSERT INTO `output_images` VALUES (1,'image/jpeg',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0H\0H\0\0ÿ\á\0LExif\0\0MM\0*\0\0\0\0‡i\0\0\0\0\0\0\0\Z\0\0\0\0\0 \0\0\0\0\0\0\0 \0\0\0\0\0\0, \0\0\0\0\0\0,\0\0\0\0ÿ\í\08Photoshop 3.0\08BIM\0\0\0\0\0\08BIM%\0\0\0\0\0\ÔŒÙ\0²\é€	˜\ìøB~ÿÀ\0,,\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Û\0C\0										ÿ\Û\0C																																																			ÿ\Ý\0\0ÿ\Ú\0\0\0?\0þþ(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0ÿ\Ðþþ(¢Š\0(¢Š\0(®#\âÄŸü*ð\ÍÇŒ~\"\êÖº.™j3-\Í\ä©K\é—rdð2y$õü\ÚþÕ¿ðu\ïüƒöz\Ön|5\à\'\Ô<{nv\ÓËƒp?¼˜(# ŒžI\Ç \Ô\rþ~>>ÿ\0ƒÚ¼A¹\àøqðn\Õ\0Y/¯\Ý\ÎCrv¢/{gƒ\Ü×_ÁëŸµƒ\\³i\ß<0œmY$»vs–(<û\ë@\éE›CÁ\ëµø/\Â\ï\nø\èÿ\0\Úô\Ïøsö\Âÿ\0¢Y\áOûù{ÿ\0Ç¨ý&¨¯óeÿ\0ˆ\×?l/ú%žÿ\0¿—¿üzøsö\Âÿ\0¢Y\áOûù{ÿ\0Ç¨ý&¨¯óeÿ\0ˆ\×?l/ú%žÿ\0¿—¿üzøsö\Âÿ\0¢Y\áOûù{ÿ\0Ç¨ý&¨¯óeÿ\0ˆ\×?l/ú%žÿ\0¿—¿üzøsö\Âÿ\0¢Y\áOûù{ÿ\0Ç¨ý&¨¯óeÿ\0ˆ\×?l/ú%žÿ\0¿—¿üzøsö\Âÿ\0¢Y\áOûù{ÿ\0Ç¨ý&¨¯óeÿ\0ˆ\×?l/ú%žÿ\0¿—¿üzøsö\Âÿ\0¢Y\áOûù{ÿ\0Ç¨ý&¨¯óeÿ\0ˆ\×?l/ú%žÿ\0¿—¿üzøsö\Âÿ\0¢Y\áOûù{ÿ\0Ç¨ý&¨¯óeÿ\0ˆ\×?l/ú%žÿ\0¿—¿üzøsö\Âÿ\0¢Y\áOûù{ÿ\0Ç¨ý&¨¯óeÿ\0ˆ\×?l/ú%žÿ\0¿—¿üzøsö\Âÿ\0¢Y\áOûù{ÿ\0Ç¨ý&¨¯óeÿ\0ˆ\×?l/ú%žÿ\0¿—¿üzøsö\Âÿ\0¢Y\áOûù{ÿ\0Ç¨ý&¨¯ófðz\ßí…ž~øSþþ^ÿ\0ñ\êüFµû_\Ñ.ð§ý÷{ÿ\0\Ç\èý%¨¯óð\×ü\Éû@[\Íx«\á…rƒ>`·º¸‹vA\Æ\Ý\ÆM¸8\Ï\\óÓ·\Ý_?\àô\ß\Ù\ï\Ä7ñY|oøc©hq¿–­>r—*	À‘Šº£\'Œw\È\0þ\Þ(¯\Í?Ø«þ\n\Ûû\r~\Þzl-ð\'Æ–“êŽ«¿L¹o³Ý««Yð\'`8\'úX<Š\0(¢Š\0(¢Š\0ÿ\Ñþþ(¢Š\0+ˆø“ñ\Ã?\n¼«|EñÀµ\Òô[Yo.e?\Ã(]\Î:œ(\'$ö\Û\×òýÿ\0^þÕº\Ï\ìõÿ\0\àxj\ä\Û\Þøÿ\0PM1Š\à7‘&“œƒ‚\0òFH\ã \Ä/ü›þMñ¯þ\nñ¯T\Ðô=R\ãMð›pñi\ÚtNB:)Ç™&\ÜnÝ‚@m\Û7	\É\'ð\ZId•‹HK\ëD²4\Ò\ä±\ÍG@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@ð\Ç\âÇ¾ø¶\ÏÆ¿µK+R±‘e†{y\Z7VSARZÿ\0Sø7þ)wÿ\0øAwðw\ãÊ·\Ä	@,§ö»bv	\0UJ«´s\Üg¿\å_°ŸðBÿ\0Ú³^ý“ÿ\0\à¤?<e§\\46z–§—x¹Z\ß\ÜÁŠ®py#Œó@\ì\éEE©<	<g*\à}K@Q@ÿ\Òþþ(¢Š\0+üü\àö¯7ü$þ@\ã	k}\"€À\å\Ýr~\é)\ÇqÏ­ u›§ü¹{rßµ‡\Â\Í9›0§†$‘W†{¹Cõ\ä(ü¾¹\0þ$¨¢Š\0(¢Š\0(¢Š\0(¢Š\0(­ÿ\0\nøS\Å:ñ-‡ƒ<¦\Ýk:Æ©:Z\ÙX\Ø\Â÷73\ÊÁcŠcòH\ì@UPI<_Öü\Óþ\r\0ý¸iKm?\âí«\Ûüð½\ÆÉ¿³\åˆj\"ž,«m6ˆ\éŸ˜…—u\Ä\Æhœ|ö\ÍÒ€?úú¿ö{ý„m?\Ú\ÄG?\ì\Õð§\Å^7µ’coö\Í#Jº¹²Id¬·i\Ù\â\Ç2E\Å¬/\ìaÿ\0\éÿ\0Á&b‹{=G\Â\ß­<o\âK_)Ž»\ãMº\ÕÑ–\ß\ÑÁ2iU¹mkd’Tcöö\Ö\Ö\Ú\Ê\Ý-,£XbŒD@T€€\0 òHøKÿ\0£ÿ\0Áj¾&j\Û\Ä?4¿Z²«-Þ½®\é\ÞY\Ý\ØÇ§\Í{p¤w\rüó®m?\à\Ëø*•\Ì+$\Þ7ø[n\ÄRM[Y$\Ôš#Žø$z_\êE\0—\Õ\ßücÿ\0R¶…¤‡\Æÿ\0nBG«k ’:¿DQ“\Û$R+ä‹Ÿðj/ü§\áÿ\0\Ùü;ðûJñÅ¨Ff»\Ð5\Ý;\Ë]§§—¨MepÄŽFØ\àx¯õ¼¢€?\Âóö†ý‚mŸ\Ù0O?\í+ðŸ\Å~	´‚Q	¾Õ´««{rpWÙ¥ðr0\'€s_%WûúM7µ½Â‡ÁVV ðAø¯ûeÿ\0Á½ŸðIÿ\0\Ûf\Âò\ã\Æÿ\0l<#\â¥®¿\àõ]ù%“¬Î–\ëöK™23›«y¹\í\É\Èø\Ù\Ñ_\Ùüþ\æý°þ\Û\ßxûöñ·\Åýò\Z\éc\Ó5øb\Ýò¤a\ßì—…#\å\Ùe‚G#Û’B\×ò\ãß‡þ<øW\ã\rC\á\ç\Äýÿ\0\Ã~ \Òe0_iš¥´¶w–Ò€	I­\çT’6Ák(<\Ð#EP[þð§Š<u\â[x#Mº\ÖuRtµ²±±…\î.ng•‚\Ç0\Æ\ä‘Ø€ª ’x¿n\àð@\Ú\ëþ\nÇ­\Å\ã-\áøQm3\Ç{\ãF’9ž3µ\à\Ó-·F×³\Èr!P\ácôŸý?\à™ðLø\"ÁK\â\'‚l´\ß:\Ïv¿\ã\ï\\\ÂÚŒ±|ª\Ækù¼¸í¢‘‚ÿ\0£\Û,0³\àùe\ÎHùþÑŸðBÿ\0ø(ÿ\0\ì•ûCûuþ\Ñ^O\nøUõKtÛ»…þÙµŠùqwwf…´-.\Ø\nM\"\Ü$®ªð¨;«ò¿º\ïø.üEðö¢ø\ão\Øsö6ð2x¿Â¾-²}7Rñg‰¢–\ÞRÁ\Òm3N\Ìs‰\"uI`¸º1\å@M³\0	þh\0¢Š(\0¯AøQ®\\xk\âN‡¯Z’²Z_A*H\å$¨\çò¯>­}\ÊkV®:‰Pþ¢€?\Þ;\àgˆ¡ñwÁo	x¦Ý•“Q\Ñ\ìnAPÊ§Ì€\ß0ð5\êuò\Ï\ì9wqû\Zü+¾»mò\Í\á=Gl–k(‰8}+\êj\0(¢Š\0ÿ\Óþþ(¢Š\0+ü\Ú?\àõ¶öÀø\\¾¾ý,š¿\Ò^¿Í—þ\\ÿ\0“\ÃøYÿ\0b¤ŸúY5\04QE\0QE\0QE\0ú·ÿ\0¬ÿ\0‚=~\Ö_ðVoŠ\í\àÿ\0\ÖK¤øOIž5ñ‹5\ì\í66\Ã]£77e2b¶Œ‚\Ç\Ú(É‘{ø\"\Ïü\ï\â\Ïü\×ö•_iRÏ |;ðÙŠ\ëÅ¾#H\Ã}–\Ý\É\Ùkm¼l{Ë¥bCJ\êÊ›ýzf/Ù‡\ào\ìqðCAý¿g?\Ûøk\Â~€Ciin9f<\É4\Òži\ål¼²\ÈK\È\ä³M\0~ÿ\0Á/\à‰°÷ü«ÂIð[C\Z\ï%·hu/\Zk(“j\×>aÌ‘\ÂÁBYÛžCn2ªy\Í4€\È_(¢€\n+ò³ö¿ÿ\0‚\Úÿ\0Á.?aF\ã\Ã´\Æ\r\r~\ÖSo6‰¤4šÎ©Á7ùw6šr\\IjJA¹)\Èç‘Ÿ\çs\ã¯ü\ãû+øqš\ßöoø/\âº¹C.¿}i¡DT7§\ÙÆ¨\ì\äT<óƒ@Ûµþl¿ÿ\0\à÷\Û?Tgÿ\0…EðoÁZ\ZŸº5‹GU#\æŸ³Í§\ç\å\È\í\Ï=>Zó=þ\\ÿ\0‚˜Á{\æxƒ\á\Ç\Ã«}§ä·°\Ö`}ÝŽ÷\Ö&õ9õþœ\ÔWðð\Ëþ‹-ªY\Ù|dý¶Y;\â\îóEñ\écO\ïEiq`«#tZ\å}Ã¡ý½ý–ÿ\0\à\ê\ïø#\ï\í%ui¢x“\Åú—\Â\í^öSv¾2°kXrw½ý›\Ý\ØC\0á§¸‹ž€@?¤\n+‹øyñ\'\á\ß\Å\Ï\ØüCøQ¯\é\Þ\'\Ð58Ä¶zž“u\r\í\Äg£\Åq<r)\ìUˆ®Ò€\nü\âÿ\0‚…Á(bø)Ç€\äð—\íG\á.õh\í\Ú\r;ÄºxK]sM\Èm¦\Úô#1Ef/\äL²Û³rñ6+ôvŠ\0ÿ\0#/ø+\çüƒû`Á1\'\Ô~,ø5$ø™ðz7g_iÐ‘u¦DrUu{5\Ü\Ð\0ƒsûfùK4N\â!öŸü\Ùÿ\0\ÝkŸ·DšW\í—ûmY\Ü\é¡•g\ÑôSº¿4m\ìp\Z7#\r\"\âKŽV\"«û\Êÿ\0O;«[k\ëi,¯cY¡™JI€\Ê\ê\ÃX#‚Z‹NÓ´ýOƒI\Ò`Ž\Ö\Ò\Ö5†aP‘\Ç\Z\0¨ˆŠ\0UP\0\0\0\0\àPƒ|Eñ\ï\ìùûþ\ÌÚŸüL¶>ømð\×Eiž++u†\Ö\ÇO±	\rµ´\n\n8a‰2\ÌUI ò1ÿ\0‚\ËÁjhoø+‡\ÆW½ñ\×ø[¡]4žðŒr\æ0\Z5¼¼\Úv\Ï~\è\Ì‡\"%vŽ,)rÿ\0\Õ\×ü±ûeø‹Á_~þ\Ã^¸òmüosq\âMc€\Ïi¥´qXÀ\é‚Lr\Ü\É$\Ä\äa\í“\ç\çA@Q@Q@jh¬V·c\ÚEþb²\ëGHÿ\0œõ\Ñ˜ ÷8ý„\äÊ¾Ø¡¢ÿ\0\é5õ}|¡ûÿ\0É•|&ÿ\0±CEÿ\0\Òk\êú\0(¢Š\0ÿ\Ôþþ(¢Š\0+ü\Ù\àõ\Ïù<?…Ÿö*Iÿ\0¥“WúMWù²ÿ\0Á\ëŸòx?\ìT“ÿ\0K& â†Š( Š( ½W\àoÁoˆß´o\Æ?üøE§>«\âojVúV›k\'|÷.K\Ô\\\î‘\È\Â fl\0MyUr\ßðe÷üûLñ÷Å¯ÁF<wiÅ·\Ëx[\ÃÂ¾\ÍVò—P¹PF\ä’)b…V\î@G€?µŸø%\ïü\Ë\á_üö9ð\Ç\ì³ð\Ñ!¹º±Œ^kú´qyO«\ë3\"‹»\Ù,À1UŽ%fc	{ˆ@kô&ŠþB¿\à\âø8¾\Óö	‚ÿ\0ö2ý‹¯­\ï¾2\ÝÀW\Õö¬ðxb2\0Ž\Z9u	ƒ\"0)\nò+¨@?T?\àªð]\Ï\Øþ	I¤·‡¾(\êRx«\â5Õ±ŸOðnŠ\Ë%ó’^\ÊsŒXa\æ>c®\æ†)¶0\ç3ÿ\0ÿ\0ƒŽ¿\à¥?ðPJÿ\0\Ã\Òxª_†~\0¹\Ìqø_Â’\Ég\ÄK^\ß)wŒ\è@‘E·b¡–9\Ïá¿Œ¼i\ãˆ¾*\Ô<wñV¼\×u\ÍZwº¾\Ôuäº»¹žC—–i\åf’Gc\Ë31$õ5\ÍPEû5ÿ\0\Ëÿ\0‚~\ßÿ\0ðT“‹¾\rhxw\áù•£›\Æ gµ\Ó\Æ\å%K@¨ó^È…]H‚6]vK$dŠ\0üe¢¿Ó¯ö\\ÿ\0ƒ1¿\àž¿llõ?\Ú{\Åþ\'ø£¬FŒ·0C*hzDŒ\ÄV\Þ\ØIz¥@ÛŸ·\á²IQÀ¡kÿ\0·Á\n„{ÀòO÷‰¼MŸý:\ãô ò	¢¿\ÕS\ãü\íÿ\0øŸ	“\áœ~-øop¹(4}`\Þ@I\Î<\ÄÕ¢¾‘”g¢J‡óu\Ïó\Õû_Á—¶\Ã[Ÿþ\Ç_4?Švp\Ç,£K\Ô\ã>\Õ]ƒ~\î<\É.,fb¼4“]Z®G\Ý\0ðùeÿ\0\ì|!ÿ\0‚„|xý¾to‡¿±\Ä|7\Ò-]5?\ëšL \ÙZ\épn\\\ÝZ\\n³¼–Vc\r¬3\Ã0ó_\Ì\Ù\å\Ç#/ú’þ\×ðQ\Ø\Çö\Õ<\á\ß\Ú\Û\Çö>¹ñõûiºKß’¼H—\r\Zí·¶Fh\Ò[‰CH›\ÙT\ä~}~\Â²\ì­ÿ\0\éÁ.õ|^\Õ\í\á—Jµÿ\0„‡\ÇZømÏ©jÌ‹ZÙ‰6@\å-,`K³+\æ\Ë#òðÿ\0‚ÿ\0ÁC>-ÿ\0ÁO?l~\Õ·[\ÌXhšbÇ¥\èö\î\íif‡\'%|Æ’Wÿ\0–“I#€¡¶€ö\ç\ÒõM3[\Ó-õ­\â+\Ë;È’x\'\ÖH¥ŠEŽŽ¤«+)X9z¿\Ê7þ\rÿ\0ÿ\0ƒ…þ!ÿ\0Á5¼wcû;~\ÓÚ•÷ˆ¾\ë3¬e\\\Éus\áy¤`\r\åŠ|\Ò5žyº²Œó@¾vø\î?Õª\Î\î\ÛP´Šþ\ÍÄÎ‹$n:2°\È#\ê\r\0X¢Š(ü±¿\àò_sþ\nß¦ifMÿ\0\Ø\ßôk09ù7\Ý\ê;yô\ß<ds\ë?”\nþ¢ÿ\0\à\ï\ßùL^£ÿ\0b†…ÿ\0 \Í_Ë¥\0QE\0QE\0£¤\ÈNú\è¿\ÌVuh\éòƒþº/óþ\ç°ü™W\Âoû4_ý!†¾¯¯”?aù2¯„\ßö(h¿úC\r}_@Q@ÿ\Õþþ(¢Š\0+ü\Ù\àõ\Ïù<?…Ÿö*Iÿ\0¥“WúMWù²ÿ\0Á\ëŸòx?\ìT“ÿ\0K& â†Š( Š( ¿\Ú7þYû(§\ìiÿ\0¤ø3ð~ò\ÞK}^\ëB_\Öm¾r\ê\Z\á:ŒñHP&\Ü\Î-×®%±ø\íþ\Í\ß\n\âø\ëûDø\à\Ä\ÏoŒ¼G¥hm,dA¨\Ý\ÅlYIV€“#*F{•þð¶6Všm”:u„b(-\Ñc€¨ƒ\n£\ØŠ\0üXÿ\0‚óÁU4\ßø%?\ìA¨|Gð\ËAqñ\Å\îú\'ƒ¬¦9lt\Ì\×\Ò.\èlb>k6¼†(‰_7pÿ\0/x“\Ä^2ñÿ\0‹ü_sª\êÚ­Ì·—··’¼÷773¹’Y¦–B\Ï$’;wbY˜’I&¿ ÿ\0ø9÷öô¼ýµ\à©*ð~|÷ø>\Òx7Iˆ3ˆÝœ‡ûZ\à#\07\Éz\"‚$ŠHfP¦¿j\0(¢¾¬ý†¿e\ZþÜ¿µ\ç\Ã\ß\Ù3À\ÓPñÎ³ž÷ª\æ\Ò\Ó&K\ÛÂŒ\ÈmmR[†]À²\Æ@\ä@ÒŸüKÿ\0ÿ\0\èÿ\0·¦©\í¿ûa\é\Í7\Â\í\á\Ñtg,ƒ\ÄWöÏ¶F˜“§[¸d+4\Êc\'bJ­þœz¡xWC³ðÇ…\ì \Ót\Ý:\í­--cX`‚”$qE\Z\0ˆˆ *ª€\0\0Šð\ßøcö{ý„ÿ\0f/Á¶7V>\nøkð\ËC†\Î;F\åb¶²\Ó\ì\"‰..ga“µs$²6\çrY‰f9þ?ÿ\0m\ßø=?\àW\Ãÿ\0\Þx+ö\røqqñ!\"x—\Ä3É¥i\í Û±\íôñ^O	\ÉÏœör1°ƒý\ÄQ_\æw\à\ïø=—þ\n\rc\â´ü@øWðóSÒ·g\ìú|Zµ\Æ\Þxó\å\Ô.\Ó=9ò}x\ç\Ù_\Ù+þDý‡¾)_[xö¶ð¿ð¢\êy[Q²q\â*$!\æx#·¾]\Ý6\Åe6|s@\Ù}2I#Š6–V\nª	$œ\0RMxŸ\ìóûJüý¬¾\Ú|fý›<]¦x\×\Ã¬cPÒ§Y\ãYT+<2óE2]ñH«\"dnQšþKÿ\0\à\ë?ø-}\×\ì\Ãð\ÚOø\'Oì¿­›_ˆ~2´\â\ÍB\×>f‘¡\Ü#kª@Ž\îüu<´V»Ž¦†E\0þxÿ\0\à\æø-ƒÿ\0ÁD>>Ÿ\Ù{öu\ÖV\ç\à§\ÃÛ³\å\ÜÚ¶b\×õˆ\ÃG-þðq%¬!š+<|®7Ï–\Æ#þX¨¢€\nÿ\0|O†÷\Ýü;\Ð.­\Î\è\åÓ­]OL†…H<óÒ¿À\î¿Þ‡\à6¥³ð7ÁšÅ¨eŠ\ïBÓ¦@\ØKh\Ø‚FpyÁ4\êôQE\0”\ßü	gsmÿ\0†»št*·\r\Ð\äŒÿ\0yG\ÚŸû\éHü+ùk¯\êóþ#·šø+†$ƒ7€4gOp.õ\Ï\æ¤Wò‡@Q@Q@h\éòƒþº/óZ:Gü„\àÿ\0®‹ü\Å\0¹\Ç\ì#ÿ\0&Uð›þ\Å\rÿ\0Ha¯«\ë\å\ØGþL«\á7ýŠ\Z/þ\Ã_W\ÐEPÿ\Öþþ(¢Š\0+ü\Ù\àõ\Ïù<?…Ÿö*Iÿ\0¥“WúMWù²ÿ\0Á\ëŸòx?\ìT“ÿ\0K& â†Š( Š( ¾?\à”öñ\Ýÿ\0ÁQ?f\ÛY¾\ä¿üF\Ö\í¯ö¸ø\Éñ\Ë\á\'\ÂüUÔˆ[o\è÷Ú´¥º²·y\Û=8\ÂWøÿ\0Á9|Og\àø(WÀ\Zj.c·\Ò>\"x^öViT·Õ­¤cž\ØÖ¿\Øÿ\0þ\n“£\êž!ÿ\0‚e~\Ñ~\Ð\à{«\Û\ï†.··†1—’Yt[´DQÜ³\0õ4þ\"&ñ.½\ã?j0ñUÔ—Ú¦­s-\å\åÌ§2M<\îd–G=\ÙÝ‹\êkŠ(\0¯\é\'þ\rWøõû-þ\Î_ðT\äø‡ûUøŸHðvœ|#«\Úhú¶¹q”\Z¤\Ò[`Iu9X`/f·H­#¨b\ÞX%Aþm¨ \ê‹þYÿ\0‚\á\êðP¿ŽSþ\Ë³f¾_\àw‚n6y¶n\ËˆõH‰ó/d`@–\Òù,\×I\r>[|{?•\Ú( ¿D¿\à—_ðN?Œ_ðTO\Ú\ç@ý™¾£Z\Ù\Ì\ëy\â\ra´:N‘¨¹º~\Í&\È#\ÈófdBUK:ü1\àOø·\âwôo†\Þ\0°—U×¼C}o¦i¶P\Ësww*\Ã1Ž2òH\êª=M®üƒþ	ýðþÿ\0\Û\Öþ$þ\Ðú†Ÿi\âdÓŸÄ¿¼KeÀ0#<z}±P\Ò\Í\rš·“h\\\\3È‘«\Î#\0/\íóû_~\Êðn¯üFð—\Â\"\Ö\Ö}:\Ñôxle›P\ÔÊ´²\Ý]*\íH\íupH.\ï·w›4`ÿ\0‘—\ÅÏ‹_><üO×¾3ü`\Õ\ç\×üQ\â{\éµ-SP¹ \Ëqsp\Å\ärQ“…U\n¨¸U@ôþ\nõÿ\0<øÿ\0Xý±5¯\ÚÅu§ø^Ð?\ÂzÎ¬ºV•ù„ùM\Äí™®_,L°1Ž8\Õ.(\0¢Š(\0¯÷uý’oÿ\0µeO†Z¦\Ï/\í>\ÑeÛœ\í\ßcc8\Æz\â¿\Â*¿Ü§þ	Á\âùþ ÿ\0Á<~øö\æ¶“\\øu\ámA\áRYck&\ÖR€œ¶\ï@g\ÑEþ[ÿ\0ðyÍ¬–ÿ\0ðV\r\Ê\ä?\Ãm!\×€ÔµT\çñS_\É=^?ðze«[ÿ\0ÁU<)9óþi.=±¬kKÿ\0²\×ò@Q@Q@h\éòƒþº/óZ:Gü„\àÿ\0®‹ü\Å\0¹\Ç\ì#ÿ\0&Uð›þ\Å\rÿ\0Ha¯«\ë\å\ØGþL«\á7ýŠ\Z/þ\Ã_W\ÐEPÿ\×þþ(¢Š\0+ü\Ù\àõ\Ïù<?…Ÿö*Iÿ\0¥“WúMWù²ÿ\0Á\ëŸòx?\ìT“ÿ\0K& â†Š( Š( 	`žki’\æ\Ù\Ú9#`\Ê\ÊHe`r#A\èký\Íeï‹¾ý¹ÿ\0aŸüdŒ7öo\Äÿ\0\Ú^\\F\ÛK\Æu+0.!l»\âwx\ØF\å=«ü1ký(¿\à\Ì\ï\Û÷Fø™û-xŸþ	\ë\âÛ´\Ä_\r.¦\×t(XªµÆ‡ªO\æ\\ˆ\×qg6º„Ž\Ó6\ÕP.\á\'8\0ÿ\0:‹\ßüUðC\âÇŠ>ø\é=o\Â\Z½î‰¨$d²-ÖŸ;\ÛN°RTI`•@¯;¯\ëþ\çÿ\0‚jŸ³Gü ~\Ö>±‘|ñ®\Ü_I*\'\îmõ\Û8\Ò\è	T\n¦t]\r\ÌZG’b8L\äò€\n(¢€\n(¯\éGþ\rºÿ\0‚1\Ýÿ\0ÁN?i“ñ\ã-‰?>\Z\Ý\Ã6²%Bc\Öu\0i\Ù\0©e»#v\Øv¡\0ÎŒ\0? \ßø4\Ëþ«ÿ\0\n¿\Âv_ðT¯\Ú_KC\âZøWú}\Äd=†pŒ²jí»6ú\'\Ùm…ùm‹H¼õòÿ\0+ÿ\0\à\ê_ø-K~\×\î?\àŸÿ\0³Ž¨\Ïð\Ï\áýÿ\0üOï­¤\"-s\\·$4`«bK;\Ê a¶K•y\0eH^¿ Ÿø:þ5oû~\Ïñþ\Ã_³=ð³øŸñLxnn¬$XŸÃš%¤O,‡†\ê\íwEi´\Z,“GXK—E\0QE\0QE\0þ\ÝðHÛ™.ÿ\0\à•³\\²\0ø_\á$\ã\Ñ4{U \æ¿\ÄR¿\ÛGþ\Ýq5\Ïüsöo’s¹‡\Ã\r \í\ÂiÐªŽ=\0€?Iè¢Š\0ÿ\03¯ø=—Á\ßbÿ\0‚ƒü,ñÿ\0\Úwiü<‹Oò6cg\ØumB]û÷|\Ûþ×»FÝ™\ÉÝüfWö÷ÿ\0¼\Ø$µGÀýL1\Ý7…5Šö;\àÀþ;\Ï\å_\Ä%\0QE\0QE\0£¤\ÈNú\è¿\ÌVuh\éòƒþº/óþ\ç°ü™W\Âoû4_ý!†¾¯¯”?aù2¯„\ßö(h¿úC\r}_@Q@ÿ\Ðþþ(¢Š\0+ü\Ù\àõ\Ïù<?…Ÿö*Iÿ\0¥“WúMWù²ÿ\0Á\ëŸòx?\ìT“ÿ\0K& â†Š( Š( ¾\Óÿ\0‚zþ\Ü\àœßµ×„?k„@\\\ßøj\äý¯O’VŠ\rJ\Âu1]\ÙL\Êh˜…b­\å\ÈP¥‘k\â\Ê(ý”jïŸ²¯ü-ÿ\0¨[o‡\Z\Ä:GŒ\ì“[ðž¶Q^]#\\µ‘™S–ŽHd2\Ú^D0þ[M`HaþA_þ|Sý™>3ø›öøÛ¤Í¡ø¯\Â7óiº•”À‚“Bq¹GŠEÄ‘H¹I#et%Xû•ÿ\0üÁqüKÿ\0›ø\Ïqðûâ˜¸Õ¾\nø\Þ\î7\×l¡\ËË¥Ý‘\rZ\Ò1÷cUKˆ‡3D«Œ¼qŠþÓ¿à¶¿ðFð[\Ù\×Fý®?c\ÝOI“\ât:Z]ø{^µ‘‡‰4\×Pñ\Ù\ÝÎ ƒŸ³L\Ü\Ä\ä£\á	\ÚþQtW{ñG\áo\Ä_‚_5„¿4[¿ø—\Ã÷Oe¨\é·ñ47\Ó\Æp\È\èÀ\êB A®g\Ãþ×¼Y¯XøWÂ¶7\Zž©©\ÜEiggiM=\Äó0H¢Š$\ä’G!Qf \0I ®ÿ\0\àŸ_°·\Æoø(\ç\í]\á\ÙG\à|j:ô\Å\ï/\Þ7’\ÛK\Ó\á\Ã]_]û±B2G™#Gò ?\ê»û@üeý\à\Û\ïø%FŸ¦xB\Í&²ðš\é>\Ò\ætŠ÷\Äzô\È\Îd¸’(Àó.$W¸»™c\Û\ZÚ¼G\â\à\ß?ø#Ž‡ÿ\0¦ý•F¡ñ®¾/øþ8o|Sx6¿Ø.\è4›w^<«l“+|\Ù\Ù\ÛqŒD©ùÿ\0®ÿ\0‚Ác¿\à®_µŒ\ßnüoð\ËEð†–m;ÁºÆ¯­-,]Á’\æ\åSEx\Å\í\áD{-™T,q‘bW`ó\ßý¢>?üUýª>8ø§öŠøßªË¬ø¯\Æ\ZŒÚ–£u+1Ì’ž#Œ1>\\0 X ˆ±D‰\Z\0ª\0ñšþ¿\â\nŸø*oý\ß\n¿ðk®òŠø‚§þ\n›ÿ\0C÷Â¯ü\Z\ëŸü¢ \ä\nŠþ¿\â\nŸø*oý\ß\n¿ðk®òŠø‚§þ\n›ÿ\0C÷Â¯ü\Z\ëŸü¢ \ä\nŠþ¿\â\nŸø*oý\ß\n¿ðk®òŠø‚§þ\n›ÿ\0C÷Â¯ü\Z\ëŸü¢ \ä\n¿\Ú\×þ›$’ÿ\0Á#g&•‹\àdœð-Pô\0`{Wðÿ\0Tÿ\0ÁS\è~øUÿ\0ƒ]sÿ\0”Uþ‚\ßðMÙŸ\Çÿ\0±·\ìð¯ö[ø¥ya¨x‡Àú\ZUõÆ—$²\Ù\É,E²`y\â‚VLxû\n\0û–Š( ó®ÿ\0ƒ\átûx¾7þ\ÏÚ²\çÍ›C\×bnx\ÛÍ£.®dlþü,W÷‘ÿ\0\Ç[Â¿?g¥¼};\Ä\èO¨Y´\Â§ô\0QE\0QE\0VŽ‘ÿ\0!8?\ë¢ÿ\01YÕ£¤\ÈNú\è¿\ÌPûœ~\Â?òe_	¿\ìP\Ñô†\Zú¾¾Pý„\äÊ¾Ø¡¢ÿ\0\é5õ}\0QE\0ÿ\Ñþþ(¢Š\0+ü\Ù\àõ\Ïù<?…Ÿö*Iÿ\0¥“WúMWù²ÿ\0Á\ëŸòx?\ìT“ÿ\0K& â†Š( Š( Š( ¿¢oø!¿üñ›þ	9\â‘ð»\âž6ø\'«\\o´\ÝMÞ™,™/4“+¤k#rd·wH¦<–Ï™_\Î\ÍþµŸ·\Çü\çþ	\Ëÿ\0þ\ÍZ/\íMð\Ä\Ö6\Þ,ž\Ën\ã½\"0\îÊ §k6§Ë’E‰ŽÖ†o.\æ\Õò¨2G\'\æ§ü\Éÿ\0\ØüLýŒiO~\Õÿ\0ðP\r.\ÍüK\à}B]7Á6·^\Ø\Ì\ÞXß¯+¯\ÌAW1Ù¤\É±·™$‘+ˆJþBÿ\0ÁŸÿ\0oþ\ÚZ·Ž¾\nx—Pð\×Ám\r\Þ8GE›MÕ®²\Ó\ÒN>\ØNeûDCÌ‚`\ÎÊ’ÿ\0¢ÆŸÛ‡ö+ý›¼W€ÿ\0h‹þ	ð¹qj—±i\Þ#ñ›¥Ý½´Žñ¤\ë\Ý\ÄR4Lñº«…\ÚY•8\0úŠŠøþ\Ãÿ\0²ÿ\0£–øUÿ\0…–‡ÿ\0É”\Ã\Ø\à–_ôr\ß\n¿ð²\Ðÿ\0ù2€>ÿ\0¢¾\0ÿ\0‡°ÿ\0Á,¿\è\å¾\áe¡ÿ\0òeðöø%—ý·Â¯ü,´?þL ¿è¯€?\á\ì?ðK/ú9o…_øYhü™Gü=‡þ	eÿ\0G-ð«ÿ\0-ÿ\0“(\ïú+\àø{ü\ËþŽ[\áWþZÿ\0&Qÿ\0aÿ\0‚Y\Ñ\Ë|*ÿ\0\Â\ËCÿ\0\ä\Ê\0ûþŠøþ\Ãÿ\0²ÿ\0£–øUÿ\0…–‡ÿ\0É•õ\ïÂ¿‹Ÿ\n>:x\Z\Ï\â‡Á\é>1ðÖ¢eš¾‡{¡c9†F†QÍ³\Éùr£FûX\íu*pA\èTQE\0ŸOü+K\â?Ùž\à/\Î\Ö\Þ.R}B¾Œ@ü2:þkûùÿ\0ƒ\ç#ŒIû/Jn#Æ œr@þÁÀÏ¶O\ç_À5\0QE\0QE\0£¤\ÈNú\è¿\ÌVuh\éòƒþº/óþ\ç°ü™W\Âoû4_ý!†¾¯¯”?aù2¯„\ßö(h¿úC\r}_@Q@ÿ\Òþþ(¢Š\0+ü\Ù\àõ\Ïù<?…Ÿö*Iÿ\0¥“WúMWù²ÿ\0Á\ëŸòx?\ìT“ÿ\0K& â†Š( Š( Š( ¾¬ý‰¿c·\Ï\í3\áo\Ùg\àžou\ï],M3ö{E \Ü\ß]0û–ö\Ñ\æG<±ÀD\r#\"·\Ì\Zf™©kZ•¾£\Û\Éwww\"C¡’Id…DDPY™˜€\0’p+ýiÿ\0\à\ÜOø#—üöcÿ\0…¡ñ›M~5üF·Š}uœ‰H±ÿ\0Yo¤FÀ•™ó.\Ù8y\Î\ÝÎ\Ä\Ôôv³­~Ä¿ðm\Çü¢\Þ\Ûw— xB¤N\ê5/ø’ñZBN^\â\îDgle-\í£$‚/ù(þ×¿µŸÆ¿ÛöŒñG\íEûA\ê#RñGŠ\î\Í\ÍÁŒ2[\ÛÆ $¶Ñ³9Ž\Þ\Þ%X¢B\ÌB(\Ü\Ì\Ùcû\Çÿ\0Kþ\Ùÿ\0µ\ï\í%ûv\Íð¿\ãO„|Aðÿ\0\á×^\â\ÓÁ\ÚN³jö©¨(`—:Ê±]—\è…\È\î±D>W2\îþb(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¯õ\Òÿ\0ƒT®&›þ}ð¢9V+\ß\"{®\ß6?6&¿È¶¿\Ö\Çþ\r8fÿ\0‚\'ü?\\1‹Xñ\nvŸ\íI\ÛÓƒœ{\ç½\0HôQE\0\r\ßð{ü;¿g?€÷3·Äšº\î\ÇM\Öpœg\ß;\ãÚ¿\Îb¿\Ò;þt‚vý>]*1‰<cv¬ø;C6ž\åA=!N|Jÿ\07\Z\0(¢Š\0(¢Š\0+GHÿ\0œõ\Ñ˜¬\ê\Ñ\Ò?\ä\'ýt_\æ(ý\Î?aù2¯„\ßö(h¿úC\r}__(~\Â?òe_	¿\ìP\Ñô†\Zú¾€\n(¢€?ÿ\Óþþ(¢Š\0+ü\Ù\àõ\Ïù<?…Ÿö*Iÿ\0¥“WúMWù²ÿ\0Á\ëŸòx?\ìT“ÿ\0K& â†Š( Š( Š+öþÿ\0¶ñgükö\Ú\Ñþ\r2\Íi\à_ˆõŸ\êh¶.)TX\ä\\¹½o\ÜÁ–Ê‚óu…\Å\0C?ði¿ü<|Qñe§üö£\Ñ_\r\èñoô\Û\È÷-\î¥ú\Ã\Æ\ãiŠ\Í\×m¡9-r\ZQ´Á?ú/\×%\à/ø/\ágô†¿4»m\Ãúœ\Z~›§\ÙÆ±[\Ú\Ú\Û Žb@\nˆŠ@\èu´\åŸ>|ý¢|wð·\ãß„ô\Zxnø©ŸL\Ö\ìá¾µvB\Å::oF‘€Ü¬)_È\íõÿ\0iþ\É¢»ñŸ\ìâ›¿…\Z\æ\Çt\ÐõV›WÐ§p±Y¯\ì÷¹\å2]ª¨\Â@+ûA¢€?\Å_öõÿ\0‚.ÁF\àœW—7¿´g\Ã\Ë\Æð\Ì\íñFŠR\Ð\Ýw*†{¸Wý{8TK´‚F9Ú„\×\å}¿•Å½½Ý»\Ú\Ý\"\ËªQ\ÑÀeea‚<G\Zþwÿ\0oŸø6þ	wûo½\ç‹|;\á§øI\ã+Xj\ÞX\í-¥“\æ!®t²¦\Ê@]‹H\ÑGòfn(ü‹h¯\éöùÿ\0ƒTÿ\0\à¦ß±\Ç\Ûü]ðŸKƒ\ãWƒmwº\ßx]ûQ!PkBn7ž~[G»\0³â¿šOLÔ´]J\ãG\Ö-ä´»´‘\áž	\Ç$RFJº:0¬¬ €A4JŠ( Š+÷;þ	ÿ\0ý®\à¬>+¶ñF‹m\'‚¾\ÛN\Ñ\ê^3¿‡t.bm¯o¦ÀY\Zö\ã9i\ÄTù²«\ìG\0üÁý”?do\Ú\'ö\ßøÕ¦~Ï¿²ÿ\0…\îüW\âS.¶ö\Êp@¬«%\Í\Ô\ÌDvöñ—PóJÊŠYFw2ƒþÁ_ðEoø\'—Œ?\à˜?ðOÿ\0þÊŸõûOø‚\Ò\æ\ïTÔ®l#t´Ž\êþO6Kx\ZL<±\Â~E•’3&7\Ó;G\Ê\Ú×‰ÿ\0\à‘\ßðl/\ìs‡j#\ÒnuKAl¾U\ç‹|]{l¸i$`\"2gù„6v\Þ`UTo§?\à‹ðQOÿ\0ÁRbóûZø\×B²ð\Ìú‡ˆµ]>\ßJ±‘\ç[K[9`ŽI\ä\nf›a\r$#Vc•\0~µ\ÑEüdÿ\0Á\ì\ÖIÿ\0üøUª/ú¸~!GpzÉ¥_°\ç§D?\äWùž\×ú¸Á\ß¢ø•ÿ\0u\Õ<nÁ·ü=ñf‡¯)^\Ây$\Ñ\ÈoöOöýôÒ¿\Ê>€\n(¢€\n(¢€\n\Ñ\Ò?\ä\'ýt_\æ+:´tù	Áÿ\0]ùŠ\0ÿ\0s\ØGþL«\á7ýŠ\Z/þ\Ã_W\×\Ê°ü™W\Âoû4_ý!†¾¯ Š( ÿ\Ôþþ(¢Š\0+ü\Ù\àõ\Ïù<?…Ÿö*Iÿ\0¥“WúMWù²ÿ\0Á\ëŸòx?\ìT“ÿ\0K& â†Š( Š( ¿×ƒþ?û|:ÿ\0‚@Á*\íþ!||–\Û\Ã\"ñž|m\ã\ÝNøùb\Æ?$\Ë\r¬\ÌIÚº}¡\ê	y™—\ï\×ù­Áe½ö\Íÿ\0‚¤|ýü]Wz.¯\â½\Ô\ígŒKÍ†‘º¥Ý´ˆ\ß)I\àµx›9cÁ\é_\êÿ\0ü6ñÿ\0\ÅOø\"\ÇÇŸ|6˜\Ãe£[k\á\Ú=ú~‘¨Z\ê:‚\î\\žl\í\æùz?\Ýl+\0?¾?ÿ\0Á\íÿ\0³wƒ>\"K\á\ß\Ù\Ëà¦µ\ã¿[\Í$/¬jº¼ZLö‰­­\ÓPvŠE\Ó\Îh$Á\ãF\È_ª?gø<þ	ñV\æ\×Gø\ë£ø³\áeÔ‘\îž\îö\Åu]2\'\Ç(²\é¯5\ãóÀ?aP{\â¿\Ë~Š\0ÿ\0x\Ù÷ö¢ýœjÿ\0ÿ\0\Â\Ãýš<s¡ø\ëE#’\ëD½†ñb¨o*a3C \\dd\n÷Šÿ\0?‚~7~\Í?m~+þÏž,Õ¼\âK/–-GF»–\Î\ãaefž&Rñ9U\ß\å2‘\Åf\ßðM¿ø<¯\âÿ\0€\æ²øoÿ\0.ð\ÐñžD<Y\á\Ø\"µÕ¢\í¾\î\ÃtV—#¦Z³2¨\'d¬q@\è\ÍE|µû$þ\Û²¯\í\Ùð\Ê?‹ÿ\0²oô\ß\Zhe„s=“•ž\ÖR¡¼›»YB\\ZË´ƒ\å\Ï\Z>8ÁýK@~mþ\Ý?ðH\Ïø\'·üjÁ\ßö§øo§jº\àˆEˆ¬°\Ö\áT#Qm²i#Œ\ÈÌ°NeƒqÉŒšý$¢€?\Í\Ûöúÿ\0ƒ0ÿ\0h†¿nñ¿ü\ÛÆ¶ÿ\0t”ó$Ãž\"1iº\Ôh¡vE\r\è\Ûax\ìw\Ò¿(\nÜšþB~4þ\Ë´\ì\åñ@|ø\ï\à]w\Â~,yDP\ézŒð\\\\!…\Z\ÙG\Ú#‘ÁX\ä‡zIüÀŠÿ\0wúòß‹w_ü/\á†ø³ñ\È\è\ÖZG‚÷\ë\ÚúÐ Ò¼˜\Ø=Ø¸¸ùm\ÊFXC)\nH\Î\r\0\ßðD\ïø4\Ï\Ä^7—Fý¨¿à©¶r\é:\"\Ý\é¿\Ã4W·D\ÑI­J„5´[y6Q‘;Q3Ã±\à“ö;þ\nûÿ\0~\Éÿ\0ðI¯Ÿ\Ø\ëö\'\Ò4üL\Ñ,¿³mt28\âð\ï…C\â\Û\Ô\É\â;|D\Ï\0òÄŸ‡Ÿð[?ø;\Æ_¿µ¿fø&\r\í×†ü%\"½®¥\ã¼Imª\ê\n\ß+&”¶K\ÏúC¹|ü‚\r¹“ø„žy®f{›—i$‘‹31%™‰\É$žI\'© sý¥?i\ïÿ\0¶\Å\íO\ã\Ï\í3\â«\ïø³Wl\Ü_\ß8$ $¬PÄb‚\Éò\á…(Á\Â\"Ž+ý¿\à\Ê/&­ÿ\0\îø™ð\î[ƒ,\Ú/\Ä)\ïl\Ùò\á¿\Ò\ìƒ÷U¤¶”ñÁmÇ®kü\ËkûAÿ\0ƒ*ÿ\0i­\á\×\í­ñ3ö^\Ö\åŽ\ÜüLðå¾¡b\Ò8Všû\Ã\Ò\Ê\â\Þ4<»5­\í\Ô\ÜtXX\ã€ô·¢Š(\ç\ïÚ»örðO\í{û4ø\ëö_ø$°h¾<\Ñ/4[©\í\Â­\Å\ÔL‹q˜¬žl.VX÷)\Ôd_\ä«ñ³þ\r\Çÿ\0‚»ü&ý¤¦ý|7ðƒYñš\âU\Ó<C£Æ¡\Þ[«òj\ëkd]F|«\Éa‘OOÿ\0±]aø›\Ä\Þð_‡o¼_\ãû}+I\Ò\à’\êòö\îU†\Þ\Þ”¼’\Ë+ˆˆ ³3\0“@\Ê/ü\çþ\r†øaûj´\×\í&\ãß‹°‘6›e™´o·ð¼>j©»½~\Ð\è©\â,¢wþÿ\0\à¾ÿ\0³Ÿ\ìû1ÿ\0ÁM¼{\à/Ø»ÄºV³\á;™¾\Ûq¥i6þ\Ô\äw[\í:fó!eHŽ-\ÕÅ³*¼-Ÿ\Þø.\ïü=\âOŒ²k_²ü7TŸGðs+\Ù\ë^:„¼Ú¦IY Ò¾\ë\ÛZc†¹8šl‘Š1ºo\á\ê€\n(¢€\n\Ñ\Ò?\ä\'ýt_\æ+:´tù	Áÿ\0]ùŠ\0ÿ\0s\ØGþL«\á7ýŠ\Z/þ\Ã_W\×\Ê°ü™W\Âoû4_ý!†¾¯ Š( ÿ\Õþþ(¢Š\0+üÙ¿\àõÀá°¾Ÿú•ÿ\0K&¯ô™¯óiÿ\0ƒÖ¿\ä\ï¾Ø¨ÿ\0úY=\0´QE\0QE\0G¿ðjŠ|5\á¿ø-o\Ã\Ë?8Iµ}+_±±,¹i:dóŸ\á-R\0{“·ø«ýl¯,\ìõ9týB$ž\Þth\åŠEŽŒ0\Ê\Êr \àƒÁþ_³\ß\Ço‰³\Ç/	~\Ño~Á\âoê¶º¾1Ý³ÎµHUVRð\ÈŽXò‘³!\á¨·\ì\åÿ\0mÿ\0Á#¾&ü\Ò|mñ\ã\ÅWÿ\0\r|c%²ÿ\0iør\çH\Õu#\rÒ¨óEµ\æŸi=¼\ÐÏ”\î\Ñ;&‘\Æ\ÙPüÁy¿\àœ°Á2ÿ\0\à¢þ*ø+\á8L~	ñi\âo\nd\î)¥\ß\É\"ýœœm.\"š\Üg,R4s\Ë\×\ãE~\Úÿ\0Á{?\àªúGü§ö\Ø_Œ¿´Ë½Àþ\Òbðÿ\0‡­¯Ê‹™ Žin%¼¸\Ò9g–b6+6\Ø\Ò0I`kñ*€\n(¢€=\Ûöqý§h/\Ùâ—\Æ\ÏÙ›\ÅúŸ‚¼Q`6\Ç¦Lbg‹z»A:sð;\"™ ™^)0£\nþÿ\0?\à”?ðx\Â\ïŠ)¥üÿ\0‚ž\Ø\Ã\à\ßHc¶‡ÆºdLtk¦cµ[Pµ]òX¹ùwM™nX³²\ÛF¸¯ó¢€?\ßs\Ã>\'ðß<=e\â\ïjÚ¶“©B—6w¶R¤ö÷\È$±Kdte «) ŽA­\Êÿ\0ÿ\0ø%·üö\ßÿ\0‚Sø¦+oƒú\Ïü$^\0¹$\Ôü¬\É$ºdË¹Œi\Îû—\ÇÎ·Àw\ØgŽu@•ý’~\Ñðy¯ì§~\Çö\Þ;ý˜<+©\ê5ˆ\ä|3®À\éa£\\/\Ëö›\Û\ÈYR\î\ß?41\ÚÈ²Ê£ý”ž\0?¥ø(GüŸöMÿ\0‚dü›\ãW\íK\â°ŽE‘t­\×lÚ®¯q\Z\ç\ìö6Å”»d¨i’·,ˆ§5þWŸðW\ïø.\ç\ícÿ\0eñ¬\Ú/ˆgü*²˜>•\à\Û	™ &6%.u€Syu\È\å‚\Å•\Z1w\Í\Ú\Çö»ý¢¿nš—\í	ûPøž\ë\Å~)\ÔÀ®.X\à\í­a@\"··Œ³Š%T™±¹˜Ÿ›h\0¢Š(\0¯ ¿e/\Úc\â\ìoûGx7ö ø3r¶¾%ðV§¥f_&9vee‚`-\r\ÄLðÊ ‚Ñ»\0Fs_>\Ñ@\î-ÿ\0ðÿ\0‚€|ÿ\0‚•þ\Ì\Z\í;û>\ê=•úýŸSÓ¤eû^“©Fªn,.\Ð¤±OÝ’6IP˜\ÝXý\Å_\âÿ\0\çÿ\0‚™~\Õ\ßðKÏ¿ðº¿e\íim\â¤\ZÆz\Zm/W·Œ’‘^[«&\ãf1JŒ²\ÄY¶8á¿¾OÁ\æ°.±û(j¿¼s\áMwFø«¦D±Á\àxÑ®!\Ôn_^\ÛWXÅ¼vªNe{„ŠdP\Þ\\¡À?¨¿Ú›ö®ýŸ¿bÏ‚Ú·\íûLøš\ÓÂ¾Ñ“t·W,K\Ë!¤ñ(2O<˜\ÄqD¬\ìz\r•Ÿü\×þý ?à«šõ\Ï\ÂoGs\à_‚6W+%§‡„€]\êŠ\çX’6d‘Ã$v\È\ÆX)Ì²\"\Ì=?\à¤\ßðT¯\Ú\Óþ\n•ñ¢O‹´ž¶\ÇO´g]Ã¶Lñ\é:DO\ÉmnXƒ#y·nš\\\0Ï±Qó–€\n(¢€\n(¢€\n\Ñ\Ò?\ä\'ýt_\æ+:µt?ù\Û\×Eþb€?\Ü\Óöÿ\0“*øMÿ\0b†‹ÿ\0¤0\×\Õõò‡\ì#ÿ\0&Uð›þ\Å\rÿ\0Ha¯«\è\0¢Š(ÿ\Öþþ(¢Š\0+ü\ç\àöO\rMoû@|#ñ[E„¹Ð®­Ä™w•p[n3‘·\\\ç©\Ç\è\Å_\ÄüŸðcRñÀ/…ÿ\0\Z¬mšHtMF\ê\Â\âUŒ‹pŠ\é½þð”\í\Æs\Ü\Ðù\Â\ÑE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0WC\á;sw\â[U\ä\É<kù°®z¾ŸýŒ>\ê¿j_|5\Ñ`’\â\ãWÖ¬\í\Õ\"]\ìCJ¹ÂžO<zñ@\í¡û\"\è’xköYøu\áùb05—†ô\È<²wmò\íc\\g\'8\Ç\\œúšú&¹ÿ\0	\è\é\á\ßiºjª¶6°Û€ *\Z\0(\à8¥t\0QEÿ\×þþ(¢Š\0+òûþû?\í\çûx\Ï\àV“r\ëSÛ‹1œ‹˜HXð»Š\à“\Û=ýA¤ ƒ@\à™ñWá¯Š¾øÿ\0Uø{\ãKI,u-&\æKi\á•J²¼lT‚¨¯;¯õTÿ\0‚\Ïÿ\0Á·?¿o{»ÿ\0Ž³ûÁáˆ\0Ò®\ÚÞ“ ‰	\Ú7½NH\çüýk/ø#‡\íÿ\0ûx†}\'\â—\ÃýH\Ú$›b¾³‰®-¦Q\ã\Ü9\î?)¸ \ËZ+©\Õ|\â\í\á­u}:\â\ÚD\á–H\ÙHÇ¨\"°›O¾N\Zö4NŠ±öK¯ù\æß—ÿ\0Z“\ì\×\Üo\Ëÿ\0­@QSýš\ãûùõ¨û5\Ç÷òÿ\0\ëPTÿ\0f¸þ\ã~_ýj>\Íqý\Æü¿ú\Ô?Ù®?¸ß—ÿ\0Z³\\q¿/þµ\0AEOök\î7\åÿ\0Ö£\ì\×\Üo\Ëÿ\0­@QSýš\ãûùõ¨û5\Ç÷òÿ\0\ëPTÿ\0f¸þ\ã~_ýj>\Íqý\Æü¿ú\Ô?Ù®?¸ß—ÿ\0Z³\\q¿/þµ\0AEOök\î7\åÿ\0Ö£\ì\×\Üo\Ëÿ\0­@QSýš\ãûùõ¨û5\Ç÷òÿ\0\ëPTÿ\0e¹ÿ\0žmùõ©\Â\Î\ìð#cøPj+J-Tœ\â+y\è§ü+\Öüû8|tø¡©C¤øÂº¦«qpvÆ–\Ö\ÒH\\ú.ž½¨\ÄÀ$\àWõ\ïÿ\0 Á:|Yñ³ö»·ý«üY¥¿ü\"ž<3M0\Íx\èUP`•\r»¨\ç¬Oø&—ü\Z±û]~Ð¾-\Óü]ûUX\Ë\à/\Å$RO\Æöx\É\Ë*G\ÕN\Þr\Ã#Üô|ý‘¿doƒ±oÁ+\à—Á-*-3L\Ó\"T%o•ñóI#ufc\É\'ùP\Ó\à``QE\0QEÿ\Ðþþ(¢Š\0(¢Š\0+?P\Òt½Zmª[Esê² q\×=¸¡E\0|\ç\ã\Ùö\\ø“7\Ú|uðÿ\0@\Õ$-¼¼ö3nù¹Ý·?\ÄÇ¯ROZùÿ\0Wÿ\0‚MÁ65Ë¿·j?|(e\Ú˜\ì#ˆ:dF\îFq\ØW\èeù«/ü\Óþ	y3™&ø\áGcÔµ’“ù\æ¨\Éÿ\0gÿ\0‚^»–_‚~@{±ú‚kô\âŠ\0ü\Äÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âhÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âkô\îŠ\0ü\Äÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âhÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âkô\îŠ\0ü\Äÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âhÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âkô\îŠ\0ü\Äÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âhÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âkô\îŠ\0ü\Äÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âhÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âkô\îŠ\0ü\Äÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âhÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âkô\îŠ\0ü\Äÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âhÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âkô\îŠ\0ü\Äÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âhÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âkô\îŠ\0ü\Äÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âhÿ\0‡2ÿ\0Á/¿\èŠø_ÿ\0\0!ÿ\0\âkô\îŠ\0üÌ‹þ\×ÿ\0ºv¿Á\n\ÈsÕ¬S?¦+B/ø#\ïü\ÃðK\Âè£ [0\åšý#¢€>\"ð\çü[öð“\Û\Ëá¿„³{]¾[G¦[\îH#$®[	\Îry9¯¨<3ð¯áŸƒ-c²ð—‡ô\í6(~\â\Û[E^6ñµF>^>œt®öŠ\0@\0\é\Å-PEPEPÿ\Ñþþ(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0ÿ\Ù'),(2,'image/jpeg',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0‹\0‹\"\0ÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\06\0\0\0\0\0\0\0!1AQaq\"4‘¡#$2±Á\ÑRS’ð3BCÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0 \0\0\0\0\0\0\0\0!1AQ\"ÿ\Ú\0\0\0?\0\ÔJÃ¤‡GE®ø\ë„¨)ŽAHZ§[@\Ø)Á ,Ž´‚\Ç\rn\çX4ð¶8k\n\Z\n\Ðb®¦>1/\âªz›/cñU=G©­0ˆd\ÅHÃ¡Z£!£&-3#€‹@ \Ø!¦\'\ç›€sg¦ƒ…ŠÇ |g\Ä\Ôõ6Œøªž£M_LdÈ“1i%L)‰s“\'M*c\"$\ÆL5In5\È\Ó\Z\â8s…¹\×5Î¸·À\Z\ç\\VÅ¸&š\àl[\ÜVÇ [\Ü\ÈÅ¿¼\Ôõ5\Ü\È\Å\Ë\ï5=A5eL‘OÉŽ±[2Zxª–³WŒ§qª§\äl\Å*uWz©Ù“W*\Úc)UQ•A.U\È^rQ‚m¾ˆ\Ô\Âp\å&•y‰›\Ãf\Ö#2\è\êUÕ­(™w\Þ\\tq\Çù\ÕN#Ã¹™AJPê··’•=LEE\nk~¯¡¿\Zò“QJ\Ã\Æ\Ü\Õ\î¬\Ý\Ztú\ç\å™W„J0¼k,Ýœt2\ëFTª8Ouõ=MIB\nòi¾ˆóœc\âö¾ƒç¿±\ë¼ê«.E˜\ìÆŒªKŠ\ä&}\Ìw-ÌŒ[û\ÌýM\'=LœT¾\Þ~£M<b‡I	˜õ”ÄˆtE\r˜J‰\Ôt\ÈT†R&¯•\îS%u}™¹Nª\ÒÇ˜§?{s_ˆE½šúœþOÎ»ü^q²\ë-z\"7^nI\ì\×RJ\í\ë§A«5Ë»2\ÖÞ’x¤ß½-L\Î-ˆS\Én÷&¬!M·-¶2jUsžg\×\èk\ã›u—š\ÎfC¹9c®tG\rI˜W!.\ì4ß³\Ü\Ë\Ä\Ë\í\ç\ê_r)V¡RUe%k0AUBH\Î\åE$º’FJÛšX\Æt¶¤2‘^2K¨\êq\îM‹\Ô\×dF¥\Ô7‚q¤© Ò–»(\ÖP’³Ð©	%»1_¹—\\\ë£\Ç\äõoS\ÅAGYƒŽL±¼½Uˆho\âlî–½|™|n¯ú9«xŒ2\å\å7\ê\ÊNª“ok“T©F¤v±VpM»lmÄ‘\Ë\å\ï«ûÔ¹\×pç´d9´…‹úaµ>df´{j‡Œ¬\ÕÂŸ7ú2\ÓF&a\ë»\êˆ3}§©•™‰EU!Ôñ\Ç:YO\Ë-weU1óù¥ZMI-Š¹\Ø\êo¸±s¥Œ\á\Î\Ñ[8\ÊD\áû&\æ0ó\r\ÑÙð{&\æ´w1÷!Ì™©{\Ô\ê£9\Õ}\Êù\Î\Ì<ƒÞ¬s_s¹¯¹Y\Èbõ…î¸««j+­¦`gH-gs\ÞIz²E=\é\ÜñÕ§)NY\ä\Ûn\îý\Í~V\\š”Þ±‹ºñ~ŸB\ç[q\Å:n)Œ¤VRH¼T\í<\ë*T\å9;$¯«<\Ý~?Œ¨\ß-Æœ^\ÖWú–=¡«j4é§»»0L{¿e\×wôÙ§\í.1\Ë8S“Kñ>ÿ\0\í\Ë4½¥n¬Z&\í&›mk¹\çZG$ú+“´¾N§\í\î0\\BŽ63t$\ÞWf¥¿‚\Æs\Å`qõ°N£¥78\Ù\æ[vc\Ô\â˜\ê•\ÝyF\ÛF:/‘Z¹\åþ½ž`f<\åhd¢–\"‚rþ¨;/‘+WX<?\ÙÁ\Õ\ë_öŠ¾HõYÁ˜ÅŸ\Z’\ÂC4œ$òæ”’\Öß—\ìCO\Ú\É\\\Ê9ª\Ûx»E¿\Ð{\n÷\ÈW#\ÊË‹c*\×\Í\ZÎœS¾X\Ú\É~¤\ßÏ«ä¦¹qsNóv\ÒKô\r…òG£\Îvs\\z“k-\Zu»K\ä\ç´þU~Ÿ¹[Ý„\ã,¶¿”µ$¡ˆ«‡¨\çOGkY†ŠucriSƒZ£gš³G)\Ï\"’½“I+~\à¿\Ó\Þzù$œ©B\rûª*È’0ŽI»k\Ù\ä­~9ŒZ\Ô1¸™Su}\é5\î]­·#XOö£\ÛV\é6žýüŽƒºW\êOµ£\ãŒ€Ä¨\ÉòvvüH\ìvT+7•(JO-\ÇRqU,ÿ\0\Ò^„\Ú4\êÓ‹©µ)[QÎŠø\æ0”[\Ù\\9\'¾VX\Ä\ÅR•©ûª\×Ü‹4®\Ög¥ú”\Ï0™\Zvi‘jä¢·nÈ²\å%­\Ý\Ë8\ÆP”œb\äª;;\0l\Ð\ÂR«€†NÑ²‹’\Þ÷\ß\æV¯À(R‚—:«½GM«Ç¥õúx{¼\á\æ¢-c\"œ:üLºú“oÛ£žy¼\íŒ÷\ì\Ö\Z52J½y^\r\é•Y«xòC?giòpóUf§R)ÔŒ\ÜUž—±{\ÚKK\É?µŠ\Õt.\à(Ó­\Ã0®¬TœiF\ß$-¸~œ\Ûf1±\\B­5\nõ\ÜjK*¾]65°ø.Œ),<g•[4 ›~A^öWÿ\0*\ÙúIµ&“v¸·\è\ç<\Ë~Ÿÿ\Ù');
/*!40000 ALTER TABLE `output_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_image`
--

DROP TABLE IF EXISTS `t_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_image` (
  `imageId` int(11) NOT NULL AUTO_INCREMENT,
  `imageType` varchar(255) NOT NULL,
  `imagePath` varchar(255) NOT NULL,
  `imageTitle` varchar(255) NOT NULL,
  `imageLike` int(10) DEFAULT '0',
  `imageLook` int(10) DEFAULT '0',
  `userID` int(10) DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `t_image_userID_fk` (`userID`),
  CONSTRAINT `t_image_userID_fk` FOREIGN KEY (`userID`) REFERENCES `t_user_info` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_image`
--

LOCK TABLES `t_image` WRITE;
/*!40000 ALTER TABLE `t_image` DISABLE KEYS */;
INSERT INTO `t_image` VALUES (1,'image/jpeg','image/1.jpg','Cloud',432,532,1),(2,'image/jpeg','image/2.jpg','Nature',534,642,1),(3,'image/jpeg','image/3.jpg','Nature',234,565,1),(4,'image/jpeg','image/4.jpg','Nature',123,854,1),(5,'image/jpeg','image/5.jpg','Apple',355,865,1),(6,'image/jpeg','image/6.jpg','Lavender',324,523,2),(7,'image/jpeg','image/7.jpg','Nature',234,756,2),(8,'image/jpeg','image/8.jpg','Dragon',253,743,2),(9,'image/jpeg','image/9.jpg','Animation',143,563,2),(10,'image/jpeg','image/10.jpg','Animation',632,754,2),(11,'image/jpeg','image/11.jpg','The Kimono Girl',342,653,3),(12,'image/jpeg','image/12.jpg','Animation',234,754,3),(13,'image/jpeg','image/13.jpg','Room',342,785,3),(14,'image/jpeg','image/14.jpg','Queen',242,675,3),(15,'image/jpeg','image/15.jpg','Road',234,765,3),(16,'image/jpeg','image/16.jpg','Sea',265,765,4),(17,'image/jpeg','image/17.jpg','Animation',213,754,4),(18,'image/jpeg','image/18.jpg','Animation',345,764,4),(19,'image/jpeg','image/19.jpg','Angel',532,765,4),(20,'image/jpeg','image/20.jpg','Night',764,954,4);
/*!40000 ALTER TABLE `t_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_info`
--

DROP TABLE IF EXISTS `t_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_info` (
  `userId` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_info`
--

LOCK TABLES `t_user_info` WRITE;
/*!40000 ALTER TABLE `t_user_info` DISABLE KEYS */;
INSERT INTO `t_user_info` VALUES (1,'Mike','123456'),(2,'Jason','123456'),(3,'Perse','123456'),(4,'Nana','123456');
/*!40000 ALTER TABLE `t_user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-07  0:39:49
