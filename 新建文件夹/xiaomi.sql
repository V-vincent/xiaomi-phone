/*
Navicat MySQL Data Transfer

Source Server         : xiaomi
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : xiaomi

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-12-17 21:49:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_thumb` varchar(255) DEFAULT NULL,
  `goods_spec` varchar(255) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('4', '3', '2', 's3hsvr334ec073ria18betp183', '4', '1999', '小米6X', '1', '', '1513308280');
INSERT INTO `cart` VALUES ('3', '3', '1', 'j9s9r06gqg049nc7jgijm173i6', '3', '1399', '小米5X', '1', '', '1513306424');

-- ----------------------------
-- Table structure for category_floor
-- ----------------------------
DROP TABLE IF EXISTS `category_floor`;
CREATE TABLE `category_floor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_floor
-- ----------------------------
INSERT INTO `category_floor` VALUES ('1', '家电', '0');
INSERT INTO `category_floor` VALUES ('2', '智能', '0');
INSERT INTO `category_floor` VALUES ('3', '搭配', '0');
INSERT INTO `category_floor` VALUES ('4', '配件', '0');
INSERT INTO `category_floor` VALUES ('5', '周边', '0');
INSERT INTO `category_floor` VALUES ('6', '\r\n热门', '1');
INSERT INTO `category_floor` VALUES ('7', '电视影音 ', '1');
INSERT INTO `category_floor` VALUES ('8', '电脑', '1');
INSERT INTO `category_floor` VALUES ('9', '家居', '1');
INSERT INTO `category_floor` VALUES ('10', '热门', '2');
INSERT INTO `category_floor` VALUES ('11', '出行', '2');
INSERT INTO `category_floor` VALUES ('12', '健康', '2');
INSERT INTO `category_floor` VALUES ('13', '酷玩', '2');
INSERT INTO `category_floor` VALUES ('14', '路由器', '2');
INSERT INTO `category_floor` VALUES ('15', '热门', '3');
INSERT INTO `category_floor` VALUES ('16', '耳机音箱', '3');
INSERT INTO `category_floor` VALUES ('17', '电源', '3');
INSERT INTO `category_floor` VALUES ('18', '电池存储卡', '3');
INSERT INTO `category_floor` VALUES ('19', '热门', '4');
INSERT INTO `category_floor` VALUES ('20', '保护套', '4');
INSERT INTO `category_floor` VALUES ('21', '贴膜', '4');
INSERT INTO `category_floor` VALUES ('22', '其他配件', '4');
INSERT INTO `category_floor` VALUES ('23', '热门', '5');
INSERT INTO `category_floor` VALUES ('24', '服装', '5');
INSERT INTO `category_floor` VALUES ('25', '居家', '5');
INSERT INTO `category_floor` VALUES ('26', '生活周边', '5');
INSERT INTO `category_floor` VALUES ('27', '箱包', '5');

-- ----------------------------
-- Table structure for category_left
-- ----------------------------
DROP TABLE IF EXISTS `category_left`;
CREATE TABLE `category_left` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) DEFAULT '0' COMMENT '0:一级分类；>0:二级分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_left
-- ----------------------------
INSERT INTO `category_left` VALUES ('1', '手机 电话卡');
INSERT INTO `category_left` VALUES ('2', '笔记本');
INSERT INTO `category_left` VALUES ('3', '电视 盒子');
INSERT INTO `category_left` VALUES ('4', '路由器 智能硬件');
INSERT INTO `category_left` VALUES ('5', '移动电源 电池 插线板');
INSERT INTO `category_left` VALUES ('6', '耳机 音箱');
INSERT INTO `category_left` VALUES ('7', '保护套 贴膜');
INSERT INTO `category_left` VALUES ('8', '线材 支架 存储卡');
INSERT INTO `category_left` VALUES ('9', '箱包 服饰 鞋 眼镜');
INSERT INTO `category_left` VALUES ('10', '米兔 生活周边');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `u_img` varchar(255) DEFAULT NULL,
  `img_1` varchar(255) DEFAULT NULL,
  `img_2` varchar(255) DEFAULT NULL,
  `img_3` varchar(255) DEFAULT NULL,
  `u_name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', 'http://cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/f790b51a76afd7b41522048fa779d69d.jpg', '//i1.mifile.cn/a2/1512885910_6399133_s780_1052wh.jpg', '//i1.mifile.cn/a2/1512885912_8301754_s780_1052wh.jpg', null, '975323082', '2017-12-10 14:48:22', '宝贝收到了，我老婆超喜欢。素闻客服美女才华横艺，\r\n				请为我首做诗吧，周刚爱陈丽婷一生一世！！！', '周诰美和平，刚亦慕寥廓。爱此不能行，陈草始知名。丽汉金波满，\r\n						婷婷花下人。一百二十日，生见太平时。一百杖头钱，世论高二贤。小女才疏学浅，还请多多赐教，感谢您\r\n						对小米的支持。');
INSERT INTO `comment` VALUES ('2', '1', '//s1.mi-img.com/mfsv2/avatar/s010/p01fABtPYMog/DkrTNkRWGZqcnJ_90.jpg', '//i1.mifile.cn/a2/1512707881_7996274_s1008_754wh.jpg', '//i1.mifile.cn/a2/1512707882_2420506_s1008_754wh.jpg', null, '我来了', '2017-12-08 14:49:57', '很喜欢，大爱啊！客服妹子来首诗', '大辨言甚徐，爱尔持照书，小臣持献寿，米尽坼花钿，\r\n六尺岁寒姿。小女才疏学浅，不知这首藏头诗是否合您心意。感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('3', '1', '//s1.mi-img.com/mfsv2/avatar/fdsc3/p01QLj1m9U6Z/F08hsfFoFLwZTL_90.jpg', '//i1.mifile.cn/a2/1512733787_4582476_s1008_754wh.jpg', '//i1.mifile.cn/a2/1512733788_3024572_s1008_754wh.jpg', '//i1.mifile.cn/a2/1512733789_7351121_s1008_754wh.jpg', 'Demon', '2017-12-08 14:51:56', '骚蓝我喜欢，呵呵！我们的征途是星辰大海！', '我们的征途是星辰大海；我们的路程是碧城盛世；我们的期待是\r\n						红日当空；我们的守护是梦想起航；我们的心灵是初心稳固；我们的终点是橙海猖狂，感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('4', '1', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/f790b51a76afd7b41522048fa779d69d.jpg', '//i1.mifile.cn/a2/1512973609_1462104_s864_1152wh.jpg', null, null, 'Smile&帅', '2017-12-11 14:53:22', '手感很好，听说客服妹子会藏头诗，不知能不能给我的新公司来一首，\r\n				（银硕物业）新手机，新公司感谢！', '嗯~~“银床一半空，硕学郑司农。物候来相续，业大承宗祖。”\r\n						祝事业齐日高进，并月飞升啊~感谢您对小米的支持~');
INSERT INTO `comment` VALUES ('5', '1', '//s1.mi-img.com/mfsv2/avatar/fdsc3/p01iuDCvdlu2/pFWbNwnnRLH7IL_90.jpg', '//i1.mifile.cn/a2/1512536433_2529771_s1008_754wh.jpg', '//i1.mifile.cn/a2/1512536436_9724078_s1008_754wh.jpg', '//i1.mifile.cn/a2/1512536441_3532258_s1920_1080wh.jpg', '小u多多', '2017-12-06 14:54:47', '小米性价比是最高的，支持小米，吃鸡吃鸡吃鸡', '别以为你是个米粉，我就不敢回复你！\r\n						我不仅要回复你，还要表扬你！怕不怕，哼~感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('6', '1', '//s1.mi-img.com/mfsv2/avatar/fdsc3/p01LmEIltkrv/0wTXeGEI7FXNRg_90.jpg', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/5424ba0dfca9d7578571d3d5cfacf389.webp', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/0da923d1738ccc4ae61f2c64a12993dc.webp', null, '百合', '2017-12-09 14:57:00', '不知道买了几个小米手机了，小米家的终极粉丝啊', '借您漂亮的照片，召唤米家究极单身大佬。感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('7', '1', '//s1.mi-img.com/mfsv2/avatar/s010/p01LCuuA3Ll5/Nrz4cIH0bfLgfn_90.jpg', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/c0f902b540f40ce5bf06f90be65eb13c.webp', null, null, '为梦想而生', '2017-12-01 14:58:17', '漂亮！！快递特别的快！不到20个小时就到手了。牛', '我住长江头,君住长江尾。日日思君不见君,共饮长江水。吾为减少君思念，日日催快递小哥的腿。嫔妾哪怕磨破了嘴，也要让君用的美。只愿君心似我心,我米定不负相思意~感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('8', '1', '//s1.mi-img.com/mfsv2/avatar/s010/p01RtiF1OeOh/ZTFGjCAo8QwrGp_90.jpg', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/65fc35c4f9404c5a855f3d267391da16.webp', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/a6f04818da4860bb4a3f883d40e3abff.webp', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/4c84de51393e31aa6defa99f16b49908.webp', '佛光普照', '2017-12-02 14:59:39', '小米忠实粉丝，从小米4开始一直喜欢。高配置性价比最高的手机。小米加油！', '假如我来世上一遭，只为与你相聚一次，只为了亿万光年里的那一刹那，一刹那里所有的甜蜜与悲凄。那麽就让一切该发生的，都在瞬间出现吧。我俯首感谢所有星球的相助，让我与你相遇，与你别离，完成了上帝所作的一首诗，然後再缓缓地老去。感谢您对小米的支持~by最近在写剧本的谜一样的客服妹纸。');
INSERT INTO `comment` VALUES ('9', '1', '//s1.mi-img.com/mfsv2/avatar/fdsc3/p01IJF21Cc1j/OaLZ6NSF3dNTAi_90.jpg', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/fe3aba71d5eeca36bcd742a4ed082825.webp', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/7bbaa6d8b90925ae7ada33b22a35f6c9.webp', null, '迈克尔·苏科菲尔德', '2017-12-14 15:02:08', '巧目盼兮终于到货了 形体优美 宛转流光 肤若凝脂 如丝般顺滑  双摄有神 内核强大 手中把玩爱不释手 掌中舞罢萧声绝 手机唯爱小米君', '你的美丽吸引着我，你的欢笑像雨后的甘露那样清甜，我是清醒的，因为我知道，汉子真的爱你。感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('10', '1', '//s1.mi-img.com/mfsv2/avatar/fdsc3/p01mEY6YjXGj/TRVyaQ9NWXFqN6_90.jpg', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/861ce5ebad3f41ce07a51348b7159482.webp', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/12be5806bf6b96c17c38c76593e58f7c.webp', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/5965d95f86d9654aca44ec6c8ffded2b.webp', 'Style楚河', '2017-12-10 15:03:54', '蓝色真好看，客服姐姐可不可以为我这个高三党作一首诗', '真正的寒窗，催生着真正的希望。对豪气干云的年轻学子而言，十年寒窗，十年磨剑，这是每一个有志青年必经的考验，真正的英豪往往用自己的一腔热血将彻骨的寒冷洞穿！祝愿每位莘莘学子实现自己的人生梦想！感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('11', '1', 'http://cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/f790b51a76afd7b41522048fa779d69d.jpg', '//i1.mifile.cn/a2/1512885910_6399133_s780_1052wh.jpg', '//i1.mifile.cn/a2/1512885912_8301754_s780_1052wh.jpg', '', '975323082', '2017-12-10 14:48:22', '宝贝收到了，我老婆超喜欢。素闻客服美女才华横艺，\r\n				请为我首做诗吧，周刚爱陈丽婷一生一世！！！', '周诰美和平，刚亦慕寥廓。爱此不能行，陈草始知名。丽汉金波满，\r\n						婷婷花下人。一百二十日，生见太平时。一百杖头钱，世论高二贤。小女才疏学浅，还请多多赐教，感谢您\r\n						对小米的支持。');
INSERT INTO `comment` VALUES ('12', '1', '//s1.mi-img.com/mfsv2/avatar/s010/p01fABtPYMog/DkrTNkRWGZqcnJ_90.jpg', '//i1.mifile.cn/a2/1512707881_7996274_s1008_754wh.jpg', '//i1.mifile.cn/a2/1512707882_2420506_s1008_754wh.jpg', '', '我来了', '2017-12-08 14:49:57', '很喜欢，大爱啊！客服妹子来首诗', '大辨言甚徐，爱尔持照书，小臣持献寿，米尽坼花钿，\r\n六尺岁寒姿。小女才疏学浅，不知这首藏头诗是否合您心意。感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('13', '1', '//s1.mi-img.com/mfsv2/avatar/fdsc3/p01QLj1m9U6Z/F08hsfFoFLwZTL_90.jpg', '//i1.mifile.cn/a2/1512733787_4582476_s1008_754wh.jpg', '//i1.mifile.cn/a2/1512733788_3024572_s1008_754wh.jpg', '//i1.mifile.cn/a2/1512733789_7351121_s1008_754wh.jpg', 'Demon', '2017-12-08 14:51:56', '骚蓝我喜欢，呵呵！我们的征途是星辰大海！', '我们的征途是星辰大海；我们的路程是碧城盛世；我们的期待是\r\n						红日当空；我们的守护是梦想起航；我们的心灵是初心稳固；我们的终点是橙海猖狂，感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('14', '1', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/f790b51a76afd7b41522048fa779d69d.jpg', '//i1.mifile.cn/a2/1512973609_1462104_s864_1152wh.jpg', '', '', 'Smile&帅', '2017-12-11 14:53:22', '手感很好，听说客服妹子会藏头诗，不知能不能给我的新公司来一首，\r\n				（银硕物业）新手机，新公司感谢！', '嗯~~“银床一半空，硕学郑司农。物候来相续，业大承宗祖。”\r\n						祝事业齐日高进，并月飞升啊~感谢您对小米的支持~');
INSERT INTO `comment` VALUES ('15', '1', '//s1.mi-img.com/mfsv2/avatar/fdsc3/p01iuDCvdlu2/pFWbNwnnRLH7IL_90.jpg', '//i1.mifile.cn/a2/1512536433_2529771_s1008_754wh.jpg', '//i1.mifile.cn/a2/1512536436_9724078_s1008_754wh.jpg', '//i1.mifile.cn/a2/1512536441_3532258_s1920_1080wh.jpg', '小u多多', '2017-12-06 14:54:47', '小米性价比是最高的，支持小米，吃鸡吃鸡吃鸡', '别以为你是个米粉，我就不敢回复你！\r\n						我不仅要回复你，还要表扬你！怕不怕，哼~感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('16', '1', '//s1.mi-img.com/mfsv2/avatar/fdsc3/p01LmEIltkrv/0wTXeGEI7FXNRg_90.jpg', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/5424ba0dfca9d7578571d3d5cfacf389.webp', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/0da923d1738ccc4ae61f2c64a12993dc.webp', '', '百合', '2017-12-09 14:57:00', '不知道买了几个小米手机了，小米家的终极粉丝啊', '借您漂亮的照片，召唤米家究极单身大佬。感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('17', '1', '//s1.mi-img.com/mfsv2/avatar/s010/p01LCuuA3Ll5/Nrz4cIH0bfLgfn_90.jpg', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/c0f902b540f40ce5bf06f90be65eb13c.webp', '', '', '为梦想而生', '2017-12-01 14:58:17', '漂亮！！快递特别的快！不到20个小时就到手了。牛', '我住长江头,君住长江尾。日日思君不见君,共饮长江水。吾为减少君思念，日日催快递小哥的腿。嫔妾哪怕磨破了嘴，也要让君用的美。只愿君心似我心,我米定不负相思意~感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('18', '1', '//s1.mi-img.com/mfsv2/avatar/s010/p01RtiF1OeOh/ZTFGjCAo8QwrGp_90.jpg', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/65fc35c4f9404c5a855f3d267391da16.webp', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/a6f04818da4860bb4a3f883d40e3abff.webp', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/4c84de51393e31aa6defa99f16b49908.webp', '佛光普照', '2017-12-02 14:59:39', '小米忠实粉丝，从小米4开始一直喜欢。高配置性价比最高的手机。小米加油！', '假如我来世上一遭，只为与你相聚一次，只为了亿万光年里的那一刹那，一刹那里所有的甜蜜与悲凄。那麽就让一切该发生的，都在瞬间出现吧。我俯首感谢所有星球的相助，让我与你相遇，与你别离，完成了上帝所作的一首诗，然後再缓缓地老去。感谢您对小米的支持~by最近在写剧本的谜一样的客服妹纸。');
INSERT INTO `comment` VALUES ('19', '1', '//s1.mi-img.com/mfsv2/avatar/fdsc3/p01IJF21Cc1j/OaLZ6NSF3dNTAi_90.jpg', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/fe3aba71d5eeca36bcd742a4ed082825.webp', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/7bbaa6d8b90925ae7ada33b22a35f6c9.webp', '', '迈克尔·苏科菲尔德', '2017-12-14 15:02:08', '巧目盼兮终于到货了 形体优美 宛转流光 肤若凝脂 如丝般顺滑  双摄有神 内核强大 手中把玩爱不释手 掌中舞罢萧声绝 手机唯爱小米君', '你的美丽吸引着我，你的欢笑像雨后的甘露那样清甜，我是清醒的，因为我知道，汉子真的爱你。感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('20', '1', '//s1.mi-img.com/mfsv2/avatar/fdsc3/p01mEY6YjXGj/TRVyaQ9NWXFqN6_90.jpg', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/861ce5ebad3f41ce07a51348b7159482.webp', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/12be5806bf6b96c17c38c76593e58f7c.webp', '//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/5965d95f86d9654aca44ec6c8ffded2b.webp', 'Style楚河', '2017-12-10 15:03:54', '蓝色真好看，客服姐姐可不可以为我这个高三党作一首诗', '真正的寒窗，催生着真正的希望。对豪气干云的年轻学子而言，十年寒窗，十年磨剑，这是每一个有志青年必经的考验，真正的英豪往往用自己的一腔热血将彻骨的寒冷洞穿！祝愿每位莘莘学子实现自己的人生梦想！感谢您对小米的支持。');
INSERT INTO `comment` VALUES ('21', '1', null, null, null, null, '123', null, 'dsdf54513', null);
INSERT INTO `comment` VALUES ('22', '1', null, null, null, null, '123', null, 'adasdff', null);

-- ----------------------------
-- Table structure for goods_color
-- ----------------------------
DROP TABLE IF EXISTS `goods_color`;
CREATE TABLE `goods_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `color_name` varchar(255) DEFAULT NULL,
  `version_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_color
-- ----------------------------
INSERT INTO `goods_color` VALUES ('1', 'red', '红色特别版', '1');
INSERT INTO `goods_color` VALUES ('2', 'jin', '金色', '1');
INSERT INTO `goods_color` VALUES ('3', 'black', '黑色', '1');
INSERT INTO `goods_color` VALUES ('4', 'meiguijin', '玫瑰金', '2');
INSERT INTO `goods_color` VALUES ('5', 'red', '红色特别版', '2');
INSERT INTO `goods_color` VALUES ('6', 'red', '红色', '3');
INSERT INTO `goods_color` VALUES ('7', 'black', '黑色', '4');

-- ----------------------------
-- Table structure for goods_floor
-- ----------------------------
DROP TABLE IF EXISTS `goods_floor`;
CREATE TABLE `goods_floor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `price_now` varchar(255) DEFAULT NULL,
  `price_before` varchar(255) DEFAULT NULL,
  `goods_thumb` varchar(255) DEFAULT NULL,
  `cate_id_1` int(11) DEFAULT NULL,
  `cate_id_2` int(11) DEFAULT NULL,
  `comment_num` varchar(255) DEFAULT NULL,
  `goods_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_floor
-- ----------------------------
INSERT INTO `goods_floor` VALUES ('1', '小米电视4A 32\"', '999', '1199', 'https://i1.mifile.cn/a1/pms_1500287084.72131750!220x220.jpg', '1', '6', '', '64位四核处理器／1GB+4GB大内存');
INSERT INTO `goods_floor` VALUES ('2', '小米电视4A 49英寸 标准版', '2399', null, 'https://i1.mifile.cn/a1/pms_1503909218.70932288!220x220.png', '1', '6', null, '2GB+8GB 大储存／全高清HDR');
INSERT INTO `goods_floor` VALUES ('3', '小米电视4A 55\" 标准版', '2899', '2999', 'https://i1.mifile.cn/a1/pms_1503909300.25797209!220x220.png', '1', '7', null, '4K高清HDR / 真四核64位高性能处理器');
INSERT INTO `goods_floor` VALUES ('4', '小米电视4 55英寸', '4499', null, 'https://i1.mifile.cn/a1/pms_1495074010.05677255!220x220.jpg', '1', '7', null, '4.9mm极超薄机身／4K高清HDR');
INSERT INTO `goods_floor` VALUES ('5', '小米AI音箱', '299', null, 'https://i1.mifile.cn/a1/pms_1501057018.70015369!220x220.jpg', '2', '10', null, null);
INSERT INTO `goods_floor` VALUES ('6', '小米米家电动滑板车', '1999', null, 'https://i1.mifile.cn/a1/pms_1488272686.62666302!220x220.jpg', '2', '11', null, '极简几何设计，1 分钟轻松上手');
INSERT INTO `goods_floor` VALUES ('7', 'iHealth智能血压计（蓝牙版）', '169', '199', 'https://i1.mifile.cn/a4/T1oVx_BjCv1RXrhCrK.jpg', '2', '12', null, '送给父母的健康礼物');
INSERT INTO `goods_floor` VALUES ('8', '小米AI音箱', '299', null, 'https://i1.mifile.cn/a1/pms_1501057018.70015369.jpg?width=150&height=150', '3', '15', '8143人评价', null);
INSERT INTO `goods_floor` VALUES ('9', '小米移动电源10000mAh高配版', '149', null, 'https://i1.mifile.cn/a1/pms_1481269289.59498154.jpg?width=150&height=150', '3', '15', '1.5万人评价', null);
INSERT INTO `goods_floor` VALUES ('10', '小米6 硅胶保护套', '49', null, 'https://i1.mifile.cn/a1/pms_1493261828.23444007.jpg?width=150&height=150', '4', '19', '7779人评价', null);
INSERT INTO `goods_floor` VALUES ('11', '90分轻商务登机箱 米家定制', '379', '399', 'https://i1.mifile.cn/a1/pms_1508833215.15582511!220x220.jpg', '5', '23', '57人评价', null);

-- ----------------------------
-- Table structure for goods_left
-- ----------------------------
DROP TABLE IF EXISTS `goods_left`;
CREATE TABLE `goods_left` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` varchar(255) DEFAULT NULL,
  `goods_thumb` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_left
-- ----------------------------
INSERT INTO `goods_left` VALUES ('1', '小米5X', '1399', 'https://i1.mifile.cn/f/i/g/2015/80pc-5x.png?width=80&height=80', '1');
INSERT INTO `goods_left` VALUES ('2', '小米Note 3', '1299', 'https://i1.mifile.cn/f/i/g/2015/cn-index/note3-80-2.png?width=80&height=80', '1');
INSERT INTO `goods_left` VALUES ('3', '小米MIX 2', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/mix2-80.png?width=80&height=80', '1');
INSERT INTO `goods_left` VALUES ('4', '小米6 ', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/xm6_80.png?width=80&height=80', '1');
INSERT INTO `goods_left` VALUES ('5', '小米Max 2', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/max2_80.jpg?width=80&height=80', '1');
INSERT INTO `goods_left` VALUES ('6', '小米笔记本Air 12.5\"', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/bijiben80.jpg?width=80&height=80', '2');
INSERT INTO `goods_left` VALUES ('7', '笔记本Air 13.3\" 独显', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/bijiben80.jpg?width=80&height=80', '2');
INSERT INTO `goods_left` VALUES ('8', '笔记本Air 13.3\" 集显', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/bijiben80.jpg?width=80&height=80', '2');
INSERT INTO `goods_left` VALUES ('9', '笔记本Pro 15.6\"', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/WechatIMG605.png?width=80&height=80', '2');
INSERT INTO `goods_left` VALUES ('10', 'USB-C电源适配器', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/bjbcdq80.jpg?width=80&height=80', '2');
INSERT INTO `goods_left` VALUES ('11', '小米电视4C 43英寸', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/xin55.png?width=80&height=80', '3');
INSERT INTO `goods_left` VALUES ('12', '小米电视4C 55英寸', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/xin43.png?width=80&height=80', '3');
INSERT INTO `goods_left` VALUES ('13', '小米电视4 49英寸', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/80xmds_49.jpg?width=80&height=80', '3');
INSERT INTO `goods_left` VALUES ('14', '九号平衡车', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/phcplus80.jpg?width=80&height=80', '4');
INSERT INTO `goods_left` VALUES ('15', '米家扫地机器人及配件', '1399', 'https://i1.mifile.cn/f/i/g/doodle/jiqiren.jpg?width=80&height=80', '4');
INSERT INTO `goods_left` VALUES ('16', '小米VR眼镜', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/VRPLAY2.png?width=80&height=80', '4');
INSERT INTO `goods_left` VALUES ('17', '小米移动电源', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/dianyuan280.jpg?width=80&height=80', '5');
INSERT INTO `goods_left` VALUES ('18', '插线板', '1399', 'https://i1.mifile.cn/f/i/g/2015/cn-index/c1xb343.jpg?width=80&height=80', '5');
INSERT INTO `goods_left` VALUES ('19', '品牌移动电源', '1399', 'https://i1.mifile.cn/f/i/15/goods/sidebar/yidongdianyuan.jpg?width=80&height=80', '5');
INSERT INTO `goods_left` VALUES ('20', '移动电源附件', '1399', 'https://i1.mifile.cn/f/i/15/goods/sidebar/dianyuanfujian.jpg?width=80&height=80', '5');
INSERT INTO `goods_left` VALUES ('21', '移动电源附件', '1399', 'https://i1.mifile.cn/f/i/15/goods/sidebar/dianyuanfujian.jpg?width=80&height=80', '5');

-- ----------------------------
-- Table structure for goods_version
-- ----------------------------
DROP TABLE IF EXISTS `goods_version`;
CREATE TABLE `goods_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_version
-- ----------------------------
INSERT INTO `goods_version` VALUES ('1', '4GB+64GB', '1399', '1');
INSERT INTO `goods_version` VALUES ('2', '3GB+32GB', '999', '1');
INSERT INTO `goods_version` VALUES ('3', '4GB+64GB', '1299', '2');
INSERT INTO `goods_version` VALUES ('4', '3GB+32GB', '999', '2');

-- ----------------------------
-- Table structure for mi_order
-- ----------------------------
DROP TABLE IF EXISTS `mi_order`;
CREATE TABLE `mi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `order_sn` varchar(255) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `add_time` int(11) NOT NULL,
  `sum_num` int(11) DEFAULT NULL,
  `sum_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mi_order
-- ----------------------------
INSERT INTO `mi_order` VALUES ('1', '1', '201712031706351829', '6', '1512320795', '5', '6695');
INSERT INTO `mi_order` VALUES ('2', '1', '201712040239348197', '11', '1512355174', '10', '12990');
INSERT INTO `mi_order` VALUES ('3', '2', '201712040318591233', '2', '1512357539', '5', '6795');

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` varchar(255) DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL,
  `goods_thumb` varchar(255) DEFAULT NULL,
  `spec` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES ('1', '1', '1', '小米5X', '1399', '2', 'https://i1.mifile.cn/f/i/g/2015/cn-index/hm4x_80.png?width=80&height=80', 'true', '11');
INSERT INTO `order_goods` VALUES ('2', '2', '1', '小米Note 3', '1299', '3', 'https://i1.mifile.cn/f/i/g/2015/cn-index/hm4x_80.png?https://i1.mifile.cn/f/i/g/2015/cn-index/hm4x_80.png?width=80&height=80', 'false', '16');
INSERT INTO `order_goods` VALUES ('3', '2', '2', '小米Note 3', '1299', '3', 'https://i1.mifile.cn/f/i/g/2015/cn-index/hm4x_80.png?width=80&height=80', 'true', '12');
INSERT INTO `order_goods` VALUES ('4', '2', '3', '小米Note 3', '1299', '7', 'https://i1.mifile.cn/f/i/g/2015/80pc-5x.png?width=80&height=80', 'true', '15');
INSERT INTO `order_goods` VALUES ('6', '2', '5', '小米Note 3', '1299', '2', 'https://i1.mifile.cn/f/i/g/2015/cn-index/hm4x_80.png?width=80&height=80', 'true', '16');
INSERT INTO `order_goods` VALUES ('5', '1', '3', '小米5X', '1399', '5', 'https://i1.mifile.cn/f/i/g/2015/80pc-5x.png?width=80&height=80', 'false', '15');

-- ----------------------------
-- Table structure for order_site
-- ----------------------------
DROP TABLE IF EXISTS `order_site`;
CREATE TABLE `order_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_site
-- ----------------------------
INSERT INTO `order_site` VALUES ('11', '1', 'zzsd', '85754546', 'aassd');
INSERT INTO `order_site` VALUES ('16', '2', 'fdsf', '4545', 'esserer');
INSERT INTO `order_site` VALUES ('12', '2', 'qqqq', 'ssss', '11424');
INSERT INTO `order_site` VALUES ('8', '3', 'sadafdgdgg', '46335543', 'sdfdsdsww');
INSERT INTO `order_site` VALUES ('9', '3', 'dfsdsdfsdf', 'ssfdsdss', 'dswww');
INSERT INTO `order_site` VALUES ('10', '1', 'zzd', '1152563', 'aaaaa');
INSERT INTO `order_site` VALUES ('15', '2', 'sadas', 'hhh', '43535');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_pwd` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '12345', '12345', '1511966212');
INSERT INTO `user` VALUES ('2', '1234', '1234', '1511966363');
INSERT INTO `user` VALUES ('3', '123', '321', '1511966386');
INSERT INTO `user` VALUES ('4', '123456', '123456', '1511966415');
INSERT INTO `user` VALUES ('5', '1234567', '1234567', '1511966542');
INSERT INTO `user` VALUES ('6', '321', '321', '1511966607');
INSERT INTO `user` VALUES ('7', '54321', '54321', '1511968931');
INSERT INTO `user` VALUES ('8', '4321', '4321', '1512006262');
