###################################################
#20191123[终焉誓约][任务脚本]【剧情副本】【哥布林巢穴】数值调整(倪祖伟)
#by:倪祖伟
#date:2019-11-23
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354117.aspx
###################################################
#注释部分

#打开注释部分
delete from attribute where `id` in (1000292,1000921);
###################################################
insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1000292','10170','678','678','271','271','0','0','0','0','0','10000','0','1000','5000','0','0','3000','1000','0','0','0','0','0','0','0','0','0','0','0'),
('1000921','4746','678','678','271','271','0','0','0','0','0','10000','3000','1000','5000','0','0','3000','1000','0','0','0','0','0','0','0','0','0','0','0');
