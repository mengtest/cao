###################################################
#20191112[终焉誓约][任务脚本]【剧情副本】【荒原古堡】数值调整(倪祖伟)
#by:倪祖伟
#date:2019-11-12
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-352751.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `award_acquire` WHERE `award_id`=1000069;
DELETE FROM `attribute` WHERE `id` in (1000153,1000154,9000431);
###################################################
INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000069,1,1,2110001,20,10000,0),
(1000069,1,1,7000690,1,10000,0),
(1000069,1,1,1,68,10000,0);

UPDATE `monster` SET `level`=30 WHERE `id`=1000153;
UPDATE `monster` SET `level`=31 WHERE `id`=1000154;
UPDATE `monster` SET `level`=30 WHERE `id`=9000431;
UPDATE `monster_group` SET `fight`=3116 WHERE `id`=200191;

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1000153','44776','2017','2017','537','537','0','0','0','0','0','10000','500','1000','5000','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000154','69585','2071','2071','552','552','0','0','0','0','0','10000','500','1000','5000','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0'),
('9000431','33582','2017','2017','537','537','0','0','0','0','0','10000','500','1000','5000','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0');

