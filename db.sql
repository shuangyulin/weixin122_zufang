/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm48si3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm48si3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm48si3`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm48si3/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm48si3/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm48si3/upload/picture3.jpg'),(6,'picture4','http://localhost:8080/ssm48si3/upload/1618054241421.jpg');

/*Table structure for table `discussfangwuxinxi` */

DROP TABLE IF EXISTS `discussfangwuxinxi`;

CREATE TABLE `discussfangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618054397424 DEFAULT CHARSET=utf8 COMMENT='房屋信息评论表';

/*Data for the table `discussfangwuxinxi` */

insert  into `discussfangwuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-04-09 22:17:06',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-04-09 22:17:06',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-04-09 22:17:06',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-04-09 22:17:06',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-04-09 22:17:06',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-04-09 22:17:06',6,6,'用户名6','评论内容6','回复内容6'),(1618054397423,'2021-04-10 19:33:16',35,1618054371947,'12','测试','');

/*Table structure for table `fangdong` */

DROP TABLE IF EXISTS `fangdong`;

CREATE TABLE `fangdong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangdongzhanghao` varchar(200) NOT NULL COMMENT '房东账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangdongzhanghao` (`fangdongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='房东';

/*Data for the table `fangdong` */

insert  into `fangdong`(`id`,`addtime`,`fangdongzhanghao`,`mima`,`fangdongxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`lianxishouji`,`nianling`,`sfsh`,`shhf`) values (21,'2021-04-09 22:17:06','房东1','123456','房东姓名1','男','http://localhost:8080/ssm48si3/upload/fangdong_touxiang1.jpg','440300199101010001','13823888881','年龄1','是',''),(22,'2021-04-09 22:17:06','房东2','123456','房东姓名2','男','http://localhost:8080/ssm48si3/upload/fangdong_touxiang2.jpg','440300199202020002','13823888882','年龄2','是',''),(23,'2021-04-09 22:17:06','房东3','123456','房东姓名3','男','http://localhost:8080/ssm48si3/upload/fangdong_touxiang3.jpg','440300199303030003','13823888883','年龄3','是',''),(24,'2021-04-09 22:17:06','房东4','123456','房东姓名4','男','http://localhost:8080/ssm48si3/upload/fangdong_touxiang4.jpg','440300199404040004','13823888884','年龄4','是',''),(25,'2021-04-09 22:17:06','房东5','123456','房东姓名5','男','http://localhost:8080/ssm48si3/upload/fangdong_touxiang5.jpg','440300199505050005','13823888885','年龄5','是',''),(26,'2021-04-09 22:17:06','房东6','123456','房东姓名6','男','http://localhost:8080/ssm48si3/upload/fangdong_touxiang6.jpg','440300199606060006','13823888886','年龄6','否','');

/*Table structure for table `fangwuleixing` */

DROP TABLE IF EXISTS `fangwuleixing`;

CREATE TABLE `fangwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `jianjie` longtext COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618054135065 DEFAULT CHARSET=utf8 COMMENT='房屋类型';

/*Data for the table `fangwuleixing` */

insert  into `fangwuleixing`(`id`,`addtime`,`fangwuleixing`,`jianjie`) values (41,'2021-04-09 22:17:06','房屋类型1','简介1'),(42,'2021-04-09 22:17:06','房屋类型2','简介2'),(43,'2021-04-09 22:17:06','房屋类型3','简介3'),(44,'2021-04-09 22:17:06','房屋类型4','简介4'),(45,'2021-04-09 22:17:06','房屋类型5','简介5'),(46,'2021-04-09 22:17:06','房屋类型6','简介6'),(1618054135064,'2021-04-10 19:28:54','电梯房','测试');

/*Table structure for table `fangwuxinxi` */

DROP TABLE IF EXISTS `fangwuxinxi`;

CREATE TABLE `fangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `mianji` varchar(200) NOT NULL COMMENT '面积',
  `zujin` int(11) NOT NULL COMMENT '租金',
  `suozaiquyu` varchar(200) DEFAULT NULL COMMENT '所在区域',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `xiangqing` longtext COMMENT '详情',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618054313968 DEFAULT CHARSET=utf8 COMMENT='房屋信息';

/*Data for the table `fangwuxinxi` */

insert  into `fangwuxinxi`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`zhuangtai`,`tupian`,`mianji`,`zujin`,`suozaiquyu`,`xiangxidizhi`,`xiangqing`,`fangdongzhanghao`,`fangdongxingming`,`lianxishouji`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (31,'2021-04-09 22:17:06','房屋名称1','房屋类型1','待出租','http://localhost:8080/ssm48si3/upload/fangwuxinxi_tupian1.jpg','面积1',1,'所在区域1','详细地址1','详情1','房东账号1','房东姓名1','13823888881','是','','2021-04-09 22:17:06',1),(32,'2021-04-09 22:17:06','房屋名称2','房屋类型2','待出租','http://localhost:8080/ssm48si3/upload/fangwuxinxi_tupian2.jpg','面积2',2,'所在区域2','详细地址2','详情2','房东账号2','房东姓名2','13823888882','是','','2021-04-09 22:17:06',2),(33,'2021-04-09 22:17:06','房屋名称3','房屋类型3','待出租','http://localhost:8080/ssm48si3/upload/fangwuxinxi_tupian3.jpg','面积3',3,'所在区域3','详细地址3','详情3','房东账号3','房东姓名3','13823888883','是','','2021-04-09 22:17:06',3),(34,'2021-04-09 22:17:06','房屋名称4','房屋类型4','待出租','http://localhost:8080/ssm48si3/upload/fangwuxinxi_tupian4.jpg','面积4',4,'所在区域4','详细地址4','详情4','房东账号4','房东姓名4','13823888884','是','','2021-04-09 22:17:06',4),(35,'2021-04-09 22:17:06','房屋名称5','房屋类型5','待出租','http://localhost:8080/ssm48si3/upload/fangwuxinxi_tupian5.jpg','面积5',5,'所在区域5','详细地址5','详情5','房东账号5','房东姓名5','13823888885','是','','2021-04-10 19:39:09',10),(1618054313967,'2021-04-10 19:31:53','测试房屋','电梯房','待出租','http://localhost:8080/ssm48si3/upload/1618054276303.jpg','200',200,'南区八栋','565房','<p>该房多少<img src=\"http://localhost:8080/ssm48si3/upload/1618054312066.jpg\"></p>','房东1','房东姓名1','13823888881','是','','2021-04-10 19:34:18',1);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618054734436 DEFAULT CHARSET=utf8 COMMENT='交流区';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (71,'2021-04-09 22:17:06','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-04-09 22:17:06','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-04-09 22:17:06','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-04-09 22:17:06','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-04-09 22:17:06','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-04-09 22:17:06','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1618054700916,'2021-04-10 19:38:19','测试帖子','测试内容',0,1618054371947,'12','开放'),(1618054709218,'2021-04-10 19:38:29',NULL,'测试评论',1618054700916,1618054371947,'12',NULL),(1618054714005,'2021-04-10 19:38:33',NULL,'12',1618054709218,1618054371947,'12',NULL),(1618054734435,'2021-04-10 19:38:54','测试私有','12',0,1618054371947,'12','关闭');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618054463185 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618054386403,'2021-04-10 19:33:05',1618054371947,35,'fangwuxinxi','房屋名称5','http://localhost:8080/ssm48si3/upload/fangwuxinxi_tupian5.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','gnk38cwoo3t59q6nj1h8vh8sppr55dc8','2021-04-10 19:26:21','2021-04-10 20:40:21'),(2,21,'房东1','fangdong','房东','yjxc71l6kqv77bh937tzgdm7f4wa7ca3','2021-04-10 19:30:55','2021-04-10 20:39:51'),(3,1618054371947,'12','zuke','租客','i7y223z68d9q3th2vcybd25ft772n6mh','2021-04-10 19:32:58','2021-04-10 20:32:58');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-09 22:17:06');

/*Table structure for table `zujinxinxi` */

DROP TABLE IF EXISTS `zujinxinxi`;

CREATE TABLE `zujinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `suozaiquyu` varchar(200) DEFAULT NULL COMMENT '所在区域',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `zujin` varchar(200) DEFAULT NULL COMMENT '租金',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `zukexingming` varchar(200) DEFAULT NULL COMMENT '租客姓名',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `zhifupingzheng` varchar(200) DEFAULT NULL COMMENT '支付凭证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618054683876 DEFAULT CHARSET=utf8 COMMENT='租金信息';

/*Data for the table `zujinxinxi` */

insert  into `zujinxinxi`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`suozaiquyu`,`xiangxidizhi`,`zujin`,`yonghuming`,`zukexingming`,`fangdongzhanghao`,`fangdongxingming`,`zhifupingzheng`,`sfsh`,`shhf`,`ispay`,`userid`) values (61,'2021-04-09 22:17:06','房屋名称1','房屋类型1','所在区域1','详细地址1','租金1','用户名1','租客姓名1','房东账号1','房东姓名1','http://localhost:8080/ssm48si3/upload/zujinxinxi_zhifupingzheng1.jpg','是','','未支付',1),(62,'2021-04-09 22:17:06','房屋名称2','房屋类型2','所在区域2','详细地址2','租金2','用户名2','租客姓名2','房东账号2','房东姓名2','http://localhost:8080/ssm48si3/upload/zujinxinxi_zhifupingzheng2.jpg','是','','未支付',2),(63,'2021-04-09 22:17:06','房屋名称3','房屋类型3','所在区域3','详细地址3','租金3','用户名3','租客姓名3','房东账号3','房东姓名3','http://localhost:8080/ssm48si3/upload/zujinxinxi_zhifupingzheng3.jpg','是','','未支付',3),(64,'2021-04-09 22:17:06','房屋名称4','房屋类型4','所在区域4','详细地址4','租金4','用户名4','租客姓名4','房东账号4','房东姓名4','http://localhost:8080/ssm48si3/upload/zujinxinxi_zhifupingzheng4.jpg','是','','未支付',4),(65,'2021-04-09 22:17:06','房屋名称5','房屋类型5','所在区域5','详细地址5','租金5','用户名5','租客姓名5','房东账号5','房东姓名5','http://localhost:8080/ssm48si3/upload/zujinxinxi_zhifupingzheng5.jpg','是','','未支付',5),(66,'2021-04-09 22:17:06','房屋名称6','房屋类型6','所在区域6','详细地址6','租金6','用户名6','租客姓名6','房东账号6','房东姓名6','http://localhost:8080/ssm48si3/upload/zujinxinxi_zhifupingzheng6.jpg','是','','未支付',6),(1618054683875,'2021-04-10 19:38:03','测试房屋','电梯房','南区八栋','565房','200','12','12','房东1','房东姓名1','http://localhost:8080/ssm48si3/upload/1618054681865.png','是','支付成功！','',1618054371947);

/*Table structure for table `zuke` */

DROP TABLE IF EXISTS `zuke`;

CREATE TABLE `zuke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zukexingming` varchar(200) DEFAULT NULL COMMENT '租客姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `zhiye` varchar(200) DEFAULT NULL COMMENT '职业',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiatingdizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618054371948 DEFAULT CHARSET=utf8 COMMENT='租客';

/*Data for the table `zuke` */

insert  into `zuke`(`id`,`addtime`,`yonghuming`,`mima`,`zukexingming`,`xingbie`,`touxiang`,`nianling`,`zhiye`,`shenfenzheng`,`shouji`,`jiatingdizhi`) values (11,'2021-04-09 22:17:06','租客1','123456','租客姓名1','男','http://localhost:8080/ssm48si3/upload/zuke_touxiang1.jpg','年龄1','职业1','440300199101010001','13823888881','家庭地址1'),(12,'2021-04-09 22:17:06','租客2','123456','租客姓名2','男','http://localhost:8080/ssm48si3/upload/zuke_touxiang2.jpg','年龄2','职业2','440300199202020002','13823888882','家庭地址2'),(13,'2021-04-09 22:17:06','租客3','123456','租客姓名3','男','http://localhost:8080/ssm48si3/upload/zuke_touxiang3.jpg','年龄3','职业3','440300199303030003','13823888883','家庭地址3'),(14,'2021-04-09 22:17:06','租客4','123456','租客姓名4','男','http://localhost:8080/ssm48si3/upload/zuke_touxiang4.jpg','年龄4','职业4','440300199404040004','13823888884','家庭地址4'),(15,'2021-04-09 22:17:06','租客5','123456','租客姓名5','男','http://localhost:8080/ssm48si3/upload/zuke_touxiang5.jpg','年龄5','职业5','440300199505050005','13823888885','家庭地址5'),(16,'2021-04-09 22:17:06','租客6','123456','租客姓名6','男','http://localhost:8080/ssm48si3/upload/zuke_touxiang6.jpg','年龄6','职业6','440300199606060006','13823888886','家庭地址6'),(1618054371947,'2021-04-10 19:32:51','12','12','12','男',NULL,'20','职业人','441323199602053265','12365479651','南区');

/*Table structure for table `zulinhetong` */

DROP TABLE IF EXISTS `zulinhetong`;

CREATE TABLE `zulinhetong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `zujin` varchar(200) DEFAULT NULL COMMENT '租金',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `zukexingming` varchar(200) DEFAULT NULL COMMENT '租客姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `zufangzhuangtai` varchar(200) DEFAULT NULL COMMENT '租房状态',
  `zulinriqi` varchar(200) DEFAULT NULL COMMENT '租赁日期',
  `qiandingshijian` datetime DEFAULT NULL COMMENT '签订时间',
  `zulinpingzheng` varchar(200) DEFAULT NULL COMMENT '租赁凭证',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwubianhao` (`fangwubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618054587792 DEFAULT CHARSET=utf8 COMMENT='租赁合同';

/*Data for the table `zulinhetong` */

insert  into `zulinhetong`(`id`,`addtime`,`fangwubianhao`,`fangwumingcheng`,`zhuangtai`,`zujin`,`xiangxidizhi`,`yonghuming`,`zukexingming`,`shouji`,`shenfenzheng`,`fangdongzhanghao`,`fangdongxingming`,`lianxishouji`,`zufangzhuangtai`,`zulinriqi`,`qiandingshijian`,`zulinpingzheng`,`userid`) values (51,'2021-04-09 22:17:06','房屋编号1','房屋名称1','状态1','租金1','详细地址1','用户名1','租客姓名1','手机1','身份证1','房东账号1','房东姓名1','联系手机1','已退租','租赁日期1','2021-04-09 22:17:06','http://localhost:8080/ssm48si3/upload/zulinhetong_zulinpingzheng1.jpg',1),(52,'2021-04-09 22:17:06','房屋编号2','房屋名称2','状态2','租金2','详细地址2','用户名2','租客姓名2','手机2','身份证2','房东账号2','房东姓名2','联系手机2','已退租','租赁日期2','2021-04-09 22:17:06','http://localhost:8080/ssm48si3/upload/zulinhetong_zulinpingzheng2.jpg',2),(53,'2021-04-09 22:17:06','房屋编号3','房屋名称3','状态3','租金3','详细地址3','用户名3','租客姓名3','手机3','身份证3','房东账号3','房东姓名3','联系手机3','已退租','租赁日期3','2021-04-09 22:17:06','http://localhost:8080/ssm48si3/upload/zulinhetong_zulinpingzheng3.jpg',3),(54,'2021-04-09 22:17:06','房屋编号4','房屋名称4','状态4','租金4','详细地址4','用户名4','租客姓名4','手机4','身份证4','房东账号4','房东姓名4','联系手机4','已退租','租赁日期4','2021-04-09 22:17:06','http://localhost:8080/ssm48si3/upload/zulinhetong_zulinpingzheng4.jpg',4),(55,'2021-04-09 22:17:06','房屋编号5','房屋名称5','状态5','租金5','详细地址5','用户名5','租客姓名5','手机5','身份证5','房东账号5','房东姓名5','联系手机5','已退租','租赁日期5','2021-04-09 22:17:06','http://localhost:8080/ssm48si3/upload/zulinhetong_zulinpingzheng5.jpg',5),(56,'2021-04-09 22:17:06','房屋编号6','房屋名称6','状态6','租金6','详细地址6','用户名6','租客姓名6','手机6','身份证6','房东账号6','房东姓名6','联系手机6','已退租','租赁日期6','2021-04-09 22:17:06','http://localhost:8080/ssm48si3/upload/zulinhetong_zulinpingzheng6.jpg',6),(1618054587791,'2021-04-10 19:36:27','1618054556786','测试房屋','待出租','200','565房','12','12','12365479651','441323199602053265','房东1','房东姓名1','13823888881','在租中','到2020年5月30号','2021-04-10 19:35:56','http://localhost:8080/ssm48si3/upload/1618054583679.jpg',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
