###################################################
#20200508[终焉誓约][任务脚本]【多人副本】【黑龙战舰】bug修复(倪祖伟)
#by:倪祖伟
#date:2020-05-08
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-360071.aspx
###################################################
#注释部分
DELETE FROM `copymap_condition` WHERE `id` in (315801,315802);
#打开注释部分
DELETE FROM `copymap_condition` WHERE `id`=3158;
###################################################
INSERT INTO `copymap_condition` (`id`, `map_id`, `type`, `start_time`, `end_time`, `condition1_type`, `condition1_num`, `condition2_type`, `condition2_num`, `condition3_type`, `condition3_num`) VALUES 
(3158, 3158, 1, 120000, 135900, 1, 50, 0, 0, 0, 0),
(315801, 3158, 1, 180000, 195900, 1, 50, 0, 0, 0, 0),
(315802, 3158, 1, 220000, 235900, 1, 50, 0, 0, 0, 0);
