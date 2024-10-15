/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shoulouguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shoulouguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shoulouguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-21 11:29:00'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-21 11:29:00'),(3,'fangwuzhuangtai_types','房屋状态',1,'未售',NULL,NULL,'2023-03-21 11:29:00'),(4,'fangwuzhuangtai_types','房屋状态',2,'已售',NULL,NULL,'2023-03-21 11:29:00'),(5,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-21 11:29:00'),(6,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-21 11:29:00'),(7,'fangwu_types','房屋类型',1,'房屋类型1',NULL,NULL,'2023-03-21 11:29:00'),(8,'fangwu_types','房屋类型',2,'房屋类型2',NULL,NULL,'2023-03-21 11:29:00'),(9,'fangwu_types','房屋类型',3,'房屋类型3',NULL,NULL,'2023-03-21 11:29:00'),(10,'fangwu_types','房屋类型',4,'房屋类型4',NULL,NULL,'2023-03-21 11:29:00'),(11,'fangwu_loupan_types','楼盘',1,'楼盘1',NULL,NULL,'2023-03-21 11:29:00'),(12,'fangwu_loupan_types','楼盘',2,'楼盘2',NULL,NULL,'2023-03-21 11:29:00'),(13,'fangwu_loupan_types','楼盘',3,'楼盘3',NULL,NULL,'2023-03-21 11:29:00'),(14,'fangwu_fangben_types','房本',1,'无房本',NULL,NULL,'2023-03-21 11:29:00'),(15,'fangwu_fangben_types','房本',3,'有房本',NULL,NULL,'2023-03-21 11:29:00'),(16,'fangwu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-21 11:29:00'),(17,'fangwu_yuyue_yesno_types','预约状态',1,'待审核',NULL,NULL,'2023-03-21 11:29:00'),(18,'fangwu_yuyue_yesno_types','预约状态',2,'同意',NULL,NULL,'2023-03-21 11:29:00'),(19,'fangwu_yuyue_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2023-03-21 11:29:00'),(20,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-21 11:29:00'),(21,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-21 11:29:00'),(22,'hetong_types','合同类型',1,'合同类型1',NULL,NULL,'2023-03-21 11:29:00'),(23,'hetong_types','合同类型',2,'合同类型2',NULL,NULL,'2023-03-21 11:29:00'),(24,'hetong_types','合同类型',3,'合同类型3',NULL,NULL,'2023-03-21 11:29:00'),(25,'hetong_types','合同类型',4,'合同类型4',NULL,NULL,'2023-03-21 11:29:00'),(26,'yonghu_tongyi_types','是否同意',1,'待同意',NULL,NULL,'2023-03-21 11:29:00'),(27,'yonghu_tongyi_types','是否同意',2,'已同意',NULL,NULL,'2023-03-21 11:29:00'),(28,'hetong_types','合同类型',5,'合同类型5',NULL,'','2023-03-21 13:04:41');

/*Table structure for table `fangwu` */

DROP TABLE IF EXISTS `fangwu`;

CREATE TABLE `fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangwu_name` varchar(200) DEFAULT NULL COMMENT '房屋名称  Search111 ',
  `fangwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangwu_photo` varchar(200) DEFAULT NULL COMMENT '房屋照片',
  `fangwu_address` varchar(200) DEFAULT NULL COMMENT '房屋位置',
  `fangwu_louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `fangwu_danyuan` varchar(200) DEFAULT NULL COMMENT '单元',
  `fangwu_fanghao` varchar(200) DEFAULT NULL COMMENT '房号',
  `fangwu_types` int(11) DEFAULT NULL COMMENT '房屋类型 Search111',
  `fangwu_loupan_types` int(11) DEFAULT NULL COMMENT '楼盘 Search111',
  `huxing` varchar(200) DEFAULT NULL COMMENT '户型 Search111',
  `fangwu_jiegou` varchar(200) DEFAULT NULL COMMENT '房屋结构',
  `fangwu_jianzhujiegou` varchar(200) DEFAULT NULL COMMENT '建筑结构',
  `fangwu_zhuangxiu` varchar(200) DEFAULT NULL COMMENT '装修情况',
  `fangwu_yongtu` varchar(200) DEFAULT NULL COMMENT '房屋用途',
  `fangwu_fangben_types` int(11) DEFAULT NULL COMMENT '房本 Search111',
  `fangwu_clicknum` int(11) DEFAULT NULL COMMENT '房屋热度',
  `fangwu_mianji` decimal(10,2) DEFAULT NULL COMMENT '房屋面积',
  `fangwu_jiage` decimal(10,2) DEFAULT NULL COMMENT '总价(万)',
  `fangwuzhuangtai_types` int(11) DEFAULT NULL COMMENT '房屋状态  Search111 ',
  `fangwu_content` longtext COMMENT '房屋介绍 ',
  `fangwu_xiaoqu_content` longtext COMMENT '小区介绍 ',
  `fangwu_peitao_content` longtext COMMENT '周边配套 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `fangwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='房屋';

/*Data for the table `fangwu` */

insert  into `fangwu`(`id`,`fangwu_name`,`fangwu_uuid_number`,`fangwu_photo`,`fangwu_address`,`fangwu_louceng`,`fangwu_danyuan`,`fangwu_fanghao`,`fangwu_types`,`fangwu_loupan_types`,`huxing`,`fangwu_jiegou`,`fangwu_jianzhujiegou`,`fangwu_zhuangxiu`,`fangwu_yongtu`,`fangwu_fangben_types`,`fangwu_clicknum`,`fangwu_mianji`,`fangwu_jiage`,`fangwuzhuangtai_types`,`fangwu_content`,`fangwu_xiaoqu_content`,`fangwu_peitao_content`,`shangxia_types`,`fangwu_delete`,`insert_time`,`create_time`) values (1,'房屋名称1','1679369399906','upload/fangwu1.jpg','房屋位置1','楼层1','单元1','房号1',4,3,'户型1','房屋结构1','建筑结构1','装修情况1','房屋用途1',3,452,'898.23','184.68',1,'房屋介绍1','小区介绍1','周边配套1',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(2,'房屋名称2','1679369399951','upload/fangwu2.jpg','房屋位置2','楼层2','单元2','房号2',1,3,'户型2','房屋结构2','建筑结构2','装修情况2','房屋用途2',3,17,'648.03','135.99',2,'房屋介绍2','小区介绍2','周边配套2',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(3,'房屋名称3','1679369399975','upload/fangwu3.jpg','房屋位置3','楼层3','单元3','房号3',4,2,'户型3','房屋结构3','建筑结构3','装修情况3','房屋用途3',3,403,'17.42','715.98',2,'房屋介绍3','小区介绍3','周边配套3',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(4,'房屋名称4','1679369399969','upload/fangwu4.jpg','房屋位置4','楼层4','单元4','房号4',2,2,'户型4','房屋结构4','建筑结构4','装修情况4','房屋用途4',3,238,'422.75','300.23',2,'房屋介绍4','小区介绍4','周边配套4',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(5,'房屋名称5','1679369399879','upload/fangwu5.jpg','房屋位置5','楼层5','单元5','房号5',2,3,'户型5','房屋结构5','建筑结构5','装修情况5','房屋用途5',3,29,'761.78','41.68',2,'房屋介绍5','小区介绍5','周边配套5',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(6,'房屋名称6','1679369399916','upload/fangwu6.jpg','房屋位置6','楼层6','单元6','房号6',3,3,'户型6','房屋结构6','建筑结构6','装修情况6','房屋用途6',1,252,'357.39','204.10',1,'房屋介绍6','小区介绍6','周边配套6',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(7,'房屋名称7','1679369399941','upload/fangwu7.jpg','房屋位置7','楼层7','单元7','房号7',2,3,'户型7','房屋结构7','建筑结构7','装修情况7','房屋用途7',1,256,'457.69','681.09',1,'房屋介绍7','小区介绍7','周边配套7',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(8,'房屋名称8','1679369399938','upload/fangwu8.jpg','房屋位置8','楼层8','单元8','房号8',4,3,'户型8','房屋结构8','建筑结构8','装修情况8','房屋用途8',1,188,'221.83','107.83',1,'房屋介绍8','小区介绍8','周边配套8',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(9,'房屋名称9','1679369399907','upload/fangwu9.jpg','房屋位置9','楼层9','单元9','房号9',1,3,'户型9','房屋结构9','建筑结构9','装修情况9','房屋用途9',1,18,'551.13','657.45',1,'房屋介绍9','小区介绍9','周边配套9',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(10,'房屋名称10','1679369399906','upload/fangwu10.jpg','房屋位置10','楼层10','单元10','房号10',3,2,'户型10','房屋结构10','建筑结构10','装修情况10','房屋用途10',1,175,'850.41','245.70',1,'房屋介绍10','小区介绍10','周边配套10',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(11,'房屋名称11','1679369399879','upload/fangwu11.jpg','房屋位置11','楼层11','单元11','房号11',2,3,'户型11','房屋结构11','建筑结构11','装修情况11','房屋用途11',3,309,'156.88','238.31',2,'房屋介绍11','小区介绍11','周边配套11',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(12,'房屋名称12','1679369399920','upload/fangwu12.jpg','房屋位置12','楼层12','单元12','房号12',2,2,'户型12','房屋结构12','建筑结构12','装修情况12','房屋用途12',1,183,'244.48','151.58',1,'房屋介绍12','小区介绍12','周边配套12',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(13,'房屋名称13','1679369399894','upload/fangwu13.jpg','房屋位置13','楼层13','单元13','房号13',4,3,'户型13','房屋结构13','建筑结构13','装修情况13','房屋用途13',1,207,'740.38','926.37',2,'房屋介绍13','小区介绍13','周边配套13',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(14,'房屋名称14','1679369399891','upload/fangwu14.jpg','房屋位置14','楼层14','单元14','房号14',3,2,'户型14','房屋结构14','建筑结构14','装修情况14','房屋用途14',3,201,'770.80','81.38',1,'房屋介绍14','小区介绍14','周边配套14',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59');

/*Table structure for table `fangwu_collection` */

DROP TABLE IF EXISTS `fangwu_collection`;

CREATE TABLE `fangwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='房屋收藏';

/*Data for the table `fangwu_collection` */

insert  into `fangwu_collection`(`id`,`fangwu_id`,`yonghu_id`,`fangwu_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(2,2,2,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(3,3,2,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(4,4,1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(5,5,3,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(6,6,3,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(7,7,1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(8,8,1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(9,9,1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(10,10,1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(11,11,1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(12,12,3,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(13,13,3,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(14,14,1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(15,3,4,1,'2023-03-21 13:03:55','2023-03-21 13:03:55'),(16,11,4,1,'2023-03-21 13:03:58','2023-03-21 13:03:58');

/*Table structure for table `fangwu_liuyan` */

DROP TABLE IF EXISTS `fangwu_liuyan`;

CREATE TABLE `fangwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='房屋留言';

/*Data for the table `fangwu_liuyan` */

insert  into `fangwu_liuyan`(`id`,`fangwu_id`,`yonghu_id`,`fangwu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-03-21 11:29:59','回复信息1','2023-03-21 11:29:59','2023-03-21 11:29:59'),(2,2,2,'留言内容2','2023-03-21 11:29:59','回复信息2','2023-03-21 11:29:59','2023-03-21 11:29:59'),(3,3,1,'留言内容3','2023-03-21 11:29:59','回复信息3','2023-03-21 11:29:59','2023-03-21 11:29:59'),(4,4,3,'留言内容4','2023-03-21 11:29:59','回复信息4','2023-03-21 11:29:59','2023-03-21 11:29:59'),(5,5,3,'留言内容5','2023-03-21 11:29:59','回复信息5','2023-03-21 11:29:59','2023-03-21 11:29:59'),(6,6,1,'留言内容6','2023-03-21 11:29:59','回复信息6','2023-03-21 11:29:59','2023-03-21 11:29:59'),(7,7,2,'留言内容7','2023-03-21 11:29:59','回复信息7','2023-03-21 11:29:59','2023-03-21 11:29:59'),(8,8,2,'留言内容8','2023-03-21 11:29:59','回复信息8','2023-03-21 11:29:59','2023-03-21 11:29:59'),(9,9,2,'留言内容9','2023-03-21 11:29:59','回复信息9','2023-03-21 11:29:59','2023-03-21 11:29:59'),(10,10,2,'留言内容10','2023-03-21 11:29:59','回复信息10','2023-03-21 11:29:59','2023-03-21 11:29:59'),(11,11,1,'留言内容11','2023-03-21 11:29:59','回复信息11','2023-03-21 11:29:59','2023-03-21 11:29:59'),(12,12,1,'留言内容12','2023-03-21 11:29:59','回复信息12','2023-03-21 11:29:59','2023-03-21 11:29:59'),(13,13,3,'留言内容13','2023-03-21 11:29:59','回复信息13','2023-03-21 11:29:59','2023-03-21 11:29:59'),(14,14,1,'留言内容14','2023-03-21 11:29:59','回复信息14','2023-03-21 11:29:59','2023-03-21 11:29:59'),(15,4,1,'固定的公司规定','2023-03-21 11:38:53','郭德纲房东说','2023-03-21 13:05:35','2023-03-21 11:38:53'),(16,4,4,'dgdsgsd','2023-03-21 13:03:21','地方撒孤独颂歌','2023-03-21 13:04:53','2023-03-21 13:03:21');

/*Table structure for table `fangwu_yuyue` */

DROP TABLE IF EXISTS `fangwu_yuyue`;

CREATE TABLE `fangwu_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约编号 Search111 ',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_yuyue_text` longtext COMMENT '预约缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `fangwu_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约看房时间',
  `fangwu_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `fangwu_yuyue_yesno_text` longtext COMMENT '预约回复',
  `fangwu_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='预约看房';

/*Data for the table `fangwu_yuyue` */

insert  into `fangwu_yuyue`(`id`,`fangwu_yuyue_uuid_number`,`fangwu_id`,`yonghu_id`,`fangwu_yuyue_text`,`insert_time`,`fangwu_yuyue_time`,`fangwu_yuyue_yesno_types`,`fangwu_yuyue_yesno_text`,`fangwu_yuyue_shenhe_time`,`create_time`) values (1,'1679369399894',1,1,'预约缘由1','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(2,'1679369399936',2,1,'预约缘由2','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(3,'1679369399911',3,1,'预约缘由3','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(4,'1679369399934',4,2,'预约缘由4','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(5,'1679369399981',5,1,'预约缘由5','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(6,'1679369399956',6,3,'预约缘由6','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(7,'1679369399908',7,3,'预约缘由7','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(8,'1679369399954',8,2,'预约缘由8','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(9,'1679369399968',9,3,'预约缘由9','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(10,'1679369399924',10,2,'预约缘由10','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(11,'1679369399908',11,1,'预约缘由11','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(12,'1679369399984',12,1,'预约缘由12','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(13,'1679369399920',13,1,'预约缘由13','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(14,'1679369399926',14,1,'预约缘由14','2023-03-21 11:29:59','2023-03-21 11:29:59',1,NULL,NULL,'2023-03-21 11:29:59'),(15,'1679369988951',7,1,'士大夫撒范德萨发大概是','2023-03-21 11:39:49','2023-03-21 11:39:42',3,'更多的是个','2023-03-21 13:05:47','2023-03-21 11:39:49'),(16,'1679375016370',7,4,'dgdgds单双杠事故十多个','2023-03-21 13:03:36','2023-03-23 13:03:28',2,'大概是归属感','2023-03-21 13:05:02','2023-03-21 13:03:36');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-03-21 11:29:59','公告详情1','2023-03-21 11:29:59'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-21 11:29:59','公告详情2','2023-03-21 11:29:59'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-21 11:29:59','公告详情3','2023-03-21 11:29:59'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-03-21 11:29:59','公告详情4','2023-03-21 11:29:59'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-21 11:29:59','公告详情5','2023-03-21 11:29:59'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-21 11:29:59','公告详情6','2023-03-21 11:29:59'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-21 11:29:59','公告详情7','2023-03-21 11:29:59'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-21 11:29:59','公告详情8','2023-03-21 11:29:59'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-21 11:29:59','公告详情9','2023-03-21 11:29:59'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-21 11:29:59','公告详情10','2023-03-21 11:29:59'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-21 11:29:59','公告详情11','2023-03-21 11:29:59'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-21 11:29:59','公告详情12','2023-03-21 11:29:59'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-21 11:29:59','公告详情13','2023-03-21 11:29:59'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-21 11:29:59','公告详情14','2023-03-21 11:29:59');

/*Table structure for table `hetong` */

DROP TABLE IF EXISTS `hetong`;

CREATE TABLE `hetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `hetong_uuid_number` varchar(200) DEFAULT NULL COMMENT '合同编号',
  `hetong_name` varchar(200) DEFAULT NULL COMMENT '合同名称 Search111 ',
  `hetong_file` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `hetong_address` varchar(200) DEFAULT NULL COMMENT '签订地点',
  `hetong_types` int(11) DEFAULT NULL COMMENT '合同类型 Search111',
  `qianding_time` timestamp NULL DEFAULT NULL COMMENT '签订时间',
  `hetong_content` longtext COMMENT '合同介绍 ',
  `yonghu_tongyi_types` int(11) DEFAULT NULL COMMENT '是否同意 Search111 ',
  `hetong_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='合同';

/*Data for the table `hetong` */

insert  into `hetong`(`id`,`yonghu_id`,`yuangong_id`,`fangwu_id`,`hetong_uuid_number`,`hetong_name`,`hetong_file`,`hetong_address`,`hetong_types`,`qianding_time`,`hetong_content`,`yonghu_tongyi_types`,`hetong_delete`,`insert_time`,`create_time`) values (1,3,3,1,'1679369399964','合同名称1','upload/file.rar','签订地点1',4,'2023-03-21 11:29:59','合同介绍1',2,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(2,2,3,2,'1679369399984','合同名称2','upload/file.rar','签订地点2',3,'2023-03-21 11:29:59','合同介绍2',2,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(3,1,3,3,'1679369399937','合同名称3','upload/file.rar','签订地点3',3,'2023-03-21 11:29:59','合同介绍3',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(4,3,1,4,'1679369399963','合同名称4','upload/file.rar','签订地点4',1,'2023-03-21 11:29:59','合同介绍4',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(5,1,3,5,'1679369399937','合同名称5','upload/file.rar','签订地点5',3,'2023-03-21 11:29:59','合同介绍5',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(6,2,1,6,'1679369399964','合同名称6','upload/file.rar','签订地点6',4,'2023-03-21 11:29:59','合同介绍6',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(7,3,2,7,'1679369399905','合同名称7','upload/file.rar','签订地点7',3,'2023-03-21 11:29:59','合同介绍7',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(8,3,2,8,'1679369399962','合同名称8','upload/file.rar','签订地点8',3,'2023-03-21 11:29:59','合同介绍8',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(9,1,3,9,'1679369399987','合同名称9','upload/file.rar','签订地点9',3,'2023-03-21 11:29:59','合同介绍9',2,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(10,2,1,10,'1679369399924','合同名称10','upload/file.rar','签订地点10',3,'2023-03-21 11:29:59','合同介绍10',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(11,2,1,11,'1679369399911','合同名称11','upload/file.rar','签订地点11',2,'2023-03-21 11:29:59','合同介绍11',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(12,2,1,12,'1679369399933','合同名称12','upload/file.rar','签订地点12',1,'2023-03-21 11:29:59','合同介绍12',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(13,1,1,13,'1679369399942','合同名称13','upload/file.rar','签订地点13',1,'2023-03-21 11:29:59','合同介绍13',2,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(14,2,2,14,'1679369399906','合同名称14','upload/file.rar','签订地点14',2,'2023-03-21 11:29:59','合同介绍14',1,1,'2023-03-21 11:29:59','2023-03-21 11:29:59'),(15,4,1,12,'1679375153203','合同标题111','/upload/1679375160405.doc','签订地点111',3,'2023-03-21 13:06:10','<p>更多的是个第三个</p>',1,1,'2023-03-21 13:06:13','2023-03-21 13:06:13');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '老师id',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','7dkbwam8i7jjcykqgxa5idv684its5ml','2023-03-21 11:36:45','2023-03-21 14:04:09'),(2,1,'admin','users','管理员','pj99btgeli4t9cpyz8jvm02p5g37ma6y','2023-03-21 11:47:29','2023-03-21 14:08:26'),(3,4,'a5','yonghu','用户','du9fwbt30eg5k969wa61es7wcbi72s7m','2023-03-21 13:03:04','2023-03-21 14:03:04'),(4,1,'a1','yuangong','员工','i7ek56ew2tj776fs6blbp60ococuuw8g','2023-03-21 13:05:23','2023-03-21 14:05:24');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-21 11:29:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-03-21 11:29:59'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-03-21 11:29:59'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-03-21 11:29:59'),(4,'a5','123456','张5','17788889999','411111444455555555','upload/1679375030324.jpg',2,'5@qq.com','2023-03-21 13:02:59');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`create_time`) values (1,'a1','123456','员工姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',1,'1@qq.com','2023-03-21 11:29:59'),(2,'a2','123456','员工姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',2,'2@qq.com','2023-03-21 11:29:59'),(3,'a3','123456','员工姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',2,'3@qq.com','2023-03-21 11:29:59');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
