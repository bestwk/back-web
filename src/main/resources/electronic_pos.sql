/*
Navicat MySQL Data Transfer

Source Server         : jie
Source Server Version : 50528
Source Host           : 192.168.0.250:1158
Source Database       : electronic_pos

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-10-15 15:45:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_dic_city
-- ----------------------------
DROP TABLE IF EXISTS `t_dic_city`;
CREATE TABLE `t_dic_city` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_NAME` varchar(100) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `PROVINCE_CODE` varchar(30) DEFAULT NULL,
  `CITY_CODE` varchar(20) DEFAULT NULL,
  `CITY_CODE_CN` varchar(30) DEFAULT NULL,
  `PROVINCE_CODE_CN` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `city_index` (`CITY_CODE`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1065 DEFAULT CHARSET=utf8 COMMENT='城市';

-- ----------------------------
-- Records of t_dic_city
-- ----------------------------
INSERT INTO `t_dic_city` VALUES ('692', '鞍山市', 'T', null, '21000000', '21030000', '210300000000', '210000');
INSERT INTO `t_dic_city` VALUES ('693', '抚顺市', 'T', null, '21000000', '21040000', '210400000000', '210000');
INSERT INTO `t_dic_city` VALUES ('694', '本溪市', 'T', null, '21000000', '21050000', '210500000000', '210000');
INSERT INTO `t_dic_city` VALUES ('695', '通辽市', 'T', null, '15000000', '15050000', '150500000000', '150000');
INSERT INTO `t_dic_city` VALUES ('696', '鄂尔多斯市', 'T', null, '15000000', '15060000', '150600000000', '150000');
INSERT INTO `t_dic_city` VALUES ('697', '呼伦贝尔市', 'T', null, '15000000', '15070000', '150700000000', '150000');
INSERT INTO `t_dic_city` VALUES ('698', '兴安盟', 'T', null, '15000000', '15220000', '152200000000', '150000');
INSERT INTO `t_dic_city` VALUES ('699', '市辖区', 'T', null, '12000000', '12010000', '120100000000', '120000');
INSERT INTO `t_dic_city` VALUES ('700', '天津市辖县', 'T', null, '12000000', '12020000', '120200000000', '120000');
INSERT INTO `t_dic_city` VALUES ('701', '石家庄市', 'T', null, '13000000', '13010000', '130100000000', '130000');
INSERT INTO `t_dic_city` VALUES ('702', '沧州市', 'T', null, '13000000', '13090000', '130900000000', '130000');
INSERT INTO `t_dic_city` VALUES ('703', '秦皇岛市', 'T', null, '13000000', '13030000', '130300000000', '130000');
INSERT INTO `t_dic_city` VALUES ('704', '邯郸市', 'T', null, '13000000', '13040000', '130400000000', '130000');
INSERT INTO `t_dic_city` VALUES ('705', '邢台市', 'T', null, '13000000', '13050000', '130500000000', '130000');
INSERT INTO `t_dic_city` VALUES ('706', '阳泉市', 'T', null, '14000000', '14030000', '140300000000', '140000');
INSERT INTO `t_dic_city` VALUES ('707', '长治市', 'T', null, '14000000', '14040000', '140400000000', '140000');
INSERT INTO `t_dic_city` VALUES ('708', '张家口市', 'T', null, '13000000', '13070000', '130700000000', '130000');
INSERT INTO `t_dic_city` VALUES ('709', '承德市', 'T', null, '13000000', '13080000', '130800000000', '130000');
INSERT INTO `t_dic_city` VALUES ('710', '忻州市', 'T', null, '14000000', '14090000', '140900000000', '140000');
INSERT INTO `t_dic_city` VALUES ('711', '临汾市', 'T', null, '14000000', '14100000', '141000000000', '140000');
INSERT INTO `t_dic_city` VALUES ('712', '廊坊市', 'T', null, '13000000', '13100000', '131000000000', '130000');
INSERT INTO `t_dic_city` VALUES ('713', '衡水市', 'T', null, '13000000', '13110000', '131100000000', '130000');
INSERT INTO `t_dic_city` VALUES ('714', '太原市', 'T', null, '14000000', '14010000', '140100000000', '140000');
INSERT INTO `t_dic_city` VALUES ('715', '大同市', 'T', null, '14000000', '14020000', '140200000000', '140000');
INSERT INTO `t_dic_city` VALUES ('716', '乌海市', 'T', null, '15000000', '15030000', '150300000000', '150000');
INSERT INTO `t_dic_city` VALUES ('717', '赤峰市', 'T', null, '15000000', '15040000', '150400000000', '150000');
INSERT INTO `t_dic_city` VALUES ('718', '晋城市', 'T', null, '14000000', '14050000', '140500000000', '140000');
INSERT INTO `t_dic_city` VALUES ('719', '朔州市', 'T', null, '14000000', '14060000', '140600000000', '140000');
INSERT INTO `t_dic_city` VALUES ('720', '晋中市', 'T', null, '14000000', '14070000', '140700000000', '140000');
INSERT INTO `t_dic_city` VALUES ('721', '运城市', 'T', null, '14000000', '14080000', '140800000000', '140000');
INSERT INTO `t_dic_city` VALUES ('722', '锡林郭勒盟', 'T', null, '15000000', '15250000', '152500000000', '150000');
INSERT INTO `t_dic_city` VALUES ('723', '乌兰察布盟', 'T', null, '15000000', '15260000', '152600000000', '150000');
INSERT INTO `t_dic_city` VALUES ('724', '吕梁地区', 'T', null, '14000000', '14230000', '142300000000', '140000');
INSERT INTO `t_dic_city` VALUES ('725', '呼和浩特市', 'T', null, '15000000', '15010000', '150100000000', '150000');
INSERT INTO `t_dic_city` VALUES ('726', '包头市', 'T', null, '15000000', '15020000', '150200000000', '150000');
INSERT INTO `t_dic_city` VALUES ('727', '盘锦市', 'T', null, '21000000', '21110000', '211100000000', '210000');
INSERT INTO `t_dic_city` VALUES ('728', '铁岭市', 'T', null, '21000000', '21120000', '211200000000', '210000');
INSERT INTO `t_dic_city` VALUES ('729', '朝阳市', 'T', null, '21000000', '21130000', '211300000000', '210000');
INSERT INTO `t_dic_city` VALUES ('730', '巴彦淖尔盟', 'T', null, '15000000', '15280000', '152800000000', '150000');
INSERT INTO `t_dic_city` VALUES ('731', '阿拉善盟', 'T', null, '15000000', '15290000', '152900000000', '150000');
INSERT INTO `t_dic_city` VALUES ('732', '沈阳市', 'T', null, '21000000', '21010000', '210100000000', '210000');
INSERT INTO `t_dic_city` VALUES ('733', '大连市', 'T', null, '21000000', '21020000', '210200000000', '210000');
INSERT INTO `t_dic_city` VALUES ('734', '通化市', 'T', null, '22000000', '22050000', '220500000000', '220000');
INSERT INTO `t_dic_city` VALUES ('735', '白山市', 'T', null, '22000000', '22060000', '220600000000', '220000');
INSERT INTO `t_dic_city` VALUES ('736', '松原市', 'T', null, '22000000', '22070000', '220700000000', '220000');
INSERT INTO `t_dic_city` VALUES ('737', '丹东市', 'T', null, '21000000', '21060000', '210600000000', '210000');
INSERT INTO `t_dic_city` VALUES ('738', '锦州市', 'T', null, '21000000', '21070000', '210700000000', '210000');
INSERT INTO `t_dic_city` VALUES ('739', '营口市', 'T', null, '21000000', '21080000', '210800000000', '210000');
INSERT INTO `t_dic_city` VALUES ('740', '阜新市', 'T', null, '21000000', '21090000', '210900000000', '210000');
INSERT INTO `t_dic_city` VALUES ('741', '辽阳市', 'T', null, '21000000', '21100000', '211000000000', '210000');
INSERT INTO `t_dic_city` VALUES ('742', '鸡西市', 'T', null, '23000000', '23030000', '230300000000', '230000');
INSERT INTO `t_dic_city` VALUES ('743', '葫芦岛市', 'T', null, '21000000', '21140000', '211400000000', '210000');
INSERT INTO `t_dic_city` VALUES ('744', '长春市', 'T', null, '22000000', '22010000', '220100000000', '220000');
INSERT INTO `t_dic_city` VALUES ('745', '吉林市', 'T', null, '22000000', '22020000', '220200000000', '220000');
INSERT INTO `t_dic_city` VALUES ('746', '四平市', 'T', null, '22000000', '22030000', '220300000000', '220000');
INSERT INTO `t_dic_city` VALUES ('747', '辽源市', 'T', null, '22000000', '22040000', '220400000000', '220000');
INSERT INTO `t_dic_city` VALUES ('748', '佳木斯市', 'T', null, '23000000', '23080000', '230800000000', '230000');
INSERT INTO `t_dic_city` VALUES ('749', '七台河市', 'T', null, '23000000', '23090000', '230900000000', '230000');
INSERT INTO `t_dic_city` VALUES ('750', '白城市', 'T', null, '22000000', '22080000', '220800000000', '220000');
INSERT INTO `t_dic_city` VALUES ('751', '延边朝鲜族自治州', 'T', null, '22000000', '22240000', '222400000000', '220000');
INSERT INTO `t_dic_city` VALUES ('752', '哈尔滨市', 'T', null, '23000000', '23010000', '230100000000', '230000');
INSERT INTO `t_dic_city` VALUES ('753', '齐齐哈尔市', 'T', null, '23000000', '23020000', '230200000000', '230000');
INSERT INTO `t_dic_city` VALUES ('754', '县', 'T', null, '31000000', '31020000', '310200000000', '310000');
INSERT INTO `t_dic_city` VALUES ('755', '南京市', 'T', null, '32000000', '32010000', '320100000000', '320000');
INSERT INTO `t_dic_city` VALUES ('756', '鹤岗市', 'T', null, '23000000', '23040000', '230400000000', '230000');
INSERT INTO `t_dic_city` VALUES ('757', '双鸭山市', 'T', null, '23000000', '23050000', '230500000000', '230000');
INSERT INTO `t_dic_city` VALUES ('758', '大庆市', 'T', null, '23000000', '23060000', '230600000000', '230000');
INSERT INTO `t_dic_city` VALUES ('759', '伊春市', 'T', null, '23000000', '23070000', '230700000000', '230000');
INSERT INTO `t_dic_city` VALUES ('760', '南通市', 'T', null, '32000000', '32060000', '320600000000', '320000');
INSERT INTO `t_dic_city` VALUES ('761', '连云港市', 'T', null, '32000000', '32070000', '320700000000', '320000');
INSERT INTO `t_dic_city` VALUES ('762', '牡丹江市', 'T', null, '23000000', '23100000', '231000000000', '230000');
INSERT INTO `t_dic_city` VALUES ('763', '黑河市', 'T', null, '23000000', '23110000', '231100000000', '230000');
INSERT INTO `t_dic_city` VALUES ('764', '绥化市', 'T', null, '23000000', '23120000', '231200000000', '230000');
INSERT INTO `t_dic_city` VALUES ('765', '大兴安岭地区', 'T', null, '23000000', '23270000', '232700000000', '230000');
INSERT INTO `t_dic_city` VALUES ('766', '市辖区', 'T', null, '31000000', '31010000', '310100000000', '310000');
INSERT INTO `t_dic_city` VALUES ('767', '宿迁市', 'T', null, '32000000', '32130000', '321300000000', '320000');
INSERT INTO `t_dic_city` VALUES ('768', '杭州市', 'T', null, '33000000', '33010000', '330100000000', '330000');
INSERT INTO `t_dic_city` VALUES ('769', '无锡市', 'T', null, '32000000', '32020000', '320200000000', '320000');
INSERT INTO `t_dic_city` VALUES ('770', '徐州市', 'T', null, '32000000', '32030000', '320300000000', '320000');
INSERT INTO `t_dic_city` VALUES ('771', '常州市', 'T', null, '32000000', '32040000', '320400000000', '320000');
INSERT INTO `t_dic_city` VALUES ('772', '苏州市', 'T', null, '32000000', '32050000', '320500000000', '320000');
INSERT INTO `t_dic_city` VALUES ('773', '金华市', 'T', null, '33000000', '33070000', '330700000000', '330000');
INSERT INTO `t_dic_city` VALUES ('774', '衢州市', 'T', null, '33000000', '33080000', '330800000000', '330000');
INSERT INTO `t_dic_city` VALUES ('775', '舟山市', 'T', null, '33000000', '33090000', '330900000000', '330000');
INSERT INTO `t_dic_city` VALUES ('776', '淮安市', 'T', null, '32000000', '32080000', '320800000000', '320000');
INSERT INTO `t_dic_city` VALUES ('777', '盐城市', 'T', null, '32000000', '32090000', '320900000000', '320000');
INSERT INTO `t_dic_city` VALUES ('778', '扬州市', 'T', null, '32000000', '32100000', '321000000000', '320000');
INSERT INTO `t_dic_city` VALUES ('779', '镇江市', 'T', null, '32000000', '32110000', '321100000000', '320000');
INSERT INTO `t_dic_city` VALUES ('780', '泰州市', 'T', null, '32000000', '32120000', '321200000000', '320000');
INSERT INTO `t_dic_city` VALUES ('781', '蚌埠市', 'T', null, '34000000', '34030000', '340300000000', '340000');
INSERT INTO `t_dic_city` VALUES ('782', '淮南市', 'T', null, '34000000', '34040000', '340400000000', '340000');
INSERT INTO `t_dic_city` VALUES ('783', '马鞍山市', 'T', null, '34000000', '34050000', '340500000000', '340000');
INSERT INTO `t_dic_city` VALUES ('784', '淮北市', 'T', null, '34000000', '34060000', '340600000000', '340000');
INSERT INTO `t_dic_city` VALUES ('785', '宁波市', 'T', null, '33000000', '33020000', '330200000000', '330000');
INSERT INTO `t_dic_city` VALUES ('786', '温州市', 'T', null, '33000000', '33030000', '330300000000', '330000');
INSERT INTO `t_dic_city` VALUES ('787', '嘉兴市', 'T', null, '33000000', '33040000', '330400000000', '330000');
INSERT INTO `t_dic_city` VALUES ('788', '湖州市', 'T', null, '33000000', '33050000', '330500000000', '330000');
INSERT INTO `t_dic_city` VALUES ('789', '绍兴市', 'T', null, '33000000', '33060000', '330600000000', '330000');
INSERT INTO `t_dic_city` VALUES ('790', '宿州市', 'T', null, '34000000', '34130000', '341300000000', '340000');
INSERT INTO `t_dic_city` VALUES ('791', '巢湖市', 'T', null, '34000000', '34140000', '341400000000', '340000');
INSERT INTO `t_dic_city` VALUES ('792', '六安市', 'T', null, '34000000', '34150000', '341500000000', '340000');
INSERT INTO `t_dic_city` VALUES ('793', '台州市', 'T', null, '33000000', '33100000', '331000000000', '330000');
INSERT INTO `t_dic_city` VALUES ('794', '丽水市', 'T', null, '33000000', '33110000', '331100000000', '330000');
INSERT INTO `t_dic_city` VALUES ('795', '合肥市', 'T', null, '34000000', '34010000', '340100000000', '340000');
INSERT INTO `t_dic_city` VALUES ('796', '芜湖市', 'T', null, '34000000', '34020000', '340200000000', '340000');
INSERT INTO `t_dic_city` VALUES ('797', '莆田市', 'T', null, '35000000', '35030000', '350300000000', '350000');
INSERT INTO `t_dic_city` VALUES ('798', '三明市', 'T', null, '35000000', '35040000', '350400000000', '350000');
INSERT INTO `t_dic_city` VALUES ('799', '泉州市', 'T', null, '35000000', '35050000', '350500000000', '350000');
INSERT INTO `t_dic_city` VALUES ('800', '铜陵市', 'T', null, '34000000', '34070000', '340700000000', '340000');
INSERT INTO `t_dic_city` VALUES ('801', '安庆市', 'T', null, '34000000', '34080000', '340800000000', '340000');
INSERT INTO `t_dic_city` VALUES ('802', '黄山市', 'T', null, '34000000', '34100000', '341000000000', '340000');
INSERT INTO `t_dic_city` VALUES ('803', '滁州市', 'T', null, '34000000', '34110000', '341100000000', '340000');
INSERT INTO `t_dic_city` VALUES ('804', '阜阳市', 'T', null, '34000000', '34120000', '341200000000', '340000');
INSERT INTO `t_dic_city` VALUES ('805', '宁德市', 'T', null, '35000000', '35090000', '350900000000', '350000');
INSERT INTO `t_dic_city` VALUES ('806', '南昌市', 'T', null, '36000000', '36010000', '360100000000', '360000');
INSERT INTO `t_dic_city` VALUES ('807', '景德镇市', 'T', null, '36000000', '36020000', '360200000000', '360000');
INSERT INTO `t_dic_city` VALUES ('808', '亳州市', 'T', null, '34000000', '34160000', '341600000000', '340000');
INSERT INTO `t_dic_city` VALUES ('809', '池州市', 'T', null, '34000000', '34170000', '341700000000', '340000');
INSERT INTO `t_dic_city` VALUES ('810', '宣城市', 'T', null, '34000000', '34180000', '341800000000', '340000');
INSERT INTO `t_dic_city` VALUES ('811', '福州市', 'T', null, '35000000', '35010000', '350100000000', '350000');
INSERT INTO `t_dic_city` VALUES ('812', '厦门市', 'T', null, '35000000', '35020000', '350200000000', '350000');
INSERT INTO `t_dic_city` VALUES ('813', '吉安市', 'T', null, '36000000', '36080000', '360800000000', '360000');
INSERT INTO `t_dic_city` VALUES ('814', '漳州市', 'T', null, '35000000', '35060000', '350600000000', '350000');
INSERT INTO `t_dic_city` VALUES ('815', '南平市', 'T', null, '35000000', '35070000', '350700000000', '350000');
INSERT INTO `t_dic_city` VALUES ('816', '龙岩市', 'T', null, '35000000', '35080000', '350800000000', '350000');
INSERT INTO `t_dic_city` VALUES ('817', '青岛市', 'T', null, '37000000', '37020000', '370200000000', '370000');
INSERT INTO `t_dic_city` VALUES ('818', '淄博市', 'T', null, '37000000', '37030000', '370300000000', '370000');
INSERT INTO `t_dic_city` VALUES ('819', '萍乡市', 'T', null, '36000000', '36030000', '360300000000', '360000');
INSERT INTO `t_dic_city` VALUES ('820', '九江市', 'T', null, '36000000', '36040000', '360400000000', '360000');
INSERT INTO `t_dic_city` VALUES ('821', '新余市', 'T', null, '36000000', '36050000', '360500000000', '360000');
INSERT INTO `t_dic_city` VALUES ('822', '鹰潭市', 'T', null, '36000000', '36060000', '360600000000', '360000');
INSERT INTO `t_dic_city` VALUES ('823', '赣州市', 'T', null, '36000000', '36070000', '360700000000', '360000');
INSERT INTO `t_dic_city` VALUES ('824', '济宁市', 'T', null, '37000000', '37080000', '370800000000', '370000');
INSERT INTO `t_dic_city` VALUES ('825', '泰安市', 'T', null, '37000000', '37090000', '370900000000', '370000');
INSERT INTO `t_dic_city` VALUES ('826', '威海市', 'T', null, '37000000', '37100000', '371000000000', '370000');
INSERT INTO `t_dic_city` VALUES ('827', '宜春市', 'T', null, '36000000', '36090000', '360900000000', '360000');
INSERT INTO `t_dic_city` VALUES ('828', '抚州市', 'T', null, '36000000', '36100000', '361000000000', '360000');
INSERT INTO `t_dic_city` VALUES ('829', '上饶市', 'T', null, '36000000', '36110000', '361100000000', '360000');
INSERT INTO `t_dic_city` VALUES ('830', '济南市', 'T', null, '37000000', '37010000', '370100000000', '370000');
INSERT INTO `t_dic_city` VALUES ('831', '滨州市', 'T', null, '37000000', '37160000', '371600000000', '370000');
INSERT INTO `t_dic_city` VALUES ('832', '菏泽市', 'T', null, '37000000', '37170000', '371700000000', '370000');
INSERT INTO `t_dic_city` VALUES ('833', '枣庄市', 'T', null, '37000000', '37040000', '370400000000', '370000');
INSERT INTO `t_dic_city` VALUES ('834', '东营市', 'T', null, '37000000', '37050000', '370500000000', '370000');
INSERT INTO `t_dic_city` VALUES ('835', '烟台市', 'T', null, '37000000', '37060000', '370600000000', '370000');
INSERT INTO `t_dic_city` VALUES ('836', '潍坊市', 'T', null, '37000000', '37070000', '370700000000', '370000');
INSERT INTO `t_dic_city` VALUES ('837', '安阳市', 'T', null, '41000000', '41050000', '410500000000', '410000');
INSERT INTO `t_dic_city` VALUES ('838', '鹤壁市', 'T', null, '41000000', '41060000', '410600000000', '410000');
INSERT INTO `t_dic_city` VALUES ('839', '日照市', 'T', null, '37000000', '37110000', '371100000000', '370000');
INSERT INTO `t_dic_city` VALUES ('840', '莱芜市', 'T', null, '37000000', '37120000', '371200000000', '370000');
INSERT INTO `t_dic_city` VALUES ('841', '临沂市', 'T', null, '37000000', '37130000', '371300000000', '370000');
INSERT INTO `t_dic_city` VALUES ('842', '德州市', 'T', null, '37000000', '37140000', '371400000000', '370000');
INSERT INTO `t_dic_city` VALUES ('843', '聊城市', 'T', null, '37000000', '37150000', '371500000000', '370000');
INSERT INTO `t_dic_city` VALUES ('844', '三门峡市', 'T', null, '41000000', '41120000', '411200000000', '410000');
INSERT INTO `t_dic_city` VALUES ('845', '南阳市', 'T', null, '41000000', '41130000', '411300000000', '410000');
INSERT INTO `t_dic_city` VALUES ('846', '郑州市', 'T', null, '41000000', '41010000', '410100000000', '410000');
INSERT INTO `t_dic_city` VALUES ('847', '开封市', 'T', null, '41000000', '41020000', '410200000000', '410000');
INSERT INTO `t_dic_city` VALUES ('848', '洛阳市', 'T', null, '41000000', '41030000', '410300000000', '410000');
INSERT INTO `t_dic_city` VALUES ('849', '平顶山市', 'T', null, '41000000', '41040000', '410400000000', '410000');
INSERT INTO `t_dic_city` VALUES ('850', '济源市', 'T', null, '41000000', '41180000', '411800000000', '410000');
INSERT INTO `t_dic_city` VALUES ('851', '武汉市', 'T', null, '42000000', '42010000', '420100000000', '420000');
INSERT INTO `t_dic_city` VALUES ('852', '黄石市', 'T', null, '42000000', '42020000', '420200000000', '420000');
INSERT INTO `t_dic_city` VALUES ('853', '新乡市', 'T', null, '41000000', '41070000', '410700000000', '410000');
INSERT INTO `t_dic_city` VALUES ('854', '焦作市', 'T', null, '41000000', '41080000', '410800000000', '410000');
INSERT INTO `t_dic_city` VALUES ('855', '濮阳市', 'T', null, '41000000', '41090000', '410900000000', '410000');
INSERT INTO `t_dic_city` VALUES ('856', '许昌市', 'T', null, '41000000', '41100000', '411000000000', '410000');
INSERT INTO `t_dic_city` VALUES ('857', '漯河市', 'T', null, '41000000', '41110000', '411100000000', '410000');
INSERT INTO `t_dic_city` VALUES ('858', '荆门市', 'T', null, '42000000', '42080000', '420800000000', '420000');
INSERT INTO `t_dic_city` VALUES ('859', '孝感市', 'T', null, '42000000', '42090000', '420900000000', '420000');
INSERT INTO `t_dic_city` VALUES ('860', '荆州市', 'T', null, '42000000', '42100000', '421000000000', '420000');
INSERT INTO `t_dic_city` VALUES ('861', '商丘市', 'T', null, '41000000', '41140000', '411400000000', '410000');
INSERT INTO `t_dic_city` VALUES ('862', '信阳市', 'T', null, '41000000', '41150000', '411500000000', '410000');
INSERT INTO `t_dic_city` VALUES ('863', '周口市', 'T', null, '41000000', '41160000', '411600000000', '410000');
INSERT INTO `t_dic_city` VALUES ('864', '驻马店市', 'T', null, '41000000', '41170000', '411700000000', '410000');
INSERT INTO `t_dic_city` VALUES ('865', '株洲市', 'T', null, '43000000', '43020000', '430200000000', '430000');
INSERT INTO `t_dic_city` VALUES ('866', '湘潭市', 'T', null, '43000000', '43030000', '430300000000', '430000');
INSERT INTO `t_dic_city` VALUES ('867', '十堰市', 'T', null, '42000000', '42030000', '420300000000', '420000');
INSERT INTO `t_dic_city` VALUES ('868', '宜昌市', 'T', null, '42000000', '42050000', '420500000000', '420000');
INSERT INTO `t_dic_city` VALUES ('869', '襄阳市', 'T', null, '42000000', '42060000', '420600000000', '420000');
INSERT INTO `t_dic_city` VALUES ('870', '鄂州市', 'T', null, '42000000', '42070000', '420700000000', '420000');
INSERT INTO `t_dic_city` VALUES ('871', '张家界市', 'T', null, '43000000', '43080000', '430800000000', '430000');
INSERT INTO `t_dic_city` VALUES ('872', '益阳市', 'T', null, '43000000', '43090000', '430900000000', '430000');
INSERT INTO `t_dic_city` VALUES ('873', '郴州市', 'T', null, '43000000', '43100000', '431000000000', '430000');
INSERT INTO `t_dic_city` VALUES ('874', '黄冈市', 'T', null, '42000000', '42110000', '421100000000', '420000');
INSERT INTO `t_dic_city` VALUES ('875', '咸宁市', 'T', null, '42000000', '42120000', '421200000000', '420000');
INSERT INTO `t_dic_city` VALUES ('876', '随州市', 'T', null, '42000000', '42130000', '421300000000', '420000');
INSERT INTO `t_dic_city` VALUES ('877', '恩施土家族苗族自治州', 'T', null, '42000000', '42280000', '422800000000', '420000');
INSERT INTO `t_dic_city` VALUES ('878', '省直辖行政单位', 'T', null, '42000000', '42900000', '429000000000', '420000');
INSERT INTO `t_dic_city` VALUES ('879', '长沙市', 'T', null, '43000000', '43010000', '430100000000', '430000');
INSERT INTO `t_dic_city` VALUES ('880', '广州市', 'T', null, '44000000', '44010000', '440100000000', '440000');
INSERT INTO `t_dic_city` VALUES ('881', '韶关市', 'T', null, '44000000', '44020000', '440200000000', '440000');
INSERT INTO `t_dic_city` VALUES ('882', '衡阳市', 'T', null, '43000000', '43040000', '430400000000', '430000');
INSERT INTO `t_dic_city` VALUES ('883', '邵阳市', 'T', null, '43000000', '43050000', '430500000000', '430000');
INSERT INTO `t_dic_city` VALUES ('884', '岳阳市', 'T', null, '43000000', '43060000', '430600000000', '430000');
INSERT INTO `t_dic_city` VALUES ('885', '常德市', 'T', null, '43000000', '43070000', '430700000000', '430000');
INSERT INTO `t_dic_city` VALUES ('886', '湛江市', 'T', null, '44000000', '44080000', '440800000000', '440000');
INSERT INTO `t_dic_city` VALUES ('887', '茂名市', 'T', null, '44000000', '44090000', '440900000000', '440000');
INSERT INTO `t_dic_city` VALUES ('888', '肇庆市', 'T', null, '44000000', '44120000', '441200000000', '440000');
INSERT INTO `t_dic_city` VALUES ('889', '永州市', 'T', null, '43000000', '43110000', '431100000000', '430000');
INSERT INTO `t_dic_city` VALUES ('890', '怀化市', 'T', null, '43000000', '43120000', '431200000000', '430000');
INSERT INTO `t_dic_city` VALUES ('891', '娄底市', 'T', null, '43000000', '43130000', '431300000000', '430000');
INSERT INTO `t_dic_city` VALUES ('892', '湘西土家族苗族自治州', 'T', null, '43000000', '43310000', '433100000000', '430000');
INSERT INTO `t_dic_city` VALUES ('893', '东莞市', 'T', null, '44000000', '44190000', '441900000000', '440000');
INSERT INTO `t_dic_city` VALUES ('894', '中山市', 'T', null, '44000000', '44200000', '442000000000', '440000');
INSERT INTO `t_dic_city` VALUES ('895', '潮州市', 'T', null, '44000000', '44510000', '445100000000', '440000');
INSERT INTO `t_dic_city` VALUES ('896', '揭阳市', 'T', null, '44000000', '44520000', '445200000000', '440000');
INSERT INTO `t_dic_city` VALUES ('897', '云浮市', 'T', null, '44000000', '44530000', '445300000000', '440000');
INSERT INTO `t_dic_city` VALUES ('898', '深圳市', 'T', null, '44000000', '44030000', '440300000000', '440000');
INSERT INTO `t_dic_city` VALUES ('899', '珠海市', 'T', null, '44000000', '44040000', '440400000000', '440000');
INSERT INTO `t_dic_city` VALUES ('900', '汕头市', 'T', null, '44000000', '44050000', '440500000000', '440000');
INSERT INTO `t_dic_city` VALUES ('901', '佛山市', 'T', null, '44000000', '44060000', '440600000000', '440000');
INSERT INTO `t_dic_city` VALUES ('902', '江门市', 'T', null, '44000000', '44070000', '440700000000', '440000');
INSERT INTO `t_dic_city` VALUES ('903', '梧州市', 'T', null, '45000000', '45040000', '450400000000', '450000');
INSERT INTO `t_dic_city` VALUES ('904', '北海市', 'T', null, '45000000', '45050000', '450500000000', '450000');
INSERT INTO `t_dic_city` VALUES ('905', '防城港市', 'T', null, '45000000', '45060000', '450600000000', '450000');
INSERT INTO `t_dic_city` VALUES ('906', '惠州市', 'T', null, '44000000', '44130000', '441300000000', '440000');
INSERT INTO `t_dic_city` VALUES ('907', '梅州市', 'T', null, '44000000', '44140000', '441400000000', '440000');
INSERT INTO `t_dic_city` VALUES ('908', '汕尾市', 'T', null, '44000000', '44150000', '441500000000', '440000');
INSERT INTO `t_dic_city` VALUES ('909', '河源市', 'T', null, '44000000', '44160000', '441600000000', '440000');
INSERT INTO `t_dic_city` VALUES ('910', '阳江市', 'T', null, '44000000', '44170000', '441700000000', '440000');
INSERT INTO `t_dic_city` VALUES ('911', '清远市', 'T', null, '44000000', '44180000', '441800000000', '440000');
INSERT INTO `t_dic_city` VALUES ('912', '河池市', 'T', null, '45000000', '45120000', '451200000000', '450000');
INSERT INTO `t_dic_city` VALUES ('913', '来宾市', 'T', null, '45000000', '45130000', '451300000000', '450000');
INSERT INTO `t_dic_city` VALUES ('914', '南宁市', 'T', null, '45000000', '45010000', '450100000000', '450000');
INSERT INTO `t_dic_city` VALUES ('915', '柳州市', 'T', null, '45000000', '45020000', '450200000000', '450000');
INSERT INTO `t_dic_city` VALUES ('916', '桂林市', 'T', null, '45000000', '45030000', '450300000000', '450000');
INSERT INTO `t_dic_city` VALUES ('917', '县', 'T', null, '50000000', '50020000', '500200000000', '500000');
INSERT INTO `t_dic_city` VALUES ('918', '钦州市', 'T', null, '45000000', '45070000', '450700000000', '450000');
INSERT INTO `t_dic_city` VALUES ('919', '贵港市', 'T', null, '45000000', '45080000', '450800000000', '450000');
INSERT INTO `t_dic_city` VALUES ('920', '玉林市', 'T', null, '45000000', '45090000', '450900000000', '450000');
INSERT INTO `t_dic_city` VALUES ('921', '百色市', 'T', null, '45000000', '45100000', '451000000000', '450000');
INSERT INTO `t_dic_city` VALUES ('922', '贺州市', 'T', null, '45000000', '45110000', '451100000000', '450000');
INSERT INTO `t_dic_city` VALUES ('923', '攀枝花市', 'T', null, '51000000', '51040000', '510400000000', '510000');
INSERT INTO `t_dic_city` VALUES ('924', '泸州市', 'T', null, '51000000', '51050000', '510500000000', '510000');
INSERT INTO `t_dic_city` VALUES ('925', '德阳市', 'T', null, '51000000', '51060000', '510600000000', '510000');
INSERT INTO `t_dic_city` VALUES ('926', '崇左市', 'T', null, '45000000', '45140000', '451400000000', '450000');
INSERT INTO `t_dic_city` VALUES ('927', '海口市', 'T', null, '46000000', '46010000', '460100000000', '460000');
INSERT INTO `t_dic_city` VALUES ('928', '三亚市', 'T', null, '46000000', '46020000', '460200000000', '460000');
INSERT INTO `t_dic_city` VALUES ('929', '省直辖县级行政单位', 'T', null, '46000000', '46900000', '469000000000', '460000');
INSERT INTO `t_dic_city` VALUES ('930', '市辖区', 'T', null, '50000000', '50010000', '500100000000', '500000');
INSERT INTO `t_dic_city` VALUES ('931', '南充市', 'T', null, '51000000', '51130000', '511300000000', '510000');
INSERT INTO `t_dic_city` VALUES ('932', '眉山市', 'T', null, '51000000', '51140000', '511400000000', '510000');
INSERT INTO `t_dic_city` VALUES ('933', '宜宾市', 'T', null, '51000000', '51150000', '511500000000', '510000');
INSERT INTO `t_dic_city` VALUES ('934', '市', 'T', null, '50000000', '50030000', '500300000000', '500000');
INSERT INTO `t_dic_city` VALUES ('935', '成都市', 'T', null, '51000000', '51010000', '510100000000', '510000');
INSERT INTO `t_dic_city` VALUES ('936', '自贡市', 'T', null, '51000000', '51030000', '510300000000', '510000');
INSERT INTO `t_dic_city` VALUES ('937', '甘孜藏族自治州', 'T', null, '51000000', '51330000', '513300000000', '510000');
INSERT INTO `t_dic_city` VALUES ('938', '绵阳市', 'T', null, '51000000', '51070000', '510700000000', '510000');
INSERT INTO `t_dic_city` VALUES ('939', '广元市', 'T', null, '51000000', '51080000', '510800000000', '510000');
INSERT INTO `t_dic_city` VALUES ('940', '遂宁市', 'T', null, '51000000', '51090000', '510900000000', '510000');
INSERT INTO `t_dic_city` VALUES ('941', '内江市', 'T', null, '51000000', '51100000', '511000000000', '510000');
INSERT INTO `t_dic_city` VALUES ('942', '乐山市', 'T', null, '51000000', '51110000', '511100000000', '510000');
INSERT INTO `t_dic_city` VALUES ('943', '遵义市', 'T', null, '52000000', '52030000', '520300000000', '520000');
INSERT INTO `t_dic_city` VALUES ('944', '安顺市', 'T', null, '52000000', '52040000', '520400000000', '520000');
INSERT INTO `t_dic_city` VALUES ('945', '广安市', 'T', null, '51000000', '51160000', '511600000000', '510000');
INSERT INTO `t_dic_city` VALUES ('946', '达州市', 'T', null, '51000000', '51170000', '511700000000', '510000');
INSERT INTO `t_dic_city` VALUES ('947', '雅安市', 'T', null, '51000000', '51180000', '511800000000', '510000');
INSERT INTO `t_dic_city` VALUES ('948', '巴中市', 'T', null, '51000000', '51190000', '511900000000', '510000');
INSERT INTO `t_dic_city` VALUES ('949', '资阳市', 'T', null, '51000000', '51200000', '512000000000', '510000');
INSERT INTO `t_dic_city` VALUES ('950', '阿坝藏族羌族自治州', 'T', null, '51000000', '51320000', '513200000000', '510000');
INSERT INTO `t_dic_city` VALUES ('951', '黔南布依族苗族自治州', 'T', null, '52000000', '52270000', '522700000000', '520000');
INSERT INTO `t_dic_city` VALUES ('952', '昆明市', 'T', null, '53000000', '53010000', '530100000000', '530000');
INSERT INTO `t_dic_city` VALUES ('953', '凉山彝族自治州', 'T', null, '51000000', '51340000', '513400000000', '510000');
INSERT INTO `t_dic_city` VALUES ('954', '贵阳市', 'T', null, '52000000', '52010000', '520100000000', '520000');
INSERT INTO `t_dic_city` VALUES ('955', '六盘水市', 'T', null, '52000000', '52020000', '520200000000', '520000');
INSERT INTO `t_dic_city` VALUES ('956', '丽江市', 'T', null, '53000000', '53070000', '530700000000', '530000');
INSERT INTO `t_dic_city` VALUES ('957', '楚雄彝族自治州', 'T', null, '53000000', '53230000', '532300000000', '530000');
INSERT INTO `t_dic_city` VALUES ('958', '铜仁地区', 'T', null, '52000000', '52220000', '522200000000', '520000');
INSERT INTO `t_dic_city` VALUES ('959', '黔西南布依族苗族自治', 'T', null, '52000000', '52230000', '522300000000', '520000');
INSERT INTO `t_dic_city` VALUES ('960', '毕节地区', 'T', null, '52000000', '52240000', '522400000000', '520000');
INSERT INTO `t_dic_city` VALUES ('961', '黔东南苗族侗族自治州', 'T', null, '52000000', '52260000', '522600000000', '520000');
INSERT INTO `t_dic_city` VALUES ('962', '西双版纳傣族自治州', 'T', null, '53000000', '53280000', '532800000000', '530000');
INSERT INTO `t_dic_city` VALUES ('963', '大理白族自治州', 'T', null, '53000000', '53290000', '532900000000', '530000');
INSERT INTO `t_dic_city` VALUES ('964', '德宏傣族景颇族自治州', 'T', null, '53000000', '53310000', '533100000000', '530000');
INSERT INTO `t_dic_city` VALUES ('965', '曲靖市', 'T', null, '53000000', '53030000', '530300000000', '530000');
INSERT INTO `t_dic_city` VALUES ('966', '玉溪市', 'T', null, '53000000', '53040000', '530400000000', '530000');
INSERT INTO `t_dic_city` VALUES ('967', '保山市', 'T', null, '53000000', '53050000', '530500000000', '530000');
INSERT INTO `t_dic_city` VALUES ('968', '昭通市', 'T', null, '53000000', '53060000', '530600000000', '530000');
INSERT INTO `t_dic_city` VALUES ('969', '山南地区', 'T', null, '54000000', '54220000', '542200000000', '540000');
INSERT INTO `t_dic_city` VALUES ('970', '日喀则地区', 'T', null, '54000000', '54230000', '542300000000', '540000');
INSERT INTO `t_dic_city` VALUES ('971', '红河哈尼族彝族自治州', 'T', null, '53000000', '53250000', '532500000000', '530000');
INSERT INTO `t_dic_city` VALUES ('972', '文山壮族苗族自治州', 'T', null, '53000000', '53260000', '532600000000', '530000');
INSERT INTO `t_dic_city` VALUES ('973', '思茅地区', 'T', null, '53000000', '53270000', '532700000000', '530000');
INSERT INTO `t_dic_city` VALUES ('974', '铜川市', 'T', null, '61000000', '61020000', '610200000000', '610000');
INSERT INTO `t_dic_city` VALUES ('975', '宝鸡市', 'T', null, '61000000', '61030000', '610300000000', '610000');
INSERT INTO `t_dic_city` VALUES ('976', '怒江傈僳族自治州', 'T', null, '53000000', '53330000', '533300000000', '530000');
INSERT INTO `t_dic_city` VALUES ('977', '迪庆藏族自治州', 'T', null, '53000000', '53340000', '533400000000', '530000');
INSERT INTO `t_dic_city` VALUES ('978', '临沧地区', 'T', null, '53000000', '53350000', '533500000000', '530000');
INSERT INTO `t_dic_city` VALUES ('979', '拉萨市', 'T', null, '54000000', '54010000', '540100000000', '540000');
INSERT INTO `t_dic_city` VALUES ('980', '昌都地区', 'T', null, '54000000', '54210000', '542100000000', '540000');
INSERT INTO `t_dic_city` VALUES ('981', '汉中市', 'T', null, '61000000', '61070000', '610700000000', '610000');
INSERT INTO `t_dic_city` VALUES ('982', '榆林市', 'T', null, '61000000', '61080000', '610800000000', '610000');
INSERT INTO `t_dic_city` VALUES ('983', '那曲地区', 'T', null, '54000000', '54240000', '542400000000', '540000');
INSERT INTO `t_dic_city` VALUES ('984', '阿里地区', 'T', null, '54000000', '54250000', '542500000000', '540000');
INSERT INTO `t_dic_city` VALUES ('985', '林芝地区', 'T', null, '54000000', '54260000', '542600000000', '540000');
INSERT INTO `t_dic_city` VALUES ('986', '西安市', 'T', null, '61000000', '61010000', '610100000000', '610000');
INSERT INTO `t_dic_city` VALUES ('987', '天水市', 'T', null, '62000000', '62050000', '620500000000', '620000');
INSERT INTO `t_dic_city` VALUES ('988', '武威市', 'T', null, '62000000', '62060000', '620600000000', '620000');
INSERT INTO `t_dic_city` VALUES ('989', '张掖市', 'T', null, '62000000', '62070000', '620700000000', '620000');
INSERT INTO `t_dic_city` VALUES ('990', '咸阳市', 'T', null, '61000000', '61040000', '610400000000', '610000');
INSERT INTO `t_dic_city` VALUES ('991', '渭南市', 'T', null, '61000000', '61050000', '610500000000', '610000');
INSERT INTO `t_dic_city` VALUES ('992', '延安市', 'T', null, '61000000', '61060000', '610600000000', '610000');
INSERT INTO `t_dic_city` VALUES ('993', '临夏回族自治州', 'T', null, '62000000', '62290000', '622900000000', '620000');
INSERT INTO `t_dic_city` VALUES ('994', '甘南藏族自治州', 'T', null, '62000000', '62300000', '623000000000', '620000');
INSERT INTO `t_dic_city` VALUES ('995', '安康市', 'T', null, '61000000', '61090000', '610900000000', '610000');
INSERT INTO `t_dic_city` VALUES ('996', '商洛市', 'T', null, '61000000', '61100000', '611000000000', '610000');
INSERT INTO `t_dic_city` VALUES ('997', '兰州市', 'T', null, '62000000', '62010000', '620100000000', '620000');
INSERT INTO `t_dic_city` VALUES ('998', '嘉峪关市', 'T', null, '62000000', '62020000', '620200000000', '620000');
INSERT INTO `t_dic_city` VALUES ('999', '金昌市', 'T', null, '62000000', '62030000', '620300000000', '620000');
INSERT INTO `t_dic_city` VALUES ('1000', '白银市', 'T', null, '62000000', '62040000', '620400000000', '620000');
INSERT INTO `t_dic_city` VALUES ('1001', '海西蒙古族藏族自治州', 'T', null, '63000000', '63280000', '632800000000', '630000');
INSERT INTO `t_dic_city` VALUES ('1002', '银川市', 'T', null, '64000000', '64010000', '640100000000', '640000');
INSERT INTO `t_dic_city` VALUES ('1003', '石嘴山市', 'T', null, '64000000', '64020000', '640200000000', '640000');
INSERT INTO `t_dic_city` VALUES ('1004', '平凉市', 'T', null, '62000000', '62080000', '620800000000', '620000');
INSERT INTO `t_dic_city` VALUES ('1005', '酒泉市', 'T', null, '62000000', '62090000', '620900000000', '620000');
INSERT INTO `t_dic_city` VALUES ('1006', '庆阳市', 'T', null, '62000000', '62100000', '621000000000', '620000');
INSERT INTO `t_dic_city` VALUES ('1007', '定西市', 'T', null, '62000000', '62110000', '621100000000', '620000');
INSERT INTO `t_dic_city` VALUES ('1008', '陇南地区', 'T', null, '62000000', '62260000', '622600000000', '620000');
INSERT INTO `t_dic_city` VALUES ('1009', '昌吉回族自治州', 'T', null, '65000000', '65230000', '652300000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1010', '博尔塔拉蒙古自治州', 'T', null, '65000000', '65270000', '652700000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1011', '巴音郭楞蒙古自治州', 'T', null, '65000000', '65280000', '652800000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1012', '西宁市', 'T', null, '63000000', '63010000', '630100000000', '630000');
INSERT INTO `t_dic_city` VALUES ('1013', '海东地区', 'T', null, '63000000', '63210000', '632100000000', '630000');
INSERT INTO `t_dic_city` VALUES ('1014', '海北藏族自治州', 'T', null, '63000000', '63220000', '632200000000', '630000');
INSERT INTO `t_dic_city` VALUES ('1015', '黄南藏族自治州', 'T', null, '63000000', '63230000', '632300000000', '630000');
INSERT INTO `t_dic_city` VALUES ('1016', '海南藏族自治州', 'T', null, '63000000', '63250000', '632500000000', '630000');
INSERT INTO `t_dic_city` VALUES ('1017', '果洛藏族自治州', 'T', null, '63000000', '63260000', '632600000000', '630000');
INSERT INTO `t_dic_city` VALUES ('1018', '玉树藏族自治州', 'T', null, '63000000', '63270000', '632700000000', '630000');
INSERT INTO `t_dic_city` VALUES ('1019', '伊犁哈萨克自治州', 'T', null, '65000000', '65400000', '654000000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1020', '塔城地区', 'T', null, '65000000', '65420000', '654200000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1021', '吴忠市', 'T', null, '64000000', '64030000', '640300000000', '640000');
INSERT INTO `t_dic_city` VALUES ('1022', '固原市', 'T', null, '64000000', '64040000', '640400000000', '640000');
INSERT INTO `t_dic_city` VALUES ('1023', '乌鲁木齐市', 'T', null, '65000000', '65010000', '650100000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1024', '克拉玛依市', 'T', null, '65000000', '65020000', '650200000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1025', '吐鲁番地区', 'T', null, '65000000', '65210000', '652100000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1026', '哈密地区', 'T', null, '65000000', '65220000', '652200000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1027', '阿勒泰地区', 'T', null, '65000000', '65430000', '654300000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1028', '省直辖行政单位', 'T', null, '65000000', '65900000', '659000000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1029', '阿克苏地区', 'T', null, '65000000', '65290000', '652900000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1030', '克孜勒苏柯尔克孜自治', 'T', null, '65000000', '65300000', '653000000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1031', '喀什地区', 'T', null, '65000000', '65310000', '653100000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1032', '和田地区', 'T', null, '65000000', '65320000', '653200000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1033', '唐山市', 'T', null, '13000000', '13020000', '130200000000', '130000');
INSERT INTO `t_dic_city` VALUES ('1034', '保定市', 'T', null, '13000000', '13060000', '130600000000', '130000');
INSERT INTO `t_dic_city` VALUES ('1035', '市辖区', 'T', null, '11000000', '11010000', '110100000000', '110000');
INSERT INTO `t_dic_city` VALUES ('1036', '北京辖县', 'T', null, '11000000', '11020000', '110200000000', '110000');
INSERT INTO `t_dic_city` VALUES ('1037', '香港', 'T', null, '81000000', '81010000', '810100000000', '810000');
INSERT INTO `t_dic_city` VALUES ('1038', '澳门', 'T', null, '82000000', '82010000', '820100000000', '820000');
INSERT INTO `t_dic_city` VALUES ('1039', '台北市', 'T', null, '71000000', '71010000', '710100000000', '710000');
INSERT INTO `t_dic_city` VALUES ('1040', '新北市', 'T', null, '71000000', '71020000', '710200000000', '710000');
INSERT INTO `t_dic_city` VALUES ('1041', '桃园市', 'T', null, '71000000', '71030000', '710300000000', '710000');
INSERT INTO `t_dic_city` VALUES ('1042', '台中市', 'T', null, '71000000', '71040000', '710400000000', '710000');
INSERT INTO `t_dic_city` VALUES ('1043', '台南市', 'T', null, '71000000', '71050000', '710500000000', '710000');
INSERT INTO `t_dic_city` VALUES ('1044', '高雄市', 'T', null, '71000000', '71060000', '710600000000', '710000');
INSERT INTO `t_dic_city` VALUES ('1045', '省直辖县级行政区划', 'T', null, '13000000', '13900000', '139000000000', '130000');
INSERT INTO `t_dic_city` VALUES ('1046', '吕梁市', 'T', null, '14000000', '14110000', '141100000000', '140000');
INSERT INTO `t_dic_city` VALUES ('1047', '巴彦淖尔市', 'T', null, '15000000', '15080000', '150800000000', '150000');
INSERT INTO `t_dic_city` VALUES ('1048', '乌兰察布市', 'T', null, '15000000', '15090000', '150900000000', '150000');
INSERT INTO `t_dic_city` VALUES ('1049', '省直辖县级行政区划', 'T', null, '41000000', '41900000', '419000000000', '410000');
INSERT INTO `t_dic_city` VALUES ('1050', '三沙市', 'T', null, '46000000', '46030000', '460300000000', '460000');
INSERT INTO `t_dic_city` VALUES ('1051', '儋州市', 'T', null, '46000000', '46040000', '460400000000', '460000');
INSERT INTO `t_dic_city` VALUES ('1052', '毕节市', 'T', null, '52000000', '52050000', '520500000000', '520000');
INSERT INTO `t_dic_city` VALUES ('1053', '铜仁市', 'T', null, '52000000', '52060000', '520600000000', '520000');
INSERT INTO `t_dic_city` VALUES ('1054', '普洱市', 'T', null, '53000000', '53080000', '530800000000', '530000');
INSERT INTO `t_dic_city` VALUES ('1055', '临沧市', 'T', null, '53000000', '53090000', '530900000000', '530000');
INSERT INTO `t_dic_city` VALUES ('1056', '日喀则市', 'T', null, '54000000', '54020000', '540200000000', '540000');
INSERT INTO `t_dic_city` VALUES ('1057', '昌都市', 'T', null, '54000000', '54030000', '540300000000', '540000');
INSERT INTO `t_dic_city` VALUES ('1058', '林芝市', 'T', null, '54000000', '54040000', '540400000000', '540000');
INSERT INTO `t_dic_city` VALUES ('1059', '山南市', 'T', null, '54000000', '54050000', '540500000000', '540000');
INSERT INTO `t_dic_city` VALUES ('1060', '陇南市', 'T', null, '62000000', '62120000', '621200000000', '620000');
INSERT INTO `t_dic_city` VALUES ('1061', '海东市', 'T', null, '63000000', '63020000', '630200000000', '630000');
INSERT INTO `t_dic_city` VALUES ('1062', '中卫市', 'T', null, '64000000', '64050000', '640500000000', '640000');
INSERT INTO `t_dic_city` VALUES ('1063', '吐鲁番市', 'T', null, '65000000', '65040000', '650400000000', '650000');
INSERT INTO `t_dic_city` VALUES ('1064', '哈密市', 'T', null, '65000000', '65050000', '650500000000', '650000');

-- ----------------------------
-- Table structure for t_dic_district
-- ----------------------------
DROP TABLE IF EXISTS `t_dic_district`;
CREATE TABLE `t_dic_district` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISTRICT_NAME` varchar(200) DEFAULT NULL,
  `CITY_ID` int(11) DEFAULT NULL,
  `CITY_NAME` varchar(200) DEFAULT NULL,
  `PROVINCE_NAME` varchar(200) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `CITY_CODE` varchar(30) DEFAULT NULL,
  `PROVINCE_CODE` varchar(30) DEFAULT NULL,
  `DISTRICT_CODE` varchar(30) DEFAULT NULL,
  `PROVINCE_CODEZ_CN` varchar(30) DEFAULT NULL,
  `CITY_CODE_CN` varchar(30) DEFAULT NULL,
  `DISTRICT_CODE_CN` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `dis_index` (`DISTRICT_CODE`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12761 DEFAULT CHARSET=utf8 COMMENT='区';

-- ----------------------------
-- Records of t_dic_district
-- ----------------------------
INSERT INTO `t_dic_district` VALUES ('6666', '新站区', null, '合肥市', '安徽省', 'T', '1', '34010000', '34000000', '34012500', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('6667', '经济技术开发区', null, '合肥市', '安徽省', 'T', '1', '34010000', '34000000', '34012400', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('6668', '高新区', null, '合肥市', '安徽省', 'T', '1', '34010000', '34000000', '34012600', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('9516', '经济技术开发区', null, '大连市', '辽宁省', 'T', '1', '21020000', '21000000', '21029900', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('9517', '长海县', null, '大连市', '辽宁省', 'T', null, '21020000', '21000000', '21022400', '210000', '210200000000', '210224000000');
INSERT INTO `t_dic_district` VALUES ('9518', '瓦房店市', null, '大连市', '辽宁省', 'T', null, '21020000', '21000000', '21028100', '210000', '210200000000', '210281000000');
INSERT INTO `t_dic_district` VALUES ('9519', '普兰店区', null, '大连市', '辽宁省', 'T', null, '21020000', '21000000', '21028200', '210000', '210200000000', '210214000000');
INSERT INTO `t_dic_district` VALUES ('9520', '庄河市', null, '大连市', '辽宁省', 'T', null, '21020000', '21000000', '21028300', '210000', '210200000000', '210283000000');
INSERT INTO `t_dic_district` VALUES ('9521', '市辖区', null, '鞍山市', '辽宁省', 'T', null, '21030000', '21000000', '21030100', '210000', '211400000000', '211401000000');
INSERT INTO `t_dic_district` VALUES ('9522', '铁东区', null, '鞍山市', '辽宁省', 'T', null, '21030000', '21000000', '21030200', '210000', '210300000000', '210302000000');
INSERT INTO `t_dic_district` VALUES ('9523', '铁西区', null, '鞍山市', '辽宁省', 'T', null, '21030000', '21000000', '21030300', '210000', '210300000000', '210303000000');
INSERT INTO `t_dic_district` VALUES ('9524', '立山区', null, '鞍山市', '辽宁省', 'T', null, '21030000', '21000000', '21030400', '210000', '210300000000', '210304000000');
INSERT INTO `t_dic_district` VALUES ('9525', '千山区', null, '鞍山市', '辽宁省', 'T', null, '21030000', '21000000', '21031100', '210000', '210300000000', '210311000000');
INSERT INTO `t_dic_district` VALUES ('9526', '台安县', null, '鞍山市', '辽宁省', 'T', null, '21030000', '21000000', '21032100', '210000', '210300000000', '210321000000');
INSERT INTO `t_dic_district` VALUES ('9527', '岫岩满族自治县', null, '鞍山市', '辽宁省', 'T', null, '21030000', '21000000', '21032300', '210000', '210300000000', '210323000000');
INSERT INTO `t_dic_district` VALUES ('9528', '海城市', null, '鞍山市', '辽宁省', 'T', null, '21030000', '21000000', '21038100', '210000', '210300000000', '210381000000');
INSERT INTO `t_dic_district` VALUES ('9529', '市辖区', null, '抚顺市', '辽宁省', 'T', null, '21040000', '21000000', '21040100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('9530', '新抚区', null, '抚顺市', '辽宁省', 'T', null, '21040000', '21000000', '21040200', '210000', '210400000000', '210402000000');
INSERT INTO `t_dic_district` VALUES ('9531', '东洲区', null, '抚顺市', '辽宁省', 'T', null, '21040000', '21000000', '21040300', '210000', '210400000000', '210403000000');
INSERT INTO `t_dic_district` VALUES ('9532', '望花区', null, '抚顺市', '辽宁省', 'T', null, '21040000', '21000000', '21040400', '210000', '210400000000', '210404000000');
INSERT INTO `t_dic_district` VALUES ('9533', '顺城区', null, '抚顺市', '辽宁省', 'T', null, '21040000', '21000000', '21041100', '210000', '210400000000', '210411000000');
INSERT INTO `t_dic_district` VALUES ('9534', '抚顺县', null, '抚顺市', '辽宁省', 'T', null, '21040000', '21000000', '21042100', '210000', '210400000000', '210421000000');
INSERT INTO `t_dic_district` VALUES ('9535', '新宾满族自治县', null, '抚顺市', '辽宁省', 'T', null, '21040000', '21000000', '21042200', '210000', '210400000000', '210422000000');
INSERT INTO `t_dic_district` VALUES ('9536', '清原满族自治县', null, '抚顺市', '辽宁省', 'T', null, '21040000', '21000000', '21042300', '210000', '210400000000', '210423000000');
INSERT INTO `t_dic_district` VALUES ('9537', '市辖区', null, '本溪市', '辽宁省', 'T', null, '21050000', '21000000', '21050100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('9538', '喀喇沁旗', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15042800', '150000', '150400000000', '150428000000');
INSERT INTO `t_dic_district` VALUES ('9539', '宁城县', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15042900', '150000', '150400000000', '150429000000');
INSERT INTO `t_dic_district` VALUES ('9540', '敖汉旗', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15043000', '150000', '150400000000', '150430000000');
INSERT INTO `t_dic_district` VALUES ('9541', '市辖区', null, '通辽市', '内蒙古自治区', 'T', null, '15050000', '15000000', '15050100', '150000', '150900000000', '150901000000');
INSERT INTO `t_dic_district` VALUES ('9542', '科尔沁区', null, '通辽市', '内蒙古自治区', 'T', null, '15050000', '15000000', '15050200', '150000', '150500000000', '150502000000');
INSERT INTO `t_dic_district` VALUES ('9543', '科尔沁左翼中旗', null, '通辽市', '内蒙古自治区', 'T', null, '15050000', '15000000', '15052100', '150000', '150500000000', '150521000000');
INSERT INTO `t_dic_district` VALUES ('9544', '科尔沁左翼后旗', null, '通辽市', '内蒙古自治区', 'T', null, '15050000', '15000000', '15052200', '150000', '150500000000', '150522000000');
INSERT INTO `t_dic_district` VALUES ('9545', '开鲁县', null, '通辽市', '内蒙古自治区', 'T', null, '15050000', '15000000', '15052300', '150000', '150500000000', '150523000000');
INSERT INTO `t_dic_district` VALUES ('9546', '库伦旗', null, '通辽市', '内蒙古自治区', 'T', null, '15050000', '15000000', '15052400', '150000', '150500000000', '150524000000');
INSERT INTO `t_dic_district` VALUES ('9547', '奈曼旗', null, '通辽市', '内蒙古自治区', 'T', null, '15050000', '15000000', '15052500', '150000', '150500000000', '150525000000');
INSERT INTO `t_dic_district` VALUES ('9548', '扎鲁特旗', null, '通辽市', '内蒙古自治区', 'T', null, '15050000', '15000000', '15052600', '150000', '150500000000', '150526000000');
INSERT INTO `t_dic_district` VALUES ('9549', '霍林郭勒市', null, '通辽市', '内蒙古自治区', 'T', null, '15050000', '15000000', '15058100', '150000', '150500000000', '150581000000');
INSERT INTO `t_dic_district` VALUES ('9550', '东胜区', null, '鄂尔多斯市', '内蒙古自治区', 'T', null, '15060000', '15000000', '15060200', '150000', '150600000000', '150602000000');
INSERT INTO `t_dic_district` VALUES ('9551', '达拉特旗', null, '鄂尔多斯市', '内蒙古自治区', 'T', null, '15060000', '15000000', '15062100', '150000', '150600000000', '150621000000');
INSERT INTO `t_dic_district` VALUES ('9552', '准格尔旗', null, '鄂尔多斯市', '内蒙古自治区', 'T', null, '15060000', '15000000', '15062200', '150000', '150600000000', '150622000000');
INSERT INTO `t_dic_district` VALUES ('9553', '鄂托克前旗', null, '鄂尔多斯市', '内蒙古自治区', 'T', null, '15060000', '15000000', '15062300', '150000', '150600000000', '150623000000');
INSERT INTO `t_dic_district` VALUES ('9554', '鄂托克旗', null, '鄂尔多斯市', '内蒙古自治区', 'T', null, '15060000', '15000000', '15062400', '150000', '150600000000', '150624000000');
INSERT INTO `t_dic_district` VALUES ('9555', '杭锦旗', null, '鄂尔多斯市', '内蒙古自治区', 'T', null, '15060000', '15000000', '15062500', '150000', '150600000000', '150625000000');
INSERT INTO `t_dic_district` VALUES ('9556', '乌审旗', null, '鄂尔多斯市', '内蒙古自治区', 'T', null, '15060000', '15000000', '15062600', '150000', '150600000000', '150626000000');
INSERT INTO `t_dic_district` VALUES ('9557', '伊金霍洛旗', null, '鄂尔多斯市', '内蒙古自治区', 'T', null, '15060000', '15000000', '15062700', '150000', '150600000000', '150627000000');
INSERT INTO `t_dic_district` VALUES ('9558', '市辖区', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15070100', '150000', null, null);
INSERT INTO `t_dic_district` VALUES ('9559', '海拉尔区', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15070200', '150000', '150700000000', '150702000000');
INSERT INTO `t_dic_district` VALUES ('9560', '阿荣旗', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15072100', '150000', '150700000000', '150721000000');
INSERT INTO `t_dic_district` VALUES ('9561', '莫力达瓦达斡尔族自治旗', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15072200', '150000', '150700000000', '150722000000');
INSERT INTO `t_dic_district` VALUES ('9562', '鄂伦春自治旗', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15072300', '150000', '150700000000', '150723000000');
INSERT INTO `t_dic_district` VALUES ('9563', '鄂温克族自治旗', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15072400', '150000', '150700000000', '150724000000');
INSERT INTO `t_dic_district` VALUES ('9564', '陈巴尔虎旗', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15072500', '150000', '150700000000', '150725000000');
INSERT INTO `t_dic_district` VALUES ('9565', '新巴尔虎左旗', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15072600', '150000', '150700000000', '150726000000');
INSERT INTO `t_dic_district` VALUES ('9566', '新巴尔虎右旗', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15072700', '150000', '150700000000', '150727000000');
INSERT INTO `t_dic_district` VALUES ('9567', '满洲里市', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15078100', '150000', '150700000000', '150781000000');
INSERT INTO `t_dic_district` VALUES ('9568', '牙克石市', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15078200', '150000', '150700000000', '150782000000');
INSERT INTO `t_dic_district` VALUES ('9569', '扎兰屯市', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15078300', '150000', '150700000000', '150783000000');
INSERT INTO `t_dic_district` VALUES ('9570', '额尔古纳市', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15078400', '150000', '150700000000', '150784000000');
INSERT INTO `t_dic_district` VALUES ('9571', '根河市', null, '呼伦贝尔市', '内蒙古自治区', 'T', null, '15070000', '15000000', '15078500', '150000', '150700000000', '150785000000');
INSERT INTO `t_dic_district` VALUES ('9572', '乌兰浩特市', null, '兴安盟', '内蒙古自治区', 'T', null, '15220000', '15000000', '15220100', '150000', '152200000000', '152201000000');
INSERT INTO `t_dic_district` VALUES ('9573', '阿尔山市', null, '兴安盟', '内蒙古自治区', 'T', null, '15220000', '15000000', '15220200', '150000', '152200000000', '152202000000');
INSERT INTO `t_dic_district` VALUES ('9574', '科尔沁右翼前旗', null, '兴安盟', '内蒙古自治区', 'T', null, '15220000', '15000000', '15222100', '150000', '152200000000', '152221000000');
INSERT INTO `t_dic_district` VALUES ('9575', '和平区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12010100', '120000', '120100000000', '120101000000');
INSERT INTO `t_dic_district` VALUES ('9576', '河东区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12010200', '120000', '120100000000', '120102000000');
INSERT INTO `t_dic_district` VALUES ('9577', '河西区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12010300', '120000', '120100000000', '120103000000');
INSERT INTO `t_dic_district` VALUES ('9578', '南开区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12010400', '120000', '120100000000', '120104000000');
INSERT INTO `t_dic_district` VALUES ('9579', '河北区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12010500', '120000', '120100000000', '120105000000');
INSERT INTO `t_dic_district` VALUES ('9580', '红桥区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12010600', '120000', '120100000000', '120106000000');
INSERT INTO `t_dic_district` VALUES ('9581', '塘沽区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12010700', '120000', null, null);
INSERT INTO `t_dic_district` VALUES ('9582', '汉沽区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12010800', '120000', null, null);
INSERT INTO `t_dic_district` VALUES ('9583', '大港区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12010900', '120000', null, null);
INSERT INTO `t_dic_district` VALUES ('9584', '东丽区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12011000', '120000', '120100000000', '120110000000');
INSERT INTO `t_dic_district` VALUES ('9585', '西青区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12011100', '120000', '120100000000', '120111000000');
INSERT INTO `t_dic_district` VALUES ('9586', '津南区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12011200', '120000', '120100000000', '120112000000');
INSERT INTO `t_dic_district` VALUES ('9587', '北辰区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12011300', '120000', '120100000000', '120113000000');
INSERT INTO `t_dic_district` VALUES ('9588', '武清区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12011400', '120000', '120100000000', '120114000000');
INSERT INTO `t_dic_district` VALUES ('9589', '宝坻区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12011500', '120000', '120100000000', '120115000000');
INSERT INTO `t_dic_district` VALUES ('9590', '宁河区', null, '天津市辖县', '天津市', 'T', null, '12020000', '12000000', '12022100', '120000', '120100000000', '120117000000');
INSERT INTO `t_dic_district` VALUES ('9591', '静海区', null, '天津市辖县', '天津市', 'T', null, '12020000', '12000000', '12022300', '120000', '120100000000', '120118000000');
INSERT INTO `t_dic_district` VALUES ('9592', '蓟县', null, '天津市辖县', '天津市', 'T', null, '12020000', '12000000', '12022500', '120000', null, null);
INSERT INTO `t_dic_district` VALUES ('9593', '市辖区', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13010100', '130000', '131100000000', '131101000000');
INSERT INTO `t_dic_district` VALUES ('9594', '长安区', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13010200', '130000', '130100000000', '130102000000');
INSERT INTO `t_dic_district` VALUES ('9595', '承德县', null, '承德市', '河北省', 'T', null, '13080000', '13000000', '13082100', '130000', '130800000000', '130821000000');
INSERT INTO `t_dic_district` VALUES ('9596', '兴隆县', null, '承德市', '河北省', 'T', null, '13080000', '13000000', '13082200', '130000', '130800000000', '130822000000');
INSERT INTO `t_dic_district` VALUES ('9597', '平泉县', null, '承德市', '河北省', 'T', null, '13080000', '13000000', '13082300', '130000', '130800000000', '130823000000');
INSERT INTO `t_dic_district` VALUES ('9598', '滦平县', null, '承德市', '河北省', 'T', null, '13080000', '13000000', '13082400', '130000', '130800000000', '130824000000');
INSERT INTO `t_dic_district` VALUES ('9599', '隆化县', null, '承德市', '河北省', 'T', null, '13080000', '13000000', '13082500', '130000', '130800000000', '130825000000');
INSERT INTO `t_dic_district` VALUES ('9600', '丰宁满族自治县', null, '承德市', '河北省', 'T', null, '13080000', '13000000', '13082600', '130000', '130800000000', '130826000000');
INSERT INTO `t_dic_district` VALUES ('9601', '宽城满族自治县', null, '承德市', '河北省', 'T', null, '13080000', '13000000', '13082700', '130000', '130800000000', '130827000000');
INSERT INTO `t_dic_district` VALUES ('9602', '围场满族蒙古族自治县', null, '承德市', '河北省', 'T', null, '13080000', '13000000', '13082800', '130000', '130800000000', '130828000000');
INSERT INTO `t_dic_district` VALUES ('9603', '市辖区', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13090100', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9604', '新华区', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13090200', '130000', '130900000000', '130902000000');
INSERT INTO `t_dic_district` VALUES ('9605', '运河区', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13090300', '130000', '130900000000', '130903000000');
INSERT INTO `t_dic_district` VALUES ('9606', '沧县', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13092100', '130000', '130900000000', '130921000000');
INSERT INTO `t_dic_district` VALUES ('9607', '青县', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13092200', '130000', '130900000000', '130922000000');
INSERT INTO `t_dic_district` VALUES ('9608', '东光县', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13092300', '130000', '130900000000', '130923000000');
INSERT INTO `t_dic_district` VALUES ('9609', '海兴县', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13092400', '130000', '130900000000', '130924000000');
INSERT INTO `t_dic_district` VALUES ('9610', '盐山县', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13092500', '130000', '130900000000', '130925000000');
INSERT INTO `t_dic_district` VALUES ('9611', '肃宁县', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13092600', '130000', '130900000000', '130926000000');
INSERT INTO `t_dic_district` VALUES ('9612', '南皮县', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13092700', '130000', '130900000000', '130927000000');
INSERT INTO `t_dic_district` VALUES ('9613', '吴桥县', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13092800', '130000', '130900000000', '130928000000');
INSERT INTO `t_dic_district` VALUES ('9614', '献县', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13092900', '130000', '130900000000', '130929000000');
INSERT INTO `t_dic_district` VALUES ('9615', '华北石油', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13093100', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9616', '孟村回族自治县', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13093200', '130000', '130900000000', '130930000000');
INSERT INTO `t_dic_district` VALUES ('9617', '路南区', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13020200', '130000', '130200000000', '130202000000');
INSERT INTO `t_dic_district` VALUES ('9618', '路北区', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13020300', '130000', '130200000000', '130203000000');
INSERT INTO `t_dic_district` VALUES ('9619', '古冶区', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13020400', '130000', '130200000000', '130204000000');
INSERT INTO `t_dic_district` VALUES ('9620', '开平区', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13020500', '130000', '130200000000', '130205000000');
INSERT INTO `t_dic_district` VALUES ('9621', '丰南区', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13020700', '130000', '130200000000', '130207000000');
INSERT INTO `t_dic_district` VALUES ('9622', '丰润区', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13020800', '130000', '130200000000', '130208000000');
INSERT INTO `t_dic_district` VALUES ('9623', '滦县', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13022300', '130000', '130200000000', '130223000000');
INSERT INTO `t_dic_district` VALUES ('9624', '滦南县', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13022400', '130000', '130200000000', '130224000000');
INSERT INTO `t_dic_district` VALUES ('9625', '乐亭县', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13022500', '130000', '130200000000', '130225000000');
INSERT INTO `t_dic_district` VALUES ('9626', '迁西县', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13022700', '130000', '130200000000', '130227000000');
INSERT INTO `t_dic_district` VALUES ('9627', '玉田县', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13022900', '130000', '130200000000', '130229000000');
INSERT INTO `t_dic_district` VALUES ('9628', '唐海县', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13023000', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9629', '遵化市', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13028100', '130000', '130200000000', '130281000000');
INSERT INTO `t_dic_district` VALUES ('9630', '迁安市', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13028300', '130000', '130200000000', '130283000000');
INSERT INTO `t_dic_district` VALUES ('9631', '市辖区', null, '秦皇岛市', '河北省', 'T', null, '13030000', '13000000', '13030100', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9632', '海港区', null, '秦皇岛市', '河北省', 'T', null, '13030000', '13000000', '13030200', '130000', '130300000000', '130302000000');
INSERT INTO `t_dic_district` VALUES ('9633', '山海关区', null, '秦皇岛市', '河北省', 'T', null, '13030000', '13000000', '13030300', '130000', '130300000000', '130303000000');
INSERT INTO `t_dic_district` VALUES ('9634', '北戴河区', null, '秦皇岛市', '河北省', 'T', null, '13030000', '13000000', '13030400', '130000', '130300000000', '130304000000');
INSERT INTO `t_dic_district` VALUES ('9635', '青龙满族自治县', null, '秦皇岛市', '河北省', 'T', null, '13030000', '13000000', '13032100', '130000', '130300000000', '130321000000');
INSERT INTO `t_dic_district` VALUES ('9636', '昌黎县', null, '秦皇岛市', '河北省', 'T', null, '13030000', '13000000', '13032200', '130000', '130300000000', '130322000000');
INSERT INTO `t_dic_district` VALUES ('9637', '抚宁区', null, '秦皇岛市', '河北省', 'T', null, '13030000', '13000000', '13032300', '130000', '130300000000', '130306000000');
INSERT INTO `t_dic_district` VALUES ('9638', '卢龙县', null, '秦皇岛市', '河北省', 'T', null, '13030000', '13000000', '13032400', '130000', '130300000000', '130324000000');
INSERT INTO `t_dic_district` VALUES ('9639', '市辖区', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13040100', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9640', '邯山区', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13040200', '130000', '130400000000', '130402000000');
INSERT INTO `t_dic_district` VALUES ('9641', '丛台区', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13040300', '130000', '130400000000', '130403000000');
INSERT INTO `t_dic_district` VALUES ('9642', '复兴区', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13040400', '130000', '130400000000', '130404000000');
INSERT INTO `t_dic_district` VALUES ('9643', '峰峰矿区', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13040600', '130000', '130400000000', '130406000000');
INSERT INTO `t_dic_district` VALUES ('9644', '邯郸县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13042100', '130000', '130400000000', '130421000000');
INSERT INTO `t_dic_district` VALUES ('9645', '临漳县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13042300', '130000', '130400000000', '130423000000');
INSERT INTO `t_dic_district` VALUES ('9646', '成安县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13042400', '130000', '130400000000', '130424000000');
INSERT INTO `t_dic_district` VALUES ('9647', '大名县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13042500', '130000', '130400000000', '130425000000');
INSERT INTO `t_dic_district` VALUES ('9648', '涉县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13042600', '130000', '130400000000', '130426000000');
INSERT INTO `t_dic_district` VALUES ('9649', '磁县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13042700', '130000', '130400000000', '130427000000');
INSERT INTO `t_dic_district` VALUES ('9650', '肥乡县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13042800', '130000', '130400000000', '130428000000');
INSERT INTO `t_dic_district` VALUES ('9651', '永年县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13042900', '130000', '130400000000', '130429000000');
INSERT INTO `t_dic_district` VALUES ('9652', '邱县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13043000', '130000', '130400000000', '130430000000');
INSERT INTO `t_dic_district` VALUES ('9653', '鸡泽县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13043100', '130000', '130400000000', '130431000000');
INSERT INTO `t_dic_district` VALUES ('9654', '广平县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13043200', '130000', '130400000000', '130432000000');
INSERT INTO `t_dic_district` VALUES ('9655', '馆陶县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13043300', '130000', '130400000000', '130433000000');
INSERT INTO `t_dic_district` VALUES ('9656', '魏县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13043400', '130000', '130400000000', '130434000000');
INSERT INTO `t_dic_district` VALUES ('9657', '曲周县', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13043500', '130000', '130400000000', '130435000000');
INSERT INTO `t_dic_district` VALUES ('9658', '武安市', null, '邯郸市', '河北省', 'T', null, '13040000', '13000000', '13048100', '130000', '130400000000', '130481000000');
INSERT INTO `t_dic_district` VALUES ('9659', '市辖区', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13050100', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9660', '新荣区', null, '大同市', '山西省', 'T', null, '14020000', '14000000', '14021200', '140000', '140200000000', '140212000000');
INSERT INTO `t_dic_district` VALUES ('9661', '阳高县', null, '大同市', '山西省', 'T', null, '14020000', '14000000', '14022100', '140000', '140200000000', '140221000000');
INSERT INTO `t_dic_district` VALUES ('9662', '天镇县', null, '大同市', '山西省', 'T', null, '14020000', '14000000', '14022200', '140000', '140200000000', '140222000000');
INSERT INTO `t_dic_district` VALUES ('9663', '广灵县', null, '大同市', '山西省', 'T', null, '14020000', '14000000', '14022300', '140000', '140200000000', '140223000000');
INSERT INTO `t_dic_district` VALUES ('9664', '灵丘县', null, '大同市', '山西省', 'T', null, '14020000', '14000000', '14022400', '140000', '140200000000', '140224000000');
INSERT INTO `t_dic_district` VALUES ('9665', '浑源县', null, '大同市', '山西省', 'T', null, '14020000', '14000000', '14022500', '140000', '140200000000', '140225000000');
INSERT INTO `t_dic_district` VALUES ('9666', '左云县', null, '大同市', '山西省', 'T', null, '14020000', '14000000', '14022600', '140000', '140200000000', '140226000000');
INSERT INTO `t_dic_district` VALUES ('9667', '大同县', null, '大同市', '山西省', 'T', null, '14020000', '14000000', '14022700', '140000', '140200000000', '140227000000');
INSERT INTO `t_dic_district` VALUES ('9668', '市辖区', null, '阳泉市', '山西省', 'T', null, '14030000', '14000000', '14030100', '140000', '141100000000', '141101000000');
INSERT INTO `t_dic_district` VALUES ('9669', '城区', null, '阳泉市', '山西省', 'T', null, '14030000', '14000000', '14030200', '140000', '140500000000', '140502000000');
INSERT INTO `t_dic_district` VALUES ('9670', '矿区', null, '阳泉市', '山西省', 'T', null, '14030000', '14000000', '14030300', '140000', '140300000000', '140303000000');
INSERT INTO `t_dic_district` VALUES ('9671', '郊区', null, '阳泉市', '山西省', 'T', null, '14030000', '14000000', '14031100', '140000', '140400000000', '140411000000');
INSERT INTO `t_dic_district` VALUES ('9672', '平定县', null, '阳泉市', '山西省', 'T', null, '14030000', '14000000', '14032100', '140000', '140300000000', '140321000000');
INSERT INTO `t_dic_district` VALUES ('9673', '盂县', null, '阳泉市', '山西省', 'T', null, '14030000', '14000000', '14032200', '140000', '140300000000', '140322000000');
INSERT INTO `t_dic_district` VALUES ('9674', '市辖区', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14040100', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9675', '城区', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14040200', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9676', '郊区', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14041100', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9677', '长治县', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14042100', '140000', '140400000000', '140421000000');
INSERT INTO `t_dic_district` VALUES ('9678', '襄垣县', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14042300', '140000', '140400000000', '140423000000');
INSERT INTO `t_dic_district` VALUES ('9679', '屯留县', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14042400', '140000', '140400000000', '140424000000');
INSERT INTO `t_dic_district` VALUES ('9680', '平顺县', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14042500', '140000', '140400000000', '140425000000');
INSERT INTO `t_dic_district` VALUES ('9681', '黎城县', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14042600', '140000', '140400000000', '140426000000');
INSERT INTO `t_dic_district` VALUES ('9682', '满城区', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13062100', '130000', '130600000000', '130607000000');
INSERT INTO `t_dic_district` VALUES ('9683', '清苑区', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13062200', '130000', '130600000000', '130608000000');
INSERT INTO `t_dic_district` VALUES ('9684', '涞水县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13062300', '130000', '130600000000', '130623000000');
INSERT INTO `t_dic_district` VALUES ('9685', '阜平县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13062400', '130000', '130600000000', '130624000000');
INSERT INTO `t_dic_district` VALUES ('9686', '徐水区', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13062500', '130000', '130600000000', '130609000000');
INSERT INTO `t_dic_district` VALUES ('9687', '定兴县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13062600', '130000', '130600000000', '130626000000');
INSERT INTO `t_dic_district` VALUES ('9688', '唐县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13062700', '130000', '130600000000', '130627000000');
INSERT INTO `t_dic_district` VALUES ('9689', '高阳县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13062800', '130000', '130600000000', '130628000000');
INSERT INTO `t_dic_district` VALUES ('9690', '容城县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13062900', '130000', '130600000000', '130629000000');
INSERT INTO `t_dic_district` VALUES ('9691', '涞源县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13063000', '130000', '130600000000', '130630000000');
INSERT INTO `t_dic_district` VALUES ('9692', '望都县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13063100', '130000', '130600000000', '130631000000');
INSERT INTO `t_dic_district` VALUES ('9693', '安新县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13063200', '130000', '130600000000', '130632000000');
INSERT INTO `t_dic_district` VALUES ('9694', '易县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13063300', '130000', '130600000000', '130633000000');
INSERT INTO `t_dic_district` VALUES ('9695', '曲阳县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13063400', '130000', '130600000000', '130634000000');
INSERT INTO `t_dic_district` VALUES ('9696', '蠡县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13063500', '130000', '130600000000', '130635000000');
INSERT INTO `t_dic_district` VALUES ('9697', '顺平县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13063600', '130000', '130600000000', '130636000000');
INSERT INTO `t_dic_district` VALUES ('9698', '博野县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13063700', '130000', '130600000000', '130637000000');
INSERT INTO `t_dic_district` VALUES ('9699', '雄县', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13063800', '130000', '130600000000', '130638000000');
INSERT INTO `t_dic_district` VALUES ('9700', '涿州市', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13068100', '130000', '130600000000', '130681000000');
INSERT INTO `t_dic_district` VALUES ('9701', '定州市', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13068200', '130000', '139000000000', '139001000000');
INSERT INTO `t_dic_district` VALUES ('9702', '安国市', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13068300', '130000', '130600000000', '130683000000');
INSERT INTO `t_dic_district` VALUES ('9703', '高碑店市', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13068400', '130000', '130600000000', '130684000000');
INSERT INTO `t_dic_district` VALUES ('9704', '市辖区', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13070100', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9705', '桥东区', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13070200', '130000', '130700000000', '130702000000');
INSERT INTO `t_dic_district` VALUES ('9706', '桥西区', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13070300', '130000', '130700000000', '130703000000');
INSERT INTO `t_dic_district` VALUES ('9707', '宣化区', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13070500', '130000', '130700000000', '130705000000');
INSERT INTO `t_dic_district` VALUES ('9708', '下花园区', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13070600', '130000', '130700000000', '130706000000');
INSERT INTO `t_dic_district` VALUES ('9709', '宣化县', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13072100', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9710', '张北县', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13072200', '130000', '130700000000', '130722000000');
INSERT INTO `t_dic_district` VALUES ('9711', '康保县', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13072300', '130000', '130700000000', '130723000000');
INSERT INTO `t_dic_district` VALUES ('9712', '沽源县', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13072400', '130000', '130700000000', '130724000000');
INSERT INTO `t_dic_district` VALUES ('9713', '尚义县', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13072500', '130000', '130700000000', '130725000000');
INSERT INTO `t_dic_district` VALUES ('9714', '蔚县', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13072600', '130000', '130700000000', '130726000000');
INSERT INTO `t_dic_district` VALUES ('9715', '阳原县', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13072700', '130000', '130700000000', '130727000000');
INSERT INTO `t_dic_district` VALUES ('9716', '怀安县', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13072800', '130000', '130700000000', '130728000000');
INSERT INTO `t_dic_district` VALUES ('9717', '万全区', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13072900', '130000', '130700000000', '130708000000');
INSERT INTO `t_dic_district` VALUES ('9718', '怀来县', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13073000', '130000', '130700000000', '130730000000');
INSERT INTO `t_dic_district` VALUES ('9719', '涿鹿县', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13073100', '130000', '130700000000', '130731000000');
INSERT INTO `t_dic_district` VALUES ('9720', '赤城县', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13073200', '130000', '130700000000', '130732000000');
INSERT INTO `t_dic_district` VALUES ('9721', '崇礼区', null, '张家口市', '河北省', 'T', null, '13070000', '13000000', '13073300', '130000', '130700000000', '130709000000');
INSERT INTO `t_dic_district` VALUES ('9722', '市辖区', null, '承德市', '河北省', 'T', null, '13080000', '13000000', '13080100', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9723', '双桥区', null, '承德市', '河北省', 'T', null, '13080000', '13000000', '13080200', '130000', '130800000000', '130802000000');
INSERT INTO `t_dic_district` VALUES ('9724', '双滦区', null, '承德市', '河北省', 'T', null, '13080000', '13000000', '13080300', '130000', '130800000000', '130803000000');
INSERT INTO `t_dic_district` VALUES ('9725', '鹰手营子矿区', null, '承德市', '河北省', 'T', null, '13080000', '13000000', '13080400', '130000', '130800000000', '130804000000');
INSERT INTO `t_dic_district` VALUES ('9726', '芮城县', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14083000', '140000', '140800000000', '140830000000');
INSERT INTO `t_dic_district` VALUES ('9727', '永济市', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14088100', '140000', '140800000000', '140881000000');
INSERT INTO `t_dic_district` VALUES ('9728', '河津市', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14088200', '140000', '140800000000', '140882000000');
INSERT INTO `t_dic_district` VALUES ('9729', '市辖区', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14090100', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9730', '忻府区', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14090200', '140000', '140900000000', '140902000000');
INSERT INTO `t_dic_district` VALUES ('9731', '定襄县', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14092100', '140000', '140900000000', '140921000000');
INSERT INTO `t_dic_district` VALUES ('9732', '五台县', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14092200', '140000', '140900000000', '140922000000');
INSERT INTO `t_dic_district` VALUES ('9733', '代县', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14092300', '140000', '140900000000', '140923000000');
INSERT INTO `t_dic_district` VALUES ('9734', '繁峙县', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14092400', '140000', '140900000000', '140924000000');
INSERT INTO `t_dic_district` VALUES ('9735', '宁武县', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14092500', '140000', '140900000000', '140925000000');
INSERT INTO `t_dic_district` VALUES ('9736', '静乐县', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14092600', '140000', '140900000000', '140926000000');
INSERT INTO `t_dic_district` VALUES ('9737', '神池县', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14092700', '140000', '140900000000', '140927000000');
INSERT INTO `t_dic_district` VALUES ('9738', '五寨县', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14092800', '140000', '140900000000', '140928000000');
INSERT INTO `t_dic_district` VALUES ('9739', '岢岚县', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14092900', '140000', '140900000000', '140929000000');
INSERT INTO `t_dic_district` VALUES ('9740', '河曲县', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14093000', '140000', '140900000000', '140930000000');
INSERT INTO `t_dic_district` VALUES ('9741', '保德县', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14093100', '140000', '140900000000', '140931000000');
INSERT INTO `t_dic_district` VALUES ('9742', '偏关县', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14093200', '140000', '140900000000', '140932000000');
INSERT INTO `t_dic_district` VALUES ('9743', '原平市', null, '忻州市', '山西省', 'T', null, '14090000', '14000000', '14098100', '140000', '140900000000', '140981000000');
INSERT INTO `t_dic_district` VALUES ('9744', '市辖区', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14100100', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9745', '尧都区', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14100200', '140000', '141000000000', '141002000000');
INSERT INTO `t_dic_district` VALUES ('9746', '曲沃县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14102100', '140000', '141000000000', '141021000000');
INSERT INTO `t_dic_district` VALUES ('9747', '翼城县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14102200', '140000', '141000000000', '141022000000');
INSERT INTO `t_dic_district` VALUES ('9748', '泊头市', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13098100', '130000', '130900000000', '130981000000');
INSERT INTO `t_dic_district` VALUES ('9749', '任丘市', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13098200', '130000', '130900000000', '130982000000');
INSERT INTO `t_dic_district` VALUES ('9750', '黄骅市', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13098300', '130000', '130900000000', '130983000000');
INSERT INTO `t_dic_district` VALUES ('9751', '河间市', null, '沧州市', '河北省', 'T', null, '13090000', '13000000', '13098400', '130000', '130900000000', '130984000000');
INSERT INTO `t_dic_district` VALUES ('9752', '市辖区', null, '廊坊市', '河北省', 'T', null, '13100000', '13000000', '13100100', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9753', '安次区', null, '廊坊市', '河北省', 'T', null, '13100000', '13000000', '13100200', '130000', '131000000000', '131002000000');
INSERT INTO `t_dic_district` VALUES ('9754', '广阳区', null, '廊坊市', '河北省', 'T', null, '13100000', '13000000', '13100300', '130000', '131000000000', '131003000000');
INSERT INTO `t_dic_district` VALUES ('9755', '固安县', null, '廊坊市', '河北省', 'T', null, '13100000', '13000000', '13102200', '130000', '131000000000', '131022000000');
INSERT INTO `t_dic_district` VALUES ('9756', '永清县', null, '廊坊市', '河北省', 'T', null, '13100000', '13000000', '13102300', '130000', '131000000000', '131023000000');
INSERT INTO `t_dic_district` VALUES ('9757', '香河县', null, '廊坊市', '河北省', 'T', null, '13100000', '13000000', '13102400', '130000', '131000000000', '131024000000');
INSERT INTO `t_dic_district` VALUES ('9758', '大城县', null, '廊坊市', '河北省', 'T', null, '13100000', '13000000', '13102500', '130000', '131000000000', '131025000000');
INSERT INTO `t_dic_district` VALUES ('9759', '文安县', null, '廊坊市', '河北省', 'T', null, '13100000', '13000000', '13102600', '130000', '131000000000', '131026000000');
INSERT INTO `t_dic_district` VALUES ('9760', '大厂回族自治县', null, '廊坊市', '河北省', 'T', null, '13100000', '13000000', '13102800', '130000', '131000000000', '131028000000');
INSERT INTO `t_dic_district` VALUES ('9761', '霸州市', null, '廊坊市', '河北省', 'T', null, '13100000', '13000000', '13108100', '130000', '131000000000', '131081000000');
INSERT INTO `t_dic_district` VALUES ('9762', '三河市', null, '廊坊市', '河北省', 'T', null, '13100000', '13000000', '13108200', '130000', '131000000000', '131082000000');
INSERT INTO `t_dic_district` VALUES ('9763', '市辖区', null, '衡水市', '河北省', 'T', null, '13110000', '13000000', '13110100', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9764', '桃城区', null, '衡水市', '河北省', 'T', null, '13110000', '13000000', '13110200', '130000', '131100000000', '131102000000');
INSERT INTO `t_dic_district` VALUES ('9765', '枣强县', null, '衡水市', '河北省', 'T', null, '13110000', '13000000', '13112100', '130000', '131100000000', '131121000000');
INSERT INTO `t_dic_district` VALUES ('9766', '武邑县', null, '衡水市', '河北省', 'T', null, '13110000', '13000000', '13112200', '130000', '131100000000', '131122000000');
INSERT INTO `t_dic_district` VALUES ('9767', '武强县', null, '衡水市', '河北省', 'T', null, '13110000', '13000000', '13112300', '130000', '131100000000', '131123000000');
INSERT INTO `t_dic_district` VALUES ('9768', '饶阳县', null, '衡水市', '河北省', 'T', null, '13110000', '13000000', '13112400', '130000', '131100000000', '131124000000');
INSERT INTO `t_dic_district` VALUES ('9769', '安平县', null, '衡水市', '河北省', 'T', null, '13110000', '13000000', '13112500', '130000', '131100000000', '131125000000');
INSERT INTO `t_dic_district` VALUES ('9770', '故城县', null, '衡水市', '河北省', 'T', null, '13110000', '13000000', '13112600', '130000', '131100000000', '131126000000');
INSERT INTO `t_dic_district` VALUES ('9771', '景县', null, '衡水市', '河北省', 'T', null, '13110000', '13000000', '13112700', '130000', '131100000000', '131127000000');
INSERT INTO `t_dic_district` VALUES ('9772', '阜城县', null, '衡水市', '河北省', 'T', null, '13110000', '13000000', '13112800', '130000', '131100000000', '131128000000');
INSERT INTO `t_dic_district` VALUES ('9773', '冀州区', null, '衡水市', '河北省', 'T', null, '13110000', '13000000', '13118100', '130000', '131100000000', '131103000000');
INSERT INTO `t_dic_district` VALUES ('9774', '深州市', null, '衡水市', '河北省', 'T', null, '13110000', '13000000', '13118200', '130000', '131100000000', '131182000000');
INSERT INTO `t_dic_district` VALUES ('9775', '市辖区', null, '太原市', '山西省', 'T', null, '14010000', '14000000', '14010100', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9776', '小店区', null, '太原市', '山西省', 'T', null, '14010000', '14000000', '14010500', '140000', '140100000000', '140105000000');
INSERT INTO `t_dic_district` VALUES ('9777', '迎泽区', null, '太原市', '山西省', 'T', null, '14010000', '14000000', '14010600', '140000', '140100000000', '140106000000');
INSERT INTO `t_dic_district` VALUES ('9778', '杏花岭区', null, '太原市', '山西省', 'T', null, '14010000', '14000000', '14010700', '140000', '140100000000', '140107000000');
INSERT INTO `t_dic_district` VALUES ('9779', '尖草坪区', null, '太原市', '山西省', 'T', null, '14010000', '14000000', '14010800', '140000', '140100000000', '140108000000');
INSERT INTO `t_dic_district` VALUES ('9780', '万柏林区', null, '太原市', '山西省', 'T', null, '14010000', '14000000', '14010900', '140000', '140100000000', '140109000000');
INSERT INTO `t_dic_district` VALUES ('9781', '晋源区', null, '太原市', '山西省', 'T', null, '14010000', '14000000', '14011000', '140000', '140100000000', '140110000000');
INSERT INTO `t_dic_district` VALUES ('9782', '清徐县', null, '太原市', '山西省', 'T', null, '14010000', '14000000', '14012100', '140000', '140100000000', '140121000000');
INSERT INTO `t_dic_district` VALUES ('9783', '阳曲县', null, '太原市', '山西省', 'T', null, '14010000', '14000000', '14012200', '140000', '140100000000', '140122000000');
INSERT INTO `t_dic_district` VALUES ('9784', '娄烦县', null, '太原市', '山西省', 'T', null, '14010000', '14000000', '14012300', '140000', '140100000000', '140123000000');
INSERT INTO `t_dic_district` VALUES ('9785', '古交市', null, '太原市', '山西省', 'T', null, '14010000', '14000000', '14018100', '140000', '140100000000', '140181000000');
INSERT INTO `t_dic_district` VALUES ('9786', '市辖区', null, '大同市', '山西省', 'T', null, '14020000', '14000000', '14020100', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9787', '城区', null, '大同市', '山西省', 'T', null, '14020000', '14000000', '14020200', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9788', '矿区', null, '大同市', '山西省', 'T', null, '14020000', '14000000', '14020300', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9789', '南郊区', null, '大同市', '山西省', 'T', null, '14020000', '14000000', '14021100', '140000', '140200000000', '140211000000');
INSERT INTO `t_dic_district` VALUES ('9790', '石拐区', null, '包头市', '内蒙古自治区', 'T', null, '15020000', '15000000', '15020500', '150000', '150200000000', '150205000000');
INSERT INTO `t_dic_district` VALUES ('9791', '白云鄂博矿区', null, '包头市', '内蒙古自治区', 'T', null, '15020000', '15000000', '15020600', '150000', '150200000000', '150206000000');
INSERT INTO `t_dic_district` VALUES ('9792', '九原区', null, '包头市', '内蒙古自治区', 'T', null, '15020000', '15000000', '15020700', '150000', '150200000000', '150207000000');
INSERT INTO `t_dic_district` VALUES ('9793', '土默特右旗', null, '包头市', '内蒙古自治区', 'T', null, '15020000', '15000000', '15022100', '150000', '150200000000', '150221000000');
INSERT INTO `t_dic_district` VALUES ('9794', '固阳县', null, '包头市', '内蒙古自治区', 'T', null, '15020000', '15000000', '15022200', '150000', '150200000000', '150222000000');
INSERT INTO `t_dic_district` VALUES ('9795', '达尔罕茂明安联合旗', null, '包头市', '内蒙古自治区', 'T', null, '15020000', '15000000', '15022300', '150000', '150200000000', '150223000000');
INSERT INTO `t_dic_district` VALUES ('9796', '市辖区', null, '乌海市', '内蒙古自治区', 'T', null, '15030000', '15000000', '15030100', '150000', null, null);
INSERT INTO `t_dic_district` VALUES ('9797', '海勃湾区', null, '乌海市', '内蒙古自治区', 'T', null, '15030000', '15000000', '15030200', '150000', '150300000000', '150302000000');
INSERT INTO `t_dic_district` VALUES ('9798', '海南区', null, '乌海市', '内蒙古自治区', 'T', null, '15030000', '15000000', '15030300', '150000', '150300000000', '150303000000');
INSERT INTO `t_dic_district` VALUES ('9799', '乌达区', null, '乌海市', '内蒙古自治区', 'T', null, '15030000', '15000000', '15030400', '150000', '150300000000', '150304000000');
INSERT INTO `t_dic_district` VALUES ('9800', '市辖区', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15040100', '150000', null, null);
INSERT INTO `t_dic_district` VALUES ('9801', '红山区', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15040200', '150000', '150400000000', '150402000000');
INSERT INTO `t_dic_district` VALUES ('9802', '元宝山区', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15040300', '150000', '150400000000', '150403000000');
INSERT INTO `t_dic_district` VALUES ('9803', '松山区', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15040400', '150000', '150400000000', '150404000000');
INSERT INTO `t_dic_district` VALUES ('9804', '阿鲁科尔沁旗', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15042100', '150000', '150400000000', '150421000000');
INSERT INTO `t_dic_district` VALUES ('9805', '巴林左旗', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15042200', '150000', '150400000000', '150422000000');
INSERT INTO `t_dic_district` VALUES ('9806', '巴林右旗', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15042300', '150000', '150400000000', '150423000000');
INSERT INTO `t_dic_district` VALUES ('9807', '林西县', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15042400', '150000', '150400000000', '150424000000');
INSERT INTO `t_dic_district` VALUES ('9808', '克什克腾旗', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15042500', '150000', '150400000000', '150425000000');
INSERT INTO `t_dic_district` VALUES ('9809', '翁牛特旗', null, '赤峰市', '内蒙古自治区', 'T', null, '15040000', '15000000', '15042600', '150000', '150400000000', '150426000000');
INSERT INTO `t_dic_district` VALUES ('9810', '壶关县', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14042700', '140000', '140400000000', '140427000000');
INSERT INTO `t_dic_district` VALUES ('9811', '长子县', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14042800', '140000', '140400000000', '140428000000');
INSERT INTO `t_dic_district` VALUES ('9812', '武乡县', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14042900', '140000', '140400000000', '140429000000');
INSERT INTO `t_dic_district` VALUES ('9813', '沁县', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14043000', '140000', '140400000000', '140430000000');
INSERT INTO `t_dic_district` VALUES ('9814', '沁源县', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14043100', '140000', '140400000000', '140431000000');
INSERT INTO `t_dic_district` VALUES ('9815', '潞城市', null, '长治市', '山西省', 'T', null, '14040000', '14000000', '14048100', '140000', '140400000000', '140481000000');
INSERT INTO `t_dic_district` VALUES ('9816', '市辖区', null, '晋城市', '山西省', 'T', null, '14050000', '14000000', '14050100', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9817', '城区', null, '晋城市', '山西省', 'T', null, '14050000', '14000000', '14050200', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9818', '沁水县', null, '晋城市', '山西省', 'T', null, '14050000', '14000000', '14052100', '140000', '140500000000', '140521000000');
INSERT INTO `t_dic_district` VALUES ('9819', '阳城县', null, '晋城市', '山西省', 'T', null, '14050000', '14000000', '14052200', '140000', '140500000000', '140522000000');
INSERT INTO `t_dic_district` VALUES ('9820', '陵川县', null, '晋城市', '山西省', 'T', null, '14050000', '14000000', '14052400', '140000', '140500000000', '140524000000');
INSERT INTO `t_dic_district` VALUES ('9821', '泽州县', null, '晋城市', '山西省', 'T', null, '14050000', '14000000', '14052500', '140000', '140500000000', '140525000000');
INSERT INTO `t_dic_district` VALUES ('9822', '高平市', null, '晋城市', '山西省', 'T', null, '14050000', '14000000', '14058100', '140000', '140500000000', '140581000000');
INSERT INTO `t_dic_district` VALUES ('9823', '市辖区', null, '朔州市', '山西省', 'T', null, '14060000', '14000000', '14060100', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9824', '朔城区', null, '朔州市', '山西省', 'T', null, '14060000', '14000000', '14060200', '140000', '140600000000', '140602000000');
INSERT INTO `t_dic_district` VALUES ('9825', '平鲁区', null, '朔州市', '山西省', 'T', null, '14060000', '14000000', '14060300', '140000', '140600000000', '140603000000');
INSERT INTO `t_dic_district` VALUES ('9826', '山阴县', null, '朔州市', '山西省', 'T', null, '14060000', '14000000', '14062100', '140000', '140600000000', '140621000000');
INSERT INTO `t_dic_district` VALUES ('9827', '应县', null, '朔州市', '山西省', 'T', null, '14060000', '14000000', '14062200', '140000', '140600000000', '140622000000');
INSERT INTO `t_dic_district` VALUES ('9828', '右玉县', null, '朔州市', '山西省', 'T', null, '14060000', '14000000', '14062300', '140000', '140600000000', '140623000000');
INSERT INTO `t_dic_district` VALUES ('9829', '怀仁县', null, '朔州市', '山西省', 'T', null, '14060000', '14000000', '14062400', '140000', '140600000000', '140624000000');
INSERT INTO `t_dic_district` VALUES ('9830', '市辖区', null, '晋中市', '山西省', 'T', null, '14070000', '14000000', '14070100', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9831', '榆次区', null, '晋中市', '山西省', 'T', null, '14070000', '14000000', '14070200', '140000', '140700000000', '140702000000');
INSERT INTO `t_dic_district` VALUES ('9832', '榆社县', null, '晋中市', '山西省', 'T', null, '14070000', '14000000', '14072100', '140000', '140700000000', '140721000000');
INSERT INTO `t_dic_district` VALUES ('9833', '左权县', null, '晋中市', '山西省', 'T', null, '14070000', '14000000', '14072200', '140000', '140700000000', '140722000000');
INSERT INTO `t_dic_district` VALUES ('9834', '和顺县', null, '晋中市', '山西省', 'T', null, '14070000', '14000000', '14072300', '140000', '140700000000', '140723000000');
INSERT INTO `t_dic_district` VALUES ('9835', '昔阳县', null, '晋中市', '山西省', 'T', null, '14070000', '14000000', '14072400', '140000', '140700000000', '140724000000');
INSERT INTO `t_dic_district` VALUES ('9836', '寿阳县', null, '晋中市', '山西省', 'T', null, '14070000', '14000000', '14072500', '140000', '140700000000', '140725000000');
INSERT INTO `t_dic_district` VALUES ('9837', '太谷县', null, '晋中市', '山西省', 'T', null, '14070000', '14000000', '14072600', '140000', '140700000000', '140726000000');
INSERT INTO `t_dic_district` VALUES ('9838', '祁县', null, '晋中市', '山西省', 'T', null, '14070000', '14000000', '14072700', '140000', '140700000000', '140727000000');
INSERT INTO `t_dic_district` VALUES ('9839', '平遥县', null, '晋中市', '山西省', 'T', null, '14070000', '14000000', '14072800', '140000', '140700000000', '140728000000');
INSERT INTO `t_dic_district` VALUES ('9840', '灵石县', null, '晋中市', '山西省', 'T', null, '14070000', '14000000', '14072900', '140000', '140700000000', '140729000000');
INSERT INTO `t_dic_district` VALUES ('9841', '介休市', null, '晋中市', '山西省', 'T', null, '14070000', '14000000', '14078100', '140000', '140700000000', '140781000000');
INSERT INTO `t_dic_district` VALUES ('9842', '市辖区', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14080100', '140000', null, null);
INSERT INTO `t_dic_district` VALUES ('9843', '盐湖区', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14080200', '140000', '140800000000', '140802000000');
INSERT INTO `t_dic_district` VALUES ('9844', '临猗县', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14082100', '140000', '140800000000', '140821000000');
INSERT INTO `t_dic_district` VALUES ('9845', '万荣县', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14082200', '140000', '140800000000', '140822000000');
INSERT INTO `t_dic_district` VALUES ('9846', '闻喜县', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14082300', '140000', '140800000000', '140823000000');
INSERT INTO `t_dic_district` VALUES ('9847', '稷山县', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14082400', '140000', '140800000000', '140824000000');
INSERT INTO `t_dic_district` VALUES ('9848', '新绛县', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14082500', '140000', '140800000000', '140825000000');
INSERT INTO `t_dic_district` VALUES ('9849', '绛县', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14082600', '140000', '140800000000', '140826000000');
INSERT INTO `t_dic_district` VALUES ('9850', '垣曲县', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14082700', '140000', '140800000000', '140827000000');
INSERT INTO `t_dic_district` VALUES ('9851', '夏县', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14082800', '140000', '140800000000', '140828000000');
INSERT INTO `t_dic_district` VALUES ('9852', '平陆县', null, '运城市', '山西省', 'T', null, '14080000', '14000000', '14082900', '140000', '140800000000', '140829000000');
INSERT INTO `t_dic_district` VALUES ('9853', '科尔沁右翼中旗', null, '兴安盟', '内蒙古自治区', 'T', null, '15220000', '15000000', '15222200', '150000', '152200000000', '152222000000');
INSERT INTO `t_dic_district` VALUES ('9854', '扎赉特旗', null, '兴安盟', '内蒙古自治区', 'T', null, '15220000', '15000000', '15222300', '150000', '152200000000', '152223000000');
INSERT INTO `t_dic_district` VALUES ('9855', '突泉县', null, '兴安盟', '内蒙古自治区', 'T', null, '15220000', '15000000', '15222400', '150000', '152200000000', '152224000000');
INSERT INTO `t_dic_district` VALUES ('9856', '二连浩特市', null, '锡林郭勒盟', '内蒙古自治区', 'T', null, '15250000', '15000000', '15250100', '150000', '152500000000', '152501000000');
INSERT INTO `t_dic_district` VALUES ('9857', '锡林浩特市', null, '锡林郭勒盟', '内蒙古自治区', 'T', null, '15250000', '15000000', '15250200', '150000', '152500000000', '152502000000');
INSERT INTO `t_dic_district` VALUES ('9858', '阿巴嘎旗', null, '锡林郭勒盟', '内蒙古自治区', 'T', null, '15250000', '15000000', '15252200', '150000', '152500000000', '152522000000');
INSERT INTO `t_dic_district` VALUES ('9859', '苏尼特左旗', null, '锡林郭勒盟', '内蒙古自治区', 'T', null, '15250000', '15000000', '15252300', '150000', '152500000000', '152523000000');
INSERT INTO `t_dic_district` VALUES ('9860', '苏尼特右旗', null, '锡林郭勒盟', '内蒙古自治区', 'T', null, '15250000', '15000000', '15252400', '150000', '152500000000', '152524000000');
INSERT INTO `t_dic_district` VALUES ('9861', '东乌珠穆沁旗', null, '锡林郭勒盟', '内蒙古自治区', 'T', null, '15250000', '15000000', '15252500', '150000', '152500000000', '152525000000');
INSERT INTO `t_dic_district` VALUES ('9862', '西乌珠穆沁旗', null, '锡林郭勒盟', '内蒙古自治区', 'T', null, '15250000', '15000000', '15252600', '150000', '152500000000', '152526000000');
INSERT INTO `t_dic_district` VALUES ('9863', '太仆寺旗', null, '锡林郭勒盟', '内蒙古自治区', 'T', null, '15250000', '15000000', '15252700', '150000', '152500000000', '152527000000');
INSERT INTO `t_dic_district` VALUES ('9864', '镶黄旗', null, '锡林郭勒盟', '内蒙古自治区', 'T', null, '15250000', '15000000', '15252800', '150000', '152500000000', '152528000000');
INSERT INTO `t_dic_district` VALUES ('9865', '正镶白旗', null, '锡林郭勒盟', '内蒙古自治区', 'T', null, '15250000', '15000000', '15252900', '150000', '152500000000', '152529000000');
INSERT INTO `t_dic_district` VALUES ('9866', '正蓝旗', null, '锡林郭勒盟', '内蒙古自治区', 'T', null, '15250000', '15000000', '15253000', '150000', '152500000000', '152530000000');
INSERT INTO `t_dic_district` VALUES ('9867', '多伦县', null, '锡林郭勒盟', '内蒙古自治区', 'T', null, '15250000', '15000000', '15253100', '150000', '152500000000', '152531000000');
INSERT INTO `t_dic_district` VALUES ('9868', '集宁区', null, '乌兰察布盟', '内蒙古自治区', 'T', null, '15260000', '15000000', '15260100', '150000', '150900000000', '150902000000');
INSERT INTO `t_dic_district` VALUES ('9869', '丰镇市', null, '乌兰察布盟', '内蒙古自治区', 'T', null, '15260000', '15000000', '15260200', '150000', '150900000000', '150981000000');
INSERT INTO `t_dic_district` VALUES ('9870', '卓资县', null, '乌兰察布盟', '内蒙古自治区', 'T', null, '15260000', '15000000', '15262400', '150000', '150900000000', '150921000000');
INSERT INTO `t_dic_district` VALUES ('9871', '化德县', null, '乌兰察布盟', '内蒙古自治区', 'T', null, '15260000', '15000000', '15262500', '150000', '150900000000', '150922000000');
INSERT INTO `t_dic_district` VALUES ('9872', '襄汾县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14102300', '140000', '141000000000', '141023000000');
INSERT INTO `t_dic_district` VALUES ('9873', '洪洞县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14102400', '140000', '141000000000', '141024000000');
INSERT INTO `t_dic_district` VALUES ('9874', '古县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14102500', '140000', '141000000000', '141025000000');
INSERT INTO `t_dic_district` VALUES ('9875', '安泽县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14102600', '140000', '141000000000', '141026000000');
INSERT INTO `t_dic_district` VALUES ('9876', '浮山县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14102700', '140000', '141000000000', '141027000000');
INSERT INTO `t_dic_district` VALUES ('9877', '吉县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14102800', '140000', '141000000000', '141028000000');
INSERT INTO `t_dic_district` VALUES ('9878', '乡宁县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14102900', '140000', '141000000000', '141029000000');
INSERT INTO `t_dic_district` VALUES ('9879', '大宁县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14103000', '140000', '141000000000', '141030000000');
INSERT INTO `t_dic_district` VALUES ('9880', '隰县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14103100', '140000', '141000000000', '141031000000');
INSERT INTO `t_dic_district` VALUES ('9881', '永和县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14103200', '140000', '141000000000', '141032000000');
INSERT INTO `t_dic_district` VALUES ('9882', '蒲县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14103300', '140000', '141000000000', '141033000000');
INSERT INTO `t_dic_district` VALUES ('9883', '汾西县', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14103400', '140000', '141000000000', '141034000000');
INSERT INTO `t_dic_district` VALUES ('9884', '侯马市', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14108100', '140000', '141000000000', '141081000000');
INSERT INTO `t_dic_district` VALUES ('9885', '霍州市', null, '临汾市', '山西省', 'T', null, '14100000', '14000000', '14108200', '140000', '141000000000', '141082000000');
INSERT INTO `t_dic_district` VALUES ('9886', '孝义市', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14230100', '140000', '141100000000', '141181000000');
INSERT INTO `t_dic_district` VALUES ('9887', '离石区', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14230200', '140000', '141100000000', '141102000000');
INSERT INTO `t_dic_district` VALUES ('9888', '汾阳市', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14230300', '140000', '141100000000', '141182000000');
INSERT INTO `t_dic_district` VALUES ('9889', '文水县', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14232200', '140000', '141100000000', '141121000000');
INSERT INTO `t_dic_district` VALUES ('9890', '交城县', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14232300', '140000', '141100000000', '141122000000');
INSERT INTO `t_dic_district` VALUES ('9891', '兴县', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14232500', '140000', '141100000000', '141123000000');
INSERT INTO `t_dic_district` VALUES ('9892', '临县', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14232600', '140000', '141100000000', '141124000000');
INSERT INTO `t_dic_district` VALUES ('9893', '柳林县', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14232700', '140000', '141100000000', '141125000000');
INSERT INTO `t_dic_district` VALUES ('9894', '石楼县', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14232800', '140000', '141100000000', '141126000000');
INSERT INTO `t_dic_district` VALUES ('9895', '岚县', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14232900', '140000', '141100000000', '141127000000');
INSERT INTO `t_dic_district` VALUES ('9896', '方山县', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14233000', '140000', '141100000000', '141128000000');
INSERT INTO `t_dic_district` VALUES ('9897', '中阳县', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14233200', '140000', '141100000000', '141129000000');
INSERT INTO `t_dic_district` VALUES ('9898', '交口县', null, '吕梁地区', '山西省', 'T', null, '14230000', '14000000', '14233300', '140000', '141100000000', '141130000000');
INSERT INTO `t_dic_district` VALUES ('9899', '市辖区', null, '呼和浩特市', '内蒙古自治区', 'T', null, '15010000', '15000000', '15010100', '150000', null, null);
INSERT INTO `t_dic_district` VALUES ('9900', '新城区', null, '呼和浩特市', '内蒙古自治区', 'T', null, '15010000', '15000000', '15010200', '150000', '150100000000', '150102000000');
INSERT INTO `t_dic_district` VALUES ('9901', '回民区', null, '呼和浩特市', '内蒙古自治区', 'T', null, '15010000', '15000000', '15010300', '150000', '150100000000', '150103000000');
INSERT INTO `t_dic_district` VALUES ('9902', '玉泉区', null, '呼和浩特市', '内蒙古自治区', 'T', null, '15010000', '15000000', '15010400', '150000', '150100000000', '150104000000');
INSERT INTO `t_dic_district` VALUES ('9903', '赛罕区', null, '呼和浩特市', '内蒙古自治区', 'T', null, '15010000', '15000000', '15010500', '150000', '150100000000', '150105000000');
INSERT INTO `t_dic_district` VALUES ('9904', '土默特左旗', null, '呼和浩特市', '内蒙古自治区', 'T', null, '15010000', '15000000', '15012100', '150000', '150100000000', '150121000000');
INSERT INTO `t_dic_district` VALUES ('9905', '托克托县', null, '呼和浩特市', '内蒙古自治区', 'T', null, '15010000', '15000000', '15012200', '150000', '150100000000', '150122000000');
INSERT INTO `t_dic_district` VALUES ('9906', '和林格尔县', null, '呼和浩特市', '内蒙古自治区', 'T', null, '15010000', '15000000', '15012300', '150000', '150100000000', '150123000000');
INSERT INTO `t_dic_district` VALUES ('9907', '清水河县', null, '呼和浩特市', '内蒙古自治区', 'T', null, '15010000', '15000000', '15012400', '150000', '150100000000', '150124000000');
INSERT INTO `t_dic_district` VALUES ('9908', '武川县', null, '呼和浩特市', '内蒙古自治区', 'T', null, '15010000', '15000000', '15012500', '150000', '150100000000', '150125000000');
INSERT INTO `t_dic_district` VALUES ('9909', '市辖区', null, '包头市', '内蒙古自治区', 'T', null, '15020000', '15000000', '15020100', '150000', null, null);
INSERT INTO `t_dic_district` VALUES ('9910', '东河区', null, '包头市', '内蒙古自治区', 'T', null, '15020000', '15000000', '15020200', '150000', '150200000000', '150202000000');
INSERT INTO `t_dic_district` VALUES ('9911', '昆都仑区', null, '包头市', '内蒙古自治区', 'T', null, '15020000', '15000000', '15020300', '150000', '150200000000', '150203000000');
INSERT INTO `t_dic_district` VALUES ('9912', '青山区', null, '包头市', '内蒙古自治区', 'T', null, '15020000', '15000000', '15020400', '150000', '150200000000', '150204000000');
INSERT INTO `t_dic_district` VALUES ('9913', '内保分局', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13018900', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9914', '开发区', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13018800', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('9915', '弓长岭区', null, '辽阳市', '辽宁省', 'T', null, '21100000', '21000000', '21100500', '210000', '211000000000', '211005000000');
INSERT INTO `t_dic_district` VALUES ('9916', '太子河区', null, '辽阳市', '辽宁省', 'T', null, '21100000', '21000000', '21101100', '210000', '211000000000', '211011000000');
INSERT INTO `t_dic_district` VALUES ('9917', '辽阳县', null, '辽阳市', '辽宁省', 'T', null, '21100000', '21000000', '21102100', '210000', '211000000000', '211021000000');
INSERT INTO `t_dic_district` VALUES ('9918', '灯塔市', null, '辽阳市', '辽宁省', 'T', null, '21100000', '21000000', '21108100', '210000', '211000000000', '211081000000');
INSERT INTO `t_dic_district` VALUES ('9919', '市辖区', null, '盘锦市', '辽宁省', 'T', null, '21110000', '21000000', '21110100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('9920', '双台子区', null, '盘锦市', '辽宁省', 'T', null, '21110000', '21000000', '21110200', '210000', '211100000000', '211102000000');
INSERT INTO `t_dic_district` VALUES ('9921', '兴隆台区', null, '盘锦市', '辽宁省', 'T', null, '21110000', '21000000', '21110300', '210000', '211100000000', '211103000000');
INSERT INTO `t_dic_district` VALUES ('9922', '大洼区', null, '盘锦市', '辽宁省', 'T', null, '21110000', '21000000', '21112100', '210000', '211100000000', '211104000000');
INSERT INTO `t_dic_district` VALUES ('9923', '盘山县', null, '盘锦市', '辽宁省', 'T', null, '21110000', '21000000', '21112200', '210000', '211100000000', '211122000000');
INSERT INTO `t_dic_district` VALUES ('9924', '市辖区', null, '铁岭市', '辽宁省', 'T', null, '21120000', '21000000', '21120100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('9925', '银州区', null, '铁岭市', '辽宁省', 'T', null, '21120000', '21000000', '21120200', '210000', '211200000000', '211202000000');
INSERT INTO `t_dic_district` VALUES ('9926', '清河区', null, '铁岭市', '辽宁省', 'T', null, '21120000', '21000000', '21120400', '210000', '211200000000', '211204000000');
INSERT INTO `t_dic_district` VALUES ('9927', '铁岭县', null, '铁岭市', '辽宁省', 'T', null, '21120000', '21000000', '21122100', '210000', '211200000000', '211221000000');
INSERT INTO `t_dic_district` VALUES ('9928', '西丰县', null, '铁岭市', '辽宁省', 'T', null, '21120000', '21000000', '21122300', '210000', '211200000000', '211223000000');
INSERT INTO `t_dic_district` VALUES ('9929', '昌图县', null, '铁岭市', '辽宁省', 'T', null, '21120000', '21000000', '21122400', '210000', '211200000000', '211224000000');
INSERT INTO `t_dic_district` VALUES ('9930', '调兵山市', null, '铁岭市', '辽宁省', 'T', null, '21120000', '21000000', '21128100', '210000', '211200000000', '211281000000');
INSERT INTO `t_dic_district` VALUES ('9931', '开原市', null, '铁岭市', '辽宁省', 'T', null, '21120000', '21000000', '21128200', '210000', '211200000000', '211282000000');
INSERT INTO `t_dic_district` VALUES ('9932', '市辖区', null, '朝阳市', '辽宁省', 'T', null, '21130000', '21000000', '21130100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('9933', '双塔区', null, '朝阳市', '辽宁省', 'T', null, '21130000', '21000000', '21130200', '210000', '211300000000', '211302000000');
INSERT INTO `t_dic_district` VALUES ('9934', '龙城区', null, '朝阳市', '辽宁省', 'T', null, '21130000', '21000000', '21130300', '210000', '211300000000', '211303000000');
INSERT INTO `t_dic_district` VALUES ('9935', '朝阳县', null, '朝阳市', '辽宁省', 'T', null, '21130000', '21000000', '21132100', '210000', '211300000000', '211321000000');
INSERT INTO `t_dic_district` VALUES ('9936', '建平县', null, '朝阳市', '辽宁省', 'T', null, '21130000', '21000000', '21132200', '210000', '211300000000', '211322000000');
INSERT INTO `t_dic_district` VALUES ('9937', '商都县', null, '乌兰察布盟', '内蒙古自治区', 'T', null, '15260000', '15000000', '15262600', '150000', '150900000000', '150923000000');
INSERT INTO `t_dic_district` VALUES ('9938', '兴和县', null, '乌兰察布盟', '内蒙古自治区', 'T', null, '15260000', '15000000', '15262700', '150000', '150900000000', '150924000000');
INSERT INTO `t_dic_district` VALUES ('9939', '凉城县', null, '乌兰察布盟', '内蒙古自治区', 'T', null, '15260000', '15000000', '15262900', '150000', '150900000000', '150925000000');
INSERT INTO `t_dic_district` VALUES ('9940', '察哈尔右翼前旗', null, '乌兰察布盟', '内蒙古自治区', 'T', null, '15260000', '15000000', '15263000', '150000', '150900000000', '150926000000');
INSERT INTO `t_dic_district` VALUES ('9941', '察哈尔右翼中旗', null, '乌兰察布盟', '内蒙古自治区', 'T', null, '15260000', '15000000', '15263100', '150000', '150900000000', '150927000000');
INSERT INTO `t_dic_district` VALUES ('9942', '察哈尔右翼后旗', null, '乌兰察布盟', '内蒙古自治区', 'T', null, '15260000', '15000000', '15263200', '150000', '150900000000', '150928000000');
INSERT INTO `t_dic_district` VALUES ('9943', '四子王旗', null, '乌兰察布盟', '内蒙古自治区', 'T', null, '15260000', '15000000', '15263400', '150000', '150900000000', '150929000000');
INSERT INTO `t_dic_district` VALUES ('9944', '临河区', null, '巴彦淖尔盟', '内蒙古自治区', 'T', null, '15280000', '15000000', '15280100', '150000', '150800000000', '150802000000');
INSERT INTO `t_dic_district` VALUES ('9945', '五原县', null, '巴彦淖尔盟', '内蒙古自治区', 'T', null, '15280000', '15000000', '15282200', '150000', '150800000000', '150821000000');
INSERT INTO `t_dic_district` VALUES ('9946', '磴口县', null, '巴彦淖尔盟', '内蒙古自治区', 'T', null, '15280000', '15000000', '15282300', '150000', '150800000000', '150822000000');
INSERT INTO `t_dic_district` VALUES ('9947', '乌拉特前旗', null, '巴彦淖尔盟', '内蒙古自治区', 'T', null, '15280000', '15000000', '15282400', '150000', '150800000000', '150823000000');
INSERT INTO `t_dic_district` VALUES ('9948', '乌拉特中旗', null, '巴彦淖尔盟', '内蒙古自治区', 'T', null, '15280000', '15000000', '15282500', '150000', '150800000000', '150824000000');
INSERT INTO `t_dic_district` VALUES ('9949', '乌拉特后旗', null, '巴彦淖尔盟', '内蒙古自治区', 'T', null, '15280000', '15000000', '15282600', '150000', '150800000000', '150825000000');
INSERT INTO `t_dic_district` VALUES ('9950', '杭锦后旗', null, '巴彦淖尔盟', '内蒙古自治区', 'T', null, '15280000', '15000000', '15282700', '150000', '150800000000', '150826000000');
INSERT INTO `t_dic_district` VALUES ('9951', '阿拉善左旗', null, '阿拉善盟', '内蒙古自治区', 'T', null, '15290000', '15000000', '15292100', '150000', '152900000000', '152921000000');
INSERT INTO `t_dic_district` VALUES ('9952', '阿拉善右旗', null, '阿拉善盟', '内蒙古自治区', 'T', null, '15290000', '15000000', '15292200', '150000', '152900000000', '152922000000');
INSERT INTO `t_dic_district` VALUES ('9953', '额济纳旗', null, '阿拉善盟', '内蒙古自治区', 'T', null, '15290000', '15000000', '15292300', '150000', '152900000000', '152923000000');
INSERT INTO `t_dic_district` VALUES ('9954', '市辖区', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21010100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('9955', '和平区', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21010200', '210000', '210100000000', '210102000000');
INSERT INTO `t_dic_district` VALUES ('9956', '沈河区', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21010300', '210000', '210100000000', '210103000000');
INSERT INTO `t_dic_district` VALUES ('9957', '大东区', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21010400', '210000', '210100000000', '210104000000');
INSERT INTO `t_dic_district` VALUES ('9958', '皇姑区', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21010500', '210000', '210100000000', '210105000000');
INSERT INTO `t_dic_district` VALUES ('9959', '铁西区', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21010600', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('9960', '苏家屯区', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21011100', '210000', '210100000000', '210111000000');
INSERT INTO `t_dic_district` VALUES ('9961', '浑南区', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21011200', '210000', '210100000000', '210112000000');
INSERT INTO `t_dic_district` VALUES ('9962', '沈北新区', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21011300', '210000', '210100000000', '210113000000');
INSERT INTO `t_dic_district` VALUES ('9963', '于洪区', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21011400', '210000', '210100000000', '210114000000');
INSERT INTO `t_dic_district` VALUES ('9964', '辽中区', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21012200', '210000', '210100000000', '210115000000');
INSERT INTO `t_dic_district` VALUES ('9965', '康平县', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21012300', '210000', '210100000000', '210123000000');
INSERT INTO `t_dic_district` VALUES ('9966', '法库县', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21012400', '210000', '210100000000', '210124000000');
INSERT INTO `t_dic_district` VALUES ('9967', '新民市', null, '沈阳市', '辽宁省', 'T', null, '21010000', '21000000', '21018100', '210000', '210100000000', '210181000000');
INSERT INTO `t_dic_district` VALUES ('9968', '市辖区', null, '大连市', '辽宁省', 'T', null, '21020000', '21000000', '21020100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('9969', '中山区', null, '大连市', '辽宁省', 'T', null, '21020000', '21000000', '21020200', '210000', '210200000000', '210202000000');
INSERT INTO `t_dic_district` VALUES ('9970', '西岗区', null, '大连市', '辽宁省', 'T', null, '21020000', '21000000', '21020300', '210000', '210200000000', '210203000000');
INSERT INTO `t_dic_district` VALUES ('9971', '沙河口区', null, '大连市', '辽宁省', 'T', null, '21020000', '21000000', '21020400', '210000', '210200000000', '210204000000');
INSERT INTO `t_dic_district` VALUES ('9972', '甘井子区', null, '大连市', '辽宁省', 'T', null, '21020000', '21000000', '21021100', '210000', '210200000000', '210211000000');
INSERT INTO `t_dic_district` VALUES ('9973', '旅顺口区', null, '大连市', '辽宁省', 'T', null, '21020000', '21000000', '21021200', '210000', '210200000000', '210212000000');
INSERT INTO `t_dic_district` VALUES ('9974', '金州区', null, '大连市', '辽宁省', 'T', null, '21020000', '21000000', '21021300', '210000', '210200000000', '210213000000');
INSERT INTO `t_dic_district` VALUES ('9975', '西安区', null, '辽源市', '吉林省', 'T', null, '22040000', '22000000', '22040300', '220000', '220400000000', '220403000000');
INSERT INTO `t_dic_district` VALUES ('9976', '东丰县', null, '辽源市', '吉林省', 'T', null, '22040000', '22000000', '22042100', '220000', '220400000000', '220421000000');
INSERT INTO `t_dic_district` VALUES ('9977', '东辽县', null, '辽源市', '吉林省', 'T', null, '22040000', '22000000', '22042200', '220000', '220400000000', '220422000000');
INSERT INTO `t_dic_district` VALUES ('9978', '市辖区', null, '通化市', '吉林省', 'T', null, '22050000', '22000000', '22050100', '220000', '220800000000', '220801000000');
INSERT INTO `t_dic_district` VALUES ('9979', '东昌区', null, '通化市', '吉林省', 'T', null, '22050000', '22000000', '22050200', '220000', '220500000000', '220502000000');
INSERT INTO `t_dic_district` VALUES ('9980', '二道江区', null, '通化市', '吉林省', 'T', null, '22050000', '22000000', '22050300', '220000', '220500000000', '220503000000');
INSERT INTO `t_dic_district` VALUES ('9981', '通化县', null, '通化市', '吉林省', 'T', null, '22050000', '22000000', '22052100', '220000', '220500000000', '220521000000');
INSERT INTO `t_dic_district` VALUES ('9982', '辉南县', null, '通化市', '吉林省', 'T', null, '22050000', '22000000', '22052300', '220000', '220500000000', '220523000000');
INSERT INTO `t_dic_district` VALUES ('9983', '柳河县', null, '通化市', '吉林省', 'T', null, '22050000', '22000000', '22052400', '220000', '220500000000', '220524000000');
INSERT INTO `t_dic_district` VALUES ('9984', '梅河口市', null, '通化市', '吉林省', 'T', null, '22050000', '22000000', '22058100', '220000', '220500000000', '220581000000');
INSERT INTO `t_dic_district` VALUES ('9985', '集安市', null, '通化市', '吉林省', 'T', null, '22050000', '22000000', '22058200', '220000', '220500000000', '220582000000');
INSERT INTO `t_dic_district` VALUES ('9986', '市辖区', null, '白山市', '吉林省', 'T', null, '22060000', '22000000', '22060100', '220000', null, null);
INSERT INTO `t_dic_district` VALUES ('9987', '浑江区', null, '白山市', '吉林省', 'T', null, '22060000', '22000000', '22060200', '220000', '220600000000', '220602000000');
INSERT INTO `t_dic_district` VALUES ('9988', '抚松县', null, '白山市', '吉林省', 'T', null, '22060000', '22000000', '22062100', '220000', '220600000000', '220621000000');
INSERT INTO `t_dic_district` VALUES ('9989', '靖宇县', null, '白山市', '吉林省', 'T', null, '22060000', '22000000', '22062200', '220000', '220600000000', '220622000000');
INSERT INTO `t_dic_district` VALUES ('9990', '长白朝鲜族自治县', null, '白山市', '吉林省', 'T', null, '22060000', '22000000', '22062300', '220000', '220600000000', '220623000000');
INSERT INTO `t_dic_district` VALUES ('9991', '江源区', null, '白山市', '吉林省', 'T', null, '22060000', '22000000', '22062500', '220000', '220600000000', '220605000000');
INSERT INTO `t_dic_district` VALUES ('9992', '临江市', null, '白山市', '吉林省', 'T', null, '22060000', '22000000', '22068100', '220000', '220600000000', '220681000000');
INSERT INTO `t_dic_district` VALUES ('9993', '市辖区', null, '松原市', '吉林省', 'T', null, '22070000', '22000000', '22070100', '220000', null, null);
INSERT INTO `t_dic_district` VALUES ('9994', '宁江区', null, '松原市', '吉林省', 'T', null, '22070000', '22000000', '22070200', '220000', '220700000000', '220702000000');
INSERT INTO `t_dic_district` VALUES ('9995', '前郭尔罗斯蒙古族自治县', null, '松原市', '吉林省', 'T', null, '22070000', '22000000', '22072100', '220000', '220700000000', '220721000000');
INSERT INTO `t_dic_district` VALUES ('9996', '平山区', null, '本溪市', '辽宁省', 'T', null, '21050000', '21000000', '21050200', '210000', '210500000000', '210502000000');
INSERT INTO `t_dic_district` VALUES ('9997', '溪湖区', null, '本溪市', '辽宁省', 'T', null, '21050000', '21000000', '21050300', '210000', '210500000000', '210503000000');
INSERT INTO `t_dic_district` VALUES ('9998', '明山区', null, '本溪市', '辽宁省', 'T', null, '21050000', '21000000', '21050400', '210000', '210500000000', '210504000000');
INSERT INTO `t_dic_district` VALUES ('9999', '南芬区', null, '本溪市', '辽宁省', 'T', null, '21050000', '21000000', '21050500', '210000', '210500000000', '210505000000');
INSERT INTO `t_dic_district` VALUES ('10000', '本溪满族自治县', null, '本溪市', '辽宁省', 'T', null, '21050000', '21000000', '21052100', '210000', '210500000000', '210521000000');
INSERT INTO `t_dic_district` VALUES ('10001', '桓仁满族自治县', null, '本溪市', '辽宁省', 'T', null, '21050000', '21000000', '21052200', '210000', '210500000000', '210522000000');
INSERT INTO `t_dic_district` VALUES ('10002', '市辖区', null, '丹东市', '辽宁省', 'T', null, '21060000', '21000000', '21060100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('10003', '元宝区', null, '丹东市', '辽宁省', 'T', null, '21060000', '21000000', '21060200', '210000', '210600000000', '210602000000');
INSERT INTO `t_dic_district` VALUES ('10004', '振兴区', null, '丹东市', '辽宁省', 'T', null, '21060000', '21000000', '21060300', '210000', '210600000000', '210603000000');
INSERT INTO `t_dic_district` VALUES ('10005', '振安区', null, '丹东市', '辽宁省', 'T', null, '21060000', '21000000', '21060400', '210000', '210600000000', '210604000000');
INSERT INTO `t_dic_district` VALUES ('10006', '宽甸满族自治县', null, '丹东市', '辽宁省', 'T', null, '21060000', '21000000', '21062400', '210000', '210600000000', '210624000000');
INSERT INTO `t_dic_district` VALUES ('10007', '东港市', null, '丹东市', '辽宁省', 'T', null, '21060000', '21000000', '21068100', '210000', '210600000000', '210681000000');
INSERT INTO `t_dic_district` VALUES ('10008', '凤城市', null, '丹东市', '辽宁省', 'T', null, '21060000', '21000000', '21068200', '210000', '210600000000', '210682000000');
INSERT INTO `t_dic_district` VALUES ('10009', '市辖区', null, '锦州市', '辽宁省', 'T', null, '21070000', '21000000', '21070100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('10010', '古塔区', null, '锦州市', '辽宁省', 'T', null, '21070000', '21000000', '21070200', '210000', '210700000000', '210702000000');
INSERT INTO `t_dic_district` VALUES ('10011', '凌河区', null, '锦州市', '辽宁省', 'T', null, '21070000', '21000000', '21070300', '210000', '210700000000', '210703000000');
INSERT INTO `t_dic_district` VALUES ('10012', '太和区', null, '锦州市', '辽宁省', 'T', null, '21070000', '21000000', '21071100', '210000', '210700000000', '210711000000');
INSERT INTO `t_dic_district` VALUES ('10013', '黑山县', null, '锦州市', '辽宁省', 'T', null, '21070000', '21000000', '21072600', '210000', '210700000000', '210726000000');
INSERT INTO `t_dic_district` VALUES ('10014', '义县', null, '锦州市', '辽宁省', 'T', null, '21070000', '21000000', '21072700', '210000', '210700000000', '210727000000');
INSERT INTO `t_dic_district` VALUES ('10015', '凌海市', null, '锦州市', '辽宁省', 'T', null, '21070000', '21000000', '21078100', '210000', '210700000000', '210781000000');
INSERT INTO `t_dic_district` VALUES ('10016', '北镇市', null, '锦州市', '辽宁省', 'T', null, '21070000', '21000000', '21078200', '210000', '210700000000', '210782000000');
INSERT INTO `t_dic_district` VALUES ('10017', '市辖区', null, '营口市', '辽宁省', 'T', null, '21080000', '21000000', '21080100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('10018', '站前区', null, '营口市', '辽宁省', 'T', null, '21080000', '21000000', '21080200', '210000', '210800000000', '210802000000');
INSERT INTO `t_dic_district` VALUES ('10019', '西市区', null, '营口市', '辽宁省', 'T', null, '21080000', '21000000', '21080300', '210000', '210800000000', '210803000000');
INSERT INTO `t_dic_district` VALUES ('10020', '鲅鱼圈区', null, '营口市', '辽宁省', 'T', null, '21080000', '21000000', '21080400', '210000', '210800000000', '210804000000');
INSERT INTO `t_dic_district` VALUES ('10021', '老边区', null, '营口市', '辽宁省', 'T', null, '21080000', '21000000', '21081100', '210000', '210800000000', '210811000000');
INSERT INTO `t_dic_district` VALUES ('10022', '盖州市', null, '营口市', '辽宁省', 'T', null, '21080000', '21000000', '21088100', '210000', '210800000000', '210881000000');
INSERT INTO `t_dic_district` VALUES ('10023', '大石桥市', null, '营口市', '辽宁省', 'T', null, '21080000', '21000000', '21088200', '210000', '210800000000', '210882000000');
INSERT INTO `t_dic_district` VALUES ('10024', '市辖区', null, '阜新市', '辽宁省', 'T', null, '21090000', '21000000', '21090100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('10025', '海州区', null, '阜新市', '辽宁省', 'T', null, '21090000', '21000000', '21090200', '210000', '210900000000', '210902000000');
INSERT INTO `t_dic_district` VALUES ('10026', '新邱区', null, '阜新市', '辽宁省', 'T', null, '21090000', '21000000', '21090300', '210000', '210900000000', '210903000000');
INSERT INTO `t_dic_district` VALUES ('10027', '太平区', null, '阜新市', '辽宁省', 'T', null, '21090000', '21000000', '21090400', '210000', '210900000000', '210904000000');
INSERT INTO `t_dic_district` VALUES ('10028', '清河门区', null, '阜新市', '辽宁省', 'T', null, '21090000', '21000000', '21090500', '210000', '210900000000', '210905000000');
INSERT INTO `t_dic_district` VALUES ('10029', '细河区', null, '阜新市', '辽宁省', 'T', null, '21090000', '21000000', '21091100', '210000', '210900000000', '210911000000');
INSERT INTO `t_dic_district` VALUES ('10030', '阜新蒙古族自治县', null, '阜新市', '辽宁省', 'T', null, '21090000', '21000000', '21092100', '210000', '210900000000', '210921000000');
INSERT INTO `t_dic_district` VALUES ('10031', '彰武县', null, '阜新市', '辽宁省', 'T', null, '21090000', '21000000', '21092200', '210000', '210900000000', '210922000000');
INSERT INTO `t_dic_district` VALUES ('10032', '市辖区', null, '辽阳市', '辽宁省', 'T', null, '21100000', '21000000', '21100100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('10033', '白塔区', null, '辽阳市', '辽宁省', 'T', null, '21100000', '21000000', '21100200', '210000', '211000000000', '211002000000');
INSERT INTO `t_dic_district` VALUES ('10034', '文圣区', null, '辽阳市', '辽宁省', 'T', null, '21100000', '21000000', '21100300', '210000', '211000000000', '211003000000');
INSERT INTO `t_dic_district` VALUES ('10035', '宏伟区', null, '辽阳市', '辽宁省', 'T', null, '21100000', '21000000', '21100400', '210000', '211000000000', '211004000000');
INSERT INTO `t_dic_district` VALUES ('10036', '建华区', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23020300', '230000', '230200000000', '230203000000');
INSERT INTO `t_dic_district` VALUES ('10037', '铁锋区', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23020400', '230000', '230200000000', '230204000000');
INSERT INTO `t_dic_district` VALUES ('10038', '昂昂溪区', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23020500', '230000', '230200000000', '230205000000');
INSERT INTO `t_dic_district` VALUES ('10039', '富拉尔基区', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23020600', '230000', '230200000000', '230206000000');
INSERT INTO `t_dic_district` VALUES ('10040', '碾子山区', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23020700', '230000', '230200000000', '230207000000');
INSERT INTO `t_dic_district` VALUES ('10041', '梅里斯达斡尔族区', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23020800', '230000', '230200000000', '230208000000');
INSERT INTO `t_dic_district` VALUES ('10042', '龙江县', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23022100', '230000', '230200000000', '230221000000');
INSERT INTO `t_dic_district` VALUES ('10043', '依安县', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23022300', '230000', '230200000000', '230223000000');
INSERT INTO `t_dic_district` VALUES ('10044', '泰来县', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23022400', '230000', '230200000000', '230224000000');
INSERT INTO `t_dic_district` VALUES ('10045', '甘南县', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23022500', '230000', '230200000000', '230225000000');
INSERT INTO `t_dic_district` VALUES ('10046', '富裕县', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23022700', '230000', '230200000000', '230227000000');
INSERT INTO `t_dic_district` VALUES ('10047', '克山县', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23022900', '230000', '230200000000', '230229000000');
INSERT INTO `t_dic_district` VALUES ('10048', '克东县', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23023000', '230000', '230200000000', '230230000000');
INSERT INTO `t_dic_district` VALUES ('10049', '拜泉县', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23023100', '230000', '230200000000', '230231000000');
INSERT INTO `t_dic_district` VALUES ('10050', '讷河市', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23028100', '230000', '230200000000', '230281000000');
INSERT INTO `t_dic_district` VALUES ('10051', '市辖区', null, '鸡西市', '黑龙江省', 'T', null, '23030000', '23000000', '23030100', '230000', '231200000000', '231201000000');
INSERT INTO `t_dic_district` VALUES ('10052', '鸡冠区', null, '鸡西市', '黑龙江省', 'T', null, '23030000', '23000000', '23030200', '230000', '230300000000', '230302000000');
INSERT INTO `t_dic_district` VALUES ('10053', '恒山区', null, '鸡西市', '黑龙江省', 'T', null, '23030000', '23000000', '23030300', '230000', '230300000000', '230303000000');
INSERT INTO `t_dic_district` VALUES ('10054', '滴道区', null, '鸡西市', '黑龙江省', 'T', null, '23030000', '23000000', '23030400', '230000', '230300000000', '230304000000');
INSERT INTO `t_dic_district` VALUES ('10055', '梨树区', null, '鸡西市', '黑龙江省', 'T', null, '23030000', '23000000', '23030500', '230000', '230300000000', '230305000000');
INSERT INTO `t_dic_district` VALUES ('10056', '城子河区', null, '鸡西市', '黑龙江省', 'T', null, '23030000', '23000000', '23030600', '230000', '230300000000', '230306000000');
INSERT INTO `t_dic_district` VALUES ('10057', '麻山区', null, '鸡西市', '黑龙江省', 'T', null, '23030000', '23000000', '23030700', '230000', '230300000000', '230307000000');
INSERT INTO `t_dic_district` VALUES ('10058', '喀喇沁左翼蒙古族自治县', null, '朝阳市', '辽宁省', 'T', null, '21130000', '21000000', '21132400', '210000', '211300000000', '211324000000');
INSERT INTO `t_dic_district` VALUES ('10059', '北票市', null, '朝阳市', '辽宁省', 'T', null, '21130000', '21000000', '21138100', '210000', '211300000000', '211381000000');
INSERT INTO `t_dic_district` VALUES ('10060', '凌源市', null, '朝阳市', '辽宁省', 'T', null, '21130000', '21000000', '21138200', '210000', '211300000000', '211382000000');
INSERT INTO `t_dic_district` VALUES ('10061', '市辖区', null, '葫芦岛市', '辽宁省', 'T', null, '21140000', '21000000', '21140100', '210000', null, null);
INSERT INTO `t_dic_district` VALUES ('10062', '连山区', null, '葫芦岛市', '辽宁省', 'T', null, '21140000', '21000000', '21140200', '210000', '211400000000', '211402000000');
INSERT INTO `t_dic_district` VALUES ('10063', '龙港区', null, '葫芦岛市', '辽宁省', 'T', null, '21140000', '21000000', '21140300', '210000', '211400000000', '211403000000');
INSERT INTO `t_dic_district` VALUES ('10064', '南票区', null, '葫芦岛市', '辽宁省', 'T', null, '21140000', '21000000', '21140400', '210000', '211400000000', '211404000000');
INSERT INTO `t_dic_district` VALUES ('10065', '绥中县', null, '葫芦岛市', '辽宁省', 'T', null, '21140000', '21000000', '21142100', '210000', '211400000000', '211421000000');
INSERT INTO `t_dic_district` VALUES ('10066', '建昌县', null, '葫芦岛市', '辽宁省', 'T', null, '21140000', '21000000', '21142200', '210000', '211400000000', '211422000000');
INSERT INTO `t_dic_district` VALUES ('10067', '兴城市', null, '葫芦岛市', '辽宁省', 'T', null, '21140000', '21000000', '21148100', '210000', '211400000000', '211481000000');
INSERT INTO `t_dic_district` VALUES ('10068', '市辖区', null, '长春市', '吉林省', 'T', null, '22010000', '22000000', '22010100', '220000', null, null);
INSERT INTO `t_dic_district` VALUES ('10069', '南关区', null, '长春市', '吉林省', 'T', null, '22010000', '22000000', '22010200', '220000', '220100000000', '220102000000');
INSERT INTO `t_dic_district` VALUES ('10070', '宽城区', null, '长春市', '吉林省', 'T', null, '22010000', '22000000', '22010300', '220000', '220100000000', '220103000000');
INSERT INTO `t_dic_district` VALUES ('10071', '朝阳区', null, '长春市', '吉林省', 'T', null, '22010000', '22000000', '22010400', '220000', '220100000000', '220104000000');
INSERT INTO `t_dic_district` VALUES ('10072', '二道区', null, '长春市', '吉林省', 'T', null, '22010000', '22000000', '22010500', '220000', '220100000000', '220105000000');
INSERT INTO `t_dic_district` VALUES ('10073', '绿园区', null, '长春市', '吉林省', 'T', null, '22010000', '22000000', '22010600', '220000', '220100000000', '220106000000');
INSERT INTO `t_dic_district` VALUES ('10074', '双阳区', null, '长春市', '吉林省', 'T', null, '22010000', '22000000', '22011200', '220000', '220100000000', '220112000000');
INSERT INTO `t_dic_district` VALUES ('10075', '农安县', null, '长春市', '吉林省', 'T', null, '22010000', '22000000', '22012200', '220000', '220100000000', '220122000000');
INSERT INTO `t_dic_district` VALUES ('10076', '九台区', null, '长春市', '吉林省', 'T', null, '22010000', '22000000', '22018100', '220000', '220100000000', '220113000000');
INSERT INTO `t_dic_district` VALUES ('10077', '榆树市', null, '长春市', '吉林省', 'T', null, '22010000', '22000000', '22018200', '220000', '220100000000', '220182000000');
INSERT INTO `t_dic_district` VALUES ('10078', '德惠市', null, '长春市', '吉林省', 'T', null, '22010000', '22000000', '22018300', '220000', '220100000000', '220183000000');
INSERT INTO `t_dic_district` VALUES ('10079', '市辖区', null, '吉林市', '吉林省', 'T', null, '22020000', '22000000', '22020100', '220000', null, null);
INSERT INTO `t_dic_district` VALUES ('10080', '昌邑区', null, '吉林市', '吉林省', 'T', null, '22020000', '22000000', '22020200', '220000', '220200000000', '220202000000');
INSERT INTO `t_dic_district` VALUES ('10081', '龙潭区', null, '吉林市', '吉林省', 'T', null, '22020000', '22000000', '22020300', '220000', '220200000000', '220203000000');
INSERT INTO `t_dic_district` VALUES ('10082', '船营区', null, '吉林市', '吉林省', 'T', null, '22020000', '22000000', '22020400', '220000', '220200000000', '220204000000');
INSERT INTO `t_dic_district` VALUES ('10083', '丰满区', null, '吉林市', '吉林省', 'T', null, '22020000', '22000000', '22021100', '220000', '220200000000', '220211000000');
INSERT INTO `t_dic_district` VALUES ('10084', '永吉县', null, '吉林市', '吉林省', 'T', null, '22020000', '22000000', '22022100', '220000', '220200000000', '220221000000');
INSERT INTO `t_dic_district` VALUES ('10085', '蛟河市', null, '吉林市', '吉林省', 'T', null, '22020000', '22000000', '22028100', '220000', '220200000000', '220281000000');
INSERT INTO `t_dic_district` VALUES ('10086', '桦甸市', null, '吉林市', '吉林省', 'T', null, '22020000', '22000000', '22028200', '220000', '220200000000', '220282000000');
INSERT INTO `t_dic_district` VALUES ('10087', '舒兰市', null, '吉林市', '吉林省', 'T', null, '22020000', '22000000', '22028300', '220000', '220200000000', '220283000000');
INSERT INTO `t_dic_district` VALUES ('10088', '磐石市', null, '吉林市', '吉林省', 'T', null, '22020000', '22000000', '22028400', '220000', '220200000000', '220284000000');
INSERT INTO `t_dic_district` VALUES ('10089', '市辖区', null, '四平市', '吉林省', 'T', null, '22030000', '22000000', '22030100', '220000', null, null);
INSERT INTO `t_dic_district` VALUES ('10090', '铁西区', null, '四平市', '吉林省', 'T', null, '22030000', '22000000', '22030200', '220000', '220300000000', '220302000000');
INSERT INTO `t_dic_district` VALUES ('10091', '铁东区', null, '四平市', '吉林省', 'T', null, '22030000', '22000000', '22030300', '220000', '220300000000', '220303000000');
INSERT INTO `t_dic_district` VALUES ('10092', '梨树县', null, '四平市', '吉林省', 'T', null, '22030000', '22000000', '22032200', '220000', '220300000000', '220322000000');
INSERT INTO `t_dic_district` VALUES ('10093', '伊通满族自治县', null, '四平市', '吉林省', 'T', null, '22030000', '22000000', '22032300', '220000', '220300000000', '220323000000');
INSERT INTO `t_dic_district` VALUES ('10094', '公主岭市', null, '四平市', '吉林省', 'T', null, '22030000', '22000000', '22038100', '220000', '220300000000', '220381000000');
INSERT INTO `t_dic_district` VALUES ('10095', '双辽市', null, '四平市', '吉林省', 'T', null, '22030000', '22000000', '22038200', '220000', '220300000000', '220382000000');
INSERT INTO `t_dic_district` VALUES ('10096', '市辖区', null, '辽源市', '吉林省', 'T', null, '22040000', '22000000', '22040100', '220000', null, null);
INSERT INTO `t_dic_district` VALUES ('10097', '龙山区', null, '辽源市', '吉林省', 'T', null, '22040000', '22000000', '22040200', '220000', '220400000000', '220402000000');
INSERT INTO `t_dic_district` VALUES ('10098', '五营区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23071000', '230000', '230700000000', '230710000000');
INSERT INTO `t_dic_district` VALUES ('10099', '乌马河区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23071100', '230000', '230700000000', '230711000000');
INSERT INTO `t_dic_district` VALUES ('10100', '汤旺河区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23071200', '230000', '230700000000', '230712000000');
INSERT INTO `t_dic_district` VALUES ('10101', '带岭区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23071300', '230000', '230700000000', '230713000000');
INSERT INTO `t_dic_district` VALUES ('10102', '乌伊岭区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23071400', '230000', '230700000000', '230714000000');
INSERT INTO `t_dic_district` VALUES ('10103', '红星区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23071500', '230000', '230700000000', '230715000000');
INSERT INTO `t_dic_district` VALUES ('10104', '上甘岭区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23071600', '230000', '230700000000', '230716000000');
INSERT INTO `t_dic_district` VALUES ('10105', '嘉荫县', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23072200', '230000', '230700000000', '230722000000');
INSERT INTO `t_dic_district` VALUES ('10106', '铁力市', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23078100', '230000', '230700000000', '230781000000');
INSERT INTO `t_dic_district` VALUES ('10107', '市辖区', null, '佳木斯市', '黑龙江省', 'T', null, '23080000', '23000000', '23080100', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10108', '永红区', null, '佳木斯市', '黑龙江省', 'T', null, '23080000', '23000000', '23080200', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10109', '向阳区', null, '佳木斯市', '黑龙江省', 'T', null, '23080000', '23000000', '23080300', '230000', '230800000000', '230803000000');
INSERT INTO `t_dic_district` VALUES ('10110', '前进区', null, '佳木斯市', '黑龙江省', 'T', null, '23080000', '23000000', '23080400', '230000', '230800000000', '230804000000');
INSERT INTO `t_dic_district` VALUES ('10111', '东风区', null, '佳木斯市', '黑龙江省', 'T', null, '23080000', '23000000', '23080500', '230000', '230800000000', '230805000000');
INSERT INTO `t_dic_district` VALUES ('10112', '郊区', null, '佳木斯市', '黑龙江省', 'T', null, '23080000', '23000000', '23081100', '230000', '230800000000', '230811000000');
INSERT INTO `t_dic_district` VALUES ('10113', '桦南县', null, '佳木斯市', '黑龙江省', 'T', null, '23080000', '23000000', '23082200', '230000', '230800000000', '230822000000');
INSERT INTO `t_dic_district` VALUES ('10114', '桦川县', null, '佳木斯市', '黑龙江省', 'T', null, '23080000', '23000000', '23082600', '230000', '230800000000', '230826000000');
INSERT INTO `t_dic_district` VALUES ('10115', '汤原县', null, '佳木斯市', '黑龙江省', 'T', null, '23080000', '23000000', '23082800', '230000', '230800000000', '230828000000');
INSERT INTO `t_dic_district` VALUES ('10116', '抚远市', null, '佳木斯市', '黑龙江省', 'T', null, '23080000', '23000000', '23083300', '230000', '230800000000', '230883000000');
INSERT INTO `t_dic_district` VALUES ('10117', '同江市', null, '佳木斯市', '黑龙江省', 'T', null, '23080000', '23000000', '23088100', '230000', '230800000000', '230881000000');
INSERT INTO `t_dic_district` VALUES ('10118', '富锦市', null, '佳木斯市', '黑龙江省', 'T', null, '23080000', '23000000', '23088200', '230000', '230800000000', '230882000000');
INSERT INTO `t_dic_district` VALUES ('10119', '市辖区', null, '七台河市', '黑龙江省', 'T', null, '23090000', '23000000', '23090100', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10120', '长岭县', null, '松原市', '吉林省', 'T', null, '22070000', '22000000', '22072200', '220000', '220700000000', '220722000000');
INSERT INTO `t_dic_district` VALUES ('10121', '乾安县', null, '松原市', '吉林省', 'T', null, '22070000', '22000000', '22072300', '220000', '220700000000', '220723000000');
INSERT INTO `t_dic_district` VALUES ('10122', '扶余市', null, '松原市', '吉林省', 'T', null, '22070000', '22000000', '22072400', '220000', '220700000000', '220781000000');
INSERT INTO `t_dic_district` VALUES ('10123', '市辖区', null, '白城市', '吉林省', 'T', null, '22080000', '22000000', '22080100', '220000', null, null);
INSERT INTO `t_dic_district` VALUES ('10124', '洮北区', null, '白城市', '吉林省', 'T', null, '22080000', '22000000', '22080200', '220000', '220800000000', '220802000000');
INSERT INTO `t_dic_district` VALUES ('10125', '镇赉县', null, '白城市', '吉林省', 'T', null, '22080000', '22000000', '22082100', '220000', '220800000000', '220821000000');
INSERT INTO `t_dic_district` VALUES ('10126', '通榆县', null, '白城市', '吉林省', 'T', null, '22080000', '22000000', '22082200', '220000', '220800000000', '220822000000');
INSERT INTO `t_dic_district` VALUES ('10127', '洮南市', null, '白城市', '吉林省', 'T', null, '22080000', '22000000', '22088100', '220000', '220800000000', '220881000000');
INSERT INTO `t_dic_district` VALUES ('10128', '大安市', null, '白城市', '吉林省', 'T', null, '22080000', '22000000', '22088200', '220000', '220800000000', '220882000000');
INSERT INTO `t_dic_district` VALUES ('10129', '延吉市', null, '延边朝鲜族自治州', '吉林省', 'T', null, '22240000', '22000000', '22240100', '220000', '222400000000', '222401000000');
INSERT INTO `t_dic_district` VALUES ('10130', '图们市', null, '延边朝鲜族自治州', '吉林省', 'T', null, '22240000', '22000000', '22240200', '220000', '222400000000', '222402000000');
INSERT INTO `t_dic_district` VALUES ('10131', '敦化市', null, '延边朝鲜族自治州', '吉林省', 'T', null, '22240000', '22000000', '22240300', '220000', '222400000000', '222403000000');
INSERT INTO `t_dic_district` VALUES ('10132', '珲春市', null, '延边朝鲜族自治州', '吉林省', 'T', null, '22240000', '22000000', '22240400', '220000', '222400000000', '222404000000');
INSERT INTO `t_dic_district` VALUES ('10133', '龙井市', null, '延边朝鲜族自治州', '吉林省', 'T', null, '22240000', '22000000', '22240500', '220000', '222400000000', '222405000000');
INSERT INTO `t_dic_district` VALUES ('10134', '和龙市', null, '延边朝鲜族自治州', '吉林省', 'T', null, '22240000', '22000000', '22240600', '220000', '222400000000', '222406000000');
INSERT INTO `t_dic_district` VALUES ('10135', '汪清县', null, '延边朝鲜族自治州', '吉林省', 'T', null, '22240000', '22000000', '22242400', '220000', '222400000000', '222424000000');
INSERT INTO `t_dic_district` VALUES ('10136', '安图县', null, '延边朝鲜族自治州', '吉林省', 'T', null, '22240000', '22000000', '22242600', '220000', '222400000000', '222426000000');
INSERT INTO `t_dic_district` VALUES ('10137', '市辖区', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23010100', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10138', '道里区', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23010200', '230000', '230100000000', '230102000000');
INSERT INTO `t_dic_district` VALUES ('10139', '南岗区', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23010300', '230000', '230100000000', '230103000000');
INSERT INTO `t_dic_district` VALUES ('10140', '道外区', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23010400', '230000', '230100000000', '230104000000');
INSERT INTO `t_dic_district` VALUES ('10141', '太平区', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23010500', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10142', '香坊区', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23010600', '230000', '230100000000', '230110000000');
INSERT INTO `t_dic_district` VALUES ('10143', '动力区', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23010700', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10144', '平房区', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23010800', '230000', '230100000000', '230108000000');
INSERT INTO `t_dic_district` VALUES ('10145', '呼兰区', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23012100', '230000', '230100000000', '230111000000');
INSERT INTO `t_dic_district` VALUES ('10146', '依兰县', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23012300', '230000', '230100000000', '230123000000');
INSERT INTO `t_dic_district` VALUES ('10147', '方正县', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23012400', '230000', '230100000000', '230124000000');
INSERT INTO `t_dic_district` VALUES ('10148', '宾县', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23012500', '230000', '230100000000', '230125000000');
INSERT INTO `t_dic_district` VALUES ('10149', '巴彦县', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23012600', '230000', '230100000000', '230126000000');
INSERT INTO `t_dic_district` VALUES ('10150', '木兰县', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23012700', '230000', '230100000000', '230127000000');
INSERT INTO `t_dic_district` VALUES ('10151', '通河县', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23012800', '230000', '230100000000', '230128000000');
INSERT INTO `t_dic_district` VALUES ('10152', '延寿县', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23012900', '230000', '230100000000', '230129000000');
INSERT INTO `t_dic_district` VALUES ('10153', '阿城区', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23018100', '230000', '230100000000', '230112000000');
INSERT INTO `t_dic_district` VALUES ('10154', '双城区', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23018200', '230000', '230100000000', '230113000000');
INSERT INTO `t_dic_district` VALUES ('10155', '尚志市', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23018300', '230000', '230100000000', '230183000000');
INSERT INTO `t_dic_district` VALUES ('10156', '五常市', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23018400', '230000', '230100000000', '230184000000');
INSERT INTO `t_dic_district` VALUES ('10157', '市辖区', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23020100', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10158', '龙沙区', null, '齐齐哈尔市', '黑龙江省', 'T', null, '23020000', '23000000', '23020200', '230000', '230200000000', '230202000000');
INSERT INTO `t_dic_district` VALUES ('10159', '长宁区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31010500', '310000', '310100000000', '310105000000');
INSERT INTO `t_dic_district` VALUES ('10160', '静安区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31010600', '310000', '310100000000', '310106000000');
INSERT INTO `t_dic_district` VALUES ('10161', '普陀区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31010700', '310000', '310100000000', '310107000000');
INSERT INTO `t_dic_district` VALUES ('10162', '闸北区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31010800', '310000', null, null);
INSERT INTO `t_dic_district` VALUES ('10163', '虹口区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31010900', '310000', '310100000000', '310109000000');
INSERT INTO `t_dic_district` VALUES ('10164', '杨浦区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31011000', '310000', '310100000000', '310110000000');
INSERT INTO `t_dic_district` VALUES ('10165', '闵行区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31011200', '310000', '310100000000', '310112000000');
INSERT INTO `t_dic_district` VALUES ('10166', '宝山区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31011300', '310000', '310100000000', '310113000000');
INSERT INTO `t_dic_district` VALUES ('10167', '嘉定区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31011400', '310000', '310100000000', '310114000000');
INSERT INTO `t_dic_district` VALUES ('10168', '浦东新区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31011500', '310000', '310100000000', '310115000000');
INSERT INTO `t_dic_district` VALUES ('10169', '金山区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31011600', '310000', '310100000000', '310116000000');
INSERT INTO `t_dic_district` VALUES ('10170', '松江区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31011700', '310000', '310100000000', '310117000000');
INSERT INTO `t_dic_district` VALUES ('10171', '青浦区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31011800', '310000', '310100000000', '310118000000');
INSERT INTO `t_dic_district` VALUES ('10172', '南汇区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31011900', '310000', null, null);
INSERT INTO `t_dic_district` VALUES ('10173', '奉贤区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31012000', '310000', '310100000000', '310120000000');
INSERT INTO `t_dic_district` VALUES ('10174', '崇明区', null, '县', '上海市', 'T', null, '31020000', '31000000', '31023000', '310000', '310100000000', '310151000000');
INSERT INTO `t_dic_district` VALUES ('10175', '市辖区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32010100', '320000', '321300000000', '321301000000');
INSERT INTO `t_dic_district` VALUES ('10176', '玄武区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32010200', '320000', '320100000000', '320102000000');
INSERT INTO `t_dic_district` VALUES ('10177', '白下区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32010300', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10178', '秦淮区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32010400', '320000', '320100000000', '320104000000');
INSERT INTO `t_dic_district` VALUES ('10179', '建邺区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32010500', '320000', '320100000000', '320105000000');
INSERT INTO `t_dic_district` VALUES ('10180', '鼓楼区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32010600', '320000', '320300000000', '320302000000');
INSERT INTO `t_dic_district` VALUES ('10181', '鸡东县', null, '鸡西市', '黑龙江省', 'T', null, '23030000', '23000000', '23032100', '230000', '230300000000', '230321000000');
INSERT INTO `t_dic_district` VALUES ('10182', '虎林市', null, '鸡西市', '黑龙江省', 'T', null, '23030000', '23000000', '23038100', '230000', '230300000000', '230381000000');
INSERT INTO `t_dic_district` VALUES ('10183', '密山市', null, '鸡西市', '黑龙江省', 'T', null, '23030000', '23000000', '23038200', '230000', '230300000000', '230382000000');
INSERT INTO `t_dic_district` VALUES ('10184', '市辖区', null, '鹤岗市', '黑龙江省', 'T', null, '23040000', '23000000', '23040100', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10185', '向阳区', null, '鹤岗市', '黑龙江省', 'T', null, '23040000', '23000000', '23040200', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10186', '工农区', null, '鹤岗市', '黑龙江省', 'T', null, '23040000', '23000000', '23040300', '230000', '230400000000', '230403000000');
INSERT INTO `t_dic_district` VALUES ('10187', '南山区', null, '鹤岗市', '黑龙江省', 'T', null, '23040000', '23000000', '23040400', '230000', '230400000000', '230404000000');
INSERT INTO `t_dic_district` VALUES ('10188', '兴安区', null, '鹤岗市', '黑龙江省', 'T', null, '23040000', '23000000', '23040500', '230000', '230400000000', '230405000000');
INSERT INTO `t_dic_district` VALUES ('10189', '东山区', null, '鹤岗市', '黑龙江省', 'T', null, '23040000', '23000000', '23040600', '230000', '230400000000', '230406000000');
INSERT INTO `t_dic_district` VALUES ('10190', '兴山区', null, '鹤岗市', '黑龙江省', 'T', null, '23040000', '23000000', '23040700', '230000', '230400000000', '230407000000');
INSERT INTO `t_dic_district` VALUES ('10191', '萝北县', null, '鹤岗市', '黑龙江省', 'T', null, '23040000', '23000000', '23042100', '230000', '230400000000', '230421000000');
INSERT INTO `t_dic_district` VALUES ('10192', '绥滨县', null, '鹤岗市', '黑龙江省', 'T', null, '23040000', '23000000', '23042200', '230000', '230400000000', '230422000000');
INSERT INTO `t_dic_district` VALUES ('10193', '市辖区', null, '双鸭山市', '黑龙江省', 'T', null, '23050000', '23000000', '23050100', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10194', '尖山区', null, '双鸭山市', '黑龙江省', 'T', null, '23050000', '23000000', '23050200', '230000', '230500000000', '230502000000');
INSERT INTO `t_dic_district` VALUES ('10195', '岭东区', null, '双鸭山市', '黑龙江省', 'T', null, '23050000', '23000000', '23050300', '230000', '230500000000', '230503000000');
INSERT INTO `t_dic_district` VALUES ('10196', '四方台区', null, '双鸭山市', '黑龙江省', 'T', null, '23050000', '23000000', '23050500', '230000', '230500000000', '230505000000');
INSERT INTO `t_dic_district` VALUES ('10197', '宝山区', null, '双鸭山市', '黑龙江省', 'T', null, '23050000', '23000000', '23050600', '230000', '230500000000', '230506000000');
INSERT INTO `t_dic_district` VALUES ('10198', '集贤县', null, '双鸭山市', '黑龙江省', 'T', null, '23050000', '23000000', '23052100', '230000', '230500000000', '230521000000');
INSERT INTO `t_dic_district` VALUES ('10199', '友谊县', null, '双鸭山市', '黑龙江省', 'T', null, '23050000', '23000000', '23052200', '230000', '230500000000', '230522000000');
INSERT INTO `t_dic_district` VALUES ('10200', '宝清县', null, '双鸭山市', '黑龙江省', 'T', null, '23050000', '23000000', '23052300', '230000', '230500000000', '230523000000');
INSERT INTO `t_dic_district` VALUES ('10201', '饶河县', null, '双鸭山市', '黑龙江省', 'T', null, '23050000', '23000000', '23052400', '230000', '230500000000', '230524000000');
INSERT INTO `t_dic_district` VALUES ('10202', '市辖区', null, '大庆市', '黑龙江省', 'T', null, '23060000', '23000000', '23060100', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10203', '萨尔图区', null, '大庆市', '黑龙江省', 'T', null, '23060000', '23000000', '23060200', '230000', '230600000000', '230602000000');
INSERT INTO `t_dic_district` VALUES ('10204', '龙凤区', null, '大庆市', '黑龙江省', 'T', null, '23060000', '23000000', '23060300', '230000', '230600000000', '230603000000');
INSERT INTO `t_dic_district` VALUES ('10205', '让胡路区', null, '大庆市', '黑龙江省', 'T', null, '23060000', '23000000', '23060400', '230000', '230600000000', '230604000000');
INSERT INTO `t_dic_district` VALUES ('10206', '红岗区', null, '大庆市', '黑龙江省', 'T', null, '23060000', '23000000', '23060500', '230000', '230600000000', '230605000000');
INSERT INTO `t_dic_district` VALUES ('10207', '大同区', null, '大庆市', '黑龙江省', 'T', null, '23060000', '23000000', '23060600', '230000', '230600000000', '230606000000');
INSERT INTO `t_dic_district` VALUES ('10208', '肇州县', null, '大庆市', '黑龙江省', 'T', null, '23060000', '23000000', '23062100', '230000', '230600000000', '230621000000');
INSERT INTO `t_dic_district` VALUES ('10209', '肇源县', null, '大庆市', '黑龙江省', 'T', null, '23060000', '23000000', '23062200', '230000', '230600000000', '230622000000');
INSERT INTO `t_dic_district` VALUES ('10210', '林甸县', null, '大庆市', '黑龙江省', 'T', null, '23060000', '23000000', '23062300', '230000', '230600000000', '230623000000');
INSERT INTO `t_dic_district` VALUES ('10211', '杜尔伯特蒙古族自治县', null, '大庆市', '黑龙江省', 'T', null, '23060000', '23000000', '23062400', '230000', '230600000000', '230624000000');
INSERT INTO `t_dic_district` VALUES ('10212', '市辖区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23070100', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10213', '伊春区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23070200', '230000', '230700000000', '230702000000');
INSERT INTO `t_dic_district` VALUES ('10214', '南岔区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23070300', '230000', '230700000000', '230703000000');
INSERT INTO `t_dic_district` VALUES ('10215', '友好区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23070400', '230000', '230700000000', '230704000000');
INSERT INTO `t_dic_district` VALUES ('10216', '西林区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23070500', '230000', '230700000000', '230705000000');
INSERT INTO `t_dic_district` VALUES ('10217', '翠峦区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23070600', '230000', '230700000000', '230706000000');
INSERT INTO `t_dic_district` VALUES ('10218', '新青区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23070700', '230000', '230700000000', '230707000000');
INSERT INTO `t_dic_district` VALUES ('10219', '美溪区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23070800', '230000', '230700000000', '230708000000');
INSERT INTO `t_dic_district` VALUES ('10220', '金山屯区', null, '伊春市', '黑龙江省', 'T', null, '23070000', '23000000', '23070900', '230000', '230700000000', '230709000000');
INSERT INTO `t_dic_district` VALUES ('10221', '吴中区', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32050600', '320000', '320500000000', '320506000000');
INSERT INTO `t_dic_district` VALUES ('10222', '相城区', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32050700', '320000', '320500000000', '320507000000');
INSERT INTO `t_dic_district` VALUES ('10223', '常熟市', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32058100', '320000', '320500000000', '320581000000');
INSERT INTO `t_dic_district` VALUES ('10224', '张家港市', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32058200', '320000', '320500000000', '320582000000');
INSERT INTO `t_dic_district` VALUES ('10225', '昆山市', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32058300', '320000', '320500000000', '320583000000');
INSERT INTO `t_dic_district` VALUES ('10226', '吴江区', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32058400', '320000', '320500000000', '320509000000');
INSERT INTO `t_dic_district` VALUES ('10227', '太仓市', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32058500', '320000', '320500000000', '320585000000');
INSERT INTO `t_dic_district` VALUES ('10228', '市辖区', null, '南通市', '江苏省', 'T', null, '32060000', '32000000', '32060100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10229', '崇川区', null, '南通市', '江苏省', 'T', null, '32060000', '32000000', '32060200', '320000', '320600000000', '320602000000');
INSERT INTO `t_dic_district` VALUES ('10230', '港闸区', null, '南通市', '江苏省', 'T', null, '32060000', '32000000', '32061100', '320000', '320600000000', '320611000000');
INSERT INTO `t_dic_district` VALUES ('10231', '海安县', null, '南通市', '江苏省', 'T', null, '32060000', '32000000', '32062100', '320000', '320600000000', '320621000000');
INSERT INTO `t_dic_district` VALUES ('10232', '如东县', null, '南通市', '江苏省', 'T', null, '32060000', '32000000', '32062300', '320000', '320600000000', '320623000000');
INSERT INTO `t_dic_district` VALUES ('10233', '启东市', null, '南通市', '江苏省', 'T', null, '32060000', '32000000', '32068100', '320000', '320600000000', '320681000000');
INSERT INTO `t_dic_district` VALUES ('10234', '如皋市', null, '南通市', '江苏省', 'T', null, '32060000', '32000000', '32068200', '320000', '320600000000', '320682000000');
INSERT INTO `t_dic_district` VALUES ('10235', '通州市', null, '南通市', '江苏省', 'T', null, '32060000', '32000000', '32068300', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10236', '海门市', null, '南通市', '江苏省', 'T', null, '32060000', '32000000', '32068400', '320000', '320600000000', '320684000000');
INSERT INTO `t_dic_district` VALUES ('10237', '市辖区', null, '连云港市', '江苏省', 'T', null, '32070000', '32000000', '32070100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10238', '连云区', null, '连云港市', '江苏省', 'T', null, '32070000', '32000000', '32070300', '320000', '320700000000', '320703000000');
INSERT INTO `t_dic_district` VALUES ('10239', '新浦区', null, '连云港市', '江苏省', 'T', null, '32070000', '32000000', '32070500', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10240', '海州区', null, '连云港市', '江苏省', 'T', null, '32070000', '32000000', '32070600', '320000', '320700000000', '320706000000');
INSERT INTO `t_dic_district` VALUES ('10241', '赣榆区', null, '连云港市', '江苏省', 'T', null, '32070000', '32000000', '32072100', '320000', '320700000000', '320707000000');
INSERT INTO `t_dic_district` VALUES ('10242', '东海县', null, '连云港市', '江苏省', 'T', null, '32070000', '32000000', '32072200', '320000', '320700000000', '320722000000');
INSERT INTO `t_dic_district` VALUES ('10243', '新兴区', null, '七台河市', '黑龙江省', 'T', null, '23090000', '23000000', '23090200', '230000', '230900000000', '230902000000');
INSERT INTO `t_dic_district` VALUES ('10244', '桃山区', null, '七台河市', '黑龙江省', 'T', null, '23090000', '23000000', '23090300', '230000', '230900000000', '230903000000');
INSERT INTO `t_dic_district` VALUES ('10245', '茄子河区', null, '七台河市', '黑龙江省', 'T', null, '23090000', '23000000', '23090400', '230000', '230900000000', '230904000000');
INSERT INTO `t_dic_district` VALUES ('10246', '勃利县', null, '七台河市', '黑龙江省', 'T', null, '23090000', '23000000', '23092100', '230000', '230900000000', '230921000000');
INSERT INTO `t_dic_district` VALUES ('10247', '市辖区', null, '牡丹江市', '黑龙江省', 'T', null, '23100000', '23000000', '23100100', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10248', '东安区', null, '牡丹江市', '黑龙江省', 'T', null, '23100000', '23000000', '23100200', '230000', '231000000000', '231002000000');
INSERT INTO `t_dic_district` VALUES ('10249', '阳明区', null, '牡丹江市', '黑龙江省', 'T', null, '23100000', '23000000', '23100300', '230000', '231000000000', '231003000000');
INSERT INTO `t_dic_district` VALUES ('10250', '爱民区', null, '牡丹江市', '黑龙江省', 'T', null, '23100000', '23000000', '23100400', '230000', '231000000000', '231004000000');
INSERT INTO `t_dic_district` VALUES ('10251', '西安区', null, '牡丹江市', '黑龙江省', 'T', null, '23100000', '23000000', '23100500', '230000', '231000000000', '231005000000');
INSERT INTO `t_dic_district` VALUES ('10252', '东宁市', null, '牡丹江市', '黑龙江省', 'T', null, '23100000', '23000000', '23102400', '230000', '231000000000', '231086000000');
INSERT INTO `t_dic_district` VALUES ('10253', '林口县', null, '牡丹江市', '黑龙江省', 'T', null, '23100000', '23000000', '23102500', '230000', '231000000000', '231025000000');
INSERT INTO `t_dic_district` VALUES ('10254', '绥芬河市', null, '牡丹江市', '黑龙江省', 'T', null, '23100000', '23000000', '23108100', '230000', '231000000000', '231081000000');
INSERT INTO `t_dic_district` VALUES ('10255', '海林市', null, '牡丹江市', '黑龙江省', 'T', null, '23100000', '23000000', '23108300', '230000', '231000000000', '231083000000');
INSERT INTO `t_dic_district` VALUES ('10256', '宁安市', null, '牡丹江市', '黑龙江省', 'T', null, '23100000', '23000000', '23108400', '230000', '231000000000', '231084000000');
INSERT INTO `t_dic_district` VALUES ('10257', '穆棱市', null, '牡丹江市', '黑龙江省', 'T', null, '23100000', '23000000', '23108500', '230000', '231000000000', '231085000000');
INSERT INTO `t_dic_district` VALUES ('10258', '市辖区', null, '黑河市', '黑龙江省', 'T', null, '23110000', '23000000', '23110100', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10259', '爱辉区', null, '黑河市', '黑龙江省', 'T', null, '23110000', '23000000', '23110200', '230000', '231100000000', '231102000000');
INSERT INTO `t_dic_district` VALUES ('10260', '嫩江县', null, '黑河市', '黑龙江省', 'T', null, '23110000', '23000000', '23112100', '230000', '231100000000', '231121000000');
INSERT INTO `t_dic_district` VALUES ('10261', '逊克县', null, '黑河市', '黑龙江省', 'T', null, '23110000', '23000000', '23112300', '230000', '231100000000', '231123000000');
INSERT INTO `t_dic_district` VALUES ('10262', '孙吴县', null, '黑河市', '黑龙江省', 'T', null, '23110000', '23000000', '23112400', '230000', '231100000000', '231124000000');
INSERT INTO `t_dic_district` VALUES ('10263', '北安市', null, '黑河市', '黑龙江省', 'T', null, '23110000', '23000000', '23118100', '230000', '231100000000', '231181000000');
INSERT INTO `t_dic_district` VALUES ('10264', '五大连池市', null, '黑河市', '黑龙江省', 'T', null, '23110000', '23000000', '23118200', '230000', '231100000000', '231182000000');
INSERT INTO `t_dic_district` VALUES ('10265', '市辖区', null, '绥化市', '黑龙江省', 'T', null, '23120000', '23000000', '23120100', '230000', null, null);
INSERT INTO `t_dic_district` VALUES ('10266', '北林区', null, '绥化市', '黑龙江省', 'T', null, '23120000', '23000000', '23120200', '230000', '231200000000', '231202000000');
INSERT INTO `t_dic_district` VALUES ('10267', '望奎县', null, '绥化市', '黑龙江省', 'T', null, '23120000', '23000000', '23122100', '230000', '231200000000', '231221000000');
INSERT INTO `t_dic_district` VALUES ('10268', '兰西县', null, '绥化市', '黑龙江省', 'T', null, '23120000', '23000000', '23122200', '230000', '231200000000', '231222000000');
INSERT INTO `t_dic_district` VALUES ('10269', '青冈县', null, '绥化市', '黑龙江省', 'T', null, '23120000', '23000000', '23122300', '230000', '231200000000', '231223000000');
INSERT INTO `t_dic_district` VALUES ('10270', '庆安县', null, '绥化市', '黑龙江省', 'T', null, '23120000', '23000000', '23122400', '230000', '231200000000', '231224000000');
INSERT INTO `t_dic_district` VALUES ('10271', '明水县', null, '绥化市', '黑龙江省', 'T', null, '23120000', '23000000', '23122500', '230000', '231200000000', '231225000000');
INSERT INTO `t_dic_district` VALUES ('10272', '绥棱县', null, '绥化市', '黑龙江省', 'T', null, '23120000', '23000000', '23122600', '230000', '231200000000', '231226000000');
INSERT INTO `t_dic_district` VALUES ('10273', '安达市', null, '绥化市', '黑龙江省', 'T', null, '23120000', '23000000', '23128100', '230000', '231200000000', '231281000000');
INSERT INTO `t_dic_district` VALUES ('10274', '肇东市', null, '绥化市', '黑龙江省', 'T', null, '23120000', '23000000', '23128200', '230000', '231200000000', '231282000000');
INSERT INTO `t_dic_district` VALUES ('10275', '海伦市', null, '绥化市', '黑龙江省', 'T', null, '23120000', '23000000', '23128300', '230000', '231200000000', '231283000000');
INSERT INTO `t_dic_district` VALUES ('10276', '呼玛县', null, '大兴安岭地区', '黑龙江省', 'T', null, '23270000', '23000000', '23272100', '230000', '232700000000', '232721000000');
INSERT INTO `t_dic_district` VALUES ('10277', '塔河县', null, '大兴安岭地区', '黑龙江省', 'T', null, '23270000', '23000000', '23272200', '230000', '232700000000', '232722000000');
INSERT INTO `t_dic_district` VALUES ('10278', '漠河县', null, '大兴安岭地区', '黑龙江省', 'T', null, '23270000', '23000000', '23272300', '230000', '232700000000', '232723000000');
INSERT INTO `t_dic_district` VALUES ('10279', '黄浦区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31010100', '310000', '310100000000', '310101000000');
INSERT INTO `t_dic_district` VALUES ('10280', '卢湾区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31010300', '310000', null, null);
INSERT INTO `t_dic_district` VALUES ('10281', '徐汇区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31010400', '310000', '310100000000', '310104000000');
INSERT INTO `t_dic_district` VALUES ('10282', '靖江市', null, '泰州市', '江苏省', 'T', null, '32120000', '32000000', '32128200', '320000', '321200000000', '321282000000');
INSERT INTO `t_dic_district` VALUES ('10283', '泰兴市', null, '泰州市', '江苏省', 'T', null, '32120000', '32000000', '32128300', '320000', '321200000000', '321283000000');
INSERT INTO `t_dic_district` VALUES ('10284', '姜堰区', null, '泰州市', '江苏省', 'T', null, '32120000', '32000000', '32128400', '320000', '321200000000', '321204000000');
INSERT INTO `t_dic_district` VALUES ('10285', '市辖区', null, '宿迁市', '江苏省', 'T', null, '32130000', '32000000', '32130100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10286', '宿城区', null, '宿迁市', '江苏省', 'T', null, '32130000', '32000000', '32130200', '320000', '321300000000', '321302000000');
INSERT INTO `t_dic_district` VALUES ('10287', '宿豫区', null, '宿迁市', '江苏省', 'T', null, '32130000', '32000000', '32132100', '320000', '321300000000', '321311000000');
INSERT INTO `t_dic_district` VALUES ('10288', '沭阳县', null, '宿迁市', '江苏省', 'T', null, '32130000', '32000000', '32132200', '320000', '321300000000', '321322000000');
INSERT INTO `t_dic_district` VALUES ('10289', '泗阳县', null, '宿迁市', '江苏省', 'T', null, '32130000', '32000000', '32132300', '320000', '321300000000', '321323000000');
INSERT INTO `t_dic_district` VALUES ('10290', '泗洪县', null, '宿迁市', '江苏省', 'T', null, '32130000', '32000000', '32132400', '320000', '321300000000', '321324000000');
INSERT INTO `t_dic_district` VALUES ('10291', '市辖区', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33010100', '330000', '331100000000', '331101000000');
INSERT INTO `t_dic_district` VALUES ('10292', '上城区', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33010200', '330000', '330100000000', '330102000000');
INSERT INTO `t_dic_district` VALUES ('10293', '下城区', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33010300', '330000', '330100000000', '330103000000');
INSERT INTO `t_dic_district` VALUES ('10294', '江干区', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33010400', '330000', '330100000000', '330104000000');
INSERT INTO `t_dic_district` VALUES ('10295', '拱墅区', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33010500', '330000', '330100000000', '330105000000');
INSERT INTO `t_dic_district` VALUES ('10296', '西湖区', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33010600', '330000', '330100000000', '330106000000');
INSERT INTO `t_dic_district` VALUES ('10297', '滨江区', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33010800', '330000', '330100000000', '330108000000');
INSERT INTO `t_dic_district` VALUES ('10298', '萧山区', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33010900', '330000', '330100000000', '330109000000');
INSERT INTO `t_dic_district` VALUES ('10299', '余杭区', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33011000', '330000', '330100000000', '330110000000');
INSERT INTO `t_dic_district` VALUES ('10300', '桐庐县', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33012200', '330000', '330100000000', '330122000000');
INSERT INTO `t_dic_district` VALUES ('10301', '淳安县', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33012700', '330000', '330100000000', '330127000000');
INSERT INTO `t_dic_district` VALUES ('10302', '建德市', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33018200', '330000', '330100000000', '330182000000');
INSERT INTO `t_dic_district` VALUES ('10303', '富阳区', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33018300', '330000', '330100000000', '330111000000');
INSERT INTO `t_dic_district` VALUES ('10304', '下关区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32010700', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10305', '浦口区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32011100', '320000', '320100000000', '320111000000');
INSERT INTO `t_dic_district` VALUES ('10306', '栖霞区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32011300', '320000', '320100000000', '320113000000');
INSERT INTO `t_dic_district` VALUES ('10307', '雨花台区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32011400', '320000', '320100000000', '320114000000');
INSERT INTO `t_dic_district` VALUES ('10308', '江宁区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32011500', '320000', '320100000000', '320115000000');
INSERT INTO `t_dic_district` VALUES ('10309', '六合区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32011600', '320000', '320100000000', '320116000000');
INSERT INTO `t_dic_district` VALUES ('10310', '溧水区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32012400', '320000', '320100000000', '320117000000');
INSERT INTO `t_dic_district` VALUES ('10311', '高淳区', null, '南京市', '江苏省', 'T', null, '32010000', '32000000', '32012500', '320000', '320100000000', '320118000000');
INSERT INTO `t_dic_district` VALUES ('10312', '市辖区', null, '无锡市', '江苏省', 'T', null, '32020000', '32000000', '32020100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10313', '崇安区', null, '无锡市', '江苏省', 'T', null, '32020000', '32000000', '32020200', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10314', '南长区', null, '无锡市', '江苏省', 'T', null, '32020000', '32000000', '32020300', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10315', '北塘区', null, '无锡市', '江苏省', 'T', null, '32020000', '32000000', '32020400', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10316', '锡山区', null, '无锡市', '江苏省', 'T', null, '32020000', '32000000', '32020500', '320000', '320200000000', '320205000000');
INSERT INTO `t_dic_district` VALUES ('10317', '惠山区', null, '无锡市', '江苏省', 'T', null, '32020000', '32000000', '32020600', '320000', '320200000000', '320206000000');
INSERT INTO `t_dic_district` VALUES ('10318', '滨湖区', null, '无锡市', '江苏省', 'T', null, '32020000', '32000000', '32021100', '320000', '320200000000', '320211000000');
INSERT INTO `t_dic_district` VALUES ('10319', '江阴市', null, '无锡市', '江苏省', 'T', null, '32020000', '32000000', '32028100', '320000', '320200000000', '320281000000');
INSERT INTO `t_dic_district` VALUES ('10320', '宜兴市', null, '无锡市', '江苏省', 'T', null, '32020000', '32000000', '32028200', '320000', '320200000000', '320282000000');
INSERT INTO `t_dic_district` VALUES ('10321', '市辖区', null, '徐州市', '江苏省', 'T', null, '32030000', '32000000', '32030100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10322', '鼓楼区', null, '徐州市', '江苏省', 'T', null, '32030000', '32000000', '32030200', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10323', '云龙区', null, '徐州市', '江苏省', 'T', null, '32030000', '32000000', '32030300', '320000', '320300000000', '320303000000');
INSERT INTO `t_dic_district` VALUES ('10324', '九里区', null, '徐州市', '江苏省', 'T', null, '32030000', '32000000', '32030400', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10325', '贾汪区', null, '徐州市', '江苏省', 'T', null, '32030000', '32000000', '32030500', '320000', '320300000000', '320305000000');
INSERT INTO `t_dic_district` VALUES ('10326', '泉山区', null, '徐州市', '江苏省', 'T', null, '32030000', '32000000', '32031100', '320000', '320300000000', '320311000000');
INSERT INTO `t_dic_district` VALUES ('10327', '丰县', null, '徐州市', '江苏省', 'T', null, '32030000', '32000000', '32032100', '320000', '320300000000', '320321000000');
INSERT INTO `t_dic_district` VALUES ('10328', '沛县', null, '徐州市', '江苏省', 'T', null, '32030000', '32000000', '32032200', '320000', '320300000000', '320322000000');
INSERT INTO `t_dic_district` VALUES ('10329', '铜山区', null, '徐州市', '江苏省', 'T', null, '32030000', '32000000', '32032300', '320000', '320300000000', '320312000000');
INSERT INTO `t_dic_district` VALUES ('10330', '睢宁县', null, '徐州市', '江苏省', 'T', null, '32030000', '32000000', '32032400', '320000', '320300000000', '320324000000');
INSERT INTO `t_dic_district` VALUES ('10331', '新沂市', null, '徐州市', '江苏省', 'T', null, '32030000', '32000000', '32038100', '320000', '320300000000', '320381000000');
INSERT INTO `t_dic_district` VALUES ('10332', '邳州市', null, '徐州市', '江苏省', 'T', null, '32030000', '32000000', '32038200', '320000', '320300000000', '320382000000');
INSERT INTO `t_dic_district` VALUES ('10333', '市辖区', null, '常州市', '江苏省', 'T', null, '32040000', '32000000', '32040100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10334', '天宁区', null, '常州市', '江苏省', 'T', null, '32040000', '32000000', '32040200', '320000', '320400000000', '320402000000');
INSERT INTO `t_dic_district` VALUES ('10335', '钟楼区', null, '常州市', '江苏省', 'T', null, '32040000', '32000000', '32040400', '320000', '320400000000', '320404000000');
INSERT INTO `t_dic_district` VALUES ('10336', '戚墅堰区', null, '常州市', '江苏省', 'T', null, '32040000', '32000000', '32040500', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10337', '新北区', null, '常州市', '江苏省', 'T', null, '32040000', '32000000', '32041100', '320000', '320400000000', '320411000000');
INSERT INTO `t_dic_district` VALUES ('10338', '武进区', null, '常州市', '江苏省', 'T', null, '32040000', '32000000', '32041200', '320000', '320400000000', '320412000000');
INSERT INTO `t_dic_district` VALUES ('10339', '溧阳市', null, '常州市', '江苏省', 'T', null, '32040000', '32000000', '32048100', '320000', '320400000000', '320481000000');
INSERT INTO `t_dic_district` VALUES ('10340', '金坛区', null, '常州市', '江苏省', 'T', null, '32040000', '32000000', '32048200', '320000', '320400000000', '320413000000');
INSERT INTO `t_dic_district` VALUES ('10341', '市辖区', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32050100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10342', '沧浪区', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32050200', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10343', '平江区', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32050300', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10344', '金阊区', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32050400', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10345', '虎丘区', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32050500', '320000', '320500000000', '320505000000');
INSERT INTO `t_dic_district` VALUES ('10346', '绍兴县', null, '绍兴市', '浙江省', 'T', null, '33060000', '33000000', '33062100', '330000', null, null);
INSERT INTO `t_dic_district` VALUES ('10347', '新昌县', null, '绍兴市', '浙江省', 'T', null, '33060000', '33000000', '33062400', '330000', '330600000000', '330624000000');
INSERT INTO `t_dic_district` VALUES ('10348', '诸暨市', null, '绍兴市', '浙江省', 'T', null, '33060000', '33000000', '33068100', '330000', '330600000000', '330681000000');
INSERT INTO `t_dic_district` VALUES ('10349', '上虞区', null, '绍兴市', '浙江省', 'T', null, '33060000', '33000000', '33068200', '330000', '330600000000', '330604000000');
INSERT INTO `t_dic_district` VALUES ('10350', '嵊州市', null, '绍兴市', '浙江省', 'T', null, '33060000', '33000000', '33068300', '330000', '330600000000', '330683000000');
INSERT INTO `t_dic_district` VALUES ('10351', '市辖区', null, '金华市', '浙江省', 'T', null, '33070000', '33000000', '33070100', '330000', null, null);
INSERT INTO `t_dic_district` VALUES ('10352', '婺城区', null, '金华市', '浙江省', 'T', null, '33070000', '33000000', '33070200', '330000', '330700000000', '330702000000');
INSERT INTO `t_dic_district` VALUES ('10353', '金东区', null, '金华市', '浙江省', 'T', null, '33070000', '33000000', '33070300', '330000', '330700000000', '330703000000');
INSERT INTO `t_dic_district` VALUES ('10354', '武义县', null, '金华市', '浙江省', 'T', null, '33070000', '33000000', '33072300', '330000', '330700000000', '330723000000');
INSERT INTO `t_dic_district` VALUES ('10355', '浦江县', null, '金华市', '浙江省', 'T', null, '33070000', '33000000', '33072600', '330000', '330700000000', '330726000000');
INSERT INTO `t_dic_district` VALUES ('10356', '磐安县', null, '金华市', '浙江省', 'T', null, '33070000', '33000000', '33072700', '330000', '330700000000', '330727000000');
INSERT INTO `t_dic_district` VALUES ('10357', '兰溪市', null, '金华市', '浙江省', 'T', null, '33070000', '33000000', '33078100', '330000', '330700000000', '330781000000');
INSERT INTO `t_dic_district` VALUES ('10358', '义乌市', null, '金华市', '浙江省', 'T', null, '33070000', '33000000', '33078200', '330000', '330700000000', '330782000000');
INSERT INTO `t_dic_district` VALUES ('10359', '东阳市', null, '金华市', '浙江省', 'T', null, '33070000', '33000000', '33078300', '330000', '330700000000', '330783000000');
INSERT INTO `t_dic_district` VALUES ('10360', '永康市', null, '金华市', '浙江省', 'T', null, '33070000', '33000000', '33078400', '330000', '330700000000', '330784000000');
INSERT INTO `t_dic_district` VALUES ('10361', '市辖区', null, '衢州市', '浙江省', 'T', null, '33080000', '33000000', '33080100', '330000', null, null);
INSERT INTO `t_dic_district` VALUES ('10362', '柯城区', null, '衢州市', '浙江省', 'T', null, '33080000', '33000000', '33080200', '330000', '330800000000', '330802000000');
INSERT INTO `t_dic_district` VALUES ('10363', '衢江区', null, '衢州市', '浙江省', 'T', null, '33080000', '33000000', '33080300', '330000', '330800000000', '330803000000');
INSERT INTO `t_dic_district` VALUES ('10364', '常山县', null, '衢州市', '浙江省', 'T', null, '33080000', '33000000', '33082200', '330000', '330800000000', '330822000000');
INSERT INTO `t_dic_district` VALUES ('10365', '开化县', null, '衢州市', '浙江省', 'T', null, '33080000', '33000000', '33082400', '330000', '330800000000', '330824000000');
INSERT INTO `t_dic_district` VALUES ('10366', '龙游县', null, '衢州市', '浙江省', 'T', null, '33080000', '33000000', '33082500', '330000', '330800000000', '330825000000');
INSERT INTO `t_dic_district` VALUES ('10367', '江山市', null, '衢州市', '浙江省', 'T', null, '33080000', '33000000', '33088100', '330000', '330800000000', '330881000000');
INSERT INTO `t_dic_district` VALUES ('10368', '灌云县', null, '连云港市', '江苏省', 'T', null, '32070000', '32000000', '32072300', '320000', '320700000000', '320723000000');
INSERT INTO `t_dic_district` VALUES ('10369', '灌南县', null, '连云港市', '江苏省', 'T', null, '32070000', '32000000', '32072400', '320000', '320700000000', '320724000000');
INSERT INTO `t_dic_district` VALUES ('10370', '市辖区', null, '淮安市', '江苏省', 'T', null, '32080000', '32000000', '32080100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10371', '清河区', null, '淮安市', '江苏省', 'T', null, '32080000', '32000000', '32080200', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10372', '淮安区', null, '淮安市', '江苏省', 'T', null, '32080000', '32000000', '32080300', '320000', '320800000000', '320803000000');
INSERT INTO `t_dic_district` VALUES ('10373', '淮阴区', null, '淮安市', '江苏省', 'T', null, '32080000', '32000000', '32080400', '320000', '320800000000', '320804000000');
INSERT INTO `t_dic_district` VALUES ('10374', '清浦区', null, '淮安市', '江苏省', 'T', null, '32080000', '32000000', '32081100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10375', '涟水县', null, '淮安市', '江苏省', 'T', null, '32080000', '32000000', '32082600', '320000', '320800000000', '320826000000');
INSERT INTO `t_dic_district` VALUES ('10376', '洪泽区', null, '淮安市', '江苏省', 'T', null, '32080000', '32000000', '32082900', '320000', '320800000000', '320813000000');
INSERT INTO `t_dic_district` VALUES ('10377', '盱眙县', null, '淮安市', '江苏省', 'T', null, '32080000', '32000000', '32083000', '320000', '320800000000', '320830000000');
INSERT INTO `t_dic_district` VALUES ('10378', '金湖县', null, '淮安市', '江苏省', 'T', null, '32080000', '32000000', '32083100', '320000', '320800000000', '320831000000');
INSERT INTO `t_dic_district` VALUES ('10379', '市辖区', null, '盐城市', '江苏省', 'T', null, '32090000', '32000000', '32090100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10380', '亭湖区', null, '盐城市', '江苏省', 'T', null, '32090000', '32000000', '32090200', '320000', '320900000000', '320902000000');
INSERT INTO `t_dic_district` VALUES ('10381', '响水县', null, '盐城市', '江苏省', 'T', null, '32090000', '32000000', '32092100', '320000', '320900000000', '320921000000');
INSERT INTO `t_dic_district` VALUES ('10382', '滨海县', null, '盐城市', '江苏省', 'T', null, '32090000', '32000000', '32092200', '320000', '320900000000', '320922000000');
INSERT INTO `t_dic_district` VALUES ('10383', '阜宁县', null, '盐城市', '江苏省', 'T', null, '32090000', '32000000', '32092300', '320000', '320900000000', '320923000000');
INSERT INTO `t_dic_district` VALUES ('10384', '射阳县', null, '盐城市', '江苏省', 'T', null, '32090000', '32000000', '32092400', '320000', '320900000000', '320924000000');
INSERT INTO `t_dic_district` VALUES ('10385', '建湖县', null, '盐城市', '江苏省', 'T', null, '32090000', '32000000', '32092500', '320000', '320900000000', '320925000000');
INSERT INTO `t_dic_district` VALUES ('10386', '盐都区', null, '盐城市', '江苏省', 'T', null, '32090000', '32000000', '32092800', '320000', '320900000000', '320903000000');
INSERT INTO `t_dic_district` VALUES ('10387', '东台市', null, '盐城市', '江苏省', 'T', null, '32090000', '32000000', '32098100', '320000', '320900000000', '320981000000');
INSERT INTO `t_dic_district` VALUES ('10388', '大丰区', null, '盐城市', '江苏省', 'T', null, '32090000', '32000000', '32098200', '320000', '320900000000', '320904000000');
INSERT INTO `t_dic_district` VALUES ('10389', '市辖区', null, '扬州市', '江苏省', 'T', null, '32100000', '32000000', '32100100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10390', '广陵区', null, '扬州市', '江苏省', 'T', null, '32100000', '32000000', '32100200', '320000', '321000000000', '321002000000');
INSERT INTO `t_dic_district` VALUES ('10391', '邗江区', null, '扬州市', '江苏省', 'T', null, '32100000', '32000000', '32100300', '320000', '321000000000', '321003000000');
INSERT INTO `t_dic_district` VALUES ('10392', '经济开发区', null, '扬州市', '江苏省', 'T', null, '32100000', '32000000', '32100400', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10393', '维扬区', null, '扬州市', '江苏省', 'T', null, '32100000', '32000000', '32101100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10394', '宝应县', null, '扬州市', '江苏省', 'T', null, '32100000', '32000000', '32102300', '320000', '321000000000', '321023000000');
INSERT INTO `t_dic_district` VALUES ('10395', '仪征市', null, '扬州市', '江苏省', 'T', null, '32100000', '32000000', '32108100', '320000', '321000000000', '321081000000');
INSERT INTO `t_dic_district` VALUES ('10396', '高邮市', null, '扬州市', '江苏省', 'T', null, '32100000', '32000000', '32108400', '320000', '321000000000', '321084000000');
INSERT INTO `t_dic_district` VALUES ('10397', '江都区', null, '扬州市', '江苏省', 'T', null, '32100000', '32000000', '32108800', '320000', '321000000000', '321012000000');
INSERT INTO `t_dic_district` VALUES ('10398', '市辖区', null, '镇江市', '江苏省', 'T', null, '32110000', '32000000', '32110100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10399', '京口区', null, '镇江市', '江苏省', 'T', null, '32110000', '32000000', '32110200', '320000', '321100000000', '321102000000');
INSERT INTO `t_dic_district` VALUES ('10400', '润州区', null, '镇江市', '江苏省', 'T', null, '32110000', '32000000', '32111100', '320000', '321100000000', '321111000000');
INSERT INTO `t_dic_district` VALUES ('10401', '丹徒区', null, '镇江市', '江苏省', 'T', null, '32110000', '32000000', '32111200', '320000', '321100000000', '321112000000');
INSERT INTO `t_dic_district` VALUES ('10402', '丹阳市', null, '镇江市', '江苏省', 'T', null, '32110000', '32000000', '32118100', '320000', '321100000000', '321181000000');
INSERT INTO `t_dic_district` VALUES ('10403', '扬中市', null, '镇江市', '江苏省', 'T', null, '32110000', '32000000', '32118200', '320000', '321100000000', '321182000000');
INSERT INTO `t_dic_district` VALUES ('10404', '句容市', null, '镇江市', '江苏省', 'T', null, '32110000', '32000000', '32118300', '320000', '321100000000', '321183000000');
INSERT INTO `t_dic_district` VALUES ('10405', '市辖区', null, '泰州市', '江苏省', 'T', null, '32120000', '32000000', '32120100', '320000', null, null);
INSERT INTO `t_dic_district` VALUES ('10406', '海陵区', null, '泰州市', '江苏省', 'T', null, '32120000', '32000000', '32120200', '320000', '321200000000', '321202000000');
INSERT INTO `t_dic_district` VALUES ('10407', '高港区', null, '泰州市', '江苏省', 'T', null, '32120000', '32000000', '32120300', '320000', '321200000000', '321203000000');
INSERT INTO `t_dic_district` VALUES ('10408', '兴化市', null, '泰州市', '江苏省', 'T', null, '32120000', '32000000', '32128100', '320000', '321200000000', '321281000000');
INSERT INTO `t_dic_district` VALUES ('10410', '龙子湖区', null, '蚌埠市', '安徽省', 'T', null, '34030000', '34000000', '34030200', '340000', '340300000000', '340302000000');
INSERT INTO `t_dic_district` VALUES ('10411', '蚌山区', null, '蚌埠市', '安徽省', 'T', null, '34030000', '34000000', '34030300', '340000', '340300000000', '340303000000');
INSERT INTO `t_dic_district` VALUES ('10412', '禹会区', null, '蚌埠市', '安徽省', 'T', null, '34030000', '34000000', '34030400', '340000', '340300000000', '340304000000');
INSERT INTO `t_dic_district` VALUES ('10413', '淮上区', null, '蚌埠市', '安徽省', 'T', null, '34030000', '34000000', '34031100', '340000', '340300000000', '340311000000');
INSERT INTO `t_dic_district` VALUES ('10414', '怀远县', null, '蚌埠市', '安徽省', 'T', null, '34030000', '34000000', '34032100', '340000', '340300000000', '340321000000');
INSERT INTO `t_dic_district` VALUES ('10415', '五河县', null, '蚌埠市', '安徽省', 'T', null, '34030000', '34000000', '34032200', '340000', '340300000000', '340322000000');
INSERT INTO `t_dic_district` VALUES ('10416', '固镇县', null, '蚌埠市', '安徽省', 'T', null, '34030000', '34000000', '34032300', '340000', '340300000000', '340323000000');
INSERT INTO `t_dic_district` VALUES ('10418', '大通区', null, '淮南市', '安徽省', 'T', null, '34040000', '34000000', '34040200', '340000', '340400000000', '340402000000');
INSERT INTO `t_dic_district` VALUES ('10419', '田家庵区', null, '淮南市', '安徽省', 'T', null, '34040000', '34000000', '34040300', '340000', '340400000000', '340403000000');
INSERT INTO `t_dic_district` VALUES ('10420', '谢家集区', null, '淮南市', '安徽省', 'T', null, '34040000', '34000000', '34040400', '340000', '340400000000', '340404000000');
INSERT INTO `t_dic_district` VALUES ('10421', '八公山区', null, '淮南市', '安徽省', 'T', null, '34040000', '34000000', '34040500', '340000', '340400000000', '340405000000');
INSERT INTO `t_dic_district` VALUES ('10422', '潘集区', null, '淮南市', '安徽省', 'T', null, '34040000', '34000000', '34040600', '340000', '340400000000', '340406000000');
INSERT INTO `t_dic_district` VALUES ('10423', '凤台县', null, '淮南市', '安徽省', 'T', null, '34040000', '34000000', '34042100', '340000', '340400000000', '340421000000');
INSERT INTO `t_dic_district` VALUES ('10425', '金家庄区', null, '马鞍山市', '安徽省', 'T', null, '34050000', '34000000', '34050200', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('10426', '花山区', null, '马鞍山市', '安徽省', 'T', null, '34050000', '34000000', '34050300', '340000', '340500000000', '340503000000');
INSERT INTO `t_dic_district` VALUES ('10427', '雨山区', null, '马鞍山市', '安徽省', 'T', null, '34050000', '34000000', '34050400', '340000', '340500000000', '340504000000');
INSERT INTO `t_dic_district` VALUES ('10428', '当涂县', null, '马鞍山市', '安徽省', 'T', null, '34050000', '34000000', '34052100', '340000', '340500000000', '340521000000');
INSERT INTO `t_dic_district` VALUES ('10430', '临安市', null, '杭州市', '浙江省', 'T', null, '33010000', '33000000', '33018500', '330000', '330100000000', '330185000000');
INSERT INTO `t_dic_district` VALUES ('10431', '市辖区', null, '宁波市', '浙江省', 'T', null, '33020000', '33000000', '33020100', '330000', null, null);
INSERT INTO `t_dic_district` VALUES ('10432', '海曙区', null, '宁波市', '浙江省', 'T', null, '33020000', '33000000', '33020300', '330000', '330200000000', '330203000000');
INSERT INTO `t_dic_district` VALUES ('10433', '江东区', null, '宁波市', '浙江省', 'T', null, '33020000', '33000000', '33020400', '330000', '330200000000', '330204000000');
INSERT INTO `t_dic_district` VALUES ('10434', '江北区', null, '宁波市', '浙江省', 'T', null, '33020000', '33000000', '33020500', '330000', '330200000000', '330205000000');
INSERT INTO `t_dic_district` VALUES ('10435', '北仑区', null, '宁波市', '浙江省', 'T', null, '33020000', '33000000', '33020600', '330000', '330200000000', '330206000000');
INSERT INTO `t_dic_district` VALUES ('10436', '镇海区', null, '宁波市', '浙江省', 'T', null, '33020000', '33000000', '33021100', '330000', '330200000000', '330211000000');
INSERT INTO `t_dic_district` VALUES ('10437', '鄞州区', null, '宁波市', '浙江省', 'T', null, '33020000', '33000000', '33021200', '330000', '330200000000', '330212000000');
INSERT INTO `t_dic_district` VALUES ('10438', '象山县', null, '宁波市', '浙江省', 'T', null, '33020000', '33000000', '33022500', '330000', '330200000000', '330225000000');
INSERT INTO `t_dic_district` VALUES ('10439', '宁海县', null, '宁波市', '浙江省', 'T', null, '33020000', '33000000', '33022600', '330000', '330200000000', '330226000000');
INSERT INTO `t_dic_district` VALUES ('10440', '余姚市', null, '宁波市', '浙江省', 'T', null, '33020000', '33000000', '33028100', '330000', '330200000000', '330281000000');
INSERT INTO `t_dic_district` VALUES ('10441', '慈溪市', null, '宁波市', '浙江省', 'T', null, '33020000', '33000000', '33028200', '330000', '330200000000', '330282000000');
INSERT INTO `t_dic_district` VALUES ('10442', '奉化市', null, '宁波市', '浙江省', 'T', null, '33020000', '33000000', '33028300', '330000', '330200000000', '330283000000');
INSERT INTO `t_dic_district` VALUES ('10443', '市辖区', null, '温州市', '浙江省', 'T', null, '33030000', '33000000', '33030100', '330000', null, null);
INSERT INTO `t_dic_district` VALUES ('10444', '鹿城区', null, '温州市', '浙江省', 'T', null, '33030000', '33000000', '33030200', '330000', '330300000000', '330302000000');
INSERT INTO `t_dic_district` VALUES ('10445', '龙湾区', null, '温州市', '浙江省', 'T', null, '33030000', '33000000', '33030300', '330000', '330300000000', '330303000000');
INSERT INTO `t_dic_district` VALUES ('10446', '瓯海区', null, '温州市', '浙江省', 'T', null, '33030000', '33000000', '33030400', '330000', '330300000000', '330304000000');
INSERT INTO `t_dic_district` VALUES ('10447', '洞头区', null, '温州市', '浙江省', 'T', null, '33030000', '33000000', '33032200', '330000', '330300000000', '330305000000');
INSERT INTO `t_dic_district` VALUES ('10448', '永嘉县', null, '温州市', '浙江省', 'T', null, '33030000', '33000000', '33032400', '330000', '330300000000', '330324000000');
INSERT INTO `t_dic_district` VALUES ('10449', '平阳县', null, '温州市', '浙江省', 'T', null, '33030000', '33000000', '33032600', '330000', '330300000000', '330326000000');
INSERT INTO `t_dic_district` VALUES ('10450', '苍南县', null, '温州市', '浙江省', 'T', null, '33030000', '33000000', '33032700', '330000', '330300000000', '330327000000');
INSERT INTO `t_dic_district` VALUES ('10451', '文成县', null, '温州市', '浙江省', 'T', null, '33030000', '33000000', '33032800', '330000', '330300000000', '330328000000');
INSERT INTO `t_dic_district` VALUES ('10452', '泰顺县', null, '温州市', '浙江省', 'T', null, '33030000', '33000000', '33032900', '330000', '330300000000', '330329000000');
INSERT INTO `t_dic_district` VALUES ('10453', '瑞安市', null, '温州市', '浙江省', 'T', null, '33030000', '33000000', '33038100', '330000', '330300000000', '330381000000');
INSERT INTO `t_dic_district` VALUES ('10454', '乐清市', null, '温州市', '浙江省', 'T', null, '33030000', '33000000', '33038200', '330000', '330300000000', '330382000000');
INSERT INTO `t_dic_district` VALUES ('10455', '市辖区', null, '嘉兴市', '浙江省', 'T', null, '33040000', '33000000', '33040100', '330000', null, null);
INSERT INTO `t_dic_district` VALUES ('10456', '南湖区', null, '嘉兴市', '浙江省', 'T', null, '33040000', '33000000', '33040200', '330000', '330400000000', '330402000000');
INSERT INTO `t_dic_district` VALUES ('10457', '秀洲区', null, '嘉兴市', '浙江省', 'T', null, '33040000', '33000000', '33041100', '330000', '330400000000', '330411000000');
INSERT INTO `t_dic_district` VALUES ('10458', '嘉善县', null, '嘉兴市', '浙江省', 'T', null, '33040000', '33000000', '33042100', '330000', '330400000000', '330421000000');
INSERT INTO `t_dic_district` VALUES ('10459', '海盐县', null, '嘉兴市', '浙江省', 'T', null, '33040000', '33000000', '33042400', '330000', '330400000000', '330424000000');
INSERT INTO `t_dic_district` VALUES ('10460', '海宁市', null, '嘉兴市', '浙江省', 'T', null, '33040000', '33000000', '33048100', '330000', '330400000000', '330481000000');
INSERT INTO `t_dic_district` VALUES ('10461', '平湖市', null, '嘉兴市', '浙江省', 'T', null, '33040000', '33000000', '33048200', '330000', '330400000000', '330482000000');
INSERT INTO `t_dic_district` VALUES ('10462', '桐乡市', null, '嘉兴市', '浙江省', 'T', null, '33040000', '33000000', '33048300', '330000', '330400000000', '330483000000');
INSERT INTO `t_dic_district` VALUES ('10463', '市辖区', null, '湖州市', '浙江省', 'T', null, '33050000', '33000000', '33050100', '330000', null, null);
INSERT INTO `t_dic_district` VALUES ('10464', '吴兴区', null, '湖州市', '浙江省', 'T', null, '33050000', '33000000', '33050200', '330000', '330500000000', '330502000000');
INSERT INTO `t_dic_district` VALUES ('10465', '南浔区', null, '湖州市', '浙江省', 'T', null, '33050000', '33000000', '33050300', '330000', '330500000000', '330503000000');
INSERT INTO `t_dic_district` VALUES ('10466', '德清县', null, '湖州市', '浙江省', 'T', null, '33050000', '33000000', '33052100', '330000', '330500000000', '330521000000');
INSERT INTO `t_dic_district` VALUES ('10467', '长兴县', null, '湖州市', '浙江省', 'T', null, '33050000', '33000000', '33052200', '330000', '330500000000', '330522000000');
INSERT INTO `t_dic_district` VALUES ('10468', '安吉县', null, '湖州市', '浙江省', 'T', null, '33050000', '33000000', '33052300', '330000', '330500000000', '330523000000');
INSERT INTO `t_dic_district` VALUES ('10469', '市辖区', null, '绍兴市', '浙江省', 'T', null, '33060000', '33000000', '33060100', '330000', null, null);
INSERT INTO `t_dic_district` VALUES ('10470', '越城区', null, '绍兴市', '浙江省', 'T', null, '33060000', '33000000', '33060200', '330000', '330600000000', '330602000000');
INSERT INTO `t_dic_district` VALUES ('10471', '颍泉区', null, '阜阳市', '安徽省', 'T', null, '34120000', '34000000', '34120400', '340000', '341200000000', '341204000000');
INSERT INTO `t_dic_district` VALUES ('10472', '临泉县', null, '阜阳市', '安徽省', 'T', null, '34120000', '34000000', '34122100', '340000', '341200000000', '341221000000');
INSERT INTO `t_dic_district` VALUES ('10473', '太和县', null, '阜阳市', '安徽省', 'T', null, '34120000', '34000000', '34122200', '340000', '341200000000', '341222000000');
INSERT INTO `t_dic_district` VALUES ('10474', '阜南县', null, '阜阳市', '安徽省', 'T', null, '34120000', '34000000', '34122500', '340000', '341200000000', '341225000000');
INSERT INTO `t_dic_district` VALUES ('10475', '颍上县', null, '阜阳市', '安徽省', 'T', null, '34120000', '34000000', '34122600', '340000', '341200000000', '341226000000');
INSERT INTO `t_dic_district` VALUES ('10476', '界首市', null, '阜阳市', '安徽省', 'T', null, '34120000', '34000000', '34128200', '340000', '341200000000', '341282000000');
INSERT INTO `t_dic_district` VALUES ('10478', '埇桥区', null, '宿州市', '安徽省', 'T', null, '34130000', '34000000', '34130200', '340000', '341300000000', '341302000000');
INSERT INTO `t_dic_district` VALUES ('10479', '砀山县', null, '宿州市', '安徽省', 'T', null, '34130000', '34000000', '34132100', '340000', '341300000000', '341321000000');
INSERT INTO `t_dic_district` VALUES ('10480', '萧县', null, '宿州市', '安徽省', 'T', null, '34130000', '34000000', '34132200', '340000', '341300000000', '341322000000');
INSERT INTO `t_dic_district` VALUES ('10481', '灵璧县', null, '宿州市', '安徽省', 'T', null, '34130000', '34000000', '34132300', '340000', '341300000000', '341323000000');
INSERT INTO `t_dic_district` VALUES ('10482', '泗县', null, '宿州市', '安徽省', 'T', null, '34130000', '34000000', '34132400', '340000', '341300000000', '341324000000');
INSERT INTO `t_dic_district` VALUES ('10484', '居巢区', null, '巢湖市', '安徽省', 'T', null, '34140000', '34000000', '34140200', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('10485', '庐江县', null, '巢湖市', '安徽省', 'T', null, '34140000', '34000000', '34142100', '340000', '340100000000', '340124000000');
INSERT INTO `t_dic_district` VALUES ('10486', '无为县', null, '巢湖市', '安徽省', 'T', null, '34140000', '34000000', '34142200', '340000', '340200000000', '340225000000');
INSERT INTO `t_dic_district` VALUES ('10487', '含山县', null, '巢湖市', '安徽省', 'T', null, '34140000', '34000000', '34142300', '340000', '340500000000', '340522000000');
INSERT INTO `t_dic_district` VALUES ('10488', '和县', null, '巢湖市', '安徽省', 'T', null, '34140000', '34000000', '34142400', '340000', '340500000000', '340523000000');
INSERT INTO `t_dic_district` VALUES ('10490', '金安区', null, '六安市', '安徽省', 'T', null, '34150000', '34000000', '34150200', '340000', '341500000000', '341502000000');
INSERT INTO `t_dic_district` VALUES ('10491', '裕安区', null, '六安市', '安徽省', 'T', null, '34150000', '34000000', '34150300', '340000', '341500000000', '341503000000');
INSERT INTO `t_dic_district` VALUES ('10492', '寿县', null, '六安市', '安徽省', 'T', null, '34150000', '34000000', '34152100', '340000', '340400000000', '340422000000');
INSERT INTO `t_dic_district` VALUES ('10493', '市辖区', null, '舟山市', '浙江省', 'T', null, '33090000', '33000000', '33090100', '330000', null, null);
INSERT INTO `t_dic_district` VALUES ('10494', '定海区', null, '舟山市', '浙江省', 'T', null, '33090000', '33000000', '33090200', '330000', '330900000000', '330902000000');
INSERT INTO `t_dic_district` VALUES ('10495', '普陀区', null, '舟山市', '浙江省', 'T', null, '33090000', '33000000', '33090300', '330000', '330900000000', '330903000000');
INSERT INTO `t_dic_district` VALUES ('10496', '岱山县', null, '舟山市', '浙江省', 'T', null, '33090000', '33000000', '33092100', '330000', '330900000000', '330921000000');
INSERT INTO `t_dic_district` VALUES ('10497', '嵊泗县', null, '舟山市', '浙江省', 'T', null, '33090000', '33000000', '33092200', '330000', '330900000000', '330922000000');
INSERT INTO `t_dic_district` VALUES ('10498', '市辖区', null, '台州市', '浙江省', 'T', null, '33100000', '33000000', '33100100', '330000', null, null);
INSERT INTO `t_dic_district` VALUES ('10499', '椒江区', null, '台州市', '浙江省', 'T', null, '33100000', '33000000', '33100200', '330000', '331000000000', '331002000000');
INSERT INTO `t_dic_district` VALUES ('10500', '黄岩区', null, '台州市', '浙江省', 'T', null, '33100000', '33000000', '33100300', '330000', '331000000000', '331003000000');
INSERT INTO `t_dic_district` VALUES ('10501', '路桥区', null, '台州市', '浙江省', 'T', null, '33100000', '33000000', '33100400', '330000', '331000000000', '331004000000');
INSERT INTO `t_dic_district` VALUES ('10502', '玉环县', null, '台州市', '浙江省', 'T', null, '33100000', '33000000', '33102100', '330000', '331000000000', '331021000000');
INSERT INTO `t_dic_district` VALUES ('10503', '三门县', null, '台州市', '浙江省', 'T', null, '33100000', '33000000', '33102200', '330000', '331000000000', '331022000000');
INSERT INTO `t_dic_district` VALUES ('10504', '天台县', null, '台州市', '浙江省', 'T', null, '33100000', '33000000', '33102300', '330000', '331000000000', '331023000000');
INSERT INTO `t_dic_district` VALUES ('10505', '仙居县', null, '台州市', '浙江省', 'T', null, '33100000', '33000000', '33102400', '330000', '331000000000', '331024000000');
INSERT INTO `t_dic_district` VALUES ('10506', '温岭市', null, '台州市', '浙江省', 'T', null, '33100000', '33000000', '33108100', '330000', '331000000000', '331081000000');
INSERT INTO `t_dic_district` VALUES ('10507', '临海市', null, '台州市', '浙江省', 'T', null, '33100000', '33000000', '33108200', '330000', '331000000000', '331082000000');
INSERT INTO `t_dic_district` VALUES ('10508', '市辖区', null, '丽水市', '浙江省', 'T', null, '33110000', '33000000', '33110100', '330000', null, null);
INSERT INTO `t_dic_district` VALUES ('10509', '莲都区', null, '丽水市', '浙江省', 'T', null, '33110000', '33000000', '33110200', '330000', '331100000000', '331102000000');
INSERT INTO `t_dic_district` VALUES ('10510', '青田县', null, '丽水市', '浙江省', 'T', null, '33110000', '33000000', '33112100', '330000', '331100000000', '331121000000');
INSERT INTO `t_dic_district` VALUES ('10511', '缙云县', null, '丽水市', '浙江省', 'T', null, '33110000', '33000000', '33112200', '330000', '331100000000', '331122000000');
INSERT INTO `t_dic_district` VALUES ('10512', '遂昌县', null, '丽水市', '浙江省', 'T', null, '33110000', '33000000', '33112300', '330000', '331100000000', '331123000000');
INSERT INTO `t_dic_district` VALUES ('10513', '松阳县', null, '丽水市', '浙江省', 'T', null, '33110000', '33000000', '33112400', '330000', '331100000000', '331124000000');
INSERT INTO `t_dic_district` VALUES ('10514', '云和县', null, '丽水市', '浙江省', 'T', null, '33110000', '33000000', '33112500', '330000', '331100000000', '331125000000');
INSERT INTO `t_dic_district` VALUES ('10515', '庆元县', null, '丽水市', '浙江省', 'T', null, '33110000', '33000000', '33112600', '330000', '331100000000', '331126000000');
INSERT INTO `t_dic_district` VALUES ('10516', '景宁畲族自治县', null, '丽水市', '浙江省', 'T', null, '33110000', '33000000', '33112700', '330000', '331100000000', '331127000000');
INSERT INTO `t_dic_district` VALUES ('10517', '龙泉市', null, '丽水市', '浙江省', 'T', null, '33110000', '33000000', '33118100', '330000', '331100000000', '331181000000');
INSERT INTO `t_dic_district` VALUES ('10519', '瑶海区', null, '合肥市', '安徽省', 'T', null, '34010000', '34000000', '34010200', '340000', '340100000000', '340102000000');
INSERT INTO `t_dic_district` VALUES ('10520', '庐阳区', null, '合肥市', '安徽省', 'T', null, '34010000', '34000000', '34010300', '340000', '340100000000', '340103000000');
INSERT INTO `t_dic_district` VALUES ('10521', '蜀山区', null, '合肥市', '安徽省', 'T', null, '34010000', '34000000', '34010400', '340000', '340100000000', '340104000000');
INSERT INTO `t_dic_district` VALUES ('10522', '包河区', null, '合肥市', '安徽省', 'T', null, '34010000', '34000000', '34011100', '340000', '340100000000', '340111000000');
INSERT INTO `t_dic_district` VALUES ('10523', '长丰县', null, '合肥市', '安徽省', 'T', null, '34010000', '34000000', '34012100', '340000', '340100000000', '340121000000');
INSERT INTO `t_dic_district` VALUES ('10524', '肥东县', null, '合肥市', '安徽省', 'T', null, '34010000', '34000000', '34012200', '340000', '340100000000', '340122000000');
INSERT INTO `t_dic_district` VALUES ('10525', '肥西县', null, '合肥市', '安徽省', 'T', null, '34010000', '34000000', '34012300', '340000', '340100000000', '340123000000');
INSERT INTO `t_dic_district` VALUES ('10526', '开发区', null, '芜湖市', '安徽省', 'T', null, '34020000', '34000000', '34020100', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('10527', '镜湖区', null, '芜湖市', '安徽省', 'T', null, '34020000', '34000000', '34020200', '340000', '340200000000', '340202000000');
INSERT INTO `t_dic_district` VALUES ('10528', '三山区', null, '芜湖市', '安徽省', 'T', null, '34020000', '34000000', '34020300', '340000', '340200000000', '340208000000');
INSERT INTO `t_dic_district` VALUES ('10529', '弋江区', null, '芜湖市', '安徽省', 'T', null, '34020000', '34000000', '34020400', '340000', '340200000000', '340203000000');
INSERT INTO `t_dic_district` VALUES ('10530', '鸠江区', null, '芜湖市', '安徽省', 'T', null, '34020000', '34000000', '34020700', '340000', '340200000000', '340207000000');
INSERT INTO `t_dic_district` VALUES ('10531', '芜湖县', null, '芜湖市', '安徽省', 'T', null, '34020000', '34000000', '34022100', '340000', '340200000000', '340221000000');
INSERT INTO `t_dic_district` VALUES ('10532', '繁昌县', null, '芜湖市', '安徽省', 'T', null, '34020000', '34000000', '34022200', '340000', '340200000000', '340222000000');
INSERT INTO `t_dic_district` VALUES ('10533', '南陵县', null, '芜湖市', '安徽省', 'T', null, '34020000', '34000000', '34022300', '340000', '340200000000', '340223000000');
INSERT INTO `t_dic_district` VALUES ('10534', '集美区', null, '厦门市', '福建省', 'T', null, '35020000', '35000000', '35021100', '350000', '350200000000', '350211000000');
INSERT INTO `t_dic_district` VALUES ('10535', '同安区', null, '厦门市', '福建省', 'T', null, '35020000', '35000000', '35021200', '350000', '350200000000', '350212000000');
INSERT INTO `t_dic_district` VALUES ('10536', '翔安区', null, '厦门市', '福建省', 'T', null, '35020000', '35000000', '35021300', '350000', '350200000000', '350213000000');
INSERT INTO `t_dic_district` VALUES ('10537', '市辖区', null, '莆田市', '福建省', 'T', null, '35030000', '35000000', '35030100', '350000', '350900000000', '350901000000');
INSERT INTO `t_dic_district` VALUES ('10538', '城厢区', null, '莆田市', '福建省', 'T', null, '35030000', '35000000', '35030200', '350000', '350300000000', '350302000000');
INSERT INTO `t_dic_district` VALUES ('10539', '涵江区', null, '莆田市', '福建省', 'T', null, '35030000', '35000000', '35030300', '350000', '350300000000', '350303000000');
INSERT INTO `t_dic_district` VALUES ('10540', '荔城区', null, '莆田市', '福建省', 'T', null, '35030000', '35000000', '35030400', '350000', '350300000000', '350304000000');
INSERT INTO `t_dic_district` VALUES ('10541', '秀屿区', null, '莆田市', '福建省', 'T', null, '35030000', '35000000', '35030500', '350000', '350300000000', '350305000000');
INSERT INTO `t_dic_district` VALUES ('10542', '仙游县', null, '莆田市', '福建省', 'T', null, '35030000', '35000000', '35032200', '350000', '350300000000', '350322000000');
INSERT INTO `t_dic_district` VALUES ('10543', '市辖区', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35040100', '350000', null, null);
INSERT INTO `t_dic_district` VALUES ('10544', '梅列区', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35040200', '350000', '350400000000', '350402000000');
INSERT INTO `t_dic_district` VALUES ('10545', '三元区', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35040300', '350000', '350400000000', '350403000000');
INSERT INTO `t_dic_district` VALUES ('10546', '明溪县', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35042100', '350000', '350400000000', '350421000000');
INSERT INTO `t_dic_district` VALUES ('10547', '清流县', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35042300', '350000', '350400000000', '350423000000');
INSERT INTO `t_dic_district` VALUES ('10548', '宁化县', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35042400', '350000', '350400000000', '350424000000');
INSERT INTO `t_dic_district` VALUES ('10549', '大田县', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35042500', '350000', '350400000000', '350425000000');
INSERT INTO `t_dic_district` VALUES ('10550', '尤溪县', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35042600', '350000', '350400000000', '350426000000');
INSERT INTO `t_dic_district` VALUES ('10551', '沙县', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35042700', '350000', '350400000000', '350427000000');
INSERT INTO `t_dic_district` VALUES ('10552', '将乐县', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35042800', '350000', '350400000000', '350428000000');
INSERT INTO `t_dic_district` VALUES ('10553', '泰宁县', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35042900', '350000', '350400000000', '350429000000');
INSERT INTO `t_dic_district` VALUES ('10554', '建宁县', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35043000', '350000', '350400000000', '350430000000');
INSERT INTO `t_dic_district` VALUES ('10555', '永安市', null, '三明市', '福建省', 'T', null, '35040000', '35000000', '35048100', '350000', '350400000000', '350481000000');
INSERT INTO `t_dic_district` VALUES ('10556', '杜集区', null, '淮北市', '安徽省', 'T', null, '34060000', '34000000', '34060200', '340000', '340600000000', '340602000000');
INSERT INTO `t_dic_district` VALUES ('10557', '相山区', null, '淮北市', '安徽省', 'T', null, '34060000', '34000000', '34060300', '340000', '340600000000', '340603000000');
INSERT INTO `t_dic_district` VALUES ('10558', '烈山区', null, '淮北市', '安徽省', 'T', null, '34060000', '34000000', '34060400', '340000', '340600000000', '340604000000');
INSERT INTO `t_dic_district` VALUES ('10559', '濉溪县', null, '淮北市', '安徽省', 'T', null, '34060000', '34000000', '34062100', '340000', '340600000000', '340621000000');
INSERT INTO `t_dic_district` VALUES ('10561', '铜官区', null, '铜陵市', '安徽省', 'T', null, '34070000', '34000000', '34070200', '340000', '340700000000', '340705000000');
INSERT INTO `t_dic_district` VALUES ('10562', '狮子山区', null, '铜陵市', '安徽省', 'T', null, '34070000', '34000000', '34070300', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('10563', '郊区', null, '铜陵市', '安徽省', 'T', null, '34070000', '34000000', '34071100', '340000', '340700000000', '340711000000');
INSERT INTO `t_dic_district` VALUES ('10564', '铜陵县', null, '铜陵市', '安徽省', 'T', null, '34070000', '34000000', '34072100', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('10566', '迎江区', null, '安庆市', '安徽省', 'T', null, '34080000', '34000000', '34080200', '340000', '340800000000', '340802000000');
INSERT INTO `t_dic_district` VALUES ('10567', '大观区', null, '安庆市', '安徽省', 'T', null, '34080000', '34000000', '34080300', '340000', '340800000000', '340803000000');
INSERT INTO `t_dic_district` VALUES ('10568', '宜秀区', null, '安庆市', '安徽省', 'T', null, '34080000', '34000000', '34081100', '340000', '340800000000', '340811000000');
INSERT INTO `t_dic_district` VALUES ('10569', '怀宁县', null, '安庆市', '安徽省', 'T', null, '34080000', '34000000', '34082200', '340000', '340800000000', '340822000000');
INSERT INTO `t_dic_district` VALUES ('10570', '枞阳县', null, '安庆市', '安徽省', 'T', null, '34080000', '34000000', '34082300', '340000', '340700000000', '340722000000');
INSERT INTO `t_dic_district` VALUES ('10571', '潜山县', null, '安庆市', '安徽省', 'T', null, '34080000', '34000000', '34082400', '340000', '340800000000', '340824000000');
INSERT INTO `t_dic_district` VALUES ('10572', '太湖县', null, '安庆市', '安徽省', 'T', null, '34080000', '34000000', '34082500', '340000', '340800000000', '340825000000');
INSERT INTO `t_dic_district` VALUES ('10573', '宿松县', null, '安庆市', '安徽省', 'T', null, '34080000', '34000000', '34082600', '340000', '340800000000', '340826000000');
INSERT INTO `t_dic_district` VALUES ('10574', '望江县', null, '安庆市', '安徽省', 'T', null, '34080000', '34000000', '34082700', '340000', '340800000000', '340827000000');
INSERT INTO `t_dic_district` VALUES ('10575', '岳西县', null, '安庆市', '安徽省', 'T', null, '34080000', '34000000', '34082800', '340000', '340800000000', '340828000000');
INSERT INTO `t_dic_district` VALUES ('10576', '桐城市', null, '安庆市', '安徽省', 'T', null, '34080000', '34000000', '34088100', '340000', '340800000000', '340881000000');
INSERT INTO `t_dic_district` VALUES ('10578', '屯溪区', null, '黄山市', '安徽省', 'T', null, '34100000', '34000000', '34100200', '340000', '341000000000', '341002000000');
INSERT INTO `t_dic_district` VALUES ('10579', '黄山区', null, '黄山市', '安徽省', 'T', null, '34100000', '34000000', '34100300', '340000', '341000000000', '341003000000');
INSERT INTO `t_dic_district` VALUES ('10580', '徽州区', null, '黄山市', '安徽省', 'T', null, '34100000', '34000000', '34100400', '340000', '341000000000', '341004000000');
INSERT INTO `t_dic_district` VALUES ('10581', '歙县', null, '黄山市', '安徽省', 'T', null, '34100000', '34000000', '34102100', '340000', '341000000000', '341021000000');
INSERT INTO `t_dic_district` VALUES ('10582', '休宁县', null, '黄山市', '安徽省', 'T', null, '34100000', '34000000', '34102200', '340000', '341000000000', '341022000000');
INSERT INTO `t_dic_district` VALUES ('10583', '黟县', null, '黄山市', '安徽省', 'T', null, '34100000', '34000000', '34102300', '340000', '341000000000', '341023000000');
INSERT INTO `t_dic_district` VALUES ('10584', '祁门县', null, '黄山市', '安徽省', 'T', null, '34100000', '34000000', '34102400', '340000', '341000000000', '341024000000');
INSERT INTO `t_dic_district` VALUES ('10586', '琅琊区', null, '滁州市', '安徽省', 'T', null, '34110000', '34000000', '34110200', '340000', '341100000000', '341102000000');
INSERT INTO `t_dic_district` VALUES ('10587', '南谯区', null, '滁州市', '安徽省', 'T', null, '34110000', '34000000', '34110300', '340000', '341100000000', '341103000000');
INSERT INTO `t_dic_district` VALUES ('10588', '来安县', null, '滁州市', '安徽省', 'T', null, '34110000', '34000000', '34112200', '340000', '341100000000', '341122000000');
INSERT INTO `t_dic_district` VALUES ('10589', '全椒县', null, '滁州市', '安徽省', 'T', null, '34110000', '34000000', '34112400', '340000', '341100000000', '341124000000');
INSERT INTO `t_dic_district` VALUES ('10590', '定远县', null, '滁州市', '安徽省', 'T', null, '34110000', '34000000', '34112500', '340000', '341100000000', '341125000000');
INSERT INTO `t_dic_district` VALUES ('10591', '凤阳县', null, '滁州市', '安徽省', 'T', null, '34110000', '34000000', '34112600', '340000', '341100000000', '341126000000');
INSERT INTO `t_dic_district` VALUES ('10592', '天长市', null, '滁州市', '安徽省', 'T', null, '34110000', '34000000', '34118100', '340000', '341100000000', '341181000000');
INSERT INTO `t_dic_district` VALUES ('10593', '明光市', null, '滁州市', '安徽省', 'T', null, '34110000', '34000000', '34118200', '340000', '341100000000', '341182000000');
INSERT INTO `t_dic_district` VALUES ('10595', '颍州区', null, '阜阳市', '安徽省', 'T', null, '34120000', '34000000', '34120200', '340000', '341200000000', '341202000000');
INSERT INTO `t_dic_district` VALUES ('10596', '颍东区', null, '阜阳市', '安徽省', 'T', null, '34120000', '34000000', '34120300', '340000', '341200000000', '341203000000');
INSERT INTO `t_dic_district` VALUES ('10597', '漳平市', null, '龙岩市', '福建省', 'T', null, '35080000', '35000000', '35088100', '350000', '350800000000', '350881000000');
INSERT INTO `t_dic_district` VALUES ('10598', '市辖区', null, '宁德市', '福建省', 'T', null, '35090000', '35000000', '35090100', '350000', null, null);
INSERT INTO `t_dic_district` VALUES ('10599', '蕉城区', null, '宁德市', '福建省', 'T', null, '35090000', '35000000', '35090200', '350000', '350900000000', '350902000000');
INSERT INTO `t_dic_district` VALUES ('10600', '霞浦县', null, '宁德市', '福建省', 'T', null, '35090000', '35000000', '35092100', '350000', '350900000000', '350921000000');
INSERT INTO `t_dic_district` VALUES ('10601', '古田县', null, '宁德市', '福建省', 'T', null, '35090000', '35000000', '35092200', '350000', '350900000000', '350922000000');
INSERT INTO `t_dic_district` VALUES ('10602', '屏南县', null, '宁德市', '福建省', 'T', null, '35090000', '35000000', '35092300', '350000', '350900000000', '350923000000');
INSERT INTO `t_dic_district` VALUES ('10603', '寿宁县', null, '宁德市', '福建省', 'T', null, '35090000', '35000000', '35092400', '350000', '350900000000', '350924000000');
INSERT INTO `t_dic_district` VALUES ('10604', '周宁县', null, '宁德市', '福建省', 'T', null, '35090000', '35000000', '35092500', '350000', '350900000000', '350925000000');
INSERT INTO `t_dic_district` VALUES ('10605', '柘荣县', null, '宁德市', '福建省', 'T', null, '35090000', '35000000', '35092600', '350000', '350900000000', '350926000000');
INSERT INTO `t_dic_district` VALUES ('10606', '福安市', null, '宁德市', '福建省', 'T', null, '35090000', '35000000', '35098100', '350000', '350900000000', '350981000000');
INSERT INTO `t_dic_district` VALUES ('10607', '福鼎市', null, '宁德市', '福建省', 'T', null, '35090000', '35000000', '35098200', '350000', '350900000000', '350982000000');
INSERT INTO `t_dic_district` VALUES ('10608', '市辖区', null, '南昌市', '江西省', 'T', null, '36010000', '36000000', '36010100', '360000', '361100000000', '361101000000');
INSERT INTO `t_dic_district` VALUES ('10609', '东湖区', null, '南昌市', '江西省', 'T', null, '36010000', '36000000', '36010200', '360000', '360100000000', '360102000000');
INSERT INTO `t_dic_district` VALUES ('10610', '西湖区', null, '南昌市', '江西省', 'T', null, '36010000', '36000000', '36010300', '360000', '360100000000', '360103000000');
INSERT INTO `t_dic_district` VALUES ('10611', '青云谱区', null, '南昌市', '江西省', 'T', null, '36010000', '36000000', '36010400', '360000', '360100000000', '360104000000');
INSERT INTO `t_dic_district` VALUES ('10612', '湾里区', null, '南昌市', '江西省', 'T', null, '36010000', '36000000', '36010500', '360000', '360100000000', '360105000000');
INSERT INTO `t_dic_district` VALUES ('10613', '青山湖区', null, '南昌市', '江西省', 'T', null, '36010000', '36000000', '36011100', '360000', '360100000000', '360111000000');
INSERT INTO `t_dic_district` VALUES ('10614', '南昌县', null, '南昌市', '江西省', 'T', null, '36010000', '36000000', '36012100', '360000', '360100000000', '360121000000');
INSERT INTO `t_dic_district` VALUES ('10615', '新建区', null, '南昌市', '江西省', 'T', null, '36010000', '36000000', '36012200', '360000', '360100000000', '360112000000');
INSERT INTO `t_dic_district` VALUES ('10616', '安义县', null, '南昌市', '江西省', 'T', null, '36010000', '36000000', '36012300', '360000', '360100000000', '360123000000');
INSERT INTO `t_dic_district` VALUES ('10617', '进贤县', null, '南昌市', '江西省', 'T', null, '36010000', '36000000', '36012400', '360000', '360100000000', '360124000000');
INSERT INTO `t_dic_district` VALUES ('10618', '霍邱县', null, '六安市', '安徽省', 'T', null, '34150000', '34000000', '34152200', '340000', '341500000000', '341522000000');
INSERT INTO `t_dic_district` VALUES ('10619', '舒城县', null, '六安市', '安徽省', 'T', null, '34150000', '34000000', '34152300', '340000', '341500000000', '341523000000');
INSERT INTO `t_dic_district` VALUES ('10620', '金寨县', null, '六安市', '安徽省', 'T', null, '34150000', '34000000', '34152400', '340000', '341500000000', '341524000000');
INSERT INTO `t_dic_district` VALUES ('10621', '霍山县', null, '六安市', '安徽省', 'T', null, '34150000', '34000000', '34152500', '340000', '341500000000', '341525000000');
INSERT INTO `t_dic_district` VALUES ('10623', '谯城区', null, '亳州市', '安徽省', 'T', null, '34160000', '34000000', '34160200', '340000', '341600000000', '341602000000');
INSERT INTO `t_dic_district` VALUES ('10624', '涡阳县', null, '亳州市', '安徽省', 'T', null, '34160000', '34000000', '34162100', '340000', '341600000000', '341621000000');
INSERT INTO `t_dic_district` VALUES ('10625', '蒙城县', null, '亳州市', '安徽省', 'T', null, '34160000', '34000000', '34162200', '340000', '341600000000', '341622000000');
INSERT INTO `t_dic_district` VALUES ('10626', '利辛县', null, '亳州市', '安徽省', 'T', null, '34160000', '34000000', '34162300', '340000', '341600000000', '341623000000');
INSERT INTO `t_dic_district` VALUES ('10628', '贵池区', null, '池州市', '安徽省', 'T', null, '34170000', '34000000', '34170200', '340000', '341700000000', '341702000000');
INSERT INTO `t_dic_district` VALUES ('10629', '东至县', null, '池州市', '安徽省', 'T', null, '34170000', '34000000', '34172100', '340000', '341700000000', '341721000000');
INSERT INTO `t_dic_district` VALUES ('10630', '石台县', null, '池州市', '安徽省', 'T', null, '34170000', '34000000', '34172200', '340000', '341700000000', '341722000000');
INSERT INTO `t_dic_district` VALUES ('10631', '青阳县', null, '池州市', '安徽省', 'T', null, '34170000', '34000000', '34172300', '340000', '341700000000', '341723000000');
INSERT INTO `t_dic_district` VALUES ('10633', '宣州区', null, '宣城市', '安徽省', 'T', null, '34180000', '34000000', '34180200', '340000', '341800000000', '341802000000');
INSERT INTO `t_dic_district` VALUES ('10634', '郎溪县', null, '宣城市', '安徽省', 'T', null, '34180000', '34000000', '34182100', '340000', '341800000000', '341821000000');
INSERT INTO `t_dic_district` VALUES ('10635', '广德县', null, '宣城市', '安徽省', 'T', null, '34180000', '34000000', '34182200', '340000', '341800000000', '341822000000');
INSERT INTO `t_dic_district` VALUES ('10636', '泾县', null, '宣城市', '安徽省', 'T', null, '34180000', '34000000', '34182300', '340000', '341800000000', '341823000000');
INSERT INTO `t_dic_district` VALUES ('10637', '绩溪县', null, '宣城市', '安徽省', 'T', null, '34180000', '34000000', '34182400', '340000', '341800000000', '341824000000');
INSERT INTO `t_dic_district` VALUES ('10638', '旌德县', null, '宣城市', '安徽省', 'T', null, '34180000', '34000000', '34182500', '340000', '341800000000', '341825000000');
INSERT INTO `t_dic_district` VALUES ('10639', '宁国市', null, '宣城市', '安徽省', 'T', null, '34180000', '34000000', '34188100', '340000', '341800000000', '341881000000');
INSERT INTO `t_dic_district` VALUES ('10640', '市辖区', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35010100', '350000', null, null);
INSERT INTO `t_dic_district` VALUES ('10641', '鼓楼区', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35010200', '350000', '350100000000', '350102000000');
INSERT INTO `t_dic_district` VALUES ('10642', '台江区', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35010300', '350000', '350100000000', '350103000000');
INSERT INTO `t_dic_district` VALUES ('10643', '仓山区', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35010400', '350000', '350100000000', '350104000000');
INSERT INTO `t_dic_district` VALUES ('10644', '马尾区', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35010500', '350000', '350100000000', '350105000000');
INSERT INTO `t_dic_district` VALUES ('10645', '晋安区', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35011100', '350000', '350100000000', '350111000000');
INSERT INTO `t_dic_district` VALUES ('10646', '闽侯县', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35012100', '350000', '350100000000', '350121000000');
INSERT INTO `t_dic_district` VALUES ('10647', '连江县', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35012200', '350000', '350100000000', '350122000000');
INSERT INTO `t_dic_district` VALUES ('10648', '罗源县', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35012300', '350000', '350100000000', '350123000000');
INSERT INTO `t_dic_district` VALUES ('10649', '闽清县', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35012400', '350000', '350100000000', '350124000000');
INSERT INTO `t_dic_district` VALUES ('10650', '永泰县', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35012500', '350000', '350100000000', '350125000000');
INSERT INTO `t_dic_district` VALUES ('10651', '平潭县', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35012800', '350000', '350100000000', '350128000000');
INSERT INTO `t_dic_district` VALUES ('10652', '福清市', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35018100', '350000', '350100000000', '350181000000');
INSERT INTO `t_dic_district` VALUES ('10653', '长乐市', null, '福州市', '福建省', 'T', null, '35010000', '35000000', '35018200', '350000', '350100000000', '350182000000');
INSERT INTO `t_dic_district` VALUES ('10654', '市辖区', null, '厦门市', '福建省', 'T', null, '35020000', '35000000', '35020100', '350000', null, null);
INSERT INTO `t_dic_district` VALUES ('10655', '思明区', null, '厦门市', '福建省', 'T', null, '35020000', '35000000', '35020300', '350000', '350200000000', '350203000000');
INSERT INTO `t_dic_district` VALUES ('10656', '海沧区', null, '厦门市', '福建省', 'T', null, '35020000', '35000000', '35020500', '350000', '350200000000', '350205000000');
INSERT INTO `t_dic_district` VALUES ('10657', '湖里区', null, '厦门市', '福建省', 'T', null, '35020000', '35000000', '35020600', '350000', '350200000000', '350206000000');
INSERT INTO `t_dic_district` VALUES ('10658', '全南县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36072900', '360000', '360700000000', '360729000000');
INSERT INTO `t_dic_district` VALUES ('10659', '宁都县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36073000', '360000', '360700000000', '360730000000');
INSERT INTO `t_dic_district` VALUES ('10660', '于都县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36073100', '360000', '360700000000', '360731000000');
INSERT INTO `t_dic_district` VALUES ('10661', '兴国县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36073200', '360000', '360700000000', '360732000000');
INSERT INTO `t_dic_district` VALUES ('10662', '会昌县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36073300', '360000', '360700000000', '360733000000');
INSERT INTO `t_dic_district` VALUES ('10663', '寻乌县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36073400', '360000', '360700000000', '360734000000');
INSERT INTO `t_dic_district` VALUES ('10664', '石城县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36073500', '360000', '360700000000', '360735000000');
INSERT INTO `t_dic_district` VALUES ('10665', '瑞金市', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36078100', '360000', '360700000000', '360781000000');
INSERT INTO `t_dic_district` VALUES ('10666', '南康区', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36078200', '360000', '360700000000', '360703000000');
INSERT INTO `t_dic_district` VALUES ('10667', '市辖区', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36080100', '360000', null, null);
INSERT INTO `t_dic_district` VALUES ('10668', '吉州区', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36080200', '360000', '360800000000', '360802000000');
INSERT INTO `t_dic_district` VALUES ('10669', '青原区', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36080300', '360000', '360800000000', '360803000000');
INSERT INTO `t_dic_district` VALUES ('10670', '吉安县', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36082100', '360000', '360800000000', '360821000000');
INSERT INTO `t_dic_district` VALUES ('10671', '吉水县', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36082200', '360000', '360800000000', '360822000000');
INSERT INTO `t_dic_district` VALUES ('10672', '峡江县', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36082300', '360000', '360800000000', '360823000000');
INSERT INTO `t_dic_district` VALUES ('10673', '新干县', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36082400', '360000', '360800000000', '360824000000');
INSERT INTO `t_dic_district` VALUES ('10674', '永丰县', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36082500', '360000', '360800000000', '360825000000');
INSERT INTO `t_dic_district` VALUES ('10675', '泰和县', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36082600', '360000', '360800000000', '360826000000');
INSERT INTO `t_dic_district` VALUES ('10676', '遂川县', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36082700', '360000', '360800000000', '360827000000');
INSERT INTO `t_dic_district` VALUES ('10677', '万安县', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36082800', '360000', '360800000000', '360828000000');
INSERT INTO `t_dic_district` VALUES ('10678', '安福县', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36082900', '360000', '360800000000', '360829000000');
INSERT INTO `t_dic_district` VALUES ('10679', '永新县', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36083000', '360000', '360800000000', '360830000000');
INSERT INTO `t_dic_district` VALUES ('10680', '井冈山市', null, '吉安市', '江西省', 'T', null, '36080000', '36000000', '36088100', '360000', '360800000000', '360881000000');
INSERT INTO `t_dic_district` VALUES ('10681', '市辖区', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35050100', '350000', null, null);
INSERT INTO `t_dic_district` VALUES ('10682', '鲤城区', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35050200', '350000', '350500000000', '350502000000');
INSERT INTO `t_dic_district` VALUES ('10683', '丰泽区', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35050300', '350000', '350500000000', '350503000000');
INSERT INTO `t_dic_district` VALUES ('10684', '洛江区', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35050400', '350000', '350500000000', '350504000000');
INSERT INTO `t_dic_district` VALUES ('10685', '泉港区', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35050500', '350000', '350500000000', '350505000000');
INSERT INTO `t_dic_district` VALUES ('10686', '惠安县', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35052100', '350000', '350500000000', '350521000000');
INSERT INTO `t_dic_district` VALUES ('10687', '安溪县', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35052400', '350000', '350500000000', '350524000000');
INSERT INTO `t_dic_district` VALUES ('10688', '永春县', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35052500', '350000', '350500000000', '350525000000');
INSERT INTO `t_dic_district` VALUES ('10689', '德化县', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35052600', '350000', '350500000000', '350526000000');
INSERT INTO `t_dic_district` VALUES ('10690', '金门县', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35052700', '350000', '350500000000', '350527000000');
INSERT INTO `t_dic_district` VALUES ('10691', '石狮市', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35058100', '350000', '350500000000', '350581000000');
INSERT INTO `t_dic_district` VALUES ('10692', '晋江市', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35058200', '350000', '350500000000', '350582000000');
INSERT INTO `t_dic_district` VALUES ('10693', '南安市', null, '泉州市', '福建省', 'T', null, '35050000', '35000000', '35058300', '350000', '350500000000', '350583000000');
INSERT INTO `t_dic_district` VALUES ('10694', '市辖区', null, '漳州市', '福建省', 'T', null, '35060000', '35000000', '35060100', '350000', null, null);
INSERT INTO `t_dic_district` VALUES ('10695', '芗城区', null, '漳州市', '福建省', 'T', null, '35060000', '35000000', '35060200', '350000', '350600000000', '350602000000');
INSERT INTO `t_dic_district` VALUES ('10696', '龙文区', null, '漳州市', '福建省', 'T', null, '35060000', '35000000', '35060300', '350000', '350600000000', '350603000000');
INSERT INTO `t_dic_district` VALUES ('10697', '云霄县', null, '漳州市', '福建省', 'T', null, '35060000', '35000000', '35062200', '350000', '350600000000', '350622000000');
INSERT INTO `t_dic_district` VALUES ('10698', '漳浦县', null, '漳州市', '福建省', 'T', null, '35060000', '35000000', '35062300', '350000', '350600000000', '350623000000');
INSERT INTO `t_dic_district` VALUES ('10699', '诏安县', null, '漳州市', '福建省', 'T', null, '35060000', '35000000', '35062400', '350000', '350600000000', '350624000000');
INSERT INTO `t_dic_district` VALUES ('10700', '长泰县', null, '漳州市', '福建省', 'T', null, '35060000', '35000000', '35062500', '350000', '350600000000', '350625000000');
INSERT INTO `t_dic_district` VALUES ('10701', '东山县', null, '漳州市', '福建省', 'T', null, '35060000', '35000000', '35062600', '350000', '350600000000', '350626000000');
INSERT INTO `t_dic_district` VALUES ('10702', '南靖县', null, '漳州市', '福建省', 'T', null, '35060000', '35000000', '35062700', '350000', '350600000000', '350627000000');
INSERT INTO `t_dic_district` VALUES ('10703', '平和县', null, '漳州市', '福建省', 'T', null, '35060000', '35000000', '35062800', '350000', '350600000000', '350628000000');
INSERT INTO `t_dic_district` VALUES ('10704', '华安县', null, '漳州市', '福建省', 'T', null, '35060000', '35000000', '35062900', '350000', '350600000000', '350629000000');
INSERT INTO `t_dic_district` VALUES ('10705', '龙海市', null, '漳州市', '福建省', 'T', null, '35060000', '35000000', '35068100', '350000', '350600000000', '350681000000');
INSERT INTO `t_dic_district` VALUES ('10706', '市辖区', null, '南平市', '福建省', 'T', null, '35070000', '35000000', '35070100', '350000', null, null);
INSERT INTO `t_dic_district` VALUES ('10707', '延平区', null, '南平市', '福建省', 'T', null, '35070000', '35000000', '35070200', '350000', '350700000000', '350702000000');
INSERT INTO `t_dic_district` VALUES ('10708', '顺昌县', null, '南平市', '福建省', 'T', null, '35070000', '35000000', '35072100', '350000', '350700000000', '350721000000');
INSERT INTO `t_dic_district` VALUES ('10709', '浦城县', null, '南平市', '福建省', 'T', null, '35070000', '35000000', '35072200', '350000', '350700000000', '350722000000');
INSERT INTO `t_dic_district` VALUES ('10710', '光泽县', null, '南平市', '福建省', 'T', null, '35070000', '35000000', '35072300', '350000', '350700000000', '350723000000');
INSERT INTO `t_dic_district` VALUES ('10711', '松溪县', null, '南平市', '福建省', 'T', null, '35070000', '35000000', '35072400', '350000', '350700000000', '350724000000');
INSERT INTO `t_dic_district` VALUES ('10712', '政和县', null, '南平市', '福建省', 'T', null, '35070000', '35000000', '35072500', '350000', '350700000000', '350725000000');
INSERT INTO `t_dic_district` VALUES ('10713', '邵武市', null, '南平市', '福建省', 'T', null, '35070000', '35000000', '35078100', '350000', '350700000000', '350781000000');
INSERT INTO `t_dic_district` VALUES ('10714', '武夷山市', null, '南平市', '福建省', 'T', null, '35070000', '35000000', '35078200', '350000', '350700000000', '350782000000');
INSERT INTO `t_dic_district` VALUES ('10715', '建瓯市', null, '南平市', '福建省', 'T', null, '35070000', '35000000', '35078300', '350000', '350700000000', '350783000000');
INSERT INTO `t_dic_district` VALUES ('10716', '建阳区', null, '南平市', '福建省', 'T', null, '35070000', '35000000', '35078400', '350000', '350700000000', '350703000000');
INSERT INTO `t_dic_district` VALUES ('10717', '市辖区', null, '龙岩市', '福建省', 'T', null, '35080000', '35000000', '35080100', '350000', null, null);
INSERT INTO `t_dic_district` VALUES ('10718', '新罗区', null, '龙岩市', '福建省', 'T', null, '35080000', '35000000', '35080200', '350000', '350800000000', '350802000000');
INSERT INTO `t_dic_district` VALUES ('10719', '长汀县', null, '龙岩市', '福建省', 'T', null, '35080000', '35000000', '35082100', '350000', '350800000000', '350821000000');
INSERT INTO `t_dic_district` VALUES ('10720', '永定县', null, '龙岩市', '福建省', 'T', null, '35080000', '35000000', '35082200', '350000', null, null);
INSERT INTO `t_dic_district` VALUES ('10721', '上杭县', null, '龙岩市', '福建省', 'T', null, '35080000', '35000000', '35082300', '350000', '350800000000', '350823000000');
INSERT INTO `t_dic_district` VALUES ('10722', '武平县', null, '龙岩市', '福建省', 'T', null, '35080000', '35000000', '35082400', '350000', '350800000000', '350824000000');
INSERT INTO `t_dic_district` VALUES ('10723', '连城县', null, '龙岩市', '福建省', 'T', null, '35080000', '35000000', '35082500', '350000', '350800000000', '350825000000');
INSERT INTO `t_dic_district` VALUES ('10724', '历城区', null, '济南市', '山东省', 'T', null, '37010000', '37000000', '37011200', '370000', '370100000000', '370112000000');
INSERT INTO `t_dic_district` VALUES ('10725', '长清区', null, '济南市', '山东省', 'T', null, '37010000', '37000000', '37011300', '370000', '370100000000', '370113000000');
INSERT INTO `t_dic_district` VALUES ('10726', '平阴县', null, '济南市', '山东省', 'T', null, '37010000', '37000000', '37012400', '370000', '370100000000', '370124000000');
INSERT INTO `t_dic_district` VALUES ('10727', '济阳县', null, '济南市', '山东省', 'T', null, '37010000', '37000000', '37012500', '370000', '370100000000', '370125000000');
INSERT INTO `t_dic_district` VALUES ('10728', '商河县', null, '济南市', '山东省', 'T', null, '37010000', '37000000', '37012600', '370000', '370100000000', '370126000000');
INSERT INTO `t_dic_district` VALUES ('10729', '章丘市', null, '济南市', '山东省', 'T', null, '37010000', '37000000', '37018100', '370000', '370100000000', '370181000000');
INSERT INTO `t_dic_district` VALUES ('10730', '市辖区', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37020100', '370000', '371700000000', '371701000000');
INSERT INTO `t_dic_district` VALUES ('10731', '市南区', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37020200', '370000', '370200000000', '370202000000');
INSERT INTO `t_dic_district` VALUES ('10732', '市北区', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37020300', '370000', '370200000000', '370203000000');
INSERT INTO `t_dic_district` VALUES ('10733', '四方区', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37020500', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10734', '黄岛区', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37021100', '370000', '370200000000', '370211000000');
INSERT INTO `t_dic_district` VALUES ('10735', '崂山区', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37021200', '370000', '370200000000', '370212000000');
INSERT INTO `t_dic_district` VALUES ('10736', '李沧区', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37021300', '370000', '370200000000', '370213000000');
INSERT INTO `t_dic_district` VALUES ('10737', '城阳区', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37021400', '370000', '370200000000', '370214000000');
INSERT INTO `t_dic_district` VALUES ('10738', '胶州市', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37028100', '370000', '370200000000', '370281000000');
INSERT INTO `t_dic_district` VALUES ('10739', '即墨市', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37028200', '370000', '370200000000', '370282000000');
INSERT INTO `t_dic_district` VALUES ('10740', '平度市', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37028300', '370000', '370200000000', '370283000000');
INSERT INTO `t_dic_district` VALUES ('10741', '胶南市', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37028400', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10742', '莱西市', null, '青岛市', '山东省', 'T', null, '37020000', '37000000', '37028500', '370000', '370200000000', '370285000000');
INSERT INTO `t_dic_district` VALUES ('10743', '市辖区', null, '淄博市', '山东省', 'T', null, '37030000', '37000000', '37030100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10744', '淄川区', null, '淄博市', '山东省', 'T', null, '37030000', '37000000', '37030200', '370000', '370300000000', '370302000000');
INSERT INTO `t_dic_district` VALUES ('10745', '张店区', null, '淄博市', '山东省', 'T', null, '37030000', '37000000', '37030300', '370000', '370300000000', '370303000000');
INSERT INTO `t_dic_district` VALUES ('10746', '博山区', null, '淄博市', '山东省', 'T', null, '37030000', '37000000', '37030400', '370000', '370300000000', '370304000000');
INSERT INTO `t_dic_district` VALUES ('10747', '市辖区', null, '景德镇市', '江西省', 'T', null, '36020000', '36000000', '36020100', '360000', null, null);
INSERT INTO `t_dic_district` VALUES ('10748', '昌江区', null, '景德镇市', '江西省', 'T', null, '36020000', '36000000', '36020200', '360000', '360200000000', '360202000000');
INSERT INTO `t_dic_district` VALUES ('10749', '珠山区', null, '景德镇市', '江西省', 'T', null, '36020000', '36000000', '36020300', '360000', '360200000000', '360203000000');
INSERT INTO `t_dic_district` VALUES ('10750', '浮梁县', null, '景德镇市', '江西省', 'T', null, '36020000', '36000000', '36022200', '360000', '360200000000', '360222000000');
INSERT INTO `t_dic_district` VALUES ('10751', '乐平市', null, '景德镇市', '江西省', 'T', null, '36020000', '36000000', '36028100', '360000', '360200000000', '360281000000');
INSERT INTO `t_dic_district` VALUES ('10752', '市辖区', null, '萍乡市', '江西省', 'T', null, '36030000', '36000000', '36030100', '360000', null, null);
INSERT INTO `t_dic_district` VALUES ('10753', '安源区', null, '萍乡市', '江西省', 'T', null, '36030000', '36000000', '36030200', '360000', '360300000000', '360302000000');
INSERT INTO `t_dic_district` VALUES ('10754', '湘东区', null, '萍乡市', '江西省', 'T', null, '36030000', '36000000', '36031300', '360000', '360300000000', '360313000000');
INSERT INTO `t_dic_district` VALUES ('10755', '莲花县', null, '萍乡市', '江西省', 'T', null, '36030000', '36000000', '36032100', '360000', '360300000000', '360321000000');
INSERT INTO `t_dic_district` VALUES ('10756', '上栗县', null, '萍乡市', '江西省', 'T', null, '36030000', '36000000', '36032200', '360000', '360300000000', '360322000000');
INSERT INTO `t_dic_district` VALUES ('10757', '芦溪县', null, '萍乡市', '江西省', 'T', null, '36030000', '36000000', '36032300', '360000', '360300000000', '360323000000');
INSERT INTO `t_dic_district` VALUES ('10758', '市辖区', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36040100', '360000', null, null);
INSERT INTO `t_dic_district` VALUES ('10759', '濂溪区', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36040200', '360000', '360400000000', '360402000000');
INSERT INTO `t_dic_district` VALUES ('10760', '浔阳区', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36040300', '360000', '360400000000', '360403000000');
INSERT INTO `t_dic_district` VALUES ('10761', '九江县', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36042100', '360000', '360400000000', '360421000000');
INSERT INTO `t_dic_district` VALUES ('10762', '武宁县', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36042300', '360000', '360400000000', '360423000000');
INSERT INTO `t_dic_district` VALUES ('10763', '修水县', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36042400', '360000', '360400000000', '360424000000');
INSERT INTO `t_dic_district` VALUES ('10764', '永修县', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36042500', '360000', '360400000000', '360425000000');
INSERT INTO `t_dic_district` VALUES ('10765', '德安县', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36042600', '360000', '360400000000', '360426000000');
INSERT INTO `t_dic_district` VALUES ('10766', '星子县', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36042700', '360000', null, null);
INSERT INTO `t_dic_district` VALUES ('10767', '都昌县', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36042800', '360000', '360400000000', '360428000000');
INSERT INTO `t_dic_district` VALUES ('10768', '湖口县', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36042900', '360000', '360400000000', '360429000000');
INSERT INTO `t_dic_district` VALUES ('10769', '彭泽县', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36043000', '360000', '360400000000', '360430000000');
INSERT INTO `t_dic_district` VALUES ('10770', '瑞昌市', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36048100', '360000', '360400000000', '360481000000');
INSERT INTO `t_dic_district` VALUES ('10771', '市辖区', null, '新余市', '江西省', 'T', null, '36050000', '36000000', '36050100', '360000', null, null);
INSERT INTO `t_dic_district` VALUES ('10772', '渝水区', null, '新余市', '江西省', 'T', null, '36050000', '36000000', '36050200', '360000', '360500000000', '360502000000');
INSERT INTO `t_dic_district` VALUES ('10773', '分宜县', null, '新余市', '江西省', 'T', null, '36050000', '36000000', '36052100', '360000', '360500000000', '360521000000');
INSERT INTO `t_dic_district` VALUES ('10774', '市辖区', null, '鹰潭市', '江西省', 'T', null, '36060000', '36000000', '36060100', '360000', null, null);
INSERT INTO `t_dic_district` VALUES ('10775', '月湖区', null, '鹰潭市', '江西省', 'T', null, '36060000', '36000000', '36060200', '360000', '360600000000', '360602000000');
INSERT INTO `t_dic_district` VALUES ('10776', '余江县', null, '鹰潭市', '江西省', 'T', null, '36060000', '36000000', '36062200', '360000', '360600000000', '360622000000');
INSERT INTO `t_dic_district` VALUES ('10777', '贵溪市', null, '鹰潭市', '江西省', 'T', null, '36060000', '36000000', '36068100', '360000', '360600000000', '360681000000');
INSERT INTO `t_dic_district` VALUES ('10778', '市辖区', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36070100', '360000', null, null);
INSERT INTO `t_dic_district` VALUES ('10779', '章贡区', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36070200', '360000', '360700000000', '360702000000');
INSERT INTO `t_dic_district` VALUES ('10780', '赣县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36072100', '360000', '360700000000', '360721000000');
INSERT INTO `t_dic_district` VALUES ('10781', '信丰县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36072200', '360000', '360700000000', '360722000000');
INSERT INTO `t_dic_district` VALUES ('10782', '大余县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36072300', '360000', '360700000000', '360723000000');
INSERT INTO `t_dic_district` VALUES ('10783', '上犹县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36072400', '360000', '360700000000', '360724000000');
INSERT INTO `t_dic_district` VALUES ('10784', '崇义县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36072500', '360000', '360700000000', '360725000000');
INSERT INTO `t_dic_district` VALUES ('10785', '安远县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36072600', '360000', '360700000000', '360726000000');
INSERT INTO `t_dic_district` VALUES ('10786', '龙南县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36072700', '360000', '360700000000', '360727000000');
INSERT INTO `t_dic_district` VALUES ('10787', '定南县', null, '赣州市', '江西省', 'T', null, '36070000', '36000000', '36072800', '360000', '360700000000', '360728000000');
INSERT INTO `t_dic_district` VALUES ('10788', '高密市', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37078500', '370000', '370700000000', '370785000000');
INSERT INTO `t_dic_district` VALUES ('10789', '昌邑市', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37078600', '370000', '370700000000', '370786000000');
INSERT INTO `t_dic_district` VALUES ('10790', '市辖区', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37080100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10791', '市中区', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37080200', '370000', '370400000000', '370402000000');
INSERT INTO `t_dic_district` VALUES ('10792', '任城区', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37081100', '370000', '370800000000', '370811000000');
INSERT INTO `t_dic_district` VALUES ('10793', '微山县', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37082600', '370000', '370800000000', '370826000000');
INSERT INTO `t_dic_district` VALUES ('10794', '鱼台县', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37082700', '370000', '370800000000', '370827000000');
INSERT INTO `t_dic_district` VALUES ('10795', '金乡县', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37082800', '370000', '370800000000', '370828000000');
INSERT INTO `t_dic_district` VALUES ('10796', '嘉祥县', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37082900', '370000', '370800000000', '370829000000');
INSERT INTO `t_dic_district` VALUES ('10797', '汶上县', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37083000', '370000', '370800000000', '370830000000');
INSERT INTO `t_dic_district` VALUES ('10798', '泗水县', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37083100', '370000', '370800000000', '370831000000');
INSERT INTO `t_dic_district` VALUES ('10799', '梁山县', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37083200', '370000', '370800000000', '370832000000');
INSERT INTO `t_dic_district` VALUES ('10800', '曲阜市', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37088100', '370000', '370800000000', '370881000000');
INSERT INTO `t_dic_district` VALUES ('10801', '兖州区', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37088200', '370000', '370800000000', '370812000000');
INSERT INTO `t_dic_district` VALUES ('10802', '邹城市', null, '济宁市', '山东省', 'T', null, '37080000', '37000000', '37088300', '370000', '370800000000', '370883000000');
INSERT INTO `t_dic_district` VALUES ('10803', '市辖区', null, '泰安市', '山东省', 'T', null, '37090000', '37000000', '37090100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10804', '泰山区', null, '泰安市', '山东省', 'T', null, '37090000', '37000000', '37090200', '370000', '370900000000', '370902000000');
INSERT INTO `t_dic_district` VALUES ('10805', '岱岳区', null, '泰安市', '山东省', 'T', null, '37090000', '37000000', '37090300', '370000', '370900000000', '370911000000');
INSERT INTO `t_dic_district` VALUES ('10806', '宁阳县', null, '泰安市', '山东省', 'T', null, '37090000', '37000000', '37092100', '370000', '370900000000', '370921000000');
INSERT INTO `t_dic_district` VALUES ('10807', '东平县', null, '泰安市', '山东省', 'T', null, '37090000', '37000000', '37092300', '370000', '370900000000', '370923000000');
INSERT INTO `t_dic_district` VALUES ('10808', '新泰市', null, '泰安市', '山东省', 'T', null, '37090000', '37000000', '37098200', '370000', '370900000000', '370982000000');
INSERT INTO `t_dic_district` VALUES ('10809', '肥城市', null, '泰安市', '山东省', 'T', null, '37090000', '37000000', '37098300', '370000', '370900000000', '370983000000');
INSERT INTO `t_dic_district` VALUES ('10810', '市辖区', null, '宜春市', '江西省', 'T', null, '36090000', '36000000', '36090100', '360000', null, null);
INSERT INTO `t_dic_district` VALUES ('10811', '袁州区', null, '宜春市', '江西省', 'T', null, '36090000', '36000000', '36090200', '360000', '360900000000', '360902000000');
INSERT INTO `t_dic_district` VALUES ('10812', '奉新县', null, '宜春市', '江西省', 'T', null, '36090000', '36000000', '36092100', '360000', '360900000000', '360921000000');
INSERT INTO `t_dic_district` VALUES ('10813', '万载县', null, '宜春市', '江西省', 'T', null, '36090000', '36000000', '36092200', '360000', '360900000000', '360922000000');
INSERT INTO `t_dic_district` VALUES ('10814', '上高县', null, '宜春市', '江西省', 'T', null, '36090000', '36000000', '36092300', '360000', '360900000000', '360923000000');
INSERT INTO `t_dic_district` VALUES ('10815', '宜丰县', null, '宜春市', '江西省', 'T', null, '36090000', '36000000', '36092400', '360000', '360900000000', '360924000000');
INSERT INTO `t_dic_district` VALUES ('10816', '靖安县', null, '宜春市', '江西省', 'T', null, '36090000', '36000000', '36092500', '360000', '360900000000', '360925000000');
INSERT INTO `t_dic_district` VALUES ('10817', '铜鼓县', null, '宜春市', '江西省', 'T', null, '36090000', '36000000', '36092600', '360000', '360900000000', '360926000000');
INSERT INTO `t_dic_district` VALUES ('10818', '丰城市', null, '宜春市', '江西省', 'T', null, '36090000', '36000000', '36098100', '360000', '360900000000', '360981000000');
INSERT INTO `t_dic_district` VALUES ('10819', '樟树市', null, '宜春市', '江西省', 'T', null, '36090000', '36000000', '36098200', '360000', '360900000000', '360982000000');
INSERT INTO `t_dic_district` VALUES ('10820', '高安市', null, '宜春市', '江西省', 'T', null, '36090000', '36000000', '36098300', '360000', '360900000000', '360983000000');
INSERT INTO `t_dic_district` VALUES ('10821', '市辖区', null, '抚州市', '江西省', 'T', null, '36100000', '36000000', '36100100', '360000', null, null);
INSERT INTO `t_dic_district` VALUES ('10822', '临川区', null, '抚州市', '江西省', 'T', null, '36100000', '36000000', '36100200', '360000', '361000000000', '361002000000');
INSERT INTO `t_dic_district` VALUES ('10823', '南城县', null, '抚州市', '江西省', 'T', null, '36100000', '36000000', '36102100', '360000', '361000000000', '361021000000');
INSERT INTO `t_dic_district` VALUES ('10824', '黎川县', null, '抚州市', '江西省', 'T', null, '36100000', '36000000', '36102200', '360000', '361000000000', '361022000000');
INSERT INTO `t_dic_district` VALUES ('10825', '南丰县', null, '抚州市', '江西省', 'T', null, '36100000', '36000000', '36102300', '360000', '361000000000', '361023000000');
INSERT INTO `t_dic_district` VALUES ('10826', '崇仁县', null, '抚州市', '江西省', 'T', null, '36100000', '36000000', '36102400', '360000', '361000000000', '361024000000');
INSERT INTO `t_dic_district` VALUES ('10827', '乐安县', null, '抚州市', '江西省', 'T', null, '36100000', '36000000', '36102500', '360000', '361000000000', '361025000000');
INSERT INTO `t_dic_district` VALUES ('10828', '宜黄县', null, '抚州市', '江西省', 'T', null, '36100000', '36000000', '36102600', '360000', '361000000000', '361026000000');
INSERT INTO `t_dic_district` VALUES ('10829', '金溪县', null, '抚州市', '江西省', 'T', null, '36100000', '36000000', '36102700', '360000', '361000000000', '361027000000');
INSERT INTO `t_dic_district` VALUES ('10830', '资溪县', null, '抚州市', '江西省', 'T', null, '36100000', '36000000', '36102800', '360000', '361000000000', '361028000000');
INSERT INTO `t_dic_district` VALUES ('10831', '东乡县', null, '抚州市', '江西省', 'T', null, '36100000', '36000000', '36102900', '360000', '361000000000', '361029000000');
INSERT INTO `t_dic_district` VALUES ('10832', '广昌县', null, '抚州市', '江西省', 'T', null, '36100000', '36000000', '36103000', '360000', '361000000000', '361030000000');
INSERT INTO `t_dic_district` VALUES ('10833', '市辖区', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36110100', '360000', null, null);
INSERT INTO `t_dic_district` VALUES ('10834', '信州区', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36110200', '360000', '361100000000', '361102000000');
INSERT INTO `t_dic_district` VALUES ('10835', '上饶县', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36112100', '360000', '361100000000', '361121000000');
INSERT INTO `t_dic_district` VALUES ('10836', '广丰区', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36112200', '360000', '361100000000', '361103000000');
INSERT INTO `t_dic_district` VALUES ('10837', '玉山县', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36112300', '360000', '361100000000', '361123000000');
INSERT INTO `t_dic_district` VALUES ('10838', '铅山县', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36112400', '360000', '361100000000', '361124000000');
INSERT INTO `t_dic_district` VALUES ('10839', '横峰县', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36112500', '360000', '361100000000', '361125000000');
INSERT INTO `t_dic_district` VALUES ('10840', '弋阳县', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36112600', '360000', '361100000000', '361126000000');
INSERT INTO `t_dic_district` VALUES ('10841', '余干县', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36112700', '360000', '361100000000', '361127000000');
INSERT INTO `t_dic_district` VALUES ('10842', '鄱阳县', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36112800', '360000', '361100000000', '361128000000');
INSERT INTO `t_dic_district` VALUES ('10843', '万年县', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36112900', '360000', '361100000000', '361129000000');
INSERT INTO `t_dic_district` VALUES ('10844', '婺源县', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36113000', '360000', '361100000000', '361130000000');
INSERT INTO `t_dic_district` VALUES ('10845', '德兴市', null, '上饶市', '江西省', 'T', null, '36110000', '36000000', '36118100', '360000', '361100000000', '361181000000');
INSERT INTO `t_dic_district` VALUES ('10846', '市辖区', null, '济南市', '山东省', 'T', null, '37010000', '37000000', '37010100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10847', '历下区', null, '济南市', '山东省', 'T', null, '37010000', '37000000', '37010200', '370000', '370100000000', '370102000000');
INSERT INTO `t_dic_district` VALUES ('10848', '市中区', null, '济南市', '山东省', 'T', null, '37010000', '37000000', '37010300', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10849', '槐荫区', null, '济南市', '山东省', 'T', null, '37010000', '37000000', '37010400', '370000', '370100000000', '370104000000');
INSERT INTO `t_dic_district` VALUES ('10850', '天桥区', null, '济南市', '山东省', 'T', null, '37010000', '37000000', '37010500', '370000', '370100000000', '370105000000');
INSERT INTO `t_dic_district` VALUES ('10851', '茌平县', null, '聊城市', '山东省', 'T', null, '37150000', '37000000', '37152300', '370000', '371500000000', '371523000000');
INSERT INTO `t_dic_district` VALUES ('10852', '东阿县', null, '聊城市', '山东省', 'T', null, '37150000', '37000000', '37152400', '370000', '371500000000', '371524000000');
INSERT INTO `t_dic_district` VALUES ('10853', '冠县', null, '聊城市', '山东省', 'T', null, '37150000', '37000000', '37152500', '370000', '371500000000', '371525000000');
INSERT INTO `t_dic_district` VALUES ('10854', '高唐县', null, '聊城市', '山东省', 'T', null, '37150000', '37000000', '37152600', '370000', '371500000000', '371526000000');
INSERT INTO `t_dic_district` VALUES ('10855', '临清市', null, '聊城市', '山东省', 'T', null, '37150000', '37000000', '37158100', '370000', '371500000000', '371581000000');
INSERT INTO `t_dic_district` VALUES ('10856', '市辖区', null, '滨州市', '山东省', 'T', null, '37160000', '37000000', '37160100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10857', '滨城区', null, '滨州市', '山东省', 'T', null, '37160000', '37000000', '37160200', '370000', '371600000000', '371602000000');
INSERT INTO `t_dic_district` VALUES ('10858', '惠民县', null, '滨州市', '山东省', 'T', null, '37160000', '37000000', '37162100', '370000', '371600000000', '371621000000');
INSERT INTO `t_dic_district` VALUES ('10859', '阳信县', null, '滨州市', '山东省', 'T', null, '37160000', '37000000', '37162200', '370000', '371600000000', '371622000000');
INSERT INTO `t_dic_district` VALUES ('10860', '无棣县', null, '滨州市', '山东省', 'T', null, '37160000', '37000000', '37162300', '370000', '371600000000', '371623000000');
INSERT INTO `t_dic_district` VALUES ('10861', '沾化区', null, '滨州市', '山东省', 'T', null, '37160000', '37000000', '37162400', '370000', '371600000000', '371603000000');
INSERT INTO `t_dic_district` VALUES ('10862', '博兴县', null, '滨州市', '山东省', 'T', null, '37160000', '37000000', '37162500', '370000', '371600000000', '371625000000');
INSERT INTO `t_dic_district` VALUES ('10863', '邹平县', null, '滨州市', '山东省', 'T', null, '37160000', '37000000', '37162600', '370000', '371600000000', '371626000000');
INSERT INTO `t_dic_district` VALUES ('10864', '市辖区', null, '荷泽市', '山东省', 'T', null, '37170000', '37000000', '37170100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10865', '牡丹区', null, '荷泽市', '山东省', 'T', null, '37170000', '37000000', '37170200', '370000', '371700000000', '371702000000');
INSERT INTO `t_dic_district` VALUES ('10866', '曹县', null, '荷泽市', '山东省', 'T', null, '37170000', '37000000', '37172100', '370000', '371700000000', '371721000000');
INSERT INTO `t_dic_district` VALUES ('10867', '单县', null, '荷泽市', '山东省', 'T', null, '37170000', '37000000', '37172200', '370000', '371700000000', '371722000000');
INSERT INTO `t_dic_district` VALUES ('10868', '成武县', null, '荷泽市', '山东省', 'T', null, '37170000', '37000000', '37172300', '370000', '371700000000', '371723000000');
INSERT INTO `t_dic_district` VALUES ('10869', '巨野县', null, '荷泽市', '山东省', 'T', null, '37170000', '37000000', '37172400', '370000', '371700000000', '371724000000');
INSERT INTO `t_dic_district` VALUES ('10870', '郓城县', null, '荷泽市', '山东省', 'T', null, '37170000', '37000000', '37172500', '370000', '371700000000', '371725000000');
INSERT INTO `t_dic_district` VALUES ('10871', '鄄城县', null, '荷泽市', '山东省', 'T', null, '37170000', '37000000', '37172600', '370000', '371700000000', '371726000000');
INSERT INTO `t_dic_district` VALUES ('10872', '定陶区', null, '荷泽市', '山东省', 'T', null, '37170000', '37000000', '37172700', '370000', '371700000000', '371703000000');
INSERT INTO `t_dic_district` VALUES ('10873', '东明县', null, '荷泽市', '山东省', 'T', null, '37170000', '37000000', '37172800', '370000', '371700000000', '371728000000');
INSERT INTO `t_dic_district` VALUES ('10874', '临淄区', null, '淄博市', '山东省', 'T', null, '37030000', '37000000', '37030500', '370000', '370300000000', '370305000000');
INSERT INTO `t_dic_district` VALUES ('10875', '周村区', null, '淄博市', '山东省', 'T', null, '37030000', '37000000', '37030600', '370000', '370300000000', '370306000000');
INSERT INTO `t_dic_district` VALUES ('10876', '桓台县', null, '淄博市', '山东省', 'T', null, '37030000', '37000000', '37032100', '370000', '370300000000', '370321000000');
INSERT INTO `t_dic_district` VALUES ('10877', '高青县', null, '淄博市', '山东省', 'T', null, '37030000', '37000000', '37032200', '370000', '370300000000', '370322000000');
INSERT INTO `t_dic_district` VALUES ('10878', '沂源县', null, '淄博市', '山东省', 'T', null, '37030000', '37000000', '37032300', '370000', '370300000000', '370323000000');
INSERT INTO `t_dic_district` VALUES ('10879', '市辖区', null, '枣庄市', '山东省', 'T', null, '37040000', '37000000', '37040100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10880', '市中区', null, '枣庄市', '山东省', 'T', null, '37040000', '37000000', '37040200', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10881', '薛城区', null, '枣庄市', '山东省', 'T', null, '37040000', '37000000', '37040300', '370000', '370400000000', '370403000000');
INSERT INTO `t_dic_district` VALUES ('10882', '峄城区', null, '枣庄市', '山东省', 'T', null, '37040000', '37000000', '37040400', '370000', '370400000000', '370404000000');
INSERT INTO `t_dic_district` VALUES ('10883', '台儿庄区', null, '枣庄市', '山东省', 'T', null, '37040000', '37000000', '37040500', '370000', '370400000000', '370405000000');
INSERT INTO `t_dic_district` VALUES ('10884', '山亭区', null, '枣庄市', '山东省', 'T', null, '37040000', '37000000', '37040600', '370000', '370400000000', '370406000000');
INSERT INTO `t_dic_district` VALUES ('10885', '滕州市', null, '枣庄市', '山东省', 'T', null, '37040000', '37000000', '37048100', '370000', '370400000000', '370481000000');
INSERT INTO `t_dic_district` VALUES ('10886', '市辖区', null, '东营市', '山东省', 'T', null, '37050000', '37000000', '37050100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10887', '东营区', null, '东营市', '山东省', 'T', null, '37050000', '37000000', '37050200', '370000', '370500000000', '370502000000');
INSERT INTO `t_dic_district` VALUES ('10888', '河口区', null, '东营市', '山东省', 'T', null, '37050000', '37000000', '37050300', '370000', '370500000000', '370503000000');
INSERT INTO `t_dic_district` VALUES ('10889', '垦利区', null, '东营市', '山东省', 'T', null, '37050000', '37000000', '37052100', '370000', '370500000000', '370505000000');
INSERT INTO `t_dic_district` VALUES ('10890', '利津县', null, '东营市', '山东省', 'T', null, '37050000', '37000000', '37052200', '370000', '370500000000', '370522000000');
INSERT INTO `t_dic_district` VALUES ('10891', '广饶县', null, '东营市', '山东省', 'T', null, '37050000', '37000000', '37052300', '370000', '370500000000', '370523000000');
INSERT INTO `t_dic_district` VALUES ('10892', '市辖区', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37060100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10893', '芝罘区', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37060200', '370000', '370600000000', '370602000000');
INSERT INTO `t_dic_district` VALUES ('10894', '福山区', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37061100', '370000', '370600000000', '370611000000');
INSERT INTO `t_dic_district` VALUES ('10895', '牟平区', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37061200', '370000', '370600000000', '370612000000');
INSERT INTO `t_dic_district` VALUES ('10896', '莱山区', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37061300', '370000', '370600000000', '370613000000');
INSERT INTO `t_dic_district` VALUES ('10897', '长岛县', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37063400', '370000', '370600000000', '370634000000');
INSERT INTO `t_dic_district` VALUES ('10898', '龙口市', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37068100', '370000', '370600000000', '370681000000');
INSERT INTO `t_dic_district` VALUES ('10899', '莱阳市', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37068200', '370000', '370600000000', '370682000000');
INSERT INTO `t_dic_district` VALUES ('10900', '莱州市', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37068300', '370000', '370600000000', '370683000000');
INSERT INTO `t_dic_district` VALUES ('10901', '蓬莱市', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37068400', '370000', '370600000000', '370684000000');
INSERT INTO `t_dic_district` VALUES ('10902', '招远市', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37068500', '370000', '370600000000', '370685000000');
INSERT INTO `t_dic_district` VALUES ('10903', '栖霞市', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37068600', '370000', '370600000000', '370686000000');
INSERT INTO `t_dic_district` VALUES ('10904', '海阳市', null, '烟台市', '山东省', 'T', null, '37060000', '37000000', '37068700', '370000', '370600000000', '370687000000');
INSERT INTO `t_dic_district` VALUES ('10905', '市辖区', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37070100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10906', '潍城区', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37070200', '370000', '370700000000', '370702000000');
INSERT INTO `t_dic_district` VALUES ('10907', '寒亭区', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37070300', '370000', '370700000000', '370703000000');
INSERT INTO `t_dic_district` VALUES ('10908', '坊子区', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37070400', '370000', '370700000000', '370704000000');
INSERT INTO `t_dic_district` VALUES ('10909', '奎文区', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37070500', '370000', '370700000000', '370705000000');
INSERT INTO `t_dic_district` VALUES ('10910', '临朐县', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37072400', '370000', '370700000000', '370724000000');
INSERT INTO `t_dic_district` VALUES ('10911', '昌乐县', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37072500', '370000', '370700000000', '370725000000');
INSERT INTO `t_dic_district` VALUES ('10912', '青州市', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37078100', '370000', '370700000000', '370781000000');
INSERT INTO `t_dic_district` VALUES ('10913', '诸城市', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37078200', '370000', '370700000000', '370782000000');
INSERT INTO `t_dic_district` VALUES ('10914', '寿光市', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37078300', '370000', '370700000000', '370783000000');
INSERT INTO `t_dic_district` VALUES ('10915', '安丘市', null, '潍坊市', '山东省', 'T', null, '37070000', '37000000', '37078400', '370000', '370700000000', '370784000000');
INSERT INTO `t_dic_district` VALUES ('10916', '新华区', null, '平顶山市', '河南省', 'T', null, '41040000', '41000000', '41040200', '410000', '410400000000', '410402000000');
INSERT INTO `t_dic_district` VALUES ('10917', '卫东区', null, '平顶山市', '河南省', 'T', null, '41040000', '41000000', '41040300', '410000', '410400000000', '410403000000');
INSERT INTO `t_dic_district` VALUES ('10918', '石龙区', null, '平顶山市', '河南省', 'T', null, '41040000', '41000000', '41040400', '410000', '410400000000', '410404000000');
INSERT INTO `t_dic_district` VALUES ('10919', '湛河区', null, '平顶山市', '河南省', 'T', null, '41040000', '41000000', '41041100', '410000', '410400000000', '410411000000');
INSERT INTO `t_dic_district` VALUES ('10920', '宝丰县', null, '平顶山市', '河南省', 'T', null, '41040000', '41000000', '41042100', '410000', '410400000000', '410421000000');
INSERT INTO `t_dic_district` VALUES ('10921', '叶县', null, '平顶山市', '河南省', 'T', null, '41040000', '41000000', '41042200', '410000', '410400000000', '410422000000');
INSERT INTO `t_dic_district` VALUES ('10922', '鲁山县', null, '平顶山市', '河南省', 'T', null, '41040000', '41000000', '41042300', '410000', '410400000000', '410423000000');
INSERT INTO `t_dic_district` VALUES ('10923', '郏县', null, '平顶山市', '河南省', 'T', null, '41040000', '41000000', '41042500', '410000', '410400000000', '410425000000');
INSERT INTO `t_dic_district` VALUES ('10924', '舞钢市', null, '平顶山市', '河南省', 'T', null, '41040000', '41000000', '41048100', '410000', '410400000000', '410481000000');
INSERT INTO `t_dic_district` VALUES ('10925', '汝州市', null, '平顶山市', '河南省', 'T', null, '41040000', '41000000', '41048200', '410000', '410400000000', '410482000000');
INSERT INTO `t_dic_district` VALUES ('10926', '市辖区', null, '安阳市', '河南省', 'T', null, '41050000', '41000000', '41050100', '410000', '411700000000', '411701000000');
INSERT INTO `t_dic_district` VALUES ('10927', '文峰区', null, '安阳市', '河南省', 'T', null, '41050000', '41000000', '41050200', '410000', '410500000000', '410502000000');
INSERT INTO `t_dic_district` VALUES ('10928', '北关区', null, '安阳市', '河南省', 'T', null, '41050000', '41000000', '41050300', '410000', '410500000000', '410503000000');
INSERT INTO `t_dic_district` VALUES ('10929', '殷都区', null, '安阳市', '河南省', 'T', null, '41050000', '41000000', '41050500', '410000', '410500000000', '410505000000');
INSERT INTO `t_dic_district` VALUES ('10930', '龙安区', null, '安阳市', '河南省', 'T', null, '41050000', '41000000', '41050600', '410000', '410500000000', '410506000000');
INSERT INTO `t_dic_district` VALUES ('10931', '安阳县', null, '安阳市', '河南省', 'T', null, '41050000', '41000000', '41052200', '410000', '410500000000', '410522000000');
INSERT INTO `t_dic_district` VALUES ('10932', '汤阴县', null, '安阳市', '河南省', 'T', null, '41050000', '41000000', '41052300', '410000', '410500000000', '410523000000');
INSERT INTO `t_dic_district` VALUES ('10933', '滑县', null, '安阳市', '河南省', 'T', null, '41050000', '41000000', '41052600', '410000', '410500000000', '410526000000');
INSERT INTO `t_dic_district` VALUES ('10934', '内黄县', null, '安阳市', '河南省', 'T', null, '41050000', '41000000', '41052700', '410000', '410500000000', '410527000000');
INSERT INTO `t_dic_district` VALUES ('10935', '林州市', null, '安阳市', '河南省', 'T', null, '41050000', '41000000', '41058100', '410000', '410500000000', '410581000000');
INSERT INTO `t_dic_district` VALUES ('10936', '市辖区', null, '鹤壁市', '河南省', 'T', null, '41060000', '41000000', '41060100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('10937', '鹤山区', null, '鹤壁市', '河南省', 'T', null, '41060000', '41000000', '41060200', '410000', '410600000000', '410602000000');
INSERT INTO `t_dic_district` VALUES ('10938', '山城区', null, '鹤壁市', '河南省', 'T', null, '41060000', '41000000', '41060300', '410000', '410600000000', '410603000000');
INSERT INTO `t_dic_district` VALUES ('10939', '市辖区', null, '威海市', '山东省', 'T', null, '37100000', '37000000', '37100100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10940', '环翠区', null, '威海市', '山东省', 'T', null, '37100000', '37000000', '37100200', '370000', '371000000000', '371002000000');
INSERT INTO `t_dic_district` VALUES ('10941', '文登区', null, '威海市', '山东省', 'T', null, '37100000', '37000000', '37108100', '370000', '371000000000', '371003000000');
INSERT INTO `t_dic_district` VALUES ('10942', '荣成市', null, '威海市', '山东省', 'T', null, '37100000', '37000000', '37108200', '370000', '371000000000', '371082000000');
INSERT INTO `t_dic_district` VALUES ('10943', '乳山市', null, '威海市', '山东省', 'T', null, '37100000', '37000000', '37108300', '370000', '371000000000', '371083000000');
INSERT INTO `t_dic_district` VALUES ('10944', '市辖区', null, '日照市', '山东省', 'T', null, '37110000', '37000000', '37110100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10945', '东港区', null, '日照市', '山东省', 'T', null, '37110000', '37000000', '37110200', '370000', '371100000000', '371102000000');
INSERT INTO `t_dic_district` VALUES ('10946', '五莲县', null, '日照市', '山东省', 'T', null, '37110000', '37000000', '37112100', '370000', '371100000000', '371121000000');
INSERT INTO `t_dic_district` VALUES ('10947', '莒县', null, '日照市', '山东省', 'T', null, '37110000', '37000000', '37112200', '370000', '371100000000', '371122000000');
INSERT INTO `t_dic_district` VALUES ('10948', '市辖区', null, '莱芜市', '山东省', 'T', null, '37120000', '37000000', '37120100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10949', '莱城区', null, '莱芜市', '山东省', 'T', null, '37120000', '37000000', '37120200', '370000', '371200000000', '371202000000');
INSERT INTO `t_dic_district` VALUES ('10950', '钢城区', null, '莱芜市', '山东省', 'T', null, '37120000', '37000000', '37120300', '370000', '371200000000', '371203000000');
INSERT INTO `t_dic_district` VALUES ('10951', '市辖区', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37130100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10952', '兰山区', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37130200', '370000', '371300000000', '371302000000');
INSERT INTO `t_dic_district` VALUES ('10953', '罗庄区', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37131100', '370000', '371300000000', '371311000000');
INSERT INTO `t_dic_district` VALUES ('10954', '河东区', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37131200', '370000', '371300000000', '371312000000');
INSERT INTO `t_dic_district` VALUES ('10955', '沂南县', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37132100', '370000', '371300000000', '371321000000');
INSERT INTO `t_dic_district` VALUES ('10956', '郯城县', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37132200', '370000', '371300000000', '371322000000');
INSERT INTO `t_dic_district` VALUES ('10957', '沂水县', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37132300', '370000', '371300000000', '371323000000');
INSERT INTO `t_dic_district` VALUES ('10958', '兰陵县', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37132400', '370000', '371300000000', '371324000000');
INSERT INTO `t_dic_district` VALUES ('10959', '费县', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37132500', '370000', '371300000000', '371325000000');
INSERT INTO `t_dic_district` VALUES ('10960', '平邑县', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37132600', '370000', '371300000000', '371326000000');
INSERT INTO `t_dic_district` VALUES ('10961', '莒南县', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37132700', '370000', '371300000000', '371327000000');
INSERT INTO `t_dic_district` VALUES ('10962', '蒙阴县', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37132800', '370000', '371300000000', '371328000000');
INSERT INTO `t_dic_district` VALUES ('10963', '临沭县', null, '临沂市', '山东省', 'T', null, '37130000', '37000000', '37132900', '370000', '371300000000', '371329000000');
INSERT INTO `t_dic_district` VALUES ('10964', '市辖区', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37140100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10965', '德城区', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37140200', '370000', '371400000000', '371402000000');
INSERT INTO `t_dic_district` VALUES ('10966', '陵县', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37142100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10967', '宁津县', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37142200', '370000', '371400000000', '371422000000');
INSERT INTO `t_dic_district` VALUES ('10968', '庆云县', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37142300', '370000', '371400000000', '371423000000');
INSERT INTO `t_dic_district` VALUES ('10969', '临邑县', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37142400', '370000', '371400000000', '371424000000');
INSERT INTO `t_dic_district` VALUES ('10970', '齐河县', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37142500', '370000', '371400000000', '371425000000');
INSERT INTO `t_dic_district` VALUES ('10971', '平原县', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37142600', '370000', '371400000000', '371426000000');
INSERT INTO `t_dic_district` VALUES ('10972', '夏津县', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37142700', '370000', '371400000000', '371427000000');
INSERT INTO `t_dic_district` VALUES ('10973', '武城县', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37142800', '370000', '371400000000', '371428000000');
INSERT INTO `t_dic_district` VALUES ('10974', '乐陵市', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37148100', '370000', '371400000000', '371481000000');
INSERT INTO `t_dic_district` VALUES ('10975', '禹城市', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37148200', '370000', '371400000000', '371482000000');
INSERT INTO `t_dic_district` VALUES ('10976', '市辖区', null, '聊城市', '山东省', 'T', null, '37150000', '37000000', '37150100', '370000', null, null);
INSERT INTO `t_dic_district` VALUES ('10977', '东昌府区', null, '聊城市', '山东省', 'T', null, '37150000', '37000000', '37150200', '370000', '371500000000', '371502000000');
INSERT INTO `t_dic_district` VALUES ('10978', '阳谷县', null, '聊城市', '山东省', 'T', null, '37150000', '37000000', '37152100', '370000', '371500000000', '371521000000');
INSERT INTO `t_dic_district` VALUES ('10979', '莘县', null, '聊城市', '山东省', 'T', null, '37150000', '37000000', '37152200', '370000', '371500000000', '371522000000');
INSERT INTO `t_dic_district` VALUES ('10980', '源汇区', null, '漯河市', '河南省', 'T', null, '41110000', '41000000', '41110200', '410000', '411100000000', '411102000000');
INSERT INTO `t_dic_district` VALUES ('10981', '舞阳县', null, '漯河市', '河南省', 'T', null, '41110000', '41000000', '41112100', '410000', '411100000000', '411121000000');
INSERT INTO `t_dic_district` VALUES ('10982', '临颍县', null, '漯河市', '河南省', 'T', null, '41110000', '41000000', '41112200', '410000', '411100000000', '411122000000');
INSERT INTO `t_dic_district` VALUES ('10983', '郾城区', null, '漯河市', '河南省', 'T', null, '41110000', '41000000', '41112300', '410000', '411100000000', '411103000000');
INSERT INTO `t_dic_district` VALUES ('10984', '市辖区', null, '三门峡市', '河南省', 'T', null, '41120000', '41000000', '41120100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('10985', '湖滨区', null, '三门峡市', '河南省', 'T', null, '41120000', '41000000', '41120200', '410000', '411200000000', '411202000000');
INSERT INTO `t_dic_district` VALUES ('10986', '渑池县', null, '三门峡市', '河南省', 'T', null, '41120000', '41000000', '41122100', '410000', '411200000000', '411221000000');
INSERT INTO `t_dic_district` VALUES ('10987', '陕县', null, '三门峡市', '河南省', 'T', null, '41120000', '41000000', '41122200', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('10988', '卢氏县', null, '三门峡市', '河南省', 'T', null, '41120000', '41000000', '41122400', '410000', '411200000000', '411224000000');
INSERT INTO `t_dic_district` VALUES ('10989', '义马市', null, '三门峡市', '河南省', 'T', null, '41120000', '41000000', '41128100', '410000', '411200000000', '411281000000');
INSERT INTO `t_dic_district` VALUES ('10990', '灵宝市', null, '三门峡市', '河南省', 'T', null, '41120000', '41000000', '41128200', '410000', '411200000000', '411282000000');
INSERT INTO `t_dic_district` VALUES ('10991', '市辖区', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41130100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('10992', '宛城区', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41130200', '410000', '411300000000', '411302000000');
INSERT INTO `t_dic_district` VALUES ('10993', '卧龙区', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41130300', '410000', '411300000000', '411303000000');
INSERT INTO `t_dic_district` VALUES ('10994', '南召县', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41132100', '410000', '411300000000', '411321000000');
INSERT INTO `t_dic_district` VALUES ('10995', '方城县', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41132200', '410000', '411300000000', '411322000000');
INSERT INTO `t_dic_district` VALUES ('10996', '西峡县', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41132300', '410000', '411300000000', '411323000000');
INSERT INTO `t_dic_district` VALUES ('10997', '镇平县', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41132400', '410000', '411300000000', '411324000000');
INSERT INTO `t_dic_district` VALUES ('10998', '内乡县', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41132500', '410000', '411300000000', '411325000000');
INSERT INTO `t_dic_district` VALUES ('10999', '淅川县', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41132600', '410000', '411300000000', '411326000000');
INSERT INTO `t_dic_district` VALUES ('11000', '社旗县', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41132700', '410000', '411300000000', '411327000000');
INSERT INTO `t_dic_district` VALUES ('11001', '唐河县', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41132800', '410000', '411300000000', '411328000000');
INSERT INTO `t_dic_district` VALUES ('11002', '市辖区', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41010100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11003', '中原区', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41010200', '410000', '410100000000', '410102000000');
INSERT INTO `t_dic_district` VALUES ('11004', '二七区', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41010300', '410000', '410100000000', '410103000000');
INSERT INTO `t_dic_district` VALUES ('11005', '管城回族区', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41010400', '410000', '410100000000', '410104000000');
INSERT INTO `t_dic_district` VALUES ('11006', '金水区', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41010500', '410000', '410100000000', '410105000000');
INSERT INTO `t_dic_district` VALUES ('11007', '上街区', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41010600', '410000', '410100000000', '410106000000');
INSERT INTO `t_dic_district` VALUES ('11008', '邙山区', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41010800', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11009', '中牟县', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41012200', '410000', '410100000000', '410122000000');
INSERT INTO `t_dic_district` VALUES ('11010', '巩义市', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41018100', '410000', '410100000000', '410181000000');
INSERT INTO `t_dic_district` VALUES ('11011', '荥阳市', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41018200', '410000', '410100000000', '410182000000');
INSERT INTO `t_dic_district` VALUES ('11012', '新密市', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41018300', '410000', '410100000000', '410183000000');
INSERT INTO `t_dic_district` VALUES ('11013', '新郑市', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41018400', '410000', '410100000000', '410184000000');
INSERT INTO `t_dic_district` VALUES ('11014', '登封市', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41018500', '410000', '410100000000', '410185000000');
INSERT INTO `t_dic_district` VALUES ('11015', '市辖区', null, '开封市', '河南省', 'T', null, '41020000', '41000000', '41020100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11016', '龙亭区', null, '开封市', '河南省', 'T', null, '41020000', '41000000', '41020200', '410000', '410200000000', '410202000000');
INSERT INTO `t_dic_district` VALUES ('11017', '顺河回族区', null, '开封市', '河南省', 'T', null, '41020000', '41000000', '41020300', '410000', '410200000000', '410203000000');
INSERT INTO `t_dic_district` VALUES ('11018', '鼓楼区', null, '开封市', '河南省', 'T', null, '41020000', '41000000', '41020400', '410000', '410200000000', '410204000000');
INSERT INTO `t_dic_district` VALUES ('11019', '禹王台区', null, '开封市', '河南省', 'T', null, '41020000', '41000000', '41020500', '410000', '410200000000', '410205000000');
INSERT INTO `t_dic_district` VALUES ('11020', '金明区', null, '开封市', '河南省', 'T', null, '41020000', '41000000', '41021100', '410000', '410200000000', '410211000000');
INSERT INTO `t_dic_district` VALUES ('11021', '杞县', null, '开封市', '河南省', 'T', null, '41020000', '41000000', '41022100', '410000', '410200000000', '410221000000');
INSERT INTO `t_dic_district` VALUES ('11022', '通许县', null, '开封市', '河南省', 'T', null, '41020000', '41000000', '41022200', '410000', '410200000000', '410222000000');
INSERT INTO `t_dic_district` VALUES ('11023', '尉氏县', null, '开封市', '河南省', 'T', null, '41020000', '41000000', '41022300', '410000', '410200000000', '410223000000');
INSERT INTO `t_dic_district` VALUES ('11024', '开封县', null, '开封市', '河南省', 'T', null, '41020000', '41000000', '41022400', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11025', '兰考县', null, '开封市', '河南省', 'T', null, '41020000', '41000000', '41022500', '410000', '410200000000', '410225000000');
INSERT INTO `t_dic_district` VALUES ('11026', '市辖区', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41030100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11027', '老城区', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41030200', '410000', '410300000000', '410302000000');
INSERT INTO `t_dic_district` VALUES ('11028', '西工区', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41030300', '410000', '410300000000', '410303000000');
INSERT INTO `t_dic_district` VALUES ('11029', '瀍河回族区', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41030400', '410000', '410300000000', '410304000000');
INSERT INTO `t_dic_district` VALUES ('11030', '涧西区', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41030500', '410000', '410300000000', '410305000000');
INSERT INTO `t_dic_district` VALUES ('11031', '吉利区', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41030600', '410000', '410300000000', '410306000000');
INSERT INTO `t_dic_district` VALUES ('11032', '洛龙区', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41030700', '410000', '410300000000', '410311000000');
INSERT INTO `t_dic_district` VALUES ('11033', '孟津县', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41032200', '410000', '410300000000', '410322000000');
INSERT INTO `t_dic_district` VALUES ('11034', '新安县', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41032300', '410000', '410300000000', '410323000000');
INSERT INTO `t_dic_district` VALUES ('11035', '栾川县', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41032400', '410000', '410300000000', '410324000000');
INSERT INTO `t_dic_district` VALUES ('11036', '嵩县', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41032500', '410000', '410300000000', '410325000000');
INSERT INTO `t_dic_district` VALUES ('11037', '汝阳县', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41032600', '410000', '410300000000', '410326000000');
INSERT INTO `t_dic_district` VALUES ('11038', '宜阳县', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41032700', '410000', '410300000000', '410327000000');
INSERT INTO `t_dic_district` VALUES ('11039', '洛宁县', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41032800', '410000', '410300000000', '410328000000');
INSERT INTO `t_dic_district` VALUES ('11040', '伊川县', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41032900', '410000', '410300000000', '410329000000');
INSERT INTO `t_dic_district` VALUES ('11041', '偃师市', null, '洛阳市', '河南省', 'T', null, '41030000', '41000000', '41038100', '410000', '410300000000', '410381000000');
INSERT INTO `t_dic_district` VALUES ('11042', '市辖区', null, '平顶山市', '河南省', 'T', null, '41040000', '41000000', '41040100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11043', '汝南县', null, '驻马店市', '河南省', 'T', null, '41170000', '41000000', '41172700', '410000', '411700000000', '411727000000');
INSERT INTO `t_dic_district` VALUES ('11044', '遂平县', null, '驻马店市', '河南省', 'T', null, '41170000', '41000000', '41172800', '410000', '411700000000', '411728000000');
INSERT INTO `t_dic_district` VALUES ('11045', '新蔡县', null, '驻马店市', '河南省', 'T', null, '41170000', '41000000', '41172900', '410000', '411700000000', '411729000000');
INSERT INTO `t_dic_district` VALUES ('11046', '济源市', null, '济源市', '河南省', 'T', null, '41180000', '41000000', '41188100', '410000', '419000000000', '419001000000');
INSERT INTO `t_dic_district` VALUES ('11047', '市辖区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42010100', '420000', '421300000000', '421301000000');
INSERT INTO `t_dic_district` VALUES ('11048', '江岸区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42010200', '420000', '420100000000', '420102000000');
INSERT INTO `t_dic_district` VALUES ('11049', '江汉区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42010300', '420000', '420100000000', '420103000000');
INSERT INTO `t_dic_district` VALUES ('11050', '硚口区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42010400', '420000', '420100000000', '420104000000');
INSERT INTO `t_dic_district` VALUES ('11051', '汉阳区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42010500', '420000', '420100000000', '420105000000');
INSERT INTO `t_dic_district` VALUES ('11052', '武昌区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42010600', '420000', '420100000000', '420106000000');
INSERT INTO `t_dic_district` VALUES ('11053', '青山区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42010700', '420000', '420100000000', '420107000000');
INSERT INTO `t_dic_district` VALUES ('11054', '洪山区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42011100', '420000', '420100000000', '420111000000');
INSERT INTO `t_dic_district` VALUES ('11055', '东西湖区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42011200', '420000', '420100000000', '420112000000');
INSERT INTO `t_dic_district` VALUES ('11056', '汉南区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42011300', '420000', '420100000000', '420113000000');
INSERT INTO `t_dic_district` VALUES ('11057', '蔡甸区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42011400', '420000', '420100000000', '420114000000');
INSERT INTO `t_dic_district` VALUES ('11058', '江夏区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42011500', '420000', '420100000000', '420115000000');
INSERT INTO `t_dic_district` VALUES ('11059', '黄陂区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42011600', '420000', '420100000000', '420116000000');
INSERT INTO `t_dic_district` VALUES ('11060', '新洲区', null, '武汉市', '湖北省', 'T', null, '42010000', '42000000', '42011700', '420000', '420100000000', '420117000000');
INSERT INTO `t_dic_district` VALUES ('11061', '市辖区', null, '黄石市', '湖北省', 'T', null, '42020000', '42000000', '42020100', '420000', null, null);
INSERT INTO `t_dic_district` VALUES ('11062', '黄石港区', null, '黄石市', '湖北省', 'T', null, '42020000', '42000000', '42020200', '420000', '420200000000', '420202000000');
INSERT INTO `t_dic_district` VALUES ('11063', '淇滨区', null, '鹤壁市', '河南省', 'T', null, '41060000', '41000000', '41061100', '410000', '410600000000', '410611000000');
INSERT INTO `t_dic_district` VALUES ('11064', '浚县', null, '鹤壁市', '河南省', 'T', null, '41060000', '41000000', '41062100', '410000', '410600000000', '410621000000');
INSERT INTO `t_dic_district` VALUES ('11065', '淇县', null, '鹤壁市', '河南省', 'T', null, '41060000', '41000000', '41062200', '410000', '410600000000', '410622000000');
INSERT INTO `t_dic_district` VALUES ('11066', '市辖区', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41070100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11067', '红旗区', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41070200', '410000', '410700000000', '410702000000');
INSERT INTO `t_dic_district` VALUES ('11068', '卫滨区', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41070300', '410000', '410700000000', '410703000000');
INSERT INTO `t_dic_district` VALUES ('11069', '凤泉区', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41070400', '410000', '410700000000', '410704000000');
INSERT INTO `t_dic_district` VALUES ('11070', '牧野区', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41071100', '410000', '410700000000', '410711000000');
INSERT INTO `t_dic_district` VALUES ('11071', '新乡县', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41072100', '410000', '410700000000', '410721000000');
INSERT INTO `t_dic_district` VALUES ('11072', '获嘉县', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41072400', '410000', '410700000000', '410724000000');
INSERT INTO `t_dic_district` VALUES ('11073', '原阳县', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41072500', '410000', '410700000000', '410725000000');
INSERT INTO `t_dic_district` VALUES ('11074', '延津县', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41072600', '410000', '410700000000', '410726000000');
INSERT INTO `t_dic_district` VALUES ('11075', '封丘县', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41072700', '410000', '410700000000', '410727000000');
INSERT INTO `t_dic_district` VALUES ('11076', '长垣县', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41072800', '410000', '410700000000', '410728000000');
INSERT INTO `t_dic_district` VALUES ('11077', '卫辉市', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41078100', '410000', '410700000000', '410781000000');
INSERT INTO `t_dic_district` VALUES ('11078', '辉县市', null, '新乡市', '河南省', 'T', null, '41070000', '41000000', '41078200', '410000', '410700000000', '410782000000');
INSERT INTO `t_dic_district` VALUES ('11079', '市辖区', null, '焦作市', '河南省', 'T', null, '41080000', '41000000', '41080100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11080', '解放区', null, '焦作市', '河南省', 'T', null, '41080000', '41000000', '41080200', '410000', '410800000000', '410802000000');
INSERT INTO `t_dic_district` VALUES ('11081', '中站区', null, '焦作市', '河南省', 'T', null, '41080000', '41000000', '41080300', '410000', '410800000000', '410803000000');
INSERT INTO `t_dic_district` VALUES ('11082', '马村区', null, '焦作市', '河南省', 'T', null, '41080000', '41000000', '41080400', '410000', '410800000000', '410804000000');
INSERT INTO `t_dic_district` VALUES ('11083', '山阳区', null, '焦作市', '河南省', 'T', null, '41080000', '41000000', '41081100', '410000', '410800000000', '410811000000');
INSERT INTO `t_dic_district` VALUES ('11084', '修武县', null, '焦作市', '河南省', 'T', null, '41080000', '41000000', '41082100', '410000', '410800000000', '410821000000');
INSERT INTO `t_dic_district` VALUES ('11085', '博爱县', null, '焦作市', '河南省', 'T', null, '41080000', '41000000', '41082200', '410000', '410800000000', '410822000000');
INSERT INTO `t_dic_district` VALUES ('11086', '武陟县', null, '焦作市', '河南省', 'T', null, '41080000', '41000000', '41082300', '410000', '410800000000', '410823000000');
INSERT INTO `t_dic_district` VALUES ('11087', '温县', null, '焦作市', '河南省', 'T', null, '41080000', '41000000', '41082500', '410000', '410800000000', '410825000000');
INSERT INTO `t_dic_district` VALUES ('11088', '沁阳市', null, '焦作市', '河南省', 'T', null, '41080000', '41000000', '41088200', '410000', '410800000000', '410882000000');
INSERT INTO `t_dic_district` VALUES ('11089', '孟州市', null, '焦作市', '河南省', 'T', null, '41080000', '41000000', '41088300', '410000', '410800000000', '410883000000');
INSERT INTO `t_dic_district` VALUES ('11090', '市辖区', null, '濮阳市', '河南省', 'T', null, '41090000', '41000000', '41090100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11091', '华龙区', null, '濮阳市', '河南省', 'T', null, '41090000', '41000000', '41090200', '410000', '410900000000', '410902000000');
INSERT INTO `t_dic_district` VALUES ('11092', '清丰县', null, '濮阳市', '河南省', 'T', null, '41090000', '41000000', '41092200', '410000', '410900000000', '410922000000');
INSERT INTO `t_dic_district` VALUES ('11093', '南乐县', null, '濮阳市', '河南省', 'T', null, '41090000', '41000000', '41092300', '410000', '410900000000', '410923000000');
INSERT INTO `t_dic_district` VALUES ('11094', '范县', null, '濮阳市', '河南省', 'T', null, '41090000', '41000000', '41092600', '410000', '410900000000', '410926000000');
INSERT INTO `t_dic_district` VALUES ('11095', '台前县', null, '濮阳市', '河南省', 'T', null, '41090000', '41000000', '41092700', '410000', '410900000000', '410927000000');
INSERT INTO `t_dic_district` VALUES ('11096', '濮阳县', null, '濮阳市', '河南省', 'T', null, '41090000', '41000000', '41092800', '410000', '410900000000', '410928000000');
INSERT INTO `t_dic_district` VALUES ('11097', '市辖区', null, '许昌市', '河南省', 'T', null, '41100000', '41000000', '41100100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11098', '魏都区', null, '许昌市', '河南省', 'T', null, '41100000', '41000000', '41100200', '410000', '411000000000', '411002000000');
INSERT INTO `t_dic_district` VALUES ('11099', '许昌县', null, '许昌市', '河南省', 'T', null, '41100000', '41000000', '41102300', '410000', '411000000000', '411023000000');
INSERT INTO `t_dic_district` VALUES ('11100', '鄢陵县', null, '许昌市', '河南省', 'T', null, '41100000', '41000000', '41102400', '410000', '411000000000', '411024000000');
INSERT INTO `t_dic_district` VALUES ('11101', '襄城县', null, '许昌市', '河南省', 'T', null, '41100000', '41000000', '41102500', '410000', '411000000000', '411025000000');
INSERT INTO `t_dic_district` VALUES ('11102', '禹州市', null, '许昌市', '河南省', 'T', null, '41100000', '41000000', '41108100', '410000', '411000000000', '411081000000');
INSERT INTO `t_dic_district` VALUES ('11103', '长葛市', null, '许昌市', '河南省', 'T', null, '41100000', '41000000', '41108200', '410000', '411000000000', '411082000000');
INSERT INTO `t_dic_district` VALUES ('11104', '市辖区', null, '漯河市', '河南省', 'T', null, '41110000', '41000000', '41110100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11105', '市辖区', null, '荆门市', '湖北省', 'T', null, '42080000', '42000000', '42080100', '420000', null, null);
INSERT INTO `t_dic_district` VALUES ('11106', '东宝区', null, '荆门市', '湖北省', 'T', null, '42080000', '42000000', '42080200', '420000', '420800000000', '420802000000');
INSERT INTO `t_dic_district` VALUES ('11107', '掇刀区', null, '荆门市', '湖北省', 'T', null, '42080000', '42000000', '42080400', '420000', '420800000000', '420804000000');
INSERT INTO `t_dic_district` VALUES ('11108', '京山县', null, '荆门市', '湖北省', 'T', null, '42080000', '42000000', '42082100', '420000', '420800000000', '420821000000');
INSERT INTO `t_dic_district` VALUES ('11109', '沙洋县', null, '荆门市', '湖北省', 'T', null, '42080000', '42000000', '42082200', '420000', '420800000000', '420822000000');
INSERT INTO `t_dic_district` VALUES ('11110', '钟祥市', null, '荆门市', '湖北省', 'T', null, '42080000', '42000000', '42088100', '420000', '420800000000', '420881000000');
INSERT INTO `t_dic_district` VALUES ('11111', '市辖区', null, '孝感市', '湖北省', 'T', null, '42090000', '42000000', '42090100', '420000', null, null);
INSERT INTO `t_dic_district` VALUES ('11112', '孝南区', null, '孝感市', '湖北省', 'T', null, '42090000', '42000000', '42090200', '420000', '420900000000', '420902000000');
INSERT INTO `t_dic_district` VALUES ('11113', '孝昌县', null, '孝感市', '湖北省', 'T', null, '42090000', '42000000', '42092100', '420000', '420900000000', '420921000000');
INSERT INTO `t_dic_district` VALUES ('11114', '大悟县', null, '孝感市', '湖北省', 'T', null, '42090000', '42000000', '42092200', '420000', '420900000000', '420922000000');
INSERT INTO `t_dic_district` VALUES ('11115', '云梦县', null, '孝感市', '湖北省', 'T', null, '42090000', '42000000', '42092300', '420000', '420900000000', '420923000000');
INSERT INTO `t_dic_district` VALUES ('11116', '应城市', null, '孝感市', '湖北省', 'T', null, '42090000', '42000000', '42098100', '420000', '420900000000', '420981000000');
INSERT INTO `t_dic_district` VALUES ('11117', '安陆市', null, '孝感市', '湖北省', 'T', null, '42090000', '42000000', '42098200', '420000', '420900000000', '420982000000');
INSERT INTO `t_dic_district` VALUES ('11118', '汉川市', null, '孝感市', '湖北省', 'T', null, '42090000', '42000000', '42098400', '420000', '420900000000', '420984000000');
INSERT INTO `t_dic_district` VALUES ('11119', '市辖区', null, '荆州市', '湖北省', 'T', null, '42100000', '42000000', '42100100', '420000', null, null);
INSERT INTO `t_dic_district` VALUES ('11120', '沙市区', null, '荆州市', '湖北省', 'T', null, '42100000', '42000000', '42100200', '420000', '421000000000', '421002000000');
INSERT INTO `t_dic_district` VALUES ('11121', '荆州区', null, '荆州市', '湖北省', 'T', null, '42100000', '42000000', '42100300', '420000', '421000000000', '421003000000');
INSERT INTO `t_dic_district` VALUES ('11122', '公安县', null, '荆州市', '湖北省', 'T', null, '42100000', '42000000', '42102200', '420000', '421000000000', '421022000000');
INSERT INTO `t_dic_district` VALUES ('11123', '监利县', null, '荆州市', '湖北省', 'T', null, '42100000', '42000000', '42102300', '420000', '421000000000', '421023000000');
INSERT INTO `t_dic_district` VALUES ('11124', '江陵县', null, '荆州市', '湖北省', 'T', null, '42100000', '42000000', '42102400', '420000', '421000000000', '421024000000');
INSERT INTO `t_dic_district` VALUES ('11125', '石首市', null, '荆州市', '湖北省', 'T', null, '42100000', '42000000', '42108100', '420000', '421000000000', '421081000000');
INSERT INTO `t_dic_district` VALUES ('11126', '新野县', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41132900', '410000', '411300000000', '411329000000');
INSERT INTO `t_dic_district` VALUES ('11127', '桐柏县', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41133000', '410000', '411300000000', '411330000000');
INSERT INTO `t_dic_district` VALUES ('11128', '邓州市', null, '南阳市', '河南省', 'T', null, '41130000', '41000000', '41138100', '410000', '411300000000', '411381000000');
INSERT INTO `t_dic_district` VALUES ('11129', '市辖区', null, '商丘市', '河南省', 'T', null, '41140000', '41000000', '41140100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11130', '梁园区', null, '商丘市', '河南省', 'T', null, '41140000', '41000000', '41140200', '410000', '411400000000', '411402000000');
INSERT INTO `t_dic_district` VALUES ('11131', '睢阳区', null, '商丘市', '河南省', 'T', null, '41140000', '41000000', '41140300', '410000', '411400000000', '411403000000');
INSERT INTO `t_dic_district` VALUES ('11132', '民权县', null, '商丘市', '河南省', 'T', null, '41140000', '41000000', '41142100', '410000', '411400000000', '411421000000');
INSERT INTO `t_dic_district` VALUES ('11133', '睢县', null, '商丘市', '河南省', 'T', null, '41140000', '41000000', '41142200', '410000', '411400000000', '411422000000');
INSERT INTO `t_dic_district` VALUES ('11134', '宁陵县', null, '商丘市', '河南省', 'T', null, '41140000', '41000000', '41142300', '410000', '411400000000', '411423000000');
INSERT INTO `t_dic_district` VALUES ('11135', '柘城县', null, '商丘市', '河南省', 'T', null, '41140000', '41000000', '41142400', '410000', '411400000000', '411424000000');
INSERT INTO `t_dic_district` VALUES ('11136', '虞城县', null, '商丘市', '河南省', 'T', null, '41140000', '41000000', '41142500', '410000', '411400000000', '411425000000');
INSERT INTO `t_dic_district` VALUES ('11137', '夏邑县', null, '商丘市', '河南省', 'T', null, '41140000', '41000000', '41142600', '410000', '411400000000', '411426000000');
INSERT INTO `t_dic_district` VALUES ('11138', '永城市', null, '商丘市', '河南省', 'T', null, '41140000', '41000000', '41148100', '410000', '411400000000', '411481000000');
INSERT INTO `t_dic_district` VALUES ('11139', '市辖区', null, '信阳市', '河南省', 'T', null, '41150000', '41000000', '41150100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11140', '浉河区', null, '信阳市', '河南省', 'T', null, '41150000', '41000000', '41150200', '410000', '411500000000', '411502000000');
INSERT INTO `t_dic_district` VALUES ('11141', '平桥区', null, '信阳市', '河南省', 'T', null, '41150000', '41000000', '41150300', '410000', '411500000000', '411503000000');
INSERT INTO `t_dic_district` VALUES ('11142', '罗山县', null, '信阳市', '河南省', 'T', null, '41150000', '41000000', '41152100', '410000', '411500000000', '411521000000');
INSERT INTO `t_dic_district` VALUES ('11143', '光山县', null, '信阳市', '河南省', 'T', null, '41150000', '41000000', '41152200', '410000', '411500000000', '411522000000');
INSERT INTO `t_dic_district` VALUES ('11144', '新县', null, '信阳市', '河南省', 'T', null, '41150000', '41000000', '41152300', '410000', '411500000000', '411523000000');
INSERT INTO `t_dic_district` VALUES ('11145', '商城县', null, '信阳市', '河南省', 'T', null, '41150000', '41000000', '41152400', '410000', '411500000000', '411524000000');
INSERT INTO `t_dic_district` VALUES ('11146', '固始县', null, '信阳市', '河南省', 'T', null, '41150000', '41000000', '41152500', '410000', '411500000000', '411525000000');
INSERT INTO `t_dic_district` VALUES ('11147', '潢川县', null, '信阳市', '河南省', 'T', null, '41150000', '41000000', '41152600', '410000', '411500000000', '411526000000');
INSERT INTO `t_dic_district` VALUES ('11148', '淮滨县', null, '信阳市', '河南省', 'T', null, '41150000', '41000000', '41152700', '410000', '411500000000', '411527000000');
INSERT INTO `t_dic_district` VALUES ('11149', '息县', null, '信阳市', '河南省', 'T', null, '41150000', '41000000', '41152800', '410000', '411500000000', '411528000000');
INSERT INTO `t_dic_district` VALUES ('11150', '市辖区', null, '周口市', '河南省', 'T', null, '41160000', '41000000', '41160100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11151', '川汇区', null, '周口市', '河南省', 'T', null, '41160000', '41000000', '41160200', '410000', '411600000000', '411602000000');
INSERT INTO `t_dic_district` VALUES ('11152', '扶沟县', null, '周口市', '河南省', 'T', null, '41160000', '41000000', '41162100', '410000', '411600000000', '411621000000');
INSERT INTO `t_dic_district` VALUES ('11153', '西华县', null, '周口市', '河南省', 'T', null, '41160000', '41000000', '41162200', '410000', '411600000000', '411622000000');
INSERT INTO `t_dic_district` VALUES ('11154', '商水县', null, '周口市', '河南省', 'T', null, '41160000', '41000000', '41162300', '410000', '411600000000', '411623000000');
INSERT INTO `t_dic_district` VALUES ('11155', '沈丘县', null, '周口市', '河南省', 'T', null, '41160000', '41000000', '41162400', '410000', '411600000000', '411624000000');
INSERT INTO `t_dic_district` VALUES ('11156', '郸城县', null, '周口市', '河南省', 'T', null, '41160000', '41000000', '41162500', '410000', '411600000000', '411625000000');
INSERT INTO `t_dic_district` VALUES ('11157', '淮阳县', null, '周口市', '河南省', 'T', null, '41160000', '41000000', '41162600', '410000', '411600000000', '411626000000');
INSERT INTO `t_dic_district` VALUES ('11158', '太康县', null, '周口市', '河南省', 'T', null, '41160000', '41000000', '41162700', '410000', '411600000000', '411627000000');
INSERT INTO `t_dic_district` VALUES ('11159', '鹿邑县', null, '周口市', '河南省', 'T', null, '41160000', '41000000', '41162800', '410000', '411600000000', '411628000000');
INSERT INTO `t_dic_district` VALUES ('11160', '项城市', null, '周口市', '河南省', 'T', null, '41160000', '41000000', '41168100', '410000', '411600000000', '411681000000');
INSERT INTO `t_dic_district` VALUES ('11161', '市辖区', null, '驻马店市', '河南省', 'T', null, '41170000', '41000000', '41170100', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('11162', '驿城区', null, '驻马店市', '河南省', 'T', null, '41170000', '41000000', '41170200', '410000', '411700000000', '411702000000');
INSERT INTO `t_dic_district` VALUES ('11163', '西平县', null, '驻马店市', '河南省', 'T', null, '41170000', '41000000', '41172100', '410000', '411700000000', '411721000000');
INSERT INTO `t_dic_district` VALUES ('11164', '上蔡县', null, '驻马店市', '河南省', 'T', null, '41170000', '41000000', '41172200', '410000', '411700000000', '411722000000');
INSERT INTO `t_dic_district` VALUES ('11165', '平舆县', null, '驻马店市', '河南省', 'T', null, '41170000', '41000000', '41172300', '410000', '411700000000', '411723000000');
INSERT INTO `t_dic_district` VALUES ('11166', '正阳县', null, '驻马店市', '河南省', 'T', null, '41170000', '41000000', '41172400', '410000', '411700000000', '411724000000');
INSERT INTO `t_dic_district` VALUES ('11167', '确山县', null, '驻马店市', '河南省', 'T', null, '41170000', '41000000', '41172500', '410000', '411700000000', '411725000000');
INSERT INTO `t_dic_district` VALUES ('11168', '泌阳县', null, '驻马店市', '河南省', 'T', null, '41170000', '41000000', '41172600', '410000', '411700000000', '411726000000');
INSERT INTO `t_dic_district` VALUES ('11169', '岳麓区', null, '长沙市', '湖南省', 'T', null, '43010000', '43000000', '43010400', '430000', '430100000000', '430104000000');
INSERT INTO `t_dic_district` VALUES ('11170', '开福区', null, '长沙市', '湖南省', 'T', null, '43010000', '43000000', '43010500', '430000', '430100000000', '430105000000');
INSERT INTO `t_dic_district` VALUES ('11171', '雨花区', null, '长沙市', '湖南省', 'T', null, '43010000', '43000000', '43011100', '430000', '430100000000', '430111000000');
INSERT INTO `t_dic_district` VALUES ('11172', '长沙县', null, '长沙市', '湖南省', 'T', null, '43010000', '43000000', '43012100', '430000', '430100000000', '430121000000');
INSERT INTO `t_dic_district` VALUES ('11173', '望城区', null, '长沙市', '湖南省', 'T', null, '43010000', '43000000', '43012200', '430000', '430100000000', '430112000000');
INSERT INTO `t_dic_district` VALUES ('11174', '宁乡县', null, '长沙市', '湖南省', 'T', null, '43010000', '43000000', '43012400', '430000', '430100000000', '430124000000');
INSERT INTO `t_dic_district` VALUES ('11175', '浏阳市', null, '长沙市', '湖南省', 'T', null, '43010000', '43000000', '43018100', '430000', '430100000000', '430181000000');
INSERT INTO `t_dic_district` VALUES ('11176', '市辖区', null, '株洲市', '湖南省', 'T', null, '43020000', '43000000', '43020100', '430000', '431300000000', '431301000000');
INSERT INTO `t_dic_district` VALUES ('11177', '荷塘区', null, '株洲市', '湖南省', 'T', null, '43020000', '43000000', '43020200', '430000', '430200000000', '430202000000');
INSERT INTO `t_dic_district` VALUES ('11178', '芦淞区', null, '株洲市', '湖南省', 'T', null, '43020000', '43000000', '43020300', '430000', '430200000000', '430203000000');
INSERT INTO `t_dic_district` VALUES ('11179', '石峰区', null, '株洲市', '湖南省', 'T', null, '43020000', '43000000', '43020400', '430000', '430200000000', '430204000000');
INSERT INTO `t_dic_district` VALUES ('11180', '天元区', null, '株洲市', '湖南省', 'T', null, '43020000', '43000000', '43021100', '430000', '430200000000', '430211000000');
INSERT INTO `t_dic_district` VALUES ('11181', '株洲县', null, '株洲市', '湖南省', 'T', null, '43020000', '43000000', '43022100', '430000', '430200000000', '430221000000');
INSERT INTO `t_dic_district` VALUES ('11182', '攸县', null, '株洲市', '湖南省', 'T', null, '43020000', '43000000', '43022300', '430000', '430200000000', '430223000000');
INSERT INTO `t_dic_district` VALUES ('11183', '茶陵县', null, '株洲市', '湖南省', 'T', null, '43020000', '43000000', '43022400', '430000', '430200000000', '430224000000');
INSERT INTO `t_dic_district` VALUES ('11184', '炎陵县', null, '株洲市', '湖南省', 'T', null, '43020000', '43000000', '43022500', '430000', '430200000000', '430225000000');
INSERT INTO `t_dic_district` VALUES ('11185', '醴陵市', null, '株洲市', '湖南省', 'T', null, '43020000', '43000000', '43028100', '430000', '430200000000', '430281000000');
INSERT INTO `t_dic_district` VALUES ('11186', '市辖区', null, '湘潭市', '湖南省', 'T', null, '43030000', '43000000', '43030100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11187', '雨湖区', null, '湘潭市', '湖南省', 'T', null, '43030000', '43000000', '43030200', '430000', '430300000000', '430302000000');
INSERT INTO `t_dic_district` VALUES ('11188', '岳塘区', null, '湘潭市', '湖南省', 'T', null, '43030000', '43000000', '43030400', '430000', '430300000000', '430304000000');
INSERT INTO `t_dic_district` VALUES ('11189', '湘潭县', null, '湘潭市', '湖南省', 'T', null, '43030000', '43000000', '43032100', '430000', '430300000000', '430321000000');
INSERT INTO `t_dic_district` VALUES ('11190', '湘乡市', null, '湘潭市', '湖南省', 'T', null, '43030000', '43000000', '43038100', '430000', '430300000000', '430381000000');
INSERT INTO `t_dic_district` VALUES ('11191', '西塞山区', null, '黄石市', '湖北省', 'T', null, '42020000', '42000000', '42020300', '420000', '420200000000', '420203000000');
INSERT INTO `t_dic_district` VALUES ('11192', '下陆区', null, '黄石市', '湖北省', 'T', null, '42020000', '42000000', '42020400', '420000', '420200000000', '420204000000');
INSERT INTO `t_dic_district` VALUES ('11193', '铁山区', null, '黄石市', '湖北省', 'T', null, '42020000', '42000000', '42020500', '420000', '420200000000', '420205000000');
INSERT INTO `t_dic_district` VALUES ('11194', '阳新县', null, '黄石市', '湖北省', 'T', null, '42020000', '42000000', '42022200', '420000', '420200000000', '420222000000');
INSERT INTO `t_dic_district` VALUES ('11195', '大冶市', null, '黄石市', '湖北省', 'T', null, '42020000', '42000000', '42028100', '420000', '420200000000', '420281000000');
INSERT INTO `t_dic_district` VALUES ('11196', '市辖区', null, '十堰市', '湖北省', 'T', null, '42030000', '42000000', '42030100', '420000', null, null);
INSERT INTO `t_dic_district` VALUES ('11197', '茅箭区', null, '十堰市', '湖北省', 'T', null, '42030000', '42000000', '42030200', '420000', '420300000000', '420302000000');
INSERT INTO `t_dic_district` VALUES ('11198', '张湾区', null, '十堰市', '湖北省', 'T', null, '42030000', '42000000', '42030300', '420000', '420300000000', '420303000000');
INSERT INTO `t_dic_district` VALUES ('11199', '郧县', null, '十堰市', '湖北省', 'T', null, '42030000', '42000000', '42032100', '420000', null, null);
INSERT INTO `t_dic_district` VALUES ('11200', '郧西县', null, '十堰市', '湖北省', 'T', null, '42030000', '42000000', '42032200', '420000', '420300000000', '420322000000');
INSERT INTO `t_dic_district` VALUES ('11201', '竹山县', null, '十堰市', '湖北省', 'T', null, '42030000', '42000000', '42032300', '420000', '420300000000', '420323000000');
INSERT INTO `t_dic_district` VALUES ('11202', '竹溪县', null, '十堰市', '湖北省', 'T', null, '42030000', '42000000', '42032400', '420000', '420300000000', '420324000000');
INSERT INTO `t_dic_district` VALUES ('11203', '房县', null, '十堰市', '湖北省', 'T', null, '42030000', '42000000', '42032500', '420000', '420300000000', '420325000000');
INSERT INTO `t_dic_district` VALUES ('11204', '丹江口市', null, '十堰市', '湖北省', 'T', null, '42030000', '42000000', '42038100', '420000', '420300000000', '420381000000');
INSERT INTO `t_dic_district` VALUES ('11205', '市辖区', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42050100', '420000', null, null);
INSERT INTO `t_dic_district` VALUES ('11206', '西陵区', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42050200', '420000', '420500000000', '420502000000');
INSERT INTO `t_dic_district` VALUES ('11207', '伍家岗区', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42050300', '420000', '420500000000', '420503000000');
INSERT INTO `t_dic_district` VALUES ('11208', '点军区', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42050400', '420000', '420500000000', '420504000000');
INSERT INTO `t_dic_district` VALUES ('11209', '猇亭区', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42050500', '420000', '420500000000', '420505000000');
INSERT INTO `t_dic_district` VALUES ('11210', '夷陵区', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42050600', '420000', '420500000000', '420506000000');
INSERT INTO `t_dic_district` VALUES ('11211', '远安县', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42052500', '420000', '420500000000', '420525000000');
INSERT INTO `t_dic_district` VALUES ('11212', '兴山县', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42052600', '420000', '420500000000', '420526000000');
INSERT INTO `t_dic_district` VALUES ('11213', '秭归县', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42052700', '420000', '420500000000', '420527000000');
INSERT INTO `t_dic_district` VALUES ('11214', '长阳土家族自治县', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42052800', '420000', '420500000000', '420528000000');
INSERT INTO `t_dic_district` VALUES ('11215', '五峰土家族自治县', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42052900', '420000', '420500000000', '420529000000');
INSERT INTO `t_dic_district` VALUES ('11216', '宜都市', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42058100', '420000', '420500000000', '420581000000');
INSERT INTO `t_dic_district` VALUES ('11217', '当阳市', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42058200', '420000', '420500000000', '420582000000');
INSERT INTO `t_dic_district` VALUES ('11218', '枝江市', null, '宜昌市', '湖北省', 'T', null, '42050000', '42000000', '42058300', '420000', '420500000000', '420583000000');
INSERT INTO `t_dic_district` VALUES ('11219', '市辖区', null, '襄樊市', '湖北省', 'T', null, '42060000', '42000000', '42060100', '420000', null, null);
INSERT INTO `t_dic_district` VALUES ('11220', '襄城区', null, '襄樊市', '湖北省', 'T', null, '42060000', '42000000', '42060200', '420000', '420600000000', '420602000000');
INSERT INTO `t_dic_district` VALUES ('11221', '樊城区', null, '襄樊市', '湖北省', 'T', null, '42060000', '42000000', '42060600', '420000', '420600000000', '420606000000');
INSERT INTO `t_dic_district` VALUES ('11222', '襄州区', null, '襄樊市', '湖北省', 'T', null, '42060000', '42000000', '42060700', '420000', '420600000000', '420607000000');
INSERT INTO `t_dic_district` VALUES ('11223', '南漳县', null, '襄樊市', '湖北省', 'T', null, '42060000', '42000000', '42062400', '420000', '420600000000', '420624000000');
INSERT INTO `t_dic_district` VALUES ('11224', '谷城县', null, '襄樊市', '湖北省', 'T', null, '42060000', '42000000', '42062500', '420000', '420600000000', '420625000000');
INSERT INTO `t_dic_district` VALUES ('11225', '保康县', null, '襄樊市', '湖北省', 'T', null, '42060000', '42000000', '42062600', '420000', '420600000000', '420626000000');
INSERT INTO `t_dic_district` VALUES ('11226', '老河口市', null, '襄樊市', '湖北省', 'T', null, '42060000', '42000000', '42068200', '420000', '420600000000', '420682000000');
INSERT INTO `t_dic_district` VALUES ('11227', '枣阳市', null, '襄樊市', '湖北省', 'T', null, '42060000', '42000000', '42068300', '420000', '420600000000', '420683000000');
INSERT INTO `t_dic_district` VALUES ('11228', '宜城市', null, '襄樊市', '湖北省', 'T', null, '42060000', '42000000', '42068400', '420000', '420600000000', '420684000000');
INSERT INTO `t_dic_district` VALUES ('11229', '市辖区', null, '鄂州市', '湖北省', 'T', null, '42070000', '42000000', '42070100', '420000', null, null);
INSERT INTO `t_dic_district` VALUES ('11230', '梁子湖区', null, '鄂州市', '湖北省', 'T', null, '42070000', '42000000', '42070200', '420000', '420700000000', '420702000000');
INSERT INTO `t_dic_district` VALUES ('11231', '华容区', null, '鄂州市', '湖北省', 'T', null, '42070000', '42000000', '42070300', '420000', '420700000000', '420703000000');
INSERT INTO `t_dic_district` VALUES ('11232', '鄂城区', null, '鄂州市', '湖北省', 'T', null, '42070000', '42000000', '42070400', '420000', '420700000000', '420704000000');
INSERT INTO `t_dic_district` VALUES ('11233', '澧县', null, '常德市', '湖南省', 'T', null, '43070000', '43000000', '43072300', '430000', '430700000000', '430723000000');
INSERT INTO `t_dic_district` VALUES ('11234', '临澧县', null, '常德市', '湖南省', 'T', null, '43070000', '43000000', '43072400', '430000', '430700000000', '430724000000');
INSERT INTO `t_dic_district` VALUES ('11235', '桃源县', null, '常德市', '湖南省', 'T', null, '43070000', '43000000', '43072500', '430000', '430700000000', '430725000000');
INSERT INTO `t_dic_district` VALUES ('11236', '石门县', null, '常德市', '湖南省', 'T', null, '43070000', '43000000', '43072600', '430000', '430700000000', '430726000000');
INSERT INTO `t_dic_district` VALUES ('11237', '津市市', null, '常德市', '湖南省', 'T', null, '43070000', '43000000', '43078100', '430000', '430700000000', '430781000000');
INSERT INTO `t_dic_district` VALUES ('11238', '市辖区', null, '张家界市', '湖南省', 'T', null, '43080000', '43000000', '43080100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11239', '永定区', null, '张家界市', '湖南省', 'T', null, '43080000', '43000000', '43080200', '430000', '430800000000', '430802000000');
INSERT INTO `t_dic_district` VALUES ('11240', '武陵源区', null, '张家界市', '湖南省', 'T', null, '43080000', '43000000', '43081100', '430000', '430800000000', '430811000000');
INSERT INTO `t_dic_district` VALUES ('11241', '慈利县', null, '张家界市', '湖南省', 'T', null, '43080000', '43000000', '43082100', '430000', '430800000000', '430821000000');
INSERT INTO `t_dic_district` VALUES ('11242', '桑植县', null, '张家界市', '湖南省', 'T', null, '43080000', '43000000', '43082200', '430000', '430800000000', '430822000000');
INSERT INTO `t_dic_district` VALUES ('11243', '市辖区', null, '益阳市', '湖南省', 'T', null, '43090000', '43000000', '43090100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11244', '资阳区', null, '益阳市', '湖南省', 'T', null, '43090000', '43000000', '43090200', '430000', '430900000000', '430902000000');
INSERT INTO `t_dic_district` VALUES ('11245', '赫山区', null, '益阳市', '湖南省', 'T', null, '43090000', '43000000', '43090300', '430000', '430900000000', '430903000000');
INSERT INTO `t_dic_district` VALUES ('11246', '南县', null, '益阳市', '湖南省', 'T', null, '43090000', '43000000', '43092100', '430000', '430900000000', '430921000000');
INSERT INTO `t_dic_district` VALUES ('11247', '桃江县', null, '益阳市', '湖南省', 'T', null, '43090000', '43000000', '43092200', '430000', '430900000000', '430922000000');
INSERT INTO `t_dic_district` VALUES ('11248', '安化县', null, '益阳市', '湖南省', 'T', null, '43090000', '43000000', '43092300', '430000', '430900000000', '430923000000');
INSERT INTO `t_dic_district` VALUES ('11249', '沅江市', null, '益阳市', '湖南省', 'T', null, '43090000', '43000000', '43098100', '430000', '430900000000', '430981000000');
INSERT INTO `t_dic_district` VALUES ('11250', '市辖区', null, '郴州市', '湖南省', 'T', null, '43100000', '43000000', '43100100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11251', '北湖区', null, '郴州市', '湖南省', 'T', null, '43100000', '43000000', '43100200', '430000', '431000000000', '431002000000');
INSERT INTO `t_dic_district` VALUES ('11252', '苏仙区', null, '郴州市', '湖南省', 'T', null, '43100000', '43000000', '43100300', '430000', '431000000000', '431003000000');
INSERT INTO `t_dic_district` VALUES ('11253', '桂阳县', null, '郴州市', '湖南省', 'T', null, '43100000', '43000000', '43102100', '430000', '431000000000', '431021000000');
INSERT INTO `t_dic_district` VALUES ('11254', '洪湖市', null, '荆州市', '湖北省', 'T', null, '42100000', '42000000', '42108300', '420000', '421000000000', '421083000000');
INSERT INTO `t_dic_district` VALUES ('11255', '松滋市', null, '荆州市', '湖北省', 'T', null, '42100000', '42000000', '42108700', '420000', '421000000000', '421087000000');
INSERT INTO `t_dic_district` VALUES ('11256', '市辖区', null, '黄冈市', '湖北省', 'T', null, '42110000', '42000000', '42110100', '420000', null, null);
INSERT INTO `t_dic_district` VALUES ('11257', '黄州区', null, '黄冈市', '湖北省', 'T', null, '42110000', '42000000', '42110200', '420000', '421100000000', '421102000000');
INSERT INTO `t_dic_district` VALUES ('11258', '团风县', null, '黄冈市', '湖北省', 'T', null, '42110000', '42000000', '42112100', '420000', '421100000000', '421121000000');
INSERT INTO `t_dic_district` VALUES ('11259', '红安县', null, '黄冈市', '湖北省', 'T', null, '42110000', '42000000', '42112200', '420000', '421100000000', '421122000000');
INSERT INTO `t_dic_district` VALUES ('11260', '罗田县', null, '黄冈市', '湖北省', 'T', null, '42110000', '42000000', '42112300', '420000', '421100000000', '421123000000');
INSERT INTO `t_dic_district` VALUES ('11261', '英山县', null, '黄冈市', '湖北省', 'T', null, '42110000', '42000000', '42112400', '420000', '421100000000', '421124000000');
INSERT INTO `t_dic_district` VALUES ('11262', '浠水县', null, '黄冈市', '湖北省', 'T', null, '42110000', '42000000', '42112500', '420000', '421100000000', '421125000000');
INSERT INTO `t_dic_district` VALUES ('11263', '蕲春县', null, '黄冈市', '湖北省', 'T', null, '42110000', '42000000', '42112600', '420000', '421100000000', '421126000000');
INSERT INTO `t_dic_district` VALUES ('11264', '黄梅县', null, '黄冈市', '湖北省', 'T', null, '42110000', '42000000', '42112700', '420000', '421100000000', '421127000000');
INSERT INTO `t_dic_district` VALUES ('11265', '麻城市', null, '黄冈市', '湖北省', 'T', null, '42110000', '42000000', '42118100', '420000', '421100000000', '421181000000');
INSERT INTO `t_dic_district` VALUES ('11266', '武穴市', null, '黄冈市', '湖北省', 'T', null, '42110000', '42000000', '42118200', '420000', '421100000000', '421182000000');
INSERT INTO `t_dic_district` VALUES ('11267', '市辖区', null, '咸宁市', '湖北省', 'T', null, '42120000', '42000000', '42120100', '420000', null, null);
INSERT INTO `t_dic_district` VALUES ('11268', '咸安区', null, '咸宁市', '湖北省', 'T', null, '42120000', '42000000', '42120200', '420000', '421200000000', '421202000000');
INSERT INTO `t_dic_district` VALUES ('11269', '嘉鱼县', null, '咸宁市', '湖北省', 'T', null, '42120000', '42000000', '42122100', '420000', '421200000000', '421221000000');
INSERT INTO `t_dic_district` VALUES ('11270', '通城县', null, '咸宁市', '湖北省', 'T', null, '42120000', '42000000', '42122200', '420000', '421200000000', '421222000000');
INSERT INTO `t_dic_district` VALUES ('11271', '崇阳县', null, '咸宁市', '湖北省', 'T', null, '42120000', '42000000', '42122300', '420000', '421200000000', '421223000000');
INSERT INTO `t_dic_district` VALUES ('11272', '通山县', null, '咸宁市', '湖北省', 'T', null, '42120000', '42000000', '42122400', '420000', '421200000000', '421224000000');
INSERT INTO `t_dic_district` VALUES ('11273', '赤壁市', null, '咸宁市', '湖北省', 'T', null, '42120000', '42000000', '42128100', '420000', '421200000000', '421281000000');
INSERT INTO `t_dic_district` VALUES ('11274', '市辖区', null, '随州市', '湖北省', 'T', null, '42130000', '42000000', '42130100', '420000', null, null);
INSERT INTO `t_dic_district` VALUES ('11275', '曾都区', null, '随州市', '湖北省', 'T', null, '42130000', '42000000', '42130200', '420000', '421300000000', '421303000000');
INSERT INTO `t_dic_district` VALUES ('11276', '广水市', null, '随州市', '湖北省', 'T', null, '42130000', '42000000', '42138100', '420000', '421300000000', '421381000000');
INSERT INTO `t_dic_district` VALUES ('11277', '恩施市', null, '恩施土家族苗族自治州', '湖北省', 'T', null, '42280000', '42000000', '42280100', '420000', '422800000000', '422801000000');
INSERT INTO `t_dic_district` VALUES ('11278', '利川市', null, '恩施土家族苗族自治州', '湖北省', 'T', null, '42280000', '42000000', '42280200', '420000', '422800000000', '422802000000');
INSERT INTO `t_dic_district` VALUES ('11279', '建始县', null, '恩施土家族苗族自治州', '湖北省', 'T', null, '42280000', '42000000', '42282200', '420000', '422800000000', '422822000000');
INSERT INTO `t_dic_district` VALUES ('11280', '巴东县', null, '恩施土家族苗族自治州', '湖北省', 'T', null, '42280000', '42000000', '42282300', '420000', '422800000000', '422823000000');
INSERT INTO `t_dic_district` VALUES ('11281', '宣恩县', null, '恩施土家族苗族自治州', '湖北省', 'T', null, '42280000', '42000000', '42282500', '420000', '422800000000', '422825000000');
INSERT INTO `t_dic_district` VALUES ('11282', '咸丰县', null, '恩施土家族苗族自治州', '湖北省', 'T', null, '42280000', '42000000', '42282600', '420000', '422800000000', '422826000000');
INSERT INTO `t_dic_district` VALUES ('11283', '来凤县', null, '恩施土家族苗族自治州', '湖北省', 'T', null, '42280000', '42000000', '42282700', '420000', '422800000000', '422827000000');
INSERT INTO `t_dic_district` VALUES ('11284', '鹤峰县', null, '恩施土家族苗族自治州', '湖北省', 'T', null, '42280000', '42000000', '42282800', '420000', '422800000000', '422828000000');
INSERT INTO `t_dic_district` VALUES ('11285', '仙桃市', null, '省直辖行政单位', '湖北省', 'T', null, '42900000', '42000000', '42900400', '420000', '429000000000', '429004000000');
INSERT INTO `t_dic_district` VALUES ('11286', '潜江市', null, '省直辖行政单位', '湖北省', 'T', null, '42900000', '42000000', '42900500', '420000', '429000000000', '429005000000');
INSERT INTO `t_dic_district` VALUES ('11287', '天门市', null, '省直辖行政单位', '湖北省', 'T', null, '42900000', '42000000', '42900600', '420000', '429000000000', '429006000000');
INSERT INTO `t_dic_district` VALUES ('11288', '神农架林区', null, '省直辖行政单位', '湖北省', 'T', null, '42900000', '42000000', '42902100', '420000', '429000000000', '429021000000');
INSERT INTO `t_dic_district` VALUES ('11289', '市辖区', null, '长沙市', '湖南省', 'T', null, '43010000', '43000000', '43010100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11290', '芙蓉区', null, '长沙市', '湖南省', 'T', null, '43010000', '43000000', '43010200', '430000', '430100000000', '430102000000');
INSERT INTO `t_dic_district` VALUES ('11291', '天心区', null, '长沙市', '湖南省', 'T', null, '43010000', '43000000', '43010300', '430000', '430100000000', '430103000000');
INSERT INTO `t_dic_district` VALUES ('11292', '泸溪县', null, '湘西土家族苗族自治州', '湖南省', 'T', null, '43310000', '43000000', '43312200', '430000', '433100000000', '433122000000');
INSERT INTO `t_dic_district` VALUES ('11293', '凤凰县', null, '湘西土家族苗族自治州', '湖南省', 'T', null, '43310000', '43000000', '43312300', '430000', '433100000000', '433123000000');
INSERT INTO `t_dic_district` VALUES ('11294', '花垣县', null, '湘西土家族苗族自治州', '湖南省', 'T', null, '43310000', '43000000', '43312400', '430000', '433100000000', '433124000000');
INSERT INTO `t_dic_district` VALUES ('11295', '保靖县', null, '湘西土家族苗族自治州', '湖南省', 'T', null, '43310000', '43000000', '43312500', '430000', '433100000000', '433125000000');
INSERT INTO `t_dic_district` VALUES ('11296', '古丈县', null, '湘西土家族苗族自治州', '湖南省', 'T', null, '43310000', '43000000', '43312600', '430000', '433100000000', '433126000000');
INSERT INTO `t_dic_district` VALUES ('11297', '永顺县', null, '湘西土家族苗族自治州', '湖南省', 'T', null, '43310000', '43000000', '43312700', '430000', '433100000000', '433127000000');
INSERT INTO `t_dic_district` VALUES ('11298', '龙山县', null, '湘西土家族苗族自治州', '湖南省', 'T', null, '43310000', '43000000', '43313000', '430000', '433100000000', '433130000000');
INSERT INTO `t_dic_district` VALUES ('11299', '市辖区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44010100', '440000', '445300000000', '445301000000');
INSERT INTO `t_dic_district` VALUES ('11300', '东山区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44010200', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11301', '荔湾区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44010300', '440000', '440100000000', '440103000000');
INSERT INTO `t_dic_district` VALUES ('11302', '越秀区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44010400', '440000', '440100000000', '440104000000');
INSERT INTO `t_dic_district` VALUES ('11303', '海珠区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44010500', '440000', '440100000000', '440105000000');
INSERT INTO `t_dic_district` VALUES ('11304', '天河区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44010600', '440000', '440100000000', '440106000000');
INSERT INTO `t_dic_district` VALUES ('11305', '芳村区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44010700', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11306', '白云区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44011100', '440000', '440100000000', '440111000000');
INSERT INTO `t_dic_district` VALUES ('11307', '黄埔区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44011200', '440000', '440100000000', '440112000000');
INSERT INTO `t_dic_district` VALUES ('11308', '番禺区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44011300', '440000', '440100000000', '440113000000');
INSERT INTO `t_dic_district` VALUES ('11309', '花都区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44011400', '440000', '440100000000', '440114000000');
INSERT INTO `t_dic_district` VALUES ('11310', '增城区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44018300', '440000', '440100000000', '440118000000');
INSERT INTO `t_dic_district` VALUES ('11311', '从化区', null, '广州市', '广东省', 'T', null, '44010000', '44000000', '44018400', '440000', '440100000000', '440117000000');
INSERT INTO `t_dic_district` VALUES ('11312', '市辖区', null, '韶关市', '广东省', 'T', null, '44020000', '44000000', '44020100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11313', '韶山市', null, '湘潭市', '湖南省', 'T', null, '43030000', '43000000', '43038200', '430000', '430300000000', '430382000000');
INSERT INTO `t_dic_district` VALUES ('11314', '市辖区', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43040100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11315', '珠晖区', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43040500', '430000', '430400000000', '430405000000');
INSERT INTO `t_dic_district` VALUES ('11316', '雁峰区', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43040600', '430000', '430400000000', '430406000000');
INSERT INTO `t_dic_district` VALUES ('11317', '石鼓区', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43040700', '430000', '430400000000', '430407000000');
INSERT INTO `t_dic_district` VALUES ('11318', '蒸湘区', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43040800', '430000', '430400000000', '430408000000');
INSERT INTO `t_dic_district` VALUES ('11319', '南岳区', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43041200', '430000', '430400000000', '430412000000');
INSERT INTO `t_dic_district` VALUES ('11320', '衡阳县', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43042100', '430000', '430400000000', '430421000000');
INSERT INTO `t_dic_district` VALUES ('11321', '衡南县', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43042200', '430000', '430400000000', '430422000000');
INSERT INTO `t_dic_district` VALUES ('11322', '衡山县', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43042300', '430000', '430400000000', '430423000000');
INSERT INTO `t_dic_district` VALUES ('11323', '衡东县', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43042400', '430000', '430400000000', '430424000000');
INSERT INTO `t_dic_district` VALUES ('11324', '祁东县', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43042600', '430000', '430400000000', '430426000000');
INSERT INTO `t_dic_district` VALUES ('11325', '耒阳市', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43048100', '430000', '430400000000', '430481000000');
INSERT INTO `t_dic_district` VALUES ('11326', '常宁市', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43048200', '430000', '430400000000', '430482000000');
INSERT INTO `t_dic_district` VALUES ('11327', '市辖区', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43050100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11328', '双清区', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43050200', '430000', '430500000000', '430502000000');
INSERT INTO `t_dic_district` VALUES ('11329', '大祥区', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43050300', '430000', '430500000000', '430503000000');
INSERT INTO `t_dic_district` VALUES ('11330', '北塔区', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43051100', '430000', '430500000000', '430511000000');
INSERT INTO `t_dic_district` VALUES ('11331', '邵东县', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43052100', '430000', '430500000000', '430521000000');
INSERT INTO `t_dic_district` VALUES ('11332', '新邵县', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43052200', '430000', '430500000000', '430522000000');
INSERT INTO `t_dic_district` VALUES ('11333', '邵阳县', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43052300', '430000', '430500000000', '430523000000');
INSERT INTO `t_dic_district` VALUES ('11334', '隆回县', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43052400', '430000', '430500000000', '430524000000');
INSERT INTO `t_dic_district` VALUES ('11335', '洞口县', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43052500', '430000', '430500000000', '430525000000');
INSERT INTO `t_dic_district` VALUES ('11336', '绥宁县', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43052700', '430000', '430500000000', '430527000000');
INSERT INTO `t_dic_district` VALUES ('11337', '新宁县', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43052800', '430000', '430500000000', '430528000000');
INSERT INTO `t_dic_district` VALUES ('11338', '城步苗族自治县', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43052900', '430000', '430500000000', '430529000000');
INSERT INTO `t_dic_district` VALUES ('11339', '武冈市', null, '邵阳市', '湖南省', 'T', null, '43050000', '43000000', '43058100', '430000', '430500000000', '430581000000');
INSERT INTO `t_dic_district` VALUES ('11340', '市辖区', null, '岳阳市', '湖南省', 'T', null, '43060000', '43000000', '43060100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11341', '岳阳楼区', null, '岳阳市', '湖南省', 'T', null, '43060000', '43000000', '43060200', '430000', '430600000000', '430602000000');
INSERT INTO `t_dic_district` VALUES ('11342', '云溪区', null, '岳阳市', '湖南省', 'T', null, '43060000', '43000000', '43060300', '430000', '430600000000', '430603000000');
INSERT INTO `t_dic_district` VALUES ('11343', '君山区', null, '岳阳市', '湖南省', 'T', null, '43060000', '43000000', '43061100', '430000', '430600000000', '430611000000');
INSERT INTO `t_dic_district` VALUES ('11344', '岳阳县', null, '岳阳市', '湖南省', 'T', null, '43060000', '43000000', '43062100', '430000', '430600000000', '430621000000');
INSERT INTO `t_dic_district` VALUES ('11345', '华容县', null, '岳阳市', '湖南省', 'T', null, '43060000', '43000000', '43062300', '430000', '430600000000', '430623000000');
INSERT INTO `t_dic_district` VALUES ('11346', '湘阴县', null, '岳阳市', '湖南省', 'T', null, '43060000', '43000000', '43062400', '430000', '430600000000', '430624000000');
INSERT INTO `t_dic_district` VALUES ('11347', '平江县', null, '岳阳市', '湖南省', 'T', null, '43060000', '43000000', '43062600', '430000', '430600000000', '430626000000');
INSERT INTO `t_dic_district` VALUES ('11348', '汨罗市', null, '岳阳市', '湖南省', 'T', null, '43060000', '43000000', '43068100', '430000', '430600000000', '430681000000');
INSERT INTO `t_dic_district` VALUES ('11349', '临湘市', null, '岳阳市', '湖南省', 'T', null, '43060000', '43000000', '43068200', '430000', '430600000000', '430682000000');
INSERT INTO `t_dic_district` VALUES ('11350', '市辖区', null, '常德市', '湖南省', 'T', null, '43070000', '43000000', '43070100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11351', '武陵区', null, '常德市', '湖南省', 'T', null, '43070000', '43000000', '43070200', '430000', '430700000000', '430702000000');
INSERT INTO `t_dic_district` VALUES ('11352', '鼎城区', null, '常德市', '湖南省', 'T', null, '43070000', '43000000', '43070300', '430000', '430700000000', '430703000000');
INSERT INTO `t_dic_district` VALUES ('11353', '安乡县', null, '常德市', '湖南省', 'T', null, '43070000', '43000000', '43072100', '430000', '430700000000', '430721000000');
INSERT INTO `t_dic_district` VALUES ('11354', '汉寿县', null, '常德市', '湖南省', 'T', null, '43070000', '43000000', '43072200', '430000', '430700000000', '430722000000');
INSERT INTO `t_dic_district` VALUES ('11355', '开平市', null, '江门市', '广东省', 'T', null, '44070000', '44000000', '44078300', '440000', '440700000000', '440783000000');
INSERT INTO `t_dic_district` VALUES ('11356', '鹤山市', null, '江门市', '广东省', 'T', null, '44070000', '44000000', '44078400', '440000', '440700000000', '440784000000');
INSERT INTO `t_dic_district` VALUES ('11357', '恩平市', null, '江门市', '广东省', 'T', null, '44070000', '44000000', '44078500', '440000', '440700000000', '440785000000');
INSERT INTO `t_dic_district` VALUES ('11358', '市辖区', null, '湛江市', '广东省', 'T', null, '44080000', '44000000', '44080100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11359', '赤坎区', null, '湛江市', '广东省', 'T', null, '44080000', '44000000', '44080200', '440000', '440800000000', '440802000000');
INSERT INTO `t_dic_district` VALUES ('11360', '霞山区', null, '湛江市', '广东省', 'T', null, '44080000', '44000000', '44080300', '440000', '440800000000', '440803000000');
INSERT INTO `t_dic_district` VALUES ('11361', '坡头区', null, '湛江市', '广东省', 'T', null, '44080000', '44000000', '44080400', '440000', '440800000000', '440804000000');
INSERT INTO `t_dic_district` VALUES ('11362', '麻章区', null, '湛江市', '广东省', 'T', null, '44080000', '44000000', '44081100', '440000', '440800000000', '440811000000');
INSERT INTO `t_dic_district` VALUES ('11363', '遂溪县', null, '湛江市', '广东省', 'T', null, '44080000', '44000000', '44082300', '440000', '440800000000', '440823000000');
INSERT INTO `t_dic_district` VALUES ('11364', '徐闻县', null, '湛江市', '广东省', 'T', null, '44080000', '44000000', '44082500', '440000', '440800000000', '440825000000');
INSERT INTO `t_dic_district` VALUES ('11365', '廉江市', null, '湛江市', '广东省', 'T', null, '44080000', '44000000', '44088100', '440000', '440800000000', '440881000000');
INSERT INTO `t_dic_district` VALUES ('11366', '雷州市', null, '湛江市', '广东省', 'T', null, '44080000', '44000000', '44088200', '440000', '440800000000', '440882000000');
INSERT INTO `t_dic_district` VALUES ('11367', '吴川市', null, '湛江市', '广东省', 'T', null, '44080000', '44000000', '44088300', '440000', '440800000000', '440883000000');
INSERT INTO `t_dic_district` VALUES ('11368', '市辖区', null, '茂名市', '广东省', 'T', null, '44090000', '44000000', '44090100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11369', '茂南区', null, '茂名市', '广东省', 'T', null, '44090000', '44000000', '44090200', '440000', '440900000000', '440902000000');
INSERT INTO `t_dic_district` VALUES ('11370', '茂港区', null, '茂名市', '广东省', 'T', null, '44090000', '44000000', '44090300', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11371', '电白区', null, '茂名市', '广东省', 'T', null, '44090000', '44000000', '44092300', '440000', '440900000000', '440904000000');
INSERT INTO `t_dic_district` VALUES ('11372', '高州市', null, '茂名市', '广东省', 'T', null, '44090000', '44000000', '44098100', '440000', '440900000000', '440981000000');
INSERT INTO `t_dic_district` VALUES ('11373', '化州市', null, '茂名市', '广东省', 'T', null, '44090000', '44000000', '44098200', '440000', '440900000000', '440982000000');
INSERT INTO `t_dic_district` VALUES ('11374', '信宜市', null, '茂名市', '广东省', 'T', null, '44090000', '44000000', '44098300', '440000', '440900000000', '440983000000');
INSERT INTO `t_dic_district` VALUES ('11375', '市辖区', null, '肇庆市', '广东省', 'T', null, '44120000', '44000000', '44120100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11376', '端州区', null, '肇庆市', '广东省', 'T', null, '44120000', '44000000', '44120200', '440000', '441200000000', '441202000000');
INSERT INTO `t_dic_district` VALUES ('11377', '宜章县', null, '郴州市', '湖南省', 'T', null, '43100000', '43000000', '43102200', '430000', '431000000000', '431022000000');
INSERT INTO `t_dic_district` VALUES ('11378', '永兴县', null, '郴州市', '湖南省', 'T', null, '43100000', '43000000', '43102300', '430000', '431000000000', '431023000000');
INSERT INTO `t_dic_district` VALUES ('11379', '嘉禾县', null, '郴州市', '湖南省', 'T', null, '43100000', '43000000', '43102400', '430000', '431000000000', '431024000000');
INSERT INTO `t_dic_district` VALUES ('11380', '临武县', null, '郴州市', '湖南省', 'T', null, '43100000', '43000000', '43102500', '430000', '431000000000', '431025000000');
INSERT INTO `t_dic_district` VALUES ('11381', '汝城县', null, '郴州市', '湖南省', 'T', null, '43100000', '43000000', '43102600', '430000', '431000000000', '431026000000');
INSERT INTO `t_dic_district` VALUES ('11382', '桂东县', null, '郴州市', '湖南省', 'T', null, '43100000', '43000000', '43102700', '430000', '431000000000', '431027000000');
INSERT INTO `t_dic_district` VALUES ('11383', '安仁县', null, '郴州市', '湖南省', 'T', null, '43100000', '43000000', '43102800', '430000', '431000000000', '431028000000');
INSERT INTO `t_dic_district` VALUES ('11384', '资兴市', null, '郴州市', '湖南省', 'T', null, '43100000', '43000000', '43108100', '430000', '431000000000', '431081000000');
INSERT INTO `t_dic_district` VALUES ('11385', '市辖区', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43110100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11386', '芝山区', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43110200', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11387', '冷水滩区', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43110300', '430000', '431100000000', '431103000000');
INSERT INTO `t_dic_district` VALUES ('11388', '祁阳县', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43112100', '430000', '431100000000', '431121000000');
INSERT INTO `t_dic_district` VALUES ('11389', '东安县', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43112200', '430000', '431100000000', '431122000000');
INSERT INTO `t_dic_district` VALUES ('11390', '双牌县', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43112300', '430000', '431100000000', '431123000000');
INSERT INTO `t_dic_district` VALUES ('11391', '道县', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43112400', '430000', '431100000000', '431124000000');
INSERT INTO `t_dic_district` VALUES ('11392', '江永县', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43112500', '430000', '431100000000', '431125000000');
INSERT INTO `t_dic_district` VALUES ('11393', '宁远县', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43112600', '430000', '431100000000', '431126000000');
INSERT INTO `t_dic_district` VALUES ('11394', '蓝山县', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43112700', '430000', '431100000000', '431127000000');
INSERT INTO `t_dic_district` VALUES ('11395', '新田县', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43112800', '430000', '431100000000', '431128000000');
INSERT INTO `t_dic_district` VALUES ('11396', '江华瑶族自治县', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43112900', '430000', '431100000000', '431129000000');
INSERT INTO `t_dic_district` VALUES ('11397', '市辖区', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43120100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11398', '鹤城区', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43120200', '430000', '431200000000', '431202000000');
INSERT INTO `t_dic_district` VALUES ('11399', '中方县', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43122100', '430000', '431200000000', '431221000000');
INSERT INTO `t_dic_district` VALUES ('11400', '沅陵县', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43122200', '430000', '431200000000', '431222000000');
INSERT INTO `t_dic_district` VALUES ('11401', '辰溪县', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43122300', '430000', '431200000000', '431223000000');
INSERT INTO `t_dic_district` VALUES ('11402', '溆浦县', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43122400', '430000', '431200000000', '431224000000');
INSERT INTO `t_dic_district` VALUES ('11403', '会同县', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43122500', '430000', '431200000000', '431225000000');
INSERT INTO `t_dic_district` VALUES ('11404', '麻阳苗族自治县', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43122600', '430000', '431200000000', '431226000000');
INSERT INTO `t_dic_district` VALUES ('11405', '新晃侗族自治县', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43122700', '430000', '431200000000', '431227000000');
INSERT INTO `t_dic_district` VALUES ('11406', '芷江侗族自治县', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43122800', '430000', '431200000000', '431228000000');
INSERT INTO `t_dic_district` VALUES ('11407', '靖州苗族侗族自治县', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43122900', '430000', '431200000000', '431229000000');
INSERT INTO `t_dic_district` VALUES ('11408', '通道侗族自治县', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43123000', '430000', '431200000000', '431230000000');
INSERT INTO `t_dic_district` VALUES ('11409', '洪江市', null, '怀化市', '湖南省', 'T', null, '43120000', '43000000', '43128100', '430000', '431200000000', '431281000000');
INSERT INTO `t_dic_district` VALUES ('11410', '市辖区', null, '娄底市', '湖南省', 'T', null, '43130000', '43000000', '43130100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('11411', '娄星区', null, '娄底市', '湖南省', 'T', null, '43130000', '43000000', '43130200', '430000', '431300000000', '431302000000');
INSERT INTO `t_dic_district` VALUES ('11412', '双峰县', null, '娄底市', '湖南省', 'T', null, '43130000', '43000000', '43132100', '430000', '431300000000', '431321000000');
INSERT INTO `t_dic_district` VALUES ('11413', '新化县', null, '娄底市', '湖南省', 'T', null, '43130000', '43000000', '43132200', '430000', '431300000000', '431322000000');
INSERT INTO `t_dic_district` VALUES ('11414', '冷水江市', null, '娄底市', '湖南省', 'T', null, '43130000', '43000000', '43138100', '430000', '431300000000', '431381000000');
INSERT INTO `t_dic_district` VALUES ('11415', '涟源市', null, '娄底市', '湖南省', 'T', null, '43130000', '43000000', '43138200', '430000', '431300000000', '431382000000');
INSERT INTO `t_dic_district` VALUES ('11416', '吉首市', null, '湘西土家族苗族自治州', '湖南省', 'T', null, '43310000', '43000000', '43310100', '430000', '433100000000', '433101000000');
INSERT INTO `t_dic_district` VALUES ('11417', '佛冈县', null, '清远市', '广东省', 'T', null, '44180000', '44000000', '44182100', '440000', '441800000000', '441821000000');
INSERT INTO `t_dic_district` VALUES ('11418', '阳山县', null, '清远市', '广东省', 'T', null, '44180000', '44000000', '44182300', '440000', '441800000000', '441823000000');
INSERT INTO `t_dic_district` VALUES ('11419', '连山壮族瑶族自治县', null, '清远市', '广东省', 'T', null, '44180000', '44000000', '44182500', '440000', '441800000000', '441825000000');
INSERT INTO `t_dic_district` VALUES ('11420', '连南瑶族自治县', null, '清远市', '广东省', 'T', null, '44180000', '44000000', '44182600', '440000', '441800000000', '441826000000');
INSERT INTO `t_dic_district` VALUES ('11421', '清新区', null, '清远市', '广东省', 'T', null, '44180000', '44000000', '44182700', '440000', '441800000000', '441803000000');
INSERT INTO `t_dic_district` VALUES ('11422', '英德市', null, '清远市', '广东省', 'T', null, '44180000', '44000000', '44188100', '440000', '441800000000', '441881000000');
INSERT INTO `t_dic_district` VALUES ('11423', '连州市', null, '清远市', '广东省', 'T', null, '44180000', '44000000', '44188200', '440000', '441800000000', '441882000000');
INSERT INTO `t_dic_district` VALUES ('11424', '市辖区', null, '潮州市', '广东省', 'T', null, '44510000', '44000000', '44510100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11425', '湘桥区', null, '潮州市', '广东省', 'T', null, '44510000', '44000000', '44510200', '440000', '445100000000', '445102000000');
INSERT INTO `t_dic_district` VALUES ('11426', '潮安区', null, '潮州市', '广东省', 'T', null, '44510000', '44000000', '44512100', '440000', '445100000000', '445103000000');
INSERT INTO `t_dic_district` VALUES ('11427', '饶平县', null, '潮州市', '广东省', 'T', null, '44510000', '44000000', '44512200', '440000', '445100000000', '445122000000');
INSERT INTO `t_dic_district` VALUES ('11428', '市辖区', null, '揭阳市', '广东省', 'T', null, '44520000', '44000000', '44520100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11429', '榕城区', null, '揭阳市', '广东省', 'T', null, '44520000', '44000000', '44520200', '440000', '445200000000', '445202000000');
INSERT INTO `t_dic_district` VALUES ('11430', '揭东区', null, '揭阳市', '广东省', 'T', null, '44520000', '44000000', '44522100', '440000', '445200000000', '445203000000');
INSERT INTO `t_dic_district` VALUES ('11431', '揭西县', null, '揭阳市', '广东省', 'T', null, '44520000', '44000000', '44522200', '440000', '445200000000', '445222000000');
INSERT INTO `t_dic_district` VALUES ('11432', '惠来县', null, '揭阳市', '广东省', 'T', null, '44520000', '44000000', '44522400', '440000', '445200000000', '445224000000');
INSERT INTO `t_dic_district` VALUES ('11433', '普宁市', null, '揭阳市', '广东省', 'T', null, '44520000', '44000000', '44528100', '440000', '445200000000', '445281000000');
INSERT INTO `t_dic_district` VALUES ('11434', '市辖区', null, '云浮市', '广东省', 'T', null, '44530000', '44000000', '44530100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11435', '云城区', null, '云浮市', '广东省', 'T', null, '44530000', '44000000', '44530200', '440000', '445300000000', '445302000000');
INSERT INTO `t_dic_district` VALUES ('11436', '北江区', null, '韶关市', '广东省', 'T', null, '44020000', '44000000', '44020200', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11437', '武江区', null, '韶关市', '广东省', 'T', null, '44020000', '44000000', '44020300', '440000', '440200000000', '440203000000');
INSERT INTO `t_dic_district` VALUES ('11438', '浈江区', null, '韶关市', '广东省', 'T', null, '44020000', '44000000', '44020400', '440000', '440200000000', '440204000000');
INSERT INTO `t_dic_district` VALUES ('11439', '曲江区', null, '韶关市', '广东省', 'T', null, '44020000', '44000000', '44022100', '440000', '440200000000', '440205000000');
INSERT INTO `t_dic_district` VALUES ('11440', '始兴县', null, '韶关市', '广东省', 'T', null, '44020000', '44000000', '44022200', '440000', '440200000000', '440222000000');
INSERT INTO `t_dic_district` VALUES ('11441', '仁化县', null, '韶关市', '广东省', 'T', null, '44020000', '44000000', '44022400', '440000', '440200000000', '440224000000');
INSERT INTO `t_dic_district` VALUES ('11442', '翁源县', null, '韶关市', '广东省', 'T', null, '44020000', '44000000', '44022900', '440000', '440200000000', '440229000000');
INSERT INTO `t_dic_district` VALUES ('11443', '乳源瑶族自治县', null, '韶关市', '广东省', 'T', null, '44020000', '44000000', '44023200', '440000', '440200000000', '440232000000');
INSERT INTO `t_dic_district` VALUES ('11444', '新丰县', null, '韶关市', '广东省', 'T', null, '44020000', '44000000', '44023300', '440000', '440200000000', '440233000000');
INSERT INTO `t_dic_district` VALUES ('11445', '乐昌市', null, '韶关市', '广东省', 'T', null, '44020000', '44000000', '44028100', '440000', '440200000000', '440281000000');
INSERT INTO `t_dic_district` VALUES ('11446', '南雄市', null, '韶关市', '广东省', 'T', null, '44020000', '44000000', '44028200', '440000', '440200000000', '440282000000');
INSERT INTO `t_dic_district` VALUES ('11447', '市辖区', null, '深圳市', '广东省', 'T', null, '44030000', '44000000', '44030100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11448', '罗湖区', null, '深圳市', '广东省', 'T', null, '44030000', '44000000', '44030300', '440000', '440300000000', '440303000000');
INSERT INTO `t_dic_district` VALUES ('11449', '福田区', null, '深圳市', '广东省', 'T', null, '44030000', '44000000', '44030400', '440000', '440300000000', '440304000000');
INSERT INTO `t_dic_district` VALUES ('11450', '南山区', null, '深圳市', '广东省', 'T', null, '44030000', '44000000', '44030500', '440000', '440300000000', '440305000000');
INSERT INTO `t_dic_district` VALUES ('11451', '宝安区', null, '深圳市', '广东省', 'T', null, '44030000', '44000000', '44030600', '440000', '440300000000', '440306000000');
INSERT INTO `t_dic_district` VALUES ('11452', '龙岗区', null, '深圳市', '广东省', 'T', null, '44030000', '44000000', '44030700', '440000', '440300000000', '440307000000');
INSERT INTO `t_dic_district` VALUES ('11453', '盐田区', null, '深圳市', '广东省', 'T', null, '44030000', '44000000', '44030800', '440000', '440300000000', '440308000000');
INSERT INTO `t_dic_district` VALUES ('11454', '市辖区', null, '珠海市', '广东省', 'T', null, '44040000', '44000000', '44040100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11455', '香洲区', null, '珠海市', '广东省', 'T', null, '44040000', '44000000', '44040200', '440000', '440400000000', '440402000000');
INSERT INTO `t_dic_district` VALUES ('11456', '斗门区', null, '珠海市', '广东省', 'T', null, '44040000', '44000000', '44040300', '440000', '440400000000', '440403000000');
INSERT INTO `t_dic_district` VALUES ('11457', '金湾区', null, '珠海市', '广东省', 'T', null, '44040000', '44000000', '44040400', '440000', '440400000000', '440404000000');
INSERT INTO `t_dic_district` VALUES ('11458', '市辖区', null, '汕头市', '广东省', 'T', null, '44050000', '44000000', '44050100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11459', '龙湖区', null, '汕头市', '广东省', 'T', null, '44050000', '44000000', '44050700', '440000', '440500000000', '440507000000');
INSERT INTO `t_dic_district` VALUES ('11460', '金平区', null, '汕头市', '广东省', 'T', null, '44050000', '44000000', '44051100', '440000', '440500000000', '440511000000');
INSERT INTO `t_dic_district` VALUES ('11461', '濠江区', null, '汕头市', '广东省', 'T', null, '44050000', '44000000', '44051200', '440000', '440500000000', '440512000000');
INSERT INTO `t_dic_district` VALUES ('11462', '潮阳区', null, '汕头市', '广东省', 'T', null, '44050000', '44000000', '44051300', '440000', '440500000000', '440513000000');
INSERT INTO `t_dic_district` VALUES ('11463', '潮南区', null, '汕头市', '广东省', 'T', null, '44050000', '44000000', '44051400', '440000', '440500000000', '440514000000');
INSERT INTO `t_dic_district` VALUES ('11464', '澄海区', null, '汕头市', '广东省', 'T', null, '44050000', '44000000', '44051500', '440000', '440500000000', '440515000000');
INSERT INTO `t_dic_district` VALUES ('11465', '南澳县', null, '汕头市', '广东省', 'T', null, '44050000', '44000000', '44052300', '440000', '440500000000', '440523000000');
INSERT INTO `t_dic_district` VALUES ('11466', '市辖区', null, '佛山市', '广东省', 'T', null, '44060000', '44000000', '44060100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11467', '禅城区', null, '佛山市', '广东省', 'T', null, '44060000', '44000000', '44060400', '440000', '440600000000', '440604000000');
INSERT INTO `t_dic_district` VALUES ('11468', '南海区', null, '佛山市', '广东省', 'T', null, '44060000', '44000000', '44060500', '440000', '440600000000', '440605000000');
INSERT INTO `t_dic_district` VALUES ('11469', '顺德区', null, '佛山市', '广东省', 'T', null, '44060000', '44000000', '44060600', '440000', '440600000000', '440606000000');
INSERT INTO `t_dic_district` VALUES ('11470', '三水区', null, '佛山市', '广东省', 'T', null, '44060000', '44000000', '44060700', '440000', '440600000000', '440607000000');
INSERT INTO `t_dic_district` VALUES ('11471', '高明区', null, '佛山市', '广东省', 'T', null, '44060000', '44000000', '44060800', '440000', '440600000000', '440608000000');
INSERT INTO `t_dic_district` VALUES ('11472', '市辖区', null, '江门市', '广东省', 'T', null, '44070000', '44000000', '44070100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11473', '蓬江区', null, '江门市', '广东省', 'T', null, '44070000', '44000000', '44070300', '440000', '440700000000', '440703000000');
INSERT INTO `t_dic_district` VALUES ('11474', '江海区', null, '江门市', '广东省', 'T', null, '44070000', '44000000', '44070400', '440000', '440700000000', '440704000000');
INSERT INTO `t_dic_district` VALUES ('11475', '新会区', null, '江门市', '广东省', 'T', null, '44070000', '44000000', '44070500', '440000', '440700000000', '440705000000');
INSERT INTO `t_dic_district` VALUES ('11476', '台山市', null, '江门市', '广东省', 'T', null, '44070000', '44000000', '44078100', '440000', '440700000000', '440781000000');
INSERT INTO `t_dic_district` VALUES ('11477', '灌阳县', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45032700', '450000', '450300000000', '450327000000');
INSERT INTO `t_dic_district` VALUES ('11478', '龙胜各族自治县', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45032800', '450000', '450300000000', '450328000000');
INSERT INTO `t_dic_district` VALUES ('11479', '资源县', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45032900', '450000', '450300000000', '450329000000');
INSERT INTO `t_dic_district` VALUES ('11480', '平乐县', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45033000', '450000', '450300000000', '450330000000');
INSERT INTO `t_dic_district` VALUES ('11481', '荔浦县', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45033100', '450000', '450300000000', '450331000000');
INSERT INTO `t_dic_district` VALUES ('11482', '恭城瑶族自治县', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45033200', '450000', '450300000000', '450332000000');
INSERT INTO `t_dic_district` VALUES ('11483', '市辖区', null, '梧州市', '广西壮族自治区', 'T', null, '45040000', '45000000', '45040100', '450000', '451400000000', '451401000000');
INSERT INTO `t_dic_district` VALUES ('11484', '万秀区', null, '梧州市', '广西壮族自治区', 'T', null, '45040000', '45000000', '45040300', '450000', '450400000000', '450403000000');
INSERT INTO `t_dic_district` VALUES ('11485', '蝶山区', null, '梧州市', '广西壮族自治区', 'T', null, '45040000', '45000000', '45040400', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11486', '长洲区', null, '梧州市', '广西壮族自治区', 'T', null, '45040000', '45000000', '45040500', '450000', '450400000000', '450405000000');
INSERT INTO `t_dic_district` VALUES ('11487', '苍梧县', null, '梧州市', '广西壮族自治区', 'T', null, '45040000', '45000000', '45042100', '450000', '450400000000', '450421000000');
INSERT INTO `t_dic_district` VALUES ('11488', '藤县', null, '梧州市', '广西壮族自治区', 'T', null, '45040000', '45000000', '45042200', '450000', '450400000000', '450422000000');
INSERT INTO `t_dic_district` VALUES ('11489', '蒙山县', null, '梧州市', '广西壮族自治区', 'T', null, '45040000', '45000000', '45042300', '450000', '450400000000', '450423000000');
INSERT INTO `t_dic_district` VALUES ('11490', '岑溪市', null, '梧州市', '广西壮族自治区', 'T', null, '45040000', '45000000', '45048100', '450000', '450400000000', '450481000000');
INSERT INTO `t_dic_district` VALUES ('11491', '市辖区', null, '北海市', '广西壮族自治区', 'T', null, '45050000', '45000000', '45050100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11492', '海城区', null, '北海市', '广西壮族自治区', 'T', null, '45050000', '45000000', '45050200', '450000', '450500000000', '450502000000');
INSERT INTO `t_dic_district` VALUES ('11493', '银海区', null, '北海市', '广西壮族自治区', 'T', null, '45050000', '45000000', '45050300', '450000', '450500000000', '450503000000');
INSERT INTO `t_dic_district` VALUES ('11494', '铁山港区', null, '北海市', '广西壮族自治区', 'T', null, '45050000', '45000000', '45051200', '450000', '450500000000', '450512000000');
INSERT INTO `t_dic_district` VALUES ('11495', '合浦县', null, '北海市', '广西壮族自治区', 'T', null, '45050000', '45000000', '45052100', '450000', '450500000000', '450521000000');
INSERT INTO `t_dic_district` VALUES ('11496', '鼎湖区', null, '肇庆市', '广东省', 'T', null, '44120000', '44000000', '44120300', '440000', '441200000000', '441203000000');
INSERT INTO `t_dic_district` VALUES ('11497', '广宁县', null, '肇庆市', '广东省', 'T', null, '44120000', '44000000', '44122300', '440000', '441200000000', '441223000000');
INSERT INTO `t_dic_district` VALUES ('11498', '怀集县', null, '肇庆市', '广东省', 'T', null, '44120000', '44000000', '44122400', '440000', '441200000000', '441224000000');
INSERT INTO `t_dic_district` VALUES ('11499', '封开县', null, '肇庆市', '广东省', 'T', null, '44120000', '44000000', '44122500', '440000', '441200000000', '441225000000');
INSERT INTO `t_dic_district` VALUES ('11500', '德庆县', null, '肇庆市', '广东省', 'T', null, '44120000', '44000000', '44122600', '440000', '441200000000', '441226000000');
INSERT INTO `t_dic_district` VALUES ('11501', '高要区', null, '肇庆市', '广东省', 'T', null, '44120000', '44000000', '44128300', '440000', '441200000000', '441204000000');
INSERT INTO `t_dic_district` VALUES ('11502', '四会市', null, '肇庆市', '广东省', 'T', null, '44120000', '44000000', '44128400', '440000', '441200000000', '441284000000');
INSERT INTO `t_dic_district` VALUES ('11503', '市辖区', null, '惠州市', '广东省', 'T', null, '44130000', '44000000', '44130100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11504', '惠城区', null, '惠州市', '广东省', 'T', null, '44130000', '44000000', '44130200', '440000', '441300000000', '441302000000');
INSERT INTO `t_dic_district` VALUES ('11505', '惠阳区', null, '惠州市', '广东省', 'T', null, '44130000', '44000000', '44130300', '440000', '441300000000', '441303000000');
INSERT INTO `t_dic_district` VALUES ('11506', '博罗县', null, '惠州市', '广东省', 'T', null, '44130000', '44000000', '44132200', '440000', '441300000000', '441322000000');
INSERT INTO `t_dic_district` VALUES ('11507', '惠东县', null, '惠州市', '广东省', 'T', null, '44130000', '44000000', '44132300', '440000', '441300000000', '441323000000');
INSERT INTO `t_dic_district` VALUES ('11508', '龙门县', null, '惠州市', '广东省', 'T', null, '44130000', '44000000', '44132400', '440000', '441300000000', '441324000000');
INSERT INTO `t_dic_district` VALUES ('11509', '市辖区', null, '梅州市', '广东省', 'T', null, '44140000', '44000000', '44140100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11510', '梅江区', null, '梅州市', '广东省', 'T', null, '44140000', '44000000', '44140200', '440000', '441400000000', '441402000000');
INSERT INTO `t_dic_district` VALUES ('11511', '梅县区', null, '梅州市', '广东省', 'T', null, '44140000', '44000000', '44142100', '440000', '441400000000', '441403000000');
INSERT INTO `t_dic_district` VALUES ('11512', '大埔县', null, '梅州市', '广东省', 'T', null, '44140000', '44000000', '44142200', '440000', '441400000000', '441422000000');
INSERT INTO `t_dic_district` VALUES ('11513', '丰顺县', null, '梅州市', '广东省', 'T', null, '44140000', '44000000', '44142300', '440000', '441400000000', '441423000000');
INSERT INTO `t_dic_district` VALUES ('11514', '五华县', null, '梅州市', '广东省', 'T', null, '44140000', '44000000', '44142400', '440000', '441400000000', '441424000000');
INSERT INTO `t_dic_district` VALUES ('11515', '平远县', null, '梅州市', '广东省', 'T', null, '44140000', '44000000', '44142600', '440000', '441400000000', '441426000000');
INSERT INTO `t_dic_district` VALUES ('11516', '蕉岭县', null, '梅州市', '广东省', 'T', null, '44140000', '44000000', '44142700', '440000', '441400000000', '441427000000');
INSERT INTO `t_dic_district` VALUES ('11517', '兴宁市', null, '梅州市', '广东省', 'T', null, '44140000', '44000000', '44148100', '440000', '441400000000', '441481000000');
INSERT INTO `t_dic_district` VALUES ('11518', '市辖区', null, '汕尾市', '广东省', 'T', null, '44150000', '44000000', '44150100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11519', '城区', null, '汕尾市', '广东省', 'T', null, '44150000', '44000000', '44150200', '440000', '441500000000', '441502000000');
INSERT INTO `t_dic_district` VALUES ('11520', '海丰县', null, '汕尾市', '广东省', 'T', null, '44150000', '44000000', '44152100', '440000', '441500000000', '441521000000');
INSERT INTO `t_dic_district` VALUES ('11521', '陆河县', null, '汕尾市', '广东省', 'T', null, '44150000', '44000000', '44152300', '440000', '441500000000', '441523000000');
INSERT INTO `t_dic_district` VALUES ('11522', '陆丰市', null, '汕尾市', '广东省', 'T', null, '44150000', '44000000', '44158100', '440000', '441500000000', '441581000000');
INSERT INTO `t_dic_district` VALUES ('11523', '市辖区', null, '河源市', '广东省', 'T', null, '44160000', '44000000', '44160100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11524', '源城区', null, '河源市', '广东省', 'T', null, '44160000', '44000000', '44160200', '440000', '441600000000', '441602000000');
INSERT INTO `t_dic_district` VALUES ('11525', '紫金县', null, '河源市', '广东省', 'T', null, '44160000', '44000000', '44162100', '440000', '441600000000', '441621000000');
INSERT INTO `t_dic_district` VALUES ('11526', '龙川县', null, '河源市', '广东省', 'T', null, '44160000', '44000000', '44162200', '440000', '441600000000', '441622000000');
INSERT INTO `t_dic_district` VALUES ('11527', '连平县', null, '河源市', '广东省', 'T', null, '44160000', '44000000', '44162300', '440000', '441600000000', '441623000000');
INSERT INTO `t_dic_district` VALUES ('11528', '和平县', null, '河源市', '广东省', 'T', null, '44160000', '44000000', '44162400', '440000', '441600000000', '441624000000');
INSERT INTO `t_dic_district` VALUES ('11529', '东源县', null, '河源市', '广东省', 'T', null, '44160000', '44000000', '44162500', '440000', '441600000000', '441625000000');
INSERT INTO `t_dic_district` VALUES ('11530', '市辖区', null, '阳江市', '广东省', 'T', null, '44170000', '44000000', '44170100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11531', '江城区', null, '阳江市', '广东省', 'T', null, '44170000', '44000000', '44170200', '440000', '441700000000', '441702000000');
INSERT INTO `t_dic_district` VALUES ('11532', '阳西县', null, '阳江市', '广东省', 'T', null, '44170000', '44000000', '44172100', '440000', '441700000000', '441721000000');
INSERT INTO `t_dic_district` VALUES ('11533', '阳东区', null, '阳江市', '广东省', 'T', null, '44170000', '44000000', '44172300', '440000', '441700000000', '441704000000');
INSERT INTO `t_dic_district` VALUES ('11534', '阳春市', null, '阳江市', '广东省', 'T', null, '44170000', '44000000', '44178100', '440000', '441700000000', '441781000000');
INSERT INTO `t_dic_district` VALUES ('11535', '市辖区', null, '清远市', '广东省', 'T', null, '44180000', '44000000', '44180100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('11536', '清城区', null, '清远市', '广东省', 'T', null, '44180000', '44000000', '44180200', '440000', '441800000000', '441802000000');
INSERT INTO `t_dic_district` VALUES ('11537', '钟山县', null, '贺州市', '广西壮族自治区', 'T', null, '45110000', '45000000', '45112200', '450000', '451100000000', '451122000000');
INSERT INTO `t_dic_district` VALUES ('11538', '富川瑶族自治县', null, '贺州市', '广西壮族自治区', 'T', null, '45110000', '45000000', '45112300', '450000', '451100000000', '451123000000');
INSERT INTO `t_dic_district` VALUES ('11539', '市辖区', null, '河池市', '广西壮族自治区', 'T', null, '45120000', '45000000', '45120100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11540', '金城江区', null, '河池市', '广西壮族自治区', 'T', null, '45120000', '45000000', '45120200', '450000', '451200000000', '451202000000');
INSERT INTO `t_dic_district` VALUES ('11541', '南丹县', null, '河池市', '广西壮族自治区', 'T', null, '45120000', '45000000', '45122100', '450000', '451200000000', '451221000000');
INSERT INTO `t_dic_district` VALUES ('11542', '天峨县', null, '河池市', '广西壮族自治区', 'T', null, '45120000', '45000000', '45122200', '450000', '451200000000', '451222000000');
INSERT INTO `t_dic_district` VALUES ('11543', '凤山县', null, '河池市', '广西壮族自治区', 'T', null, '45120000', '45000000', '45122300', '450000', '451200000000', '451223000000');
INSERT INTO `t_dic_district` VALUES ('11544', '东兰县', null, '河池市', '广西壮族自治区', 'T', null, '45120000', '45000000', '45122400', '450000', '451200000000', '451224000000');
INSERT INTO `t_dic_district` VALUES ('11545', '罗城仫佬族自治县', null, '河池市', '广西壮族自治区', 'T', null, '45120000', '45000000', '45122500', '450000', '451200000000', '451225000000');
INSERT INTO `t_dic_district` VALUES ('11546', '环江毛南族自治县', null, '河池市', '广西壮族自治区', 'T', null, '45120000', '45000000', '45122600', '450000', '451200000000', '451226000000');
INSERT INTO `t_dic_district` VALUES ('11547', '巴马瑶族自治县', null, '河池市', '广西壮族自治区', 'T', null, '45120000', '45000000', '45122700', '450000', '451200000000', '451227000000');
INSERT INTO `t_dic_district` VALUES ('11548', '都安瑶族自治县', null, '河池市', '广西壮族自治区', 'T', null, '45120000', '45000000', '45122800', '450000', '451200000000', '451228000000');
INSERT INTO `t_dic_district` VALUES ('11549', '大化瑶族自治县', null, '河池市', '广西壮族自治区', 'T', null, '45120000', '45000000', '45122900', '450000', '451200000000', '451229000000');
INSERT INTO `t_dic_district` VALUES ('11550', '宜州市', null, '河池市', '广西壮族自治区', 'T', null, '45120000', '45000000', '45128100', '450000', '451200000000', '451281000000');
INSERT INTO `t_dic_district` VALUES ('11551', '市辖区', null, '来宾市', '广西壮族自治区', 'T', null, '45130000', '45000000', '45130100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11552', '兴宾区', null, '来宾市', '广西壮族自治区', 'T', null, '45130000', '45000000', '45130200', '450000', '451300000000', '451302000000');
INSERT INTO `t_dic_district` VALUES ('11553', '忻城县', null, '来宾市', '广西壮族自治区', 'T', null, '45130000', '45000000', '45132100', '450000', '451300000000', '451321000000');
INSERT INTO `t_dic_district` VALUES ('11554', '象州县', null, '来宾市', '广西壮族自治区', 'T', null, '45130000', '45000000', '45132200', '450000', '451300000000', '451322000000');
INSERT INTO `t_dic_district` VALUES ('11555', '武宣县', null, '来宾市', '广西壮族自治区', 'T', null, '45130000', '45000000', '45132300', '450000', '451300000000', '451323000000');
INSERT INTO `t_dic_district` VALUES ('11556', '新兴县', null, '云浮市', '广东省', 'T', null, '44530000', '44000000', '44532100', '440000', '445300000000', '445321000000');
INSERT INTO `t_dic_district` VALUES ('11557', '郁南县', null, '云浮市', '广东省', 'T', null, '44530000', '44000000', '44532200', '440000', '445300000000', '445322000000');
INSERT INTO `t_dic_district` VALUES ('11558', '云安区', null, '云浮市', '广东省', 'T', null, '44530000', '44000000', '44532300', '440000', '445300000000', '445303000000');
INSERT INTO `t_dic_district` VALUES ('11559', '罗定市', null, '云浮市', '广东省', 'T', null, '44530000', '44000000', '44538100', '440000', '445300000000', '445381000000');
INSERT INTO `t_dic_district` VALUES ('11560', '市辖区', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45010100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11561', '兴宁区', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45010200', '450000', '450100000000', '450102000000');
INSERT INTO `t_dic_district` VALUES ('11562', '青秀区', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45010300', '450000', '450100000000', '450103000000');
INSERT INTO `t_dic_district` VALUES ('11563', '城北区', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45010400', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11564', '江南区', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45010500', '450000', '450100000000', '450105000000');
INSERT INTO `t_dic_district` VALUES ('11565', '永新区', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45010600', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11566', '邕宁区', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45012100', '450000', '450100000000', '450109000000');
INSERT INTO `t_dic_district` VALUES ('11567', '武鸣区', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45012200', '450000', '450100000000', '450110000000');
INSERT INTO `t_dic_district` VALUES ('11568', '隆安县', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45012300', '450000', '450100000000', '450123000000');
INSERT INTO `t_dic_district` VALUES ('11569', '马山县', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45012400', '450000', '450100000000', '450124000000');
INSERT INTO `t_dic_district` VALUES ('11570', '上林县', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45012500', '450000', '450100000000', '450125000000');
INSERT INTO `t_dic_district` VALUES ('11571', '宾阳县', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45012600', '450000', '450100000000', '450126000000');
INSERT INTO `t_dic_district` VALUES ('11572', '横县', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45012700', '450000', '450100000000', '450127000000');
INSERT INTO `t_dic_district` VALUES ('11573', '市辖区', null, '柳州市', '广西壮族自治区', 'T', null, '45020000', '45000000', '45020100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11574', '城中区', null, '柳州市', '广西壮族自治区', 'T', null, '45020000', '45000000', '45020200', '450000', '450200000000', '450202000000');
INSERT INTO `t_dic_district` VALUES ('11575', '鱼峰区', null, '柳州市', '广西壮族自治区', 'T', null, '45020000', '45000000', '45020300', '450000', '450200000000', '450203000000');
INSERT INTO `t_dic_district` VALUES ('11576', '柳南区', null, '柳州市', '广西壮族自治区', 'T', null, '45020000', '45000000', '45020400', '450000', '450200000000', '450204000000');
INSERT INTO `t_dic_district` VALUES ('11577', '柳北区', null, '柳州市', '广西壮族自治区', 'T', null, '45020000', '45000000', '45020500', '450000', '450200000000', '450205000000');
INSERT INTO `t_dic_district` VALUES ('11578', '柳江区', null, '柳州市', '广西壮族自治区', 'T', null, '45020000', '45000000', '45022100', '450000', '450200000000', '450206000000');
INSERT INTO `t_dic_district` VALUES ('11579', '柳城县', null, '柳州市', '广西壮族自治区', 'T', null, '45020000', '45000000', '45022200', '450000', '450200000000', '450222000000');
INSERT INTO `t_dic_district` VALUES ('11580', '鹿寨县', null, '柳州市', '广西壮族自治区', 'T', null, '45020000', '45000000', '45022300', '450000', '450200000000', '450223000000');
INSERT INTO `t_dic_district` VALUES ('11581', '融安县', null, '柳州市', '广西壮族自治区', 'T', null, '45020000', '45000000', '45022400', '450000', '450200000000', '450224000000');
INSERT INTO `t_dic_district` VALUES ('11582', '融水苗族自治县', null, '柳州市', '广西壮族自治区', 'T', null, '45020000', '45000000', '45022500', '450000', '450200000000', '450225000000');
INSERT INTO `t_dic_district` VALUES ('11583', '三江侗族自治县', null, '柳州市', '广西壮族自治区', 'T', null, '45020000', '45000000', '45022600', '450000', '450200000000', '450226000000');
INSERT INTO `t_dic_district` VALUES ('11584', '市辖区', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45030100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11585', '秀峰区', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45030200', '450000', '450300000000', '450302000000');
INSERT INTO `t_dic_district` VALUES ('11586', '叠彩区', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45030300', '450000', '450300000000', '450303000000');
INSERT INTO `t_dic_district` VALUES ('11587', '象山区', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45030400', '450000', '450300000000', '450304000000');
INSERT INTO `t_dic_district` VALUES ('11588', '七星区', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45030500', '450000', '450300000000', '450305000000');
INSERT INTO `t_dic_district` VALUES ('11589', '雁山区', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45031100', '450000', '450300000000', '450311000000');
INSERT INTO `t_dic_district` VALUES ('11590', '阳朔县', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45032100', '450000', '450300000000', '450321000000');
INSERT INTO `t_dic_district` VALUES ('11591', '临桂区', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45032200', '450000', '450300000000', '450312000000');
INSERT INTO `t_dic_district` VALUES ('11592', '灵川县', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45032300', '450000', '450300000000', '450323000000');
INSERT INTO `t_dic_district` VALUES ('11593', '全州县', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45032400', '450000', '450300000000', '450324000000');
INSERT INTO `t_dic_district` VALUES ('11594', '兴安县', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45032500', '450000', '450300000000', '450325000000');
INSERT INTO `t_dic_district` VALUES ('11595', '永福县', null, '桂林市', '广西壮族自治区', 'T', null, '45030000', '45000000', '45032600', '450000', '450300000000', '450326000000');
INSERT INTO `t_dic_district` VALUES ('11596', '涪陵区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50010200', '500000', '500100000000', '500102000000');
INSERT INTO `t_dic_district` VALUES ('11597', '渝中区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50010300', '500000', '500100000000', '500103000000');
INSERT INTO `t_dic_district` VALUES ('11598', '大渡口区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50010400', '500000', '500100000000', '500104000000');
INSERT INTO `t_dic_district` VALUES ('11599', '江北区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50010500', '500000', '500100000000', '500105000000');
INSERT INTO `t_dic_district` VALUES ('11600', '沙坪坝区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50010600', '500000', '500100000000', '500106000000');
INSERT INTO `t_dic_district` VALUES ('11601', '九龙坡区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50010700', '500000', '500100000000', '500107000000');
INSERT INTO `t_dic_district` VALUES ('11602', '南岸区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50010800', '500000', '500100000000', '500108000000');
INSERT INTO `t_dic_district` VALUES ('11603', '北碚区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50010900', '500000', '500100000000', '500109000000');
INSERT INTO `t_dic_district` VALUES ('11604', '万盛区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50011000', '500000', null, null);
INSERT INTO `t_dic_district` VALUES ('11605', '双桥区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50011100', '500000', null, null);
INSERT INTO `t_dic_district` VALUES ('11606', '渝北区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50011200', '500000', '500100000000', '500112000000');
INSERT INTO `t_dic_district` VALUES ('11607', '巴南区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50011300', '500000', '500100000000', '500113000000');
INSERT INTO `t_dic_district` VALUES ('11608', '黔江区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50011400', '500000', '500100000000', '500114000000');
INSERT INTO `t_dic_district` VALUES ('11609', '长寿区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50011500', '500000', '500100000000', '500115000000');
INSERT INTO `t_dic_district` VALUES ('11610', '綦江区', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50022200', '500000', '500100000000', '500110000000');
INSERT INTO `t_dic_district` VALUES ('11611', '潼南区', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50022300', '500000', '500100000000', '500152000000');
INSERT INTO `t_dic_district` VALUES ('11612', '铜梁区', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50022400', '500000', '500100000000', '500151000000');
INSERT INTO `t_dic_district` VALUES ('11613', '大足区', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50022500', '500000', '500100000000', '500111000000');
INSERT INTO `t_dic_district` VALUES ('11614', '荣昌区', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50022600', '500000', '500100000000', '500153000000');
INSERT INTO `t_dic_district` VALUES ('11615', '璧山区', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50022700', '500000', '500100000000', '500120000000');
INSERT INTO `t_dic_district` VALUES ('11616', '梁平县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50022800', '500000', '500200000000', '500228000000');
INSERT INTO `t_dic_district` VALUES ('11617', '城口县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50022900', '500000', '500200000000', '500229000000');
INSERT INTO `t_dic_district` VALUES ('11618', '市辖区', null, '防城港市', '广西壮族自治区', 'T', null, '45060000', '45000000', '45060100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11619', '港口区', null, '防城港市', '广西壮族自治区', 'T', null, '45060000', '45000000', '45060200', '450000', '450600000000', '450602000000');
INSERT INTO `t_dic_district` VALUES ('11620', '防城区', null, '防城港市', '广西壮族自治区', 'T', null, '45060000', '45000000', '45060300', '450000', '450600000000', '450603000000');
INSERT INTO `t_dic_district` VALUES ('11621', '上思县', null, '防城港市', '广西壮族自治区', 'T', null, '45060000', '45000000', '45062100', '450000', '450600000000', '450621000000');
INSERT INTO `t_dic_district` VALUES ('11622', '东兴市', null, '防城港市', '广西壮族自治区', 'T', null, '45060000', '45000000', '45068100', '450000', '450600000000', '450681000000');
INSERT INTO `t_dic_district` VALUES ('11623', '市辖区', null, '钦州市', '广西壮族自治区', 'T', null, '45070000', '45000000', '45070100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11624', '钦南区', null, '钦州市', '广西壮族自治区', 'T', null, '45070000', '45000000', '45070200', '450000', '450700000000', '450702000000');
INSERT INTO `t_dic_district` VALUES ('11625', '钦北区', null, '钦州市', '广西壮族自治区', 'T', null, '45070000', '45000000', '45070300', '450000', '450700000000', '450703000000');
INSERT INTO `t_dic_district` VALUES ('11626', '灵山县', null, '钦州市', '广西壮族自治区', 'T', null, '45070000', '45000000', '45072100', '450000', '450700000000', '450721000000');
INSERT INTO `t_dic_district` VALUES ('11627', '浦北县', null, '钦州市', '广西壮族自治区', 'T', null, '45070000', '45000000', '45072200', '450000', '450700000000', '450722000000');
INSERT INTO `t_dic_district` VALUES ('11628', '市辖区', null, '贵港市', '广西壮族自治区', 'T', null, '45080000', '45000000', '45080100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11629', '港北区', null, '贵港市', '广西壮族自治区', 'T', null, '45080000', '45000000', '45080200', '450000', '450800000000', '450802000000');
INSERT INTO `t_dic_district` VALUES ('11630', '港南区', null, '贵港市', '广西壮族自治区', 'T', null, '45080000', '45000000', '45080300', '450000', '450800000000', '450803000000');
INSERT INTO `t_dic_district` VALUES ('11631', '覃塘区', null, '贵港市', '广西壮族自治区', 'T', null, '45080000', '45000000', '45080400', '450000', '450800000000', '450804000000');
INSERT INTO `t_dic_district` VALUES ('11632', '平南县', null, '贵港市', '广西壮族自治区', 'T', null, '45080000', '45000000', '45082100', '450000', '450800000000', '450821000000');
INSERT INTO `t_dic_district` VALUES ('11633', '桂平市', null, '贵港市', '广西壮族自治区', 'T', null, '45080000', '45000000', '45088100', '450000', '450800000000', '450881000000');
INSERT INTO `t_dic_district` VALUES ('11634', '市辖区', null, '玉林市', '广西壮族自治区', 'T', null, '45090000', '45000000', '45090100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11635', '玉州区', null, '玉林市', '广西壮族自治区', 'T', null, '45090000', '45000000', '45090200', '450000', '450900000000', '450902000000');
INSERT INTO `t_dic_district` VALUES ('11636', '容县', null, '玉林市', '广西壮族自治区', 'T', null, '45090000', '45000000', '45092100', '450000', '450900000000', '450921000000');
INSERT INTO `t_dic_district` VALUES ('11637', '陆川县', null, '玉林市', '广西壮族自治区', 'T', null, '45090000', '45000000', '45092200', '450000', '450900000000', '450922000000');
INSERT INTO `t_dic_district` VALUES ('11638', '博白县', null, '玉林市', '广西壮族自治区', 'T', null, '45090000', '45000000', '45092300', '450000', '450900000000', '450923000000');
INSERT INTO `t_dic_district` VALUES ('11639', '兴业县', null, '玉林市', '广西壮族自治区', 'T', null, '45090000', '45000000', '45092400', '450000', '450900000000', '450924000000');
INSERT INTO `t_dic_district` VALUES ('11640', '北流市', null, '玉林市', '广西壮族自治区', 'T', null, '45090000', '45000000', '45098100', '450000', '450900000000', '450981000000');
INSERT INTO `t_dic_district` VALUES ('11641', '市辖区', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45100100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11642', '右江区', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45100200', '450000', '451000000000', '451002000000');
INSERT INTO `t_dic_district` VALUES ('11643', '田阳县', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45102100', '450000', '451000000000', '451021000000');
INSERT INTO `t_dic_district` VALUES ('11644', '田东县', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45102200', '450000', '451000000000', '451022000000');
INSERT INTO `t_dic_district` VALUES ('11645', '平果县', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45102300', '450000', '451000000000', '451023000000');
INSERT INTO `t_dic_district` VALUES ('11646', '德保县', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45102400', '450000', '451000000000', '451024000000');
INSERT INTO `t_dic_district` VALUES ('11647', '靖西市', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45102500', '450000', '451000000000', '451081000000');
INSERT INTO `t_dic_district` VALUES ('11648', '那坡县', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45102600', '450000', '451000000000', '451026000000');
INSERT INTO `t_dic_district` VALUES ('11649', '凌云县', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45102700', '450000', '451000000000', '451027000000');
INSERT INTO `t_dic_district` VALUES ('11650', '乐业县', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45102800', '450000', '451000000000', '451028000000');
INSERT INTO `t_dic_district` VALUES ('11651', '田林县', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45102900', '450000', '451000000000', '451029000000');
INSERT INTO `t_dic_district` VALUES ('11652', '西林县', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45103000', '450000', '451000000000', '451030000000');
INSERT INTO `t_dic_district` VALUES ('11653', '隆林各族自治县', null, '百色市', '广西壮族自治区', 'T', null, '45100000', '45000000', '45103100', '450000', '451000000000', '451031000000');
INSERT INTO `t_dic_district` VALUES ('11654', '市辖区', null, '贺州市', '广西壮族自治区', 'T', null, '45110000', '45000000', '45110100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11655', '八步区', null, '贺州市', '广西壮族自治区', 'T', null, '45110000', '45000000', '45110200', '450000', '451100000000', '451102000000');
INSERT INTO `t_dic_district` VALUES ('11656', '昭平县', null, '贺州市', '广西壮族自治区', 'T', null, '45110000', '45000000', '45112100', '450000', '451100000000', '451121000000');
INSERT INTO `t_dic_district` VALUES ('11657', '富顺县', null, '自贡市', '四川省', 'T', null, '51030000', '51000000', '51032200', '510000', '510300000000', '510322000000');
INSERT INTO `t_dic_district` VALUES ('11658', '市辖区', null, '攀枝花市', '四川省', 'T', null, '51040000', '51000000', '51040100', '510000', '512000000000', '512001000000');
INSERT INTO `t_dic_district` VALUES ('11659', '东区', null, '攀枝花市', '四川省', 'T', null, '51040000', '51000000', '51040200', '510000', '510400000000', '510402000000');
INSERT INTO `t_dic_district` VALUES ('11660', '西区', null, '攀枝花市', '四川省', 'T', null, '51040000', '51000000', '51040300', '510000', '510400000000', '510403000000');
INSERT INTO `t_dic_district` VALUES ('11661', '仁和区', null, '攀枝花市', '四川省', 'T', null, '51040000', '51000000', '51041100', '510000', '510400000000', '510411000000');
INSERT INTO `t_dic_district` VALUES ('11662', '米易县', null, '攀枝花市', '四川省', 'T', null, '51040000', '51000000', '51042100', '510000', '510400000000', '510421000000');
INSERT INTO `t_dic_district` VALUES ('11663', '盐边县', null, '攀枝花市', '四川省', 'T', null, '51040000', '51000000', '51042200', '510000', '510400000000', '510422000000');
INSERT INTO `t_dic_district` VALUES ('11664', '市辖区', null, '泸州市', '四川省', 'T', null, '51050000', '51000000', '51050100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11665', '江阳区', null, '泸州市', '四川省', 'T', null, '51050000', '51000000', '51050200', '510000', '510500000000', '510502000000');
INSERT INTO `t_dic_district` VALUES ('11666', '纳溪区', null, '泸州市', '四川省', 'T', null, '51050000', '51000000', '51050300', '510000', '510500000000', '510503000000');
INSERT INTO `t_dic_district` VALUES ('11667', '龙马潭区', null, '泸州市', '四川省', 'T', null, '51050000', '51000000', '51050400', '510000', '510500000000', '510504000000');
INSERT INTO `t_dic_district` VALUES ('11668', '泸县', null, '泸州市', '四川省', 'T', null, '51050000', '51000000', '51052100', '510000', '510500000000', '510521000000');
INSERT INTO `t_dic_district` VALUES ('11669', '合江县', null, '泸州市', '四川省', 'T', null, '51050000', '51000000', '51052200', '510000', '510500000000', '510522000000');
INSERT INTO `t_dic_district` VALUES ('11670', '叙永县', null, '泸州市', '四川省', 'T', null, '51050000', '51000000', '51052400', '510000', '510500000000', '510524000000');
INSERT INTO `t_dic_district` VALUES ('11671', '古蔺县', null, '泸州市', '四川省', 'T', null, '51050000', '51000000', '51052500', '510000', '510500000000', '510525000000');
INSERT INTO `t_dic_district` VALUES ('11672', '市辖区', null, '德阳市', '四川省', 'T', null, '51060000', '51000000', '51060100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11673', '旌阳区', null, '德阳市', '四川省', 'T', null, '51060000', '51000000', '51060300', '510000', '510600000000', '510603000000');
INSERT INTO `t_dic_district` VALUES ('11674', '中江县', null, '德阳市', '四川省', 'T', null, '51060000', '51000000', '51062300', '510000', '510600000000', '510623000000');
INSERT INTO `t_dic_district` VALUES ('11675', '罗江县', null, '德阳市', '四川省', 'T', null, '51060000', '51000000', '51062600', '510000', '510600000000', '510626000000');
INSERT INTO `t_dic_district` VALUES ('11676', '广汉市', null, '德阳市', '四川省', 'T', null, '51060000', '51000000', '51068100', '510000', '510600000000', '510681000000');
INSERT INTO `t_dic_district` VALUES ('11677', '金秀瑶族自治县', null, '来宾市', '广西壮族自治区', 'T', null, '45130000', '45000000', '45132400', '450000', '451300000000', '451324000000');
INSERT INTO `t_dic_district` VALUES ('11678', '合山市', null, '来宾市', '广西壮族自治区', 'T', null, '45130000', '45000000', '45138100', '450000', '451300000000', '451381000000');
INSERT INTO `t_dic_district` VALUES ('11679', '市辖区', null, '崇左市', '广西壮族自治区', 'T', null, '45140000', '45000000', '45140100', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('11680', '江州区', null, '崇左市', '广西壮族自治区', 'T', null, '45140000', '45000000', '45140200', '450000', '451400000000', '451402000000');
INSERT INTO `t_dic_district` VALUES ('11681', '扶绥县', null, '崇左市', '广西壮族自治区', 'T', null, '45140000', '45000000', '45142100', '450000', '451400000000', '451421000000');
INSERT INTO `t_dic_district` VALUES ('11682', '宁明县', null, '崇左市', '广西壮族自治区', 'T', null, '45140000', '45000000', '45142200', '450000', '451400000000', '451422000000');
INSERT INTO `t_dic_district` VALUES ('11683', '龙州县', null, '崇左市', '广西壮族自治区', 'T', null, '45140000', '45000000', '45142300', '450000', '451400000000', '451423000000');
INSERT INTO `t_dic_district` VALUES ('11684', '大新县', null, '崇左市', '广西壮族自治区', 'T', null, '45140000', '45000000', '45142400', '450000', '451400000000', '451424000000');
INSERT INTO `t_dic_district` VALUES ('11685', '天等县', null, '崇左市', '广西壮族自治区', 'T', null, '45140000', '45000000', '45142500', '450000', '451400000000', '451425000000');
INSERT INTO `t_dic_district` VALUES ('11686', '凭祥市', null, '崇左市', '广西壮族自治区', 'T', null, '45140000', '45000000', '45148100', '450000', '451400000000', '451481000000');
INSERT INTO `t_dic_district` VALUES ('11687', '市辖区', null, '海口市', '海南省', 'T', null, '46010000', '46000000', '46010100', '460000', '460200000000', '460201000000');
INSERT INTO `t_dic_district` VALUES ('11688', '秀英区', null, '海口市', '海南省', 'T', null, '46010000', '46000000', '46010500', '460000', '460100000000', '460105000000');
INSERT INTO `t_dic_district` VALUES ('11689', '龙华区', null, '海口市', '海南省', 'T', null, '46010000', '46000000', '46010600', '460000', '460100000000', '460106000000');
INSERT INTO `t_dic_district` VALUES ('11690', '琼山区', null, '海口市', '海南省', 'T', null, '46010000', '46000000', '46010700', '460000', '460100000000', '460107000000');
INSERT INTO `t_dic_district` VALUES ('11691', '美兰区', null, '海口市', '海南省', 'T', null, '46010000', '46000000', '46010800', '460000', '460100000000', '460108000000');
INSERT INTO `t_dic_district` VALUES ('11692', '市辖区', null, '三亚市', '海南省', 'T', null, '46020000', '46000000', '46020100', '460000', null, null);
INSERT INTO `t_dic_district` VALUES ('11693', '五指山市', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46900100', '460000', '469000000000', '469001000000');
INSERT INTO `t_dic_district` VALUES ('11694', '琼海市', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46900200', '460000', '469000000000', '469002000000');
INSERT INTO `t_dic_district` VALUES ('11695', '儋州市', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46900300', '460000', null, null);
INSERT INTO `t_dic_district` VALUES ('11696', '文昌市', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46900500', '460000', '469000000000', '469005000000');
INSERT INTO `t_dic_district` VALUES ('11697', '万宁市', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46900600', '460000', '469000000000', '469006000000');
INSERT INTO `t_dic_district` VALUES ('11698', '东方市', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46900700', '460000', '469000000000', '469007000000');
INSERT INTO `t_dic_district` VALUES ('11699', '定安县', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46902500', '460000', '469000000000', '469021000000');
INSERT INTO `t_dic_district` VALUES ('11700', '屯昌县', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46902600', '460000', '469000000000', '469022000000');
INSERT INTO `t_dic_district` VALUES ('11701', '澄迈县', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46902700', '460000', '469000000000', '469023000000');
INSERT INTO `t_dic_district` VALUES ('11702', '临高县', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46902800', '460000', '469000000000', '469024000000');
INSERT INTO `t_dic_district` VALUES ('11703', '白沙黎族自治县', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46903000', '460000', '469000000000', '469025000000');
INSERT INTO `t_dic_district` VALUES ('11704', '昌江黎族自治县', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46903100', '460000', '469000000000', '469026000000');
INSERT INTO `t_dic_district` VALUES ('11705', '乐东黎族自治县', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46903300', '460000', '469000000000', '469027000000');
INSERT INTO `t_dic_district` VALUES ('11706', '陵水黎族自治县', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46903400', '460000', '469000000000', '469028000000');
INSERT INTO `t_dic_district` VALUES ('11707', '保亭黎族苗族自治县', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46903500', '460000', '469000000000', '469029000000');
INSERT INTO `t_dic_district` VALUES ('11708', '琼中黎族苗族自治县', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46903600', '460000', '469000000000', '469030000000');
INSERT INTO `t_dic_district` VALUES ('11709', '西沙群岛', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46903700', '460000', '460300000000', '460321000000');
INSERT INTO `t_dic_district` VALUES ('11710', '南沙区', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46903800', '460000', null, null);
INSERT INTO `t_dic_district` VALUES ('11711', '中沙群岛的岛礁及其海域', null, '省直辖县级行政单位', '海南省', 'T', null, '46900000', '46000000', '46903900', '460000', '460300000000', '460323000000');
INSERT INTO `t_dic_district` VALUES ('11712', '万州区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50010100', '500000', '500100000000', '500101000000');
INSERT INTO `t_dic_district` VALUES ('11713', '峨眉山市', null, '乐山市', '四川省', 'T', null, '51110000', '51000000', '51118100', '510000', '511100000000', '511181000000');
INSERT INTO `t_dic_district` VALUES ('11714', '市辖区', null, '南充市', '四川省', 'T', null, '51130000', '51000000', '51130100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11715', '顺庆区', null, '南充市', '四川省', 'T', null, '51130000', '51000000', '51130200', '510000', '511300000000', '511302000000');
INSERT INTO `t_dic_district` VALUES ('11716', '高坪区', null, '南充市', '四川省', 'T', null, '51130000', '51000000', '51130300', '510000', '511300000000', '511303000000');
INSERT INTO `t_dic_district` VALUES ('11717', '嘉陵区', null, '南充市', '四川省', 'T', null, '51130000', '51000000', '51130400', '510000', '511300000000', '511304000000');
INSERT INTO `t_dic_district` VALUES ('11718', '南部县', null, '南充市', '四川省', 'T', null, '51130000', '51000000', '51132100', '510000', '511300000000', '511321000000');
INSERT INTO `t_dic_district` VALUES ('11719', '营山县', null, '南充市', '四川省', 'T', null, '51130000', '51000000', '51132200', '510000', '511300000000', '511322000000');
INSERT INTO `t_dic_district` VALUES ('11720', '蓬安县', null, '南充市', '四川省', 'T', null, '51130000', '51000000', '51132300', '510000', '511300000000', '511323000000');
INSERT INTO `t_dic_district` VALUES ('11721', '仪陇县', null, '南充市', '四川省', 'T', null, '51130000', '51000000', '51132400', '510000', '511300000000', '511324000000');
INSERT INTO `t_dic_district` VALUES ('11722', '西充县', null, '南充市', '四川省', 'T', null, '51130000', '51000000', '51132500', '510000', '511300000000', '511325000000');
INSERT INTO `t_dic_district` VALUES ('11723', '阆中市', null, '南充市', '四川省', 'T', null, '51130000', '51000000', '51138100', '510000', '511300000000', '511381000000');
INSERT INTO `t_dic_district` VALUES ('11724', '市辖区', null, '眉山市', '四川省', 'T', null, '51140000', '51000000', '51140100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11725', '东坡区', null, '眉山市', '四川省', 'T', null, '51140000', '51000000', '51140200', '510000', '511400000000', '511402000000');
INSERT INTO `t_dic_district` VALUES ('11726', '仁寿县', null, '眉山市', '四川省', 'T', null, '51140000', '51000000', '51142100', '510000', '511400000000', '511421000000');
INSERT INTO `t_dic_district` VALUES ('11727', '彭山区', null, '眉山市', '四川省', 'T', null, '51140000', '51000000', '51142200', '510000', '511400000000', '511403000000');
INSERT INTO `t_dic_district` VALUES ('11728', '洪雅县', null, '眉山市', '四川省', 'T', null, '51140000', '51000000', '51142300', '510000', '511400000000', '511423000000');
INSERT INTO `t_dic_district` VALUES ('11729', '丹棱县', null, '眉山市', '四川省', 'T', null, '51140000', '51000000', '51142400', '510000', '511400000000', '511424000000');
INSERT INTO `t_dic_district` VALUES ('11730', '青神县', null, '眉山市', '四川省', 'T', null, '51140000', '51000000', '51142500', '510000', '511400000000', '511425000000');
INSERT INTO `t_dic_district` VALUES ('11731', '市辖区', null, '宜宾市', '四川省', 'T', null, '51150000', '51000000', '51150100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11732', '翠屏区', null, '宜宾市', '四川省', 'T', null, '51150000', '51000000', '51150200', '510000', '511500000000', '511502000000');
INSERT INTO `t_dic_district` VALUES ('11733', '丰都县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50023000', '500000', '500200000000', '500230000000');
INSERT INTO `t_dic_district` VALUES ('11734', '垫江县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50023100', '500000', '500200000000', '500231000000');
INSERT INTO `t_dic_district` VALUES ('11735', '武隆县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50023200', '500000', '500200000000', '500232000000');
INSERT INTO `t_dic_district` VALUES ('11736', '忠县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50023300', '500000', '500200000000', '500233000000');
INSERT INTO `t_dic_district` VALUES ('11737', '开县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50023400', '500000', null, null);
INSERT INTO `t_dic_district` VALUES ('11738', '云阳县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50023500', '500000', '500200000000', '500235000000');
INSERT INTO `t_dic_district` VALUES ('11739', '奉节县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50023600', '500000', '500200000000', '500236000000');
INSERT INTO `t_dic_district` VALUES ('11740', '巫山县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50023700', '500000', '500200000000', '500237000000');
INSERT INTO `t_dic_district` VALUES ('11741', '巫溪县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50023800', '500000', '500200000000', '500238000000');
INSERT INTO `t_dic_district` VALUES ('11742', '石柱土家族自治县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50024000', '500000', '500200000000', '500240000000');
INSERT INTO `t_dic_district` VALUES ('11743', '秀山土家族苗族自治县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50024100', '500000', '500200000000', '500241000000');
INSERT INTO `t_dic_district` VALUES ('11744', '酉阳土家族苗族自治县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50024200', '500000', '500200000000', '500242000000');
INSERT INTO `t_dic_district` VALUES ('11745', '彭水苗族土家族自治县', null, '县', '重庆市', 'T', null, '50020000', '50000000', '50024300', '500000', '500200000000', '500243000000');
INSERT INTO `t_dic_district` VALUES ('11746', '江津区', null, '市', '重庆市', 'T', null, '50030000', '50000000', '50038100', '500000', '500100000000', '500116000000');
INSERT INTO `t_dic_district` VALUES ('11747', '合川区', null, '市', '重庆市', 'T', null, '50030000', '50000000', '50038200', '500000', '500100000000', '500117000000');
INSERT INTO `t_dic_district` VALUES ('11748', '永川区', null, '市', '重庆市', 'T', null, '50030000', '50000000', '50038300', '500000', '500100000000', '500118000000');
INSERT INTO `t_dic_district` VALUES ('11749', '南川区', null, '市', '重庆市', 'T', null, '50030000', '50000000', '50038400', '500000', '500100000000', '500119000000');
INSERT INTO `t_dic_district` VALUES ('11750', '市辖区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51010100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11751', '锦江区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51010400', '510000', '510100000000', '510104000000');
INSERT INTO `t_dic_district` VALUES ('11752', '青羊区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51010500', '510000', '510100000000', '510105000000');
INSERT INTO `t_dic_district` VALUES ('11753', '金牛区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51010600', '510000', '510100000000', '510106000000');
INSERT INTO `t_dic_district` VALUES ('11754', '武侯区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51010700', '510000', '510100000000', '510107000000');
INSERT INTO `t_dic_district` VALUES ('11755', '成华区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51010800', '510000', '510100000000', '510108000000');
INSERT INTO `t_dic_district` VALUES ('11756', '龙泉驿区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51011200', '510000', '510100000000', '510112000000');
INSERT INTO `t_dic_district` VALUES ('11757', '青白江区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51011300', '510000', '510100000000', '510113000000');
INSERT INTO `t_dic_district` VALUES ('11758', '新都区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51011400', '510000', '510100000000', '510114000000');
INSERT INTO `t_dic_district` VALUES ('11759', '金堂县', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51012100', '510000', '510100000000', '510121000000');
INSERT INTO `t_dic_district` VALUES ('11760', '双流区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51012200', '510000', '510100000000', '510116000000');
INSERT INTO `t_dic_district` VALUES ('11761', '温江区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51012300', '510000', '510100000000', '510115000000');
INSERT INTO `t_dic_district` VALUES ('11762', '郫县', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51012400', '510000', '510100000000', '510124000000');
INSERT INTO `t_dic_district` VALUES ('11763', '大邑县', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51012900', '510000', '510100000000', '510129000000');
INSERT INTO `t_dic_district` VALUES ('11764', '蒲江县', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51013100', '510000', '510100000000', '510131000000');
INSERT INTO `t_dic_district` VALUES ('11765', '新津县', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51013200', '510000', '510100000000', '510132000000');
INSERT INTO `t_dic_district` VALUES ('11766', '都江堰市', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51018100', '510000', '510100000000', '510181000000');
INSERT INTO `t_dic_district` VALUES ('11767', '彭州市', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51018200', '510000', '510100000000', '510182000000');
INSERT INTO `t_dic_district` VALUES ('11768', '邛崃市', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51018300', '510000', '510100000000', '510183000000');
INSERT INTO `t_dic_district` VALUES ('11769', '崇州市', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51018400', '510000', '510100000000', '510184000000');
INSERT INTO `t_dic_district` VALUES ('11770', '市辖区', null, '自贡市', '四川省', 'T', null, '51030000', '51000000', '51030100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11771', '自流井区', null, '自贡市', '四川省', 'T', null, '51030000', '51000000', '51030200', '510000', '510300000000', '510302000000');
INSERT INTO `t_dic_district` VALUES ('11772', '贡井区', null, '自贡市', '四川省', 'T', null, '51030000', '51000000', '51030300', '510000', '510300000000', '510303000000');
INSERT INTO `t_dic_district` VALUES ('11773', '大安区', null, '自贡市', '四川省', 'T', null, '51030000', '51000000', '51030400', '510000', '510300000000', '510304000000');
INSERT INTO `t_dic_district` VALUES ('11774', '沿滩区', null, '自贡市', '四川省', 'T', null, '51030000', '51000000', '51031100', '510000', '510300000000', '510311000000');
INSERT INTO `t_dic_district` VALUES ('11775', '荣县', null, '自贡市', '四川省', 'T', null, '51030000', '51000000', '51032100', '510000', '510300000000', '510321000000');
INSERT INTO `t_dic_district` VALUES ('11776', '汶川县', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51322100', '510000', '513200000000', '513221000000');
INSERT INTO `t_dic_district` VALUES ('11777', '理县', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51322200', '510000', '513200000000', '513222000000');
INSERT INTO `t_dic_district` VALUES ('11778', '茂县', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51322300', '510000', '513200000000', '513223000000');
INSERT INTO `t_dic_district` VALUES ('11779', '松潘县', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51322400', '510000', '513200000000', '513224000000');
INSERT INTO `t_dic_district` VALUES ('11780', '九寨沟县', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51322500', '510000', '513200000000', '513225000000');
INSERT INTO `t_dic_district` VALUES ('11781', '金川县', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51322600', '510000', '513200000000', '513226000000');
INSERT INTO `t_dic_district` VALUES ('11782', '小金县', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51322700', '510000', '513200000000', '513227000000');
INSERT INTO `t_dic_district` VALUES ('11783', '黑水县', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51322800', '510000', '513200000000', '513228000000');
INSERT INTO `t_dic_district` VALUES ('11784', '马尔康市', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51322900', '510000', '513200000000', '513201000000');
INSERT INTO `t_dic_district` VALUES ('11785', '壤塘县', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51323000', '510000', '513200000000', '513230000000');
INSERT INTO `t_dic_district` VALUES ('11786', '阿坝县', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51323100', '510000', '513200000000', '513231000000');
INSERT INTO `t_dic_district` VALUES ('11787', '若尔盖县', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51323200', '510000', '513200000000', '513232000000');
INSERT INTO `t_dic_district` VALUES ('11788', '红原县', null, '阿坝藏族羌族自治州', '四川省', 'T', null, '51320000', '51000000', '51323300', '510000', '513200000000', '513233000000');
INSERT INTO `t_dic_district` VALUES ('11789', '康定市', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51332100', '510000', '513300000000', '513301000000');
INSERT INTO `t_dic_district` VALUES ('11790', '泸定县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51332200', '510000', '513300000000', '513322000000');
INSERT INTO `t_dic_district` VALUES ('11791', '丹巴县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51332300', '510000', '513300000000', '513323000000');
INSERT INTO `t_dic_district` VALUES ('11792', '九龙县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51332400', '510000', '513300000000', '513324000000');
INSERT INTO `t_dic_district` VALUES ('11793', '雅江县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51332500', '510000', '513300000000', '513325000000');
INSERT INTO `t_dic_district` VALUES ('11794', '道孚县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51332600', '510000', '513300000000', '513326000000');
INSERT INTO `t_dic_district` VALUES ('11795', '炉霍县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51332700', '510000', '513300000000', '513327000000');
INSERT INTO `t_dic_district` VALUES ('11796', '什邡市', null, '德阳市', '四川省', 'T', null, '51060000', '51000000', '51068200', '510000', '510600000000', '510682000000');
INSERT INTO `t_dic_district` VALUES ('11797', '绵竹市', null, '德阳市', '四川省', 'T', null, '51060000', '51000000', '51068300', '510000', '510600000000', '510683000000');
INSERT INTO `t_dic_district` VALUES ('11798', '市辖区', null, '绵阳市', '四川省', 'T', null, '51070000', '51000000', '51070100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11799', '涪城区', null, '绵阳市', '四川省', 'T', null, '51070000', '51000000', '51070300', '510000', '510700000000', '510703000000');
INSERT INTO `t_dic_district` VALUES ('11800', '游仙区', null, '绵阳市', '四川省', 'T', null, '51070000', '51000000', '51070400', '510000', '510700000000', '510704000000');
INSERT INTO `t_dic_district` VALUES ('11801', '三台县', null, '绵阳市', '四川省', 'T', null, '51070000', '51000000', '51072200', '510000', '510700000000', '510722000000');
INSERT INTO `t_dic_district` VALUES ('11802', '盐亭县', null, '绵阳市', '四川省', 'T', null, '51070000', '51000000', '51072300', '510000', '510700000000', '510723000000');
INSERT INTO `t_dic_district` VALUES ('11803', '安县', null, '绵阳市', '四川省', 'T', null, '51070000', '51000000', '51072400', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11804', '梓潼县', null, '绵阳市', '四川省', 'T', null, '51070000', '51000000', '51072500', '510000', '510700000000', '510725000000');
INSERT INTO `t_dic_district` VALUES ('11805', '北川羌族自治县', null, '绵阳市', '四川省', 'T', null, '51070000', '51000000', '51072600', '510000', '510700000000', '510726000000');
INSERT INTO `t_dic_district` VALUES ('11806', '平武县', null, '绵阳市', '四川省', 'T', null, '51070000', '51000000', '51072700', '510000', '510700000000', '510727000000');
INSERT INTO `t_dic_district` VALUES ('11807', '江油市', null, '绵阳市', '四川省', 'T', null, '51070000', '51000000', '51078100', '510000', '510700000000', '510781000000');
INSERT INTO `t_dic_district` VALUES ('11808', '市辖区', null, '广元市', '四川省', 'T', null, '51080000', '51000000', '51080100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11809', '利州区', null, '广元市', '四川省', 'T', null, '51080000', '51000000', '51080200', '510000', '510800000000', '510802000000');
INSERT INTO `t_dic_district` VALUES ('11810', '昭化区', null, '广元市', '四川省', 'T', null, '51080000', '51000000', '51081100', '510000', '510800000000', '510811000000');
INSERT INTO `t_dic_district` VALUES ('11811', '朝天区', null, '广元市', '四川省', 'T', null, '51080000', '51000000', '51081200', '510000', '510800000000', '510812000000');
INSERT INTO `t_dic_district` VALUES ('11812', '旺苍县', null, '广元市', '四川省', 'T', null, '51080000', '51000000', '51082100', '510000', '510800000000', '510821000000');
INSERT INTO `t_dic_district` VALUES ('11813', '青川县', null, '广元市', '四川省', 'T', null, '51080000', '51000000', '51082200', '510000', '510800000000', '510822000000');
INSERT INTO `t_dic_district` VALUES ('11814', '剑阁县', null, '广元市', '四川省', 'T', null, '51080000', '51000000', '51082300', '510000', '510800000000', '510823000000');
INSERT INTO `t_dic_district` VALUES ('11815', '苍溪县', null, '广元市', '四川省', 'T', null, '51080000', '51000000', '51082400', '510000', '510800000000', '510824000000');
INSERT INTO `t_dic_district` VALUES ('11816', '市辖区', null, '遂宁市', '四川省', 'T', null, '51090000', '51000000', '51090100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11817', '市中区', null, '遂宁市', '四川省', 'T', null, '51090000', '51000000', '51090200', '510000', '511100000000', '511102000000');
INSERT INTO `t_dic_district` VALUES ('11818', '蓬溪县', null, '遂宁市', '四川省', 'T', null, '51090000', '51000000', '51092100', '510000', '510900000000', '510921000000');
INSERT INTO `t_dic_district` VALUES ('11819', '射洪县', null, '遂宁市', '四川省', 'T', null, '51090000', '51000000', '51092200', '510000', '510900000000', '510922000000');
INSERT INTO `t_dic_district` VALUES ('11820', '大英县', null, '遂宁市', '四川省', 'T', null, '51090000', '51000000', '51092300', '510000', '510900000000', '510923000000');
INSERT INTO `t_dic_district` VALUES ('11821', '市辖区', null, '内江市', '四川省', 'T', null, '51100000', '51000000', '51100100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11822', '市中区', null, '内江市', '四川省', 'T', null, '51100000', '51000000', '51100200', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11823', '东兴区', null, '内江市', '四川省', 'T', null, '51100000', '51000000', '51101100', '510000', '511000000000', '511011000000');
INSERT INTO `t_dic_district` VALUES ('11824', '威远县', null, '内江市', '四川省', 'T', null, '51100000', '51000000', '51102400', '510000', '511000000000', '511024000000');
INSERT INTO `t_dic_district` VALUES ('11825', '资中县', null, '内江市', '四川省', 'T', null, '51100000', '51000000', '51102500', '510000', '511000000000', '511025000000');
INSERT INTO `t_dic_district` VALUES ('11826', '隆昌县', null, '内江市', '四川省', 'T', null, '51100000', '51000000', '51102800', '510000', '511000000000', '511028000000');
INSERT INTO `t_dic_district` VALUES ('11827', '市辖区', null, '乐山市', '四川省', 'T', null, '51110000', '51000000', '51110100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11828', '市中区', null, '乐山市', '四川省', 'T', null, '51110000', '51000000', '51110200', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11829', '沙湾区', null, '乐山市', '四川省', 'T', null, '51110000', '51000000', '51111100', '510000', '511100000000', '511111000000');
INSERT INTO `t_dic_district` VALUES ('11830', '五通桥区', null, '乐山市', '四川省', 'T', null, '51110000', '51000000', '51111200', '510000', '511100000000', '511112000000');
INSERT INTO `t_dic_district` VALUES ('11831', '金口河区', null, '乐山市', '四川省', 'T', null, '51110000', '51000000', '51111300', '510000', '511100000000', '511113000000');
INSERT INTO `t_dic_district` VALUES ('11832', '犍为县', null, '乐山市', '四川省', 'T', null, '51110000', '51000000', '51112300', '510000', '511100000000', '511123000000');
INSERT INTO `t_dic_district` VALUES ('11833', '井研县', null, '乐山市', '四川省', 'T', null, '51110000', '51000000', '51112400', '510000', '511100000000', '511124000000');
INSERT INTO `t_dic_district` VALUES ('11834', '夹江县', null, '乐山市', '四川省', 'T', null, '51110000', '51000000', '51112600', '510000', '511100000000', '511126000000');
INSERT INTO `t_dic_district` VALUES ('11835', '沐川县', null, '乐山市', '四川省', 'T', null, '51110000', '51000000', '51112900', '510000', '511100000000', '511129000000');
INSERT INTO `t_dic_district` VALUES ('11836', '峨边彝族自治县', null, '乐山市', '四川省', 'T', null, '51110000', '51000000', '51113200', '510000', '511100000000', '511132000000');
INSERT INTO `t_dic_district` VALUES ('11837', '马边彝族自治县', null, '乐山市', '四川省', 'T', null, '51110000', '51000000', '51113300', '510000', '511100000000', '511133000000');
INSERT INTO `t_dic_district` VALUES ('11838', '盘县', null, '六盘水市', '贵州省', 'T', null, '52020000', '52000000', '52022200', '520000', '520200000000', '520222000000');
INSERT INTO `t_dic_district` VALUES ('11839', '市辖区', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52030100', '520000', '520600000000', '520601000000');
INSERT INTO `t_dic_district` VALUES ('11840', '红花岗区', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52030200', '520000', '520300000000', '520302000000');
INSERT INTO `t_dic_district` VALUES ('11841', '遵义县', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52032100', '520000', null, null);
INSERT INTO `t_dic_district` VALUES ('11842', '桐梓县', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52032200', '520000', '520300000000', '520322000000');
INSERT INTO `t_dic_district` VALUES ('11843', '绥阳县', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52032300', '520000', '520300000000', '520323000000');
INSERT INTO `t_dic_district` VALUES ('11844', '正安县', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52032400', '520000', '520300000000', '520324000000');
INSERT INTO `t_dic_district` VALUES ('11845', '道真仡佬族苗族自治县', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52032500', '520000', '520300000000', '520325000000');
INSERT INTO `t_dic_district` VALUES ('11846', '务川仡佬族苗族自治县', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52032600', '520000', '520300000000', '520326000000');
INSERT INTO `t_dic_district` VALUES ('11847', '凤冈县', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52032700', '520000', '520300000000', '520327000000');
INSERT INTO `t_dic_district` VALUES ('11848', '湄潭县', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52032800', '520000', '520300000000', '520328000000');
INSERT INTO `t_dic_district` VALUES ('11849', '余庆县', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52032900', '520000', '520300000000', '520329000000');
INSERT INTO `t_dic_district` VALUES ('11850', '习水县', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52033000', '520000', '520300000000', '520330000000');
INSERT INTO `t_dic_district` VALUES ('11851', '赤水市', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52038100', '520000', '520300000000', '520381000000');
INSERT INTO `t_dic_district` VALUES ('11852', '仁怀市', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52038200', '520000', '520300000000', '520382000000');
INSERT INTO `t_dic_district` VALUES ('11853', '市辖区', null, '安顺市', '贵州省', 'T', null, '52040000', '52000000', '52040100', '520000', null, null);
INSERT INTO `t_dic_district` VALUES ('11854', '西秀区', null, '安顺市', '贵州省', 'T', null, '52040000', '52000000', '52040200', '520000', '520400000000', '520402000000');
INSERT INTO `t_dic_district` VALUES ('11855', '平坝区', null, '安顺市', '贵州省', 'T', null, '52040000', '52000000', '52042100', '520000', '520400000000', '520403000000');
INSERT INTO `t_dic_district` VALUES ('11856', '普定县', null, '安顺市', '贵州省', 'T', null, '52040000', '52000000', '52042200', '520000', '520400000000', '520422000000');
INSERT INTO `t_dic_district` VALUES ('11857', '镇宁布依族苗族自治县', null, '安顺市', '贵州省', 'T', null, '52040000', '52000000', '52042300', '520000', '520400000000', '520423000000');
INSERT INTO `t_dic_district` VALUES ('11858', '宜宾县', null, '宜宾市', '四川省', 'T', null, '51150000', '51000000', '51152100', '510000', '511500000000', '511521000000');
INSERT INTO `t_dic_district` VALUES ('11859', '南溪区', null, '宜宾市', '四川省', 'T', null, '51150000', '51000000', '51152200', '510000', '511500000000', '511503000000');
INSERT INTO `t_dic_district` VALUES ('11860', '江安县', null, '宜宾市', '四川省', 'T', null, '51150000', '51000000', '51152300', '510000', '511500000000', '511523000000');
INSERT INTO `t_dic_district` VALUES ('11861', '长宁县', null, '宜宾市', '四川省', 'T', null, '51150000', '51000000', '51152400', '510000', '511500000000', '511524000000');
INSERT INTO `t_dic_district` VALUES ('11862', '高县', null, '宜宾市', '四川省', 'T', null, '51150000', '51000000', '51152500', '510000', '511500000000', '511525000000');
INSERT INTO `t_dic_district` VALUES ('11863', '珙县', null, '宜宾市', '四川省', 'T', null, '51150000', '51000000', '51152600', '510000', '511500000000', '511526000000');
INSERT INTO `t_dic_district` VALUES ('11864', '筠连县', null, '宜宾市', '四川省', 'T', null, '51150000', '51000000', '51152700', '510000', '511500000000', '511527000000');
INSERT INTO `t_dic_district` VALUES ('11865', '兴文县', null, '宜宾市', '四川省', 'T', null, '51150000', '51000000', '51152800', '510000', '511500000000', '511528000000');
INSERT INTO `t_dic_district` VALUES ('11866', '屏山县', null, '宜宾市', '四川省', 'T', null, '51150000', '51000000', '51152900', '510000', '511500000000', '511529000000');
INSERT INTO `t_dic_district` VALUES ('11867', '市辖区', null, '广安市', '四川省', 'T', null, '51160000', '51000000', '51160100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11868', '广安区', null, '广安市', '四川省', 'T', null, '51160000', '51000000', '51160200', '510000', '511600000000', '511602000000');
INSERT INTO `t_dic_district` VALUES ('11869', '岳池县', null, '广安市', '四川省', 'T', null, '51160000', '51000000', '51162100', '510000', '511600000000', '511621000000');
INSERT INTO `t_dic_district` VALUES ('11870', '武胜县', null, '广安市', '四川省', 'T', null, '51160000', '51000000', '51162200', '510000', '511600000000', '511622000000');
INSERT INTO `t_dic_district` VALUES ('11871', '邻水县', null, '广安市', '四川省', 'T', null, '51160000', '51000000', '51162300', '510000', '511600000000', '511623000000');
INSERT INTO `t_dic_district` VALUES ('11872', '华蓥市', null, '广安市', '四川省', 'T', null, '51160000', '51000000', '51168100', '510000', '511600000000', '511681000000');
INSERT INTO `t_dic_district` VALUES ('11873', '市辖区', null, '达州市', '四川省', 'T', null, '51170000', '51000000', '51170100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11874', '通川区', null, '达州市', '四川省', 'T', null, '51170000', '51000000', '51170200', '510000', '511700000000', '511702000000');
INSERT INTO `t_dic_district` VALUES ('11875', '达县', null, '达州市', '四川省', 'T', null, '51170000', '51000000', '51172100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11876', '宣汉县', null, '达州市', '四川省', 'T', null, '51170000', '51000000', '51172200', '510000', '511700000000', '511722000000');
INSERT INTO `t_dic_district` VALUES ('11877', '开江县', null, '达州市', '四川省', 'T', null, '51170000', '51000000', '51172300', '510000', '511700000000', '511723000000');
INSERT INTO `t_dic_district` VALUES ('11878', '大竹县', null, '达州市', '四川省', 'T', null, '51170000', '51000000', '51172400', '510000', '511700000000', '511724000000');
INSERT INTO `t_dic_district` VALUES ('11879', '渠县', null, '达州市', '四川省', 'T', null, '51170000', '51000000', '51172500', '510000', '511700000000', '511725000000');
INSERT INTO `t_dic_district` VALUES ('11880', '万源市', null, '达州市', '四川省', 'T', null, '51170000', '51000000', '51178100', '510000', '511700000000', '511781000000');
INSERT INTO `t_dic_district` VALUES ('11881', '市辖区', null, '雅安市', '四川省', 'T', null, '51180000', '51000000', '51180100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11882', '雨城区', null, '雅安市', '四川省', 'T', null, '51180000', '51000000', '51180200', '510000', '511800000000', '511802000000');
INSERT INTO `t_dic_district` VALUES ('11883', '名山区', null, '雅安市', '四川省', 'T', null, '51180000', '51000000', '51182100', '510000', '511800000000', '511803000000');
INSERT INTO `t_dic_district` VALUES ('11884', '荥经县', null, '雅安市', '四川省', 'T', null, '51180000', '51000000', '51182200', '510000', '511800000000', '511822000000');
INSERT INTO `t_dic_district` VALUES ('11885', '汉源县', null, '雅安市', '四川省', 'T', null, '51180000', '51000000', '51182300', '510000', '511800000000', '511823000000');
INSERT INTO `t_dic_district` VALUES ('11886', '石棉县', null, '雅安市', '四川省', 'T', null, '51180000', '51000000', '51182400', '510000', '511800000000', '511824000000');
INSERT INTO `t_dic_district` VALUES ('11887', '天全县', null, '雅安市', '四川省', 'T', null, '51180000', '51000000', '51182500', '510000', '511800000000', '511825000000');
INSERT INTO `t_dic_district` VALUES ('11888', '芦山县', null, '雅安市', '四川省', 'T', null, '51180000', '51000000', '51182600', '510000', '511800000000', '511826000000');
INSERT INTO `t_dic_district` VALUES ('11889', '宝兴县', null, '雅安市', '四川省', 'T', null, '51180000', '51000000', '51182700', '510000', '511800000000', '511827000000');
INSERT INTO `t_dic_district` VALUES ('11890', '市辖区', null, '巴中市', '四川省', 'T', null, '51190000', '51000000', '51190100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11891', '巴州区', null, '巴中市', '四川省', 'T', null, '51190000', '51000000', '51190200', '510000', '511900000000', '511902000000');
INSERT INTO `t_dic_district` VALUES ('11892', '通江县', null, '巴中市', '四川省', 'T', null, '51190000', '51000000', '51192100', '510000', '511900000000', '511921000000');
INSERT INTO `t_dic_district` VALUES ('11893', '南江县', null, '巴中市', '四川省', 'T', null, '51190000', '51000000', '51192200', '510000', '511900000000', '511922000000');
INSERT INTO `t_dic_district` VALUES ('11894', '平昌县', null, '巴中市', '四川省', 'T', null, '51190000', '51000000', '51192300', '510000', '511900000000', '511923000000');
INSERT INTO `t_dic_district` VALUES ('11895', '市辖区', null, '资阳市', '四川省', 'T', null, '51200000', '51000000', '51200100', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('11896', '雁江区', null, '资阳市', '四川省', 'T', null, '51200000', '51000000', '51200200', '510000', '512000000000', '512002000000');
INSERT INTO `t_dic_district` VALUES ('11897', '安岳县', null, '资阳市', '四川省', 'T', null, '51200000', '51000000', '51202100', '510000', '512000000000', '512021000000');
INSERT INTO `t_dic_district` VALUES ('11898', '乐至县', null, '资阳市', '四川省', 'T', null, '51200000', '51000000', '51202200', '510000', '512000000000', '512022000000');
INSERT INTO `t_dic_district` VALUES ('11899', '简阳市', null, '资阳市', '四川省', 'T', null, '51200000', '51000000', '51208100', '510000', '510100000000', '510185000000');
INSERT INTO `t_dic_district` VALUES ('11900', '榕江县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52263200', '520000', '522600000000', '522632000000');
INSERT INTO `t_dic_district` VALUES ('11901', '从江县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52263300', '520000', '522600000000', '522633000000');
INSERT INTO `t_dic_district` VALUES ('11902', '雷山县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52263400', '520000', '522600000000', '522634000000');
INSERT INTO `t_dic_district` VALUES ('11903', '麻江县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52263500', '520000', '522600000000', '522635000000');
INSERT INTO `t_dic_district` VALUES ('11904', '丹寨县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52263600', '520000', '522600000000', '522636000000');
INSERT INTO `t_dic_district` VALUES ('11905', '都匀市', null, '黔南布依族苗族自治州', '贵州省', 'T', null, '52270000', '52000000', '52270100', '520000', '522700000000', '522701000000');
INSERT INTO `t_dic_district` VALUES ('11906', '福泉市', null, '黔南布依族苗族自治州', '贵州省', 'T', null, '52270000', '52000000', '52270200', '520000', '522700000000', '522702000000');
INSERT INTO `t_dic_district` VALUES ('11907', '荔波县', null, '黔南布依族苗族自治州', '贵州省', 'T', null, '52270000', '52000000', '52272200', '520000', '522700000000', '522722000000');
INSERT INTO `t_dic_district` VALUES ('11908', '贵定县', null, '黔南布依族苗族自治州', '贵州省', 'T', null, '52270000', '52000000', '52272300', '520000', '522700000000', '522723000000');
INSERT INTO `t_dic_district` VALUES ('11909', '瓮安县', null, '黔南布依族苗族自治州', '贵州省', 'T', null, '52270000', '52000000', '52272500', '520000', '522700000000', '522725000000');
INSERT INTO `t_dic_district` VALUES ('11910', '独山县', null, '黔南布依族苗族自治州', '贵州省', 'T', null, '52270000', '52000000', '52272600', '520000', '522700000000', '522726000000');
INSERT INTO `t_dic_district` VALUES ('11911', '平塘县', null, '黔南布依族苗族自治州', '贵州省', 'T', null, '52270000', '52000000', '52272700', '520000', '522700000000', '522727000000');
INSERT INTO `t_dic_district` VALUES ('11912', '罗甸县', null, '黔南布依族苗族自治州', '贵州省', 'T', null, '52270000', '52000000', '52272800', '520000', '522700000000', '522728000000');
INSERT INTO `t_dic_district` VALUES ('11913', '长顺县', null, '黔南布依族苗族自治州', '贵州省', 'T', null, '52270000', '52000000', '52272900', '520000', '522700000000', '522729000000');
INSERT INTO `t_dic_district` VALUES ('11914', '龙里县', null, '黔南布依族苗族自治州', '贵州省', 'T', null, '52270000', '52000000', '52273000', '520000', '522700000000', '522730000000');
INSERT INTO `t_dic_district` VALUES ('11915', '惠水县', null, '黔南布依族苗族自治州', '贵州省', 'T', null, '52270000', '52000000', '52273100', '520000', '522700000000', '522731000000');
INSERT INTO `t_dic_district` VALUES ('11916', '三都水族自治县', null, '黔南布依族苗族自治州', '贵州省', 'T', null, '52270000', '52000000', '52273200', '520000', '522700000000', '522732000000');
INSERT INTO `t_dic_district` VALUES ('11917', '甘孜县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51332800', '510000', '513300000000', '513328000000');
INSERT INTO `t_dic_district` VALUES ('11918', '新龙县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51332900', '510000', '513300000000', '513329000000');
INSERT INTO `t_dic_district` VALUES ('11919', '德格县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51333000', '510000', '513300000000', '513330000000');
INSERT INTO `t_dic_district` VALUES ('11920', '白玉县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51333100', '510000', '513300000000', '513331000000');
INSERT INTO `t_dic_district` VALUES ('11921', '石渠县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51333200', '510000', '513300000000', '513332000000');
INSERT INTO `t_dic_district` VALUES ('11922', '色达县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51333300', '510000', '513300000000', '513333000000');
INSERT INTO `t_dic_district` VALUES ('11923', '理塘县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51333400', '510000', '513300000000', '513334000000');
INSERT INTO `t_dic_district` VALUES ('11924', '巴塘县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51333500', '510000', '513300000000', '513335000000');
INSERT INTO `t_dic_district` VALUES ('11925', '乡城县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51333600', '510000', '513300000000', '513336000000');
INSERT INTO `t_dic_district` VALUES ('11926', '稻城县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51333700', '510000', '513300000000', '513337000000');
INSERT INTO `t_dic_district` VALUES ('11927', '得荣县', null, '甘孜藏族自治州', '四川省', 'T', null, '51330000', '51000000', '51333800', '510000', '513300000000', '513338000000');
INSERT INTO `t_dic_district` VALUES ('11928', '西昌市', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51340100', '510000', '513400000000', '513401000000');
INSERT INTO `t_dic_district` VALUES ('11929', '木里藏族自治县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51342200', '510000', '513400000000', '513422000000');
INSERT INTO `t_dic_district` VALUES ('11930', '盐源县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51342300', '510000', '513400000000', '513423000000');
INSERT INTO `t_dic_district` VALUES ('11931', '德昌县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51342400', '510000', '513400000000', '513424000000');
INSERT INTO `t_dic_district` VALUES ('11932', '会理县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51342500', '510000', '513400000000', '513425000000');
INSERT INTO `t_dic_district` VALUES ('11933', '会东县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51342600', '510000', '513400000000', '513426000000');
INSERT INTO `t_dic_district` VALUES ('11934', '宁南县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51342700', '510000', '513400000000', '513427000000');
INSERT INTO `t_dic_district` VALUES ('11935', '普格县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51342800', '510000', '513400000000', '513428000000');
INSERT INTO `t_dic_district` VALUES ('11936', '布拖县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51342900', '510000', '513400000000', '513429000000');
INSERT INTO `t_dic_district` VALUES ('11937', '金阳县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51343000', '510000', '513400000000', '513430000000');
INSERT INTO `t_dic_district` VALUES ('11938', '昭觉县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51343100', '510000', '513400000000', '513431000000');
INSERT INTO `t_dic_district` VALUES ('11939', '喜德县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51343200', '510000', '513400000000', '513432000000');
INSERT INTO `t_dic_district` VALUES ('11940', '冕宁县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51343300', '510000', '513400000000', '513433000000');
INSERT INTO `t_dic_district` VALUES ('11941', '越西县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51343400', '510000', '513400000000', '513434000000');
INSERT INTO `t_dic_district` VALUES ('11942', '甘洛县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51343500', '510000', '513400000000', '513435000000');
INSERT INTO `t_dic_district` VALUES ('11943', '美姑县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51343600', '510000', '513400000000', '513436000000');
INSERT INTO `t_dic_district` VALUES ('11944', '雷波县', null, '凉山彝族自治州', '四川省', 'T', null, '51340000', '51000000', '51343700', '510000', '513400000000', '513437000000');
INSERT INTO `t_dic_district` VALUES ('11945', '市辖区', null, '贵阳市', '贵州省', 'T', null, '52010000', '52000000', '52010100', '520000', null, null);
INSERT INTO `t_dic_district` VALUES ('11946', '南明区', null, '贵阳市', '贵州省', 'T', null, '52010000', '52000000', '52010200', '520000', '520100000000', '520102000000');
INSERT INTO `t_dic_district` VALUES ('11947', '云岩区', null, '贵阳市', '贵州省', 'T', null, '52010000', '52000000', '52010300', '520000', '520100000000', '520103000000');
INSERT INTO `t_dic_district` VALUES ('11948', '花溪区', null, '贵阳市', '贵州省', 'T', null, '52010000', '52000000', '52011100', '520000', '520100000000', '520111000000');
INSERT INTO `t_dic_district` VALUES ('11949', '乌当区', null, '贵阳市', '贵州省', 'T', null, '52010000', '52000000', '52011200', '520000', '520100000000', '520112000000');
INSERT INTO `t_dic_district` VALUES ('11950', '白云区', null, '贵阳市', '贵州省', 'T', null, '52010000', '52000000', '52011300', '520000', '520100000000', '520113000000');
INSERT INTO `t_dic_district` VALUES ('11951', '小河区', null, '贵阳市', '贵州省', 'T', null, '52010000', '52000000', '52011400', '520000', null, null);
INSERT INTO `t_dic_district` VALUES ('11952', '开阳县', null, '贵阳市', '贵州省', 'T', null, '52010000', '52000000', '52012100', '520000', '520100000000', '520121000000');
INSERT INTO `t_dic_district` VALUES ('11953', '息烽县', null, '贵阳市', '贵州省', 'T', null, '52010000', '52000000', '52012200', '520000', '520100000000', '520122000000');
INSERT INTO `t_dic_district` VALUES ('11954', '修文县', null, '贵阳市', '贵州省', 'T', null, '52010000', '52000000', '52012300', '520000', '520100000000', '520123000000');
INSERT INTO `t_dic_district` VALUES ('11955', '清镇市', null, '贵阳市', '贵州省', 'T', null, '52010000', '52000000', '52018100', '520000', '520100000000', '520181000000');
INSERT INTO `t_dic_district` VALUES ('11956', '钟山区', null, '六盘水市', '贵州省', 'T', null, '52020000', '52000000', '52020100', '520000', '520200000000', '520201000000');
INSERT INTO `t_dic_district` VALUES ('11957', '六枝特区', null, '六盘水市', '贵州省', 'T', null, '52020000', '52000000', '52020300', '520000', '520200000000', '520203000000');
INSERT INTO `t_dic_district` VALUES ('11958', '水城县', null, '六盘水市', '贵州省', 'T', null, '52020000', '52000000', '52022100', '520000', '520200000000', '520221000000');
INSERT INTO `t_dic_district` VALUES ('11959', '昭阳区', null, '昭通市', '云南省', 'T', null, '53060000', '53000000', '53060200', '530000', '530600000000', '530602000000');
INSERT INTO `t_dic_district` VALUES ('11960', '鲁甸县', null, '昭通市', '云南省', 'T', null, '53060000', '53000000', '53062100', '530000', '530600000000', '530621000000');
INSERT INTO `t_dic_district` VALUES ('11961', '巧家县', null, '昭通市', '云南省', 'T', null, '53060000', '53000000', '53062200', '530000', '530600000000', '530622000000');
INSERT INTO `t_dic_district` VALUES ('11962', '盐津县', null, '昭通市', '云南省', 'T', null, '53060000', '53000000', '53062300', '530000', '530600000000', '530623000000');
INSERT INTO `t_dic_district` VALUES ('11963', '大关县', null, '昭通市', '云南省', 'T', null, '53060000', '53000000', '53062400', '530000', '530600000000', '530624000000');
INSERT INTO `t_dic_district` VALUES ('11964', '永善县', null, '昭通市', '云南省', 'T', null, '53060000', '53000000', '53062500', '530000', '530600000000', '530625000000');
INSERT INTO `t_dic_district` VALUES ('11965', '绥江县', null, '昭通市', '云南省', 'T', null, '53060000', '53000000', '53062600', '530000', '530600000000', '530626000000');
INSERT INTO `t_dic_district` VALUES ('11966', '镇雄县', null, '昭通市', '云南省', 'T', null, '53060000', '53000000', '53062700', '530000', '530600000000', '530627000000');
INSERT INTO `t_dic_district` VALUES ('11967', '彝良县', null, '昭通市', '云南省', 'T', null, '53060000', '53000000', '53062800', '530000', '530600000000', '530628000000');
INSERT INTO `t_dic_district` VALUES ('11968', '威信县', null, '昭通市', '云南省', 'T', null, '53060000', '53000000', '53062900', '530000', '530600000000', '530629000000');
INSERT INTO `t_dic_district` VALUES ('11969', '水富县', null, '昭通市', '云南省', 'T', null, '53060000', '53000000', '53063000', '530000', '530600000000', '530630000000');
INSERT INTO `t_dic_district` VALUES ('11970', '市辖区', null, '丽江市', '云南省', 'T', null, '53070000', '53000000', '53070100', '530000', '530900000000', '530901000000');
INSERT INTO `t_dic_district` VALUES ('11971', '古城区', null, '丽江市', '云南省', 'T', null, '53070000', '53000000', '53070200', '530000', '530700000000', '530702000000');
INSERT INTO `t_dic_district` VALUES ('11972', '玉龙纳西族自治县', null, '丽江市', '云南省', 'T', null, '53070000', '53000000', '53072100', '530000', '530700000000', '530721000000');
INSERT INTO `t_dic_district` VALUES ('11973', '永胜县', null, '丽江市', '云南省', 'T', null, '53070000', '53000000', '53072200', '530000', '530700000000', '530722000000');
INSERT INTO `t_dic_district` VALUES ('11974', '华坪县', null, '丽江市', '云南省', 'T', null, '53070000', '53000000', '53072300', '530000', '530700000000', '530723000000');
INSERT INTO `t_dic_district` VALUES ('11975', '宁蒗彝族自治县', null, '丽江市', '云南省', 'T', null, '53070000', '53000000', '53072400', '530000', '530700000000', '530724000000');
INSERT INTO `t_dic_district` VALUES ('11976', '楚雄市', null, '楚雄彝族自治州', '云南省', 'T', null, '53230000', '53000000', '53230100', '530000', '532300000000', '532301000000');
INSERT INTO `t_dic_district` VALUES ('11977', '双柏县', null, '楚雄彝族自治州', '云南省', 'T', null, '53230000', '53000000', '53232200', '530000', '532300000000', '532322000000');
INSERT INTO `t_dic_district` VALUES ('11978', '牟定县', null, '楚雄彝族自治州', '云南省', 'T', null, '53230000', '53000000', '53232300', '530000', '532300000000', '532323000000');
INSERT INTO `t_dic_district` VALUES ('11979', '关岭布依族苗族自治县', null, '安顺市', '贵州省', 'T', null, '52040000', '52000000', '52042400', '520000', '520400000000', '520424000000');
INSERT INTO `t_dic_district` VALUES ('11980', '紫云苗族布依族自治县', null, '安顺市', '贵州省', 'T', null, '52040000', '52000000', '52042500', '520000', '520400000000', '520425000000');
INSERT INTO `t_dic_district` VALUES ('11981', '铜仁市', null, '铜仁地区', '贵州省', 'T', null, '52220000', '52000000', '52220100', '520000', null, null);
INSERT INTO `t_dic_district` VALUES ('11982', '江口县', null, '铜仁地区', '贵州省', 'T', null, '52220000', '52000000', '52222200', '520000', '520600000000', '520621000000');
INSERT INTO `t_dic_district` VALUES ('11983', '玉屏侗族自治县', null, '铜仁地区', '贵州省', 'T', null, '52220000', '52000000', '52222300', '520000', '520600000000', '520622000000');
INSERT INTO `t_dic_district` VALUES ('11984', '石阡县', null, '铜仁地区', '贵州省', 'T', null, '52220000', '52000000', '52222400', '520000', '520600000000', '520623000000');
INSERT INTO `t_dic_district` VALUES ('11985', '思南县', null, '铜仁地区', '贵州省', 'T', null, '52220000', '52000000', '52222500', '520000', '520600000000', '520624000000');
INSERT INTO `t_dic_district` VALUES ('11986', '印江土家族苗族自治县', null, '铜仁地区', '贵州省', 'T', null, '52220000', '52000000', '52222600', '520000', '520600000000', '520625000000');
INSERT INTO `t_dic_district` VALUES ('11987', '德江县', null, '铜仁地区', '贵州省', 'T', null, '52220000', '52000000', '52222700', '520000', '520600000000', '520626000000');
INSERT INTO `t_dic_district` VALUES ('11988', '沿河土家族自治县', null, '铜仁地区', '贵州省', 'T', null, '52220000', '52000000', '52222800', '520000', '520600000000', '520627000000');
INSERT INTO `t_dic_district` VALUES ('11989', '松桃苗族自治县', null, '铜仁地区', '贵州省', 'T', null, '52220000', '52000000', '52222900', '520000', '520600000000', '520628000000');
INSERT INTO `t_dic_district` VALUES ('11990', '万山区', null, '铜仁地区', '贵州省', 'T', null, '52220000', '52000000', '52223000', '520000', '520600000000', '520603000000');
INSERT INTO `t_dic_district` VALUES ('11991', '兴义市', null, '黔西南布依族苗族自治', '贵州省', 'T', null, '52230000', '52000000', '52230100', '520000', '522300000000', '522301000000');
INSERT INTO `t_dic_district` VALUES ('11992', '兴仁县', null, '黔西南布依族苗族自治', '贵州省', 'T', null, '52230000', '52000000', '52232200', '520000', '522300000000', '522322000000');
INSERT INTO `t_dic_district` VALUES ('11993', '普安县', null, '黔西南布依族苗族自治', '贵州省', 'T', null, '52230000', '52000000', '52232300', '520000', '522300000000', '522323000000');
INSERT INTO `t_dic_district` VALUES ('11994', '晴隆县', null, '黔西南布依族苗族自治', '贵州省', 'T', null, '52230000', '52000000', '52232400', '520000', '522300000000', '522324000000');
INSERT INTO `t_dic_district` VALUES ('11995', '贞丰县', null, '黔西南布依族苗族自治', '贵州省', 'T', null, '52230000', '52000000', '52232500', '520000', '522300000000', '522325000000');
INSERT INTO `t_dic_district` VALUES ('11996', '望谟县', null, '黔西南布依族苗族自治', '贵州省', 'T', null, '52230000', '52000000', '52232600', '520000', '522300000000', '522326000000');
INSERT INTO `t_dic_district` VALUES ('11997', '册亨县', null, '黔西南布依族苗族自治', '贵州省', 'T', null, '52230000', '52000000', '52232700', '520000', '522300000000', '522327000000');
INSERT INTO `t_dic_district` VALUES ('11998', '安龙县', null, '黔西南布依族苗族自治', '贵州省', 'T', null, '52230000', '52000000', '52232800', '520000', '522300000000', '522328000000');
INSERT INTO `t_dic_district` VALUES ('11999', '毕节市', null, '毕节地区', '贵州省', 'T', null, '52240000', '52000000', '52240100', '520000', null, null);
INSERT INTO `t_dic_district` VALUES ('12000', '大方县', null, '毕节地区', '贵州省', 'T', null, '52240000', '52000000', '52242200', '520000', '520500000000', '520521000000');
INSERT INTO `t_dic_district` VALUES ('12001', '黔西县', null, '毕节地区', '贵州省', 'T', null, '52240000', '52000000', '52242300', '520000', '520500000000', '520522000000');
INSERT INTO `t_dic_district` VALUES ('12002', '金沙县', null, '毕节地区', '贵州省', 'T', null, '52240000', '52000000', '52242400', '520000', '520500000000', '520523000000');
INSERT INTO `t_dic_district` VALUES ('12003', '织金县', null, '毕节地区', '贵州省', 'T', null, '52240000', '52000000', '52242500', '520000', '520500000000', '520524000000');
INSERT INTO `t_dic_district` VALUES ('12004', '纳雍县', null, '毕节地区', '贵州省', 'T', null, '52240000', '52000000', '52242600', '520000', '520500000000', '520525000000');
INSERT INTO `t_dic_district` VALUES ('12005', '威宁彝族回族苗族自治县', null, '毕节地区', '贵州省', 'T', null, '52240000', '52000000', '52242700', '520000', '520500000000', '520526000000');
INSERT INTO `t_dic_district` VALUES ('12006', '赫章县', null, '毕节地区', '贵州省', 'T', null, '52240000', '52000000', '52242800', '520000', '520500000000', '520527000000');
INSERT INTO `t_dic_district` VALUES ('12007', '凯里市', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52260100', '520000', '522600000000', '522601000000');
INSERT INTO `t_dic_district` VALUES ('12008', '黄平县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52262200', '520000', '522600000000', '522622000000');
INSERT INTO `t_dic_district` VALUES ('12009', '施秉县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52262300', '520000', '522600000000', '522623000000');
INSERT INTO `t_dic_district` VALUES ('12010', '三穗县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52262400', '520000', '522600000000', '522624000000');
INSERT INTO `t_dic_district` VALUES ('12011', '镇远县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52262500', '520000', '522600000000', '522625000000');
INSERT INTO `t_dic_district` VALUES ('12012', '岑巩县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52262600', '520000', '522600000000', '522626000000');
INSERT INTO `t_dic_district` VALUES ('12013', '天柱县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52262700', '520000', '522600000000', '522627000000');
INSERT INTO `t_dic_district` VALUES ('12014', '锦屏县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52262800', '520000', '522600000000', '522628000000');
INSERT INTO `t_dic_district` VALUES ('12015', '剑河县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52262900', '520000', '522600000000', '522629000000');
INSERT INTO `t_dic_district` VALUES ('12016', '台江县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52263000', '520000', '522600000000', '522630000000');
INSERT INTO `t_dic_district` VALUES ('12017', '黎平县', null, '黔东南苗族侗族自治州', '贵州省', 'T', null, '52260000', '52000000', '52263100', '520000', '522600000000', '522631000000');
INSERT INTO `t_dic_district` VALUES ('12018', '景洪市', null, '西双版纳傣族自治州', '云南省', 'T', null, '53280000', '53000000', '53280100', '530000', '532800000000', '532801000000');
INSERT INTO `t_dic_district` VALUES ('12019', '勐海县', null, '西双版纳傣族自治州', '云南省', 'T', null, '53280000', '53000000', '53282200', '530000', '532800000000', '532822000000');
INSERT INTO `t_dic_district` VALUES ('12020', '勐腊县', null, '西双版纳傣族自治州', '云南省', 'T', null, '53280000', '53000000', '53282300', '530000', '532800000000', '532823000000');
INSERT INTO `t_dic_district` VALUES ('12021', '大理市', null, '大理白族自治州', '云南省', 'T', null, '53290000', '53000000', '53290100', '530000', '532900000000', '532901000000');
INSERT INTO `t_dic_district` VALUES ('12022', '漾濞彝族自治县', null, '大理白族自治州', '云南省', 'T', null, '53290000', '53000000', '53292200', '530000', '532900000000', '532922000000');
INSERT INTO `t_dic_district` VALUES ('12023', '祥云县', null, '大理白族自治州', '云南省', 'T', null, '53290000', '53000000', '53292300', '530000', '532900000000', '532923000000');
INSERT INTO `t_dic_district` VALUES ('12024', '宾川县', null, '大理白族自治州', '云南省', 'T', null, '53290000', '53000000', '53292400', '530000', '532900000000', '532924000000');
INSERT INTO `t_dic_district` VALUES ('12025', '弥渡县', null, '大理白族自治州', '云南省', 'T', null, '53290000', '53000000', '53292500', '530000', '532900000000', '532925000000');
INSERT INTO `t_dic_district` VALUES ('12026', '南涧彝族自治县', null, '大理白族自治州', '云南省', 'T', null, '53290000', '53000000', '53292600', '530000', '532900000000', '532926000000');
INSERT INTO `t_dic_district` VALUES ('12027', '巍山彝族回族自治县', null, '大理白族自治州', '云南省', 'T', null, '53290000', '53000000', '53292700', '530000', '532900000000', '532927000000');
INSERT INTO `t_dic_district` VALUES ('12028', '永平县', null, '大理白族自治州', '云南省', 'T', null, '53290000', '53000000', '53292800', '530000', '532900000000', '532928000000');
INSERT INTO `t_dic_district` VALUES ('12029', '云龙县', null, '大理白族自治州', '云南省', 'T', null, '53290000', '53000000', '53292900', '530000', '532900000000', '532929000000');
INSERT INTO `t_dic_district` VALUES ('12030', '洱源县', null, '大理白族自治州', '云南省', 'T', null, '53290000', '53000000', '53293000', '530000', '532900000000', '532930000000');
INSERT INTO `t_dic_district` VALUES ('12031', '剑川县', null, '大理白族自治州', '云南省', 'T', null, '53290000', '53000000', '53293100', '530000', '532900000000', '532931000000');
INSERT INTO `t_dic_district` VALUES ('12032', '鹤庆县', null, '大理白族自治州', '云南省', 'T', null, '53290000', '53000000', '53293200', '530000', '532900000000', '532932000000');
INSERT INTO `t_dic_district` VALUES ('12033', '瑞丽市', null, '德宏傣族景颇族自治州', '云南省', 'T', null, '53310000', '53000000', '53310200', '530000', '533100000000', '533102000000');
INSERT INTO `t_dic_district` VALUES ('12034', '潞西市', null, '德宏傣族景颇族自治州', '云南省', 'T', null, '53310000', '53000000', '53310300', '530000', null, null);
INSERT INTO `t_dic_district` VALUES ('12035', '市辖区', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53010100', '530000', null, null);
INSERT INTO `t_dic_district` VALUES ('12036', '五华区', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53010200', '530000', '530100000000', '530102000000');
INSERT INTO `t_dic_district` VALUES ('12037', '盘龙区', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53010300', '530000', '530100000000', '530103000000');
INSERT INTO `t_dic_district` VALUES ('12038', '官渡区', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53011100', '530000', '530100000000', '530111000000');
INSERT INTO `t_dic_district` VALUES ('12039', '西山区', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53011200', '530000', '530100000000', '530112000000');
INSERT INTO `t_dic_district` VALUES ('12040', '东川区', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53011300', '530000', '530100000000', '530113000000');
INSERT INTO `t_dic_district` VALUES ('12041', '呈贡区', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53012100', '530000', '530100000000', '530114000000');
INSERT INTO `t_dic_district` VALUES ('12042', '晋宁县', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53012200', '530000', '530100000000', '530122000000');
INSERT INTO `t_dic_district` VALUES ('12043', '富民县', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53012400', '530000', '530100000000', '530124000000');
INSERT INTO `t_dic_district` VALUES ('12044', '宜良县', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53012500', '530000', '530100000000', '530125000000');
INSERT INTO `t_dic_district` VALUES ('12045', '石林彝族自治县', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53012600', '530000', '530100000000', '530126000000');
INSERT INTO `t_dic_district` VALUES ('12046', '嵩明县', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53012700', '530000', '530100000000', '530127000000');
INSERT INTO `t_dic_district` VALUES ('12047', '禄劝彝族苗族自治县', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53012800', '530000', '530100000000', '530128000000');
INSERT INTO `t_dic_district` VALUES ('12048', '寻甸回族彝族自治县', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53012900', '530000', '530100000000', '530129000000');
INSERT INTO `t_dic_district` VALUES ('12049', '安宁市', null, '昆明市', '云南省', 'T', null, '53010000', '53000000', '53018100', '530000', '530100000000', '530181000000');
INSERT INTO `t_dic_district` VALUES ('12050', '市辖区', null, '曲靖市', '云南省', 'T', null, '53030000', '53000000', '53030100', '530000', null, null);
INSERT INTO `t_dic_district` VALUES ('12051', '麒麟区', null, '曲靖市', '云南省', 'T', null, '53030000', '53000000', '53030200', '530000', '530300000000', '530302000000');
INSERT INTO `t_dic_district` VALUES ('12052', '马龙县', null, '曲靖市', '云南省', 'T', null, '53030000', '53000000', '53032100', '530000', '530300000000', '530321000000');
INSERT INTO `t_dic_district` VALUES ('12053', '陆良县', null, '曲靖市', '云南省', 'T', null, '53030000', '53000000', '53032200', '530000', '530300000000', '530322000000');
INSERT INTO `t_dic_district` VALUES ('12054', '师宗县', null, '曲靖市', '云南省', 'T', null, '53030000', '53000000', '53032300', '530000', '530300000000', '530323000000');
INSERT INTO `t_dic_district` VALUES ('12055', '罗平县', null, '曲靖市', '云南省', 'T', null, '53030000', '53000000', '53032400', '530000', '530300000000', '530324000000');
INSERT INTO `t_dic_district` VALUES ('12056', '富源县', null, '曲靖市', '云南省', 'T', null, '53030000', '53000000', '53032500', '530000', '530300000000', '530325000000');
INSERT INTO `t_dic_district` VALUES ('12057', '会泽县', null, '曲靖市', '云南省', 'T', null, '53030000', '53000000', '53032600', '530000', '530300000000', '530326000000');
INSERT INTO `t_dic_district` VALUES ('12058', '沾益区', null, '曲靖市', '云南省', 'T', null, '53030000', '53000000', '53032800', '530000', '530300000000', '530303000000');
INSERT INTO `t_dic_district` VALUES ('12059', '宣威市', null, '曲靖市', '云南省', 'T', null, '53030000', '53000000', '53038100', '530000', '530300000000', '530381000000');
INSERT INTO `t_dic_district` VALUES ('12060', '市辖区', null, '玉溪市', '云南省', 'T', null, '53040000', '53000000', '53040100', '530000', null, null);
INSERT INTO `t_dic_district` VALUES ('12061', '红塔区', null, '玉溪市', '云南省', 'T', null, '53040000', '53000000', '53040200', '530000', '530400000000', '530402000000');
INSERT INTO `t_dic_district` VALUES ('12062', '江川区', null, '玉溪市', '云南省', 'T', null, '53040000', '53000000', '53042100', '530000', '530400000000', '530403000000');
INSERT INTO `t_dic_district` VALUES ('12063', '澄江县', null, '玉溪市', '云南省', 'T', null, '53040000', '53000000', '53042200', '530000', '530400000000', '530422000000');
INSERT INTO `t_dic_district` VALUES ('12064', '通海县', null, '玉溪市', '云南省', 'T', null, '53040000', '53000000', '53042300', '530000', '530400000000', '530423000000');
INSERT INTO `t_dic_district` VALUES ('12065', '华宁县', null, '玉溪市', '云南省', 'T', null, '53040000', '53000000', '53042400', '530000', '530400000000', '530424000000');
INSERT INTO `t_dic_district` VALUES ('12066', '易门县', null, '玉溪市', '云南省', 'T', null, '53040000', '53000000', '53042500', '530000', '530400000000', '530425000000');
INSERT INTO `t_dic_district` VALUES ('12067', '峨山彝族自治县', null, '玉溪市', '云南省', 'T', null, '53040000', '53000000', '53042600', '530000', '530400000000', '530426000000');
INSERT INTO `t_dic_district` VALUES ('12068', '新平彝族傣族自治县', null, '玉溪市', '云南省', 'T', null, '53040000', '53000000', '53042700', '530000', '530400000000', '530427000000');
INSERT INTO `t_dic_district` VALUES ('12069', '元江哈尼族彝族傣族自治县', null, '玉溪市', '云南省', 'T', null, '53040000', '53000000', '53042800', '530000', '530400000000', '530428000000');
INSERT INTO `t_dic_district` VALUES ('12070', '市辖区', null, '保山市', '云南省', 'T', null, '53050000', '53000000', '53050100', '530000', null, null);
INSERT INTO `t_dic_district` VALUES ('12071', '隆阳区', null, '保山市', '云南省', 'T', null, '53050000', '53000000', '53050200', '530000', '530500000000', '530502000000');
INSERT INTO `t_dic_district` VALUES ('12072', '施甸县', null, '保山市', '云南省', 'T', null, '53050000', '53000000', '53052100', '530000', '530500000000', '530521000000');
INSERT INTO `t_dic_district` VALUES ('12073', '腾冲市', null, '保山市', '云南省', 'T', null, '53050000', '53000000', '53052200', '530000', '530500000000', '530581000000');
INSERT INTO `t_dic_district` VALUES ('12074', '龙陵县', null, '保山市', '云南省', 'T', null, '53050000', '53000000', '53052300', '530000', '530500000000', '530523000000');
INSERT INTO `t_dic_district` VALUES ('12075', '昌宁县', null, '保山市', '云南省', 'T', null, '53050000', '53000000', '53052400', '530000', '530500000000', '530524000000');
INSERT INTO `t_dic_district` VALUES ('12076', '市辖区', null, '昭通市', '云南省', 'T', null, '53060000', '53000000', '53060100', '530000', null, null);
INSERT INTO `t_dic_district` VALUES ('12077', '乃东县', null, '山南地区', '西藏自治区', 'T', null, '54220000', '54000000', '54222100', '540000', null, null);
INSERT INTO `t_dic_district` VALUES ('12078', '扎囊县', null, '山南地区', '西藏自治区', 'T', null, '54220000', '54000000', '54222200', '540000', '540500000000', '540521000000');
INSERT INTO `t_dic_district` VALUES ('12079', '贡嘎县', null, '山南地区', '西藏自治区', 'T', null, '54220000', '54000000', '54222300', '540000', '540500000000', '540522000000');
INSERT INTO `t_dic_district` VALUES ('12080', '桑日县', null, '山南地区', '西藏自治区', 'T', null, '54220000', '54000000', '54222400', '540000', '540500000000', '540523000000');
INSERT INTO `t_dic_district` VALUES ('12081', '琼结县', null, '山南地区', '西藏自治区', 'T', null, '54220000', '54000000', '54222500', '540000', '540500000000', '540524000000');
INSERT INTO `t_dic_district` VALUES ('12082', '曲松县', null, '山南地区', '西藏自治区', 'T', null, '54220000', '54000000', '54222600', '540000', '540500000000', '540525000000');
INSERT INTO `t_dic_district` VALUES ('12083', '措美县', null, '山南地区', '西藏自治区', 'T', null, '54220000', '54000000', '54222700', '540000', '540500000000', '540526000000');
INSERT INTO `t_dic_district` VALUES ('12084', '洛扎县', null, '山南地区', '西藏自治区', 'T', null, '54220000', '54000000', '54222800', '540000', '540500000000', '540527000000');
INSERT INTO `t_dic_district` VALUES ('12085', '加查县', null, '山南地区', '西藏自治区', 'T', null, '54220000', '54000000', '54222900', '540000', '540500000000', '540528000000');
INSERT INTO `t_dic_district` VALUES ('12086', '隆子县', null, '山南地区', '西藏自治区', 'T', null, '54220000', '54000000', '54223100', '540000', '540500000000', '540529000000');
INSERT INTO `t_dic_district` VALUES ('12087', '错那县', null, '山南地区', '西藏自治区', 'T', null, '54220000', '54000000', '54223200', '540000', '540500000000', '540530000000');
INSERT INTO `t_dic_district` VALUES ('12088', '浪卡子县', null, '山南地区', '西藏自治区', 'T', null, '54220000', '54000000', '54223300', '540000', '540500000000', '540531000000');
INSERT INTO `t_dic_district` VALUES ('12089', '日喀则市', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54230100', '540000', null, null);
INSERT INTO `t_dic_district` VALUES ('12090', '南木林县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54232200', '540000', '540200000000', '540221000000');
INSERT INTO `t_dic_district` VALUES ('12091', '江孜县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54232300', '540000', '540200000000', '540222000000');
INSERT INTO `t_dic_district` VALUES ('12092', '定日县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54232400', '540000', '540200000000', '540223000000');
INSERT INTO `t_dic_district` VALUES ('12093', '萨迦县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54232500', '540000', '540200000000', '540224000000');
INSERT INTO `t_dic_district` VALUES ('12094', '拉孜县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54232600', '540000', '540200000000', '540225000000');
INSERT INTO `t_dic_district` VALUES ('12095', '昂仁县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54232700', '540000', '540200000000', '540226000000');
INSERT INTO `t_dic_district` VALUES ('12096', '南华县', null, '楚雄彝族自治州', '云南省', 'T', null, '53230000', '53000000', '53232400', '530000', '532300000000', '532324000000');
INSERT INTO `t_dic_district` VALUES ('12097', '姚安县', null, '楚雄彝族自治州', '云南省', 'T', null, '53230000', '53000000', '53232500', '530000', '532300000000', '532325000000');
INSERT INTO `t_dic_district` VALUES ('12098', '大姚县', null, '楚雄彝族自治州', '云南省', 'T', null, '53230000', '53000000', '53232600', '530000', '532300000000', '532326000000');
INSERT INTO `t_dic_district` VALUES ('12099', '永仁县', null, '楚雄彝族自治州', '云南省', 'T', null, '53230000', '53000000', '53232700', '530000', '532300000000', '532327000000');
INSERT INTO `t_dic_district` VALUES ('12100', '元谋县', null, '楚雄彝族自治州', '云南省', 'T', null, '53230000', '53000000', '53232800', '530000', '532300000000', '532328000000');
INSERT INTO `t_dic_district` VALUES ('12101', '武定县', null, '楚雄彝族自治州', '云南省', 'T', null, '53230000', '53000000', '53232900', '530000', '532300000000', '532329000000');
INSERT INTO `t_dic_district` VALUES ('12102', '禄丰县', null, '楚雄彝族自治州', '云南省', 'T', null, '53230000', '53000000', '53233100', '530000', '532300000000', '532331000000');
INSERT INTO `t_dic_district` VALUES ('12103', '个旧市', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53250100', '530000', '532500000000', '532501000000');
INSERT INTO `t_dic_district` VALUES ('12104', '开远市', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53250200', '530000', '532500000000', '532502000000');
INSERT INTO `t_dic_district` VALUES ('12105', '蒙自市', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53252200', '530000', '532500000000', '532503000000');
INSERT INTO `t_dic_district` VALUES ('12106', '屏边苗族自治县', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53252300', '530000', '532500000000', '532523000000');
INSERT INTO `t_dic_district` VALUES ('12107', '建水县', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53252400', '530000', '532500000000', '532524000000');
INSERT INTO `t_dic_district` VALUES ('12108', '石屏县', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53252500', '530000', '532500000000', '532525000000');
INSERT INTO `t_dic_district` VALUES ('12109', '弥勒市', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53252600', '530000', '532500000000', '532504000000');
INSERT INTO `t_dic_district` VALUES ('12110', '泸西县', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53252700', '530000', '532500000000', '532527000000');
INSERT INTO `t_dic_district` VALUES ('12111', '元阳县', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53252800', '530000', '532500000000', '532528000000');
INSERT INTO `t_dic_district` VALUES ('12112', '红河县', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53252900', '530000', '532500000000', '532529000000');
INSERT INTO `t_dic_district` VALUES ('12113', '金平苗族瑶族傣族自治县', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53253000', '530000', '532500000000', '532530000000');
INSERT INTO `t_dic_district` VALUES ('12114', '绿春县', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53253100', '530000', '532500000000', '532531000000');
INSERT INTO `t_dic_district` VALUES ('12115', '河口瑶族自治县', null, '红河哈尼族彝族自治州', '云南省', 'T', null, '53250000', '53000000', '53253200', '530000', '532500000000', '532532000000');
INSERT INTO `t_dic_district` VALUES ('12116', '文山市', null, '文山壮族苗族自治州', '云南省', 'T', null, '53260000', '53000000', '53262100', '530000', '532600000000', '532601000000');
INSERT INTO `t_dic_district` VALUES ('12117', '砚山县', null, '文山壮族苗族自治州', '云南省', 'T', null, '53260000', '53000000', '53262200', '530000', '532600000000', '532622000000');
INSERT INTO `t_dic_district` VALUES ('12118', '西畴县', null, '文山壮族苗族自治州', '云南省', 'T', null, '53260000', '53000000', '53262300', '530000', '532600000000', '532623000000');
INSERT INTO `t_dic_district` VALUES ('12119', '麻栗坡县', null, '文山壮族苗族自治州', '云南省', 'T', null, '53260000', '53000000', '53262400', '530000', '532600000000', '532624000000');
INSERT INTO `t_dic_district` VALUES ('12120', '马关县', null, '文山壮族苗族自治州', '云南省', 'T', null, '53260000', '53000000', '53262500', '530000', '532600000000', '532625000000');
INSERT INTO `t_dic_district` VALUES ('12121', '丘北县', null, '文山壮族苗族自治州', '云南省', 'T', null, '53260000', '53000000', '53262600', '530000', '532600000000', '532626000000');
INSERT INTO `t_dic_district` VALUES ('12122', '广南县', null, '文山壮族苗族自治州', '云南省', 'T', null, '53260000', '53000000', '53262700', '530000', '532600000000', '532627000000');
INSERT INTO `t_dic_district` VALUES ('12123', '富宁县', null, '文山壮族苗族自治州', '云南省', 'T', null, '53260000', '53000000', '53262800', '530000', '532600000000', '532628000000');
INSERT INTO `t_dic_district` VALUES ('12124', '思茅区', null, '思茅地区', '云南省', 'T', null, '53270000', '53000000', '53270100', '530000', '530800000000', '530802000000');
INSERT INTO `t_dic_district` VALUES ('12125', '普洱哈尼族彝族自治县', null, '思茅地区', '云南省', 'T', null, '53270000', '53000000', '53272200', '530000', null, null);
INSERT INTO `t_dic_district` VALUES ('12126', '墨江哈尼族自治县', null, '思茅地区', '云南省', 'T', null, '53270000', '53000000', '53272300', '530000', '530800000000', '530822000000');
INSERT INTO `t_dic_district` VALUES ('12127', '景东彝族自治县', null, '思茅地区', '云南省', 'T', null, '53270000', '53000000', '53272400', '530000', '530800000000', '530823000000');
INSERT INTO `t_dic_district` VALUES ('12128', '景谷傣族彝族自治县', null, '思茅地区', '云南省', 'T', null, '53270000', '53000000', '53272500', '530000', '530800000000', '530824000000');
INSERT INTO `t_dic_district` VALUES ('12129', '镇沅彝族哈尼族拉祜族自治县', null, '思茅地区', '云南省', 'T', null, '53270000', '53000000', '53272600', '530000', '530800000000', '530825000000');
INSERT INTO `t_dic_district` VALUES ('12130', '江城哈尼族彝族自治县', null, '思茅地区', '云南省', 'T', null, '53270000', '53000000', '53272700', '530000', '530800000000', '530826000000');
INSERT INTO `t_dic_district` VALUES ('12131', '孟连傣族拉祜族佤族自治县', null, '思茅地区', '云南省', 'T', null, '53270000', '53000000', '53272800', '530000', '530800000000', '530827000000');
INSERT INTO `t_dic_district` VALUES ('12132', '澜沧拉祜族自治县', null, '思茅地区', '云南省', 'T', null, '53270000', '53000000', '53272900', '530000', '530800000000', '530828000000');
INSERT INTO `t_dic_district` VALUES ('12133', '西盟佤族自治县', null, '思茅地区', '云南省', 'T', null, '53270000', '53000000', '53273000', '530000', '530800000000', '530829000000');
INSERT INTO `t_dic_district` VALUES ('12134', '雁塔区', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61011300', '610000', '610100000000', '610113000000');
INSERT INTO `t_dic_district` VALUES ('12135', '阎良区', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61011400', '610000', '610100000000', '610114000000');
INSERT INTO `t_dic_district` VALUES ('12136', '临潼区', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61011500', '610000', '610100000000', '610115000000');
INSERT INTO `t_dic_district` VALUES ('12137', '长安区', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61011600', '610000', '610100000000', '610116000000');
INSERT INTO `t_dic_district` VALUES ('12138', '蓝田县', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61012200', '610000', '610100000000', '610122000000');
INSERT INTO `t_dic_district` VALUES ('12139', '周至县', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61012400', '610000', '610100000000', '610124000000');
INSERT INTO `t_dic_district` VALUES ('12140', '户县', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61012500', '610000', '610100000000', '610125000000');
INSERT INTO `t_dic_district` VALUES ('12141', '高陵区', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61012600', '610000', '610100000000', '610117000000');
INSERT INTO `t_dic_district` VALUES ('12142', '市辖区', null, '铜川市', '陕西省', 'T', null, '61020000', '61000000', '61020100', '610000', '611000000000', '611001000000');
INSERT INTO `t_dic_district` VALUES ('12143', '王益区', null, '铜川市', '陕西省', 'T', null, '61020000', '61000000', '61020200', '610000', '610200000000', '610202000000');
INSERT INTO `t_dic_district` VALUES ('12144', '印台区', null, '铜川市', '陕西省', 'T', null, '61020000', '61000000', '61020300', '610000', '610200000000', '610203000000');
INSERT INTO `t_dic_district` VALUES ('12145', '耀州区', null, '铜川市', '陕西省', 'T', null, '61020000', '61000000', '61020400', '610000', '610200000000', '610204000000');
INSERT INTO `t_dic_district` VALUES ('12146', '宜君县', null, '铜川市', '陕西省', 'T', null, '61020000', '61000000', '61022200', '610000', '610200000000', '610222000000');
INSERT INTO `t_dic_district` VALUES ('12147', '市辖区', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61030100', '610000', null, null);
INSERT INTO `t_dic_district` VALUES ('12148', '渭滨区', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61030200', '610000', '610300000000', '610302000000');
INSERT INTO `t_dic_district` VALUES ('12149', '金台区', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61030300', '610000', '610300000000', '610303000000');
INSERT INTO `t_dic_district` VALUES ('12150', '陈仓区', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61030400', '610000', '610300000000', '610304000000');
INSERT INTO `t_dic_district` VALUES ('12151', '凤翔县', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61032200', '610000', '610300000000', '610322000000');
INSERT INTO `t_dic_district` VALUES ('12152', '岐山县', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61032300', '610000', '610300000000', '610323000000');
INSERT INTO `t_dic_district` VALUES ('12153', '扶风县', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61032400', '610000', '610300000000', '610324000000');
INSERT INTO `t_dic_district` VALUES ('12154', '梁河县', null, '德宏傣族景颇族自治州', '云南省', 'T', null, '53310000', '53000000', '53312200', '530000', '533100000000', '533122000000');
INSERT INTO `t_dic_district` VALUES ('12155', '盈江县', null, '德宏傣族景颇族自治州', '云南省', 'T', null, '53310000', '53000000', '53312300', '530000', '533100000000', '533123000000');
INSERT INTO `t_dic_district` VALUES ('12156', '陇川县', null, '德宏傣族景颇族自治州', '云南省', 'T', null, '53310000', '53000000', '53312400', '530000', '533100000000', '533124000000');
INSERT INTO `t_dic_district` VALUES ('12157', '泸水市', null, '怒江傈僳族自治州', '云南省', 'T', null, '53330000', '53000000', '53332100', '530000', '533300000000', '533301000000');
INSERT INTO `t_dic_district` VALUES ('12158', '福贡县', null, '怒江傈僳族自治州', '云南省', 'T', null, '53330000', '53000000', '53332300', '530000', '533300000000', '533323000000');
INSERT INTO `t_dic_district` VALUES ('12159', '贡山独龙族怒族自治县', null, '怒江傈僳族自治州', '云南省', 'T', null, '53330000', '53000000', '53332400', '530000', '533300000000', '533324000000');
INSERT INTO `t_dic_district` VALUES ('12160', '兰坪白族普米族自治县', null, '怒江傈僳族自治州', '云南省', 'T', null, '53330000', '53000000', '53332500', '530000', '533300000000', '533325000000');
INSERT INTO `t_dic_district` VALUES ('12161', '香格里拉市', null, '迪庆藏族自治州', '云南省', 'T', null, '53340000', '53000000', '53342100', '530000', '533400000000', '533401000000');
INSERT INTO `t_dic_district` VALUES ('12162', '德钦县', null, '迪庆藏族自治州', '云南省', 'T', null, '53340000', '53000000', '53342200', '530000', '533400000000', '533422000000');
INSERT INTO `t_dic_district` VALUES ('12163', '维西傈僳族自治县', null, '迪庆藏族自治州', '云南省', 'T', null, '53340000', '53000000', '53342300', '530000', '533400000000', '533423000000');
INSERT INTO `t_dic_district` VALUES ('12164', '临沧县', null, '临沧地区', '云南省', 'T', null, '53350000', '53000000', '53352100', '530000', null, null);
INSERT INTO `t_dic_district` VALUES ('12165', '凤庆县', null, '临沧地区', '云南省', 'T', null, '53350000', '53000000', '53352200', '530000', '530900000000', '530921000000');
INSERT INTO `t_dic_district` VALUES ('12166', '云县', null, '临沧地区', '云南省', 'T', null, '53350000', '53000000', '53352300', '530000', '530900000000', '530922000000');
INSERT INTO `t_dic_district` VALUES ('12167', '永德县', null, '临沧地区', '云南省', 'T', null, '53350000', '53000000', '53352400', '530000', '530900000000', '530923000000');
INSERT INTO `t_dic_district` VALUES ('12168', '镇康县', null, '临沧地区', '云南省', 'T', null, '53350000', '53000000', '53352500', '530000', '530900000000', '530924000000');
INSERT INTO `t_dic_district` VALUES ('12169', '双江拉祜族佤族布朗族傣族自治县', null, '临沧地区', '云南省', 'T', null, '53350000', '53000000', '53352600', '530000', '530900000000', '530925000000');
INSERT INTO `t_dic_district` VALUES ('12170', '耿马傣族佤族自治县', null, '临沧地区', '云南省', 'T', null, '53350000', '53000000', '53352700', '530000', '530900000000', '530926000000');
INSERT INTO `t_dic_district` VALUES ('12171', '沧源佤族自治县', null, '临沧地区', '云南省', 'T', null, '53350000', '53000000', '53352800', '530000', '530900000000', '530927000000');
INSERT INTO `t_dic_district` VALUES ('12172', '市辖区', null, '拉萨市', '西藏自治区', 'T', null, '54010000', '54000000', '54010100', '540000', '540500000000', '540501000000');
INSERT INTO `t_dic_district` VALUES ('12173', '城关区', null, '拉萨市', '西藏自治区', 'T', null, '54010000', '54000000', '54010200', '540000', '540100000000', '540102000000');
INSERT INTO `t_dic_district` VALUES ('12174', '林周县', null, '拉萨市', '西藏自治区', 'T', null, '54010000', '54000000', '54012100', '540000', '540100000000', '540121000000');
INSERT INTO `t_dic_district` VALUES ('12175', '当雄县', null, '拉萨市', '西藏自治区', 'T', null, '54010000', '54000000', '54012200', '540000', '540100000000', '540122000000');
INSERT INTO `t_dic_district` VALUES ('12176', '尼木县', null, '拉萨市', '西藏自治区', 'T', null, '54010000', '54000000', '54012300', '540000', '540100000000', '540123000000');
INSERT INTO `t_dic_district` VALUES ('12177', '曲水县', null, '拉萨市', '西藏自治区', 'T', null, '54010000', '54000000', '54012400', '540000', '540100000000', '540124000000');
INSERT INTO `t_dic_district` VALUES ('12178', '堆龙德庆区', null, '拉萨市', '西藏自治区', 'T', null, '54010000', '54000000', '54012500', '540000', '540100000000', '540103000000');
INSERT INTO `t_dic_district` VALUES ('12179', '达孜县', null, '拉萨市', '西藏自治区', 'T', null, '54010000', '54000000', '54012600', '540000', '540100000000', '540126000000');
INSERT INTO `t_dic_district` VALUES ('12180', '墨竹工卡县', null, '拉萨市', '西藏自治区', 'T', null, '54010000', '54000000', '54012700', '540000', '540100000000', '540127000000');
INSERT INTO `t_dic_district` VALUES ('12181', '昌都县', null, '昌都地区', '西藏自治区', 'T', null, '54210000', '54000000', '54212100', '540000', null, null);
INSERT INTO `t_dic_district` VALUES ('12182', '江达县', null, '昌都地区', '西藏自治区', 'T', null, '54210000', '54000000', '54212200', '540000', '540300000000', '540321000000');
INSERT INTO `t_dic_district` VALUES ('12183', '贡觉县', null, '昌都地区', '西藏自治区', 'T', null, '54210000', '54000000', '54212300', '540000', '540300000000', '540322000000');
INSERT INTO `t_dic_district` VALUES ('12184', '类乌齐县', null, '昌都地区', '西藏自治区', 'T', null, '54210000', '54000000', '54212400', '540000', '540300000000', '540323000000');
INSERT INTO `t_dic_district` VALUES ('12185', '丁青县', null, '昌都地区', '西藏自治区', 'T', null, '54210000', '54000000', '54212500', '540000', '540300000000', '540324000000');
INSERT INTO `t_dic_district` VALUES ('12186', '察雅县', null, '昌都地区', '西藏自治区', 'T', null, '54210000', '54000000', '54212600', '540000', '540300000000', '540325000000');
INSERT INTO `t_dic_district` VALUES ('12187', '八宿县', null, '昌都地区', '西藏自治区', 'T', null, '54210000', '54000000', '54212700', '540000', '540300000000', '540326000000');
INSERT INTO `t_dic_district` VALUES ('12188', '左贡县', null, '昌都地区', '西藏自治区', 'T', null, '54210000', '54000000', '54212800', '540000', '540300000000', '540327000000');
INSERT INTO `t_dic_district` VALUES ('12189', '芒康县', null, '昌都地区', '西藏自治区', 'T', null, '54210000', '54000000', '54212900', '540000', '540300000000', '540328000000');
INSERT INTO `t_dic_district` VALUES ('12190', '洛隆县', null, '昌都地区', '西藏自治区', 'T', null, '54210000', '54000000', '54213200', '540000', '540300000000', '540329000000');
INSERT INTO `t_dic_district` VALUES ('12191', '边坝县', null, '昌都地区', '西藏自治区', 'T', null, '54210000', '54000000', '54213300', '540000', '540300000000', '540330000000');
INSERT INTO `t_dic_district` VALUES ('12192', '黄陵县', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61063200', '610000', '610600000000', '610632000000');
INSERT INTO `t_dic_district` VALUES ('12193', '市辖区', null, '汉中市', '陕西省', 'T', null, '61070000', '61000000', '61070100', '610000', null, null);
INSERT INTO `t_dic_district` VALUES ('12194', '汉台区', null, '汉中市', '陕西省', 'T', null, '61070000', '61000000', '61070200', '610000', '610700000000', '610702000000');
INSERT INTO `t_dic_district` VALUES ('12195', '南郑县', null, '汉中市', '陕西省', 'T', null, '61070000', '61000000', '61072100', '610000', '610700000000', '610721000000');
INSERT INTO `t_dic_district` VALUES ('12196', '城固县', null, '汉中市', '陕西省', 'T', null, '61070000', '61000000', '61072200', '610000', '610700000000', '610722000000');
INSERT INTO `t_dic_district` VALUES ('12197', '洋县', null, '汉中市', '陕西省', 'T', null, '61070000', '61000000', '61072300', '610000', '610700000000', '610723000000');
INSERT INTO `t_dic_district` VALUES ('12198', '西乡县', null, '汉中市', '陕西省', 'T', null, '61070000', '61000000', '61072400', '610000', '610700000000', '610724000000');
INSERT INTO `t_dic_district` VALUES ('12199', '勉县', null, '汉中市', '陕西省', 'T', null, '61070000', '61000000', '61072500', '610000', '610700000000', '610725000000');
INSERT INTO `t_dic_district` VALUES ('12200', '宁强县', null, '汉中市', '陕西省', 'T', null, '61070000', '61000000', '61072600', '610000', '610700000000', '610726000000');
INSERT INTO `t_dic_district` VALUES ('12201', '略阳县', null, '汉中市', '陕西省', 'T', null, '61070000', '61000000', '61072700', '610000', '610700000000', '610727000000');
INSERT INTO `t_dic_district` VALUES ('12202', '镇巴县', null, '汉中市', '陕西省', 'T', null, '61070000', '61000000', '61072800', '610000', '610700000000', '610728000000');
INSERT INTO `t_dic_district` VALUES ('12203', '留坝县', null, '汉中市', '陕西省', 'T', null, '61070000', '61000000', '61072900', '610000', '610700000000', '610729000000');
INSERT INTO `t_dic_district` VALUES ('12204', '佛坪县', null, '汉中市', '陕西省', 'T', null, '61070000', '61000000', '61073000', '610000', '610700000000', '610730000000');
INSERT INTO `t_dic_district` VALUES ('12205', '市辖区', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61080100', '610000', null, null);
INSERT INTO `t_dic_district` VALUES ('12206', '榆阳区', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61080200', '610000', '610800000000', '610802000000');
INSERT INTO `t_dic_district` VALUES ('12207', '神木县', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61082100', '610000', '610800000000', '610821000000');
INSERT INTO `t_dic_district` VALUES ('12208', '府谷县', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61082200', '610000', '610800000000', '610822000000');
INSERT INTO `t_dic_district` VALUES ('12209', '横山区', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61082300', '610000', '610800000000', '610803000000');
INSERT INTO `t_dic_district` VALUES ('12210', '靖边县', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61082400', '610000', '610800000000', '610824000000');
INSERT INTO `t_dic_district` VALUES ('12211', '定边县', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61082500', '610000', '610800000000', '610825000000');
INSERT INTO `t_dic_district` VALUES ('12212', '谢通门县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54232800', '540000', '540200000000', '540227000000');
INSERT INTO `t_dic_district` VALUES ('12213', '白朗县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54232900', '540000', '540200000000', '540228000000');
INSERT INTO `t_dic_district` VALUES ('12214', '仁布县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54233000', '540000', '540200000000', '540229000000');
INSERT INTO `t_dic_district` VALUES ('12215', '康马县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54233100', '540000', '540200000000', '540230000000');
INSERT INTO `t_dic_district` VALUES ('12216', '定结县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54233200', '540000', '540200000000', '540231000000');
INSERT INTO `t_dic_district` VALUES ('12217', '仲巴县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54233300', '540000', '540200000000', '540232000000');
INSERT INTO `t_dic_district` VALUES ('12218', '亚东县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54233400', '540000', '540200000000', '540233000000');
INSERT INTO `t_dic_district` VALUES ('12219', '吉隆县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54233500', '540000', '540200000000', '540234000000');
INSERT INTO `t_dic_district` VALUES ('12220', '聂拉木县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54233600', '540000', '540200000000', '540235000000');
INSERT INTO `t_dic_district` VALUES ('12221', '萨嘎县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54233700', '540000', '540200000000', '540236000000');
INSERT INTO `t_dic_district` VALUES ('12222', '岗巴县', null, '日喀则地区', '西藏自治区', 'T', null, '54230000', '54000000', '54233800', '540000', '540200000000', '540237000000');
INSERT INTO `t_dic_district` VALUES ('12223', '那曲县', null, '那曲地区', '西藏自治区', 'T', null, '54240000', '54000000', '54242100', '540000', '542400000000', '542421000000');
INSERT INTO `t_dic_district` VALUES ('12224', '嘉黎县', null, '那曲地区', '西藏自治区', 'T', null, '54240000', '54000000', '54242200', '540000', '542400000000', '542422000000');
INSERT INTO `t_dic_district` VALUES ('12225', '比如县', null, '那曲地区', '西藏自治区', 'T', null, '54240000', '54000000', '54242300', '540000', '542400000000', '542423000000');
INSERT INTO `t_dic_district` VALUES ('12226', '聂荣县', null, '那曲地区', '西藏自治区', 'T', null, '54240000', '54000000', '54242400', '540000', '542400000000', '542424000000');
INSERT INTO `t_dic_district` VALUES ('12227', '安多县', null, '那曲地区', '西藏自治区', 'T', null, '54240000', '54000000', '54242500', '540000', '542400000000', '542425000000');
INSERT INTO `t_dic_district` VALUES ('12228', '申扎县', null, '那曲地区', '西藏自治区', 'T', null, '54240000', '54000000', '54242600', '540000', '542400000000', '542426000000');
INSERT INTO `t_dic_district` VALUES ('12229', '索县', null, '那曲地区', '西藏自治区', 'T', null, '54240000', '54000000', '54242700', '540000', '542400000000', '542427000000');
INSERT INTO `t_dic_district` VALUES ('12230', '班戈县', null, '那曲地区', '西藏自治区', 'T', null, '54240000', '54000000', '54242800', '540000', '542400000000', '542428000000');
INSERT INTO `t_dic_district` VALUES ('12231', '巴青县', null, '那曲地区', '西藏自治区', 'T', null, '54240000', '54000000', '54242900', '540000', '542400000000', '542429000000');
INSERT INTO `t_dic_district` VALUES ('12232', '尼玛县', null, '那曲地区', '西藏自治区', 'T', null, '54240000', '54000000', '54243000', '540000', '542400000000', '542430000000');
INSERT INTO `t_dic_district` VALUES ('12233', '普兰县', null, '阿里地区', '西藏自治区', 'T', null, '54250000', '54000000', '54252100', '540000', '542500000000', '542521000000');
INSERT INTO `t_dic_district` VALUES ('12234', '札达县', null, '阿里地区', '西藏自治区', 'T', null, '54250000', '54000000', '54252200', '540000', '542500000000', '542522000000');
INSERT INTO `t_dic_district` VALUES ('12235', '噶尔县', null, '阿里地区', '西藏自治区', 'T', null, '54250000', '54000000', '54252300', '540000', '542500000000', '542523000000');
INSERT INTO `t_dic_district` VALUES ('12236', '日土县', null, '阿里地区', '西藏自治区', 'T', null, '54250000', '54000000', '54252400', '540000', '542500000000', '542524000000');
INSERT INTO `t_dic_district` VALUES ('12237', '革吉县', null, '阿里地区', '西藏自治区', 'T', null, '54250000', '54000000', '54252500', '540000', '542500000000', '542525000000');
INSERT INTO `t_dic_district` VALUES ('12238', '改则县', null, '阿里地区', '西藏自治区', 'T', null, '54250000', '54000000', '54252600', '540000', '542500000000', '542526000000');
INSERT INTO `t_dic_district` VALUES ('12239', '措勤县', null, '阿里地区', '西藏自治区', 'T', null, '54250000', '54000000', '54252700', '540000', '542500000000', '542527000000');
INSERT INTO `t_dic_district` VALUES ('12240', '林芝县', null, '林芝地区', '西藏自治区', 'T', null, '54260000', '54000000', '54262100', '540000', null, null);
INSERT INTO `t_dic_district` VALUES ('12241', '工布江达县', null, '林芝地区', '西藏自治区', 'T', null, '54260000', '54000000', '54262200', '540000', '540400000000', '540421000000');
INSERT INTO `t_dic_district` VALUES ('12242', '米林县', null, '林芝地区', '西藏自治区', 'T', null, '54260000', '54000000', '54262300', '540000', '540400000000', '540422000000');
INSERT INTO `t_dic_district` VALUES ('12243', '墨脱县', null, '林芝地区', '西藏自治区', 'T', null, '54260000', '54000000', '54262400', '540000', '540400000000', '540423000000');
INSERT INTO `t_dic_district` VALUES ('12244', '波密县', null, '林芝地区', '西藏自治区', 'T', null, '54260000', '54000000', '54262500', '540000', '540400000000', '540424000000');
INSERT INTO `t_dic_district` VALUES ('12245', '察隅县', null, '林芝地区', '西藏自治区', 'T', null, '54260000', '54000000', '54262600', '540000', '540400000000', '540425000000');
INSERT INTO `t_dic_district` VALUES ('12246', '朗县', null, '林芝地区', '西藏自治区', 'T', null, '54260000', '54000000', '54262700', '540000', '540400000000', '540426000000');
INSERT INTO `t_dic_district` VALUES ('12247', '市辖区', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61010100', '610000', null, null);
INSERT INTO `t_dic_district` VALUES ('12248', '新城区', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61010200', '610000', '610100000000', '610102000000');
INSERT INTO `t_dic_district` VALUES ('12249', '碑林区', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61010300', '610000', '610100000000', '610103000000');
INSERT INTO `t_dic_district` VALUES ('12250', '莲湖区', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61010400', '610000', '610100000000', '610104000000');
INSERT INTO `t_dic_district` VALUES ('12251', '灞桥区', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61011100', '610000', '610100000000', '610111000000');
INSERT INTO `t_dic_district` VALUES ('12252', '未央区', null, '西安市', '陕西省', 'T', null, '61010000', '61000000', '61011200', '610000', '610100000000', '610112000000');
INSERT INTO `t_dic_district` VALUES ('12253', '会宁县', null, '白银市', '甘肃省', 'T', null, '62040000', '62000000', '62042200', '620000', '620400000000', '620422000000');
INSERT INTO `t_dic_district` VALUES ('12254', '景泰县', null, '白银市', '甘肃省', 'T', null, '62040000', '62000000', '62042300', '620000', '620400000000', '620423000000');
INSERT INTO `t_dic_district` VALUES ('12255', '市辖区', null, '天水市', '甘肃省', 'T', null, '62050000', '62000000', '62050100', '620000', '621200000000', '621201000000');
INSERT INTO `t_dic_district` VALUES ('12256', '秦州区', null, '天水市', '甘肃省', 'T', null, '62050000', '62000000', '62050200', '620000', '620500000000', '620502000000');
INSERT INTO `t_dic_district` VALUES ('12257', '麦积区', null, '天水市', '甘肃省', 'T', null, '62050000', '62000000', '62050300', '620000', '620500000000', '620503000000');
INSERT INTO `t_dic_district` VALUES ('12258', '清水县', null, '天水市', '甘肃省', 'T', null, '62050000', '62000000', '62052100', '620000', '620500000000', '620521000000');
INSERT INTO `t_dic_district` VALUES ('12259', '秦安县', null, '天水市', '甘肃省', 'T', null, '62050000', '62000000', '62052200', '620000', '620500000000', '620522000000');
INSERT INTO `t_dic_district` VALUES ('12260', '甘谷县', null, '天水市', '甘肃省', 'T', null, '62050000', '62000000', '62052300', '620000', '620500000000', '620523000000');
INSERT INTO `t_dic_district` VALUES ('12261', '武山县', null, '天水市', '甘肃省', 'T', null, '62050000', '62000000', '62052400', '620000', '620500000000', '620524000000');
INSERT INTO `t_dic_district` VALUES ('12262', '张家川回族自治县', null, '天水市', '甘肃省', 'T', null, '62050000', '62000000', '62052500', '620000', '620500000000', '620525000000');
INSERT INTO `t_dic_district` VALUES ('12263', '市辖区', null, '武威市', '甘肃省', 'T', null, '62060000', '62000000', '62060100', '620000', null, null);
INSERT INTO `t_dic_district` VALUES ('12264', '凉州区', null, '武威市', '甘肃省', 'T', null, '62060000', '62000000', '62060200', '620000', '620600000000', '620602000000');
INSERT INTO `t_dic_district` VALUES ('12265', '民勤县', null, '武威市', '甘肃省', 'T', null, '62060000', '62000000', '62062100', '620000', '620600000000', '620621000000');
INSERT INTO `t_dic_district` VALUES ('12266', '古浪县', null, '武威市', '甘肃省', 'T', null, '62060000', '62000000', '62062200', '620000', '620600000000', '620622000000');
INSERT INTO `t_dic_district` VALUES ('12267', '天祝藏族自治县', null, '武威市', '甘肃省', 'T', null, '62060000', '62000000', '62062300', '620000', '620600000000', '620623000000');
INSERT INTO `t_dic_district` VALUES ('12268', '市辖区', null, '张掖市', '甘肃省', 'T', null, '62070000', '62000000', '62070100', '620000', null, null);
INSERT INTO `t_dic_district` VALUES ('12269', '甘州区', null, '张掖市', '甘肃省', 'T', null, '62070000', '62000000', '62070200', '620000', '620700000000', '620702000000');
INSERT INTO `t_dic_district` VALUES ('12270', '肃南裕固族自治县', null, '张掖市', '甘肃省', 'T', null, '62070000', '62000000', '62072100', '620000', '620700000000', '620721000000');
INSERT INTO `t_dic_district` VALUES ('12271', '眉县', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61032600', '610000', '610300000000', '610326000000');
INSERT INTO `t_dic_district` VALUES ('12272', '陇县', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61032700', '610000', '610300000000', '610327000000');
INSERT INTO `t_dic_district` VALUES ('12273', '千阳县', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61032800', '610000', '610300000000', '610328000000');
INSERT INTO `t_dic_district` VALUES ('12274', '麟游县', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61032900', '610000', '610300000000', '610329000000');
INSERT INTO `t_dic_district` VALUES ('12275', '凤县', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61033000', '610000', '610300000000', '610330000000');
INSERT INTO `t_dic_district` VALUES ('12276', '太白县', null, '宝鸡市', '陕西省', 'T', null, '61030000', '61000000', '61033100', '610000', '610300000000', '610331000000');
INSERT INTO `t_dic_district` VALUES ('12277', '市辖区', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61040100', '610000', null, null);
INSERT INTO `t_dic_district` VALUES ('12278', '秦都区', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61040200', '610000', '610400000000', '610402000000');
INSERT INTO `t_dic_district` VALUES ('12279', '杨陵区', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61040300', '610000', '610400000000', '610403000000');
INSERT INTO `t_dic_district` VALUES ('12280', '渭城区', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61040400', '610000', '610400000000', '610404000000');
INSERT INTO `t_dic_district` VALUES ('12281', '三原县', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61042200', '610000', '610400000000', '610422000000');
INSERT INTO `t_dic_district` VALUES ('12282', '泾阳县', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61042300', '610000', '610400000000', '610423000000');
INSERT INTO `t_dic_district` VALUES ('12283', '乾县', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61042400', '610000', '610400000000', '610424000000');
INSERT INTO `t_dic_district` VALUES ('12284', '礼泉县', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61042500', '610000', '610400000000', '610425000000');
INSERT INTO `t_dic_district` VALUES ('12285', '永寿县', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61042600', '610000', '610400000000', '610426000000');
INSERT INTO `t_dic_district` VALUES ('12286', '彬县', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61042700', '610000', '610400000000', '610427000000');
INSERT INTO `t_dic_district` VALUES ('12287', '长武县', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61042800', '610000', '610400000000', '610428000000');
INSERT INTO `t_dic_district` VALUES ('12288', '旬邑县', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61042900', '610000', '610400000000', '610429000000');
INSERT INTO `t_dic_district` VALUES ('12289', '淳化县', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61043000', '610000', '610400000000', '610430000000');
INSERT INTO `t_dic_district` VALUES ('12290', '武功县', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61043100', '610000', '610400000000', '610431000000');
INSERT INTO `t_dic_district` VALUES ('12291', '兴平市', null, '咸阳市', '陕西省', 'T', null, '61040000', '61000000', '61048100', '610000', '610400000000', '610481000000');
INSERT INTO `t_dic_district` VALUES ('12292', '市辖区', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61050100', '610000', null, null);
INSERT INTO `t_dic_district` VALUES ('12293', '临渭区', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61050200', '610000', '610500000000', '610502000000');
INSERT INTO `t_dic_district` VALUES ('12294', '华县', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61052100', '610000', null, null);
INSERT INTO `t_dic_district` VALUES ('12295', '潼关县', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61052200', '610000', '610500000000', '610522000000');
INSERT INTO `t_dic_district` VALUES ('12296', '大荔县', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61052300', '610000', '610500000000', '610523000000');
INSERT INTO `t_dic_district` VALUES ('12297', '合阳县', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61052400', '610000', '610500000000', '610524000000');
INSERT INTO `t_dic_district` VALUES ('12298', '澄城县', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61052500', '610000', '610500000000', '610525000000');
INSERT INTO `t_dic_district` VALUES ('12299', '蒲城县', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61052600', '610000', '610500000000', '610526000000');
INSERT INTO `t_dic_district` VALUES ('12300', '白水县', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61052700', '610000', '610500000000', '610527000000');
INSERT INTO `t_dic_district` VALUES ('12301', '富平县', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61052800', '610000', '610500000000', '610528000000');
INSERT INTO `t_dic_district` VALUES ('12302', '韩城市', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61058100', '610000', '610500000000', '610581000000');
INSERT INTO `t_dic_district` VALUES ('12303', '华阴市', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61058200', '610000', '610500000000', '610582000000');
INSERT INTO `t_dic_district` VALUES ('12304', '市辖区', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61060100', '610000', null, null);
INSERT INTO `t_dic_district` VALUES ('12305', '宝塔区', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61060200', '610000', '610600000000', '610602000000');
INSERT INTO `t_dic_district` VALUES ('12306', '延长县', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61062100', '610000', '610600000000', '610621000000');
INSERT INTO `t_dic_district` VALUES ('12307', '延川县', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61062200', '610000', '610600000000', '610622000000');
INSERT INTO `t_dic_district` VALUES ('12308', '子长县', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61062300', '610000', '610600000000', '610623000000');
INSERT INTO `t_dic_district` VALUES ('12309', '安塞区', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61062400', '610000', '610600000000', '610603000000');
INSERT INTO `t_dic_district` VALUES ('12310', '志丹县', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61062500', '610000', '610600000000', '610625000000');
INSERT INTO `t_dic_district` VALUES ('12311', '吴起县', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61062600', '610000', '610600000000', '610626000000');
INSERT INTO `t_dic_district` VALUES ('12312', '甘泉县', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61062700', '610000', '610600000000', '610627000000');
INSERT INTO `t_dic_district` VALUES ('12313', '富县', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61062800', '610000', '610600000000', '610628000000');
INSERT INTO `t_dic_district` VALUES ('12314', '洛川县', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61062900', '610000', '610600000000', '610629000000');
INSERT INTO `t_dic_district` VALUES ('12315', '宜川县', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61063000', '610000', '610600000000', '610630000000');
INSERT INTO `t_dic_district` VALUES ('12316', '黄龙县', null, '延安市', '陕西省', 'T', null, '61060000', '61000000', '61063100', '610000', '610600000000', '610631000000');
INSERT INTO `t_dic_district` VALUES ('12317', '礼县', null, '陇南地区', '甘肃省', 'T', null, '62260000', '62000000', '62262800', '620000', '621200000000', '621226000000');
INSERT INTO `t_dic_district` VALUES ('12318', '两当县', null, '陇南地区', '甘肃省', 'T', null, '62260000', '62000000', '62262900', '620000', '621200000000', '621228000000');
INSERT INTO `t_dic_district` VALUES ('12319', '徽县', null, '陇南地区', '甘肃省', 'T', null, '62260000', '62000000', '62263000', '620000', '621200000000', '621227000000');
INSERT INTO `t_dic_district` VALUES ('12320', '临夏市', null, '临夏回族自治州', '甘肃省', 'T', null, '62290000', '62000000', '62290100', '620000', '622900000000', '622901000000');
INSERT INTO `t_dic_district` VALUES ('12321', '临夏县', null, '临夏回族自治州', '甘肃省', 'T', null, '62290000', '62000000', '62292100', '620000', '622900000000', '622921000000');
INSERT INTO `t_dic_district` VALUES ('12322', '康乐县', null, '临夏回族自治州', '甘肃省', 'T', null, '62290000', '62000000', '62292200', '620000', '622900000000', '622922000000');
INSERT INTO `t_dic_district` VALUES ('12323', '永靖县', null, '临夏回族自治州', '甘肃省', 'T', null, '62290000', '62000000', '62292300', '620000', '622900000000', '622923000000');
INSERT INTO `t_dic_district` VALUES ('12324', '广河县', null, '临夏回族自治州', '甘肃省', 'T', null, '62290000', '62000000', '62292400', '620000', '622900000000', '622924000000');
INSERT INTO `t_dic_district` VALUES ('12325', '和政县', null, '临夏回族自治州', '甘肃省', 'T', null, '62290000', '62000000', '62292500', '620000', '622900000000', '622925000000');
INSERT INTO `t_dic_district` VALUES ('12326', '东乡族自治县', null, '临夏回族自治州', '甘肃省', 'T', null, '62290000', '62000000', '62292600', '620000', '622900000000', '622926000000');
INSERT INTO `t_dic_district` VALUES ('12327', '积石山保安族东乡族撒拉族自治县', null, '临夏回族自治州', '甘肃省', 'T', null, '62290000', '62000000', '62292700', '620000', '622900000000', '622927000000');
INSERT INTO `t_dic_district` VALUES ('12328', '合作市', null, '甘南藏族自治州', '甘肃省', 'T', null, '62300000', '62000000', '62300100', '620000', '623000000000', '623001000000');
INSERT INTO `t_dic_district` VALUES ('12329', '临潭县', null, '甘南藏族自治州', '甘肃省', 'T', null, '62300000', '62000000', '62302100', '620000', '623000000000', '623021000000');
INSERT INTO `t_dic_district` VALUES ('12330', '卓尼县', null, '甘南藏族自治州', '甘肃省', 'T', null, '62300000', '62000000', '62302200', '620000', '623000000000', '623022000000');
INSERT INTO `t_dic_district` VALUES ('12331', '舟曲县', null, '甘南藏族自治州', '甘肃省', 'T', null, '62300000', '62000000', '62302300', '620000', '623000000000', '623023000000');
INSERT INTO `t_dic_district` VALUES ('12332', '迭部县', null, '甘南藏族自治州', '甘肃省', 'T', null, '62300000', '62000000', '62302400', '620000', '623000000000', '623024000000');
INSERT INTO `t_dic_district` VALUES ('12333', '玛曲县', null, '甘南藏族自治州', '甘肃省', 'T', null, '62300000', '62000000', '62302500', '620000', '623000000000', '623025000000');
INSERT INTO `t_dic_district` VALUES ('12334', '碌曲县', null, '甘南藏族自治州', '甘肃省', 'T', null, '62300000', '62000000', '62302600', '620000', '623000000000', '623026000000');
INSERT INTO `t_dic_district` VALUES ('12335', '绥德县', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61082600', '610000', '610800000000', '610826000000');
INSERT INTO `t_dic_district` VALUES ('12336', '米脂县', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61082700', '610000', '610800000000', '610827000000');
INSERT INTO `t_dic_district` VALUES ('12337', '佳县', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61082800', '610000', '610800000000', '610828000000');
INSERT INTO `t_dic_district` VALUES ('12338', '吴堡县', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61082900', '610000', '610800000000', '610829000000');
INSERT INTO `t_dic_district` VALUES ('12339', '清涧县', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61083000', '610000', '610800000000', '610830000000');
INSERT INTO `t_dic_district` VALUES ('12340', '子洲县', null, '榆林市', '陕西省', 'T', null, '61080000', '61000000', '61083100', '610000', '610800000000', '610831000000');
INSERT INTO `t_dic_district` VALUES ('12341', '市辖区', null, '安康市', '陕西省', 'T', null, '61090000', '61000000', '61090100', '610000', null, null);
INSERT INTO `t_dic_district` VALUES ('12342', '汉滨区', null, '安康市', '陕西省', 'T', null, '61090000', '61000000', '61090200', '610000', '610900000000', '610902000000');
INSERT INTO `t_dic_district` VALUES ('12343', '汉阴县', null, '安康市', '陕西省', 'T', null, '61090000', '61000000', '61092100', '610000', '610900000000', '610921000000');
INSERT INTO `t_dic_district` VALUES ('12344', '石泉县', null, '安康市', '陕西省', 'T', null, '61090000', '61000000', '61092200', '610000', '610900000000', '610922000000');
INSERT INTO `t_dic_district` VALUES ('12345', '宁陕县', null, '安康市', '陕西省', 'T', null, '61090000', '61000000', '61092300', '610000', '610900000000', '610923000000');
INSERT INTO `t_dic_district` VALUES ('12346', '紫阳县', null, '安康市', '陕西省', 'T', null, '61090000', '61000000', '61092400', '610000', '610900000000', '610924000000');
INSERT INTO `t_dic_district` VALUES ('12347', '岚皋县', null, '安康市', '陕西省', 'T', null, '61090000', '61000000', '61092500', '610000', '610900000000', '610925000000');
INSERT INTO `t_dic_district` VALUES ('12348', '平利县', null, '安康市', '陕西省', 'T', null, '61090000', '61000000', '61092600', '610000', '610900000000', '610926000000');
INSERT INTO `t_dic_district` VALUES ('12349', '镇坪县', null, '安康市', '陕西省', 'T', null, '61090000', '61000000', '61092700', '610000', '610900000000', '610927000000');
INSERT INTO `t_dic_district` VALUES ('12350', '旬阳县', null, '安康市', '陕西省', 'T', null, '61090000', '61000000', '61092800', '610000', '610900000000', '610928000000');
INSERT INTO `t_dic_district` VALUES ('12351', '白河县', null, '安康市', '陕西省', 'T', null, '61090000', '61000000', '61092900', '610000', '610900000000', '610929000000');
INSERT INTO `t_dic_district` VALUES ('12352', '市辖区', null, '商洛市', '陕西省', 'T', null, '61100000', '61000000', '61100100', '610000', null, null);
INSERT INTO `t_dic_district` VALUES ('12353', '商州区', null, '商洛市', '陕西省', 'T', null, '61100000', '61000000', '61100200', '610000', '611000000000', '611002000000');
INSERT INTO `t_dic_district` VALUES ('12354', '洛南县', null, '商洛市', '陕西省', 'T', null, '61100000', '61000000', '61102100', '610000', '611000000000', '611021000000');
INSERT INTO `t_dic_district` VALUES ('12355', '丹凤县', null, '商洛市', '陕西省', 'T', null, '61100000', '61000000', '61102200', '610000', '611000000000', '611022000000');
INSERT INTO `t_dic_district` VALUES ('12356', '商南县', null, '商洛市', '陕西省', 'T', null, '61100000', '61000000', '61102300', '610000', '611000000000', '611023000000');
INSERT INTO `t_dic_district` VALUES ('12357', '山阳县', null, '商洛市', '陕西省', 'T', null, '61100000', '61000000', '61102400', '610000', '611000000000', '611024000000');
INSERT INTO `t_dic_district` VALUES ('12358', '镇安县', null, '商洛市', '陕西省', 'T', null, '61100000', '61000000', '61102500', '610000', '611000000000', '611025000000');
INSERT INTO `t_dic_district` VALUES ('12359', '柞水县', null, '商洛市', '陕西省', 'T', null, '61100000', '61000000', '61102600', '610000', '611000000000', '611026000000');
INSERT INTO `t_dic_district` VALUES ('12360', '市辖区', null, '兰州市', '甘肃省', 'T', null, '62010000', '62000000', '62010100', '620000', null, null);
INSERT INTO `t_dic_district` VALUES ('12361', '城关区', null, '兰州市', '甘肃省', 'T', null, '62010000', '62000000', '62010200', '620000', '620100000000', '620102000000');
INSERT INTO `t_dic_district` VALUES ('12362', '七里河区', null, '兰州市', '甘肃省', 'T', null, '62010000', '62000000', '62010300', '620000', '620100000000', '620103000000');
INSERT INTO `t_dic_district` VALUES ('12363', '西固区', null, '兰州市', '甘肃省', 'T', null, '62010000', '62000000', '62010400', '620000', '620100000000', '620104000000');
INSERT INTO `t_dic_district` VALUES ('12364', '安宁区', null, '兰州市', '甘肃省', 'T', null, '62010000', '62000000', '62010500', '620000', '620100000000', '620105000000');
INSERT INTO `t_dic_district` VALUES ('12365', '红古区', null, '兰州市', '甘肃省', 'T', null, '62010000', '62000000', '62011100', '620000', '620100000000', '620111000000');
INSERT INTO `t_dic_district` VALUES ('12366', '永登县', null, '兰州市', '甘肃省', 'T', null, '62010000', '62000000', '62012100', '620000', '620100000000', '620121000000');
INSERT INTO `t_dic_district` VALUES ('12367', '皋兰县', null, '兰州市', '甘肃省', 'T', null, '62010000', '62000000', '62012200', '620000', '620100000000', '620122000000');
INSERT INTO `t_dic_district` VALUES ('12368', '榆中县', null, '兰州市', '甘肃省', 'T', null, '62010000', '62000000', '62012300', '620000', '620100000000', '620123000000');
INSERT INTO `t_dic_district` VALUES ('12369', '市辖区', null, '嘉峪关市', '甘肃省', 'T', null, '62020000', '62000000', '62020100', '620000', null, null);
INSERT INTO `t_dic_district` VALUES ('12370', '市辖区', null, '金昌市', '甘肃省', 'T', null, '62030000', '62000000', '62030100', '620000', null, null);
INSERT INTO `t_dic_district` VALUES ('12371', '金川区', null, '金昌市', '甘肃省', 'T', null, '62030000', '62000000', '62030200', '620000', '620300000000', '620302000000');
INSERT INTO `t_dic_district` VALUES ('12372', '永昌县', null, '金昌市', '甘肃省', 'T', null, '62030000', '62000000', '62032100', '620000', '620300000000', '620321000000');
INSERT INTO `t_dic_district` VALUES ('12373', '市辖区', null, '白银市', '甘肃省', 'T', null, '62040000', '62000000', '62040100', '620000', null, null);
INSERT INTO `t_dic_district` VALUES ('12374', '白银区', null, '白银市', '甘肃省', 'T', null, '62040000', '62000000', '62040200', '620000', '620400000000', '620402000000');
INSERT INTO `t_dic_district` VALUES ('12375', '平川区', null, '白银市', '甘肃省', 'T', null, '62040000', '62000000', '62040300', '620000', '620400000000', '620403000000');
INSERT INTO `t_dic_district` VALUES ('12376', '靖远县', null, '白银市', '甘肃省', 'T', null, '62040000', '62000000', '62042100', '620000', '620400000000', '620421000000');
INSERT INTO `t_dic_district` VALUES ('12377', '治多县', null, '玉树藏族自治州', '青海省', 'T', null, '63270000', '63000000', '63272400', '630000', '632700000000', '632724000000');
INSERT INTO `t_dic_district` VALUES ('12378', '囊谦县', null, '玉树藏族自治州', '青海省', 'T', null, '63270000', '63000000', '63272500', '630000', '632700000000', '632725000000');
INSERT INTO `t_dic_district` VALUES ('12379', '曲麻莱县', null, '玉树藏族自治州', '青海省', 'T', null, '63270000', '63000000', '63272600', '630000', '632700000000', '632726000000');
INSERT INTO `t_dic_district` VALUES ('12380', '格尔木市', null, '海西蒙古族藏族自治州', '青海省', 'T', null, '63280000', '63000000', '63280100', '630000', '632800000000', '632801000000');
INSERT INTO `t_dic_district` VALUES ('12381', '德令哈市', null, '海西蒙古族藏族自治州', '青海省', 'T', null, '63280000', '63000000', '63280200', '630000', '632800000000', '632802000000');
INSERT INTO `t_dic_district` VALUES ('12382', '乌兰县', null, '海西蒙古族藏族自治州', '青海省', 'T', null, '63280000', '63000000', '63282100', '630000', '632800000000', '632821000000');
INSERT INTO `t_dic_district` VALUES ('12383', '都兰县', null, '海西蒙古族藏族自治州', '青海省', 'T', null, '63280000', '63000000', '63282200', '630000', '632800000000', '632822000000');
INSERT INTO `t_dic_district` VALUES ('12384', '天峻县', null, '海西蒙古族藏族自治州', '青海省', 'T', null, '63280000', '63000000', '63282300', '630000', '632800000000', '632823000000');
INSERT INTO `t_dic_district` VALUES ('12385', '市辖区', null, '银川市', '宁夏回族自治区', 'T', null, '64010000', '64000000', '64010100', '640000', '640500000000', '640501000000');
INSERT INTO `t_dic_district` VALUES ('12386', '兴庆区', null, '银川市', '宁夏回族自治区', 'T', null, '64010000', '64000000', '64010400', '640000', '640100000000', '640104000000');
INSERT INTO `t_dic_district` VALUES ('12387', '西夏区', null, '银川市', '宁夏回族自治区', 'T', null, '64010000', '64000000', '64010500', '640000', '640100000000', '640105000000');
INSERT INTO `t_dic_district` VALUES ('12388', '金凤区', null, '银川市', '宁夏回族自治区', 'T', null, '64010000', '64000000', '64010600', '640000', '640100000000', '640106000000');
INSERT INTO `t_dic_district` VALUES ('12389', '永宁县', null, '银川市', '宁夏回族自治区', 'T', null, '64010000', '64000000', '64012100', '640000', '640100000000', '640121000000');
INSERT INTO `t_dic_district` VALUES ('12390', '贺兰县', null, '银川市', '宁夏回族自治区', 'T', null, '64010000', '64000000', '64012200', '640000', '640100000000', '640122000000');
INSERT INTO `t_dic_district` VALUES ('12391', '灵武市', null, '银川市', '宁夏回族自治区', 'T', null, '64010000', '64000000', '64018100', '640000', '640100000000', '640181000000');
INSERT INTO `t_dic_district` VALUES ('12392', '市辖区', null, '石嘴山市', '宁夏回族自治区', 'T', null, '64020000', '64000000', '64020100', '640000', null, null);
INSERT INTO `t_dic_district` VALUES ('12393', '民乐县', null, '张掖市', '甘肃省', 'T', null, '62070000', '62000000', '62072200', '620000', '620700000000', '620722000000');
INSERT INTO `t_dic_district` VALUES ('12394', '临泽县', null, '张掖市', '甘肃省', 'T', null, '62070000', '62000000', '62072300', '620000', '620700000000', '620723000000');
INSERT INTO `t_dic_district` VALUES ('12395', '高台县', null, '张掖市', '甘肃省', 'T', null, '62070000', '62000000', '62072400', '620000', '620700000000', '620724000000');
INSERT INTO `t_dic_district` VALUES ('12396', '山丹县', null, '张掖市', '甘肃省', 'T', null, '62070000', '62000000', '62072500', '620000', '620700000000', '620725000000');
INSERT INTO `t_dic_district` VALUES ('12397', '市辖区', null, '平凉市', '甘肃省', 'T', null, '62080000', '62000000', '62080100', '620000', null, null);
INSERT INTO `t_dic_district` VALUES ('12398', '崆峒区', null, '平凉市', '甘肃省', 'T', null, '62080000', '62000000', '62080200', '620000', '620800000000', '620802000000');
INSERT INTO `t_dic_district` VALUES ('12399', '泾川县', null, '平凉市', '甘肃省', 'T', null, '62080000', '62000000', '62082100', '620000', '620800000000', '620821000000');
INSERT INTO `t_dic_district` VALUES ('12400', '灵台县', null, '平凉市', '甘肃省', 'T', null, '62080000', '62000000', '62082200', '620000', '620800000000', '620822000000');
INSERT INTO `t_dic_district` VALUES ('12401', '崇信县', null, '平凉市', '甘肃省', 'T', null, '62080000', '62000000', '62082300', '620000', '620800000000', '620823000000');
INSERT INTO `t_dic_district` VALUES ('12402', '华亭县', null, '平凉市', '甘肃省', 'T', null, '62080000', '62000000', '62082400', '620000', '620800000000', '620824000000');
INSERT INTO `t_dic_district` VALUES ('12403', '庄浪县', null, '平凉市', '甘肃省', 'T', null, '62080000', '62000000', '62082500', '620000', '620800000000', '620825000000');
INSERT INTO `t_dic_district` VALUES ('12404', '静宁县', null, '平凉市', '甘肃省', 'T', null, '62080000', '62000000', '62082600', '620000', '620800000000', '620826000000');
INSERT INTO `t_dic_district` VALUES ('12405', '市辖区', null, '酒泉市', '甘肃省', 'T', null, '62090000', '62000000', '62090100', '620000', null, null);
INSERT INTO `t_dic_district` VALUES ('12406', '肃州区', null, '酒泉市', '甘肃省', 'T', null, '62090000', '62000000', '62090200', '620000', '620900000000', '620902000000');
INSERT INTO `t_dic_district` VALUES ('12407', '金塔县', null, '酒泉市', '甘肃省', 'T', null, '62090000', '62000000', '62092100', '620000', '620900000000', '620921000000');
INSERT INTO `t_dic_district` VALUES ('12408', '瓜州县', null, '酒泉市', '甘肃省', 'T', null, '62090000', '62000000', '62092200', '620000', '620900000000', '620922000000');
INSERT INTO `t_dic_district` VALUES ('12409', '肃北蒙古族自治县', null, '酒泉市', '甘肃省', 'T', null, '62090000', '62000000', '62092300', '620000', '620900000000', '620923000000');
INSERT INTO `t_dic_district` VALUES ('12410', '阿克塞哈萨克族自治县', null, '酒泉市', '甘肃省', 'T', null, '62090000', '62000000', '62092400', '620000', '620900000000', '620924000000');
INSERT INTO `t_dic_district` VALUES ('12411', '玉门市', null, '酒泉市', '甘肃省', 'T', null, '62090000', '62000000', '62098100', '620000', '620900000000', '620981000000');
INSERT INTO `t_dic_district` VALUES ('12412', '敦煌市', null, '酒泉市', '甘肃省', 'T', null, '62090000', '62000000', '62098200', '620000', '620900000000', '620982000000');
INSERT INTO `t_dic_district` VALUES ('12413', '市辖区', null, '庆阳市', '甘肃省', 'T', null, '62100000', '62000000', '62100100', '620000', null, null);
INSERT INTO `t_dic_district` VALUES ('12414', '西峰区', null, '庆阳市', '甘肃省', 'T', null, '62100000', '62000000', '62100200', '620000', '621000000000', '621002000000');
INSERT INTO `t_dic_district` VALUES ('12415', '庆城县', null, '庆阳市', '甘肃省', 'T', null, '62100000', '62000000', '62102100', '620000', '621000000000', '621021000000');
INSERT INTO `t_dic_district` VALUES ('12416', '环县', null, '庆阳市', '甘肃省', 'T', null, '62100000', '62000000', '62102200', '620000', '621000000000', '621022000000');
INSERT INTO `t_dic_district` VALUES ('12417', '华池县', null, '庆阳市', '甘肃省', 'T', null, '62100000', '62000000', '62102300', '620000', '621000000000', '621023000000');
INSERT INTO `t_dic_district` VALUES ('12418', '合水县', null, '庆阳市', '甘肃省', 'T', null, '62100000', '62000000', '62102400', '620000', '621000000000', '621024000000');
INSERT INTO `t_dic_district` VALUES ('12419', '正宁县', null, '庆阳市', '甘肃省', 'T', null, '62100000', '62000000', '62102500', '620000', '621000000000', '621025000000');
INSERT INTO `t_dic_district` VALUES ('12420', '宁县', null, '庆阳市', '甘肃省', 'T', null, '62100000', '62000000', '62102600', '620000', '621000000000', '621026000000');
INSERT INTO `t_dic_district` VALUES ('12421', '镇原县', null, '庆阳市', '甘肃省', 'T', null, '62100000', '62000000', '62102700', '620000', '621000000000', '621027000000');
INSERT INTO `t_dic_district` VALUES ('12422', '市辖区', null, '定西市', '甘肃省', 'T', null, '62110000', '62000000', '62110100', '620000', null, null);
INSERT INTO `t_dic_district` VALUES ('12423', '安定区', null, '定西市', '甘肃省', 'T', null, '62110000', '62000000', '62110200', '620000', '621100000000', '621102000000');
INSERT INTO `t_dic_district` VALUES ('12424', '通渭县', null, '定西市', '甘肃省', 'T', null, '62110000', '62000000', '62112100', '620000', '621100000000', '621121000000');
INSERT INTO `t_dic_district` VALUES ('12425', '陇西县', null, '定西市', '甘肃省', 'T', null, '62110000', '62000000', '62112200', '620000', '621100000000', '621122000000');
INSERT INTO `t_dic_district` VALUES ('12426', '渭源县', null, '定西市', '甘肃省', 'T', null, '62110000', '62000000', '62112300', '620000', '621100000000', '621123000000');
INSERT INTO `t_dic_district` VALUES ('12427', '临洮县', null, '定西市', '甘肃省', 'T', null, '62110000', '62000000', '62112400', '620000', '621100000000', '621124000000');
INSERT INTO `t_dic_district` VALUES ('12428', '漳县', null, '定西市', '甘肃省', 'T', null, '62110000', '62000000', '62112500', '620000', '621100000000', '621125000000');
INSERT INTO `t_dic_district` VALUES ('12429', '岷县', null, '定西市', '甘肃省', 'T', null, '62110000', '62000000', '62112600', '620000', '621100000000', '621126000000');
INSERT INTO `t_dic_district` VALUES ('12430', '武都区', null, '陇南地区', '甘肃省', 'T', null, '62260000', '62000000', '62262100', '620000', '621200000000', '621202000000');
INSERT INTO `t_dic_district` VALUES ('12431', '宕昌县', null, '陇南地区', '甘肃省', 'T', null, '62260000', '62000000', '62262300', '620000', '621200000000', '621223000000');
INSERT INTO `t_dic_district` VALUES ('12432', '成县', null, '陇南地区', '甘肃省', 'T', null, '62260000', '62000000', '62262400', '620000', '621200000000', '621221000000');
INSERT INTO `t_dic_district` VALUES ('12433', '康县', null, '陇南地区', '甘肃省', 'T', null, '62260000', '62000000', '62262500', '620000', '621200000000', '621224000000');
INSERT INTO `t_dic_district` VALUES ('12434', '文县', null, '陇南地区', '甘肃省', 'T', null, '62260000', '62000000', '62262600', '620000', '621200000000', '621222000000');
INSERT INTO `t_dic_district` VALUES ('12435', '西和县', null, '陇南地区', '甘肃省', 'T', null, '62260000', '62000000', '62262700', '620000', '621200000000', '621225000000');
INSERT INTO `t_dic_district` VALUES ('12436', '巴里坤哈萨克自治县', null, '哈密地区', '新疆维吾尔自治区', 'T', null, '65220000', '65000000', '65222200', '650000', '650500000000', '650521000000');
INSERT INTO `t_dic_district` VALUES ('12437', '伊吾县', null, '哈密地区', '新疆维吾尔自治区', 'T', null, '65220000', '65000000', '65222300', '650000', '650500000000', '650522000000');
INSERT INTO `t_dic_district` VALUES ('12438', '昌吉市', null, '昌吉回族自治州', '新疆维吾尔自治区', 'T', null, '65230000', '65000000', '65230100', '650000', '652300000000', '652301000000');
INSERT INTO `t_dic_district` VALUES ('12439', '阜康市', null, '昌吉回族自治州', '新疆维吾尔自治区', 'T', null, '65230000', '65000000', '65230200', '650000', '652300000000', '652302000000');
INSERT INTO `t_dic_district` VALUES ('12440', '米泉市', null, '昌吉回族自治州', '新疆维吾尔自治区', 'T', null, '65230000', '65000000', '65230300', '650000', null, null);
INSERT INTO `t_dic_district` VALUES ('12441', '呼图壁县', null, '昌吉回族自治州', '新疆维吾尔自治区', 'T', null, '65230000', '65000000', '65232300', '650000', '652300000000', '652323000000');
INSERT INTO `t_dic_district` VALUES ('12442', '玛纳斯县', null, '昌吉回族自治州', '新疆维吾尔自治区', 'T', null, '65230000', '65000000', '65232400', '650000', '652300000000', '652324000000');
INSERT INTO `t_dic_district` VALUES ('12443', '奇台县', null, '昌吉回族自治州', '新疆维吾尔自治区', 'T', null, '65230000', '65000000', '65232500', '650000', '652300000000', '652325000000');
INSERT INTO `t_dic_district` VALUES ('12444', '吉木萨尔县', null, '昌吉回族自治州', '新疆维吾尔自治区', 'T', null, '65230000', '65000000', '65232700', '650000', '652300000000', '652327000000');
INSERT INTO `t_dic_district` VALUES ('12445', '木垒哈萨克自治县', null, '昌吉回族自治州', '新疆维吾尔自治区', 'T', null, '65230000', '65000000', '65232800', '650000', '652300000000', '652328000000');
INSERT INTO `t_dic_district` VALUES ('12446', '博乐市', null, '博尔塔拉蒙古自治州', '新疆维吾尔自治区', 'T', null, '65270000', '65000000', '65270100', '650000', '652700000000', '652701000000');
INSERT INTO `t_dic_district` VALUES ('12447', '精河县', null, '博尔塔拉蒙古自治州', '新疆维吾尔自治区', 'T', null, '65270000', '65000000', '65272200', '650000', '652700000000', '652722000000');
INSERT INTO `t_dic_district` VALUES ('12448', '温泉县', null, '博尔塔拉蒙古自治州', '新疆维吾尔自治区', 'T', null, '65270000', '65000000', '65272300', '650000', '652700000000', '652723000000');
INSERT INTO `t_dic_district` VALUES ('12449', '库尔勒市', null, '巴音郭楞蒙古自治州', '新疆维吾尔自治区', 'T', null, '65280000', '65000000', '65280100', '650000', '652800000000', '652801000000');
INSERT INTO `t_dic_district` VALUES ('12450', '轮台县', null, '巴音郭楞蒙古自治州', '新疆维吾尔自治区', 'T', null, '65280000', '65000000', '65282200', '650000', '652800000000', '652822000000');
INSERT INTO `t_dic_district` VALUES ('12451', '夏河县', null, '甘南藏族自治州', '甘肃省', 'T', null, '62300000', '62000000', '62302700', '620000', '623000000000', '623027000000');
INSERT INTO `t_dic_district` VALUES ('12452', '市辖区', null, '西宁市', '青海省', 'T', null, '63010000', '63000000', '63010100', '630000', '630100000000', '630101000000');
INSERT INTO `t_dic_district` VALUES ('12453', '城东区', null, '西宁市', '青海省', 'T', null, '63010000', '63000000', '63010200', '630000', '630100000000', '630102000000');
INSERT INTO `t_dic_district` VALUES ('12454', '城中区', null, '西宁市', '青海省', 'T', null, '63010000', '63000000', '63010300', '630000', '630100000000', '630103000000');
INSERT INTO `t_dic_district` VALUES ('12455', '城西区', null, '西宁市', '青海省', 'T', null, '63010000', '63000000', '63010400', '630000', '630100000000', '630104000000');
INSERT INTO `t_dic_district` VALUES ('12456', '城北区', null, '西宁市', '青海省', 'T', null, '63010000', '63000000', '63010500', '630000', '630100000000', '630105000000');
INSERT INTO `t_dic_district` VALUES ('12457', '大通回族土族自治县', null, '西宁市', '青海省', 'T', null, '63010000', '63000000', '63012100', '630000', '630100000000', '630121000000');
INSERT INTO `t_dic_district` VALUES ('12458', '湟中县', null, '西宁市', '青海省', 'T', null, '63010000', '63000000', '63012200', '630000', '630100000000', '630122000000');
INSERT INTO `t_dic_district` VALUES ('12459', '湟源县', null, '西宁市', '青海省', 'T', null, '63010000', '63000000', '63012300', '630000', '630100000000', '630123000000');
INSERT INTO `t_dic_district` VALUES ('12460', '平安区', null, '海东地区', '青海省', 'T', null, '63210000', '63000000', '63212100', '630000', '630200000000', '630203000000');
INSERT INTO `t_dic_district` VALUES ('12461', '民和回族土族自治县', null, '海东地区', '青海省', 'T', null, '63210000', '63000000', '63212200', '630000', '630200000000', '630222000000');
INSERT INTO `t_dic_district` VALUES ('12462', '乐都区', null, '海东地区', '青海省', 'T', null, '63210000', '63000000', '63212300', '630000', '630200000000', '630202000000');
INSERT INTO `t_dic_district` VALUES ('12463', '互助土族自治县', null, '海东地区', '青海省', 'T', null, '63210000', '63000000', '63212600', '630000', '630200000000', '630223000000');
INSERT INTO `t_dic_district` VALUES ('12464', '化隆回族自治县', null, '海东地区', '青海省', 'T', null, '63210000', '63000000', '63212700', '630000', '630200000000', '630224000000');
INSERT INTO `t_dic_district` VALUES ('12465', '循化撒拉族自治县', null, '海东地区', '青海省', 'T', null, '63210000', '63000000', '63212800', '630000', '630200000000', '630225000000');
INSERT INTO `t_dic_district` VALUES ('12466', '门源回族自治县', null, '海北藏族自治州', '青海省', 'T', null, '63220000', '63000000', '63222100', '630000', '632200000000', '632221000000');
INSERT INTO `t_dic_district` VALUES ('12467', '祁连县', null, '海北藏族自治州', '青海省', 'T', null, '63220000', '63000000', '63222200', '630000', '632200000000', '632222000000');
INSERT INTO `t_dic_district` VALUES ('12468', '海晏县', null, '海北藏族自治州', '青海省', 'T', null, '63220000', '63000000', '63222300', '630000', '632200000000', '632223000000');
INSERT INTO `t_dic_district` VALUES ('12469', '刚察县', null, '海北藏族自治州', '青海省', 'T', null, '63220000', '63000000', '63222400', '630000', '632200000000', '632224000000');
INSERT INTO `t_dic_district` VALUES ('12470', '同仁县', null, '黄南藏族自治州', '青海省', 'T', null, '63230000', '63000000', '63232100', '630000', '632300000000', '632321000000');
INSERT INTO `t_dic_district` VALUES ('12471', '尖扎县', null, '黄南藏族自治州', '青海省', 'T', null, '63230000', '63000000', '63232200', '630000', '632300000000', '632322000000');
INSERT INTO `t_dic_district` VALUES ('12472', '泽库县', null, '黄南藏族自治州', '青海省', 'T', null, '63230000', '63000000', '63232300', '630000', '632300000000', '632323000000');
INSERT INTO `t_dic_district` VALUES ('12473', '河南蒙古族自治县', null, '黄南藏族自治州', '青海省', 'T', null, '63230000', '63000000', '63232400', '630000', '632300000000', '632324000000');
INSERT INTO `t_dic_district` VALUES ('12474', '共和县', null, '海南藏族自治州', '青海省', 'T', null, '63250000', '63000000', '63252100', '630000', '632500000000', '632521000000');
INSERT INTO `t_dic_district` VALUES ('12475', '同德县', null, '海南藏族自治州', '青海省', 'T', null, '63250000', '63000000', '63252200', '630000', '632500000000', '632522000000');
INSERT INTO `t_dic_district` VALUES ('12476', '贵德县', null, '海南藏族自治州', '青海省', 'T', null, '63250000', '63000000', '63252300', '630000', '632500000000', '632523000000');
INSERT INTO `t_dic_district` VALUES ('12477', '兴海县', null, '海南藏族自治州', '青海省', 'T', null, '63250000', '63000000', '63252400', '630000', '632500000000', '632524000000');
INSERT INTO `t_dic_district` VALUES ('12478', '贵南县', null, '海南藏族自治州', '青海省', 'T', null, '63250000', '63000000', '63252500', '630000', '632500000000', '632525000000');
INSERT INTO `t_dic_district` VALUES ('12479', '玛沁县', null, '果洛藏族自治州', '青海省', 'T', null, '63260000', '63000000', '63262100', '630000', '632600000000', '632621000000');
INSERT INTO `t_dic_district` VALUES ('12480', '班玛县', null, '果洛藏族自治州', '青海省', 'T', null, '63260000', '63000000', '63262200', '630000', '632600000000', '632622000000');
INSERT INTO `t_dic_district` VALUES ('12481', '甘德县', null, '果洛藏族自治州', '青海省', 'T', null, '63260000', '63000000', '63262300', '630000', '632600000000', '632623000000');
INSERT INTO `t_dic_district` VALUES ('12482', '达日县', null, '果洛藏族自治州', '青海省', 'T', null, '63260000', '63000000', '63262400', '630000', '632600000000', '632624000000');
INSERT INTO `t_dic_district` VALUES ('12483', '久治县', null, '果洛藏族自治州', '青海省', 'T', null, '63260000', '63000000', '63262500', '630000', '632600000000', '632625000000');
INSERT INTO `t_dic_district` VALUES ('12484', '玛多县', null, '果洛藏族自治州', '青海省', 'T', null, '63260000', '63000000', '63262600', '630000', '632600000000', '632626000000');
INSERT INTO `t_dic_district` VALUES ('12485', '玉树市', null, '玉树藏族自治州', '青海省', 'T', null, '63270000', '63000000', '63272100', '630000', '632700000000', '632701000000');
INSERT INTO `t_dic_district` VALUES ('12486', '杂多县', null, '玉树藏族自治州', '青海省', 'T', null, '63270000', '63000000', '63272200', '630000', '632700000000', '632722000000');
INSERT INTO `t_dic_district` VALUES ('12487', '称多县', null, '玉树藏族自治州', '青海省', 'T', null, '63270000', '63000000', '63272300', '630000', '632700000000', '632723000000');
INSERT INTO `t_dic_district` VALUES ('12488', '于田县', null, '和田地区', '新疆维吾尔自治区', 'T', null, '65320000', '65000000', '65322600', '650000', '653200000000', '653226000000');
INSERT INTO `t_dic_district` VALUES ('12489', '民丰县', null, '和田地区', '新疆维吾尔自治区', 'T', null, '65320000', '65000000', '65322700', '650000', '653200000000', '653227000000');
INSERT INTO `t_dic_district` VALUES ('12490', '伊宁市', null, '伊犁哈萨克自治州', '新疆维吾尔自治区', 'T', null, '65400000', '65000000', '65400200', '650000', '654000000000', '654002000000');
INSERT INTO `t_dic_district` VALUES ('12491', '奎屯市', null, '伊犁哈萨克自治州', '新疆维吾尔自治区', 'T', null, '65400000', '65000000', '65400300', '650000', '654000000000', '654003000000');
INSERT INTO `t_dic_district` VALUES ('12492', '伊宁县', null, '伊犁哈萨克自治州', '新疆维吾尔自治区', 'T', null, '65400000', '65000000', '65402100', '650000', '654000000000', '654021000000');
INSERT INTO `t_dic_district` VALUES ('12493', '察布查尔锡伯自治县', null, '伊犁哈萨克自治州', '新疆维吾尔自治区', 'T', null, '65400000', '65000000', '65402200', '650000', '654000000000', '654022000000');
INSERT INTO `t_dic_district` VALUES ('12494', '霍城县', null, '伊犁哈萨克自治州', '新疆维吾尔自治区', 'T', null, '65400000', '65000000', '65402300', '650000', '654000000000', '654023000000');
INSERT INTO `t_dic_district` VALUES ('12495', '巩留县', null, '伊犁哈萨克自治州', '新疆维吾尔自治区', 'T', null, '65400000', '65000000', '65402400', '650000', '654000000000', '654024000000');
INSERT INTO `t_dic_district` VALUES ('12496', '新源县', null, '伊犁哈萨克自治州', '新疆维吾尔自治区', 'T', null, '65400000', '65000000', '65402500', '650000', '654000000000', '654025000000');
INSERT INTO `t_dic_district` VALUES ('12497', '昭苏县', null, '伊犁哈萨克自治州', '新疆维吾尔自治区', 'T', null, '65400000', '65000000', '65402600', '650000', '654000000000', '654026000000');
INSERT INTO `t_dic_district` VALUES ('12498', '特克斯县', null, '伊犁哈萨克自治州', '新疆维吾尔自治区', 'T', null, '65400000', '65000000', '65402700', '650000', '654000000000', '654027000000');
INSERT INTO `t_dic_district` VALUES ('12499', '尼勒克县', null, '伊犁哈萨克自治州', '新疆维吾尔自治区', 'T', null, '65400000', '65000000', '65402800', '650000', '654000000000', '654028000000');
INSERT INTO `t_dic_district` VALUES ('12500', '塔城市', null, '塔城地区', '新疆维吾尔自治区', 'T', null, '65420000', '65000000', '65420100', '650000', '654200000000', '654201000000');
INSERT INTO `t_dic_district` VALUES ('12501', '乌苏市', null, '塔城地区', '新疆维吾尔自治区', 'T', null, '65420000', '65000000', '65420200', '650000', '654200000000', '654202000000');
INSERT INTO `t_dic_district` VALUES ('12502', '额敏县', null, '塔城地区', '新疆维吾尔自治区', 'T', null, '65420000', '65000000', '65422100', '650000', '654200000000', '654221000000');
INSERT INTO `t_dic_district` VALUES ('12503', '沙湾县', null, '塔城地区', '新疆维吾尔自治区', 'T', null, '65420000', '65000000', '65422300', '650000', '654200000000', '654223000000');
INSERT INTO `t_dic_district` VALUES ('12504', '大武口区', null, '石嘴山市', '宁夏回族自治区', 'T', null, '64020000', '64000000', '64020200', '640000', '640200000000', '640202000000');
INSERT INTO `t_dic_district` VALUES ('12505', '石嘴山区', null, '石嘴山市', '宁夏回族自治区', 'T', null, '64020000', '64000000', '64020300', '640000', null, null);
INSERT INTO `t_dic_district` VALUES ('12506', '平罗县', null, '石嘴山市', '宁夏回族自治区', 'T', null, '64020000', '64000000', '64022100', '640000', '640200000000', '640221000000');
INSERT INTO `t_dic_district` VALUES ('12507', '陶乐县', null, '石嘴山市', '宁夏回族自治区', 'T', null, '64020000', '64000000', '64022200', '640000', null, null);
INSERT INTO `t_dic_district` VALUES ('12508', '惠农区', null, '石嘴山市', '宁夏回族自治区', 'T', null, '64020000', '64000000', '64022300', '640000', '640200000000', '640205000000');
INSERT INTO `t_dic_district` VALUES ('12509', '市辖区', null, '吴忠市', '宁夏回族自治区', 'T', null, '64030000', '64000000', '64030100', '640000', null, null);
INSERT INTO `t_dic_district` VALUES ('12510', '利通区', null, '吴忠市', '宁夏回族自治区', 'T', null, '64030000', '64000000', '64030200', '640000', '640300000000', '640302000000');
INSERT INTO `t_dic_district` VALUES ('12511', '中卫县', null, '吴忠市', '宁夏回族自治区', 'T', null, '64030000', '64000000', '64032100', '640000', null, null);
INSERT INTO `t_dic_district` VALUES ('12512', '中宁县', null, '吴忠市', '宁夏回族自治区', 'T', null, '64030000', '64000000', '64032200', '640000', '640500000000', '640521000000');
INSERT INTO `t_dic_district` VALUES ('12513', '盐池县', null, '吴忠市', '宁夏回族自治区', 'T', null, '64030000', '64000000', '64032300', '640000', '640300000000', '640323000000');
INSERT INTO `t_dic_district` VALUES ('12514', '同心县', null, '吴忠市', '宁夏回族自治区', 'T', null, '64030000', '64000000', '64032400', '640000', '640300000000', '640324000000');
INSERT INTO `t_dic_district` VALUES ('12515', '青铜峡市', null, '吴忠市', '宁夏回族自治区', 'T', null, '64030000', '64000000', '64038100', '640000', '640300000000', '640381000000');
INSERT INTO `t_dic_district` VALUES ('12516', '市辖区', null, '固原市', '宁夏回族自治区', 'T', null, '64040000', '64000000', '64040100', '640000', null, null);
INSERT INTO `t_dic_district` VALUES ('12517', '原州区', null, '固原市', '宁夏回族自治区', 'T', null, '64040000', '64000000', '64040200', '640000', '640400000000', '640402000000');
INSERT INTO `t_dic_district` VALUES ('12518', '海原县', null, '固原市', '宁夏回族自治区', 'T', null, '64040000', '64000000', '64042100', '640000', '640500000000', '640522000000');
INSERT INTO `t_dic_district` VALUES ('12519', '西吉县', null, '固原市', '宁夏回族自治区', 'T', null, '64040000', '64000000', '64042200', '640000', '640400000000', '640422000000');
INSERT INTO `t_dic_district` VALUES ('12520', '隆德县', null, '固原市', '宁夏回族自治区', 'T', null, '64040000', '64000000', '64042300', '640000', '640400000000', '640423000000');
INSERT INTO `t_dic_district` VALUES ('12521', '泾源县', null, '固原市', '宁夏回族自治区', 'T', null, '64040000', '64000000', '64042400', '640000', '640400000000', '640424000000');
INSERT INTO `t_dic_district` VALUES ('12522', '彭阳县', null, '固原市', '宁夏回族自治区', 'T', null, '64040000', '64000000', '64042500', '640000', '640400000000', '640425000000');
INSERT INTO `t_dic_district` VALUES ('12523', '市辖区', null, '乌鲁木齐市', '新疆维吾尔自治区', 'T', null, '65010000', '65000000', '65010100', '650000', '650200000000', '650201000000');
INSERT INTO `t_dic_district` VALUES ('12524', '天山区', null, '乌鲁木齐市', '新疆维吾尔自治区', 'T', null, '65010000', '65000000', '65010200', '650000', '650100000000', '650102000000');
INSERT INTO `t_dic_district` VALUES ('12525', '沙依巴克区', null, '乌鲁木齐市', '新疆维吾尔自治区', 'T', null, '65010000', '65000000', '65010300', '650000', '650100000000', '650103000000');
INSERT INTO `t_dic_district` VALUES ('12526', '新市区', null, '乌鲁木齐市', '新疆维吾尔自治区', 'T', null, '65010000', '65000000', '65010400', '650000', '650100000000', '650104000000');
INSERT INTO `t_dic_district` VALUES ('12527', '水磨沟区', null, '乌鲁木齐市', '新疆维吾尔自治区', 'T', null, '65010000', '65000000', '65010500', '650000', '650100000000', '650105000000');
INSERT INTO `t_dic_district` VALUES ('12528', '头屯河区', null, '乌鲁木齐市', '新疆维吾尔自治区', 'T', null, '65010000', '65000000', '65010600', '650000', '650100000000', '650106000000');
INSERT INTO `t_dic_district` VALUES ('12529', '达坂城区', null, '乌鲁木齐市', '新疆维吾尔自治区', 'T', null, '65010000', '65000000', '65010700', '650000', '650100000000', '650107000000');
INSERT INTO `t_dic_district` VALUES ('12530', '东山区', null, '乌鲁木齐市', '新疆维吾尔自治区', 'T', null, '65010000', '65000000', '65010800', '650000', null, null);
INSERT INTO `t_dic_district` VALUES ('12531', '乌鲁木齐县', null, '乌鲁木齐市', '新疆维吾尔自治区', 'T', null, '65010000', '65000000', '65012100', '650000', '650100000000', '650121000000');
INSERT INTO `t_dic_district` VALUES ('12532', '市辖区', null, '克拉玛依市', '新疆维吾尔自治区', 'T', null, '65020000', '65000000', '65020100', '650000', null, null);
INSERT INTO `t_dic_district` VALUES ('12533', '独山子区', null, '克拉玛依市', '新疆维吾尔自治区', 'T', null, '65020000', '65000000', '65020200', '650000', '650200000000', '650202000000');
INSERT INTO `t_dic_district` VALUES ('12534', '克拉玛依区', null, '克拉玛依市', '新疆维吾尔自治区', 'T', null, '65020000', '65000000', '65020300', '650000', '650200000000', '650203000000');
INSERT INTO `t_dic_district` VALUES ('12535', '白碱滩区', null, '克拉玛依市', '新疆维吾尔自治区', 'T', null, '65020000', '65000000', '65020400', '650000', '650200000000', '650204000000');
INSERT INTO `t_dic_district` VALUES ('12536', '乌尔禾区', null, '克拉玛依市', '新疆维吾尔自治区', 'T', null, '65020000', '65000000', '65020500', '650000', '650200000000', '650205000000');
INSERT INTO `t_dic_district` VALUES ('12537', '吐鲁番市', null, '吐鲁番地区', '新疆维吾尔自治区', 'T', null, '65210000', '65000000', '65210100', '650000', null, null);
INSERT INTO `t_dic_district` VALUES ('12538', '鄯善县', null, '吐鲁番地区', '新疆维吾尔自治区', 'T', null, '65210000', '65000000', '65212200', '650000', '650400000000', '650421000000');
INSERT INTO `t_dic_district` VALUES ('12539', '托克逊县', null, '吐鲁番地区', '新疆维吾尔自治区', 'T', null, '65210000', '65000000', '65212300', '650000', '650400000000', '650422000000');
INSERT INTO `t_dic_district` VALUES ('12540', '哈密市', null, '哈密地区', '新疆维吾尔自治区', 'T', null, '65220000', '65000000', '65220100', '650000', null, null);
INSERT INTO `t_dic_district` VALUES ('12541', '托里县', null, '塔城地区', '新疆维吾尔自治区', 'T', null, '65420000', '65000000', '65422400', '650000', '654200000000', '654224000000');
INSERT INTO `t_dic_district` VALUES ('12542', '裕民县', null, '塔城地区', '新疆维吾尔自治区', 'T', null, '65420000', '65000000', '65422500', '650000', '654200000000', '654225000000');
INSERT INTO `t_dic_district` VALUES ('12543', '和布克赛尔蒙古自治县', null, '塔城地区', '新疆维吾尔自治区', 'T', null, '65420000', '65000000', '65422600', '650000', '654200000000', '654226000000');
INSERT INTO `t_dic_district` VALUES ('12544', '阿勒泰市', null, '阿勒泰地区', '新疆维吾尔自治区', 'T', null, '65430000', '65000000', '65430100', '650000', '654300000000', '654301000000');
INSERT INTO `t_dic_district` VALUES ('12545', '布尔津县', null, '阿勒泰地区', '新疆维吾尔自治区', 'T', null, '65430000', '65000000', '65432100', '650000', '654300000000', '654321000000');
INSERT INTO `t_dic_district` VALUES ('12546', '富蕴县', null, '阿勒泰地区', '新疆维吾尔自治区', 'T', null, '65430000', '65000000', '65432200', '650000', '654300000000', '654322000000');
INSERT INTO `t_dic_district` VALUES ('12547', '福海县', null, '阿勒泰地区', '新疆维吾尔自治区', 'T', null, '65430000', '65000000', '65432300', '650000', '654300000000', '654323000000');
INSERT INTO `t_dic_district` VALUES ('12548', '哈巴河县', null, '阿勒泰地区', '新疆维吾尔自治区', 'T', null, '65430000', '65000000', '65432400', '650000', '654300000000', '654324000000');
INSERT INTO `t_dic_district` VALUES ('12549', '青河县', null, '阿勒泰地区', '新疆维吾尔自治区', 'T', null, '65430000', '65000000', '65432500', '650000', '654300000000', '654325000000');
INSERT INTO `t_dic_district` VALUES ('12550', '吉木乃县', null, '阿勒泰地区', '新疆维吾尔自治区', 'T', null, '65430000', '65000000', '65432600', '650000', '654300000000', '654326000000');
INSERT INTO `t_dic_district` VALUES ('12551', '石河子市', null, '省直辖行政单位', '新疆维吾尔自治区', 'T', null, '65900000', '65000000', '65900100', '650000', '659000000000', '659001000000');
INSERT INTO `t_dic_district` VALUES ('12552', '阿拉尔市', null, '省直辖行政单位', '新疆维吾尔自治区', 'T', null, '65900000', '65000000', '65900200', '650000', '659000000000', '659002000000');
INSERT INTO `t_dic_district` VALUES ('12553', '图木舒克市', null, '省直辖行政单位', '新疆维吾尔自治区', 'T', null, '65900000', '65000000', '65900300', '650000', '659000000000', '659003000000');
INSERT INTO `t_dic_district` VALUES ('12554', '五家渠市', null, '省直辖行政单位', '新疆维吾尔自治区', 'T', null, '65900000', '65000000', '65900400', '650000', '659000000000', '659004000000');
INSERT INTO `t_dic_district` VALUES ('12555', '尉犁县', null, '巴音郭楞蒙古自治州', '新疆维吾尔自治区', 'T', null, '65280000', '65000000', '65282300', '650000', '652800000000', '652823000000');
INSERT INTO `t_dic_district` VALUES ('12556', '若羌县', null, '巴音郭楞蒙古自治州', '新疆维吾尔自治区', 'T', null, '65280000', '65000000', '65282400', '650000', '652800000000', '652824000000');
INSERT INTO `t_dic_district` VALUES ('12557', '且末县', null, '巴音郭楞蒙古自治州', '新疆维吾尔自治区', 'T', null, '65280000', '65000000', '65282500', '650000', '652800000000', '652825000000');
INSERT INTO `t_dic_district` VALUES ('12558', '焉耆回族自治县', null, '巴音郭楞蒙古自治州', '新疆维吾尔自治区', 'T', null, '65280000', '65000000', '65282600', '650000', '652800000000', '652826000000');
INSERT INTO `t_dic_district` VALUES ('12559', '和静县', null, '巴音郭楞蒙古自治州', '新疆维吾尔自治区', 'T', null, '65280000', '65000000', '65282700', '650000', '652800000000', '652827000000');
INSERT INTO `t_dic_district` VALUES ('12560', '和硕县', null, '巴音郭楞蒙古自治州', '新疆维吾尔自治区', 'T', null, '65280000', '65000000', '65282800', '650000', '652800000000', '652828000000');
INSERT INTO `t_dic_district` VALUES ('12561', '博湖县', null, '巴音郭楞蒙古自治州', '新疆维吾尔自治区', 'T', null, '65280000', '65000000', '65282900', '650000', '652800000000', '652829000000');
INSERT INTO `t_dic_district` VALUES ('12562', '阿克苏市', null, '阿克苏地区', '新疆维吾尔自治区', 'T', null, '65290000', '65000000', '65290100', '650000', '652900000000', '652901000000');
INSERT INTO `t_dic_district` VALUES ('12563', '温宿县', null, '阿克苏地区', '新疆维吾尔自治区', 'T', null, '65290000', '65000000', '65292200', '650000', '652900000000', '652922000000');
INSERT INTO `t_dic_district` VALUES ('12564', '库车县', null, '阿克苏地区', '新疆维吾尔自治区', 'T', null, '65290000', '65000000', '65292300', '650000', '652900000000', '652923000000');
INSERT INTO `t_dic_district` VALUES ('12565', '沙雅县', null, '阿克苏地区', '新疆维吾尔自治区', 'T', null, '65290000', '65000000', '65292400', '650000', '652900000000', '652924000000');
INSERT INTO `t_dic_district` VALUES ('12566', '新和县', null, '阿克苏地区', '新疆维吾尔自治区', 'T', null, '65290000', '65000000', '65292500', '650000', '652900000000', '652925000000');
INSERT INTO `t_dic_district` VALUES ('12567', '拜城县', null, '阿克苏地区', '新疆维吾尔自治区', 'T', null, '65290000', '65000000', '65292600', '650000', '652900000000', '652926000000');
INSERT INTO `t_dic_district` VALUES ('12568', '乌什县', null, '阿克苏地区', '新疆维吾尔自治区', 'T', null, '65290000', '65000000', '65292700', '650000', '652900000000', '652927000000');
INSERT INTO `t_dic_district` VALUES ('12569', '阿瓦提县', null, '阿克苏地区', '新疆维吾尔自治区', 'T', null, '65290000', '65000000', '65292800', '650000', '652900000000', '652928000000');
INSERT INTO `t_dic_district` VALUES ('12570', '柯坪县', null, '阿克苏地区', '新疆维吾尔自治区', 'T', null, '65290000', '65000000', '65292900', '650000', '652900000000', '652929000000');
INSERT INTO `t_dic_district` VALUES ('12571', '阿图什市', null, '克孜勒苏柯尔克孜自治', '新疆维吾尔自治区', 'T', null, '65300000', '65000000', '65300100', '650000', '653000000000', '653001000000');
INSERT INTO `t_dic_district` VALUES ('12572', '阿克陶县', null, '克孜勒苏柯尔克孜自治', '新疆维吾尔自治区', 'T', null, '65300000', '65000000', '65302200', '650000', '653000000000', '653022000000');
INSERT INTO `t_dic_district` VALUES ('12573', '阿合奇县', null, '克孜勒苏柯尔克孜自治', '新疆维吾尔自治区', 'T', null, '65300000', '65000000', '65302300', '650000', '653000000000', '653023000000');
INSERT INTO `t_dic_district` VALUES ('12574', '乌恰县', null, '克孜勒苏柯尔克孜自治', '新疆维吾尔自治区', 'T', null, '65300000', '65000000', '65302400', '650000', '653000000000', '653024000000');
INSERT INTO `t_dic_district` VALUES ('12575', '喀什市', null, '喀什地区', '新疆维吾尔自治区', 'T', null, '65310000', '65000000', '65310100', '650000', '653100000000', '653101000000');
INSERT INTO `t_dic_district` VALUES ('12576', '疏附县', null, '喀什地区', '新疆维吾尔自治区', 'T', null, '65310000', '65000000', '65312100', '650000', '653100000000', '653121000000');
INSERT INTO `t_dic_district` VALUES ('12577', '疏勒县', null, '喀什地区', '新疆维吾尔自治区', 'T', null, '65310000', '65000000', '65312200', '650000', '653100000000', '653122000000');
INSERT INTO `t_dic_district` VALUES ('12578', '英吉沙县', null, '喀什地区', '新疆维吾尔自治区', 'T', null, '65310000', '65000000', '65312300', '650000', '653100000000', '653123000000');
INSERT INTO `t_dic_district` VALUES ('12579', '泽普县', null, '喀什地区', '新疆维吾尔自治区', 'T', null, '65310000', '65000000', '65312400', '650000', '653100000000', '653124000000');
INSERT INTO `t_dic_district` VALUES ('12580', '莎车县', null, '喀什地区', '新疆维吾尔自治区', 'T', null, '65310000', '65000000', '65312500', '650000', '653100000000', '653125000000');
INSERT INTO `t_dic_district` VALUES ('12581', '叶城县', null, '喀什地区', '新疆维吾尔自治区', 'T', null, '65310000', '65000000', '65312600', '650000', '653100000000', '653126000000');
INSERT INTO `t_dic_district` VALUES ('12582', '麦盖提县', null, '喀什地区', '新疆维吾尔自治区', 'T', null, '65310000', '65000000', '65312700', '650000', '653100000000', '653127000000');
INSERT INTO `t_dic_district` VALUES ('12583', '岳普湖县', null, '喀什地区', '新疆维吾尔自治区', 'T', null, '65310000', '65000000', '65312800', '650000', '653100000000', '653128000000');
INSERT INTO `t_dic_district` VALUES ('12584', '伽师县', null, '喀什地区', '新疆维吾尔自治区', 'T', null, '65310000', '65000000', '65312900', '650000', '653100000000', '653129000000');
INSERT INTO `t_dic_district` VALUES ('12585', '巴楚县', null, '喀什地区', '新疆维吾尔自治区', 'T', null, '65310000', '65000000', '65313000', '650000', '653100000000', '653130000000');
INSERT INTO `t_dic_district` VALUES ('12586', '塔什库尔干塔吉克自治县', null, '喀什地区', '新疆维吾尔自治区', 'T', null, '65310000', '65000000', '65313100', '650000', '653100000000', '653131000000');
INSERT INTO `t_dic_district` VALUES ('12587', '和田市', null, '和田地区', '新疆维吾尔自治区', 'T', null, '65320000', '65000000', '65320100', '650000', '653200000000', '653201000000');
INSERT INTO `t_dic_district` VALUES ('12588', '和田县', null, '和田地区', '新疆维吾尔自治区', 'T', null, '65320000', '65000000', '65322100', '650000', '653200000000', '653221000000');
INSERT INTO `t_dic_district` VALUES ('12589', '墨玉县', null, '和田地区', '新疆维吾尔自治区', 'T', null, '65320000', '65000000', '65322200', '650000', '653200000000', '653222000000');
INSERT INTO `t_dic_district` VALUES ('12590', '皮山县', null, '和田地区', '新疆维吾尔自治区', 'T', null, '65320000', '65000000', '65322300', '650000', '653200000000', '653223000000');
INSERT INTO `t_dic_district` VALUES ('12591', '洛浦县', null, '和田地区', '新疆维吾尔自治区', 'T', null, '65320000', '65000000', '65322400', '650000', '653200000000', '653224000000');
INSERT INTO `t_dic_district` VALUES ('12592', '策勒县', null, '和田地区', '新疆维吾尔自治区', 'T', null, '65320000', '65000000', '65322500', '650000', '653200000000', '653225000000');
INSERT INTO `t_dic_district` VALUES ('12593', '桥东区', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13010300', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('12594', '桥西区', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13010400', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('12595', '新华区', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13010500', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('12596', '井陉矿区', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13010700', '130000', '130100000000', '130107000000');
INSERT INTO `t_dic_district` VALUES ('12597', '裕华区', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13010800', '130000', '130100000000', '130108000000');
INSERT INTO `t_dic_district` VALUES ('12598', '井陉县', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13012100', '130000', '130100000000', '130121000000');
INSERT INTO `t_dic_district` VALUES ('12599', '正定县', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13012300', '130000', '130100000000', '130123000000');
INSERT INTO `t_dic_district` VALUES ('12600', '栾城区', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13012400', '130000', '130100000000', '130111000000');
INSERT INTO `t_dic_district` VALUES ('12601', '行唐县', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13012500', '130000', '130100000000', '130125000000');
INSERT INTO `t_dic_district` VALUES ('12602', '灵寿县', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13012600', '130000', '130100000000', '130126000000');
INSERT INTO `t_dic_district` VALUES ('12603', '高邑县', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13012700', '130000', '130100000000', '130127000000');
INSERT INTO `t_dic_district` VALUES ('12604', '深泽县', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13012800', '130000', '130100000000', '130128000000');
INSERT INTO `t_dic_district` VALUES ('12605', '赞皇县', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13012900', '130000', '130100000000', '130129000000');
INSERT INTO `t_dic_district` VALUES ('12606', '无极县', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13013000', '130000', '130100000000', '130130000000');
INSERT INTO `t_dic_district` VALUES ('12607', '平山县', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13013100', '130000', '130100000000', '130131000000');
INSERT INTO `t_dic_district` VALUES ('12608', '元氏县', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13013200', '130000', '130100000000', '130132000000');
INSERT INTO `t_dic_district` VALUES ('12609', '赵县', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13013300', '130000', '130100000000', '130133000000');
INSERT INTO `t_dic_district` VALUES ('12610', '辛集市', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13018100', '130000', '139000000000', '139002000000');
INSERT INTO `t_dic_district` VALUES ('12611', '藁城区', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13018200', '130000', '130100000000', '130109000000');
INSERT INTO `t_dic_district` VALUES ('12612', '晋州市', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13018300', '130000', '130100000000', '130183000000');
INSERT INTO `t_dic_district` VALUES ('12613', '新乐市', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13018400', '130000', '130100000000', '130184000000');
INSERT INTO `t_dic_district` VALUES ('12614', '鹿泉区', null, '石家庄市', '河北省', 'T', null, '13010000', '13000000', '13018500', '130000', '130100000000', '130110000000');
INSERT INTO `t_dic_district` VALUES ('12615', '市辖区', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13020100', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('12616', '桥东区', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13050200', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('12617', '桥西区', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13050300', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('12618', '邢台县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13052100', '130000', '130500000000', '130521000000');
INSERT INTO `t_dic_district` VALUES ('12619', '临城县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13052200', '130000', '130500000000', '130522000000');
INSERT INTO `t_dic_district` VALUES ('12620', '内丘县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13052300', '130000', '130500000000', '130523000000');
INSERT INTO `t_dic_district` VALUES ('12621', '柏乡县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13052400', '130000', '130500000000', '130524000000');
INSERT INTO `t_dic_district` VALUES ('12622', '隆尧县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13052500', '130000', '130500000000', '130525000000');
INSERT INTO `t_dic_district` VALUES ('12623', '任县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13052600', '130000', '130500000000', '130526000000');
INSERT INTO `t_dic_district` VALUES ('12624', '南和县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13052700', '130000', '130500000000', '130527000000');
INSERT INTO `t_dic_district` VALUES ('12625', '宁晋县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13052800', '130000', '130500000000', '130528000000');
INSERT INTO `t_dic_district` VALUES ('12626', '巨鹿县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13052900', '130000', '130500000000', '130529000000');
INSERT INTO `t_dic_district` VALUES ('12627', '新河县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13053000', '130000', '130500000000', '130530000000');
INSERT INTO `t_dic_district` VALUES ('12628', '广宗县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13053100', '130000', '130500000000', '130531000000');
INSERT INTO `t_dic_district` VALUES ('12629', '平乡县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13053200', '130000', '130500000000', '130532000000');
INSERT INTO `t_dic_district` VALUES ('12630', '威县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13053300', '130000', '130500000000', '130533000000');
INSERT INTO `t_dic_district` VALUES ('12631', '清河县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13053400', '130000', '130500000000', '130534000000');
INSERT INTO `t_dic_district` VALUES ('12632', '临西县', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13053500', '130000', '130500000000', '130535000000');
INSERT INTO `t_dic_district` VALUES ('12633', '南宫市', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13058100', '130000', '130500000000', '130581000000');
INSERT INTO `t_dic_district` VALUES ('12634', '沙河市', null, '邢台市', '河北省', 'T', null, '13050000', '13000000', '13058200', '130000', '130500000000', '130582000000');
INSERT INTO `t_dic_district` VALUES ('12635', '市辖区', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13060100', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('12636', '竞秀区', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13060200', '130000', '130600000000', '130602000000');
INSERT INTO `t_dic_district` VALUES ('12637', '北市区', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13060300', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('12638', '南市区', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13060400', '130000', null, null);
INSERT INTO `t_dic_district` VALUES ('12639', '东城区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11010100', '110000', '110100000000', '110101000000');
INSERT INTO `t_dic_district` VALUES ('12640', '西城区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11010200', '110000', '110100000000', '110102000000');
INSERT INTO `t_dic_district` VALUES ('12641', '崇文区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11010300', '110000', null, null);
INSERT INTO `t_dic_district` VALUES ('12642', '宣武区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11010400', '110000', null, null);
INSERT INTO `t_dic_district` VALUES ('12643', '朝阳区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11010500', '110000', '110100000000', '110105000000');
INSERT INTO `t_dic_district` VALUES ('12644', '丰台区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11010600', '110000', '110100000000', '110106000000');
INSERT INTO `t_dic_district` VALUES ('12645', '石景山区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11010700', '110000', '110100000000', '110107000000');
INSERT INTO `t_dic_district` VALUES ('12646', '海淀区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11010800', '110000', '110100000000', '110108000000');
INSERT INTO `t_dic_district` VALUES ('12647', '门头沟区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11010900', '110000', '110100000000', '110109000000');
INSERT INTO `t_dic_district` VALUES ('12648', '房山区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11011100', '110000', '110100000000', '110111000000');
INSERT INTO `t_dic_district` VALUES ('12649', '通州区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11011200', '110000', '110100000000', '110112000000');
INSERT INTO `t_dic_district` VALUES ('12650', '顺义区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11011300', '110000', '110100000000', '110113000000');
INSERT INTO `t_dic_district` VALUES ('12651', '昌平区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11011400', '110000', '110100000000', '110114000000');
INSERT INTO `t_dic_district` VALUES ('12652', '大兴区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11011500', '110000', '110100000000', '110115000000');
INSERT INTO `t_dic_district` VALUES ('12653', '怀柔区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11011600', '110000', '110100000000', '110116000000');
INSERT INTO `t_dic_district` VALUES ('12654', '平谷区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11011700', '110000', '110100000000', '110117000000');
INSERT INTO `t_dic_district` VALUES ('12655', '密云区', null, '北京辖县', '北京市', 'T', null, '11020000', '11000000', '11022800', '110000', '110100000000', '110118000000');
INSERT INTO `t_dic_district` VALUES ('12656', '延庆区', null, '北京辖县', '北京市', 'T', null, '11020000', '11000000', '11022900', '110000', '110100000000', '110119000000');
INSERT INTO `t_dic_district` VALUES ('12657', '高新产业技术开发区', null, '长沙市', '湖南省', 'T', null, '43010000', '43000000', '43019100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('12658', '零陵区', null, '永州市', '湖南省', 'T', null, '43110000', '43000000', '43119100', '430000', '431100000000', '431102000000');
INSERT INTO `t_dic_district` VALUES ('12659', '水口山', null, '衡阳市', '湖南省', 'T', null, '43040000', '43000000', '43049100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('12660', '大通湖区', null, '益阳市', '湖南省', 'T', null, '43090000', '43000000', '43099100', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('12661', '朝阳区', null, '益阳市', '湖南省', 'T', null, '43090000', '43000000', '43099200', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('12662', '屈原', null, '岳阳市', '湖南省', 'T', null, '43060000', '43000000', '43069900', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('12663', '经济开发区', null, '岳阳市', '湖南省', 'T', null, '43060000', '43000000', '43069800', '430000', null, null);
INSERT INTO `t_dic_district` VALUES ('12664', '测试县', null, '测试县', '测试县', 'T', null, '19999900', '19999900', '19999900', '199999', null, null);
INSERT INTO `t_dic_district` VALUES ('12665', '市辖区', null, '合肥市', '安徽省', 'T', null, '34010000', '34000000', '34012700', '340000', '341800000000', '341801000000');
INSERT INTO `t_dic_district` VALUES ('12666', '惠济区', null, '郑州市', '河南省', 'T', null, '41010000', '41000000', '41018600', '410000', '410100000000', '410108000000');
INSERT INTO `t_dic_district` VALUES ('12667', '市辖区', null, '东莞市', '广东省', 'T', null, '44190000', '44000000', '44190100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('12668', '莞城区', null, '东莞市', '广东省', 'T', null, '44190000', '44000000', '44190200', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('12669', '塘厦镇', null, '东莞市', '广东省', 'T', null, '44190000', '44000000', '44190300', '440000', '441900000000', '441900116000');
INSERT INTO `t_dic_district` VALUES ('12670', '万江区', null, '东莞市', '广东省', 'T', null, '44190000', '44000000', '44190400', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('12671', '虎门镇', null, '东莞市', '广东省', 'T', null, '44190000', '44000000', '44190500', '440000', '441900000000', '441900121000');
INSERT INTO `t_dic_district` VALUES ('12672', '常平镇', null, '东莞市', '广东省', 'T', null, '44190000', '44000000', '44190600', '440000', '441900000000', '441900110000');
INSERT INTO `t_dic_district` VALUES ('12673', '市辖区', null, '铜陵市', '安徽省', 'T', null, '34070000', '34000000', '34073100', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12674', '市辖区', null, '蚌埠市', '安徽省', 'T', null, '34030000', '34000000', '34032400', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12675', '市辖区', null, '亳州市', '安徽省', 'T', null, '34160000', '34000000', '34162400', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12676', '市辖区', null, '中山市', '广东省', 'T', null, '44200000', '44000000', '44200100', '440000', null, null);
INSERT INTO `t_dic_district` VALUES ('12677', '市辖区', null, '台北市', '台湾省', 'T', null, '71010000', '71000000', '71010100', '710000', null, null);
INSERT INTO `t_dic_district` VALUES ('12678', '市辖区', null, '新北市', '台湾省', 'T', null, '71020000', '71000000', '71020100', '710000', null, null);
INSERT INTO `t_dic_district` VALUES ('12679', '市辖区', null, '桃园市', '台湾省', 'T', null, '71030000', '71000000', '71030100', '710000', null, null);
INSERT INTO `t_dic_district` VALUES ('12680', '市辖区', null, '台中市', '台湾省', 'T', null, '71040000', '71000000', '71040100', '710000', null, null);
INSERT INTO `t_dic_district` VALUES ('12681', '市辖区', null, '台南市', '台湾省', 'T', null, '71050000', '71000000', '71050100', '710000', null, null);
INSERT INTO `t_dic_district` VALUES ('12682', '市辖区', null, '高雄市', '台湾省', 'T', null, '71060000', '71000000', '71060100', '710000', null, null);
INSERT INTO `t_dic_district` VALUES ('12683', '市辖区', null, '香港', '香港特别行政区', 'T', null, '81010000', '81000000', '81010100', '810000', null, null);
INSERT INTO `t_dic_district` VALUES ('12684', '市辖区', null, '澳门', '澳门特别行政区', 'T', null, '82010000', '82000000', '82010100', '820000', null, null);
INSERT INTO `t_dic_district` VALUES ('12685', '市辖区', null, '芜湖市', '安徽省', 'T', null, '34020000', '34000000', '34020800', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12686', '市辖区', null, '市辖区', '北京市', 'T', null, '11010000', '11000000', '11012200', '110000', null, null);
INSERT INTO `t_dic_district` VALUES ('12687', '市辖区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12012000', '120000', null, null);
INSERT INTO `t_dic_district` VALUES ('12688', '市辖区', null, '市辖区', '上海市', 'T', null, '31010000', '31000000', '31012500', '310000', null, null);
INSERT INTO `t_dic_district` VALUES ('12689', '市辖区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50012000', '500000', null, null);
INSERT INTO `t_dic_district` VALUES ('12690', '市辖区', null, '鄂尔多斯市', '内蒙古自治区', 'T', null, '15060000', '15000000', '15063200', '150000', null, null);
INSERT INTO `t_dic_district` VALUES ('12691', '市辖区', null, '淮南市', '安徽省', 'T', null, '34040000', '34000000', '34042600', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12692', '市辖区', null, '马鞍山市', '安徽省', 'T', null, '34050000', '34000000', '34052600', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12693', '市辖区', null, '淮北市', '安徽省', 'T', null, '34060000', '34000000', '34062600', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12694', '市辖区', null, '安庆市', '安徽省', 'T', null, '34080000', '34000000', '34088600', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12695', '市辖区', null, '黄山市', '安徽省', 'T', null, '34100000', '34000000', '34102900', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12696', '市辖区', null, '滁州市', '安徽省', 'T', null, '34110000', '34000000', '34118700', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12697', '市辖区', null, '阜阳市', '安徽省', 'T', null, '34120000', '34000000', '34128700', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12698', '市辖区', null, '宿州市', '安徽省', 'T', null, '34130000', '34000000', '34132900', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12699', '市辖区', null, '巢湖市', '安徽省', 'T', null, '34140000', '34000000', '34142900', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12700', '市辖区', null, '六安市', '安徽省', 'T', null, '34150000', '34000000', '34153000', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12701', '市辖区', null, '池州市', '安徽省', 'T', null, '34170000', '34000000', '34172800', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12702', '市辖区', null, '宣城市', '安徽省', 'T', null, '34180000', '34000000', '34188600', '340000', null, null);
INSERT INTO `t_dic_district` VALUES ('12703', '市辖区', null, '济源市', '河南省', 'T', null, '41180000', '41000000', '41188600', '410000', null, null);
INSERT INTO `t_dic_district` VALUES ('12704', '市辖区', null, '六盘水市', '贵州省', 'T', null, '52020000', '52000000', '52022700', '520000', null, null);
INSERT INTO `t_dic_district` VALUES ('12705', '汇川区', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52038300', '520000', '520300000000', '520303000000');
INSERT INTO `t_dic_district` VALUES ('12706', '清秀区', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45012800', '450000', null, null);
INSERT INTO `t_dic_district` VALUES ('12707', '西乡塘区', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45010700', '450000', '450100000000', '450107000000');
INSERT INTO `t_dic_district` VALUES ('12708', '良庆区', null, '南宁市', '广西壮族自治区', 'T', null, '45010000', '45000000', '45010800', '450000', '450100000000', '450108000000');
INSERT INTO `t_dic_district` VALUES ('12709', '高新区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51011800', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('12710', '高新西区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51011900', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('12711', '天府新区', null, '成都市', '四川省', 'T', null, '51010000', '51000000', '51012000', '510000', null, null);
INSERT INTO `t_dic_district` VALUES ('12712', '市辖区', null, '巴彦淖尔盟', '内蒙古自治区', 'T', null, '15280000', '15000000', '15280600', '150000', null, null);
INSERT INTO `t_dic_district` VALUES ('12713', '市辖区', '0', '乌兰察布盟', '内蒙古自治区', 'T', '0', '15260000', '15000000', '15261000', '150000', null, null);
INSERT INTO `t_dic_district` VALUES ('12714', '滨海新区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12011600', '120000', '120100000000', '120116000000');
INSERT INTO `t_dic_district` VALUES ('12715', '蓟州区', null, '市辖区', '天津市', 'T', null, '12010000', '12000000', '12011900', '120000', '120100000000', '120119000000');
INSERT INTO `t_dic_district` VALUES ('12716', '曹妃甸区', null, '唐山市', '河北省', 'T', null, '13020000', '13000000', '13020900', '130000', '130200000000', '130209000000');
INSERT INTO `t_dic_district` VALUES ('12717', '莲池区', null, '保定市', '河北省', 'T', null, '13060000', '13000000', '13060600', '130000', '130600000000', '130606000000');
INSERT INTO `t_dic_district` VALUES ('12718', '康巴什区', null, '鄂尔多斯市', '内蒙古自治区', 'T', null, '15060000', '15000000', '15060300', '150000', '150600000000', '150603000000');
INSERT INTO `t_dic_district` VALUES ('12719', '松北区', null, '哈尔滨市', '黑龙江省', 'T', null, '23010000', '23000000', '23010900', '230000', '230100000000', '230109000000');
INSERT INTO `t_dic_district` VALUES ('12720', '梁溪区', null, '无锡市', '江苏省', 'T', null, '32020000', '32000000', '32021300', '320000', '320200000000', '320213000000');
INSERT INTO `t_dic_district` VALUES ('12721', '新吴区', null, '无锡市', '江苏省', 'T', null, '32020000', '32000000', '32021400', '320000', '320200000000', '320214000000');
INSERT INTO `t_dic_district` VALUES ('12722', '姑苏区', null, '苏州市', '江苏省', 'T', null, '32050000', '32000000', '32050800', '320000', '320500000000', '320508000000');
INSERT INTO `t_dic_district` VALUES ('12723', '清江浦区', null, '淮安市', '江苏省', 'T', null, '32080000', '32000000', '32081200', '320000', '320800000000', '320812000000');
INSERT INTO `t_dic_district` VALUES ('12724', '柯桥区', null, '绍兴市', '浙江省', 'T', null, '33060000', '33000000', '33060300', '330000', '330600000000', '330603000000');
INSERT INTO `t_dic_district` VALUES ('12725', '巢湖市', null, '合肥市', '安徽省', 'T', '1', '34010000', '34000000', '34018100', '340000', '340100000000', '340181000000');
INSERT INTO `t_dic_district` VALUES ('12726', '博望区', null, '马鞍山市', '安徽省', 'T', null, '34050000', '34000000', '34050600', '340000', '340500000000', '340506000000');
INSERT INTO `t_dic_district` VALUES ('12727', '义安区', null, '铜陵市', '安徽省', 'T', null, '34070000', '34000000', '34070600', '340000', '340700000000', '340706000000');
INSERT INTO `t_dic_district` VALUES ('12728', '叶集区', null, '六安市', '安徽省', 'T', null, '34150000', '34000000', '34150400', '340000', '341500000000', '341504000000');
INSERT INTO `t_dic_district` VALUES ('12729', '共青城市', null, '九江市', '江西省', 'T', null, '36040000', '36000000', '36048200', '360000', '360400000000', '360482000000');
INSERT INTO `t_dic_district` VALUES ('12730', '岚山区', null, '日照市', '山东省', 'T', null, '37110000', '37000000', '37110300', '370000', '371100000000', '371103000000');
INSERT INTO `t_dic_district` VALUES ('12731', '祥符区', null, '开封市', '河南省', 'T', null, '41020000', '41000000', '41021200', '410000', '410200000000', '410212000000');
INSERT INTO `t_dic_district` VALUES ('12732', '召陵区', null, '漯河市', '河南省', 'T', null, '41110000', '41000000', '41110400', '410000', '411100000000', '411104000000');
INSERT INTO `t_dic_district` VALUES ('12733', '陕州区', null, '三门峡市', '河南省', 'T', null, '41120000', '41000000', '41120300', '410000', '411200000000', '411203000000');
INSERT INTO `t_dic_district` VALUES ('12734', '郧阳区', null, '十堰市', '湖北省', 'T', null, '42030000', '42000000', '42030400', '420000', '420300000000', '420304000000');
INSERT INTO `t_dic_district` VALUES ('12735', '随县', null, '随州市', '湖北省', 'T', null, '42130000', '42000000', '42132100', '420000', '421300000000', '421321000000');
INSERT INTO `t_dic_district` VALUES ('12737', '石碣镇', null, '东莞市', '广东省', 'T', null, '44190000', '44000000', '44190010', '440000', '441900000000', '441900101000');
INSERT INTO `t_dic_district` VALUES ('12738', '龙圩区', null, '梧州市', '广西壮族自治区', 'T', null, '45040000', '45000000', '45040600', '450000', '450400000000', '450406000000');
INSERT INTO `t_dic_district` VALUES ('12739', '福绵区', null, '玉林市', '广西壮族自治区', 'T', null, '45090000', '45000000', '45090300', '450000', '450900000000', '450903000000');
INSERT INTO `t_dic_district` VALUES ('12740', '平桂区', null, '贺州市', '广西壮族自治区', 'T', null, '45110000', '45000000', '45110300', '450000', '451100000000', '451103000000');
INSERT INTO `t_dic_district` VALUES ('12741', '海棠区', null, '三亚市', '海南省', 'T', null, '46020000', '46000000', '46020200', '460000', '460200000000', '460202000000');
INSERT INTO `t_dic_district` VALUES ('12742', '吉阳区', null, '三亚市', '海南省', 'T', null, '46020000', '46000000', '46020300', '460000', '460200000000', '460203000000');
INSERT INTO `t_dic_district` VALUES ('12743', '天涯区', null, '三亚市', '海南省', 'T', null, '46020000', '46000000', '46020400', '460000', '460200000000', '460204000000');
INSERT INTO `t_dic_district` VALUES ('12744', '崖州区', null, '三亚市', '海南省', 'T', null, '46020000', '46000000', '46020500', '460000', '460200000000', '460205000000');
INSERT INTO `t_dic_district` VALUES ('12745', '开州区', null, '市辖区', '重庆市', 'T', null, '50010000', '50000000', '50015400', '500000', '500100000000', '500154000000');
INSERT INTO `t_dic_district` VALUES ('12746', '安州区', null, '绵阳市', '四川省', 'T', null, '51070000', '51000000', '51070500', '510000', '510700000000', '510705000000');
INSERT INTO `t_dic_district` VALUES ('12747', '船山区', null, '遂宁市', '四川省', 'T', null, '51090000', '51000000', '51090300', '510000', '510900000000', '510903000000');
INSERT INTO `t_dic_district` VALUES ('12748', '安居区', null, '遂宁市', '四川省', 'T', null, '51090000', '51000000', '51090400', '510000', '510900000000', '510904000000');
INSERT INTO `t_dic_district` VALUES ('12749', '前锋区', null, '广安市', '四川省', 'T', null, '51160000', '51000000', '51160300', '510000', '511600000000', '511603000000');
INSERT INTO `t_dic_district` VALUES ('12750', '达川区', null, '达州市', '四川省', 'T', null, '51170000', '51000000', '51170300', '510000', '511700000000', '511703000000');
INSERT INTO `t_dic_district` VALUES ('12751', '恩阳区', null, '巴中市', '四川省', 'T', null, '51190000', '51000000', '51190300', '510000', '511900000000', '511903000000');
INSERT INTO `t_dic_district` VALUES ('12752', '观山湖区', null, '贵阳市', '贵州省', 'T', null, '52010000', '52000000', '52011500', '520000', '520100000000', '520115000000');
INSERT INTO `t_dic_district` VALUES ('12753', '播州区', null, '遵义市', '贵州省', 'T', null, '52030000', '52000000', '52030400', '520000', '520300000000', '520304000000');
INSERT INTO `t_dic_district` VALUES ('12754', '双湖县', null, '那曲地区', '西藏自治区', 'T', null, '54240000', '54000000', '54243100', '540000', '542400000000', '542431000000');
INSERT INTO `t_dic_district` VALUES ('12755', '华州区', null, '渭南市', '陕西省', 'T', null, '61050000', '61000000', '61050300', '610000', '610500000000', '610503000000');
INSERT INTO `t_dic_district` VALUES ('12756', '红寺堡区', null, '吴忠市', '宁夏回族自治区', 'T', null, '64030000', '64000000', '64030300', '640000', '640300000000', '640303000000');
INSERT INTO `t_dic_district` VALUES ('12757', '米东区', null, '乌鲁木齐市', '新疆维吾尔自治区', 'T', null, '65010000', '65000000', '65010900', '650000', '650100000000', '650109000000');
INSERT INTO `t_dic_district` VALUES ('12758', '霍尔果斯市', null, '伊犁哈萨克自治州', '新疆维吾尔自治区', 'T', null, '65400000', '65000000', '65400400', '650000', '654000000000', '654004000000');
INSERT INTO `t_dic_district` VALUES ('12759', '铁门关市', null, '省直辖行政单位', '新疆维吾尔自治区', 'T', null, '65900000', '65000000', '65900600', '650000', '659000000000', '659006000000');
INSERT INTO `t_dic_district` VALUES ('12760', '陵城区', null, '德州市', '山东省', 'T', null, '37140000', '37000000', '37140300', '370000', '371400000000', '371403000000');

-- ----------------------------
-- Table structure for t_dic_province
-- ----------------------------
DROP TABLE IF EXISTS `t_dic_province`;
CREATE TABLE `t_dic_province` (
  `PROVINCE_ID` int(11) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `COUNTRY_CODE` varchar(30) DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `PROVINCE_CODE` varchar(30) DEFAULT NULL,
  `PROVINCE_CODEZ_CN` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PROVINCE_ID`),
  KEY `pro_index` (`PROVINCE_CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='省';

-- ----------------------------
-- Records of t_dic_province
-- ----------------------------
INSERT INTO `t_dic_province` VALUES ('71', '天津市', '86', null, 'T', '12000000', '120000');
INSERT INTO `t_dic_province` VALUES ('72', '河北省', '86', null, 'T', '13000000', '130000');
INSERT INTO `t_dic_province` VALUES ('73', '山西省', '86', null, 'T', '14000000', '140000');
INSERT INTO `t_dic_province` VALUES ('74', '内蒙古自治区', '86', null, 'T', '15000000', '150000');
INSERT INTO `t_dic_province` VALUES ('75', '辽宁省', '86', null, 'T', '21000000', '210000');
INSERT INTO `t_dic_province` VALUES ('76', '吉林省', '86', null, 'T', '22000000', '220000');
INSERT INTO `t_dic_province` VALUES ('77', '黑龙江省', '86', null, 'T', '23000000', '230000');
INSERT INTO `t_dic_province` VALUES ('78', '江苏省', '86', null, 'T', '32000000', '320000');
INSERT INTO `t_dic_province` VALUES ('79', '上海市', '86', null, 'T', '31000000', '310000');
INSERT INTO `t_dic_province` VALUES ('80', '浙江省', '86', null, 'T', '33000000', '330000');
INSERT INTO `t_dic_province` VALUES ('81', '安徽省', '86', null, 'T', '34000000', '340000');
INSERT INTO `t_dic_province` VALUES ('82', '江西省', '86', null, 'T', '36000000', '360000');
INSERT INTO `t_dic_province` VALUES ('83', '福建省', '86', null, 'T', '35000000', '350000');
INSERT INTO `t_dic_province` VALUES ('84', '山东省', '86', null, 'T', '37000000', '370000');
INSERT INTO `t_dic_province` VALUES ('85', '河南省', '86', null, 'T', '41000000', '410000');
INSERT INTO `t_dic_province` VALUES ('86', '湖北省', '86', null, 'T', '42000000', '420000');
INSERT INTO `t_dic_province` VALUES ('87', '湖南省', '86', null, 'T', '43000000', '430000');
INSERT INTO `t_dic_province` VALUES ('88', '广东省', '86', null, 'T', '44000000', '440000');
INSERT INTO `t_dic_province` VALUES ('89', '广西壮族自治区', '86', null, 'T', '45000000', '450000');
INSERT INTO `t_dic_province` VALUES ('90', '海南省', '86', null, 'T', '46000000', '460000');
INSERT INTO `t_dic_province` VALUES ('91', '重庆市', '86', null, 'T', '50000000', '500000');
INSERT INTO `t_dic_province` VALUES ('92', '四川省', '86', null, 'T', '51000000', '510000');
INSERT INTO `t_dic_province` VALUES ('93', '云南省', '86', null, 'T', '53000000', '530000');
INSERT INTO `t_dic_province` VALUES ('94', '贵州省', '86', null, 'T', '52000000', '520000');
INSERT INTO `t_dic_province` VALUES ('95', '西藏自治区', '86', null, 'T', '54000000', '540000');
INSERT INTO `t_dic_province` VALUES ('96', '陕西省', '86', null, 'T', '61000000', '610000');
INSERT INTO `t_dic_province` VALUES ('97', '甘肃省', '86', null, 'T', '62000000', '620000');
INSERT INTO `t_dic_province` VALUES ('98', '宁夏回族自治区', '86', null, 'T', '64000000', '640000');
INSERT INTO `t_dic_province` VALUES ('99', '青海省', '86', null, 'T', '63000000', '630000');
INSERT INTO `t_dic_province` VALUES ('100', '新疆维吾尔自治区', '86', null, 'T', '65000000', '650000');
INSERT INTO `t_dic_province` VALUES ('101', '台湾省', '86', null, 'T', '71000000', '710000');
INSERT INTO `t_dic_province` VALUES ('102', '香港特别行政区', '86', null, 'T', '81000000', '810000');
INSERT INTO `t_dic_province` VALUES ('103', '澳门特别行政区', '86', null, 'T', '82000000', '820000');
INSERT INTO `t_dic_province` VALUES ('104', '中华人民共和国', '86', null, 'T', '00000000', null);
INSERT INTO `t_dic_province` VALUES ('105', '北京市', '86', null, 'T', '11000000', '110000');

-- ----------------------------
-- Table structure for t_mds_additive
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_additive`;
CREATE TABLE `t_mds_additive` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dishes_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属菜品ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '加料名称',
  `sales_price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `cost_price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='菜品-加料表';

-- ----------------------------
-- Records of t_mds_additive
-- ----------------------------
INSERT INTO `t_mds_additive` VALUES ('5', '2', '加醋', '1.00', '1.00');
INSERT INTO `t_mds_additive` VALUES ('6', '2', '加辣', '1.00', '1.00');
INSERT INTO `t_mds_additive` VALUES ('8', '19', '', '0.00', '0.00');
INSERT INTO `t_mds_additive` VALUES ('9', '20', '', '0.00', '0.00');
INSERT INTO `t_mds_additive` VALUES ('10', '21', '', '0.00', '0.00');
INSERT INTO `t_mds_additive` VALUES ('11', '22', '', '0.00', '0.00');
INSERT INTO `t_mds_additive` VALUES ('12', '23', '', '0.00', '0.00');
INSERT INTO `t_mds_additive` VALUES ('13', '24', '', '0.00', '0.00');
INSERT INTO `t_mds_additive` VALUES ('14', '25', '', '0.00', '0.00');
INSERT INTO `t_mds_additive` VALUES ('15', '26', '', '0.00', '0.00');
INSERT INTO `t_mds_additive` VALUES ('16', '27', '', '0.00', '0.00');
INSERT INTO `t_mds_additive` VALUES ('17', '28', '', '0.00', '0.00');
INSERT INTO `t_mds_additive` VALUES ('18', '29', '', '0.00', '0.00');
INSERT INTO `t_mds_additive` VALUES ('19', '30', '', '0.00', '0.00');
INSERT INTO `t_mds_additive` VALUES ('20', '15', '加虾', '22.00', '12.00');
INSERT INTO `t_mds_additive` VALUES ('21', '16', '蛋', '1.00', '1.00');
INSERT INTO `t_mds_additive` VALUES ('22', '16', '香菜', '2.00', '2.00');

-- ----------------------------
-- Table structure for t_mds_catalogs
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_catalogs`;
CREATE TABLE `t_mds_catalogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dishes_id` bigint(20) DEFAULT '0' COMMENT '所属菜品ID',
  `code` varchar(32) DEFAULT '' COMMENT '分类编码',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '分类名称',
  `image` varchar(256) NOT NULL DEFAULT '' COMMENT '分类图片',
  `sort` int(11) NOT NULL DEFAULT '999' COMMENT '排序,默认为999',
  `store_id` varchar(30) NOT NULL COMMENT '门店id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='菜品-分类表';

-- ----------------------------
-- Records of t_mds_catalogs
-- ----------------------------
INSERT INTO `t_mds_catalogs` VALUES ('2', '2', 'cpfl001', '川菜湘菜12', '/upload/notFoundFolder/1569552086865-137.png', '2', '1');
INSERT INTO `t_mds_catalogs` VALUES ('4', '0', 'cpfl002', '四川火锅', '/upload/notFoundFolder/1568961263439-512.png', '21', '1');
INSERT INTO `t_mds_catalogs` VALUES ('5', '0', 'cpfl003', '精品凉菜', '/upload/notFoundFolder/1568963006298-803.png', '21', '1');
INSERT INTO `t_mds_catalogs` VALUES ('7', '0', '', '超级辣', '', '999', '1');

-- ----------------------------
-- Table structure for t_mds_dishes
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_dishes`;
CREATE TABLE `t_mds_dishes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `physical_store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属门店ID',
  `image` varchar(256) NOT NULL DEFAULT '' COMMENT '菜品图片 建议尺寸600x600像素，图片格式支持png、jpg',
  `name_cn` varchar(32) NOT NULL DEFAULT '' COMMENT '菜品名称（中文名称） 必填',
  `name_en` varchar(32) NOT NULL DEFAULT '' COMMENT '菜品名称（英文名称）',
  `catalog_code` varchar(32) NOT NULL DEFAULT '' COMMENT '菜品分类必填',
  `catalog_name` varchar(32) NOT NULL DEFAULT '' COMMENT '菜品分类名称',
  `unit_code` varchar(32) NOT NULL DEFAULT '' COMMENT '菜品单位必填',
  `unit_name` varchar(32) NOT NULL DEFAULT '' COMMENT '菜品单位名称',
  `type_code` varchar(32) NOT NULL DEFAULT '' COMMENT '菜品类型',
  `type_name` varchar(32) NOT NULL DEFAULT '' COMMENT '菜品类型名称',
  `mnemonic_code` varchar(16) NOT NULL DEFAULT '' COMMENT '助记码',
  `make_time` varchar(32) NOT NULL DEFAULT '' COMMENT '制作时间',
  `enabled_additive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启加料 0 否 1开启',
  `enabled_taste` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否开启口味 0 否 1开启',
  `enabled_specifications` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启规格；0：否/单一价格；1：是/规格价格；默认为0',
  `sort` int(11) NOT NULL DEFAULT '999' COMMENT '排序',
  `box_amount` int(11) NOT NULL DEFAULT '0' COMMENT '餐盒费',
  `enabled_discount` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否参与打折',
  `total_stock` int(11) NOT NULL DEFAULT '0' COMMENT '总库存',
  `day_stock` int(11) NOT NULL DEFAULT '0' COMMENT '单日库存',
  `order_restriction` int(11) NOT NULL DEFAULT '1' COMMENT '单笔限购 根据订单笔数限购',
  `person_restriction` int(11) NOT NULL DEFAULT '1' COMMENT '单人限购',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '初始销量',
  `enabled_dine_In` tinyint(1) NOT NULL DEFAULT '1' COMMENT '堂食可点',
  `enabled_take_out` tinyint(1) NOT NULL DEFAULT '1' COMMENT '外卖可点',
  `description` varchar(256) NOT NULL DEFAULT '' COMMENT '菜品描述',
  `dishes_tag` varchar(50) NOT NULL COMMENT '菜品标签',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态1：正常；2：删除；3估清',
  `dishes_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜品状态：0：停售1：在售',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='菜品-菜品表';

-- ----------------------------
-- Records of t_mds_dishes
-- ----------------------------
INSERT INTO `t_mds_dishes` VALUES ('2', '1', '/upload/notFoundFolder/1568183999600-988.png', '鱼香肉丝1', 'yxrs', 'cpfl001', '川菜湘菜', 'cpdw001', '个', 'cplx001', '热食', '001', '20', '1', '1', '1', '1', '1', '1', '10', '10', '1', '1', '0', '0', '0', '描述', '微辣', '1', '0');
INSERT INTO `t_mds_dishes` VALUES ('3', '1', '/upload/notFoundFolder/1568184596971-703.png', '水煮肉片', 'szrp', 'cpfl001', '川菜湘菜', 'cpdw001', '个', '', '', '002', '', '0', '0', '0', '2', '0', '1', '0', '0', '1', '1', '0', '1', '1', '', '', '1', '1');
INSERT INTO `t_mds_dishes` VALUES ('14', '1', '/upload/notFoundFolder/1568272636796-127.png', '干煸豆角', 'gbdj', 'cpfl001', '川菜湘菜', 'cpdw001', '个', 'cplx001', '热食', 'gbdj', '12', '0', '0', '0', '12', '12', '0', '12', '12', '12', '12', '12', '1', '1', '描述', '', '1', '1');
INSERT INTO `t_mds_dishes` VALUES ('15', '1', '/upload/notFoundFolder/1568945810650-950.png', '油爆大虾', 'ybdx', 'cpfl002', '四川火锅', 'codw002', '份', 'cplx001', '热食', 'ybdx', '15', '0', '0', '0', '4', '12', '1', '12', '12', '12', '12', '12', '1', '1', '描述', '微辣', '1', '0');
INSERT INTO `t_mds_dishes` VALUES ('16', '0', '/', '蚂蚁上树', 'mayishangshu', 'cpfl003', '精品凉菜', 'codw002', '份', 'cplx001', '热食', '963', '20', '0', '0', '1', '5', '5', '1', '999', '90', '2', '2', '0', '1', '1', '一种好吃的蚂蚁上树', '', '1', '1');

-- ----------------------------
-- Table structure for t_mds_dishes_taste
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_dishes_taste`;
CREATE TABLE `t_mds_dishes_taste` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dishes_id` varchar(32) NOT NULL COMMENT '菜品id',
  `taste_code` varchar(32) NOT NULL COMMENT '口味编码',
  `taste_name` varchar(32) NOT NULL COMMENT '口味名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='菜品口味表';

-- ----------------------------
-- Records of t_mds_dishes_taste
-- ----------------------------
INSERT INTO `t_mds_dishes_taste` VALUES ('1', '2', 'bl', '不辣');
INSERT INTO `t_mds_dishes_taste` VALUES ('2', '2', 'zl', '中辣');
INSERT INTO `t_mds_dishes_taste` VALUES ('3', '2', 'fzl', '非常辣');

-- ----------------------------
-- Table structure for t_mds_member
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_member`;
CREATE TABLE `t_mds_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vip_code` varchar(32) NOT NULL DEFAULT '' COMMENT '会员卡号',
  `vip_name` varchar(60) NOT NULL DEFAULT '' COMMENT '会员名称',
  `note` varchar(60) NOT NULL DEFAULT '' COMMENT '标签',
  `phone` varchar(32) NOT NULL DEFAULT '' COMMENT '电话',
  `vip_grade` tinyint(2) NOT NULL DEFAULT '0' COMMENT '会员等级',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `balance` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属商铺ID',
  `physical_store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属门店id',
  `come_from` tinyint(2) NOT NULL DEFAULT '0' COMMENT '注册来源',
  `vip_time` datetime DEFAULT NULL COMMENT '开卡时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态 0:禁用 1:正常',
  `union_id` varchar(60) NOT NULL DEFAULT '' COMMENT 'unionId',
  `open_id` varchar(60) NOT NULL DEFAULT '' COMMENT 'openId',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `operator_id` varchar(32) DEFAULT '' COMMENT '员工id',
  `birthday` datetime DEFAULT NULL COMMENT '会员生日',
  `delete_reason` varchar(255) DEFAULT '' COMMENT '删除理由',
  `delete_operator_id` varchar(32) DEFAULT '' COMMENT '操作删除员工id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1569813831750 DEFAULT CHARSET=utf8mb4 COMMENT='会员-会员表';

-- ----------------------------
-- Records of t_mds_member
-- ----------------------------
INSERT INTO `t_mds_member` VALUES ('1', '1', '1', '1', '2', '1', '1', '640.00', '1', '1', '1', '2019-09-25 16:32:32', '1', '1', '1', '2019-09-25 16:32:01', '1', '2019-09-27 15:44:06', '111', '1');
INSERT INTO `t_mds_member` VALUES ('2', '1569740384188', '1', '', '1', '0', '0', '111.00', '1', '1', '0', '2019-09-29 06:59:44', '1', '', '', '2019-09-29 06:59:44', '1', '2019-09-28 16:00:00', '', '');
INSERT INTO `t_mds_member` VALUES ('5', '1569740560334', '111', '', '11111', '0', '0', '236.00', '1', '2', '0', '2019-09-29 07:02:40', '1', '', '', '2019-09-29 07:02:40', '1', '2019-09-29 00:00:00', '', '');
INSERT INTO `t_mds_member` VALUES ('6', '1569740790920', '111', '', '18031184829', '0', '0', '400.00', '1', '4', '0', '2019-09-29 07:06:30', '0', '', '', '2019-09-29 07:06:30', '1', '2019-09-29 00:00:00', '测试', '');
INSERT INTO `t_mds_member` VALUES ('7', '1569750178174', '1', '', '1', '0', '0', '211.00', '1', '2', '0', '2019-09-29 09:42:58', '1', '', '', '2019-09-29 09:42:58', '1', '2019-09-16 00:00:00', '测试', '');
INSERT INTO `t_mds_member` VALUES ('1569813831749', '1569813831742', '554546', '', '184848484', '0', '0', '150.00', '1', '1', '0', '2019-09-30 03:23:51', '1', '', '', '2019-09-30 03:23:51', '1', '2019-09-08 00:00:00', '', '');

-- ----------------------------
-- Table structure for t_mds_order
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_order`;
CREATE TABLE `t_mds_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `physical_store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '门店ID',
  `serial_number` varchar(32) DEFAULT '' COMMENT '流水号',
  `order_code` varchar(32) NOT NULL DEFAULT '' COMMENT '订单编号',
  `goods_amount` int(11) NOT NULL DEFAULT '0' COMMENT '菜品数量',
  `payable_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '订单应付款',
  `store_activity_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺活动id',
  `store_activity_name` varchar(32) NOT NULL DEFAULT '' COMMENT '活动名称',
  `store_activity_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '活动金额',
  `coupon_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '代金券id',
  `coupon_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '代金券金额',
  `is_vip_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否会员支付 0:不是 1：是',
  `vip_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '会员优惠金额',
  `vip_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员id',
  `is_small_money` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否抹零',
  `small_money_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '抹零金额',
  `small_money_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '抹零理由',
  `table_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '桌台ID',
  `table_name` varchar(40) NOT NULL COMMENT '桌台名称',
  `people_count` int(11) NOT NULL DEFAULT '0' COMMENT '人数',
  `order_placer_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '点餐人类型 1:服务员；2：用户',
  `order_placer_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '点餐人ID',
  `order_placer_name` varchar(40) NOT NULL COMMENT '点餐人名称',
  `order_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '订单类型 1：堂食；2：外卖',
  `consignee_name` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `consignee_address` varchar(255) NOT NULL DEFAULT '' COMMENT '收货地址',
  `consignee_phone` varchar(32) NOT NULL DEFAULT '' COMMENT '收货电话',
  `pay_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付方式 0：现金 1：微信 2：支付宝 3:余额支付 ',
  `create_time` datetime DEFAULT NULL COMMENT '下单时间',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `delivery_time` datetime DEFAULT NULL COMMENT '发货时间',
  `finish_time` datetime DEFAULT NULL COMMENT '完成时间',
  `buyer_memo` varchar(255) DEFAULT '' COMMENT '买家备注',
  `saler_memo` varchar(255) NOT NULL DEFAULT '' COMMENT '商家备注',
  `order_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '订单状态 0:待确认，1:待支付，2：已支付，3：已失效，4：已弃单，5：已退单，6：待派送，7：已完成\r\n8:待收货',
  `pay_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '实付金额',
  `give_food_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '赠菜优惠',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='订单-订单表';

-- ----------------------------
-- Records of t_mds_order
-- ----------------------------
INSERT INTO `t_mds_order` VALUES ('1', '1', '1', '1', '1', '1', '1.00', '11', '1', '0.00', '1', '1.00', '1', '1.00', '1', '1', '1.00', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '1', '1', '2019-09-12 14:51:00', '2019-09-12 14:51:02', '2019-09-12 14:51:05', '2019-09-12 14:51:07', '1', '1', '1', '1.00', '0.00');
INSERT INTO `t_mds_order` VALUES ('2', '1', '1', '1', '1', '1', '1.00', '11', '1', '0.00', '1', '1.00', '1', '1.00', '1', '1', '1.00', '1', '5', '1', '1', '1', '1', '1', '2', '1', '11', '1', '1', '2019-09-12 18:51:00', '2019-09-12 14:51:02', '2019-09-12 14:51:05', '2019-09-12 14:51:07', '1', '1', '3', '1.00', '0.00');
INSERT INTO `t_mds_order` VALUES ('3', '1', '1', '1', '1', '1', '2.00', '11', '1', '0.00', '1', '3.00', '1', '1.00', '1', '1', '20.00', '1', '6', '1', '1', '1', '1', '1', '2', '1', '11', '1', '1', '2019-09-20 17:43:20', null, null, null, '1', '1', '2', '20.00', '0.00');
INSERT INTO `t_mds_order` VALUES ('4', '1', '1', '1', '1', '1', '2.00', '11', '1', '0.00', '1', '3.00', '1', '1.00', '6', '1', '20.00', '1', '6', '1', '1', '1', '1', '1', '2', '1', '11', '1', '3', '2019-09-20 17:43:20', null, null, null, '1', '1', '2', '20.00', '0.00');

-- ----------------------------
-- Table structure for t_mds_order_action_log
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_order_action_log`;
CREATE TABLE `t_mds_order_action_log` (
  `id` bigint(20) NOT NULL,
  `order_id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `action` varchar(60) NOT NULL,
  `create_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单-订单操作日志表';

-- ----------------------------
-- Records of t_mds_order_action_log
-- ----------------------------
INSERT INTO `t_mds_order_action_log` VALUES ('1', '1', '1', '1', '1', '2019-09-16 17:04:52');

-- ----------------------------
-- Table structure for t_mds_order_deatails
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_order_deatails`;
CREATE TABLE `t_mds_order_deatails` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT '0' COMMENT '订单id',
  `dishes_id` bigint(20) DEFAULT '0' COMMENT '菜品id',
  `dishes_name` varchar(60) DEFAULT NULL COMMENT '菜品名称',
  `dishes_num` int(11) DEFAULT '0' COMMENT '菜品数量',
  `spec_attr` varchar(255) DEFAULT '' COMMENT '菜品规格',
  `spec_attr_id` varchar(32) DEFAULT '0' COMMENT '菜品规格id',
  `catalogs_id` varchar(32) DEFAULT NULL COMMENT '菜品分类id',
  `dishes_tag` varchar(40) DEFAULT NULL COMMENT '口味',
  `price` decimal(11,2) DEFAULT '0.00' COMMENT '单价',
  `give_num` int(11) DEFAULT '0' COMMENT '赠菜数量',
  `rejected_amount` int(11) DEFAULT '0' COMMENT '退菜数量',
  `subtotal` decimal(11,2) DEFAULT '0.00' COMMENT '小计',
  `ticket` int(11) DEFAULT '0' COMMENT '出票  0未出 1出票',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态1:正常2：赠菜3：退菜4：部分退菜 5:部分赠菜',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单-订单详情表';

-- ----------------------------
-- Records of t_mds_order_deatails
-- ----------------------------
INSERT INTO `t_mds_order_deatails` VALUES ('1', '1', '1', '1', '3', '1', '1', '2', '1', '1.00', '0', '1', '1.00', '0', '1', '2019-09-16 16:44:05');
INSERT INTO `t_mds_order_deatails` VALUES ('2', '1', '2', '2', '3', '1', '1', '2', '1', '1.00', '0', '1', '1.00', '0', '1', '2019-09-16 16:44:05');
INSERT INTO `t_mds_order_deatails` VALUES ('3', '1', '3', '3', '3', '1', '1', '1', '1', '1.00', '0', '1', '1.00', '0', '1', '2019-09-16 16:44:05');
INSERT INTO `t_mds_order_deatails` VALUES ('4', '1', '4', '4', '3', '1', '1', '1', '1', '1.00', '0', '1', '1.00', '0', '1', '2019-09-16 16:44:05');

-- ----------------------------
-- Table structure for t_mds_order_deatails_additive
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_order_deatails_additive`;
CREATE TABLE `t_mds_order_deatails_additive` (
  `id` bigint(20) NOT NULL,
  `order_detail_id` varchar(32) NOT NULL COMMENT '订单详情id',
  `additive_id` varchar(32) NOT NULL COMMENT '加料id',
  `additive_name` varchar(60) NOT NULL COMMENT '加料名称',
  `additive_sales_price` decimal(10,2) NOT NULL COMMENT '加料价格',
  `additive_num` varchar(10) NOT NULL COMMENT '加料数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单详情加料表';

-- ----------------------------
-- Records of t_mds_order_deatails_additive
-- ----------------------------
INSERT INTO `t_mds_order_deatails_additive` VALUES ('1', '1', '1', '测试', '1.00', '1');

-- ----------------------------
-- Table structure for t_mds_recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_recharge_record`;
CREATE TABLE `t_mds_recharge_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `creat_at` datetime DEFAULT NULL COMMENT '时间',
  `operator_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '操作人',
  `operator_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '操作类型：1：充值2：扣费',
  `pay_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付类型：1：现金2：余额',
  `before_balance` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '变动前余额',
  `after_balance` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '变动后余额',
  `zs_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '赠送金额',
  `cz_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `store_id` varchar(32) DEFAULT NULL,
  `notes` varchar(255) NOT NULL COMMENT '备注',
  `physical_store_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COMMENT='会员-充值记录表';

-- ----------------------------
-- Records of t_mds_recharge_record
-- ----------------------------
INSERT INTO `t_mds_recharge_record` VALUES ('4', '1', '110.00', null, '1', '1', '1', '500.00', '610.00', '10.00', '100.00', '1', '充值100', null);
INSERT INTO `t_mds_recharge_record` VALUES ('5', '1', '110.00', null, '1', '1', '1', '610.00', '720.00', '10.00', '100.00', '1', '充值100', null);
INSERT INTO `t_mds_recharge_record` VALUES ('6', '1', '110.00', '2019-10-02 09:56:25', '1', '1', '1', '720.00', '830.00', '10.00', '100.00', '1', '充值100', null);
INSERT INTO `t_mds_recharge_record` VALUES ('9', '1', '100.00', '2019-10-06 10:00:15', '1', '2', '1', '830.00', '730.00', '1.00', '100.00', '1', '扣费100', null);
INSERT INTO `t_mds_recharge_record` VALUES ('11', '1', '100.00', '2019-10-08 10:05:30', '1', '2', '1', '730.00', '630.00', '0.00', '0.00', '1', '扣费100', null);
INSERT INTO `t_mds_recharge_record` VALUES ('12', '5', '110.00', '2019-10-07 10:06:32', '1', '1', '1', '111.00', '221.00', '10.00', '100.00', '1', '充值100', null);
INSERT INTO `t_mds_recharge_record` VALUES ('13', '5', '110.00', '2019-10-08 10:27:25', '1', '1', '1', '221.00', '331.00', '10.00', '100.00', '1', '充值100', null);
INSERT INTO `t_mds_recharge_record` VALUES ('14', '7', '210.00', '2019-10-08 13:47:31', '1', '1', '1', '1.00', '211.00', '10.00', '200.00', '1', 'ceshji', null);
INSERT INTO `t_mds_recharge_record` VALUES ('15', '1', '10.00', '2019-10-08 13:49:48', '1', '1', '1', '630.00', '640.00', '0.00', '10.00', '1', '111', null);
INSERT INTO `t_mds_recharge_record` VALUES ('16', '5', '100.00', '2019-10-08 14:06:51', '8', '2', '1', '331.00', '231.00', '0.00', '0.00', '1', '000', null);
INSERT INTO `t_mds_recharge_record` VALUES ('17', '5', '105.00', '2019-10-08 14:16:42', '1', '1', '1', '231.00', '336.00', '5.00', '100.00', '1', '充值100', null);
INSERT INTO `t_mds_recharge_record` VALUES ('18', '5', '100.00', '2019-10-08 14:18:40', '8', '2', '1', '336.00', '236.00', '0.00', '0.00', '1', '消费100', null);
INSERT INTO `t_mds_recharge_record` VALUES ('19', '2', '110.00', '2019-10-08 06:28:46', '8', '1', '1', '1.00', '111.00', '10.00', '100.00', '1', '充值100', null);
INSERT INTO `t_mds_recharge_record` VALUES ('20', '1569813831749', '30.00', '2019-10-09 08:18:40', '1', '1', '1', '120.00', '150.00', '10.00', '20.00', '1', '充值20', null);

-- ----------------------------
-- Table structure for t_mds_set_meal
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_set_meal`;
CREATE TABLE `t_mds_set_meal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属门店ID',
  `image` varchar(256) NOT NULL DEFAULT '' COMMENT ' 套餐图片 建议尺寸600x600像素，图片格式支持png、jpg',
  `name_cn` varchar(32) NOT NULL DEFAULT '' COMMENT '套餐名称（中文名称）',
  `name_en` varchar(32) NOT NULL DEFAULT '' COMMENT '套餐名称（英文名称）',
  `mnemonic_code` varchar(16) NOT NULL DEFAULT '' COMMENT '助记码',
  `sales_price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '销售单价',
  `box_amount` int(11) NOT NULL DEFAULT '0' COMMENT '餐盒费',
  `minimum_quantity` int(11) NOT NULL DEFAULT '0' COMMENT '起点数量',
  `unit_code` varchar(32) NOT NULL COMMENT '菜品单位',
  `unit_name` varchar(32) NOT NULL COMMENT '菜品单位名称',
  `order_restriction` int(11) NOT NULL DEFAULT '0' COMMENT '单笔限购',
  `enabled_discount` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否参与打折',
  `enabled_dine_in` tinyint(1) NOT NULL DEFAULT '1' COMMENT '堂食可点',
  `enabled_take_out` tinyint(1) NOT NULL DEFAULT '1' COMMENT '外卖可点',
  `enabled_dine_open` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点餐中开启',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '初始销量',
  `description` varchar(256) NOT NULL DEFAULT '' COMMENT '套餐介绍',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态1：正常；2：删除；3估清',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='菜品-套餐表';

-- ----------------------------
-- Records of t_mds_set_meal
-- ----------------------------
INSERT INTO `t_mds_set_meal` VALUES ('1', '0', '/upload/notFoundFolder/1568769547615-581.png', '至尊套餐', 'zztc', 'zztc', '20.00', '1', '1', 'cpdw001', '个', '1', '1', '0', '1', '1', '1', '套餐描述11', '1');
INSERT INTO `t_mds_set_meal` VALUES ('2', '0', '/upload/notFoundFolder/1568771403020-7.jpg', '大套餐1', 'dtc', 'dtc', '12.00', '12', '12', 'codw002', '份', '12', '0', '1', '1', '0', '12', '描述', '1');
INSERT INTO `t_mds_set_meal` VALUES ('6', '0', '', '无敌霸王套餐', 'wdbwtc', '1234', '25.00', '5', '1', 'codw002', '份', '2', '1', '0', '1', '1', '10', 'hehehehe', '1');

-- ----------------------------
-- Table structure for t_mds_set_meal_dishes
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_set_meal_dishes`;
CREATE TABLE `t_mds_set_meal_dishes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `amount` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `set_meal_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属套餐ID',
  `dishes_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '菜品ID',
  `spe_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '菜品规格id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COMMENT='菜品-套餐菜品关系表';

-- ----------------------------
-- Records of t_mds_set_meal_dishes
-- ----------------------------
INSERT INTO `t_mds_set_meal_dishes` VALUES ('22', '1', '1', '15', '17');
INSERT INTO `t_mds_set_meal_dishes` VALUES ('23', '1', '2', '2', '1');
INSERT INTO `t_mds_set_meal_dishes` VALUES ('24', '1', '2', '3', '2');
INSERT INTO `t_mds_set_meal_dishes` VALUES ('25', '1', '2', '14', '13');
INSERT INTO `t_mds_set_meal_dishes` VALUES ('26', '2', '6', '2', '16');
INSERT INTO `t_mds_set_meal_dishes` VALUES ('27', '1', '6', '3', '2');
INSERT INTO `t_mds_set_meal_dishes` VALUES ('28', '2', '6', '15', '17');

-- ----------------------------
-- Table structure for t_mds_specification
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_specification`;
CREATE TABLE `t_mds_specification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dishes_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属菜品ID',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT ' 类型 1：单一价格；2：规格价格',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '规格名称',
  `sales_price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '销售价',
  `original_price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '原价',
  `cost_price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='菜品-规格表';

-- ----------------------------
-- Records of t_mds_specification
-- ----------------------------
INSERT INTO `t_mds_specification` VALUES ('1', '2', '0', '大份', '14.00', '8.00', '8.00');
INSERT INTO `t_mds_specification` VALUES ('2', '3', '0', '', '15.00', '0.00', '0.00');
INSERT INTO `t_mds_specification` VALUES ('13', '14', '0', '', '12.00', '0.00', '0.00');
INSERT INTO `t_mds_specification` VALUES ('16', '2', '0', '小份', '10.00', '6.00', '2.00');
INSERT INTO `t_mds_specification` VALUES ('17', '15', '0', '', '12.00', '12.00', '12.00');
INSERT INTO `t_mds_specification` VALUES ('18', '16', '0', '大份', '50.00', '40.00', '36.00');
INSERT INTO `t_mds_specification` VALUES ('19', '16', '0', '小份', '20.00', '25.00', '18.00');

-- ----------------------------
-- Table structure for t_mds_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_mds_tag`;
CREATE TABLE `t_mds_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dishes_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属菜品ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '分组名称',
  `taste` varchar(32) NOT NULL DEFAULT '' COMMENT '口味',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='菜品-标签表';

-- ----------------------------
-- Records of t_mds_tag
-- ----------------------------
INSERT INTO `t_mds_tag` VALUES ('1', '0', '饮料', '加冰');
INSERT INTO `t_mds_tag` VALUES ('2', '0', '饮料', '常温');
INSERT INTO `t_mds_tag` VALUES ('3', '0', '菜品', '微辣');
INSERT INTO `t_mds_tag` VALUES ('4', '0', '菜品', '中辣');

-- ----------------------------
-- Table structure for t_mep_employees
-- ----------------------------
DROP TABLE IF EXISTS `t_mep_employees`;
CREATE TABLE `t_mep_employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属店铺ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '姓名 必填',
  `phone` varchar(32) NOT NULL DEFAULT '' COMMENT '手机号 必填',
  `physical_store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属门店ID 必填',
  `physical_store_name` varchar(32) NOT NULL DEFAULT '' COMMENT '所属门店名称 必填',
  `emp_no` varchar(16) NOT NULL DEFAULT '' COMMENT '员工号',
  `duty` varchar(32) NOT NULL DEFAULT '' COMMENT '职务',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `gender` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别 1：男；2：女；必填',
  `role` varchar(20) NOT NULL DEFAULT '0' COMMENT '角色 code',
  `role_name` varchar(20) NOT NULL COMMENT '角色名称',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='员工-员工表';

-- ----------------------------
-- Records of t_mep_employees
-- ----------------------------
INSERT INTO `t_mep_employees` VALUES ('1', '1', '韩帅', '18633848570', '5', '测试门店3', '001', '经理', '2019-08-14', '1', 'ygjs002', '收银', '1', '0');
INSERT INTO `t_mep_employees` VALUES ('8', '1', '土憨憨', '1984737443', '1', '总门店', '002', '员工', '2019-09-14', '1', 'ygjs001', '店长', '1', '0');

-- ----------------------------
-- Table structure for t_mgd_shopping
-- ----------------------------
DROP TABLE IF EXISTS `t_mgd_shopping`;
CREATE TABLE `t_mgd_shopping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(32) NOT NULL DEFAULT '' COMMENT '店铺id',
  `physical_store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '门店id',
  `table_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '桌台号',
  `attr_id` bigint(20) DEFAULT '0' COMMENT '规格id',
  `attr_desc` varchar(30) DEFAULT NULL COMMENT '规格描述',
  `dishes_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '菜品id',
  `additive_id` varchar(50) DEFAULT NULL COMMENT '加料id  加多个,隔开',
  `taste_id` varchar(50) NOT NULL DEFAULT '' COMMENT '口味id',
  `taste_name` varchar(50) DEFAULT NULL COMMENT '口味名称',
  `people_num` int(20) DEFAULT '0' COMMENT '就餐人数',
  `dishes_num` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='购物车表\r\n如无特殊说明，所有表内字段，数字型默认为0；字符串型默认为空字符串\r\n特别注意：\r\n1：时间格式字段';

-- ----------------------------
-- Records of t_mgd_shopping
-- ----------------------------
INSERT INTO `t_mgd_shopping` VALUES ('2', 'mrc', '1', '7', '1', '大份', '2', '', '', null, '4', '4', null, null, '59.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('16', 'mrc', '1', '7', '0', null, '3', '', '', null, '4', '8', null, null, '120.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('17', 'mrc', '1', '7', '0', null, '14', '', '', null, '4', '4', null, null, '48.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('18', 'mrc', '1', '7', '16', '小份', '2', null, '', null, '4', '2', null, null, '20.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('19', 'mrc', '1', '8', '0', null, '3', '', '', null, '4', '2', null, null, '30.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('20', 'mrc', '1', '8', '0', null, '14', '', '', null, '4', '1', null, null, '12.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('21', 'mrc', '1', '9', '0', null, '3', '', '', null, '4', '8', null, null, '120.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('22', 'mrc', '1', '9', '0', null, '14', '', '', null, '4', '8', null, null, '96.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('23', 'mrc', '1', '9', '0', null, '15', '', '', null, '4', '2', null, null, '24.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('24', 'mrc', '1', '12', '0', null, '3', '', '', null, '8', '2', null, null, '30.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('25', 'mrc', '1', '12', '0', null, '14', '', '', null, '8', '1', null, null, '12.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('26', 'mrc', '1', '12', '0', null, '15', '', '', null, '8', '2', null, null, '24.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('27', 'mrc', '1', '12', '16', '小份', '2', null, '', null, '8', '1', null, null, '10.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('28', 'mrc', '1', '12', '1', '大份', '2', null, '', null, '8', '1', null, null, '14.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('29', 'mrc', '1', '10', '0', null, '3', '', '', null, '4', '2', null, null, '30.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('30', 'mrc', '1', '10', '0', null, '14', '', '', null, '4', '2', null, null, '24.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('31', 'mrc', '1', '10', '16', '小份', '2', null, '', null, '4', '1', null, null, '10.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('32', 'mrc', '1', '11', '0', null, '3', '', '', null, '4', '1', null, null, '15.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('33', 'mrc', '1', '11', '0', null, '14', '', '', null, '4', '1', null, null, '12.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('34', 'mrc', '1', '11', '16', '小份', '2', null, '', null, '4', '1', null, null, '10.00', '0');
INSERT INTO `t_mgd_shopping` VALUES ('35', 'mrc', '1', '11', '1', '大份', '2', null, '', null, '4', '1', null, null, '14.00', '0');

-- ----------------------------
-- Table structure for t_mgd_shopping_additive
-- ----------------------------
DROP TABLE IF EXISTS `t_mgd_shopping_additive`;
CREATE TABLE `t_mgd_shopping_additive` (
  `id` bigint(20) NOT NULL,
  `shopping_id` varchar(32) NOT NULL COMMENT '订单详情id',
  `additive_id` varchar(32) NOT NULL COMMENT '加料id',
  `additive_name` varchar(60) NOT NULL COMMENT '加料名称',
  `additive_sales_price` decimal(10,2) NOT NULL COMMENT '加料价格',
  `additive_num` varchar(10) NOT NULL COMMENT '加料数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='购物车加料表';

-- ----------------------------
-- Records of t_mgd_shopping_additive
-- ----------------------------
INSERT INTO `t_mgd_shopping_additive` VALUES ('1', '1', '1', '测试', '1.00', '1');

-- ----------------------------
-- Table structure for t_mmb_integral_rules
-- ----------------------------
DROP TABLE IF EXISTS `t_mmb_integral_rules`;
CREATE TABLE `t_mmb_integral_rules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属店铺',
  `expense_amount` int(11) NOT NULL DEFAULT '0' COMMENT '消费金额',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '所得积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='会员-积分规则';

-- ----------------------------
-- Records of t_mmb_integral_rules
-- ----------------------------
INSERT INTO `t_mmb_integral_rules` VALUES ('6', '1', '100', '1');

-- ----------------------------
-- Table structure for t_mmb_member_settings
-- ----------------------------
DROP TABLE IF EXISTS `t_mmb_member_settings`;
CREATE TABLE `t_mmb_member_settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属店铺',
  `is_enable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启会员配置',
  `enabled_integral_rules` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开启积分规格；默认0',
  `enabled_recharge` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开启充值送金额积分；默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='会员-会员设置表';

-- ----------------------------
-- Records of t_mmb_member_settings
-- ----------------------------
INSERT INTO `t_mmb_member_settings` VALUES ('1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for t_mmb_recharge
-- ----------------------------
DROP TABLE IF EXISTS `t_mmb_recharge`;
CREATE TABLE `t_mmb_recharge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属店铺',
  `recharge_amount` int(11) NOT NULL DEFAULT '0' COMMENT '充值金额',
  `present_amount` int(11) NOT NULL DEFAULT '0' COMMENT '赠送金额',
  `present_integral` int(11) NOT NULL DEFAULT '0' COMMENT '赠送积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='会员-充值赠送金额积分设置';

-- ----------------------------
-- Records of t_mmb_recharge
-- ----------------------------
INSERT INTO `t_mmb_recharge` VALUES ('8', '1', '100', '10', '1');

-- ----------------------------
-- Table structure for t_mmset_receiving_address
-- ----------------------------
DROP TABLE IF EXISTS `t_mmset_receiving_address`;
CREATE TABLE `t_mmset_receiving_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(32) NOT NULL DEFAULT '' COMMENT '店铺',
  `member_id` varchar(30) NOT NULL DEFAULT '' COMMENT '所属用户',
  `receiver` varchar(30) NOT NULL DEFAULT '' COMMENT '收货人',
  `province_code` varchar(30) NOT NULL DEFAULT '' COMMENT '省份编码',
  `city_code` varchar(30) NOT NULL DEFAULT '' COMMENT '城市编码',
  `district_code` varchar(30) NOT NULL DEFAULT '' COMMENT '区编码',
  `details_address` varchar(500) NOT NULL DEFAULT '' COMMENT '详细地址',
  `full_address` varchar(1000) NOT NULL DEFAULT '' COMMENT '全地址：省市区+详细地址',
  `mobile` varchar(30) NOT NULL DEFAULT '' COMMENT '手机号',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否默认  1：是  0：否',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COMMENT='收货地址';

-- ----------------------------
-- Records of t_mmset_receiving_address
-- ----------------------------
INSERT INTO `t_mmset_receiving_address` VALUES ('175', 'mall001', '35', '波波', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '18132008770', '1', '2018-11-21 14:49:45', '2018-11-21 14:49:45');
INSERT INTO `t_mmset_receiving_address` VALUES ('176', 'mall001', '36', '韩帅', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '18633848570', '1', '2018-11-21 14:55:12', '2018-11-21 14:55:12');
INSERT INTO `t_mmset_receiving_address` VALUES ('177', 'mall001', '38', 'lion', '13000000', '13010000', '13010200', 'baichuandasha', '河北省石家庄市长安区baichuandasha', '18032931251', '1', '2018-11-21 14:57:29', '2018-11-21 14:57:29');
INSERT INTO `t_mmset_receiving_address` VALUES ('178', 'mall001', '37', '左晓鹏', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '18031184828', '1', '2018-11-21 14:58:01', '2018-11-21 14:58:01');
INSERT INTO `t_mmset_receiving_address` VALUES ('179', 'mall001', '39', '王永攀', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '15081120507', '1', '2018-11-21 15:00:43', '2018-11-21 15:00:43');
INSERT INTO `t_mmset_receiving_address` VALUES ('181', 'mall001', '45', '李杰', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '15833927843', '1', '2018-11-21 15:28:44', '2018-11-21 15:28:44');
INSERT INTO `t_mmset_receiving_address` VALUES ('183', 'mall001', '46', '啵啵', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '18132008770', '1', '2018-11-21 16:17:30', '2018-11-21 16:17:30');
INSERT INTO `t_mmset_receiving_address` VALUES ('184', 'mall001', '48', '张', '15000000', '15030000', '15030300', '就来了', '内蒙古自治区乌海市海南区就来了', '13230969768', '0', '2018-11-21 16:47:32', '2018-11-21 16:47:32');
INSERT INTO `t_mmset_receiving_address` VALUES ('185', 'mall001', '42', '啵啵', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '18132008770', '1', '2018-11-21 16:49:57', '2018-11-21 16:49:57');
INSERT INTO `t_mmset_receiving_address` VALUES ('186', 'mall001', '49', '李纲', '13000000', '13010000', '13018100', '大车城', '河北省石家庄市辛集市大车城', '15031196279', '1', '2018-11-21 16:56:22', '2018-11-21 16:56:22');
INSERT INTO `t_mmset_receiving_address` VALUES ('187', 'mall001', '50', '陈福兴', '37000000', '37010000', '37010400', '绿地中央广场b座', '山东省济南市槐荫区绿地中央广场b座', '15853127353', '1', '2018-11-21 17:06:12', '2018-11-21 17:06:12');
INSERT INTO `t_mmset_receiving_address` VALUES ('188', 'mall001', '51', '段江丽', '37000000', '37010000', '37010400', '绿地中央广场B座', '山东省济南市槐荫区绿地中央广场B座', '15098927115', '1', '2018-11-22 09:15:36', '2018-11-22 09:15:36');
INSERT INTO `t_mmset_receiving_address` VALUES ('190', 'mall001', '44', '安传祥', '13000000', '13040000', '13040600', '上东城', '河北省邯郸市峰峰矿区上东城', '15932216883', '0', '2018-11-23 10:43:41', '2018-11-23 10:43:41');
INSERT INTO `t_mmset_receiving_address` VALUES ('191', 'mall001', '56', '樊先生', '13000000', '13010000', '13010100', '百川大厦', '河北省石家庄市市辖区百川大厦', '17732125833', '1', '2018-11-23 11:07:47', '2018-11-23 11:07:47');
INSERT INTO `t_mmset_receiving_address` VALUES ('192', 'mall001', '57', '我', '13000000', '13090000', '13090200', '12233', '河北省沧州市新华区12233', '15028192257', '0', '2018-11-23 16:22:10', '2018-11-23 16:22:10');
INSERT INTO `t_mmset_receiving_address` VALUES ('193', 'mall001', '59', 'q', '14000000', '14100000', '14102300', 'q', '山西省临汾市襄汾县q', '15531173759', '1', '2018-11-23 16:24:30', '2018-11-23 16:24:30');
INSERT INTO `t_mmset_receiving_address` VALUES ('194', 'mall001', '60', '孟召磊', '37000000', '37010000', '37010400', '绿地中央广场', '山东省济南市槐荫区绿地中央广场', '15562637095', '0', '2018-11-23 16:24:42', '2018-11-23 16:24:42');
INSERT INTO `t_mmset_receiving_address` VALUES ('195', 'mall001', '40', '大阳佬', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '18232163579', '1', '2018-11-23 16:50:23', '2018-11-23 16:50:23');
INSERT INTO `t_mmset_receiving_address` VALUES ('197', 'mall001', '4', '哦哦哦', '11000000', '11010000', '11010100', '啦啦啦', '北京市市辖区东城区啦啦啦', '18032913215', '1', '2018-12-06 16:19:45', '2018-12-06 16:19:45');
INSERT INTO `t_mmset_receiving_address` VALUES ('198', 'mall001', '193', '哈哈', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '17732125833', '1', '2018-12-07 10:52:13', '2018-12-07 10:52:13');
INSERT INTO `t_mmset_receiving_address` VALUES ('199', 'mall001', '5', '刘先生', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '15632556956', '1', '2018-12-12 13:58:36', '2018-12-12 13:58:36');
INSERT INTO `t_mmset_receiving_address` VALUES ('200', 'mall001', '2046', 'Monkey', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '18032931251', '1', '2018-12-18 11:40:39', '2018-12-18 11:40:39');
INSERT INTO `t_mmset_receiving_address` VALUES ('201', 'mall001', '2048', '曹梦真', '14000000', '14010000', '14010700', '李云龙', '山西省太原市杏花岭区李云龙', '15932216883', '0', '2019-01-02 16:42:44', '2019-01-02 16:42:59');
INSERT INTO `t_mmset_receiving_address` VALUES ('202', 'mall001', '2055', '韩帅', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '18643464664', '1', '2019-05-31 09:38:38', '2019-05-31 09:38:38');
INSERT INTO `t_mmset_receiving_address` VALUES ('203', 'mall001', '2055', '帥', '13000000', '13040000', '13040300', '百川大厦', '河北省邯郸市丛台区百川大厦', '18673644364', '0', '2019-05-31 09:52:49', '2019-05-31 09:52:49');
INSERT INTO `t_mmset_receiving_address` VALUES ('205', 'mall001', '2055', '舒适', '13000000', '13040000', '13040600', '百川大厦', '河北省邯郸市峰峰矿区百川大厦', '18673377336', '0', '2019-05-31 10:25:36', '2019-05-31 10:25:36');
INSERT INTO `t_mmset_receiving_address` VALUES ('206', 'mall001', '2055', '哈哈哈哈', '15000000', '15030000', '15030200', '百川大厦', '内蒙古自治区乌海市海勃湾区百川大厦', '18464343464', '0', '2019-05-31 10:31:07', '2019-05-31 10:31:07');
INSERT INTO `t_mmset_receiving_address` VALUES ('207', 'mall001', '2055', '6666', '21000000', '21130000', '21132400', '百川大厦', '辽宁省朝阳市喀喇沁左翼蒙古族自治县百川大厦', '18633767646', '0', '2019-05-31 11:40:28', '2019-05-31 11:40:28');
INSERT INTO `t_mmset_receiving_address` VALUES ('208', 'mallSRSC', '2058', '韩帅', '13000000', '13010000', '13018800', '百川大厦', '河北省石家庄市开发区百川大厦', '18633848578', '0', '2019-06-04 10:34:52', '2019-06-04 10:34:52');
INSERT INTO `t_mmset_receiving_address` VALUES ('209', 'mallSRSC', '2059', '左晓鹏', '13000000', '13010000', '13010100', '百川大厦', '河北省石家庄市市辖区百川大厦', '18031184828', '1', '2019-06-05 14:31:54', '2019-06-05 14:31:54');
INSERT INTO `t_mmset_receiving_address` VALUES ('210', 'mallSRSC', '2062', '喵', '13000000', '13010000', '13010200', '百川', '河北省石家庄市长安区百川', '18031184828', '1', '2019-06-06 15:07:03', '2019-06-06 15:07:03');
INSERT INTO `t_mmset_receiving_address` VALUES ('211', 'mallSRSC', '2063', 'k', '13000000', '13010000', '13010200', '百川大厦', '河北省石家庄市长安区百川大厦', '18031184829', '1', '2019-06-06 15:39:24', '2019-06-06 15:39:24');
INSERT INTO `t_mmset_receiving_address` VALUES ('212', 'mallSRSC', '2064', '喵', '13000000', '13010000', '13010200', 'ｖｖｖｖ', '河北省石家庄市长安区ｖｖｖｖ', '14799877887', '1', '2019-06-06 15:59:17', '2019-06-06 15:59:17');
INSERT INTO `t_mmset_receiving_address` VALUES ('214', 'mallSRSC', '2069', '王永攀', '13000000', '13010000', '13010200', '哈哈', '河北省石家庄市长安区哈哈', '15081120507', '1', '2019-06-12 15:38:14', '2019-06-12 15:38:14');
INSERT INTO `t_mmset_receiving_address` VALUES ('216', 'mallSRSC', '2068', 'abo', '12000000', '12010000', '12010400', 'rrr', '天津市市辖区南开区rrr', '18031484826', '0', '2019-06-14 09:20:10', '2019-06-14 09:20:10');

-- ----------------------------
-- Table structure for t_mps_physical_store
-- ----------------------------
DROP TABLE IF EXISTS `t_mps_physical_store`;
CREATE TABLE `t_mps_physical_store` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属店铺ID',
  `logo` varchar(255) DEFAULT NULL COMMENT '店铺logo建议尺寸200x200像素，logo图片格式支持png、jpg',
  `enabled_welcome_screen` tinyint(1) DEFAULT '0' COMMENT '开启扫码点餐开屏页面；0：关；1：开；默认为0',
  `welcome_screen_image` varchar(256) DEFAULT NULL COMMENT '建议图片不超过1M，图片不能小于320*600像素。推荐640*1200像素。JPG、PNG格式。',
  `is_headquarters` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为总店；1：是；0：否；默认为0',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '门店名 必填',
  `manager` varchar(32) NOT NULL DEFAULT '' COMMENT '店长 必填',
  `phone` varchar(32) NOT NULL DEFAULT '' COMMENT '联系电话 必填',
  `catering_type_code` varchar(32) NOT NULL DEFAULT '' COMMENT '餐饮类型',
  `catering_type_name` varchar(32) NOT NULL DEFAULT '' COMMENT '餐饮类型名称',
  `shop_type_code` varchar(32) NOT NULL DEFAULT '' COMMENT '门店类型 必填',
  `shop_type_name` varchar(32) NOT NULL DEFAULT '' COMMENT '门店类型名称 必填',
  `province_code` varchar(16) NOT NULL DEFAULT '' COMMENT '所在省',
  `province_name` varchar(16) NOT NULL DEFAULT '' COMMENT '省名称',
  `city_code` varchar(16) NOT NULL DEFAULT '' COMMENT '所在市',
  `city_name` varchar(16) NOT NULL DEFAULT '' COMMENT '市名称',
  `district_code` varchar(16) NOT NULL COMMENT '所在区',
  `district_name` varchar(16) NOT NULL DEFAULT '' COMMENT '区名称',
  `address` varchar(256) NOT NULL DEFAULT '' COMMENT '店铺位置',
  `latitude` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '经度',
  `longitude` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '纬度',
  `description` varchar(256) DEFAULT '' COMMENT '店铺描述',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='门店-门店表';

-- ----------------------------
-- Records of t_mps_physical_store
-- ----------------------------
INSERT INTO `t_mps_physical_store` VALUES ('1', '1', '/upload/notFoundFolder/1568796743939-841.png', '0', '/upload/notFoundFolder/1568796749895-49.png', '1', '总门店', '1', '1', '1', '1', '1', '1', '1', '河北省', '1', '石家庄市', '11', '裕华区', '河北省石家庄市裕华区黄河大道', '38.0459', '114.6231', '测试修改1111111', '1');
INSERT INTO `t_mps_physical_store` VALUES ('2', '1', null, '0', null, '0', '666', '左晓鹏', '18031184828', '001', '直营店', 'shop001', '中餐', '13000000', '河北省', '13010000', '石家庄市', '13010500', '新华区', '河北省石家庄市新华区宁安路91号', '38.0547', '114.4801', '测试修改', '1');
INSERT INTO `t_mps_physical_store` VALUES ('3', '123', null, '0', null, '0', '测试门店', '左晓鹏', '18031184828', '001', '直营店', 'shop001', '中餐', '123', '河北省', '123', '石家庄市', '123', '新华区', '河北省石家庄市新华区水源街', '38.0574', '114.4674', '测试', '0');
INSERT INTO `t_mps_physical_store` VALUES ('4', '1', null, '0', null, '0', '左晓鹏门店2', '左晓鹏', '4444444', '002', '加盟店', 'shop001', '中餐', '13000000', '河北省', '13010000', '石家庄市', '13010500', '新华区', '河北省石家庄市新华区市庄路65号', '38.0639', '114.4791', '8888888', '1');
INSERT INTO `t_mps_physical_store` VALUES ('5', '1', null, '0', null, '0', '测试门店3', '左晓鹏', '18031184828', '001', '直营店', 'shop001', '中餐', '123', '河北省', '123', '石家庄市', '123', '长安区', '河北省石家庄市长安区和平东路257号', '38.0543', '114.5414', '测试省市县code', '1');
INSERT INTO `t_mps_physical_store` VALUES ('6', '1', null, '0', null, '0', 'qqq', '1111', '11111', '001', '直营店', 'shop002', '自助餐', '13000000', '河北省', '13010000', '石家庄市', '61011600', '长安区', '河北省石家庄市长安区平安北大街136号', '38.0530', '114.5011', '11111', '1');
INSERT INTO `t_mps_physical_store` VALUES ('7', '1', null, '0', null, '0', '111', '2222', '3333', '002', '加盟店', 'shop001', '中餐', '13000000', '河北省', '13010000', '石家庄市', '13010500', '新华区', '河北省石家庄市新华区柏林路', '38.0747', '114.4793', '111111', '0');
INSERT INTO `t_mps_physical_store` VALUES ('8', '1', null, '0', null, '0', '1111', '2222', '3333', '001', '直营店', 'shop001', '中餐', '13000000', '河北省', '13010000', '石家庄市', '13010500', '新华区', '河北省石家庄市新华区联盟路500号', '38.0769', '114.4557', '44444', '1');
INSERT INTO `t_mps_physical_store` VALUES ('9', '1', null, '0', null, '0', 'qqqq', '11', '2222', '001', '直营店', 'shop002', '自助餐', '13000000', '河北省', '13010000', '石家庄市', '13010500', '新华区', '河北省石家庄市新华区农机街37号', '38.0788', '114.4979', '3333', '1');
INSERT INTO `t_mps_physical_store` VALUES ('10', '1', null, '0', null, '0', '111', '2222', '3333', '001', '直营店', 'shop001', '中餐', '13000000', '河北省', '13010000', '石家庄市', '13010500', '新华区', '河北省石家庄市新华区联盟路585号', '38.0794', '114.4665', '2222', '0');
INSERT INTO `t_mps_physical_store` VALUES ('11', '1', null, '0', null, '0', '111', '2222', '3333', '002', '加盟店', 'shop001', '中餐', '13000000', '河北省', '13010000', '石家庄市', '61011600', '长安区', '河北省石家庄市长安区沿东街', '38.0746', '114.5204', '4444', '0');
INSERT INTO `t_mps_physical_store` VALUES ('12', '1', null, '0', null, '0', '1111111', '22222', '3333', '002', '加盟店', 'shop001', '中餐', '13000000', '河北省', '13010000', '石家庄市', '13010500', '新华区', '河北省石家庄市新华区柏林路63号', '38.0751', '114.4871', '11111666', '1');
INSERT INTO `t_mps_physical_store` VALUES ('13', '1', null, '0', null, '0', 'qqqq', '11', '2222', '001', '直营店', 'shop002', '自助餐', '13000000', '河北省', '13010000', '石家庄市', '13010500', '新华区', '河北省石家庄市新华区农机街37号', '38.0788', '114.4979', '3333', '1');
INSERT INTO `t_mps_physical_store` VALUES ('14', '1', null, '0', null, '0', 'qqqq', '11', '2222', '001', '直营店', 'shop002', '自助餐', '13000000', '河北省', '13010000', '石家庄市', '13010500', '新华区', '河北省石家庄市新华区农机街37号', '38.0788', '114.4979', '3333', '0');
INSERT INTO `t_mps_physical_store` VALUES ('15', '1', null, '0', null, '0', 'qqqq', '11', '2222', '001', '直营店', 'shop002', '自助餐', '13000000', '河北省', '13010000', '石家庄市', '13010500', '新华区', '河北省石家庄市新华区农机街37号', '38.0788', '114.4979', '3333', '0');
INSERT INTO `t_mps_physical_store` VALUES ('16', '1', null, '0', null, '0', '111', '2222', '3333', '001', '直营店', 'shop001', '中餐', '13000000', '河北省', '13010000', '石家庄市', '13010500', '新华区', '河北省石家庄市新华区联盟路585号', '38.0794', '114.4665', '2222', '0');
INSERT INTO `t_mps_physical_store` VALUES ('17', '1', null, '0', null, '0', '111', '2222', '3333', '002', '加盟店', 'shop001', '中餐', '13000000', '河北省', '13010000', '石家庄市', '61011600', '长安区', '河北省石家庄市长安区沿东街', '38.0746', '114.5204', '4444', '1');
INSERT INTO `t_mps_physical_store` VALUES ('18', '1', null, '0', null, '0', '1111111', '22222', '3333', '002', '加盟店', 'shop001', '中餐', '13000000', '河北省', '13010000', '石家庄市', '13010500', '新华区', '河北省石家庄市新华区柏林路63号', '38.0751', '114.4871', '11111', '0');
INSERT INTO `t_mps_physical_store` VALUES ('19', '1', null, '0', null, '0', '2222', '3333', '4444', '001', '直营店', 'shop002', '自助餐', '13000000', '河北省', '13010000', '石家庄市', '61011600', '长安区', '河北省石家庄市长安区建设北大街126号', '38.0557', '114.5105', '00000', '0');
INSERT INTO `t_mps_physical_store` VALUES ('20', '1', null, '0', null, '0', '百川', 'wk', '15227132803', '001', '直营店', 'shop001', '中餐', '13000000', '河北省', '13010000', '石家庄市', '61011600', '长安区', '河北省石家庄市长安区广安大街', '38.0492', '114.5212', '11111111111', '0');
INSERT INTO `t_mps_physical_store` VALUES ('21', '1', null, '0', null, '0', '123456', 'wk', '15227132803', '002', '加盟店', 'shop002', '自助餐', '13000000', '河北省', '13010000', '石家庄市', '61011600', '长安区', '河北省石家庄市长安区跃进路226号', '38.0503', '114.5763', 'ceshiceshi', '0');

-- ----------------------------
-- Table structure for t_mss_account
-- ----------------------------
DROP TABLE IF EXISTS `t_mss_account`;
CREATE TABLE `t_mss_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属店铺ID',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '账户类型 1：管理员；2：普通账号',
  `account` varchar(32) NOT NULL DEFAULT '' COMMENT '登录帐号',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `phone` varchar(32) NOT NULL DEFAULT '' COMMENT '联系电话',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='店铺设置-帐号表';

-- ----------------------------
-- Records of t_mss_account
-- ----------------------------
INSERT INTO `t_mss_account` VALUES ('1', '1', '1', '15227132803', 'wk', '15227132803', 'e10adc3949ba59abbe56e057f20f883e', '2019-09-23 16:28:33', '1');

-- ----------------------------
-- Table structure for t_mss_base_info
-- ----------------------------
DROP TABLE IF EXISTS `t_mss_base_info`;
CREATE TABLE `t_mss_base_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '店铺名称，必填',
  `logo` varchar(256) NOT NULL DEFAULT '' COMMENT '店铺logo建议尺寸200x200像素，logo图片格式支持png、jpg',
  `enabled_welcome_screen` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开启扫码点餐开屏页面；0：关；1：开；默认为0',
  `welcome_screen_image` varchar(256) NOT NULL COMMENT '建议图片不超过1M，图片不能小于320*600像素。推荐640*1200像素。JPG、PNG格式。',
  `catering_type_code` varchar(32) NOT NULL DEFAULT '' COMMENT '餐饮类型',
  `catering_type_name` varchar(32) NOT NULL DEFAULT '' COMMENT '餐饮类型名称',
  `province_code` varchar(16) NOT NULL DEFAULT '' COMMENT '所在省',
  `province_name` varchar(16) NOT NULL DEFAULT '' COMMENT '省名称',
  `city_code` varchar(16) NOT NULL DEFAULT '' COMMENT '所在市',
  `city_name` varchar(16) NOT NULL DEFAULT '' COMMENT '市名称',
  `district_code` varchar(16) NOT NULL COMMENT '所在区',
  `district_name` varchar(16) NOT NULL DEFAULT '' COMMENT '区名称',
  `address` varchar(256) NOT NULL DEFAULT '' COMMENT '店铺地址',
  `phone` varchar(32) NOT NULL DEFAULT '' COMMENT '联系电话',
  `contacts` varchar(32) NOT NULL DEFAULT '' COMMENT '联系人',
  `description` varchar(256) NOT NULL DEFAULT '' COMMENT '可选',
  `creat_at` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='店铺设置-基础信息表';

-- ----------------------------
-- Records of t_mss_base_info
-- ----------------------------
INSERT INTO `t_mss_base_info` VALUES ('1', '店铺1', '', '0', '1', '1', '1', '1', '1', '11111', '111', '111', '1111', '1', '1', '1', '1', null, '1');

-- ----------------------------
-- Table structure for t_mss_business_model
-- ----------------------------
DROP TABLE IF EXISTS `t_mss_business_model`;
CREATE TABLE `t_mss_business_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属店铺ID',
  `operating_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '店铺状态;1:正常运营；2：暂停营业',
  `operating_time_start` varchar(20) DEFAULT NULL COMMENT '运营时间（起） 小时分钟',
  `operating_time_finish` varchar(20) DEFAULT NULL COMMENT '运营时间（止） 小时分钟',
  `enabled_auto_order` tinyint(1) NOT NULL DEFAULT '0' COMMENT '服务员是否自动接单 0：否；1：是；默认为1',
  `enabled_doggy_bag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持打包外带 0：否；1：是；默认为0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='店铺设置-营业模式表';

-- ----------------------------
-- Records of t_mss_business_model
-- ----------------------------
INSERT INTO `t_mss_business_model` VALUES ('1', '1', '1', '01点00', '04点00', '1', '0');

-- ----------------------------
-- Table structure for t_mss_section
-- ----------------------------
DROP TABLE IF EXISTS `t_mss_section`;
CREATE TABLE `t_mss_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属店铺ID',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '分段类型 1：外卖时段；2：配送距离',
  `distance_start` int(11) NOT NULL DEFAULT '0' COMMENT '距离起',
  `distance_finish` int(11) NOT NULL DEFAULT '0' COMMENT '距离止',
  `delivery_amount` int(11) NOT NULL DEFAULT '0' COMMENT '配送费 元/单',
  `time_start` time DEFAULT NULL COMMENT '时间起 小时分钟',
  `time_finish` time DEFAULT NULL COMMENT '时间止 小时分钟',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='店铺设置-外卖-配送距离分段设置表';

-- ----------------------------
-- Records of t_mss_section
-- ----------------------------
INSERT INTO `t_mss_section` VALUES ('1', '1', '1', '0', '0', '0', '00:02:00', '02:08:00');
INSERT INTO `t_mss_section` VALUES ('2', '1', '1', '0', '0', '0', '01:00:00', '05:06:00');
INSERT INTO `t_mss_section` VALUES ('3', '1', '1', '0', '0', '0', '02:04:00', '03:02:00');
INSERT INTO `t_mss_section` VALUES ('4', '1', '2', '0', '5', '5', null, null);
INSERT INTO `t_mss_section` VALUES ('5', '1', '2', '0', '20', '10', null, null);
INSERT INTO `t_mss_section` VALUES ('6', '1', '2', '0', '30', '15', null, null);

-- ----------------------------
-- Table structure for t_mss_take_out
-- ----------------------------
DROP TABLE IF EXISTS `t_mss_take_out`;
CREATE TABLE `t_mss_take_out` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属店铺ID',
  `phone` varchar(32) NOT NULL DEFAULT '' COMMENT '商家电话',
  `enabled_order` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否接单 0：已打样；1：接单中；默认为0',
  `enabled_auto_order` tinyint(1) NOT NULL DEFAULT '0' COMMENT '自动接单 0：禁用；1：启用；默认为0',
  `initial_delivery_amount` int(11) NOT NULL DEFAULT '0' COMMENT '起送金额 元',
  `full_amount` int(11) NOT NULL DEFAULT '0' COMMENT '满额免配 必填；元',
  `distance` int(11) NOT NULL DEFAULT '0' COMMENT '配送距离 公里',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='店铺设置-外卖表';

-- ----------------------------
-- Records of t_mss_take_out
-- ----------------------------
INSERT INTO `t_mss_take_out` VALUES ('1', '1', '15227132804', '0', '1', '25', '26', '30');

-- ----------------------------
-- Table structure for t_mst_parameters
-- ----------------------------
DROP TABLE IF EXISTS `t_mst_parameters`;
CREATE TABLE `t_mst_parameters` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '类型 如：菜品类型（cplx）;餐饮类型（cylx）',
  `code` varchar(32) NOT NULL DEFAULT '' COMMENT '编码 如：cplx001',
  `value` varchar(32) NOT NULL DEFAULT '' COMMENT '值 如：凉菜',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='系统参数表';

-- ----------------------------
-- Records of t_mst_parameters
-- ----------------------------
INSERT INTO `t_mst_parameters` VALUES ('1', 'ygjs', 'ygjs001', '店长', '1');
INSERT INTO `t_mst_parameters` VALUES ('2', 'ygjs', 'ygjs002', '收银', '1');
INSERT INTO `t_mst_parameters` VALUES ('3', 'ygjs', 'ygjs003', '服务员', '1');
INSERT INTO `t_mst_parameters` VALUES ('4', 'catering', '001', '直营店', '1');
INSERT INTO `t_mst_parameters` VALUES ('5', 'catering', '002', '加盟店', '1');
INSERT INTO `t_mst_parameters` VALUES ('6', 'shop', 'shop001', '中餐', '1');
INSERT INTO `t_mst_parameters` VALUES ('7', 'shop', 'shop002', '自助餐', '1');
INSERT INTO `t_mst_parameters` VALUES ('10', 'cpdw', 'cpdw001', '个', '1');
INSERT INTO `t_mst_parameters` VALUES ('11', 'cpdw', 'codw002', '份', '1');
INSERT INTO `t_mst_parameters` VALUES ('12', 'cplx', 'cplx001', '热食', '1');
INSERT INTO `t_mst_parameters` VALUES ('13', 'cplx', 'cplx002', '冷盘', '1');

-- ----------------------------
-- Table structure for t_mtb_areas
-- ----------------------------
DROP TABLE IF EXISTS `t_mtb_areas`;
CREATE TABLE `t_mtb_areas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `physical_store_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属门店ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '区域名称',
  `sort` int(11) NOT NULL DEFAULT '999' COMMENT '排序 默认为999，最多6位',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='桌台-区域表';

-- ----------------------------
-- Records of t_mtb_areas
-- ----------------------------
INSERT INTO `t_mtb_areas` VALUES ('2', '1', '二楼大厅', '2', '0');
INSERT INTO `t_mtb_areas` VALUES ('3', '1', '包间201', '3', '0');
INSERT INTO `t_mtb_areas` VALUES ('4', '1', '包间202', '4', '0');
INSERT INTO `t_mtb_areas` VALUES ('5', '2', '大厅', '1', '0');
INSERT INTO `t_mtb_areas` VALUES ('6', '2', '包间666', '2', '0');
INSERT INTO `t_mtb_areas` VALUES ('7', '2', '包间888', '34', '0');
INSERT INTO `t_mtb_areas` VALUES ('8', '1', '测试区域', '1', '0');
INSERT INTO `t_mtb_areas` VALUES ('9', '5', '333', '3', '0');
INSERT INTO `t_mtb_areas` VALUES ('10', '1', 'www', '5', '0');
INSERT INTO `t_mtb_areas` VALUES ('11', '1', '断删框架的', '222', '0');

-- ----------------------------
-- Table structure for t_mtb_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `t_mtb_qrcode`;
CREATE TABLE `t_mtb_qrcode` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属桌台ID',
  `short_url` varchar(32) NOT NULL DEFAULT '' COMMENT '短链',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='桌台-二维码表';

-- ----------------------------
-- Records of t_mtb_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for t_mtb_tables
-- ----------------------------
DROP TABLE IF EXISTS `t_mtb_tables`;
CREATE TABLE `t_mtb_tables` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '桌台名称',
  `area_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属区域ID',
  `area_name` varchar(32) NOT NULL DEFAULT '' COMMENT '所属区域名称',
  `seating` int(11) NOT NULL DEFAULT '0' COMMENT '餐位数 标准用餐人数',
  `minimum_amount` int(11) NOT NULL DEFAULT '0' COMMENT '最低消费 订单总金额不低于最低消费金额，低于最低则无法下单',
  `table_amount` int(11) NOT NULL DEFAULT '0' COMMENT '台位费 按桌台收费，开台既收，如：包厢费20元',
  `seat_amount` int(11) NOT NULL DEFAULT '0' COMMENT '餐位费 按照用餐人员收费，如：每人2元',
  `is_special` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否开启特殊桌台',
  `special_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '特殊桌台 1：收款桌台；2：外卖桌台；3：预约桌台',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用 0：禁用；1：启用；默认为0',
  `is_orderdish` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否要必点菜',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态 1： 空闲 2: 已下单 3: 已点菜（未下单） 4：已开台（未点菜） 5：已结账（待清台） ',
  `short_chain` varchar(255) DEFAULT '' COMMENT '短链信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='桌台-桌台表';

-- ----------------------------
-- Records of t_mtb_tables
-- ----------------------------
INSERT INTO `t_mtb_tables` VALUES ('1', '1号桌', '1', '一楼大厅', '4', '20', '10', '2', '0', '0', '1', '0', '1', '');
INSERT INTO `t_mtb_tables` VALUES ('2', '2号桌', '1', '一楼大厅', '4', '20', '10', '2', '0', '0', '1', '0', '1', '');
INSERT INTO `t_mtb_tables` VALUES ('3', '3号桌', '2', '二楼大厅', '4', '20', '10', '2', '0', '0', '0', '1', '1', '222222,111111');
INSERT INTO `t_mtb_tables` VALUES ('4', '4号桌', '1', '一楼大厅', '4', '20', '10', '2', '0', '0', '1', '0', '1', '');
INSERT INTO `t_mtb_tables` VALUES ('5', '5号桌', '1', '一楼大厅', '4', '20', '10', '2', '0', '0', '1', '0', '1', '');
INSERT INTO `t_mtb_tables` VALUES ('6', '6号桌', '1', '一楼大厅', '4', '20', '10', '2', '0', '0', '1', '0', '1', '');
INSERT INTO `t_mtb_tables` VALUES ('7', '', '2', '二楼大厅', '8', '20', '10', '2', '1', '3', '1', '1', '4', '');
INSERT INTO `t_mtb_tables` VALUES ('8', '2号桌', '2', '二楼大厅', '8', '20', '10', '2', '0', '0', '1', '0', '1', '');
INSERT INTO `t_mtb_tables` VALUES ('9', '3号桌', '2', '二楼大厅', '8', '20', '10', '2', '0', '0', '1', '0', '1', '');
INSERT INTO `t_mtb_tables` VALUES ('10', '201', '3', '包间201', '12', '20', '20', '2', '0', '2', '1', '1', '1', '');
INSERT INTO `t_mtb_tables` VALUES ('11', '202', '4', '包间202', '12', '20', '10', '2', '0', '0', '1', '0', '1', '6666');
INSERT INTO `t_mtb_tables` VALUES ('12', '223', '3', '包间201', '20', '20', '2', '2', '0', '0', '1', '1', '1', '');
