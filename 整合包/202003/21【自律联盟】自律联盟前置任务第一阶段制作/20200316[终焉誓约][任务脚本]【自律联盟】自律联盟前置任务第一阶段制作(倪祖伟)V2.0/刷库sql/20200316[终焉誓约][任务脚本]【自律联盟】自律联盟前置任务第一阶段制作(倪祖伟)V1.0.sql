###################################################
#20200316[终焉誓约][任务脚本]【自律联盟】自律联盟前置任务第一阶段制作(倪祖伟)
#by:倪祖伟
#date:2020-03-16
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-364499.aspx
###################################################
#注释部分
#delete from monster_group where `id` = 900613;
#delete from monster where `id` = 9000694;
#delete from attribute where `id` = 9000694;
#delete from gen_event where `id` = 1000297;
#delete from award_acquire where `award_id` = 2000679;
#delete from task_index where `taskid` >= 70515 and `taskid` <= 70519;
#打开注释部分

###################################################

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('9000694','巨斧战士塔克','0','1','1','4','1','20','9000694','1101','1000201;1000202;1000203','0,2;1,0,1,0;1,0,1,2','0','0,2;1,0,1,0;1,2','0','0');

insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('1000297','','1000','2','900613','0','1','1','0','0','0','52','68.39,22.63,117.31','136.22','1');

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('9000694','10170','678','678','271','271','0','0','0','0','0','10000','0','1000','5000','0','0','3000','1000','0','0','0','0','0','0','0','0','0','0','0');

insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`hero_impression`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('900613','哥布林','0','0','9000694','0','0','0','5','0','0','0','600000','0','0','0');

INSERT INTO `task_index` (`taskid`, `data_index`, `mask_index`) VALUES 
(70515, 24, 62),
(70516, 24, 63),
(70517, 25, 1),
(70518, 25, 2),
(70519, 25, 3);

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(2000679, 1, 1, 1, 50, 10000, 0);
