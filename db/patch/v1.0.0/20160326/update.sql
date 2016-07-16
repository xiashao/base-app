/*
SQLyog Ultimate v10.42 
MySQL - 5.7.11 : Database - monkey
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `brand` */

/*Table structure for table `car_break_rule_record` */

DROP TABLE IF EXISTS `car_break_rule_record`;

CREATE TABLE `car_break_rule_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) DEFAULT NULL COMMENT '车的id',
  `local` varchar(100) DEFAULT NULL COMMENT '违章地点',
  `point` varchar(20) DEFAULT NULL COMMENT '计分',
  `amount` varchar(45) DEFAULT NULL COMMENT '罚款',
  `mark` varchar(45) DEFAULT NULL COMMENT '备注',
  `break_rule_time` varchar(45) DEFAULT NULL COMMENT '违章时间',
  `status` char(1) DEFAULT NULL COMMENT '状态1处理0未处理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_break_rule_record` */

/*Table structure for table `car_expend` */

DROP TABLE IF EXISTS `car_expend`;

CREATE TABLE `car_expend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) DEFAULT NULL COMMENT '车辆的id',
  `monut` varchar(45) DEFAULT NULL COMMENT '里程数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_expend` */

/*Table structure for table `car_info` */

DROP TABLE IF EXISTS `car_info`;

CREATE TABLE `car_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '车辆信息的id',
  `car_name` varchar(45) DEFAULT NULL COMMENT '车的名字',
  `car_number` varchar(45) DEFAULT NULL COMMENT '车牌照号',
  `car_nature` int(11) DEFAULT NULL COMMENT '车的性能',
  `car_brand` int(11) DEFAULT NULL COMMENT '车的品牌',
  `car_type` int(11) DEFAULT NULL COMMENT '车的类型',
  `car_machine_no` varchar(45) DEFAULT NULL COMMENT '发动机编号',
  `expend_number` varchar(45) DEFAULT NULL COMMENT '里程数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_info` */

/*Table structure for table `car_record` */

DROP TABLE IF EXISTS `car_record`;

CREATE TABLE `car_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_light` int(11) DEFAULT NULL COMMENT '车灯状况',
  `car_machine` int(11) DEFAULT NULL COMMENT '发动机状况',
  `car_shift` int(11) DEFAULT NULL COMMENT '变数箱状况',
  `car_gas` varchar(45) DEFAULT NULL COMMENT '汽油量',
  `record_time` varchar(45) DEFAULT NULL COMMENT '记录时间',
  `car_id` int(11) DEFAULT NULL COMMENT '车id',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `mileage` varchar(45) DEFAULT NULL COMMENT '里程数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_record` */

/*Table structure for table `car_type` */

DROP TABLE IF EXISTS `car_type`;

CREATE TABLE `car_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_type` */

/*Table structure for table `light_type` */

DROP TABLE IF EXISTS `light_type`;

CREATE TABLE `light_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `light_type` */

/*Table structure for table `machine_type` */

DROP TABLE IF EXISTS `machine_type`;

CREATE TABLE `machine_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `machine_type` */

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_created_time` varchar(45) DEFAULT NULL COMMENT '订单的创建时间',
  `order_time` varchar(45) DEFAULT NULL COMMENT '订单预约时间',
  `gas_type` varchar(45) DEFAULT NULL COMMENT '加油类型',
  `amount` varchar(45) DEFAULT NULL COMMENT '金额',
  `gas_quatity` varchar(45) DEFAULT NULL COMMENT '加油数量',
  `latx` varchar(45) DEFAULT NULL COMMENT '加油站坐标',
  `laty` varchar(45) DEFAULT NULL COMMENT '加油站坐标',
  `car_id` varchar(45) DEFAULT NULL COMMENT '车辆id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

/*Table structure for table `shift_type` */

DROP TABLE IF EXISTS `shift_type`;

CREATE TABLE `shift_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `shift_type` */

/*Table structure for table `sys_log` */

DROP TABLE IF EXISTS `sys_log`;

CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(300) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `params` varchar(10000) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `user_agent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

/*Data for the table `sys_log` */

insert  into `sys_log`(`id`,`url`,`ip`,`username`,`method`,`params`,`date`,`user_agent`) values (108,'/monkey/login;jsessionid=27DCCD09A3D9404DC7C3F1EE94AFB060','127.0.0.1','游客','GET','','2016-03-09 21:43:59','IntelliJ IDEA'),(109,'/monkey/login;jsessionid=9E97E21E5A46A798AF7ED44582D62D6C','0:0:0:0:0:0:0:1','游客','GET','','2016-03-09 21:44:01','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0'),(110,'/monkey/login','0:0:0:0:0:0:0:1','游客','GET','','2016-03-09 21:44:02','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0'),(111,'/monkey/login','0:0:0:0:0:0:0:1','游客','GET','','2016-03-09 21:44:02','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0'),(112,'/monkey/login','0:0:0:0:0:0:0:1','admin','POST','username=admin&password=21232F297A57A5A743894A0E4A801FC3','2016-03-09 21:44:06','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0'),(113,'/monkey/','0:0:0:0:0:0:0:1','admin','GET','','2016-03-09 21:44:06','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0'),(114,'/monkey/b/role','0:0:0:0:0:0:0:1','admin','GET','menuId=010102','2016-03-09 21:44:10','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0'),(115,'/monkey/b/role/getRoleListPage','0:0:0:0:0:0:0:1','admin','POST','draw=1&columns[0][data]=roleName&columns[0][name]=&columns[0][searchable]=false&columns[0][orderable]=true&columns[0][search][value]=&columns[0][search][regex]=false&columns[1][data]=roleDescription&columns[1][name]=&columns[1][searchable]=true&columns[1][orderable]=true&columns[1][search][value]=&columns[1][search][regex]=false&columns[2][data]=operate&columns[2][name]=&columns[2][searchable]=true&columns[2][orderable]=false&columns[2][search][value]=&columns[2][search][regex]=false&order[0][column]=0&order[0][dir]=asc&start=0&length=10&search[value]=&search[regex]=false&sortField=role_name&sortOrder=asc&pageNo=1&pageSize=10','2016-03-09 21:44:11','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0'),(116,'/monkey/b/role/getPermissionTree','0:0:0:0:0:0:0:1','admin','GET','_=1457531050853','2016-03-09 21:44:13','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0'),(117,'/monkey/b/role','0:0:0:0:0:0:0:1','admin','GET','menuId=010102','2016-03-09 21:44:39','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0'),(118,'/monkey/b/role/getRoleListPage','0:0:0:0:0:0:0:1','admin','POST','draw=1&columns[0][data]=roleName&columns[0][name]=&columns[0][searchable]=false&columns[0][orderable]=true&columns[0][search][value]=&columns[0][search][regex]=false&columns[1][data]=roleDescription&columns[1][name]=&columns[1][searchable]=true&columns[1][orderable]=true&columns[1][search][value]=&columns[1][search][regex]=false&columns[2][data]=operate&columns[2][name]=&columns[2][searchable]=true&columns[2][orderable]=false&columns[2][search][value]=&columns[2][search][regex]=false&order[0][column]=0&order[0][dir]=asc&start=0&length=10&search[value]=&search[regex]=false&sortField=role_name&sortOrder=asc&pageNo=1&pageSize=10','2016-03-09 21:44:41','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` varchar(6) NOT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `menu_name` varchar(30) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `level` varchar(2) DEFAULT NULL,
  `is_leaf` tinyint(1) DEFAULT NULL,
  `parent_id` varchar(20) DEFAULT NULL,
  `memo` varchar(30) DEFAULT NULL,
  `perm_id` int(11) DEFAULT NULL,
  `order` varchar(6) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  PRIMARY KEY (`id`),
  KEY `perm_id` (`perm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`icon`,`menu_name`,`url`,`level`,`is_leaf`,`parent_id`,`memo`,`perm_id`,`order`,`enable`) values ('01','icon-settings','系统设置','','0',0,'-1','',1,'1',1),('0101','icon-lock','安全管理','','1',1,'01','',2,'101',1),('010101','icon-users','用户管理','b/user','2',1,'0101','用户管理',3,'1011',1),('010102','icon-user','角色管理','b/role','2',1,'0101','角色管理',4,'1012',1),('0102','icon-layers','系统参数','','1',1,'01','',5,'102',1),('010201','icon-list','菜单设置','b/menu','2',1,'0102','菜单设置',6,'1021',1),('010202','icon-info','操作日志','b/log','2',1,'0102','操作日志',7,'1022',1),('010203','icon-paper-clip','全局参数','b/param','2',1,'0102','全局参数',8,'1023',1);

/*Table structure for table `sys_permission` */

DROP TABLE IF EXISTS `sys_permission`;

CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perm_token` varchar(100) NOT NULL,
  `perm_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`,`perm_token`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `sys_permission` */

insert  into `sys_permission`(`id`,`perm_token`,`perm_description`) values (1,'system:manage:open',NULL),(2,'system:safe:manage',NULL),(3,'system:user:manage',NULL),(4,'system:role:manage',NULL),(5,'system:param:open',NULL),(6,'system:menu:manage',NULL),(7,'system:log:manage',NULL),(8,'system:param:manage',NULL);

/*Table structure for table `sys_region` */

DROP TABLE IF EXISTS `sys_region`;

CREATE TABLE `sys_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'organization id',
  `region_name` varchar(200) DEFAULT NULL COMMENT 'organization name',
  `parent_id` varchar(20) NOT NULL COMMENT 'parent id',
  `level` varchar(10) NOT NULL COMMENT 'level',
  `leaf` tinyint(1) NOT NULL COMMENT 'is leaf',
  `sequence` double DEFAULT NULL COMMENT 'sequence',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is enable,0 no,1 yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_region` */

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(99) NOT NULL,
  `role_description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`,`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`role_name`,`role_description`) values (1,'admin','管理员');

/*Table structure for table `sys_role_permission` */

DROP TABLE IF EXISTS `sys_role_permission`;

CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `perm_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_permission` */

insert  into `sys_role_permission`(`id`,`role_id`,`perm_id`) values (33,1,1),(34,1,2),(35,1,3),(36,1,4),(37,1,5),(38,1,6),(39,1,7),(40,1,8);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(22) DEFAULT NULL,
  `nickname` varchar(15) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`username`,`nickname`,`password`,`address`) values (1,'admin','admin','21232F297A57A5A743894A0E4A801FC3',NULL),(6,'213','123','C4CA4238A0B923820DCC509A6F75849B',NULL);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`id`,`user_id`,`role_id`) values (6,1,1),(7,6,1);

/*Table structure for table `track_history` */

DROP TABLE IF EXISTS `track_history`;

CREATE TABLE `track_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `from` varchar(45) DEFAULT NULL COMMENT '导航开始地点',
  `to` varchar(45) DEFAULT NULL COMMENT '导航结束地点',
  `crated_time` varchar(45) DEFAULT NULL COMMENT '开始时间',
  `fromx` varchar(45) DEFAULT NULL COMMENT '开始坐标',
  `fromy` varchar(45) DEFAULT NULL COMMENT '开始坐标',
  `tox` varchar(45) DEFAULT NULL COMMENT '结束地点坐标',
  `toy` varchar(45) DEFAULT NULL COMMENT '结束地点坐标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `track_history` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
