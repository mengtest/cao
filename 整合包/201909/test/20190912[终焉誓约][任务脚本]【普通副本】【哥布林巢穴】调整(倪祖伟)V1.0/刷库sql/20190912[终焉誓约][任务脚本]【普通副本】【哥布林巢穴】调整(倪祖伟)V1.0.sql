###################################################
#20190912[终焉誓约][任务脚本]【普通副本】【哥布林巢穴】调整(倪祖伟)
#by:倪祖伟
#date:2019-09-12
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-341016.aspx
###################################################
#注释部分
DELETE FROM `award_acquire` WHERE `award_id`=1000834;
DELETE FROM `attribute` WHERE `id` in(1000193,1000195);
#打开注释部分
DELETE FROM `monster` WHERE `id` in(1000193,1000195);
###################################################
UPDATE `game_map` SET `type`=7, `reward_id`=1000834, `need_ap`=8, `auto`=1 WHERE `id`=3030;

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES
(1000834,1,1,2011021,1,2500,0),
(1000834,1,1,2012021,1,5000,2500),
(1000834,1,1,2063021,1,7500,5000),
(1000834,1,1,2064021,1,10000,7500),
(1000834,2,1,2011021,1,2500,0),
(1000834,2,1,2012021,1,5000,2500),
(1000834,2,1,2063021,1,7500,5000),
(1000834,2,1,2064021,1,10000,7500),
(1000834,3,1,4,5000,10000,0),
(1000834,3,1,8,5000,10000,0),
(1000834,3,1,3,1000,10000,0),
(1000834,3,1,5,120,10000,0),
(1000834,4,1,3060030,1,240,0),
(1000834,4,1,3030013,1,320,240);

UPDATE `monster_group` SET `fight`=1 WHERE `id`=200226;
UPDATE `monster_group` SET `fight`=1 WHERE `id`=200227;
UPDATE `monster_group` SET `fight`=1 WHERE `id`=200228;
UPDATE `monster_group` SET `fight`=0 WHERE `id`=200229;

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1000193','23900','3585','3585','956','956','0','0','0','0','0','10000','0','1000','5000','0','1000','3000','1000','0','0','0','0','0','0','0','0','0','0','0'),
('1000195','50853','3814','3814','1017','1017','0','0','0','0','0','10000','0','1000','5000','0','0','3000','1000','0','0','0','0','0','0','0','0','0','0','0');

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('1000193','伪装哥布林','0','0','1','5','1','19','1000193','3004','1000701;1000702','0,0,1','0','0,0,1','0','0'),
('1000195','食人魔佣兵','0','1','1','1','1','20','1000195','','1001201;1001202;1001203','2,0,1,0;0,1,2','0','2,0,1,0;0,1,2','0','0');

