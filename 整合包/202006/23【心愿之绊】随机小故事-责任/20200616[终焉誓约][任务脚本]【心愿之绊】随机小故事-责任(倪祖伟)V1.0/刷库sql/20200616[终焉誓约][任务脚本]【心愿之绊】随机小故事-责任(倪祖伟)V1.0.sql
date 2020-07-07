###################################################
#20200616[终焉誓约][任务脚本]【心愿之绊】随机小故事-责任(倪祖伟)
#by:倪祖伟
#date:2020-06-16
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-374858.aspx
###################################################
#注释部分
#delete from gen_event where `id`>=20010369 and `id`<=20010371;
#delete from npc_group where `id` in (10046,21457,30790);
#delete from award_acquire where `award_id` = 2000814;
#delete from task_index where `taskid` >= 70626 and `taskid` <= 70631;
#打开注释部分

###################################################
insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('20010369','','2001','1','10046','0','1','0','0','0','0','0','-98.75,0.00,38.43','0','1'),
('20010370','','2001','1','21457','0','1','0','0','0','0','0','-66.97,0.88,38.48','180','1'),
('20010371','','2001','1','30790','0','1','0','0','0','0','0','-2.5,0.14,0.23','0','1');

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(10046, '亚德里住宅', 1),
(21457, '矿工亚摩斯', 1),
(30790, '陷阱', 1);

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(2000814, 1, 1, 120023, 1, 10000, 0),
(2000814, 1, 1, 204030, 1, 10000, 0);

INSERT INTO `task_index` (`taskid`, `data_index`, `mask_index`) VALUES 
(70626, 25, 63),
(70627, 26, 58),
(70628, 26, 59),
(70629, 26, 60),
(70630, 26, 61),
(70631, 26, 62);
