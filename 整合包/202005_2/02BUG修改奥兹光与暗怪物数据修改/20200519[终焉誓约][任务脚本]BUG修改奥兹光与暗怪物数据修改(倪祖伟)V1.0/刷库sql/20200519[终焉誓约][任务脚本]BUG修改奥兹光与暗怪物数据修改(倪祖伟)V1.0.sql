###################################################
#20200519[终焉誓约][任务脚本]BUG修改奥兹光与暗怪物数据修改(倪祖伟)
#by:倪祖伟
#date:2020-05-19
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-365027.aspx
###################################################
#注释部分

#打开注释部分
delete from attribute where `id` in (9000662,9000664,9000665);
###################################################
UPDATE `monster` SET `level`=25 WHERE `id`=9000662;
UPDATE `monster` SET `level`=30 WHERE `id`=9000664;
UPDATE `monster` SET `level`=30 WHERE `id`=9000665;


insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('9000662','37012','1463','1463','585','585','0','0','0','0','0','10000','0','1000','5000','0','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('9000664','53248','2017','2017','806','806','0','0','0','0','0','10000','0','1000','5000','0','0','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('9000665','53248','2017','2017','1210','1210','0','0','0','0','0','10000','0','1000','5000','0','0','2000','0','0','0','0','0','0','0','0','0','0','0','0');
