###################################################
#20191028[终焉誓约][任务脚本]【好感度任务】【西蒙-欣赏】任务制作(倪祖伟)
#by:倪祖伟
#date:2019-10-28
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-344440.aspx
###################################################
#注释部分
#delete from gen_event where `id`>=1000278 and `id`<=1000284;
#delete from monster where `id`>=9000677 and `id`<=9000678;
#delete from attribute where `id`>=9000677 and `id`<=9000678;
#delete from monster_group where `id`>=900603 and `id`<=900604;
#delete from npc_group where `id` in (21085,21086,30721);
#delete from award_acquire where `award_id` in (2000636,2000637);
#delete from impression_task where `id` = 10103;
#打开注释部分

###################################################

insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('1000278','梵妮','1000','1','21085','0','1','0','0','0','0','0','-41.44,22.78,68.91','45','1'),
('1000279','禁卫军加文','1000','1','21086','0','1','0','0','0','0','0','-43.83,22.78,70.79','114','1'),
('1000280','禁卫军加文','1000','1','21086','0','1','0','0','0','0','0','-40.80,22.78,65.05','-17.43','1'),
('1000281','禁卫军加文','1000','1','21086','0','1','0','0','0','0','0','-38.20,22.78,70.39','-135','1'),
('1000282','陷阱','1000','1','30721','0','1','0','0','0','0','0','-40.96,22.78,67.13','0','1'),
('1000283','梵妮','1000','2','900603','0','1','1','0','0','0','0','','0','1'),
('1000284','禁卫军加文','1000','2','900604','0','1','1','0','0','0','0','','0','1');

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(21085, '梵妮', 1),
(21086, '禁卫军加文', 1),
(30721, '陷阱', 1);

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('9000677','梵妮','201','0','1','4','1','0','9000677','1031','1002201;1002202;1002203','0,1,0;0,1,2','0','0,1;0,1,2;1,0,1;0,1;1,0,2','0','0'),
('9000678','禁卫军加文','201','0','1','4','1','0','9000678','','5201101;5201102;5201103','0,1,0;0,0,2','0','0,0;0,0,2;0,1;0,0;0,1,2,2','0','0');

insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('900603','梵妮','1','0','9000677','0','0','0','0','0','0','600000','0','1','0'),
('900604','禁卫军加文','1','0','9000678','0','0','0','0','0','0','600000','0','1','0');

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('9000677','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('9000678','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0');

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(2000636, 1, 1, 3060110, 2, 10000, 0),
(2000636, 1, 1, 3060120, 1, 10000, 0),
(2000636, 1, 1, 204020, 3, 10000, 0),
(2000637, 1, 1, 3060110, 2, 10000, 0),
(2000637, 1, 1, 3060120, 1, 10000, 0),
(2000637, 1, 1, 1, 150, 10000, 0);

INSERT INTO `impression_task` (`id`, `hero_id`, `index`, `unlock_level`, `task_id`, `num`) VALUES 
(10103, 101, 3, 12, 70423, 2);
