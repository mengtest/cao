###################################################
#20190919[终焉誓约][任务脚本]普通饿狼巢穴怪物数值bug(倪祖伟)
#by:倪祖伟
#date:2019-09-19
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-341016.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `attribute` WHERE `id` in (1000193,1000195);
###################################################
insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1000193','6250','625','625','250','250','0','0','0','0','0','10000','0','1000','5000','0','1000','3000','1000','0','0','0','0','0','0','0','0','0','0','0'),
('1000195','10170','678','678','271','271','0','0','0','0','0','10000','0','1000','5000','0','0','3000','1000','0','0','0','0','0','0','0','0','0','0','0');

UPDATE `monster` SET `special_effects`='' WHERE `id`=1000193;

UPDATE `monster_group` SET `attack_status_id`=1 WHERE `id`=200226;
UPDATE `monster_group` SET `attack_status_id`=1 WHERE `id`=200227;
UPDATE `monster_group` SET `attack_status_id`=1 WHERE `id`=200228;
UPDATE `monster_group` SET `attack_status_id`=1 WHERE `id`=200229;
