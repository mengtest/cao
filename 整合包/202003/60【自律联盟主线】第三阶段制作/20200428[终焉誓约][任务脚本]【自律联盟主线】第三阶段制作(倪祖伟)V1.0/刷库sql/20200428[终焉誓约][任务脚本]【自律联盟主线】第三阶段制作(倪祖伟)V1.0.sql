###################################################
#20200428[终焉誓约][任务脚本]【自律联盟主线】第三阶段制作(倪祖伟)
#by:倪祖伟
#date:2020-04-28
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-368942.aspx
###################################################
#注释部分
DELETE FROM `gen_event` WHERE `id`>=1000299 AND `id`<=1000304;
DELETE FROM `npc_group` WHERE `id` in (30764,30765,21379,21381,21382);
delete from `monster_group` where `id` = 900615;
delete from `monster` where `id` = 9000699;
delete from `attribute` where `id` = 9000699;
#打开注释部分

###################################################
INSERT INTO `gen_event` (`id`, `name`, `mapid`, `event_type`, `event_id`, `path_id`, `flag`, `intask`, `story_id`, `life_time`, `level_id`, `battle_scene`, `position`, `rotation_y`, `scale`) VALUES 
(1000299, '', 1000, 1, 30764, 0, 1, 0, 0, 0, 0, 0, '-2.65,22.82,73.53', 0, 1),
(1000300, '', 1000, 1, 30765, 0, 1, 0, 0, 0, 0, 0, '56.88,22.63,108.67', 0, 1),
(1000301, '', 1000, 1, 21379, 0, 1, 0, 0, 0, 0, 0, '62.30,22.63,112.38', 180, 1),
(1000302, '', 1000, 1, 21381, 0, 1, 0, 0, 0, 0, 0, '62.60,22.63,109.74', 0, 1),
(1000303, '', 1000, 1, 21382, 0, 1, 0, 0, 0, 0, 0, '62.60,22.63,109.74', 0, 1),
(1000304, '', 1000, 2, 900615, 0, 1, 1, 0, 0, 0, 0, '62.60,22.63,109.74', 0, 1);

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(30764, '', 1),
(30765, '', 1),
(21379, '', 1),
(21381, '', 1),
(21382, '', 1);


insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`hero_impression`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('900615','','1','0','9000699','0','0','0','5','0','0','0','600000','0','0','0');

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('9000699','','0','0','1','7','2','1','9000699','','1005801;1005802','0,1,0;0,1','0','0,1,0;0,1','0','0');

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('9000699','1584','158','0','64','64','0','0','0','0','0','10000','0','300','5000','0','300','3000','100','1000','0','0','0','0','0','0','0','0','0','0');
