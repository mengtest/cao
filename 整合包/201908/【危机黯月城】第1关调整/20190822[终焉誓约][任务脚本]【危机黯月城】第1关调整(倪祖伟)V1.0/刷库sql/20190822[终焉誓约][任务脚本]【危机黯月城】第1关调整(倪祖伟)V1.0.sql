###################################################
#20190822[终焉誓约][任务脚本]【危机黯月城】第1关调整(倪祖伟)
#by:倪祖伟
#date:2019-08-22
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-344039.aspx
###################################################
#注释部分
#delete from attribute where `id` in (1001247,1001248);
#delete from monster where `id` in (1001247,1001248);
#delete from monster_group where `id` in (200775,200776);
#delete from gen_event where `id` in (3097009,3097010,3097011,3097012,3097013,3097014,3097017);
#打开注释部分
delete from monster where `id` in (1000768,1000769,1000770);
delete from monster_group where `id` in (200466,200467,200468);
delete from gen_event where `id` in (3097001,3097002,3097003,3097004,3097005,3097006,3097007,3097008,3097015,3097016);
delete from dungeon_level where `id` = 1;
###################################################
insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('1000768','赤焰狼王','0','1','1','1','1','0','1000768','1111;1151','1002601;1002602;1002603','0,1,0,2;1,0,1,2','0','0,1,2;1,0,1,0,2;0,1,1;1,0,1,2','0','0'),
('1000769','惩戒屠夫','0','1','1','1','1','0','1000769','1111','1001501;1001502;1001503','2,0,1','0','0,1;0,1,2;0,1;2,0,1','0','0'),
('1000770','炼狱之主','0','2','1','6','1','0','1000770','','1003601;1003602;1003603;1003604','0,1,2,3','0','0,1,2,3','0','0'),
('1001247','混沌魔魂','0','0','1','1','1','0','1001247','1111','1002301;1002302','0,1,0;1,0,1,0','0','0,1;1,0,1,0,1;0,1,0;1,0,1','0','0'),
('1001248','觉醒魔魂','0','0','1','1','1','0','1001248','','1004901;1004902','0,0,1;0,0,1','0','0,0,1;0,0,1','0','0');

insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('200466','赤焰狼王','0','0','1000768','0','0','0','0','0','0','600000','0','0','0'),
('200467','惩戒屠夫','0','0','1000769','0','0','0','0','0','0','600000','0','0','0'),
('200468','炼狱之主','0','0','1000770','0','0','0','0','0','0','600000','0','0','0'),
('200775','混沌魔魂','0','0','1001247','0','0','0','0','0','0','600000','0','0','0'),
('200776','觉醒魔魂','0','0','1001248','0','0','0','0','0','0','600000','0','0','0');

insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('3097001','混沌魔魂','3097','1','20636','0','1','0','0','0','0','0','-14.74,0.09567789,8.97','135','1'),
('3097002','觉醒魔魂','3097','1','20637','0','1','0','0','0','0','0','-8.75,0.09567789,14.07','155','1'),
('3097003','赤焰狼王','3097','1','20638','0','1','0','0','0','0','0','-36.87,0.09567789,26.21','135','1'),
('3097004','惩戒屠夫','3097','1','20623','0','1','0','0','0','0','0','-28.55,0.09567789,33.59','160','1'),
('3097005','炼狱之主','3097','1','20624','0','1','0','0','0','0','0','-47.69,0.09567789,47.18','140','1'),
('3097006','混沌魔魂','3097','2','200775','1','1','1','0','0','0','56','','0','1'),
('3097007','觉醒魔魂','3097','2','200776','2','1','1','0','0','0','56','','0','1'),
('3097008','赤焰狼王','3097','2','200466','3','1','1','0','0','0','56','','0','1'),
('3097009','惩戒屠夫','3097','2','200467','4','1','1','0','0','0','56','','0','1'),
('3097010','炼狱之主','3097','2','200468','5','1','1','0','0','0','56','','0','1'),
('3097012','障碍墙','3097','4','1092','0','1','0','0','0','0','0','-16.47282,0.09567789,16.9677','-38','1'),
('3097013','障碍墙','3097','4','1092','0','1','0','0','0','0','0','-37.37526,0.09567789,34.49336','135','1'),
('3097014','混沌魔魂','3097','1','21021','0','1','0','0','0','0','0','-14.74,0.09567789,8.97','135','1'),
('3097015','觉醒魔魂','3097','1','21022','0','1','0','0','0','0','0','-8.75,0.09567789,14.07','155','1'),
('3097016','赤焰狼王','3097','1','21023','0','1','0','0','0','0','0','-36.87,0.09567789,26.21','135','1'),
('3097017','惩戒屠夫','3097','1','21024','0','1','0','0','0','0','0','-28.55,0.09567789,33.59','160','1');

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1001247','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001248','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0');

INSERT INTO `dungeon_level` (`id`, `level_id`, `monster1_id`, `monster2_id`, `boss_id`) VALUES 
(1, 3097, '200775;200776', '200466;200467', 200468);
