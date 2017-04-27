/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 5.5.40 : Database - webyii
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`webyii` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `webyii`;

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `title` varchar(255) DEFAULT '' COMMENT '博客标题',
  `cate` int(11) DEFAULT '0' COMMENT '博客分类',
  `content` text COMMENT '博客内容',
  `author` varchar(255) DEFAULT '' COMMENT '博客作者',
  `flag` varchar(255) DEFAULT '' COMMENT '博客标签（标签id，逗号分隔）',
  `zan_num` int(11) DEFAULT '0' COMMENT '点赞数',
  `is_show` int(1) DEFAULT '0' COMMENT '是否显示',
  `create_time` varchar(255) DEFAULT '' COMMENT '创建时间',
  `update_time` varchar(255) DEFAULT '' COMMENT '更新时间',
  `order` int(11) DEFAULT '0' COMMENT '显示排序',
  `read_num` int(11) DEFAULT '0' COMMENT '阅读量',
  `is_recommend` int(11) DEFAULT '0' COMMENT '是否推荐',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`cate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `blog` */

/*Table structure for table `cate_group` */

DROP TABLE IF EXISTS `cate_group`;

CREATE TABLE `cate_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `cate_name` varchar(255) DEFAULT '' COMMENT '分类名称',
  `cate_flag` varchar(255) DEFAULT '' COMMENT '分类标识（所有类似结构分类都用这个表，以此作为区分）',
  `is_show` int(1) DEFAULT '0' COMMENT '分类是否有效',
  `desc` varchar(255) DEFAULT '' COMMENT '分类说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`cate_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cate_group` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
  `auth_key` varchar(32) NOT NULL DEFAULT '' COMMENT '自动登录key',
  `password_hash` varchar(255) NOT NULL DEFAULT '' COMMENT '加密密码',
  `password_reset_token` varchar(255) DEFAULT '' COMMENT '重置密码token',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `role` smallint(6) NOT NULL DEFAULT '0' COMMENT '角色等级',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '状态',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`role`,`status`,`created_at`,`updated_at`) values (6,'admin','kmZohNIsHR63Byg9u_e7KSIngYgubFDg','$2y$13$s8FGPTgq1uu7Pec3Jdy5V.4a2slEZsAyEmleISf.98jjeDcTJFitO',NULL,'admin@admin.com',10,10,1472170046,1472170046),(7,'aaa','a0WY65dm_ynDRrh5jYHc-LybFsQQp3PN','$2y$13$lQQu7iEmVzzAEPKuE2GU8.hu641ve35bKnD7k9AuL8k9LR4qe0cs2',NULL,'aaa@126.com',10,10,1472271564,1472271564);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
