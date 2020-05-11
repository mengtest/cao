###################################################
#20190918[终焉誓约][任务脚本]【危机黯月城】第1关--调整(倪祖伟)
#by:倪祖伟
#date:2019-09-18
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-347039.aspx
###################################################
#注释部分
#DELETE FROM `dungeon_hero` WHERE `id`>=13 AND `id`<=16;
#打开注释部分
DELETE FROM `monster` WHERE `id`>=1000768 AND `id`<=1000770;
DELETE FROM `attribute` WHERE `id`>=1000768 AND `id`<=1000770;
DELETE FROM `syn_reward` WHERE `type` =2 AND `data1`=1;
DELETE FROM `dungeon_hero` WHERE `id`>=1 AND `id`<=12;
###################################################
INSERT INTO `monster` (`id`, `name`, `attr_type`, `type`, `sex`, `family`, `profession`, `level`, `attr_id`, `special_effects`, `own_skills`, `skill_que`, `skill_vis`, `skill_loop_que`, `skill_que_vis`, `action_id`) VALUES
(1000768, '白骨孤狼', 0, 0, 1, 1, 1, 20, 1000768, '', '1002601;1002602;1002603', '0,1,0;0,1,2', 0, '0,1,0;0,1;0,1,2', 0, 0),
(1000769, '荒原践踏者', 0, 0, 1, 4, 1, 20, 1000769, '', '1005001;1005002;1005003', '1,1,2;1,0,1,2;1,0,1,0', 0, '0,2;1,0,1,0;0,1,2,2', 0, 0),
(1000770, '海魂领主阿特斯', 0, 2, 1, 6, 1, 25, 1000770, '', '5201801;5201802;5201803', '0,2;2,0,1,0', 0, '0,2;2,1,1,1,0;0,0,1', 0, 0);

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1000768','27885','1014','1014','405','405','0','0','0','0','0','10000','500','1000','5000','0','1000','3000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000769','27885','1014','1014','405','405','0','0','0','0','0','10000','500','1000','5000','0','1000','3000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000770','50472','1463','1463','585','585','0','0','0','0','0','10000','500','1000','5000','0','1000','3000','0','0','0','0','0','0','0','0','0','0','0','0');


INSERT INTO `syn_reward` (`id`, `type`, `data1`, `data2`, `data3`, `reward1_id`, `reward1_num`, `reward2_id`, `reward2_num`, `reward3_id`, `reward3_num`, `reward4_id`, `reward4_num`) VALUES 
(241, 2, 1, 1, 120, 4, 50000, 8, 50000, 0, 0, 0, 0),
(242, 2, 1, 2, 240, 210000, 3, 120012, 5, 0, 0, 0, 0),
(243, 2, 1, 3, 360, 2000054, 1, 3, 20000, 0, 0, 0, 0),
(244, 2, 1, 4, 500, 3030013, 1, 3, 50000, 0, 0, 0, 0);

INSERT INTO `dungeon_hero` (`id`, `hero_id`) VALUES 
(1, 101),
(2, 201),
(3, 301),
(4, 102),
(5, 103),
(6, 104),
(7, 105),
(8, 106),
(9, 107),
(10, 108),
(11, 111),
(12, 112),
(13, 113),
(14, 114),
(15, 302),
(16, 401);

UPDATE `monster_group` SET `name`='白骨孤狼' WHERE `id`=200466;
UPDATE `monster_group` SET `name`='荒原践踏者' WHERE `id`=200467;
UPDATE `monster_group` SET `name`='海魂领主阿特斯' WHERE `id`=200468;

UPDATE `dungeon_level` SET `monster1_id`='200466;200467', `monster2_id`='0' WHERE `id`=1;

UPDATE `config` SET `data3`=3 WHERE `id`=144;
UPDATE `gen_event` SET `rotation_y`=120 WHERE `id`=3097004;
