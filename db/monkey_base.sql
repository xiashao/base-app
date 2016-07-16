
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;


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

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(99) NOT NULL,
  `role_description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`,`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`username`,`nickname`,`password`) values (1,'admin','admin','21232F297A57A5A743894A0E4A801FC3'),(6,'213','123','C4CA4238A0B923820DCC509A6F75849B');

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
