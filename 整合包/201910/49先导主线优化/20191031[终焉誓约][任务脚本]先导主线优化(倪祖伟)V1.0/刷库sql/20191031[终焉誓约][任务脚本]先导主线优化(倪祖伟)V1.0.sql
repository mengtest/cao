###################################################
#20191031[终焉誓约][任务脚本]先导主线优化(倪祖伟)
#by:倪祖伟
#date:2019-10-31
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-351419.aspx
###################################################
#注释部分
#DELETE FROM `npc_group` WHERE `id`=70044;
#DELETE FROM `gen_event` WHERE `id`=20010293;
#打开注释部分


###################################################
insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('20010293','失事飞船','2001','1','70044','0','1','0','0','0','0','0','-4.01,-2.21,69.904','0','1');

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(70044, '失事飞船', 1);
