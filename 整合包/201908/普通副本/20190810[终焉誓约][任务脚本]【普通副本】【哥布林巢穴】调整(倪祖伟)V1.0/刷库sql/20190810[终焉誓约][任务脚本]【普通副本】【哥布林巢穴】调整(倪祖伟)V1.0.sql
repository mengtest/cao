###################################################
#20190810[终焉誓约][任务脚本]【普通副本】【哥布林巢穴】调整(倪祖伟)
#by:倪祖伟
#date:2019-08-10
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-341016.aspx
###################################################
#注释部分
#DELETE FROM `gen_event` WHERE `id` in (3030001,3030002,3030006);
#DELETE FROM `award_acquire` WHERE `award_id` in (1000729,1000730,1000731);
#打开注释部分
DELETE FROM `npc_group` WHERE `id` in (40053,40054,40055);
###################################################
INSERT INTO `gen_event` (`id`, `name`, `mapid`, `event_type`, `event_id`, `path_id`, `flag`, `intask`, `story_id`, `life_time`, `level_id`, `battle_scene`, `position`, `rotation_y`, `scale`) VALUES 
(3030001, '哥布林秘宝', 3030, 1, 40053, 0, 1, 0, 0, 0, 0, 0, '-17.858,0.03,-4.14',16.431, 1),
(3030002, '哥布林秘宝', 3030, 1, 40054, 0, 1, 0, 0, 0, 0, 0, '-59.199,0.03,25.38',139.08, 1),
(3030006, '哥布林秘宝', 3030, 1, 40055, 0, 1, 0, 0, 0, 0, 0, '-85.739,0.03,11.62',86.901, 1);

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(40053, '哥布林秘宝', 1),
(40054, '哥布林秘宝', 1),
(40055, '哥布林秘宝', 1);

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000729, 1, 1, 1, 10, 10000, 0),
(1000730, 1, 1, 3, 50, 10000, 0),
(1000731, 1, 1, 3, 10, 10000, 0);
