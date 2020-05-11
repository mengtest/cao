###################################################
#20191111[终焉誓约][任务脚本]【剧情副本】【神迹实验室】数值调整(倪祖伟)
#by:倪祖伟
#date:2019-11-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-352761.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `attribute` WHERE `id` in (1000736,1000834,9000276,9000277,9000278);
###################################################
UPDATE `monster` SET `attr_type`=204 WHERE `id`=1001281;
UPDATE `monster` SET `attr_type`=204 WHERE `id`=1001282;

UPDATE `monster_group` SET `fight`=5979, `fight_type`=3 WHERE `id`=200329;
UPDATE `monster_group` SET `fight`=5979, `fight_type`=3 WHERE `id`=200330;
UPDATE `monster_group` SET `fight`=5979, `fight_type`=3 WHERE `id`=200423;

UPDATE `monster` SET `level`=47 WHERE `id`=1000736;
UPDATE `monster` SET `level`=47 WHERE `id`=9000277;
UPDATE `monster` SET `level`=47 WHERE `id`=9000278;
UPDATE `monster` SET `level`=45 WHERE `id`=1000834;
UPDATE `monster` SET `level`=45 WHERE `id`=9000276;

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1000736','140274','3653','3653','1461','1461','0','0','0','0','0','10000','500','1000','5000','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000834','86612','3437','3437','1374','1374','0','0','0','0','0','10000','500','1000','5000','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0'),
('9000276','86612','3437','3437','1374','1374','0','0','0','0','0','10000','500','1000','5000','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0'),
('9000277','140274','3653','3653','1461','1461','0','0','0','0','0','10000','500','1000','5000','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0'),
('9000278','140274','3653','3653','1461','1461','0','0','0','0','0','10000','0','1000','5000','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0');
