###################################################
#20190911[终焉誓约][任务脚本]【剧情副本】饿狼巢穴--数值调整(倪祖伟)
#by:倪祖伟
#date:2019-09-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-346674.aspx
###################################################
#注释部分
#DELETE FROM `attribute` WHERE `id` in (1000294,1000295,1000296);
#打开注释部分
DELETE FROM `monster` WHERE `id` in (1000294,1000295,1000296,1000297);
DELETE FROM `attribute` WHERE `id` = 1000297;
DELETE FROM `award_acquire` WHERE `award_id` in (1000016,1000039);

DELETE FROM `attribute` WHERE `id` in (1000294,1000297);
###################################################
INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000016, 1, 1, 1,1000, 10000, 0),
(1000016, 1, 1, 2110001,30, 10000, 0),
(1000016, 1, 1, 210000,	2, 10000, 0),
(1000039, 1, 1, 1, 50, 10000, 0),
(1000039, 1, 1, 3, 5000, 10000, 0);


UPDATE `monster_group` SET `money`=5000 WHERE `id`=200151;
UPDATE `monster_group` SET `money`=5000 WHERE `id`=200152;
UPDATE `monster_group` SET `money`=5000 WHERE `id`=200153;
UPDATE `monster_group` SET `money`=5000 WHERE `id`=200154;
UPDATE `monster_group` SET `money`=10000 WHERE `id`=200156;

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1000294','1300','325','325','130','130','0','0','0','0','0','10000','0','1000','5000','0','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000297','2500','340','340','136','136','0','0','0','0','0','10000','0','1000','5000','0','0','2000','0','0','0','0','0','0','0','0','0','0','0','0');

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('1000294','神秘兽','0','0','1','5','1','5','1000294','1011;1121','1005301;1005302','0,0,1;0,0,1','0','0,0,1;0,0,1','0','0'),
('1000295','森林战熊','0','1','1','1','1','6','1000295','1011','1001501;1001502;1001503','0,2,1;0,1,0;2,1','0','0,1,2;1,0,1;1,0,1','0','0'),
('1000296','碎魂狼王','0','2','1','1','1','7','1000296','1011;1121','1002601;1002602;1002603','0,1,0,2;1,0,1,2','0','0,1,2;1,0,1,0,2;0,1,1;1,0,1,2','0','0');
