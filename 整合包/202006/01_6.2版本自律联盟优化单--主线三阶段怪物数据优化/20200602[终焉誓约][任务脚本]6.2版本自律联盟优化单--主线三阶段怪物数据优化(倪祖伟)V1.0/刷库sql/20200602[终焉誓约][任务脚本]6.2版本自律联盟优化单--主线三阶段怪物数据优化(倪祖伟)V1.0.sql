###################################################
#20200602[终焉誓约][任务脚本]6.2版本自律联盟优化单--主线三阶段怪物数据优化(倪祖伟)
#by:倪祖伟
#date:2020-06-02
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-373714.aspx
###################################################
#注释部分

#打开注释部分
delete from attribute where `id` = 9000699;
###################################################
UPDATE `monster` SET `level`=32 WHERE `id`=9000699;

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('9000699','42361','2499','2499','999','999','0','0','0','0','0','10000','500','1000','5000','0','1000','3000','0','0','0','0','0','0','0','0','0','0','0','0');
