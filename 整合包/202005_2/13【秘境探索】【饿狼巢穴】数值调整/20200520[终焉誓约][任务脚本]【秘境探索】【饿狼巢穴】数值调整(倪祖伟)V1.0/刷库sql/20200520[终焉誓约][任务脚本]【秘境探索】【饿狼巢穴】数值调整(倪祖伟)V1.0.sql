###################################################
#20200520[终焉誓约][任务脚本]【秘境探索】【饿狼巢穴】数值调整(倪祖伟)
#by:倪祖伟
#date:2020-05-20
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-372026.aspx
###################################################
#注释部分

#打开注释部分
delete from attribute where `id` = 1000202;
delete from monster where `id`>= 1000199 and `id`<= 1000202;
###################################################
insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1000202','3000','340','340','142','142','0','0','0','0','0','10000','0','1000','5000','0','0','2000','0','0','0','0','0','0','0','0','0','0','0','0');

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('1000199','残暴孤熊','0','0','1','1','1','5','1000199','1011;1121','1005301;1005302','0,0,1;0,0,1','0','0,0,1;0,0,1','0','0'),
('1000200','白眼独狼','0','1','1','1','1','6','1000200','1011','1004401;1004402','0,1,0;1,0,1,0','0','0,1;1,0,1,0,1;0,1,0;1,0,1','0','0'),
('1000201','冰霜巨熊','0','0','1','1','1','6','1000201','1011','1004901;1004902','0,0,1;0,0,1','0','0,0,1;0,0,1','0','0'),
('1000202','碎魂狼王乌迪尔','0','2','1','1','1','7','1000202','1011','1002601;1002602;1002603','0,1,0,2;1,0,1,2','0','0,1,2;1,0,1,0,2;0,1,1;1,0,1,2','0','0');
