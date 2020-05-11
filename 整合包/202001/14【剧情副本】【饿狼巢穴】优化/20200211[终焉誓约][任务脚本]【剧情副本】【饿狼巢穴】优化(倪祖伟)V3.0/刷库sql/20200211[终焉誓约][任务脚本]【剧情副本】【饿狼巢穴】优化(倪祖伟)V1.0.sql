###################################################
#20200211[终焉誓约][任务脚本]【剧情副本】【饿狼巢穴】优化(倪祖伟)
#by:倪祖伟
#date:2020-02-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-360196.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `monster` WHERE `id`=1000295;
DELETE FROM `attribute` WHERE `id` in (1000295,1000296);
DELETE FROM `monster_group` WHERE `id`=200154;
DELETE FROM `gen_event` WHERE `id`=3011009;
DELETE FROM `award_acquire` WHERE `award_id` in (1000028,1000039);
###################################################

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000039, 1, 1, 1, 50, 10000, 0),
(1000039, 1, 1, 3, 5000, 10000, 0),
(1000039, 1, 1, 7000610, 1, 10000, 0);

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1000296','3000','340','340','142','142','0','0','0','0','0','10000','0','1000','5000','0','0','2000','0','0','0','0','0','0','0','0','0','0','0','0');

UPDATE `gen_event` SET `position`='-11.68,0.02,61.44' WHERE `id`=3011025;
UPDATE `monster` SET `special_effects`='1011' WHERE `id`=1000296;
UPDATE `monster` SET `special_effects`='1011' WHERE `id`=1000297;
