###################################################
#20190810[终焉誓约][任务脚本]【普通副本】【饿狼巢穴】调整(倪祖伟)
#by:倪祖伟
#date:2019-08-10
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-341014.aspx
###################################################
#注释部分
#DELETE FROM `gen_event` WHERE `id` in (3038007,3038008);
#DELETE FROM `npc_group` WHERE `id` in (40057,40058);
#DELETE FROM `award_acquire` WHERE `award_id` in (1000727,1000728);
#打开注释部分

###################################################

INSERT INTO `gen_event` (`id`, `name`, `mapid`, `event_type`, `event_id`, `path_id`, `flag`, `intask`, `story_id`, `life_time`, `level_id`, `battle_scene`, `position`, `rotation_y`, `scale`) VALUES 
(3038007, '狼王的收藏箱', 3038, 1, 40057, 0, 1, 0, 0, 0, 0, 0, '3.24,0.02,99.0', -160.2, 1),
(3038008, '狼王的收藏箱', 3038, 1, 40058, 0, 1, 0, 0, 0, 0, 0, '22.70,0.02,87.54', -223.655, 1);

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(40057, '狼王的收藏箱', 1),
(40058, '狼王的收藏箱', 1);

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000727, 1, 1, 1, 10, 10000, 0),
(1000728, 1, 1, 3, 50, 10000, 0);
