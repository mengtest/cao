###################################################
#20190718[终焉誓约][任务脚本]【普通副本】【神迹实验室】制作(倪祖伟)
#by:倪祖伟
#date:2019-07-18
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-340295.aspx
###################################################
#注释部分
#DELETE FROM `game_map` WHERE `id`=3146;
#DELETE FROM `npc_group` WHERE `id`=50068;
#DELETE FROM `copymap_condition` WHERE `id`=3146;
#DELETE FROM `gen_event` WHERE `id` in (3146001,3146002,3146003,3146004,3146005,20040110);
#DELETE FROM `monster` WHERE `id`>=1001199 AND `id`<=1001201;
#DELETE FROM `monster_group` WHERE `id`>=200731 AND `id`<=200735;
#打开注释部分

###################################################
INSERT INTO `game_map` (`id`, `name`, `group`, `type`, `map_attr`, `map_times`, `team_max`, `team_min`, `fire`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `time`) VALUES 
(3146, '神迹实验室', 1, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1800);

INSERT INTO `copymap_condition` (`id`, `map_id`, `type`, `start_time`, `end_time`, `condition1_type`, `condition1_num`, `condition2_type`, `condition2_num`, `condition3_type`, `condition3_num`) VALUES 
(3146, 3146, 0, 0, 0, 0, 0, 0, 0, 0, 0);

insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('3146001','超体智能1号','3146','2','200731','1','1','0','0','0','0','71','','0','1'),
('3146002','伊甸傀从','3146','2','200732','2','1','0','0','0','0','71','','0','1'),
('3146003','伊甸傀从','3146','2','200733','3','1','0','0','0','0','71','','0','1'),
('3146004','伊甸傀从','3146','2','200734','4','1','0','0','0','0','71','','0','1'),
('3146005','疯狂博士','3146','2','200735','5','1','0','0','0','0','71','','0','1'),
('20040110','神迹实验室','2004','1','50068','0','1','0','0','0','0','0','47.94,0.71,72.61','0','1');

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(50068, '神迹实验室', 1);

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('1001199','超体智能1号','0','1','1','7','1','0','10016','1021','1001601;1001602;1001603','0,1,2','0','0,1,0,2;0,1,2','0','0'),
('1001200','伊甸傀从','0','0','1','6','2','1','10058','1031','1005801;1005802','0,0,1','0','0,0,1','0','0'),
('1001201','疯狂博士','0','2','1','4','1','0','10016','1021','1001601;1001602;1001603','0,1,2','0','0,1,0,2;0,1,2','0','0');

insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('200731','超体智能1号','40000','0','1001199','0','0','0','0','0','0','600000','0','0','0'),
('200732','伊甸傀从','40000','0','1001200','0','0','0','0','0','0','600000','0','0','0'),
('200733','伊甸傀从','40000','0','1001200','0','0','0','0','0','0','600000','0','0','0'),
('200734','伊甸傀从','40000','0','1001200','0','0','0','0','0','0','600000','0','0','0'),
('200735','疯狂博士','40000','0','1001201','0','0','0','0','0','0','600000','0','0','0');
