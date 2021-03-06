###################################################
#20190730[终焉誓约][任务脚本]奥兹家族任务设计---第三天(倪祖伟)
#by:倪祖伟
#date:2019-07-30
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-341536.aspx
###################################################
#注释部分
#DELETE FROM `task_index` WHERE `taskid`>=70264 AND `taskid`<=70271;
#DELETE FROM `gen_event` WHERE `id` in (1000232,1000233,3148001,3148002,3148003,3148004,3148005,3148006,3148007,3148008,3148009,3148010);
#DELETE FROM `npc_group` WHERE `id` in (20992,30676,30680,30681,30682,30683,60459,60460,60461,60462,60463);
#DELETE FROM `game_map` WHERE `id` = 3148;
#DELETE FROM `valve` WHERE `id` = 1122;
#打开注释部分

###################################################
INSERT INTO `task_index` (`taskid`, `data_index`, `mask_index`) VALUES 
(70264, 22, 47),
(70265, 22, 48),
(70266, 22, 49),
(70267, 22, 50),
(70268, 22, 51),
(70269, 22, 53),
(70270, 22, 54),
(70271, 22, 55);

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(20992, '泰雷', 1),
(30676, '奥兹家族第三日陷阱', 1),
(30680, '奥兹家族副本陷阱', 1),
(30681, '奥兹家族副本陷阱', 1),
(30682, '奥兹家族副本陷阱', 1),
(30683, '奥兹家族副本陷阱', 1),
(60459, '奥兹家族副本法阵', 1),
(60460, '奥兹家族副本法阵', 1),
(60461, '奥兹家族副本法阵', 1),
(60462, '奥兹家族副本法阵', 1),
(60463, '奥兹家族副本法阵', 1);


insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('1000232','','1000','1','30676','0','1','0','0','0','0','0','-121.72,32.36,72.86','0','1'),
('1000233','','1000','1','20992','0','1','0','0','0','0','0','-122.29,32.39,64.51','33.34','1'),
('3148001','','3148','1','60459','0','1','0','0','0','0','0','22.665,1.643,-21.91','0','1'),
('3148002','','3148','1','60460','0','1','0','0','0','0','0','21.876,1.643,-25.98','0','1'),
('3148003','','3148','1','60461','0','1','0','0','0','0','0','26.324,1.643,-21.38','0','1'),
('3148004','','3148','1','60462','0','1','0','0','0','0','0','25.625,1.643,-27.92','0','1'),
('3148005','','3148','1','60463','0','1','0','0','0','0','0','28.451,1.643,-25.42','0','1'),
('3148006','','3148','1','30680','0','1','0','0','0','0','0','34.381,1.87,-34.101','-44','1'),
('3148007','','3148','1','30681','0','1','0','0','0','0','0','28.351,1.643,-28.22','0','1'),
('3148008','','3148','1','30682','0','1','0','0','0','0','0','-4.6203,0.07,1.9101','0','1'),
('3148009','','3148','1','30683','0','1','0','0','0','0','0','-38.99,2.53,30.1201','0','1'),
('3148010','','3148','4','1122','0','1','0','0','0','0','0','17.38,1.65,-16.6901','-44','1');


INSERT INTO `game_map` (`id`, `name`, `group`, `type`, `map_attr`, `map_times`, `team_max`, `team_min`, `fire`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `time`) VALUES 
(3148, '奥兹家族-地下研究室', 1, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2400);

INSERT INTO `valve` (`id`, `valve_status`, `type`, `data1`, `data2`) VALUES 
(1122, 0, 3, 0, 0);
