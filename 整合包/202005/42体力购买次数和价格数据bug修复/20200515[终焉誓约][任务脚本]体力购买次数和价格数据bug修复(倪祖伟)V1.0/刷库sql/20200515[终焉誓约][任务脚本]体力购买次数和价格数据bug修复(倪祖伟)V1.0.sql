###################################################
#20200515[终焉誓约][任务脚本]体力购买次数和价格数据bug修复(倪祖伟)
#by:倪祖伟
#date:2020-05-15
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-370931.aspx
###################################################
#注释部分
#DELETE FROM `cost_emoney` WHERE `id` >=6001 AND `id` <=6010;
#打开注释部分
DELETE FROM `cost_emoney` WHERE `id`=6000;
###################################################
INSERT INTO `cost_emoney` (`id`, `times_type`, `times`, `cost`) VALUES 
(6000, 60, 1, 100),
(6001, 60, 2, 100),
(6002, 60, 3, 100),
(6003, 60, 4, 100),
(6004, 60, 5, 100),
(6005, 60, 6, 100),
(6006, 60, 7, 100),
(6007, 60, 8, 100),
(6008, 60, 9, 100),
(6009, 60, 10, 100);
