###################################################
#20190810[终焉誓约][任务脚本]【普通副本】【神迹实验室】调整(倪祖伟)
#by:倪祖伟
#date:2019-08-10
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-341031.aspx
###################################################
#注释部分
#DELETE FROM `gen_event` WHERE `id` in (3146006,3146007,3146008);
#DELETE FROM `npc_group` WHERE `id` in (40326,40327,40328);
#DELETE FROM `award_acquire` WHERE `award_id` in (1000786,1000787,1000788);
#打开注释部分

###################################################
INSERT INTO `gen_event` (`id`, `name`, `mapid`, `event_type`, `event_id`, `path_id`, `flag`, `intask`, `story_id`, `life_time`, `level_id`, `battle_scene`, `position`, `rotation_y`, `scale`) VALUES 
(3146006, '生物实验箱', 3146, 1, 40326, 0, 1, 0, 0, 0, 0, 0, '24.68,5.49,17.8',-90, 1),
(3146007, '生物实验箱', 3146, 1, 40327, 0, 1, 0, 0, 0, 0, 0, '20.9,3.47,-14.878',-90, 1),
(3146008, '生物实验箱', 3146, 1, 40328, 0, 1, 0, 0, 0, 0, 0, '6.06,6.517,1.23',0, 1);

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(40326, '生物实验箱', 1),
(40327, '生物实验箱', 1),
(40328, '生物实验箱', 1);

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000786, 1, 1, 1, 10, 10000, 0),
(1000787, 1, 1, 3, 50, 10000, 0),
(1000788, 1, 1, 3, 10, 10000, 0);
