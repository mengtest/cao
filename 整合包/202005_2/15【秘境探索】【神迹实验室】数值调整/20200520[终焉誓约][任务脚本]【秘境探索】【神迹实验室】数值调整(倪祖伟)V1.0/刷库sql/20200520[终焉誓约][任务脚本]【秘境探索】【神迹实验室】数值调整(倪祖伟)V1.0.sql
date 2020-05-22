###################################################
#20200520[终焉誓约][任务脚本]【秘境探索】【神迹实验室】数值调整(倪祖伟)
#by:倪祖伟
#date:2020-05-20
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-372053.aspx
###################################################
#注释部分

#打开注释部分
delete from monster_group where `id` in (200731,200733,200735);
delete from attribute where `id` in (1001199,1001200,1001201);
###################################################
insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`hero_impression`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('200731','超体智能1号','5979','0','1001199','0','0','0','5','0','0','0','600000','0','1','3'),
('200733','伊甸傀从','5979','0','1001199','0','0','0','5','0','0','0','600000','0','1','3'),
('200735','疯狂博士','0','0','1001201','0','0','0','5','0','0','0','600000','0','1','3');

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1001199','140274','3653','3653','1461','1461','0','0','0','0','0','10000','500','1000','5000','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001200','86612','3437','3437','1374','1374','0','0','0','0','0','10000','500','1000','5000','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001201','140274','3653','3653','1461','1461','0','0','0','0','0','10000','0','1000','5000','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0');

UPDATE `monster` SET `level`=47 WHERE `id`=1001199;
UPDATE `monster` SET `level`=45 WHERE `id`=1001200;
UPDATE `monster` SET `level`=47 WHERE `id`=1001201;
