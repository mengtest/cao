###################################################
#20190819[终焉誓约][任务脚本]CBT1神谕会议场景表现制作(倪祖伟)
#by:倪祖伟
#date:2019-08-19
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-343774.aspx
###################################################
#注释部分
#delete from gen_event where `id` = 20030588;
#delete from npc_group where `id` = 21036;
#打开注释部分

###################################################
UPDATE `gen_event` SET `position`='-141.99,0.11,-38.63' WHERE `id`=20030012;

INSERT INTO `gen_event` (`id`, `name`, `mapid`, `event_type`, `event_id`, `path_id`, `flag`, `intask`, `story_id`, `life_time`, `level_id`, `battle_scene`, `position`, `rotation_y`, `scale`) VALUES 
(20030588, '德鲁伊守卫', 2003, 1, 21036, 0, 1, 0, 0, 0, 0, 0, '-139.537,0.14,-40.143', 20, 1);

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(21036, '德鲁伊守卫', 1);
