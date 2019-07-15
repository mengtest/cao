###################################################
#20190625[终焉誓约][任务脚本]【新版日常副本】【材料副本】5号副本--制作(倪祖伟)
#by:倪祖伟
#date:2019-06-25
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-337668.aspx
###################################################
#注释部分
#DELETE FROM `game_map` WHERE `id`=3132;
#DELETE FROM `valve` WHERE `id`=1118;
#DELETE FROM `itemtype` WHERE `id`=7000312;
#DELETE FROM `gen_event` WHERE `id`>=3132001 AND `id`<=3132018;
#DELETE FROM `npc_group` WHERE `id` in (20931,20932,20933,20934,40284,60445,60446);
#DELETE FROM `award_acquire` WHERE `award_id` in (1000579,1000580,1000581,1000585,1000586,1000587);
#打开注释部分
###################################################
INSERT INTO `game_map` (`id`, `name`, `group`, `type`, `map_attr`, `map_times`, `team_max`, `team_min`, `fire`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `time`) VALUES 
(3132, '虫巢调研', 1, 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1200);

INSERT INTO `itemtype` (`id`, `name`, `sort`, `amount_limit`, `flag`, `price`, `awardid`, `actionid`) VALUES 
(7000312, '驱虫剂', 8, 9999, 2, 0, 0, 0);

insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('3132001','空气墙','3132','4','1118','0','1','0','0','0','0','0','38.177,0.08,50.733','0','1'),
('3132002','昆虫学家法布尔','3132','1','20931','0','1','0','0','0','0','0','40.943,0.08,58.468','132.91','1'),
('3132003','佣兵利拉弗','3132','1','20932','0','1','0','0','0','0','0','62.381,0.08,66.68','-9.1','1'),
('3132004','佣兵迪奥','3132','1','20933','0','1','0','0','0','0','0','74.77,0.08,64.201','-171.3','1'),
('3132005','佣兵达兹马','3132','1','20934','0','1','0','0','0','0','0','73.166,0.08,50.16','-49.4','1'),
('3132007','商人的货箱','3132','1','40284','0','1','0','0','0','0','0','44.663,0.08,66.65','139.08','1'),
('3132008','商人的货箱','3132','1','40284','0','1','0','0','0','0','0','63.30,0.08,62.301','113.95','1'),
('3132009','商人的货箱','3132','1','40284','0','1','0','0','0','0','0','64.8,0.08,54.1701','49.085','1'),
('3132010','商人的货箱','3132','1','40284','0','1','0','0','0','0','0','76.413,0.08,51.65','-40.914','1'),
('3132011','虫卵','3132','1','60445','0','1','0','0','0','0','0','56.501,0.08,73.3','0','1'),
('3132012','虫卵','3132','1','60445','0','1','0','0','0','0','0','73.8,0.08,71.501','0','1'),
('3132013','虫卵','3132','1','60445','0','1','0','0','0','0','0','76.833,0.08,60.4','0','1'),
('3132014','虫卵','3132','1','60445','0','1','0','0','0','0','0','68.5,0.08,51.301','0','1'),
('3132015','大石块','3132','1','60446','0','1','0','0','0','0','0','50.3,1.20,71.601','0','1'),
('3132016','大石块','3132','1','60446','0','1','0','0','0','0','0','68.60,0.7,70.701','0','1'),
('3132017','大石块','3132','1','60446','0','1','0','0','0','0','0','78.3,0.08,56.101','0','1'),
('3132018','大石块','3132','1','60446','0','1','0','0','0','0','0','63.85,0.08,57.83','0','1');

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(20931, '昆虫学家法布尔', 1),
(20932, '佣兵利拉弗', 1),
(20933, '佣兵迪奥', 1),
(20934, '佣兵达兹马', 1),
(40284, '商人的货箱', 1),
(60445, '虫卵', 1),
(60446, '大石块', 1);

insert into valve(`id`,`valve_status`,`type`,`data1`,`data2`) values
('1118','0','3','0','0');

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000579, 1, 1, 2110001, 10, 5000, 0),
(1000579, 1, 1, 2110001, 12, 8000, 5000),
(1000579, 1, 1, 2110001, 15, 10000, 8000),
(1000580, 1, 1, 2110001, 10, 5000, 0),
(1000580, 1, 1, 2110001, 10, 5000, 0),
(1000580, 1, 1, 2110001, 10, 5000, 0),
(1000580, 1, 1, 2110001, 12, 8000, 5000),
(1000580, 1, 1, 2110001, 12, 8000, 5000),
(1000580, 1, 1, 2110001, 12, 8000, 5000),
(1000580, 1, 1, 2110001, 15, 10000, 8000),
(1000580, 1, 1, 2110001, 15, 10000, 8000),
(1000580, 1, 1, 2110001, 15, 10000, 8000),
(1000581, 1, 1, 2110001, 10, 7000, 0),
(1000581, 1, 1, 2110001, 12, 10000, 7000),
(1000585, 1, 1, 7000312, 5, 10000, 0),
(1000586, 1, 1, 2110001, 10, 7000, 0),
(1000586, 1, 1, 2110001, 12, 10000, 7000),
(1000586, 1, 1, 7000312, 1, 10000, 0),
(1000587, 1, 1, 120013, 1, 5000, 0),
(1000587, 1, 1, 120023, 1, 10000, 0),
(1000587, 2, 1, 2110001, 10, 5000, 0),
(1000587, 2, 1, 2110001, 12, 8000, 5000),
(1000587, 2, 1, 2110001, 15, 10000, 8000);

