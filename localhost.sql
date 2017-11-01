-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 11 月 01 日 04:22
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `test`
--
CREATE DATABASE `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test`;

-- --------------------------------------------------------

--
-- 表的结构 `demo`
--

CREATE TABLE IF NOT EXISTS `demo` (
  `id` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `stock` int(50) NOT NULL,
  `num` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `demo`
--

INSERT INTO `demo` (`id`, `price`, `stock`, `num`) VALUES
(1176, 1176, 1176, 1176),
(1175, 1175, 1175, 1175),
(1174, 1174, 1174, 1174),
(1173, 1173, 1173, 1173);

-- --------------------------------------------------------

--
-- 表的结构 `kebiao`
--

CREATE TABLE IF NOT EXISTS `kebiao` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `danwei` varchar(50) DEFAULT NULL COMMENT '承担单位',
  `daima` int(50) NOT NULL COMMENT '课程代码',
  `mingcheng` varchar(50) NOT NULL COMMENT '课程名称',
  `banhao` int(50) NOT NULL COMMENT '上课班号',
  `gonghao` int(50) NOT NULL COMMENT '工号',
  `name` varchar(50) NOT NULL COMMENT '教师',
  `renshu` int(50) NOT NULL COMMENT '上课人数',
  `xiaoqu` varchar(50) NOT NULL COMMENT '校区',
  `loufang` varchar(50) NOT NULL COMMENT '楼房',
  `jiaoshi` varchar(50) NOT NULL COMMENT '教室',
  `zhouci` varchar(50) NOT NULL COMMENT '周次',
  `jieci` varchar(50) NOT NULL COMMENT '节次',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=114 ;

--
-- 转存表中的数据 `kebiao`
--

INSERT INTO `kebiao` (`id`, `danwei`, `daima`, `mingcheng`, `banhao`, `gonghao`, `name`, `renshu`, `xiaoqu`, `loufang`, `jiaoshi`, `zhouci`, `jieci`) VALUES
(99, '马克思主义学院（公共）', 101002, '马克思主义基本原理概论', 41, 10300061, '殷华成', 160, '金明校区', '金明综合楼1', '金明综合楼1202', '1-18', '六[1-3]'),
(100, '公共数学教研部', 1000001, '高等数学A（一）', 14, 10100027, '刘鸣放', 140, '金明校区', '金明综合楼1', '金明综合楼1202', '1-9', '三[11-13]'),
(101, '公共数学教研部', 1000001, '高等数学A（一）', 14, 10100027, '刘鸣放', 140, '金明校区', '金明综合楼1', '金明综合楼1202', '1-9', '一[11-13]'),
(102, '公共数学教研部', 1000001, '高等数学A（一）', 15, 10100027, '刘鸣放', 31, '金明校区', '金明综合楼1', '金明综合楼1202', '10-18', '三[11-13]'),
(103, '公共数学教研部', 1000001, '高等数学A（一）', 15, 10100027, '刘鸣放', 31, '金明校区', '金明综合楼1', '金明综合楼1202', '10-18', '一[11-13]'),
(104, '经济学院', 1200076, '电子商务B', 2, 10080139, '李航', 161, '金明校区', '金明综合楼1', '金明综合楼1202', '1-18', '五[3-4]'),
(105, '经济学院', 1200086, '区域经济学 B', 3, 10080094, '秦静', 30, '金明校区', '金明综合楼1', '金明综合楼1202', '1-18', '四[1-2]'),
(106, '生命科学学院', 2500161, '植物生理学', 1, 10140021, '白玲', 126, '金明校区', '金明综合楼1', '金明综合楼1202', '1-18', '三[1-3]'),
(107, '护理与健康学院', 3000079, '人体解剖学', 1, 10190047, '杜耀武', 144, '金明校区', '金明综合楼1', '金明综合楼1202', '1-18', '六[7-10]'),
(108, '护理与健康学院', 3000079, '人体解剖学', 2, 10190047, '杜耀武', 128, '金明校区', '金明综合楼1', '金明综合楼1202', '1-18', '一[7-10]'),
(109, '国际教育学院', 3500049, '管理学', 2, 10090054, '张世宁', 108, '金明校区', '金明综合楼1', '金明综合楼1202', '4-18', '二[1-3]'),
(110, '迈阿密学院', 3800005, '工程微积分I', 2, 10100114, '叶嵎林', 91, '金明校区', '金明综合楼1', '金明综合楼1202', '1-18', '四[3-4]'),
(111, '化学化工学院', 0, '中国茶文化与茶科学漫谈', 1, 10150030, '朱金花', 150, '金明校区', '金明综合楼1', '金明综合楼1202', '1-18', '五[9-10]'),
(112, '法学院', 0, '影像中的法律', 1, 10050062, '刘夏', 160, '金明校区', '金明综合楼1', '金明综合楼1202', '1-18', '五[11-12]'),
(113, '法学院', 0, '日常生活中的权利', 2, 10050033, '陈阳', 140, '金明校区', '金明综合楼1', '金明综合楼1202', '1-18', '二[9-10]');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
