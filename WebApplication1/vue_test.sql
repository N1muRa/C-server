/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50559
Source Host           : localhost:3306
Source Database       : vue_test

Target Server Type    : MYSQL
Target Server Version : 50559
File Encoding         : 65001

Date: 2018-02-26 16:56:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_channel`
-- ----------------------------
DROP TABLE IF EXISTS `tb_channel`;
CREATE TABLE `tb_channel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_channel
-- ----------------------------
INSERT INTO `tb_channel` VALUES ('1', 'User');
INSERT INTO `tb_channel` VALUES ('2', 'News');
INSERT INTO `tb_channel` VALUES ('3', 'Home');
INSERT INTO `tb_channel` VALUES ('4', 'E');
INSERT INTO `tb_channel` VALUES ('5', 'F');

-- ----------------------------
-- Table structure for `tb_news`
-- ----------------------------
DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE `tb_news` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `NewsTitle` varchar(100) NOT NULL,
  `NaviContent` varchar(1000) NOT NULL,
  `Content` text NOT NULL,
  `Author` varchar(100) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_news
-- ----------------------------
INSERT INTO `tb_news` VALUES ('1', 'ssss', 'sss是少时诵诗书少时诵诗书是是是是是是是是是是是是是', '是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是谁', '开利财经', '2018-01-29 16:19:16');
INSERT INTO `tb_news` VALUES ('2', 'ss', 'ssssss', 'sssss', '开利财经', '2018-01-29 16:19:20');
INSERT INTO `tb_news` VALUES ('3', '2017年东北三省经济增速均超4%整体回暖 发展新产业', '东北进入经济“回暖季” 2018年吹响新产业发展号角', '本报记者定军 实习生何葳张文卓北京报道2017年，东北三省经济增速均超过4%。“经过不懈努力，全省经济形势在好转，政治生态在净化，营商环境在改善，干部作风在转变。成绩来之不易、弥足珍贵，这是我们加快振兴发展的基础所在、信心所在、希望所在。”1月27日，在辽宁省第十三届人民代表大会第一次会议上，辽宁代省长唐一军在分析该省经���时说。数据显示，2017年，辽宁经济增速为4.2%，大幅高于上一年-2.5%的增速；黑龙江经济增速为6.4%，也比上一年的6.1%要高。不过，吉林2017年经济增速为5%，低于2016年6.9%的经济增速。而在谋划新一年经济增长路线图时，东北三省不约而同选择加快布局新的产业。东北三省的2018年政府工作报告对于大数据、冰雪旅游、健康等产业均有所部署。“东北经济前几年挤水分比较厉害，随着水分挤出，目前经济增速提升是正常的。”吉林大学东北亚研究院教授杨东亮指出，“而在全国经济形势转好的情况下，不出意外，东北未来的经济增速还会比目前要好一些。”东北整体经济回暖2017年，东北三省的经济整体表现良好。其中，辽宁、黑龙江的经济增速分别为4.2%、6.4%，比上一年提高6.7、0.3个百分点。此外，吉林2017年经济增速为5%。21世纪经济报道记者统计全国的数据显示，东北已经摆脱了经济增速全国垫底的窘境。2017年，天津、内蒙古和甘肃的经济增速均在3%-4%之间。', '开利财经', '2018-01-30 13:29:11');

-- ----------------------------
-- Table structure for `tb_sample_data`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sample_data`;
CREATE TABLE `tb_sample_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(20) DEFAULT NULL,
  `open` double(20,0) DEFAULT NULL,
  `close` double(20,0) DEFAULT NULL,
  `lowest` double(20,0) DEFAULT NULL,
  `highest` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sample_data
-- ----------------------------
INSERT INTO `tb_sample_data` VALUES ('16', '2013/1/24', '2320', '2320', '2287', '2363');
INSERT INTO `tb_sample_data` VALUES ('17', '2013/1/25', '2300', '2291', '2288', '2308');
INSERT INTO `tb_sample_data` VALUES ('18', '2013/1/28', '2295', '2346', '2295', '2347');
INSERT INTO `tb_sample_data` VALUES ('19', '2013/1/29', '2347', '2359', '2337', '2364');
INSERT INTO `tb_sample_data` VALUES ('20', '2013/1/30', '2361', '2382', '2348', '2384');
INSERT INTO `tb_sample_data` VALUES ('21', '2013/1/31', '2383', '2385', '2371', '2392');
INSERT INTO `tb_sample_data` VALUES ('22', '2013/2/1', '2377', '2419', '2370', '2421');
INSERT INTO `tb_sample_data` VALUES ('23', '2013/2/4', '2426', '2428', '2418', '2440');
INSERT INTO `tb_sample_data` VALUES ('24', '2013/2/5', '2411', '2433', '2403', '2437');
INSERT INTO `tb_sample_data` VALUES ('25', '2013/2/6', '2433', '2434', '2428', '2442');
INSERT INTO `tb_sample_data` VALUES ('26', '2013/2/7', '2431', '2419', '2394', '2434');
INSERT INTO `tb_sample_data` VALUES ('27', '2013/2/8', '2417', '2432', '2414', '2443');
INSERT INTO `tb_sample_data` VALUES ('28', '2013/2/18', '2442', '2422', '2415', '2445');
INSERT INTO `tb_sample_data` VALUES ('29', '2013/2/19', '2420', '2383', '2374', '2427');
INSERT INTO `tb_sample_data` VALUES ('30', '2013/2/20', '2383', '2397', '2371', '2398');
INSERT INTO `tb_sample_data` VALUES ('31', '2013/2/21', '2379', '2326', '2309', '2379');
INSERT INTO `tb_sample_data` VALUES ('32', '2013/2/22', '2323', '2314', '2309', '2331');
INSERT INTO `tb_sample_data` VALUES ('33', '2013/2/25', '2321', '2326', '2315', '2339');
INSERT INTO `tb_sample_data` VALUES ('34', '2013/2/26', '2314', '2293', '2290', '2341');
INSERT INTO `tb_sample_data` VALUES ('35', '2013/2/27', '2298', '2313', '2292', '2325');
INSERT INTO `tb_sample_data` VALUES ('36', '2013/2/28', '2322', '2366', '2309', '2366');
INSERT INTO `tb_sample_data` VALUES ('37', '2013/3/1', '2365', '2360', '2331', '2370');
INSERT INTO `tb_sample_data` VALUES ('38', '2013/3/4', '2332', '2273', '2259', '2334');
INSERT INTO `tb_sample_data` VALUES ('39', '2013/3/5', '2275', '2326', '2270', '2328');
INSERT INTO `tb_sample_data` VALUES ('40', '2013/3/6', '2334', '2347', '2322', '2351');
INSERT INTO `tb_sample_data` VALUES ('41', '2013/3/7', '2340', '2324', '2304', '2352');
INSERT INTO `tb_sample_data` VALUES ('42', '2013/3/8', '2326', '2319', '2315', '2334');
INSERT INTO `tb_sample_data` VALUES ('43', '2013/3/11', '2315', '2311', '2297', '2321');
INSERT INTO `tb_sample_data` VALUES ('44', '2013/3/12', '2309', '2287', '2265', '2333');
INSERT INTO `tb_sample_data` VALUES ('45', '2013/3/13', '2282', '2264', '2253', '2286');
INSERT INTO `tb_sample_data` VALUES ('46', '2013/3/14', '2256', '2270', '2253', '2276');
INSERT INTO `tb_sample_data` VALUES ('47', '2013/3/15', '2269', '2278', '2250', '2312');
INSERT INTO `tb_sample_data` VALUES ('48', '2013/3/18', '2267', '2240', '2239', '2276');
INSERT INTO `tb_sample_data` VALUES ('49', '2013/3/19', '2244', '2257', '2232', '2261');
INSERT INTO `tb_sample_data` VALUES ('50', '2013/3/20', '2258', '2317', '2257', '2318');
INSERT INTO `tb_sample_data` VALUES ('51', '2013/3/21', '2318', '2324', '2312', '2331');
INSERT INTO `tb_sample_data` VALUES ('52', '2013/3/22', '2321', '2328', '2315', '2332');
INSERT INTO `tb_sample_data` VALUES ('53', '2013/3/25', '2335', '2327', '2320', '2345');
INSERT INTO `tb_sample_data` VALUES ('54', '2013/3/26', '2319', '2298', '2281', '2320');
INSERT INTO `tb_sample_data` VALUES ('55', '2013/3/27', '2299', '2301', '2289', '2323');
INSERT INTO `tb_sample_data` VALUES ('56', '2013/3/28', '2274', '2236', '2233', '2274');
INSERT INTO `tb_sample_data` VALUES ('57', '2013/3/29', '2238', '2237', '2229', '2247');
INSERT INTO `tb_sample_data` VALUES ('58', '2013/4/1', '2229', '2234', '2227', '2244');
INSERT INTO `tb_sample_data` VALUES ('59', '2013/4/2', '2235', '2228', '2220', '2253');
INSERT INTO `tb_sample_data` VALUES ('60', '2013/4/3', '2233', '2225', '2217', '2241');
INSERT INTO `tb_sample_data` VALUES ('61', '2013/4/8', '2196', '2212', '2181', '2213');
INSERT INTO `tb_sample_data` VALUES ('62', '2013/4/9', '2215', '2226', '2215', '2235');
INSERT INTO `tb_sample_data` VALUES ('63', '2013/4/10', '2225', '2226', '2213', '2233');
INSERT INTO `tb_sample_data` VALUES ('64', '2013/4/11', '2237', '2220', '2217', '2242');
INSERT INTO `tb_sample_data` VALUES ('65', '2013/4/12', '2218', '2207', '2204', '2226');
INSERT INTO `tb_sample_data` VALUES ('66', '2013/4/15', '2200', '2182', '2177', '2205');
INSERT INTO `tb_sample_data` VALUES ('67', '2013/4/16', '2170', '2195', '2166', '2196');
INSERT INTO `tb_sample_data` VALUES ('68', '2013/4/17', '2195', '2194', '2178', '2198');
INSERT INTO `tb_sample_data` VALUES ('69', '2013/4/18', '2182', '2198', '2175', '2206');
INSERT INTO `tb_sample_data` VALUES ('70', '2013/4/19', '2201', '2245', '2201', '2250');
INSERT INTO `tb_sample_data` VALUES ('71', '2013/4/22', '2236', '2242', '2232', '2245');
INSERT INTO `tb_sample_data` VALUES ('72', '2013/4/23', '2243', '2185', '2183', '2243');
INSERT INTO `tb_sample_data` VALUES ('73', '2013/4/24', '2187', '2218', '2184', '2226');
INSERT INTO `tb_sample_data` VALUES ('74', '2013/4/25', '2213', '2199', '2192', '2225');
INSERT INTO `tb_sample_data` VALUES ('75', '2013/4/26', '2204', '2178', '2174', '2211');
INSERT INTO `tb_sample_data` VALUES ('76', '2013/5/2', '2171', '2174', '2161', '2180');
INSERT INTO `tb_sample_data` VALUES ('77', '2013/5/3', '2179', '2205', '2179', '2223');
INSERT INTO `tb_sample_data` VALUES ('78', '2013/5/6', '2212', '2231', '2212', '2236');
INSERT INTO `tb_sample_data` VALUES ('79', '2013/5/7', '2228', '2236', '2219', '2240');
INSERT INTO `tb_sample_data` VALUES ('80', '2013/5/8', '2242', '2246', '2235', '2255');
INSERT INTO `tb_sample_data` VALUES ('81', '2013/5/9', '2247', '2233', '2221', '2248');
INSERT INTO `tb_sample_data` VALUES ('82', '2013/5/10', '2229', '2247', '2226', '2248');
INSERT INTO `tb_sample_data` VALUES ('83', '2013/5/13', '2248', '2242', '2231', '2251');
INSERT INTO `tb_sample_data` VALUES ('84', '2013/5/14', '2239', '2217', '2206', '2240');
INSERT INTO `tb_sample_data` VALUES ('85', '2013/5/15', '2217', '2225', '2214', '2225');
INSERT INTO `tb_sample_data` VALUES ('86', '2013/5/16', '2221', '2252', '2211', '2253');
INSERT INTO `tb_sample_data` VALUES ('87', '2013/5/17', '2250', '2283', '2248', '2288');
INSERT INTO `tb_sample_data` VALUES ('88', '2013/5/20', '2286', '2300', '2282', '2309');
INSERT INTO `tb_sample_data` VALUES ('89', '2013/5/21', '2297', '2305', '2290', '2305');
INSERT INTO `tb_sample_data` VALUES ('90', '2013/5/22', '2304', '2302', '2292', '2314');
INSERT INTO `tb_sample_data` VALUES ('91', '2013/5/23', '2294', '2276', '2274', '2305');
INSERT INTO `tb_sample_data` VALUES ('92', '2013/5/24', '2281', '2289', '2270', '2293');
INSERT INTO `tb_sample_data` VALUES ('93', '2013/5/27', '2287', '2293', '2284', '2302');
INSERT INTO `tb_sample_data` VALUES ('94', '2013/5/28', '2293', '2321', '2281', '2322');
INSERT INTO `tb_sample_data` VALUES ('95', '2013/5/29', '2324', '2324', '2321', '2334');
INSERT INTO `tb_sample_data` VALUES ('96', '2013/5/30', '2316', '2318', '2310', '2326');
INSERT INTO `tb_sample_data` VALUES ('97', '2013/5/31', '2321', '2301', '2299', '2326');
INSERT INTO `tb_sample_data` VALUES ('98', '2013/6/3', '2300', '2299', '2294', '2313');
INSERT INTO `tb_sample_data` VALUES ('99', '2013/6/4', '2297', '2272', '2265', '2297');
INSERT INTO `tb_sample_data` VALUES ('100', '2013/6/5', '2271', '2271', '2261', '2277');
INSERT INTO `tb_sample_data` VALUES ('101', '2013/6/6', '2264', '2242', '2240', '2267');
INSERT INTO `tb_sample_data` VALUES ('102', '2013/6/7', '2242', '2211', '2205', '2251');
INSERT INTO `tb_sample_data` VALUES ('103', '2013/6/13', '2190', '2148', '2126', '2190');

-- ----------------------------
-- Table structure for `tb_sample_macrodata`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sample_macrodata`;
CREATE TABLE `tb_sample_macrodata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `indexCode` varchar(20) DEFAULT NULL,
  `indexName` varchar(20) DEFAULT NULL,
  `tradeName` varchar(20) DEFAULT NULL,
  `informationSource` varchar(20) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `indexData` double DEFAULT NULL,
  `frequency` varchar(20) DEFAULT NULL,
  `relaseDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sample_macrodata
-- ----------------------------
INSERT INTO `tb_sample_macrodata` VALUES ('1', 'AGP0000001\r\n', '鸡蛋', '农产品', '国家统计局', '元/斤', '5.32', '日', '2018-01-30');
INSERT INTO `tb_sample_macrodata` VALUES ('2', 'AGP0000001\r\n', '鸡蛋', '农产品', '国家统计局', '元/斤', '5.33', '日', '2018-01-26');
INSERT INTO `tb_sample_macrodata` VALUES ('3', 'AGP0000001\r\n', '鸡蛋', '农产品', '国家统计局', '元/斤', '5.35', '日', '2018-01-24');
INSERT INTO `tb_sample_macrodata` VALUES ('4', 'AGP0000001\r\n', '鸡蛋', '农产品', '国家统计局', '元/斤', '5.38', '日', '2018-01-22');
INSERT INTO `tb_sample_macrodata` VALUES ('5', 'AGP0000001\r\n', '鸡蛋', '农产品', '国家统计局', '元/斤', '5.37', '日', '2018-01-18');
INSERT INTO `tb_sample_macrodata` VALUES ('6', 'AGP0000002', '猪肉', '农产品', '国家统计局', '元/斤', '16.2', '日', '2018-01-30');
INSERT INTO `tb_sample_macrodata` VALUES ('7', 'CHI0000001', '钛白粉', '化工', '国家统计局', '元/吨', '17038.89', '日', '2018-02-01');
INSERT INTO `tb_sample_macrodata` VALUES ('8', 'CHI0000002', '碳酸锂', '化工', '国家统计局', '元/吨', '155000', '日', '2018-02-01');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `column1` varchar(20) DEFAULT NULL,
  `column2` varchar(20) DEFAULT NULL,
  `column3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'aaa', '111', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('2', 'sss', '111', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('3', 'hello', '12', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('4', 'sss', '1111', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('5', 'N1muRa', '123', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('6', 'hello', '21', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('7', 'hello', '21', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('8', 'hello', '21', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('9', 'hello', '21', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('17', '111', '111', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('18', 'sss', '12', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('19', 'sss', '12', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('22', 'aaa', '11', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('23', '是是是是', '12', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('24', '事实上', '12', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('26', 'aaa', '12', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('27', '啊啊啊', '123', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('28', '啦啦啦', '165', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('29', '啦啦啦GG', '165', 'test1', 'test2', 'test3');
INSERT INTO `user` VALUES ('30', '是是是', '111', 'test1', 'test2', 'test3');
