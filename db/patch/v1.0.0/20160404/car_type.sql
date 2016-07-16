/*
SQLyog Ultimate v10.42 
MySQL - 5.5.28 : Database - structure
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`structure` /*!40100 DEFAULT CHARACTER SET utf8 */;


/*Table structure for table `car_type` */

DROP TABLE IF EXISTS `car_type`;

CREATE TABLE `car_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_type_id` varchar(11) NOT NULL,
  `car_type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1016 DEFAULT CHARSET=utf8;

/*Data for the table `car_type` */

insert  into `car_type`(`id`,`car_type_id`,`car_type_name`) values (1,'001','A4L [中型车]'),(2,'001','A6L [中大型车'),(3,'001','Q5 [SUV] '),(4,'001','A1 [小型车] '),(5,'001','A3 [紧凑型车]'),(6,'001','A5双门 [中型车]'),(7,'001','A5掀背 [中型车] '),(8,'001','A5敞篷 [中型车] '),(9,'001','A7 [跑车] '),(10,'001','A8L [豪华车]'),(11,'001','Q5（进口）'),(12,'001','Q7 [SUV] '),(13,'001','R8 [跑车] '),(14,'001','S5掀背 [跑车] '),(15,'001','S5敞篷 [跑车] '),(16,'001','S5双门 [跑车] '),(17,'001','S8 [豪华车] '),(18,'001','TT [跑车] '),(19,'002','华晨3系 [中型车]  '),(20,'002','华晨5系 [中大型车] '),(21,'002','华晨X1 [SUV]'),(22,'002','1系敞篷 [紧凑型车]   '),(23,'002','1系 [紧凑型车]   '),(24,'002','1系双门 [紧凑型车]  '),(25,'002','1系M coupe [紧凑型车]  '),(26,'002','进口3系(进口) [中型车]  '),(27,'002','进口3系敞篷 [跑车]   '),(28,'002','进口3系双门 [跑车]   '),(29,'002','进口5系 [中大型车]   '),(30,'002','进口5系GT [中大型车]   '),(31,'002','进口5系旅行车 [中大型车]  '),(32,'002','6系敞篷 [跑车] '),(33,'002','6系双门 [跑车]   '),(34,'002','7系 [豪华车]  '),(35,'002','6系Gran Coupe [跑车]  '),(36,'002','M3 [跑车]   '),(37,'002','M5 [跑车]'),(38,'002','M6 [跑车]   '),(39,'002','进口X1(进口) [SUV]   '),(40,'002','X3 [SUV] '),(41,'002','X5 [SUV]'),(42,'002','X5M [SUV] '),(43,'002','X6 [SUV]   '),(44,'002','X6M [SUV] '),(45,'002','Z4 [跑车]'),(46,'003','911 [跑车] '),(47,'003','Boxster [跑车] '),(48,'003','Cayman [跑车] '),(49,'003','Cayenne [SUV] '),(50,'003','Panamera [豪华车]  '),(51,'004','C级 [中型车]'),(52,'004','E级长轴距 [中大型车] '),(53,'004','北汽GLK级 [SUV] '),(54,'004','凌特 [MPV] '),(55,'004','威霆 [MPV]  '),(56,'004','唯雅诺 [MPV] '),(57,'004','A级 [小型车]'),(58,'004','SLK级 [跑车] '),(59,'004','B级 [紧凑型车] '),(60,'004','C63 AMG [跑车]'),(61,'004','C级旅行 [中型车] '),(62,'004','CLK级敞篷 [跑车]'),(63,'004','CLS级 [跑车] '),(64,'004','CLS级 AMG [跑车] '),(65,'004','E级敞篷 [中大型车] '),(66,'004','E级双门 [中大型车] '),(67,'004','G55 AMG [SUV] '),(68,'004','G级 [SUV] '),(69,'004','GL级 [SUV] '),(70,'004','GLK级（进口）[SUV] '),(71,'004','ML级 [SUV] '),(72,'004','ML63 AMG [SUV] '),(73,'004','R级 [MPV]'),(74,'004','S级 AMG [豪华车] '),(75,'004','S级 [豪华车] '),(76,'004','S级混合动力 [豪华车] '),(77,'004','SL级 [跑车] '),(78,'004','SL级AMG [跑车] '),(79,'004','SLK55 AMG [跑车] '),(80,'004','SLS AMG [跑车] '),(81,'005','Cross POLO [小型车]'),(82,'005','朗逸 [紧凑型车]'),(83,'005','帕萨特领驭 [中型车]'),(84,'005','Polo [小型车]'),(85,'005','Polo Sporty [小型车]'),(86,'005','Polo劲取 [小型车]'),(87,'005','帕萨特 [中型车]'),(88,'005','桑塔纳 [中型车]'),(89,'005','桑塔纳志俊 [中型车]'),(90,'005','途安 [MPV]'),(91,'005','途观 [SUV]'),(92,'005','宝来 [紧凑型车] '),(93,'005','一汽CC [中型车] '),(94,'005','高尔夫 [紧凑型车] '),(95,'005','高尔夫GTI [紧凑型车] '),(96,'005','捷达 [紧凑型车] '),(97,'005','迈腾 [中型车] '),(98,'005','速腾 [紧凑型车] '),(99,'005','进口CC[中型车] '),(100,'005','CrossGolf [紧凑型车] '),(101,'005','Eos [紧凑型车] '),(102,'005','高尔夫R [跑车] '),(103,'005','高尔夫敞篷 [紧凑型车] '),(104,'005','Golf Variant [紧凑型车] '),(105,'005','辉腾 [豪华车] '),(106,'005','甲壳虫 [紧凑型车] '),(107,'005','甲壳虫敞篷 [紧凑型车] '),(108,'005','旅行车 [中型车] '),(109,'005','进口迈腾旅行车 [中型车] '),(110,'005','R36 [中型车] '),(111,'005','尚酷 [跑车] '),(112,'005','尚酷R [紧凑型车] '),(113,'005','T5 [MPV] '),(114,'005','Tiguan [SUV]'),(115,'005','途锐 [SUV] '),(116,'005','夏朗 [MPV] '),(117,'006','57 [豪华车]'),(118,'006','62 [豪华车]'),(119,'007','MINI [小型车] '),(120,'007','CLUBMAN [小型车] '),(121,'007','COUNTRYMAN [SUV] '),(122,'007','COUPE [小型车]'),(123,'007','ROADSTER [小型车]'),(124,'007','CABRIO [小型车]'),(125,'008','晶锐 [小型车] '),(126,'008','晶锐跨界版 [小型车]'),(127,'008','明锐 [紧凑型车]'),(128,'008','明锐RS [紧凑型车] '),(129,'008','昊锐 [中型车]'),(130,'009','fortwo [微型车]'),(131,'010','MF4 [跑车]   '),(132,'010','MF5 [跑车]'),(133,'010','GL8 [MPV] '),(134,'011','君威 [中型车] '),(135,'011','君威GS [中型车] '),(136,'011','君越 [中型车] '),(137,'011','君越混合动力 [其它]'),(138,'011','凯越 [紧凑型车]   '),(139,'011','林荫大道 [中大型车] '),(140,'011','英朗GT [紧凑型车]   '),(141,'011','英朗XT [紧凑型车]  '),(142,'011','昂科雷 [SUV]'),(143,'012','福克斯两厢 [紧凑型车] '),(144,'012','福克斯三厢 [紧凑型车] '),(145,'012','嘉年华两厢 [小型车] '),(146,'012','嘉年华三厢 [小型车]'),(147,'012','麦柯斯S-MAX [MPV] '),(148,'012','蒙迪欧致胜 [中型车] '),(149,'012','翼虎 [SUV] '),(150,'012','F-150 [其它]'),(151,'012','野马 [跑车] '),(152,'012','锐界 [SUV]  '),(153,'013','H3 [SUV]'),(154,'014','大切诺基 [SUV] '),(155,'014','牧马人两门版 [SUV]   '),(156,'014','牧马人四门版 [SUV]  '),(157,'014','指挥[SUV]'),(158,'014','指南者 [SUV]  '),(159,'014','自由客 [SUV] '),(160,'015','SLS赛威 [中大型车] '),(161,'015','CTS [中型车] '),(162,'015','CTS Coupe [中型车] '),(163,'015','CTS-V [跑车]   '),(164,'015','凯雷德混动 [其它]'),(165,'015','SRX [SUV]   '),(166,'015','XLR [跑车]   '),(167,'016','大捷龙 [MPV]'),(168,'016',' PT漫步者 [紧凑型车]'),(169,'017','领航员 [SUV] '),(170,'017','MKS [中大型车] '),(171,'017','MKT [SUV]'),(172,'017','MKX [SUV]  '),(173,'017','MKZ [中大型车]   '),(174,'018','安德拉 [SUV]'),(175,'018','赛飞利 [MPV]   '),(176,'018','雅特 [紧凑型车] '),(177,'018','雅特A+ [紧凑型车]   '),(178,'018','雅特敞篷 [跑车]'),(179,'019','爱唯欧两厢 [小型车] '),(180,'019','爱唯欧三厢 [小型车]'),(181,'019','景程 [中型车] '),(182,'019','科鲁兹 [紧凑型车] '),(183,'019','通用科帕奇 [SUV] '),(184,'019','乐骋 [小型车] '),(185,'019','乐风 [小型车] '),(186,'019','迈锐宝 [中型车] '),(187,'019','赛欧两厢 [小型车] '),(188,'019','赛欧三厢 [小型车]'),(189,'019','Camaro科迈罗 [跑车]'),(190,'019','进口科帕奇[SUV]'),(191,'019','斯帕可 [微型车]'),(192,'019','Volt沃蓝达 [其它]'),(193,'020','207两厢 [小型车] '),(194,'020','207三厢 [小型车] '),(195,'020','307两厢 [紧凑型车] '),(196,'020','307三厢 [紧凑型车]'),(197,'020','308 [紧凑型车] '),(198,'020','408 [紧凑型车] '),(199,'020','508 [中型车] '),(200,'020','Cross 307 [紧凑型车]   '),(201,'020','207CC [跑车]  '),(202,'020','3008 [SUV]'),(203,'020','308CC [跑车]'),(204,'020','308SW [紧凑型车]   '),(205,'020','407 [中型车]  '),(206,'020','407Coupe [跑车]  '),(207,'020','407SW [中型车] '),(208,'020','607 [中大型车]   '),(209,'020','4008 [SUV]'),(210,'020','RCZ [跑车] '),(211,'021','风景 [MPV]'),(212,'021','风朗 [紧凑型车]'),(213,'021','科雷傲 [SUV] '),(214,'021','拉古那 [中型车]  '),(215,'021','拉古那-古贝 [中型车]   '),(216,'021','梅甘娜 [紧凑型车]   '),(217,'021','梅甘娜CC [跑车]  '),(218,'021','塔利斯曼 [中大型车] '),(219,'021','纬度 [中型车]'),(220,'022','爱丽舍两厢 [紧凑型车]'),(221,'022','爱丽舍三厢 [紧凑型车] '),(222,'022','C2 [小型车] '),(223,'022','C5 [中型车]'),(224,'022','凯旋 [中型车]'),(225,'022','萨拉毕加索 [MPV]'),(226,'022','世嘉两厢 [紧凑型车] '),(227,'022','世嘉三厢 [紧凑型车] '),(228,'022','C4 [紧凑型车] '),(229,'022','C4 Aircross [SUV]'),(230,'022','C6 [中大型车]'),(231,'022','大C4毕加索 [MPV]'),(232,'023','威航 [跑车]'),(233,'024','458 [跑车]'),(234,'024','599 [跑车] '),(235,'024','612-OTO [跑车] '),(236,'024','California [跑车] '),(237,'024','FF [跑车] '),(238,'025','500 [小型车]'),(239,'025','500敞篷版 [小型车]'),(240,'025','博悦 [紧凑型车] '),(241,'025','菲跃 [SUV] '),(242,'025','领雅 [紧凑型车]'),(243,'025','朋多 [小型车]'),(244,'026','Aventador [跑车]'),(245,'026','盖拉多 [跑车] '),(246,'026','蝙蝠 [跑车]'),(247,'027','Aventador [跑车] '),(248,'027','盖拉多 [跑车] '),(249,'027','蝙蝠 [跑车] '),(250,'028','奥德赛 [MPV] '),(251,'028','飞度 [小型车] '),(252,'028','锋范 [紧凑型车]'),(253,'028','歌诗图 [SUV] '),(254,'028','雅阁 [中型车] '),(255,'028','CR-V [SUV] '),(256,'028','思铂睿 [中型车] '),(257,'028','思域 [紧凑型车] '),(258,'028','思域混合动力 [其它]'),(259,'029','花冠EX [紧凑型车]'),(260,'029','皇冠 [中大型车]'),(261,'029','卡罗拉 [紧凑型车]  '),(262,'029','兰德酷路泽 [SUV] '),(263,'029','普锐斯 [其它] '),(264,'029','RAV4 [SUV] '),(265,'029','锐志 [中型车] '),(266,'029','威驰 [小型车] '),(267,'029','汉兰达 [SUV] '),(268,'029','凯美瑞 [中型车]'),(269,'029','凯美瑞尊瑞混动 [其它]'),(270,'029','雅力士 [小型车]  '),(271,'029','逸致 [MPV]   '),(272,'029','埃尔法 [MPV] '),(273,'029','FJ酷路泽 [SUV]'),(274,'029','海狮 [MPV] '),(275,'029','普拉多 [SUV] '),(276,'029','普瑞维亚 [MPV] '),(277,'029','ZELAS杰路驰 [紧凑型车]'),(278,'030','CT200h [紧凑型车] '),(279,'030','ES [中型车] '),(280,'030','GS [中大型车]'),(281,'030','GS混动 [其它]   '),(282,'030','GX [SUV]'),(283,'030','IS [中型车]'),(284,'030','IS敞篷 [跑车] '),(285,'030','LF-A [跑车] '),(286,'030','LS [豪华车]'),(287,'030','LS混动 [其它] '),(288,'030','LX [SUV]'),(289,'030','RX [SUV] '),(290,'030','RX混动 [其它]  '),(291,'030','SC [跑车]'),(566,'031','维特拉[小型SUV]'),(567,'031','奥拓[小型车]'),(568,'031','雨燕[小型车]'),(569,'031','羚羊[小型车]'),(570,'031','启锐[紧凑车型]'),(571,'031','天语SX4[紧凑型车]'),(572,'031','天语尚悦[紧凑型车]'),(573,'031','锋驭[小型SUV]'),(574,'031','超级维特拉[紧凑型SUV]'),(575,'031','北斗星[微型车]'),(576,'031','北斗星X5[微型车]'),(577,'031','派喜[小型车]'),(578,'031','利亚纳[小型车]'),(579,'031','利亚纳A6[小型车]'),(580,'031','浪迪[微型面包]'),(581,'031','速翼特[小型车]'),(582,'031','凯泽西[中型车]'),(583,'031','吉姆尼(进口)[小型SUV]'),(584,'032','马自达2[小型车]'),(585,'032','马自达3 Axela昂克赛拉[紧凑型车]'),(586,'032','马自达3星骋[紧凑型车]'),(587,'032','马自达CX-5[紧凑型SUV]'),(588,'032','阿特兹[中型车]'),(589,'032','马自达6[中型车]'),(590,'032','睿翼[中型车]'),(591,'032','马自达CX-7[中型SUV]'),(592,'032','马自达8[MPV]'),(593,'032','马自达CX-7(进口)[中型SUV]'),(594,'032','马自达CX-9[中大型SUV]'),(595,'032','马自达5[MPV]'),(596,'032','马自达MX-5[跑车]'),(597,'033','ILX[紧凑型车]'),(598,'033','TLX[中型车]'),(599,'033','RLX[中大型车]'),(600,'033','RDX[中型SUV]'),(601,'033','MDX[中大型SUV]'),(602,'033','ZDX[中大型SUV]'),(603,'034','西码[中型车]'),(604,'034','玛驰[小型车]'),(605,'034','骊威[小型车]'),(606,'034','骐达[紧凑型车]'),(607,'034','轩逸[紧凑型车]'),(608,'034','阳光[紧凑型车]'),(609,'034','LANNIA蓝鸟[紧凑型车]'),(610,'034','天籁[中型车]'),(611,'034','逍客[紧凑型车]'),(612,'034','奇骏[紧凑型车]'),(613,'034','楼兰[中型SUV]'),(614,'034','帕拉丁[紧凑型SUV]'),(615,'034','日产NV200[MPV]'),(616,'034','日产D22[皮卡]'),(617,'034','日产ZN箱式车[皮卡]'),(618,'034','途乐[大型SUV]'),(619,'034','贵士[MPV]'),(620,'034','日产370Z[跑车]'),(621,'034','日产GT-R[跑车]'),(622,'034','碧莲[轻客]'),(623,'035','风迪思[紧凑型车]'),(624,'035','蓝瑟[紧凑型车]'),(625,'035','翼神[紧凑型车]'),(626,'035','三菱戈蓝[中型车]'),(627,'035','君阁[MPV]'),(628,'035','劲炫ASX[紧凑型SUV]'),(629,'035','帕杰罗.劲畅[中型SUV]'),(630,'035','欧蓝德(进口)[紧凑型SUV]'),(631,'035','帕杰罗.劲畅(进口)[中型SUV]'),(632,'035','帕杰罗(进口)[中大型SUV]'),(633,'036','翼豹[紧凑型车]'),(634,'036','力狮[中型车]'),(635,'036','斯巴鲁XV[紧凑型SUV]'),(636,'036','森林人[紧凑型SUV]'),(637,'036','傲虎[中型SUV]'),(638,'036','斯巴鲁BRZ[跑车]'),(639,'037','Q50L[中型车]'),(640,'037','QX50[中型SUV]'),(641,'037','Q50[中型车]'),(642,'037','Q70[中大型车]'),(643,'037','EXQ[小型SUV]'),(644,'037','QX50(进口)[中型SUV]'),(645,'037','QX60[中大型SUV]'),(646,'037','QX70[中大型SUV]'),(647,'037','QX80[大型SUV]'),(648,'037','Q60[跑车]'),(649,'038','起亚K2[小型车]'),(650,'038','秀尔[小型车]'),(651,'038','赛拉图[紧凑型车]'),(652,'038','福瑞迪[紧凑型车]'),(653,'038','起亚K3S[紧凑型车]'),(654,'038','起亚K3[紧凑型车]'),(655,'038','起亚K4[中型车]'),(656,'038','起亚KX3[中型车]'),(657,'038','起亚KX5[紧凑型SUV]'),(658,'038','狮跑[紧凑型SUV]'),(659,'038','智跑[紧凑型SUV]'),(660,'038','起亚K5(进口)[中型车]'),(661,'038','凯尊[中型车]'),(662,'038','起亚K9[中大型车]'),(663,'038','索兰托[中型SUV]'),(664,'038','霸锐[中大型SUV]'),(665,'038','佳乐[MPV]'),(666,'038','嘉华(进口)[MPV]'),(667,'038','起亚VQ[MPV]'),(668,'038','速迈[跑车]'),(669,'039','主席[大型车]'),(670,'039','蒂维拉[小型SUV]'),(671,'039','柯兰多[紧凑型SUV]'),(672,'039','爱腾[紧凑型SUV]'),(673,'039','雷斯特W[中型SUV]'),(674,'039','享御[中型SUV]'),(675,'039','路帝[MPV]'),(676,'040','瑞纳[小型车]'),(677,'040','瑞奕[小型车]'),(678,'040','悦动[紧凑型车]'),(679,'040','朗动[紧凑型车]'),(680,'040','领动[紧凑型车]'),(681,'040','伊兰特[紧凑型车]'),(682,'040','名图[中型车]'),(683,'040','索纳塔九[中型车]'),(684,'040','北京现代Aix25[小型SUV]'),(685,'040','途胜[紧凑型SUV]'),(686,'040','北京现代Aix35[紧凑型SUV]'),(687,'040','全新胜达[中型SUV]'),(688,'040','索纳塔八[中型车]'),(689,'040','康恩迪[轻客]'),(690,'040','Veloster飞思[紧凑型车]'),(691,'040','索纳塔(进口)[中型车]'),(692,'040','雅尊[中型车]'),(693,'040','捷恩斯[中大型车]'),(694,'040','雅科仕[大型车]'),(695,'040','全新胜达(进口)[中型SUV]'),(696,'040','格锐[中型SUV]'),(697,'040','H-1辉翼[MPV]'),(698,'040','劳恩斯-酷派[跑车]'),(699,'041','Rapide[大型车]'),(700,'041','拉共达Taraf[大型车]'),(701,'041','V8 Vantage[跑车]'),(702,'041','V12 Vantage[跑车]'),(703,'041','阿斯顿.马丁DB9[跑车]'),(704,'041','Vanquish[跑车]'),(705,'042','慕尚[大型车]'),(706,'042','飞驰[大型车]'),(707,'042','添越[中大型SUV]'),(708,'042','欧陆[跑车]'),(709,'043','XE[中型车]'),(710,'043','XF[中大型车]'),(711,'043','XJ[大型车]'),(712,'043','F-PACE[中型SUV]'),(713,'043','F-TYPE[跑车]'),(714,'044','幻影[大型车]'),(715,'044','古思特[大型车]'),(716,'044','魅影[跑车]'),(717,'045','发现神行[中型SUV]'),(718,'045','揽胜极光[中型SUV]'),(719,'045','第四代发现[中大型SUV]'),(720,'045','揽胜运动版[中大型SUV]'),(721,'045','揽胜[中大型SUV]'),(722,'045','神行者2[中型SUV]'),(723,'045','发现神行(进口)[中型SUV]'),(724,'046','L3[紧凑型车]'),(725,'046','L5[紧凑型车]'),(726,'047','MG3SW[小型车]'),(727,'047','MG3[小型车]'),(728,'047','MG5[紧凑型车]'),(729,'047','MG6[紧凑型车]'),(730,'047','锐行[紧凑型车]'),(731,'047','锐腾[紧凑型SUV]'),(732,'048','F0[微型车]'),(733,'048','e5[紧凑型车]'),(734,'048','F3[紧凑型车]'),(735,'048','G3[紧凑型车]'),(736,'048','G5[紧凑型车]'),(737,'048','L3[紧凑型车]'),(738,'048','秦[紧凑型车]'),(739,'048','速锐[紧凑型车]'),(740,'048','G6[中型车]'),(741,'048','思锐[中型车]'),(742,'048','宋[紧凑型SUV]'),(743,'048','S6[中型SUV]'),(744,'048','S7[中型SUV]'),(745,'048','唐[中型SUV]'),(746,'048','e6[MPV]'),(747,'048','M6[MPV]'),(748,'049','奔奔[微型车]'),(749,'049','奔奔MINI[微型车]'),(750,'049','长安CX20[小型车]'),(751,'049','锐翔V5[小型车]'),(752,'049','锐翔VS[小型车]'),(753,'049','逸动[紧凑型车]'),(754,'049','锐翔V7[紧凑型车]'),(755,'049','睿骋[中型车]'),(756,'049','长安CS75[小型SUV]'),(757,'050','长安V5[微型面包]'),(758,'050','欧力威[小型车]'),(759,'050','欧尚[MPV]'),(760,'050','长安之星[微面]'),(761,'050','长安之星2[微面]'),(762,'050','长安之星3[微面]'),(763,'050','长安之星7[微面]'),(764,'050','长安之星9[微面]'),(765,'050','欧诺[微面]'),(766,'050','长安星卡[微卡]'),(767,'050','金牛星[微面]'),(768,'050','长安星光[微面]'),(769,'050','长安之星S460[微面]'),(770,'050','神骐T20[微卡]'),(771,'050','睿行M90[轻客]'),(772,'050','尊行[轻客]'),(773,'050','神骐F30[皮卡]'),(774,'050','神骐F50[皮卡]'),(775,'050','长安星光4500[微面]'),(776,'051','C20R[小型面]'),(777,'051','M2[小型车]'),(778,'051','C30[紧凑型车]'),(779,'051','C50[紧凑型车]'),(780,'051','风骏5[皮卡]'),(781,'051','风骏6[皮卡]'),(782,'051','M4[小型SUV]'),(783,'051','金迪尔[皮卡]'),(784,'052','猎豹CS10[SUV]'),(785,'052','黑金刚[SUV]'),(786,'052','飞腾[SUV]'),(787,'052','猎豹CS6[SUV]'),(788,'052','猎豹Q6[SUV]'),(789,'052','猎豹CT5[低端皮卡]'),(790,'052','飞腾C5[SUV]'),(791,'052','飞扬[低端皮卡]'),(792,'053','吉利帝豪[紧凑型车]'),(793,'053','经典帝豪[紧凑型车]'),(794,'054','景逸[紧凑型车]'),(795,'054','景逸S50[紧凑型车]'),(796,'054','景逸X3[紧凑型SUV]'),(797,'054','景逸X5[紧凑型SUV]'),(798,'054','景逸XV[紧凑型SUV]'),(799,'054','风行CM7[MPV]'),(800,'054','风行S500[MPV]'),(801,'054','菱智[MPV]'),(802,'055','V3菱悦[紧凑型车]'),(803,'055','V5菱致[紧凑型车]'),(804,'055','V6菱仕[紧凑型车]'),(805,'055','东南DX7[紧凑型SUV]'),(806,'055','希旺[微面]'),(807,'055','得利卡[轻客]'),(808,'056','东风风神A30[紧凑型车]'),(809,'056','A60[紧凑型车]'),(810,'056','AX3[小型SUV]'),(811,'056','AX7[紧凑型SUV]'),(812,'056','S30[紧凑型SUV]'),(813,'056','L60[紧凑型SUV]'),(814,'056','CROSS[紧凑型SUV]'),(815,'057','传祺GA3[紧凑型车]'),(816,'057','传祺GA3S视界[紧凑型车]'),(817,'057','传祺GA5[中型车]'),(818,'057','传祺GA6[中型车]'),(819,'057','传祺GS4[紧凑型SUV]'),(820,'057','传祺GS5[紧凑型SUV]'),(821,'057','传祺GS5Super[紧凑型SUV]'),(822,'057','E美[紧凑型车]'),(823,'057','奥轩GX5[中型SUV]'),(824,'057','广汽吉奥GX6[中型SUV]'),(825,'057','星朗[MPV]'),(826,'057','星旺[微面]'),(827,'057','星旺CL[微面]'),(828,'057','星旺L[微面]'),(829,'057','星旺M1[微卡]'),(830,'057','星旺M2[微卡]'),(831,'057','财运100[皮卡]'),(832,'057','财运300[皮卡]'),(833,'057','财运500[皮卡]'),(834,'057','广汽吉奥GP150[皮卡]'),(835,'058','哈飞小霸王[微面]'),(836,'058','骏意[微面]'),(837,'058','民意[微面]'),(838,'058','中意V5[微面]'),(839,'058','民意微卡[微卡]'),(840,'059','丘比特[小型车]'),(841,'059','福美来[紧凑型车]'),(842,'059','海马M8[中型车]'),(843,'059','海马S7[紧凑型SUV]'),(844,'059','海马骑士[紧凑型SUV]'),(845,'059','普力马[MPV]'),(846,'059','海马爱尚[微型车]'),(847,'059','海马M3[紧凑型车]'),(848,'059','海马M6[中型车]'),(849,'059','海马S5[紧凑型SUV]'),(850,'059','福仕达鸿达[微面]'),(851,'059','福仕达腾达[微面]'),(852,'059','福仕达荣达[微面]'),(853,'059','福仕达福卡[微面]'),(854,'060','红旗H7[中大型车]'),(855,'060','红旗L5[大型车]'),(863,'061','海峰[紧凑型车]'),(864,'061','海尚[紧凑型车]'),(865,'061','海迅[紧凑型车]'),(866,'061','海域[紧凑型车]'),(867,'061','海悦[紧凑型车]'),(868,'061','海炫[紧凑型车]'),(869,'062','伊斯坦纳[其他]'),(870,'063','和悦[紧凑型车]'),(871,'063','和悦RS[MPV]'),(872,'063','悦悦[微型车]'),(873,'063','宾悦[中型车]'),(874,'063','瑞鹰[SUV]'),(875,'063','瑞风[MPV]'),(876,'063','瑞风2[MPV]'),(877,'063','同悦[小型车]'),(878,'063','同悦CROSS[小型车]'),(879,'063','同悦RS[小型车]'),(880,'064','驭胜S350[SUV]'),(881,'064','全顺[其他]'),(882,'065','奥轩G3[SUV]'),(883,'065','奥轩G5[SUV]'),(884,'065','奥轩GX5[中型车]'),(885,'065','帅豹[SUV]'),(886,'065','帅舰[SUV]'),(887,'065','星旺[其他]'),(888,'066','大海狮[其他]'),(889,'066','阁瑞斯[MPV]'),(890,'066','海狮[其他]'),(891,'066','S50[SUV]'),(892,'067','优劲[其他]'),(893,'067','优派[其他]'),(894,'067','优胜[其他]'),(895,'067','优胜二代[微型车]'),(896,'067','优雅[其他]'),(897,'067','优翼[其他]'),(898,'067','优优[其他]'),(899,'068','CS6[SUV]'),(900,'068','飞腾时尚[SUV]'),(901,'068','飞腾经典[SUV]'),(902,'068','黑金刚[SUV]'),(903,'068','奇兵[SUV]'),(904,'069','320[微型车]'),(905,'069','520[紧凑型车]'),(906,'069','520i[紧凑型车]'),(907,'069','620[紧凑型车]'),(908,'069','X60[SUV]'),(909,'070','S1[小型车]'),(910,'071','风尚[MPV]'),(911,'071','X6[SUV]'),(912,'071','X8[SUV]'),(913,'071','X9[SUV]'),(914,'072','大7SUV[SUV]'),(915,'073','D50[紧凑型车]'),(916,'074','A3两厢[紧凑型车]'),(917,'074','A3三厢[紧凑型车]'),(918,'074','东方之子[中型车]'),(919,'074','E5[紧凑型车]'),(920,'074','风云2两厢[小型车]'),(921,'074','风云2三厢[小型车]'),(922,'074','A1[小型车]'),(923,'074','旗云1[微型车]'),(924,'074','旗云2[小型车]'),(925,'074','旗云3[紧凑型车]'),(926,'074','旗云5[中型车]'),(927,'074','QQ3[微型车]'),(928,'074','QQme[微型车]'),(929,'074','瑞虎[SUV]'),(930,'074','瑞虎DR欧版[SUV]'),(931,'075','GC7[紧凑型车]'),(932,'075','GX2[微型车]'),(933,'075','GX7[SUV]'),(934,'075','新自由舰[小型车]'),(935,'075','熊猫[微型车]'),(936,'075','新远景[紧凑型车]'),(937,'076','350[紧凑型车]'),(938,'076','550[紧凑型车]'),(939,'076','750[中型车]'),(940,'076','750混合动力[其他]'),(941,'076','950[中型车]'),(942,'076','W5[SUV]'),(943,'077','G3[紧凑型车]'),(944,'077','G5[中型车]'),(945,'077','G6[中大型车]'),(946,'077','M1[微型车]'),(947,'077','M5[微型车]'),(948,'077','X1[微型车]'),(949,'078','SCEO[SUV]'),(950,'078','小贵族[微型车]'),(951,'079','思铭[紧凑型车]'),(952,'080','H3[MPV]'),(953,'080','H5[MPV]'),(954,'080','V5[MPV]'),(955,'080','X5[SUV]'),(956,'081','宏光[MPV]'),(957,'081','荣光[其他]'),(958,'081','之光[其他]'),(959,'081','兴旺[其他]'),(960,'082','F99[SUV]'),(961,'082','F12[SUV]'),(962,'083','金刚[小型车]'),(963,'083','金刚2代[小型车]'),(964,'083','金鹰Cross[小型车]'),(965,'083','SC5-RV[小型车]'),(966,'083','SC7[紧凑型车]'),(967,'083','TX4[中型车]'),(968,'084','威乐[小型车]'),(969,'084','威志三厢[小型车]'),(970,'084','威志V2[小型车]'),(971,'084','威志V2CROSS[小型车]'),(972,'084','威志V5[小型车]'),(973,'084','威姿[小型车]'),(974,'084','夏利A+两厢[小型车]'),(975,'084','夏利A+三厢[小型车]'),(976,'084','夏利N3+两厢[小型车]'),(977,'084','夏利N3+三厢[小型车]'),(978,'084','夏利N5[小型车]'),(979,'085','佳宝V系[其他]'),(980,'085','森雅M80[MPV]'),(981,'085','森雅S80[SUV]'),(982,'086','坤城[其他]'),(983,'087','H530[紧凑型车]'),(984,'087','骏捷[紧凑型车]'),(985,'087','骏捷Cross[紧凑型车]'),(986,'087','骏捷FRV[紧凑型车]'),(987,'087','骏捷FSV[紧凑型车]'),(988,'087','骏捷Wagon[紧凑型车]'),(989,'087','酷宝[跑车]'),(990,'087','V5[SUV]'),(991,'087','尊驰[中型车]'),(992,'088','2008[SUV]'),(993,'088','5008[SUV]'),(994,'088','江南TT[微型车]'),(995,'088','Z200[小型车]'),(996,'088','Z200HB[小型车]'),(997,'088','朗悦[紧凑型车]'),(998,'088','V10[微型车]'),(999,'088','Z300[紧凑型车]'),(1000,'089','昌铃皮卡[其他]'),(1001,'089','旗舰皮卡[其他]'),(1002,'089','威虎F1[其他]'),(1003,'089','无限[SUV]'),(1004,'090','迷你巴士[其他]'),(1005,'090','威霆Vito3[MPV]'),(1006,'090','威霆Vito5[MPV]'),(1007,'091','9-3[中型车]'),(1008,'092','S40[紧凑型车]'),(1009,'092','S80L[中大型车]'),(1010,'092','C30[紧凑型车]'),(1011,'092','C70[中型车]'),(1012,'092','S60[中型车]'),(1013,'092','V60[中型车]'),(1014,'092','XC60[SUV]'),(1015,'092','XC90[SUV]');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;