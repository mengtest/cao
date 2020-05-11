###################################################
#20200418[终焉誓约][任务脚本]任务-ERP326257终焉誓约自律联盟自律联盟主线第二阶段制作(苏亚玲)
#by:苏亚玲
#date:2020-04-18
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-367991.aspx
###################################################
#注释部分
delete from task_index where taskid >= 70543 and taskid <= 70549;
delete from attribute where id >= 9000697 and id <= 9000698;
delete from monster where id >= 9000697 and id <= 9000698;
delete from gen_event where id = 1000298;
delete from monster_group where id = 900614;
delete from award_acquire where award_id = 2000768;
#打开注释部分

###################################################

insert into task_index(`taskid`,`data_index`,`mask_index`) values
('70543','25','17'),
('70544','25','18'),
('70545','25','19'),
('70546','25','20'),
('70547','25','21'),
('70548','25','22'),
('70549','25','23');

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('9000697','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('9000698','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0');

insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('1000298','强壮的猎人','1000','2','900614','0','1','1','0','0','0','0','10.82,23.47,105.26','0','1');

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('9000697','强壮的猎人','0','0','1','4','1','1','9000697','1141','800001;800002;800003','0,1,2;0,1,0,1','0','0,1,2;0,1,0,1;0,1,0,2;0,1;0,1,0,1','0','0'),
('9000698','精瘦的猎人','0','0','1','3','1','0','9000698','','1003801;1003802;1003803','0,2;1,0,1,0;1,0,1,2','0','0,2;1,0,1,0;1,2','0','0');

insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`hero_impression`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('900614','强壮的猎人','0','0','9000697;9000698','0','0','0','5','0','0','0','600000','0','0','0');


insert into award_acquire(`award_id`,`award_group`,`award_type`,`award_type_id`,`item_num`,`max_get_rate`,`min_get_rate`) values
('2000768','1','1','1','50','10000','0');
