/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhanguishejigongsipingmianbuzhi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhanguishejigongsipingmianbuzhi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhanguishejigongsipingmianbuzhi`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'张三','13312233134','在地图选择',1,'2022-01-10 16:43:40','2022-01-10 16:43:40','2022-01-10 16:43:40'),(2,3,'王五','17744454154','河南省郑州市惠济区天河路和开元路西南交叉口向西260米三全食品股份有限公司',2,'2022-01-11 16:13:09','2022-01-11 16:13:08','2022-01-11 16:13:09');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641795874875.jpg'),(2,'picture2','http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641795885661.jpg'),(3,'picture3','http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641795898370.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'sex_types','性别类型',1,'男',NULL,NULL,'2022-01-10 10:04:26'),(66,'sex_types','性别类型',2,'女',NULL,NULL,'2022-01-10 10:04:26'),(67,'goods_types','展柜类型名称',1,'类型1',NULL,NULL,'2022-01-10 10:04:26'),(68,'goods_types','展柜类型名称',2,'类型2',NULL,NULL,'2022-01-10 10:04:26'),(69,'goods_types','展柜类型名称',3,'类型3',NULL,NULL,'2022-01-10 10:04:26'),(70,'news_types','公告类型名称',1,'公告类型1',NULL,NULL,'2022-01-10 10:04:26'),(71,'news_types','公告类型名称',2,'公告类型2',NULL,NULL,'2022-01-10 10:04:26'),(72,'goods_order_types','订单类型名称',1,'已支付',NULL,NULL,'2022-01-10 10:04:26'),(73,'goods_order_types','订单类型名称',2,'已退款',NULL,NULL,'2022-01-10 10:04:26'),(74,'goods_order_types','订单类型名称',3,'已发送需求',NULL,NULL,'2022-01-10 10:04:26'),(75,'goods_order_types','订单类型名称',4,'已发送设计图',NULL,NULL,'2022-01-10 10:04:26'),(76,'goods_order_types','订单类型名称',5,'通过',NULL,NULL,'2022-01-10 10:04:26'),(77,'goods_order_types','订单类型名称',6,'拒绝',NULL,NULL,'2022-01-10 10:04:26'),(78,'goods_order_types','订单类型名称',7,'已发货',NULL,NULL,'2022-01-10 10:04:26'),(79,'goods_order_types','订单类型名称',8,'已完成',NULL,NULL,'2022-01-10 10:04:26'),(80,'goods_order_payment_types','订单支付类型名称',1,'现金',NULL,NULL,'2022-01-10 10:04:26'),(81,'goods_order_payment_types','订单支付类型名称',2,'积分',NULL,NULL,'2022-01-10 10:04:26'),(82,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-01-10 14:20:55'),(83,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-01-10 14:20:55'),(84,'goods_types','展柜类型名称',4,'展柜类型4',NULL,NULL,'2022-01-11 16:10:29');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '展柜名称 Search111',
  `goods_types` int(4) DEFAULT NULL COMMENT '展柜类型 Search111',
  `goods_photo` varchar(255) DEFAULT NULL COMMENT '展柜图片',
  `goods_pinpai` varchar(255) DEFAULT NULL COMMENT '品牌',
  `goods_new_money` decimal(20,2) DEFAULT NULL COMMENT '价格',
  `goods_caizhi` varchar(255) DEFAULT NULL COMMENT '材质',
  `goods_fujia` varchar(255) DEFAULT NULL COMMENT '附加功能',
  `goods_candi` varchar(255) DEFAULT NULL COMMENT '产地',
  `goods_content` varchar(255) DEFAULT NULL COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='展柜设计';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`goods_types`,`goods_photo`,`goods_pinpai`,`goods_new_money`,`goods_caizhi`,`goods_fujia`,`goods_candi`,`goods_content`,`create_time`) values (1,'展柜1',1,'http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641795040423.webp','品牌1','1190.00','材质1','附加功能1','产地1','<p><span style=\"color: rgb(96, 98, 102);\">详情1</span></p>','2022-01-10 14:10:56'),(2,'展柜2',2,'http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641795088096.webp','品牌2','2000.00','材质2','附加功能2','产地2','<p><span style=\"color: rgb(96, 98, 102);\">详情2</span></p>','2022-01-10 14:11:29'),(3,'展柜3',3,'http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641795101108.webp','品牌3','9000.00','材质3','附加功能3','产地3','<p><span style=\"color: rgb(96, 98, 102);\">详情3</span></p>','2022-01-10 14:11:59'),(4,'展柜4',4,'http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641888559779.webp','品牌4','1852.00','材质4','附加功能4','产地4','<p><span style=\"color: rgb(96, 98, 102);\">详情4</span></p>','2022-01-11 16:09:40');

/*Table structure for table `goods_liuyan` */

DROP TABLE IF EXISTS `goods_liuyan`;

CREATE TABLE `goods_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '展柜',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shouhou_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='评价';

/*Data for the table `goods_liuyan` */

insert  into `goods_liuyan`(`id`,`goods_id`,`yonghu_id`,`shouhou_commentback_text`,`insert_time`,`create_time`) values (18,1,3,'33221','2022-01-11 16:12:35','2022-01-11 16:12:35');

/*Table structure for table `goods_order` */

DROP TABLE IF EXISTS `goods_order`;

CREATE TABLE `goods_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `goods_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `goods_xuqiu_photo` varchar(255) DEFAULT NULL COMMENT '展柜需求图片',
  `goods_xuqiu_text` text COMMENT '展柜需求详情',
  `goods_shejitu_photo` varchar(255) DEFAULT NULL COMMENT '商家设计图',
  `goods_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `goods_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `goods_order` */

insert  into `goods_order`(`id`,`goods_order_uuid_number`,`address_id`,`goods_id`,`yonghu_id`,`buy_number`,`goods_order_true_price`,`goods_xuqiu_photo`,`goods_xuqiu_text`,`goods_shejitu_photo`,`goods_order_types`,`goods_order_payment_types`,`insert_time`,`create_time`) values (13,'1641887340680',1,1,1,1,'1190.00','http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641887360766.webp','展柜需求1\n222222\n33333','http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641887448076.webp',8,1,'2022-01-11 15:49:01','2022-01-11 15:49:01'),(14,'1641888813216',2,1,3,1,'1190.00','http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641889501287.webp','展柜需求11111111','http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641889580975.webp',8,1,'2022-01-11 16:13:33','2022-01-11 16:13:33');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告1',1,'http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641795914926.jpg','2022-01-10 14:25:17','<p><span style=\"color: rgb(96, 98, 102);\">公告详情1</span></p>','2022-01-10 14:25:17'),(4,'公告2',2,'http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641795926614.jpg','2022-01-10 14:25:34','<p><span style=\"color: rgb(96, 98, 102);\">公告详情2</span></p>','2022-01-10 14:25:34');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','q6z557viyb0ywocsxkfo626aihrmbhb9','2022-01-10 11:07:10','2022-01-11 17:26:09'),(2,1,'111','yonghu','用户','820pp4rijcgmrzxumb64o26r4m6gsgnd','2022-01-10 16:24:23','2022-01-11 17:03:24'),(3,2,'222','yonghu','用户','b2m3dagyjg2q5qx1t8b8bs3b9lryxdxt','2022-01-11 16:04:15','2022-01-11 17:04:16'),(4,3,'123','yonghu','用户','3upoipk23hqoiwhgnde9lh00dcyhib5n','2022-01-11 16:12:17','2022-01-11 17:28:07');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`new_money`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410882199911214411','17785599695','9920.00','http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641785237860.webp','2022-01-10 11:27:18'),(3,'123','123456','用户123',1,'410881199911211112','17785599693','8809.00','http://localhost:8080/zhanguishejigongsipingmianbuzhi/upload/1641889762470.jpg','2022-01-11 16:12:03');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
