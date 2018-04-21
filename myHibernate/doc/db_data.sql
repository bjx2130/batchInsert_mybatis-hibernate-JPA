/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.5.32 : Database - kpi
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `t_checkgroup` */

DROP TABLE IF EXISTS `t_checkgroup`;

CREATE TABLE `t_checkgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organize_id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `is_delete` char(1) DEFAULT '0',
  `operater` varchar(30) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_checkgroup` */

LOCK TABLES `t_checkgroup` WRITE;

insert  into `t_checkgroup`(`id`,`organize_id`,`name`,`is_delete`,`operater`,`remark`,`create_time`,`update_time`,`attach`) values (1,2,'101考核组1','0','10101',NULL,'2016-11-15 09:48:09',NULL,NULL),(2,2,'101考核组2','0','10101',NULL,'2016-11-15 09:48:26',NULL,NULL),(4,2,'test考核组','0','admin',NULL,'2016-12-27 17:32:04','2016-12-28 09:47:24',NULL);

UNLOCK TABLES;

/*Table structure for table `t_checkgroup_user` */

DROP TABLE IF EXISTS `t_checkgroup_user`;

CREATE TABLE `t_checkgroup_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkGroup_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `t_checkgroup_user` */

LOCK TABLES `t_checkgroup_user` WRITE;

insert  into `t_checkgroup_user`(`id`,`checkGroup_id`,`user_id`,`weight`) values (1,1,3,50),(2,1,4,50),(3,2,2,100),(9,4,6,30),(8,4,2,20),(10,4,7,50);

UNLOCK TABLES;

/*Table structure for table `t_checkrange` */

DROP TABLE IF EXISTS `t_checkrange`;

CREATE TABLE `t_checkrange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organize_id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `is_delete` char(1) DEFAULT '0',
  `operater` varchar(30) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_checkrange` */

LOCK TABLES `t_checkrange` WRITE;

insert  into `t_checkrange`(`id`,`organize_id`,`name`,`is_delete`,`operater`,`remark`,`create_time`,`update_time`,`attach`) values (1,2,'101考核范围1','0','10101',NULL,'2016-11-15 09:48:47',NULL,NULL),(2,2,'101考核范围2','0','10101',NULL,'2016-11-15 09:48:59',NULL,NULL),(3,2,'101考核范围3','0','10101',NULL,'2016-11-15 09:49:12',NULL,NULL),(5,2,'test考核范围','0','admin',NULL,'2016-12-27 17:31:43','2016-12-27 17:37:11',NULL);

UNLOCK TABLES;

/*Table structure for table `t_checkrange_user` */

DROP TABLE IF EXISTS `t_checkrange_user`;

CREATE TABLE `t_checkrange_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkRange_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `t_checkrange_user` */

LOCK TABLES `t_checkrange_user` WRITE;

insert  into `t_checkrange_user`(`id`,`checkRange_id`,`user_id`) values (1,1,5),(2,1,6),(3,2,7),(4,2,8),(5,3,3),(6,3,4),(11,5,13),(10,5,10);

UNLOCK TABLES;

/*Table structure for table `t_checkrecord` */

DROP TABLE IF EXISTS `t_checkrecord`;

CREATE TABLE `t_checkrecord` (
  `id` int(11) NOT NULL,
  `workRecord_id` int(11) DEFAULT NULL,
  `check_user_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `part_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `check_score` double DEFAULT NULL,
  `is_float` char(1) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach1` varchar(50) DEFAULT NULL,
  `attach2` varchar(50) DEFAULT NULL,
  `attach3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_checkrecord` */

LOCK TABLES `t_checkrecord` WRITE;

UNLOCK TABLES;

/*Table structure for table `t_checksetting` */

DROP TABLE IF EXISTS `t_checksetting`;

CREATE TABLE `t_checksetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkRange_id` int(11) DEFAULT NULL,
  `float_param` varchar(5) DEFAULT NULL,
  `checkGroup_id` int(11) DEFAULT NULL,
  `node` varchar(2) DEFAULT NULL COMMENT '节点位置，处于第几级节点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_checksetting` */

LOCK TABLES `t_checksetting` WRITE;

insert  into `t_checksetting`(`id`,`checkRange_id`,`float_param`,`checkGroup_id`,`node`) values (1,1,'20',1,'1'),(2,1,'20',2,'2'),(3,2,'20',1,'1'),(4,2,'20',2,'2'),(5,3,'20',2,'1');

UNLOCK TABLES;

/*Table structure for table `t_model` */

DROP TABLE IF EXISTS `t_model`;

CREATE TABLE `t_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `is_delete` char(1) DEFAULT NULL,
  `operater` varchar(30) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach` varchar(50) DEFAULT NULL,
  `orgId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='型号表';

/*Data for the table `t_model` */

LOCK TABLES `t_model` WRITE;

insert  into `t_model`(`id`,`name`,`is_delete`,`operater`,`remark`,`create_time`,`update_time`,`attach`,`orgId`) values (1,'方案论证','0','管理员',NULL,'2016-09-20 17:00:01','2016-09-20 17:00:01',NULL,2),(2,'工程设计','0','101室组长1',NULL,'2016-09-20 17:00:12','2016-11-14 17:32:05',NULL,2),(3,'工程转段','0','管理员',NULL,'2016-09-20 17:00:28','2016-09-20 17:00:28',NULL,2),(4,'aa','0','101室组长1',NULL,'2016-12-09 09:43:24','2016-12-09 09:43:24',NULL,2),(5,'ass','0','101室组长1',NULL,'2016-12-09 09:43:31','2016-12-09 09:43:31',NULL,2),(6,'fd','0','101室组长1',NULL,'2016-12-09 09:43:35','2016-12-09 09:43:35',NULL,2),(7,'fg','0','101室组长1',NULL,'2016-12-09 09:43:39','2016-12-09 09:43:39',NULL,2),(8,'gh','0','101室组长1',NULL,'2016-12-09 09:43:43','2016-12-09 09:43:43',NULL,2),(9,'1111','0','101室组长1',NULL,'2017-02-27 10:19:00','2017-02-27 10:38:37',NULL,2),(10,'222','0','101室组长1',NULL,'2017-02-27 10:31:31','2017-02-27 10:31:31',NULL,2),(11,'332','0','101室组长1',NULL,'2017-02-27 10:49:17','2017-02-27 10:49:21',NULL,2);

UNLOCK TABLES;

/*Table structure for table `t_module` */

DROP TABLE IF EXISTS `t_module`;

CREATE TABLE `t_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL COMMENT '跳转时的链接地址',
  `parent_id` int(11) DEFAULT NULL,
  `is_delete` char(1) DEFAULT NULL,
  `operater` varchar(30) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `t_module` */

LOCK TABLES `t_module` WRITE;

insert  into `t_module`(`id`,`name`,`url`,`parent_id`,`is_delete`,`operater`,`remark`,`create_time`,`update_time`,`attach`) values (1,'系统管理','',0,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(2,'角色管理','',1,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(3,'组织管理','',1,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(4,'考核人员管理','',1,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(5,'配置管理','',0,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(6,'考核配置管理','',5,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(7,'项目类别管理','',5,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(8,'工作类别管理','',5,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(9,'积分项目管理','',5,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(10,'密码有效期管理','',1,'0','管理员',NULL,'2016-08-23 12:00:00','2016-08-23 12:00:00',NULL),(11,'绩效管理','',0,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(12,'考核管理','',0,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(13,'报表管理','',0,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(14,'所有人报表','',12,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(15,'科室报表','',12,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(16,'排名管理','',0,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(17,'科室排名','',15,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(18,'组排名','',15,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(19,'型号管理','',5,'0','管理员','','2016-08-23 12:00:00','2016-08-25 12:00:00',''),(20,'任务管理','',5,'0','管理员',NULL,'2016-08-23 12:00:00','2016-08-25 12:00:00',NULL);

UNLOCK TABLES;

/*Table structure for table `t_organize` */

DROP TABLE IF EXISTS `t_organize`;

CREATE TABLE `t_organize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_delete` char(1) DEFAULT '0',
  `operater` varchar(30) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach` varchar(50) DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `passwordEfectDays` int(11) DEFAULT '30',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `t_organize` */

LOCK TABLES `t_organize` WRITE;

insert  into `t_organize`(`id`,`name`,`parent_id`,`is_delete`,`operater`,`remark`,`create_time`,`update_time`,`attach`,`level`,`passwordEfectDays`) values (1,'航天四院',0,'0','管理员','','2015-12-12 18:18:41','2016-08-11 12:00:00','',1,59),(2,'101室',1,'0','管理员','','2016-08-11 12:00:00','2016-08-11 12:00:00','',2,59),(3,'10101组',2,'0','管理员','','2016-08-11 12:00:00','2016-08-11 12:00:00','',3,59),(4,'10102组',2,'0','管理员','','2016-08-11 12:00:00','2016-08-11 12:00:00','',3,59),(5,'102室',1,'1','10101',NULL,'2016-11-18 15:24:37','2016-11-18 15:24:37',NULL,2,59),(6,'102室',1,'0','admin',NULL,'2016-11-23 11:42:26','2016-11-23 11:42:26',NULL,2,59),(7,'重复组2',2,'1','admin',NULL,'2016-11-23 11:42:53','2016-11-23 11:44:07',NULL,3,59),(8,'重复组',6,'0','admin',NULL,'2016-11-23 11:44:20','2016-11-23 11:44:20',NULL,3,59);

UNLOCK TABLES;

/*Table structure for table `t_part` */

DROP TABLE IF EXISTS `t_part`;

CREATE TABLE `t_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `is_delete` char(1) DEFAULT NULL,
  `operater` varchar(30) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach` varchar(50) DEFAULT NULL,
  `orgId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_part` */

LOCK TABLES `t_part` WRITE;

insert  into `t_part`(`id`,`name`,`is_delete`,`operater`,`remark`,`create_time`,`update_time`,`attach`,`orgId`) values (1,'编写','0','管理员',NULL,'2016-09-20 17:02:01','2016-09-20 17:02:01',NULL,2),(2,'校/会/审','0','管理员',NULL,'2016-09-20 17:02:15','2016-09-20 17:02:15',NULL,2),(3,'批准','0','管理员',NULL,'2016-09-20 17:02:26','2016-09-20 17:02:26',NULL,2);

UNLOCK TABLES;

/*Table structure for table `t_project` */

DROP TABLE IF EXISTS `t_project`;

CREATE TABLE `t_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `is_delete` char(1) DEFAULT NULL,
  `operater` varchar(30) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach` varchar(50) DEFAULT NULL,
  `max_score` double DEFAULT NULL,
  `min_score` double DEFAULT NULL,
  `part_id` int(11) DEFAULT NULL,
  `orgId` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `t_project` */

LOCK TABLES `t_project` WRITE;

insert  into `t_project`(`id`,`name`,`is_delete`,`operater`,`remark`,`create_time`,`update_time`,`attach`,`max_score`,`min_score`,`part_id`,`orgId`,`model_id`) values (1,'固体发动机初步设计任务书协调及会签','0','管理员',NULL,'2016-11-12 19:10:22','2016-11-12 19:10:22',NULL,5,2,3,2,2),(2,'固体发动机初步设计任务书协调及会签','0','管理员',NULL,'2016-11-12 19:10:47','2016-11-12 19:10:47',NULL,6,2,2,2,2),(3,'固体发动机初步设计任务书协调及会签','0','管理员',NULL,'2016-11-12 19:11:07','2016-11-12 19:11:07',NULL,4,1,1,2,2),(4,'固体发动机方案论证报告','0','管理员',NULL,'2016-11-12 19:11:47','2016-11-12 19:11:47',NULL,3,1,3,2,2),(5,'固体发动机方案论证报告','0','管理员',NULL,'2016-11-12 19:12:05','2016-11-12 19:12:05',NULL,3,1,2,2,2),(6,'固体发动机方案论证报告','0','管理员',NULL,'2016-11-12 19:12:21','2016-11-12 19:12:21',NULL,3,1,1,2,2),(7,'固体发动机方案估算','0','管理员',NULL,'2016-11-12 19:13:41','2016-11-12 19:13:41',NULL,3,2,3,2,1),(8,'固体发动机方案估算','0','管理员',NULL,'2016-11-12 19:13:59','2016-11-12 19:13:59',NULL,2,1,2,2,1),(9,'固体发动机方案估算','0','管理员',NULL,'2016-11-12 19:14:18','2016-11-12 19:14:18',NULL,3,2,1,2,1),(10,'发动机部组件设计任务书协调及编写','0','管理员',NULL,'2016-11-12 19:15:10','2016-11-12 19:15:10',NULL,5,3,3,2,1),(11,'发动机部组件设计任务书协调及编写','0','管理员',NULL,'2016-11-12 19:15:28','2016-11-12 19:15:28',NULL,3,1,2,2,1),(12,'发动机部组件设计任务书协调及编写','0','管理员',NULL,'2016-11-12 19:15:45','2016-11-12 19:15:45',NULL,6,3,1,2,1),(13,'发动机及部组件转段设计报告','0','管理员',NULL,'2016-11-14 11:25:06','2016-11-14 11:25:06',NULL,4,2,3,2,3),(14,'发动机及部组件转段设计报告','0','管理员',NULL,'2016-11-14 11:25:18','2016-11-14 11:25:18',NULL,6,4,2,2,3),(15,'发动机及部组件转段设计报告','0','管理员',NULL,'2016-11-14 11:25:28','2016-11-14 11:25:28',NULL,2,1,1,2,3),(16,'发动机可靠性大纲','0','管理员',NULL,'2016-11-14 11:25:55','2016-11-14 11:26:35',NULL,3,1,3,2,3),(17,'发动机可靠性大纲','0','管理员',NULL,'2016-11-14 11:26:07','2016-11-14 11:26:07',NULL,5,2,2,2,3),(18,'发动机可靠性大纲','0','101室组长1',NULL,'2016-11-14 11:26:17','2016-11-15 11:48:01',NULL,2,1,1,2,3),(19,'3434','0','101室组长1',NULL,'2016-11-16 09:37:03','2016-11-16 09:37:03',NULL,6,0,3,2,3),(20,'eerr$$$$56gghgh','0','101室组长1',NULL,'2016-12-09 09:57:14','2016-12-28 08:57:23',NULL,5,0,3,2,8),(21,'667676%%%%sdsds','0','101室组长1',NULL,'2016-12-28 08:55:10','2016-12-28 08:55:10',NULL,4,0,3,2,8),(22,'1111111111111','0','101室组长1',NULL,'2017-02-27 18:07:35','2017-02-27 18:07:35',NULL,2,0,3,2,11),(23,'111','0','101室组长1',NULL,'2017-03-22 16:02:02','2017-03-22 16:02:02',NULL,4,0,3,2,3),(24,'sddsd','0','101室组长1',NULL,'2017-03-22 16:02:10','2017-03-22 16:02:10',NULL,34,0,3,2,3),(25,'dfd','0','101室组长1',NULL,'2017-03-22 16:02:21','2017-03-22 16:02:21',NULL,6,0,3,2,3),(26,'vcv','0','101室组长1',NULL,'2017-03-22 16:02:27','2017-03-22 16:02:27',NULL,4,0,3,2,3);

UNLOCK TABLES;

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `is_delete` char(1) DEFAULT NULL,
  `operater` varchar(30) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

LOCK TABLES `t_role` WRITE;

insert  into `t_role`(`id`,`name`,`is_delete`,`operater`,`remark`,`create_time`,`update_time`,`attach`) values (1,'管理员','0','管理员',NULL,'2016-09-19 15:48:13','2016-09-19 15:48:13',NULL),(2,'主任','0','管理员',NULL,'2016-09-19 15:48:20','2016-09-19 15:48:20',NULL),(3,'组长','0','管理员',NULL,'2016-09-19 15:48:26','2016-09-20 16:34:50',NULL),(4,'员工','0','管理员',NULL,'2016-10-21 10:45:10','2016-11-02 15:17:48',NULL),(5,'配置员','0','管理员',NULL,'2016-11-10 16:38:02','2016-11-10 16:38:02',NULL);

UNLOCK TABLES;

/*Table structure for table `t_role_module` */

DROP TABLE IF EXISTS `t_role_module`;

CREATE TABLE `t_role_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

/*Data for the table `t_role_module` */

LOCK TABLES `t_role_module` WRITE;

insert  into `t_role_module`(`id`,`role_id`,`module_id`) values (174,1,17),(173,1,15),(172,1,14),(171,1,11),(170,1,12),(169,1,20),(168,1,19),(167,1,9),(166,1,8),(165,1,7),(164,1,6),(163,1,10),(99,2,18),(98,2,14),(180,3,11),(179,3,12),(178,3,10),(176,4,10),(95,5,19),(94,5,9),(93,5,8),(92,5,7),(91,5,6),(90,5,4),(97,2,11),(96,2,12),(162,1,4),(161,1,3),(160,1,2),(175,1,18),(177,4,11),(181,3,17);

UNLOCK TABLES;

/*Table structure for table `t_role_user` */

DROP TABLE IF EXISTS `t_role_user`;

CREATE TABLE `t_role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `t_role_user` */

LOCK TABLES `t_role_user` WRITE;

insert  into `t_role_user`(`id`,`user_id`,`role_id`) values (1,1,1),(2,2,2),(9,3,3),(4,4,3),(15,5,4),(6,6,4),(7,7,4),(8,8,4),(10,3,5),(11,20,1),(12,21,1),(13,22,1),(14,23,1);

UNLOCK TABLES;

/*Table structure for table `t_task` */

DROP TABLE IF EXISTS `t_task`;

CREATE TABLE `t_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `is_delete` char(1) DEFAULT NULL,
  `operater` varchar(30) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach` varchar(50) DEFAULT NULL,
  `orgId` int(11) DEFAULT NULL,
  `percentage` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='任务表，记录长日志使用';

/*Data for the table `t_task` */

LOCK TABLES `t_task` WRITE;

insert  into `t_task`(`id`,`name`,`is_delete`,`operater`,`remark`,`create_time`,`update_time`,`attach`,`orgId`,`percentage`) values (4,'11112','0','管理员',NULL,'2017-02-15 10:43:47','2017-02-15 12:35:13',NULL,2,55),(5,'2','0','管理员',NULL,'2017-02-15 10:51:15','2017-02-15 10:51:15',NULL,2,22),(6,'3','0','管理员',NULL,'2017-02-15 10:51:17','2017-02-15 10:51:17',NULL,2,14),(7,'4','0','管理员',NULL,'2017-02-15 10:51:30','2017-02-15 10:51:30',NULL,2,18),(8,'5','0','管理员',NULL,'2017-02-15 10:51:33','2017-02-15 10:51:33',NULL,2,44),(9,'6661','1','管理员',NULL,'2017-02-15 10:51:38','2017-02-15 12:31:20',NULL,2,98),(10,'撒的就是速度发货速度防守对方考虑好胜多负sdcsdcvsdf','0','管理员',NULL,'2017-03-14 17:40:03','2017-03-14 17:40:55',NULL,2,0),(11,'！@￥#%%……#￥','0','管理员',NULL,'2017-03-14 17:41:41','2017-03-14 17:41:41',NULL,2,0),(12,'sddddddddddddddddddd','0','管理员',NULL,'2017-03-22 15:30:56','2017-03-22 15:30:56',NULL,2,0);

UNLOCK TABLES;

/*Table structure for table `t_type` */

DROP TABLE IF EXISTS `t_type`;

CREATE TABLE `t_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `is_delete` char(1) DEFAULT NULL,
  `operater` varchar(30) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach` varchar(50) DEFAULT NULL,
  `orgId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='型号表，以前的型号表改为项目类别表';

/*Data for the table `t_type` */

LOCK TABLES `t_type` WRITE;

insert  into `t_type`(`id`,`name`,`is_delete`,`operater`,`remark`,`create_time`,`update_time`,`attach`,`orgId`) values (1,'型号1','0','101室组长1',NULL,'2016-12-01 10:57:17','2016-12-01 10:57:17',NULL,2),(2,'型号22','0','101室组长1',NULL,'2016-12-01 10:57:26','2016-12-01 10:57:34',NULL,2),(3,'型号3','0','101室组长1',NULL,'2016-12-01 10:57:41','2016-12-01 10:57:41',NULL,2);

UNLOCK TABLES;

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `realname` varchar(30) DEFAULT NULL,
  `organize_id` int(11) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `id_card` varchar(18) DEFAULT NULL,
  `age` varchar(2) DEFAULT NULL,
  `is_delete` char(1) DEFAULT NULL,
  `operater` varchar(30) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach` varchar(50) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `secret_level` char(1) DEFAULT NULL,
  `passwordUdpDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

LOCK TABLES `t_user` WRITE;

insert  into `t_user`(`id`,`username`,`password`,`realname`,`organize_id`,`sex`,`id_card`,`age`,`is_delete`,`operater`,`remark`,`create_time`,`update_time`,`attach`,`birthday`,`secret_level`,`passwordUdpDate`) values (1,'admin','e10adc3949ba59abbe56e057f20f883e','管理员',1,NULL,'','0','0','管理员',NULL,'2016-09-05 15:08:37','2016-09-05 15:08:37',NULL,NULL,'3','2016-11-23 15:37:42'),(2,'10100','e10adc3949ba59abbe56e057f20f883e','101室主任',2,NULL,'','0','0','管理员',NULL,'2016-09-20 17:11:55','2016-09-20 17:11:55',NULL,NULL,'2','2016-11-23 15:37:42'),(3,'10101','e10adc3949ba59abbe56e057f20f883e','101室组长1',3,NULL,'','0','0','管理员',NULL,'2016-09-20 17:12:52','2016-09-20 17:12:52',NULL,'','2','2016-11-23 15:37:42'),(4,'10102','e10adc3949ba59abbe56e057f20f883e','101室组长2',4,NULL,'','0','0','管理员',NULL,'2016-09-20 17:13:40','2016-09-20 17:13:40',NULL,NULL,'2','2016-11-23 15:37:42'),(5,'10103','e10adc3949ba59abbe56e057f20f883e','101员工1',3,NULL,'','0','0','管理员',NULL,'2016-09-20 17:15:08','2016-09-20 17:15:08',NULL,NULL,'1','2016-11-23 15:37:42'),(6,'10104','e10adc3949ba59abbe56e057f20f883e','101员工2',3,NULL,'','0','0','管理员',NULL,'2016-09-20 17:15:59','2016-09-20 17:15:59',NULL,NULL,'1','2016-11-23 15:37:42'),(7,'10105','e10adc3949ba59abbe56e057f20f883e','101员工3',4,NULL,'','0','0','管理员',NULL,'2016-09-20 17:16:59','2016-09-20 17:16:59',NULL,NULL,'1','2016-11-23 15:37:42'),(8,'10106','e10adc3949ba59abbe56e057f20f883e','101员工4',4,NULL,'','0','0','管理员',NULL,'2016-09-20 17:17:24','2016-09-20 17:17:24',NULL,NULL,'1','2016-11-23 15:37:42'),(9,'中文','e10adc3949ba59abbe56e057f20f883e','5656565',2,NULL,'','0','0','管理员',NULL,'2016-11-18 09:54:50','2016-11-18 09:54:50',NULL,'','1','2016-11-23 15:37:42'),(10,'我是','e10adc3949ba59abbe56e057f20f883e','676767',2,NULL,'','0','0','管理员',NULL,'2016-11-18 09:58:51','2016-11-18 09:58:51',NULL,'','1','2016-11-23 15:37:42'),(11,'我是5','e10adc3949ba59abbe56e057f20f883e','我是一个',2,NULL,'','0','0','管理员',NULL,'2016-11-18 10:00:13','2016-11-18 10:00:13',NULL,'','1','2016-11-23 15:37:42'),(12,'是是是一个人的e','e10adc3949ba59abbe56e057f20f883e','是是是一个人4',1,NULL,'','0','0','管理员',NULL,'2016-11-18 10:00:58','2016-11-18 10:00:58',NULL,'','1','2016-11-23 15:37:42'),(13,'是是2','e10adc3949ba59abbe56e057f20f883e','是是2',2,NULL,'','0','0','管理员',NULL,'2016-11-18 10:01:09','2016-11-18 10:01:09',NULL,'','1','2016-11-23 15:37:42'),(14,'我是一个','e10adc3949ba59abbe56e057f20f883e','我是',2,NULL,'','0','0','管理员',NULL,'2016-11-18 10:04:41','2016-11-18 10:04:41',NULL,'','1','2016-11-23 15:37:42'),(15,'我是d','e10adc3949ba59abbe56e057f20f883e','我是s',2,NULL,'','0','0','管理员',NULL,'2016-11-18 10:05:25','2016-11-18 10:05:25',NULL,'','1','2016-11-23 15:37:42'),(16,'我是6','e10adc3949ba59abbe56e057f20f883e','我是6',2,NULL,'','0','0','管理员',NULL,'2016-11-18 10:10:51','2016-11-18 10:10:51',NULL,'','1','2016-11-23 15:37:42'),(17,'我是s','e10adc3949ba59abbe56e057f20f883e','我是s',2,NULL,'','0','0','管理员',NULL,'2016-11-18 10:11:06','2016-11-18 10:11:06',NULL,'','1','2016-11-23 15:37:42'),(18,'我是三个人4','e10adc3949ba59abbe56e057f20f883e','我是三个人s',2,NULL,'','0','0','管理员',NULL,'2016-11-18 10:14:39','2016-11-18 10:14:39',NULL,'','1','2016-11-23 15:37:42'),(19,'我是一个人的的4','e10adc3949ba59abbe56e057f20f883e','我是一个人的的s',2,NULL,'','0','0','管理员',NULL,'2016-11-18 10:15:55','2016-11-18 10:15:55',NULL,'','1','2016-11-23 15:37:42'),(23,'baojaixin333','e10adc3949ba59abbe56e057f20f883e','鲍佳鑫',2,NULL,NULL,NULL,'0','系统导入',NULL,'2016-11-24 13:39:22','2016-11-24 13:39:22',NULL,NULL,'3','2016-11-24 13:39:22');

UNLOCK TABLES;

/*Table structure for table `t_workflow` */

DROP TABLE IF EXISTS `t_workflow`;

CREATE TABLE `t_workflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workRecord_id` int(11) DEFAULT NULL,
  `check_user_id` int(11) DEFAULT NULL,
  `is_reach` char(1) DEFAULT '0' COMMENT '0',
  `is_checked` char(1) DEFAULT '0' COMMENT '0',
  `checkGroup_id` int(11) DEFAULT NULL,
  `node` varchar(2) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `modify_model_id` int(11) DEFAULT NULL,
  `modify_part_id` int(11) DEFAULT NULL,
  `modify_project_id` int(11) DEFAULT NULL,
  `check_score` double DEFAULT '0',
  `is_float` char(1) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  `attach1` varchar(10) DEFAULT NULL,
  `attach2` double DEFAULT '0',
  `attach3` varchar(50) DEFAULT NULL,
  `modify_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

/*Data for the table `t_workflow` */

LOCK TABLES `t_workflow` WRITE;

insert  into `t_workflow`(`id`,`workRecord_id`,`check_user_id`,`is_reach`,`is_checked`,`checkGroup_id`,`node`,`weight`,`modify_model_id`,`modify_part_id`,`modify_project_id`,`check_score`,`is_float`,`remark`,`create_time`,`update_time`,`attach1`,`attach2`,`attach3`,`modify_type_id`) values (1,2,2,'1','1',2,'1',100,3,3,16,0,NULL,NULL,'2016-11-15 10:02:04',NULL,NULL,0,NULL,NULL),(2,3,3,'1','1',1,'1',50,3,3,16,0,NULL,NULL,'2016-11-15 10:12:19',NULL,NULL,0.02,NULL,NULL),(3,3,4,'1','1',1,'1',50,3,3,16,0,NULL,NULL,'2016-11-15 10:12:19',NULL,NULL,0.05,NULL,NULL),(4,3,2,'1','1',2,'2',100,3,3,16,0,NULL,NULL,'2016-11-15 10:12:19',NULL,NULL,0,NULL,NULL),(5,13,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2016-11-16 15:21:11',NULL,NULL,0,NULL,NULL),(6,14,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2016-11-16 17:07:30',NULL,NULL,0,NULL,NULL),(7,15,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2016-11-16 17:08:24',NULL,NULL,0,NULL,NULL),(8,16,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2016-11-16 18:01:34',NULL,NULL,0,NULL,NULL),(9,18,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2016-05-02 16:00:37',NULL,NULL,0,NULL,NULL),(10,20,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2016-05-05 09:59:51',NULL,NULL,0,NULL,NULL),(11,21,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2016-05-05 10:15:30',NULL,NULL,0.11,NULL,NULL),(12,8,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2016-11-25 09:29:56',NULL,NULL,0,NULL,NULL),(13,33,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2009-07-18 09:24:14',NULL,NULL,0,NULL,NULL),(14,35,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2009-07-18 10:28:09',NULL,NULL,0,NULL,NULL),(15,11,2,'1','1',2,'1',100,3,3,16,0,NULL,NULL,'2009-07-19 09:51:16',NULL,NULL,0,NULL,NULL),(16,23,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2009-07-19 09:51:16',NULL,NULL,0,NULL,3),(17,22,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2009-07-19 09:51:16',NULL,NULL,0,NULL,1),(18,38,2,'1','1',2,'1',100,3,2,17,0,NULL,NULL,'2009-07-19 10:59:23',NULL,NULL,0,NULL,2),(19,39,2,'1','1',2,'1',100,3,2,19,0,NULL,NULL,'2009-07-19 11:03:28',NULL,NULL,0.03,NULL,3),(20,19,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2009-07-19 13:55:24',NULL,NULL,0,NULL,0),(21,54,2,'1','1',2,'1',100,8,3,20,4.96,NULL,NULL,'2016-10-12 05:53:04',NULL,NULL,-0.04,NULL,0),(22,53,2,'1','1',2,'1',100,8,3,20,5,NULL,NULL,'2016-10-12 05:53:04',NULL,NULL,0,NULL,0),(23,46,2,'1','1',2,'1',100,3,3,19,6.2,NULL,NULL,'2016-10-12 05:53:04',NULL,NULL,0.2,NULL,3),(24,58,2,'1','1',2,'1',100,8,3,21,5.1,NULL,NULL,'2016-10-20 07:28:10',NULL,NULL,0.1,NULL,0),(25,59,2,'1','1',2,'1',100,8,3,21,5,NULL,NULL,'2016-10-20 07:28:10',NULL,NULL,0,NULL,0),(26,57,2,'1','1',2,'1',100,2,3,4,10,NULL,NULL,'2016-10-20 07:28:10',NULL,NULL,5,NULL,0),(27,55,2,'1','1',2,'1',100,8,3,20,5,NULL,NULL,'2016-10-20 07:28:10',NULL,NULL,0,NULL,0),(28,60,2,'1','1',2,'1',100,8,3,21,8.1,NULL,NULL,'2016-10-20 09:00:25',NULL,NULL,4.1,NULL,0),(29,62,2,'1','1',2,'1',100,8,3,21,4.13,NULL,NULL,'2016-10-20 09:06:03',NULL,NULL,0.13,NULL,0),(30,25,2,'1','1',2,'1',100,3,3,19,4,NULL,NULL,'2016-12-06 09:16:45',NULL,NULL,0,NULL,0),(31,26,2,'1','1',2,'1',100,3,3,19,5,NULL,NULL,'2016-12-06 09:16:45',NULL,NULL,0,NULL,0),(32,27,2,'1','1',2,'1',100,3,3,19,6.03,NULL,NULL,'2016-12-06 09:16:45',NULL,NULL,0.03,NULL,0),(33,28,2,'1','1',2,'1',100,3,3,19,6,NULL,NULL,'2016-12-06 09:16:45',NULL,NULL,0,NULL,0),(34,29,2,'1','1',2,'1',100,3,3,19,6,NULL,NULL,'2016-12-06 09:16:45',NULL,NULL,0,NULL,0),(35,24,2,'1','1',2,'1',100,3,3,19,6,NULL,NULL,'2016-12-06 09:16:45',NULL,NULL,0,NULL,0),(36,9,2,'1','1',2,'1',100,3,3,16,3,NULL,NULL,'2016-12-06 09:16:45',NULL,NULL,0,NULL,0),(37,31,2,'1','1',2,'1',100,3,3,19,6,NULL,NULL,'2016-12-06 09:16:45',NULL,NULL,0,NULL,0),(38,30,2,'1','1',2,'1',100,3,3,19,6,NULL,NULL,'2016-12-06 09:16:45',NULL,NULL,0,NULL,0),(39,61,2,'1','1',2,'1',100,8,3,21,4,NULL,NULL,'2016-12-06 13:14:01',NULL,NULL,0,NULL,0),(40,44,2,'1','1',2,'1',100,3,3,19,6.01,NULL,NULL,'2016-12-06 13:15:45',NULL,NULL,0.01,NULL,3),(41,93,2,'1','1',2,'1',100,8,3,20,5.06,NULL,NULL,'2016-12-06 13:31:58',NULL,NULL,0.06,NULL,3),(42,51,2,'1','1',2,'1',100,2,3,4,1.5,NULL,NULL,'2016-12-06 13:31:58',NULL,NULL,0,NULL,0),(43,48,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2016-12-06 13:31:58',NULL,NULL,0,NULL,3),(44,37,2,'1','1',2,'1',100,3,3,19,3,NULL,NULL,'2016-12-06 13:31:58',NULL,NULL,0,NULL,3),(45,36,2,'1','1',2,'1',100,3,3,19,0,NULL,NULL,'2016-12-06 13:31:58',NULL,NULL,0,NULL,0),(46,34,2,'1','1',2,'1',100,3,3,19,3,NULL,NULL,'2016-12-06 13:31:58',NULL,NULL,0,NULL,0),(47,47,2,'1','1',2,'1',100,3,3,19,3,NULL,NULL,'2016-12-06 13:31:58',NULL,NULL,0,NULL,3),(48,109,2,'1','1',2,'1',100,8,3,21,5,NULL,NULL,'2011-01-05 11:18:03',NULL,NULL,0,NULL,0),(49,108,2,'1','1',2,'1',100,8,3,21,4,NULL,NULL,'2011-01-05 11:18:03',NULL,NULL,0,NULL,0),(50,107,2,'1','1',2,'1',100,8,3,21,4,NULL,NULL,'2011-01-05 11:18:03',NULL,NULL,0,NULL,2),(51,106,2,'1','1',2,'1',100,8,3,21,4,NULL,NULL,'2011-01-05 11:18:03',NULL,NULL,0,NULL,0),(52,105,2,'1','1',2,'1',100,8,3,21,4,NULL,NULL,'2011-01-05 11:18:03',NULL,NULL,0,NULL,0),(53,104,2,'1','1',2,'1',100,8,3,21,4,NULL,NULL,'2011-01-05 11:18:03',NULL,NULL,0,NULL,0),(54,100,2,'1','1',2,'1',100,8,3,21,4,NULL,NULL,'2011-01-05 11:18:03',NULL,NULL,0,NULL,0),(55,99,2,'1','1',2,'1',100,8,3,21,4,NULL,NULL,'2011-01-05 11:18:03',NULL,NULL,0,NULL,0),(56,98,2,'1','1',2,'1',100,8,3,21,4,NULL,NULL,'2011-01-05 11:18:03',NULL,NULL,0,NULL,0),(57,97,2,'1','1',2,'1',100,8,3,21,6,NULL,NULL,'2011-01-05 11:18:03',NULL,NULL,0,NULL,0),(58,114,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 03:46:27',NULL,NULL,0,NULL,0),(59,115,2,'1','1',2,'1',100,11,3,22,5,NULL,NULL,'2011-01-06 03:46:27',NULL,NULL,0,NULL,0),(60,116,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 03:46:27',NULL,NULL,0,NULL,0),(61,117,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 03:46:27',NULL,NULL,0,NULL,0),(62,96,2,'1','1',2,'1',100,8,3,21,0,NULL,NULL,'2011-01-06 03:46:27',NULL,NULL,0,NULL,2),(63,118,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 03:56:31',NULL,NULL,0,NULL,0),(64,119,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 03:56:31',NULL,NULL,0,NULL,0),(65,120,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 03:56:31',NULL,NULL,0,NULL,0),(66,121,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 03:56:31',NULL,NULL,0,NULL,0),(67,122,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 03:56:31',NULL,NULL,0,NULL,0),(68,123,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 03:56:31',NULL,NULL,0,NULL,0),(69,124,2,'1','1',2,'1',100,11,3,22,0.09,NULL,NULL,'2011-01-06 03:56:31',NULL,NULL,0.09,NULL,0),(70,125,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 03:56:31',NULL,NULL,0,NULL,0),(71,126,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 03:56:31',NULL,NULL,0,NULL,0),(72,127,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 03:56:31',NULL,NULL,0,NULL,0),(73,128,2,'1','1',2,'1',100,11,3,22,4,NULL,NULL,'2011-01-06 07:51:01',NULL,NULL,0,NULL,0),(74,129,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 07:51:01',NULL,NULL,0,NULL,0),(75,131,2,'1','1',2,'1',100,8,3,21,4,NULL,NULL,'2011-01-06 07:58:38',NULL,NULL,0,NULL,0),(76,132,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 07:59:58',NULL,NULL,0,NULL,0),(77,133,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 07:59:58',NULL,NULL,0,NULL,0),(78,134,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 07:59:58',NULL,NULL,0,NULL,0),(79,135,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 07:59:58',NULL,NULL,0,NULL,0),(80,136,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 07:59:58',NULL,NULL,0,NULL,0),(81,137,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 07:59:58',NULL,NULL,0,NULL,0),(82,138,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 07:59:58',NULL,NULL,0,NULL,0),(83,139,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 07:59:58',NULL,NULL,0,NULL,0),(84,140,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 07:59:58',NULL,NULL,0,NULL,0),(85,141,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 07:59:58',NULL,NULL,0,NULL,0),(86,142,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 08:00:02',NULL,NULL,0,NULL,0),(87,143,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 09:21:47',NULL,NULL,0,NULL,0),(88,144,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 09:21:47',NULL,NULL,0,NULL,0),(89,145,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 09:21:47',NULL,NULL,0,NULL,0),(90,146,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 09:21:47',NULL,NULL,0,NULL,0),(91,147,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 09:21:47',NULL,NULL,0,NULL,2),(92,148,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 09:21:47',NULL,NULL,0,NULL,0),(93,149,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 09:21:47',NULL,NULL,0,NULL,0),(94,150,2,'1','1',2,'1',100,8,3,21,4.1,NULL,NULL,'2011-01-06 09:21:47',NULL,NULL,0.1,NULL,3),(95,151,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 09:21:47',NULL,NULL,0,NULL,0),(96,152,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 09:21:47',NULL,NULL,0,NULL,0),(97,153,2,'1','1',2,'1',100,11,3,22,0,NULL,NULL,'2011-01-06 09:21:55',NULL,NULL,0,NULL,0),(98,154,2,'1','1',2,'1',100,3,2,16,3,NULL,NULL,'2011-01-06 10:40:11',NULL,NULL,0,NULL,0),(99,155,3,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(100,155,4,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(101,155,2,'1','1',2,'2',100,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(102,156,3,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(103,156,4,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(104,156,2,'1','1',2,'2',100,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(105,157,3,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(106,157,4,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(107,157,2,'1','1',2,'2',100,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(108,158,3,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(109,158,4,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(110,158,2,'1','1',2,'2',100,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(111,159,3,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(112,159,4,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(113,159,2,'1','1',2,'2',100,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(114,160,3,'1','1',1,'1',50,3,3,19,6.1,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0.1,NULL,3),(115,160,4,'1','1',1,'1',50,3,3,19,6,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,3),(116,160,2,'1','1',2,'2',100,3,3,19,6,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,3),(117,161,3,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(118,161,4,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(119,161,2,'1','1',2,'2',100,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(120,162,3,'1','1',1,'1',50,8,3,21,4,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(121,162,4,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(122,162,2,'1','1',2,'2',100,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(123,163,3,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(124,163,4,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(125,163,2,'1','1',2,'2',100,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(126,164,3,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(127,164,4,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(128,164,2,'1','1',2,'2',100,11,3,22,2,NULL,NULL,'2011-01-06 11:16:52',NULL,NULL,0,NULL,0),(129,165,3,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:57',NULL,NULL,0,NULL,0),(130,165,4,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-06 11:16:57',NULL,NULL,0,NULL,0),(131,165,2,'1','1',2,'2',100,11,3,22,2,NULL,NULL,'2011-01-06 11:16:57',NULL,NULL,0,NULL,0),(132,166,2,'1','1',2,'1',100,11,3,22,2.1,NULL,NULL,'2011-01-06 11:41:14',NULL,NULL,0.1,NULL,0),(133,167,2,'1','1',2,'1',100,11,3,22,2.1,NULL,NULL,'2011-01-06 11:42:31',NULL,NULL,0.1,NULL,0),(134,168,2,'1','1',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-06 11:49:21',NULL,NULL,0,NULL,0),(135,169,2,'1','1',2,'1',100,8,3,21,4.01,NULL,NULL,'2011-01-06 11:57:29',NULL,NULL,0.01,NULL,0),(136,170,2,'1','0',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-11 05:35:44',NULL,NULL,0,NULL,0),(137,174,2,'1','0',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-27 09:58:43',NULL,NULL,0,NULL,0),(138,177,2,'1','0',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-27 10:22:12',NULL,NULL,0,NULL,0),(139,178,2,'1','0',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-27 10:22:12',NULL,NULL,0,NULL,0),(140,179,2,'1','0',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-27 10:22:12',NULL,NULL,0,NULL,0),(141,180,2,'1','0',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-27 10:22:12',NULL,NULL,0,NULL,0),(142,181,2,'1','0',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-27 10:22:12',NULL,NULL,0,NULL,0),(143,182,2,'1','0',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-27 10:22:12',NULL,NULL,0,NULL,0),(144,183,2,'1','0',2,'1',100,11,3,22,2,NULL,NULL,'2011-01-27 10:22:12',NULL,NULL,0,NULL,0),(145,188,3,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-27 10:53:38',NULL,NULL,0,NULL,0),(146,188,4,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-27 10:53:38',NULL,NULL,0,NULL,0),(147,188,2,'1','1',2,'2',100,11,3,22,2,NULL,NULL,'2011-01-27 10:53:38',NULL,NULL,0,NULL,0),(148,189,3,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-27 10:53:38',NULL,NULL,0,NULL,0),(149,189,4,'1','1',1,'1',50,11,3,22,2,NULL,NULL,'2011-01-27 10:53:38',NULL,NULL,0,NULL,0),(150,189,2,'1','1',2,'2',100,11,3,22,2,NULL,NULL,'2011-01-27 10:53:38',NULL,NULL,0,NULL,0);

UNLOCK TABLES;

/*Table structure for table `t_workrecord` */

DROP TABLE IF EXISTS `t_workrecord`;

CREATE TABLE `t_workrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `part_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `max_percent` int(11) DEFAULT NULL,
  `file_location` varchar(300) DEFAULT NULL,
  `help` varchar(500) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `self_score` double DEFAULT NULL,
  `check_total_score` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_delete` char(1) DEFAULT '0',
  `modify_id` int(11) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attach1` varchar(50) DEFAULT '0',
  `attach2` varchar(50) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

/*Data for the table `t_workrecord` */

LOCK TABLES `t_workrecord` WRITE;

insert  into `t_workrecord`(`id`,`name`,`model_id`,`part_id`,`project_id`,`duration`,`quantity`,`percent`,`max_percent`,`file_location`,`help`,`status`,`self_score`,`check_total_score`,`user_id`,`is_delete`,`modify_id`,`remark`,`create_time`,`update_time`,`attach1`,`attach2`,`type_id`,`task_id`,`percentage`) values (1,'34',3,3,16,0,1,100,0,'','','1',3,NULL,3,'1',0,'','2016-11-15 10:00:49',NULL,'0',NULL,NULL,NULL,NULL),(2,'65',3,3,16,0,1,100,0,'','','5',3,3,3,'0',2,'','2016-11-15 10:01:57',NULL,'1',NULL,NULL,NULL,NULL),(3,'工作1',3,3,16,7,1,100,0,'','','5',3,3.046666666666667,5,'0',3,'','2016-11-15 10:12:14',NULL,'1',NULL,NULL,NULL,NULL),(4,'我的工作1',3,3,16,5,1,100,0,'','','1',3,NULL,4,'1',0,'','2016-11-23 11:02:47',NULL,'0',NULL,NULL,NULL,NULL),(5,'我的工作1',3,3,16,3,1,100,0,'','','1',3,NULL,4,'1',0,'订单','2016-11-23 11:03:08',NULL,'0',NULL,NULL,NULL,NULL),(6,'3434',3,3,16,1,1,100,0,'','','1',3,NULL,1,'0',0,'','2016-11-15 11:14:50',NULL,'0',NULL,NULL,NULL,NULL),(7,'343',3,3,16,1,1,100,0,'','','1',3,NULL,3,'1',0,'3434','2016-11-15 11:35:06',NULL,'0',NULL,NULL,NULL,NULL),(8,'343修改',3,3,19,1,1,60,0,'','','5',3.5999999999999996,3.5999999999999996,3,'0',8,'343','2016-11-15 11:35:57','2016-11-25 09:26:45','1',NULL,NULL,NULL,NULL),(9,'我的工作1',3,3,16,7,1,100,0,'','','5',3,3,4,'0',0,'','2016-11-15 11:37:03',NULL,'0',NULL,NULL,NULL,NULL),(10,'56565',3,3,16,0,1,100,0,'','','1',3,NULL,3,'1',0,'56565','2016-11-15 11:40:20',NULL,'0',NULL,NULL,NULL,NULL),(11,'655656',3,3,16,0,1,100,0,'','','5',3,3,3,'0',2,'','2016-11-15 11:42:38',NULL,'0',NULL,NULL,NULL,NULL),(12,'工作1',3,3,16,7,1,100,0,'','rrr','1',3,NULL,5,'1',3,'rrr','2016-11-15 11:44:44',NULL,'0',NULL,NULL,NULL,NULL),(13,'34343',3,3,19,1,1,50,0,'','','5',3,3,3,'0',13,'','2016-11-16 15:20:55',NULL,'1',NULL,NULL,NULL,NULL),(14,'343456567',3,3,19,0,1,100,0,'','','5',6,6,3,'0',0,'','2016-11-16 17:07:18',NULL,'0',NULL,NULL,NULL,NULL),(15,'奔奔dfdf',3,3,19,1,1,50,0,'','','5',3,1.5,3,'0',0,'','2016-11-16 17:08:21',NULL,'0',NULL,NULL,NULL,NULL),(16,'445fgfg土额',3,3,19,2,1,100,0,'kpi_预制数据.sql','','5',6,6,3,'0',0,'','2016-11-16 17:12:27',NULL,'0',NULL,NULL,NULL,NULL),(17,'5656',3,3,19,4,1,100,0,'','','1',6,NULL,3,'0',17,'','2016-05-02 11:28:52',NULL,'1',NULL,NULL,NULL,NULL),(18,'676767',3,3,19,0,1,100,0,'新建文本文档.txt','','5',6,6,3,'0',0,'','2016-05-02 16:00:14',NULL,'0',NULL,NULL,NULL,NULL),(19,'344',3,3,19,1,1,30,0,'','','5',1.7999999999999998,1.7999999999999998,3,'0',0,'','2016-05-05 09:58:22',NULL,'0',NULL,NULL,NULL,NULL),(20,'aaaa',3,3,19,2,1,50,0,'','','5',3,3,3,'0',20,'','2016-05-05 09:58:54',NULL,'1',NULL,NULL,NULL,NULL),(21,'bbbb',3,3,19,3,1,50,0,'','','5',3,3.2199999999999998,3,'0',21,'','2016-05-05 09:59:27',NULL,'1',NULL,NULL,NULL,NULL),(22,'aaaa',3,3,19,2,1,70,0,'','','5',4.199999999999999,2.0999999999999996,3,'0',20,'','2016-05-05 10:04:11',NULL,'0',NULL,NULL,NULL,NULL),(23,'bbbb',3,3,19,3,1,80,0,'','','5',4.800000000000001,3.2,3,'0',21,'','2016-05-05 10:17:44',NULL,'0',NULL,NULL,NULL,NULL),(24,'ddd',3,3,19,9,1,100,0,'','','5',6,6,4,'0',0,'','2016-11-23 09:31:24',NULL,'0',NULL,NULL,NULL,NULL),(25,'sdfs',3,3,19,0,1,100,0,'','','5',6,4,4,'0',0,'','2016-11-23 10:26:28',NULL,'0',NULL,NULL,NULL,NULL),(26,'sdfsdfsdf',3,3,19,0,1,100,0,'','','5',6,5,4,'0',0,'','2016-11-23 10:26:28',NULL,'0',NULL,NULL,NULL,NULL),(27,'gfdg',3,3,19,0,1,100,0,'','','5',6,6.0600000000000005,4,'0',0,'','2016-11-23 10:26:28',NULL,'0',NULL,NULL,NULL,NULL),(28,'fghfgh',3,3,19,0,1,100,0,'','','5',6,6,4,'0',0,'','2016-11-23 10:26:28',NULL,'0',NULL,NULL,NULL,NULL),(29,'fghfgh',3,3,19,0,1,100,0,'','','5',6,6,4,'0',0,'','2016-11-23 10:26:28',NULL,'0',NULL,NULL,NULL,NULL),(30,'第三方对方',3,3,19,0,1,100,0,'','','5',6,6,4,'0',0,'','2016-05-07 10:28:56',NULL,'0',NULL,NULL,NULL,NULL),(31,'豆腐干豆腐',3,3,19,0,1,100,0,'','','5',6,6,4,'0',0,'','2016-05-07 10:29:05',NULL,'0',NULL,NULL,NULL,NULL),(32,'测试',3,3,19,7,1,100,0,'','','1',6,NULL,23,'0',0,'测试使用','2016-11-24 13:45:08',NULL,'0',NULL,NULL,NULL,NULL),(33,'343修改',3,3,19,1,1,70,0,'','','5',4.199999999999999,4.199999999999999,3,'0',8,'测试343修改','2016-11-25 09:32:50',NULL,'0',NULL,NULL,NULL,NULL),(34,'文网文',3,3,19,0,1,100,0,'','','5',6,3,3,'0',0,'','2009-07-17 11:45:53',NULL,'0',NULL,NULL,NULL,NULL),(35,'最新测试',3,3,19,0,1,100,0,'','','5',6,6,3,'0',0,'','2009-07-18 10:27:54',NULL,'0',NULL,NULL,NULL,NULL),(36,'ddd',3,3,19,0,1,100,0,'','','5',6,0,3,'0',0,'','2009-07-19 09:50:58',NULL,'0',NULL,NULL,NULL,NULL),(37,'56',3,3,19,2,1,60,0,'','','5',3.5999999999999996,3,3,'0',0,'','2009-07-19 10:58:33',NULL,'0',NULL,3,NULL,NULL),(38,'aaaaa',3,2,17,3,1,70,0,'','','5',3.5,3.5,3,'0',38,'','2009-07-19 10:59:04',NULL,'1',NULL,2,NULL,NULL),(39,'aaaaa',3,2,19,3,1,80,0,'','','5',4.800000000000001,4.860000000000001,3,'0',38,'','2009-07-19 11:02:36',NULL,'0',NULL,3,NULL,NULL),(40,'ffff',3,3,19,0,1,100,0,'','','1',6,NULL,3,'0',40,'','2009-07-19 13:56:56',NULL,'1',NULL,0,NULL,NULL),(41,'sdffffffff',3,3,19,0,1,100,0,NULL,'','1',6,NULL,0,'0',0,'','2016-12-07 10:01:06',NULL,'0',NULL,3,NULL,NULL),(42,'yyyyyyyyyyyyyyyyyyyyy',3,3,19,0,1,100,0,NULL,'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy','1',6,NULL,0,'0',0,'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy','2016-12-07 10:01:26',NULL,'0',NULL,3,NULL,NULL),(43,'fffffffffffffffffff',3,3,19,0,1,100,0,NULL,'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff','1',6,NULL,0,'0',0,'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff','2016-12-07 10:02:33',NULL,'0',NULL,3,NULL,NULL),(44,'ggvvvvvvvvvvvvvvv',3,3,19,0,1,100,0,NULL,'ggvvvvvvvvvvvvvvvggvvvvvvvvvvvvvvvggvvvvvvvvvvvvvvv','5',6,6.02,3,'0',0,'ggvvvvvvvvvvvvvvv','2016-12-07 10:05:27','2017-02-15 19:15:10','0',NULL,3,8,2),(45,'34343',2,3,4,1,1,50,0,'','','1',1.5,NULL,3,'0',13,'','2016-12-07 10:06:05',NULL,'1',NULL,0,NULL,NULL),(46,'bbbbbbbb',3,3,19,0,1,100,0,NULL,'','5',6,6.4,3,'0',0,'','2016-12-07 10:07:07',NULL,'0',NULL,3,NULL,NULL),(47,'dfgdfgdfgdfg',3,3,19,0,1,100,0,NULL,'','5',6,3,3,'0',0,'',NULL,NULL,'0',NULL,3,NULL,NULL),(48,'hjhjh',3,3,19,0,1,100,0,NULL,'','5',6,0,3,'0',0,'','2016-12-04 00:00:00',NULL,'0',NULL,3,NULL,NULL),(49,'ww2',8,3,20,0,1,100,0,NULL,'rrr','1',5,NULL,2,'0',0,'rrrr','2016-12-23 00:00:00',NULL,'0',NULL,3,NULL,NULL),(50,'34343',2,3,20,1,1,50,0,'','','1',2.5,NULL,3,'0',13,'34343dddddd','2016-12-06 00:00:00',NULL,'1',NULL,0,NULL,NULL),(51,'34343',2,3,4,1,1,50,0,'','','5',1.5,1.5,3,'0',13,'34343dddddd----','2016-12-06 00:00:00','2017-02-15 19:31:10','0',NULL,0,9,1),(52,'ccccccc',8,3,21,0,1,100,0,'','','1',5,NULL,3,'0',52,'','2016-10-05 08:45:09',NULL,'1',NULL,0,NULL,NULL),(53,'多多少少',8,3,20,0,1,100,0,'','','5',5,5,3,'0',53,'','2016-12-12 00:00:00',NULL,'1',NULL,0,NULL,NULL),(54,'dsfdf',8,3,20,0,1,100,0,'','','5',5,4.92,3,'0',54,'','2016-12-22 00:00:00',NULL,'1',NULL,0,NULL,NULL),(55,'多对多',8,3,20,0,1,100,0,'','','5',5,5,3,'0',55,'','2016-12-23 00:00:00',NULL,'1',NULL,0,NULL,NULL),(56,'5454545',8,3,21,0,1,100,0,'','','1',4,NULL,3,'0',56,'','2016-12-28 00:00:00',NULL,'1',NULL,0,NULL,NULL),(57,'56566',2,3,4,0,1,100,0,'','','5',3,15,3,'0',57,'','2016-12-28 00:00:00',NULL,'1',NULL,0,NULL,NULL),(58,'5454545',8,3,21,0,1,100,0,'','tgtgtgtg','5',4,5.199999999999999,3,'0',56,'tttg','2016-12-30 09:46:20',NULL,'1',NULL,0,NULL,NULL),(59,'45454454',8,3,21,0,1,100,0,'','','5',4,5,3,'0',59,'','2016-12-30 00:00:00',NULL,'1',NULL,0,NULL,NULL),(60,'aaaaaaa',8,3,21,3,1,100,0,'','','5',4,12.2,3,'0',60,'','2016-12-30 00:00:00',NULL,'1',NULL,0,NULL,NULL),(61,'4545',8,3,21,4,1,100,0,'','','5',4,4,3,'0',61,'','2016-12-30 00:00:00','2017-02-15 19:13:30','1',NULL,0,9,1),(62,'bbbbbbbb',8,3,21,4,1,100,0,'','','5',4,4.26,3,'0',62,'','2016-12-30 00:00:00',NULL,'1',NULL,0,NULL,NULL),(63,'1111',8,3,21,0,1,100,0,'','','1',4,NULL,1,'0',63,'','2017-02-15 00:00:00',NULL,'1',NULL,0,NULL,NULL),(64,'1111',8,3,21,0,1,100,0,'','','1',4,NULL,1,'0',63,'','2017-02-15 11:37:19',NULL,'0',NULL,2,NULL,NULL),(65,'1111',8,3,21,0,1,100,0,'','','1',4,NULL,1,'0',0,'','2017-02-15 00:00:00',NULL,'0',NULL,0,NULL,NULL),(66,'2222',8,3,21,0,1,100,0,'','','1',4,NULL,1,'0',0,'','2017-02-15 00:00:00',NULL,'0',NULL,0,0,0),(67,'1112',8,3,21,0,1,100,0,'','','1',4,NULL,1,'0',0,'','2017-02-15 00:00:00',NULL,'0',NULL,0,0,0),(68,'112222',8,3,21,0,1,100,0,'','','1',4,NULL,1,'0',0,'','2017-02-15 00:00:00',NULL,'0',NULL,0,9,33),(69,'2',8,3,21,0,1,100,0,'','','1',4,NULL,1,'0',0,'','2017-02-15 00:00:00',NULL,'0',NULL,0,9,2),(70,'vvvv',8,3,21,2,1,100,0,'','','1',4,NULL,1,'0',0,'','2017-02-15 00:00:00',NULL,'0',NULL,0,0,0),(71,'222',8,3,20,0,1,100,0,'jdk1.8 帮助.chm','','1',5,NULL,1,'1',0,'','2017-02-15 00:00:00',NULL,'0',NULL,0,9,10),(72,'1',8,3,21,0,1,100,0,'','','1',4,NULL,2,'0',0,'','2017-02-14 00:00:00',NULL,'0',NULL,0,0,0),(73,'33',8,3,21,0,1,80,0,'','','1',3.2,NULL,2,'0',73,'','2017-02-14 00:00:00',NULL,'1',NULL,0,9,1),(74,'111',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',74,'','2017-02-15 00:00:00',NULL,'1',NULL,3,NULL,NULL),(75,'2',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',0,'','2017-02-15 00:00:00',NULL,'0',NULL,3,NULL,NULL),(76,'rrrr',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',0,'','2017-02-15 00:00:00',NULL,'0',NULL,3,NULL,NULL),(77,'dddd',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',0,'','2017-02-15 00:00:00',NULL,'0',NULL,3,NULL,NULL),(78,'bbbbbb',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',0,'','2017-02-15 00:00:00',NULL,'0',NULL,3,0,0),(79,'555',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',0,'','2017-02-15 00:00:00',NULL,'0',NULL,3,0,0),(80,'444444',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',80,'','2017-02-15 00:00:00',NULL,'1',NULL,3,8,2),(81,'33',6,3,0,0,1,80,0,'','','1',0,NULL,2,'0',73,'','2017-02-15 14:06:24',NULL,'1',NULL,0,9,1),(82,'33',8,3,21,0,1,80,0,'','','1',3.2,NULL,2,'0',73,'','2017-02-15 14:21:08',NULL,'1',NULL,0,9,42),(83,'33',8,3,21,0,1,80,0,'','','1',3.2,NULL,2,'0',73,'','2017-02-15 14:21:25',NULL,'0',NULL,0,9,12),(84,'444444',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',80,'','2017-02-15 14:25:32',NULL,'1',NULL,3,7,2),(85,'444444',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',80,'','2017-02-15 14:26:27',NULL,'1',NULL,3,8,2),(86,'444444',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',80,'','2017-02-15 14:27:12',NULL,'1',NULL,3,7,2),(87,'444444',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',80,'','2017-02-15 14:27:42',NULL,'1',NULL,3,8,2),(88,'444444',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',80,'','2017-02-15 14:28:18',NULL,'1',NULL,3,8,2),(89,'444444',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',80,'','2017-02-15 14:28:25','2017-02-15 14:40:42','1',NULL,3,7,10),(90,'444444',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',80,'','2017-02-15 14:44:21',NULL,'0',NULL,3,7,10),(91,'111',8,3,21,0,1,100,0,NULL,'','1',4,NULL,2,'0',74,'','2017-02-15 14:45:12',NULL,'0',NULL,3,6,1),(92,'111111',8,3,21,0,1,100,0,'','','1',4,NULL,2,'0',0,'','2017-02-15 00:00:00',NULL,'0',NULL,0,8,1),(93,'ccccccc',8,3,20,0,1,100,0,'','','5',5,5.119999999999999,3,'0',52,'','2017-02-15 19:31:20',NULL,'0',NULL,0,8,2),(94,'5656',3,3,19,4,1,100,0,'','','1',6,NULL,3,'0',17,'','2017-02-24 16:26:09',NULL,'1',NULL,0,9,0),(95,'ffff',3,3,19,0,1,100,0,'','','1',6,NULL,3,'0',40,'','2017-02-24 16:26:14',NULL,'1',NULL,0,9,0),(96,'5454545',8,3,21,0,1,100,0,'','tgtgtgtg','5',4,0,3,'0',56,'tttg','2017-02-24 16:26:19',NULL,'0',NULL,0,9,0),(97,'45454454',8,3,21,0,1,100,0,'','','5',4,6,3,'0',59,'','2017-02-24 16:26:27',NULL,'0',NULL,0,9,0),(98,'aaaaaaa',8,3,21,3,1,100,0,'','','5',4,4,3,'0',60,'','2017-02-24 16:26:35',NULL,'0',NULL,0,9,0),(99,'bbbbbbbb',8,3,21,4,1,100,0,'','','5',4,4,3,'0',62,'','2017-02-24 16:26:43',NULL,'0',NULL,0,9,0),(100,'4545',8,3,21,4,1,100,0,'','','5',4,4,3,'0',61,'','2017-02-24 16:26:50',NULL,'0',NULL,0,9,1),(101,'56566',2,3,4,0,1,100,0,'','','1',3,NULL,3,'0',57,'','2017-02-24 16:26:58',NULL,'1',NULL,0,9,0),(102,'多对多',8,3,20,0,1,100,0,'','','1',5,NULL,3,'0',55,'','2017-02-24 16:27:03',NULL,'1',NULL,0,9,0),(103,'dsfdf',8,3,20,0,1,100,0,'','','1',5,NULL,3,'0',54,'','2017-02-24 16:27:17',NULL,'1',NULL,0,9,0),(104,'多对多',8,3,21,0,1,100,0,'','','5',4,4,3,'0',55,'','2017-02-24 16:37:49',NULL,'0',NULL,0,9,0),(105,'dsfdf',8,3,21,0,1,100,0,'','','5',4,4,3,'0',54,'','2017-02-24 16:37:53',NULL,'0',NULL,0,9,0),(106,'56566',8,3,21,0,1,100,0,'','','5',4,4,3,'0',57,'','2017-02-24 16:38:05',NULL,'0',NULL,0,9,0),(107,'ffff',8,3,21,0,1,100,0,'','','5',4,4,3,'0',40,'','2017-02-24 16:38:12',NULL,'0',NULL,0,9,0),(108,'5656',8,3,21,4,1,100,0,'','','5',4,4,3,'0',17,'','2017-02-24 16:40:41',NULL,'0',NULL,0,9,0),(109,'多多少少',8,3,21,0,1,100,0,'','','5',4,5,3,'0',53,'','2017-02-24 16:40:48',NULL,'0',NULL,0,0,0),(110,'11111111111111',8,3,21,0,1,100,0,'','','1',4,NULL,2,'0',0,'111','2017-02-24 00:00:00',NULL,'0',NULL,0,0,0),(111,'111123',8,3,20,1,1,100,0,'','','1',5,NULL,2,'0',111,'111111111111','2017-02-27 00:00:00',NULL,'1',NULL,2,9,1),(112,'111123',3,2,16,1,1,100,0,'','','1',3,NULL,2,'0',111,'111111111111','2017-02-27 17:40:05',NULL,'1',NULL,2,9,1),(113,'111123',3,1,16,1,1,100,0,'','','1',3,NULL,2,'0',111,'111111111111','2017-02-27 17:51:23',NULL,'1',NULL,2,9,1),(114,'1212',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'12','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(115,'cvc',11,3,22,0,1,100,0,'','','5',2,5,3,'0',0,'dfvdf','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(116,'vnghmnhgngh',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(117,'hjjhghjhgj',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(118,'sdvsdv',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'sdvsdv','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(119,'vcbbf',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(120,'hgjgjh',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(121,'yjhmtyjn',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(122,'fghfghf',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(123,'ergerg',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(124,'dfgbfvbnn',11,3,22,0,1,100,0,'','','5',2,0.18,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(125,'bvrtjytrt',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(126,'ebgdfdfg',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(127,'ssfghfh',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(128,'iuluiluy',11,3,22,0,1,100,0,'','','5',2,4,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(129,'zxczxczxc',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(130,'asdasdas',11,3,22,0,1,100,0,'','','1',2,NULL,3,'0',130,'','2017-03-01 00:00:00',NULL,'1',NULL,0,0,0),(131,'asdasdas',8,3,21,0,1,100,0,'','','5',4,4,3,'0',130,'','2017-03-01 13:51:17',NULL,'0',NULL,0,0,0),(132,'sdcvsdvsd',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'vsdvsd','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(133,'cvbcvbc',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(134,'jkjhku',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(135,'ghjf',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(136,'tyjtyjty',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(137,'fghfghgfh',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(138,'rtyh45y45',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(139,'fgnfng5464',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(140,'gmnzdb',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(141,'ed3434teg',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(142,'gghmfvbnvb',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(143,'dfbd',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(144,'we',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(145,'fgbfg',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(146,'cfbcb',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(147,'grtrt',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(148,'edfg',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(149,'cvbvcbdf',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(150,'rbrewgvds',3,3,19,0,1,100,0,'','','5',2,4.199999999999999,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(151,'fbfgrtbrt',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(152,'fsbzdbfdb',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(153,'gbnhytr',11,3,22,0,1,100,0,'','','5',2,0,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(154,'wefwefw',11,3,22,0,1,100,0,'','','5',2,3,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,8,1),(155,'sdsdsd',11,3,22,0,1,100,0,'','','5',2,2,5,'0',0,'sdf','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(156,'sdvsdvsd',11,3,22,0,1,100,0,'','','5',2,2,5,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(157,'vb',11,3,22,0,1,100,0,'','','5',2,2,5,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(158,'iouluilu',11,3,22,0,1,100,0,'','','5',2,2,5,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(159,'t455y54y',11,3,22,0,1,100,0,'','','5',2,2,5,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(160,'jhmgffgm',3,3,19,0,1,100,0,'','','5',6,6.033333333333334,5,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,3,0,0),(161,'fgndfgndf',11,3,22,0,1,100,0,'','','5',2,2,5,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,8,3),(162,'ghmghebh',11,3,22,0,1,100,0,'','','5',2,2.6666666666666665,5,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(163,'nrtnrfdhgeg',11,3,22,0,1,100,0,'','','5',2,2,5,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(164,'tdhersh',11,3,22,0,1,100,0,'','','5',2,2,5,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(165,'ghmnghmgh',11,3,22,0,1,100,0,'','','5',2,2,5,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(166,'sadasd',11,3,22,0,1,100,0,'','','5',2,2.2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(167,'wcwcwe',11,3,22,0,1,100,0,'','','5',2,2.2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(168,'saadasd',11,3,22,0,1,100,0,'','','5',2,2,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(169,'1dfsdfsf',11,3,22,0,1,100,0,'','','5',2,4.02,3,'0',0,'','2017-03-01 00:00:00',NULL,'0',NULL,0,0,0),(170,'sdvsdvsd',11,3,22,0,1,100,0,'','','2',2,NULL,3,'0',0,'','2017-03-06 00:00:00',NULL,'0',NULL,0,0,0),(171,'sdfsdf.kl.ol.iotyj,.,yj/',11,3,22,0,1,100,0,'','','1',2,NULL,2,'0',0,'','2017-03-06 00:00:00',NULL,'0',NULL,0,0,0),(172,'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',11,3,22,0,1,100,0,'','','1',2,NULL,2,'0',0,'','2017-03-06 00:00:00',NULL,'0',NULL,0,0,0),(173,'111123',3,1,16,1,1,100,0,'','','1',3,NULL,2,'0',111,'111111111111','2017-03-22 15:35:18',NULL,'0',NULL,2,0,1),(174,'qwdwq',11,3,22,0,1,100,0,'','','2',2,NULL,3,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(175,'1111',11,3,22,0,1,100,0,'','','1',2,NULL,2,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(176,'2222',11,3,22,0,1,100,0,'','','1',2,NULL,2,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(177,'1',11,3,22,0,1,100,0,'','','2',2,NULL,3,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(178,'2',11,3,22,0,1,100,0,'','','2',2,NULL,3,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(179,'3',11,3,22,0,1,100,0,'','','2',2,NULL,3,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(180,'4',11,3,22,0,1,100,0,'','','2',2,NULL,3,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(181,'5',11,3,22,0,1,100,0,'','','2',2,NULL,3,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(182,'6',11,3,22,0,1,100,0,'','','2',2,NULL,3,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(183,'7',11,3,22,0,1,100,0,'','','2',2,NULL,3,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(184,'1',11,3,22,0,1,100,0,'','','1',2,NULL,3,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(185,'2',11,3,22,0,1,100,0,'','','1',2,NULL,3,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(186,'3',11,3,22,0,1,100,0,'','','1',2,NULL,3,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(187,'4',11,3,22,0,1,100,0,'','','1',2,NULL,3,'0',0,'','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(188,'1',11,3,22,0,1,100,0,'','','5',2,2,5,'0',0,'1','2017-03-22 00:00:00',NULL,'0',NULL,0,0,0),(189,'1',11,3,22,0,1,100,0,'','','5',2,2,5,'0',0,'1','2017-03-22 00:00:00',NULL,'0',NULL,0,8,1);

UNLOCK TABLES;

/* Function  structure for function  `getChildLst` */

/*!50003 DROP FUNCTION IF EXISTS `getChildLst` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `getChildLst`(rootId INT) RETURNS varchar(1000) CHARSET utf8
BEGIN

  DECLARE sTemp VARCHAR(1000);

  DECLARE sTempChd VARCHAR(1000);

  SET sTemp = '$' ;

  SET sTempChd = CAST(rootId AS CHAR) ;

	  WHILE

	    sTempChd IS NOT NULL DO SET sTemp = CONCAT(sTemp, ',', sTempChd) ;

	    SELECT 

	      GROUP_CONCAT(id) INTO sTempChd 

	    FROM

	      t_organize 

	    WHERE FIND_IN_SET(parent_id, sTempChd) > 0 ;

	    

	  END WHILE ;

  

  RETURN sTemp ;

  

END */$$
DELIMITER ;

/* Function  structure for function  `getChilds` */

/*!50003 DROP FUNCTION IF EXISTS `getChilds` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `getChilds`(rootId INT) RETURNS varchar(1000) CHARSET utf8
BEGIN

	  DECLARE sTemp VARCHAR(1000);

	  DECLARE sTempChd VARCHAR(1000);

	  SET sTemp = '' ;

	  SET sTempChd = CAST(rootId AS CHAR) ;

		  WHILE

		    sTempChd IS NOT NULL DO SET sTemp = CONCAT(sTemp, ',', sTempChd) ;

		    SELECT 

		      GROUP_CONCAT(id) INTO sTempChd 

		    FROM

		      t_organize 

		    WHERE FIND_IN_SET(parent_id, sTempChd) > 0 ;

		    

		  END WHILE ;

	  

	  RETURN  substring(sTemp,2);

    END */$$
DELIMITER ;

/* Function  structure for function  `getParentList` */

/*!50003 DROP FUNCTION IF EXISTS `getParentList` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `getParentList`(rootId INT) RETURNS varchar(1000) CHARSET utf8
BEGIN

	DECLARE sParentList VARCHAR(1000); 

	DECLARE sParentTemp VARCHAR(1000); 

	SET sParentTemp =CAST(rootId AS CHAR); 

	WHILE sParentTemp IS NOT NULL DO 

		IF (sParentList IS NOT NULL) THEN 

		SET sParentList = CONCAT(sParentTemp,',',sParentList); 

	ELSE 

		SET sParentList = CONCAT(sParentTemp); 

	END IF; 

		SELECT GROUP_CONCAT(parent_id) INTO sParentTemp FROM t_organize WHERE FIND_IN_SET(id,sParentTemp)>0; 

	END WHILE; 

	RETURN sParentList;

    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;