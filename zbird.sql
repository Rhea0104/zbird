SET NAMES UTF8;
#丢弃数据库
DROP DATABASE IF EXISTS zbird;
#创建数据库
CREATE DATABASE zbird CHARSET UTF8;
#进入数据库
USE zbird;
#创建用户表zbird_user
CREATE TABLE zbird_user(
	uid INT PRIMARY KEY AUTO_INCREMENT, 
	uname VARCHAR(32),
	upwd VARCHAR(32),
	email VARCHAR(64),
	user_name VARCHAR(8),
	phone CHAR(11),
	gender BOOL,
	avatar VARCHAR(128)
);
#插入数据
INSERT INTO zbird_user VALUES(null,'Dolphin','123456','Dolphin@163.com','大凤','18883209560',0,'img/avatar/Dolphin.jpg');
INSERT INTO zbird_user VALUES(null,'Rhea','123456','Rhea@163.com','叶子','18883124276',0,'img/avatar/Rhea.jpg');
INSERT INTO zbird_user VALUES(null,'Eva','123456','Eva@163.com','二娃','13594659940',0,'img/avatar/Eva.jpg');
INSERT INTO zbird_user VALUES(null,'DuoDuo','123456','DuoDuo@163.com','多多','15902351994',0,'img/avatar/DuoDuo.jpg');
#创建商品列表家族zbird_product_family
CREATE TABLE zbird_product_family(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	fname VARCHAR(32)
);
#插入数据
INSERT INTO zbird_product_family VALUES(null,'点滴时光');
INSERT INTO zbird_product_family VALUES(null,'爱河');
INSERT INTO zbird_product_family VALUES(null,'聆听');
INSERT INTO zbird_product_family VALUES(null,'纯境');
INSERT INTO zbird_product_family VALUES(null,'灵境');
INSERT INTO zbird_product_family VALUES(null,'比翼');
INSERT INTO zbird_product_family VALUES(null,'轨迹IX');
INSERT INTO zbird_product_family VALUES(null,'深情');
INSERT INTO zbird_product_family VALUES(null,'摘星之旅');
#创建商品列表zbird_product
CREATE TABLE zbird_product(
	pid INT PRIMARY KEY AUTO_INCREMENT,     #产品id
	family_id INT,				#家族号
	title VARCHAR(32),			#标题
	subtitle VARCHAR(128),			#副标题
	introduction VARCHAR(256),		#简单介绍
	price DECIMAL(9,2),			#价格
	promise VARCHAR(64),			#服务承诺
	spec VARCHAR(64),			#规格型号

	details VARCHAR(1024),			#详细说明
	shelf_time BIGINT,			#上架时间
	sold_count INT,				#已售出的数量
	is_onsale BOOLEAN			#是否促销
);
#插入数据
INSERT INTO zbird_product VALUES(1,'1','点滴时光','铂950-红18K钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻15颗  0.07克拉','7090','*退货补运费 *30天无忧退货 *48小时快速退款','铂950-红18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(2,'2','爱河','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻9颗  0.03克拉 辅钻8颗  0.02克拉','4070','*退货补运费 *30天无忧退货 *48小时快速退款','铂900','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(3,'2','爱河','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻9颗  0.03克拉 辅钻8颗  0.02克拉','4070','*退货补运费 *30天无忧退货 *48小时快速退款','黄18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(4,'2','爱河','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻9颗  0.03克拉 辅钻8颗  0.02克拉','4070','*退货补运费 *30天无忧退货 *48小时快速退款','红18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(5,'2','爱河','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻9颗  0.03克拉 辅钻8颗  0.02克拉','4070','*退货补运费 *30天无忧退货 *48小时快速退款','白18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(6,'3','聆听','18K金钻石戒指','男戒　主钻1颗  0.00克拉 女戒　主钻3颗  0.06克拉 辅钻5颗  0.05克拉','6990','*退货补运费 *30天无忧退货 *48小时快速退款','铂950','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(7,'3','聆听','18K金钻石戒指','男戒　主钻1颗  0.00克拉 女戒　主钻3颗  0.06克拉 辅钻5颗  0.05克拉','6990','*退货补运费 *30天无忧退货 *48小时快速退款','黄18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(8,'3','聆听','18K金钻石戒指','男戒　主钻1颗  0.00克拉 女戒　主钻3颗  0.06克拉 辅钻5颗  0.05克拉','6990','*退货补运费 *30天无忧退货 *48小时快速退款','红18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(9,'3','聆听','18K金钻石戒指','男戒　主钻1颗  0.00克拉 女戒　主钻3颗  0.06克拉 辅钻5颗  0.05克拉','6990','*退货补运费 *30天无忧退货 *48小时快速退款','白18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(10,'4','纯境','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻15颗  0.07克拉','5330','*退货补运费 *30天无忧退货 *48小时快速退款','铂950','','2019-01-01','345','0');
INSERT INTO zbird_product VALUES(11,'4','纯境','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻15颗  0.07克拉','5330','*退货补运费 *30天无忧退货 *48小时快速退款','黄18K金','','2019-01-01','345','0');
INSERT INTO zbird_product VALUES(12,'4','纯境','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻15颗  0.07克拉','5330','*退货补运费 *30天无忧退货 *48小时快速退款','红18K金','','2019-01-01','345','0');
INSERT INTO zbird_product VALUES(13,'4','纯境','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻15颗  0.07克拉','5330','*退货补运费 *30天无忧退货 *48小时快速退款','白18K金','','2019-01-01','345','0');
INSERT INTO zbird_product VALUES(14,'5','灵境','18K金钻石戒指','男戒　主钻2颗  0.02克拉 女戒　主钻1颗  0.02克拉 辅钻2颗  0.02克拉','7280','*退货补运费 *30天无忧退货 *48小时快速退款','铂950','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(15,'5','灵境','18K金钻石戒指','男戒　主钻2颗  0.02克拉 女戒　主钻1颗  0.02克拉 辅钻2颗  0.02克拉','7280','*退货补运费 *30天无忧退货 *48小时快速退款','黄18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(16,'5','灵境','18K金钻石戒指','男戒　主钻2颗  0.02克拉 女戒　主钻1颗  0.02克拉 辅钻2颗  0.02克拉','7280','*退货补运费 *30天无忧退货 *48小时快速退款','红18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(17,'5','灵境','18K金钻石戒指','男戒　主钻2颗  0.02克拉 女戒　主钻1颗  0.02克拉 辅钻2颗  0.02克拉','7280','*退货补运费 *30天无忧退货 *48小时快速退款','白18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(18,'6','比翼','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻46颗  0.18克拉','8260','*退货补运费 *30天无忧退货 *48小时快速退款','铂950','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(19,'6','比翼','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻46颗  0.18克拉','8260','*退货补运费 *30天无忧退货 *48小时快速退款','黄18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(20,'6','比翼','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻46颗  0.18克拉','8260','*退货补运费 *30天无忧退货 *48小时快速退款','白18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(21,'6','比翼','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻46颗  0.18克拉','8260','*退货补运费 *30天无忧退货 *48小时快速退款','红18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(22,'7','轨迹IX','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻5颗  0.06克拉 辅钻2颗  0.01克拉','4870','*退货补运费 *30天无忧退货 *48小时快速退款','铂950','','2019-04-22','4394','0');
INSERT INTO zbird_product VALUES(23,'7','轨迹IX','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻5颗  0.06克拉 辅钻2颗  0.01克拉','4870','*退货补运费 *30天无忧退货 *48小时快速退款','黄18K金','','2019-04-22','4394','0');
INSERT INTO zbird_product VALUES(24,'7','轨迹IX','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻5颗  0.06克拉 辅钻2颗  0.01克拉','4870','*退货补运费 *30天无忧退货 *48小时快速退款','红18K金','','2019-04-22','4394','0');
INSERT INTO zbird_product VALUES(25,'7','轨迹IX','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻5颗  0.06克拉 辅钻2颗  0.01克拉','4870','*退货补运费 *30天无忧退货 *48小时快速退款','白18K金','','2019-04-22','4394','0');
INSERT INTO zbird_product VALUES(26,'8','深情','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻1颗  0.02克拉','5800','*退货补运费 *30天无忧退货 *48小时快速退款','铂950','','2019-01-01','335','0');
INSERT INTO zbird_product VALUES(27,'8','深情','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻1颗  0.02克拉','5800','*退货补运费 *30天无忧退货 *48小时快速退款','黄18K金','','2019-01-01','335','0');
INSERT INTO zbird_product VALUES(28,'8','深情','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻1颗  0.02克拉','5800','*退货补运费 *30天无忧退货 *48小时快速退款','红18K金','','2019-01-01','335','0');
INSERT INTO zbird_product VALUES(29,'8','深情','18K金钻石戒指','男戒　主钻0颗  0.00克拉 女戒　主钻1颗  0.02克拉','5800','*退货补运费 *30天无忧退货 *48小时快速退款','白18K金','','2019-01-01','335','0');
INSERT INTO zbird_product VALUES(30,'9','摘星之旅','18K金钻石戒指','男戒　主钻1颗  0.01克拉 女戒　主钻1颗  0.02克拉 辅钻38颗  0.11克拉','7120','*退货补运费 *30天无忧退货 *48小时快速退款','铂950','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(31,'9','摘星之旅','18K金钻石戒指','男戒　主钻1颗  0.01克拉 女戒　主钻1颗  0.02克拉 辅钻38颗  0.11克拉','7120','*退货补运费 *30天无忧退货 *48小时快速退款','黄18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(32,'9','摘星之旅','18K金钻石戒指','男戒　主钻1颗  0.01克拉 女戒　主钻1颗  0.02克拉 辅钻38颗  0.11克拉','7120','*退货补运费 *30天无忧退货 *48小时快速退款','红18K金','','2019-01-01','389','0');
INSERT INTO zbird_product VALUES(33,'9','摘星之旅','18K金钻石戒指','男戒　主钻1颗  0.01克拉 女戒　主钻1颗  0.02克拉 辅钻38颗  0.11克拉','7120','*退货补运费 *30天无忧退货 *48小时快速退款','白18K金','','2019-01-01','389','0');
#首页轮播
CREATE TABLE zbird_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
INSERT INTO zbird_index_carousel VALUES(null,'/img/index/carousel/carousel1','carousel1','#');
INSERT INTO zbird_index_carousel VALUES(null,'/img/index/carousel/carousel2','carousel2','#');
INSERT INTO zbird_index_carousel VALUES(null,'/img/index/carousel/carousel2','carousel3','#');
INSERT INTO zbird_index_carousel VALUES(null,'/img/index/carousel/carousel2','carousel4','#');
INSERT INTO zbird_index_carousel VALUES(null,'/img/index/carousel/carousel2','carousel5','#');
#戒指图片
CREATE TABLE zbird_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,             #编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);
#INSERT INTO zbird_pic VALUES(),