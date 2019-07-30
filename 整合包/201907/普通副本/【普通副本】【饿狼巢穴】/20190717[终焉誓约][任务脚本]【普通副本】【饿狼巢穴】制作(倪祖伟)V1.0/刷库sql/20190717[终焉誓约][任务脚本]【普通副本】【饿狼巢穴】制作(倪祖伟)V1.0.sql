###################################################
#20190717[终焉誓约][任务脚本]【普通副本】【饿狼巢穴】制作(倪祖伟)
#by:倪祖伟
#date:2019-07-17
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-340278.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `gen_event` WHERE `id`=3038001;
DELETE FROM `monster_group` WHERE `id`=200231;
DELETE FROM `monster` WHERE `id` in (1000197,1000199,1000201);
###################################################
UPDATE `gen_event` SET `name`='野蛮孤狼',`path_id`=2 WHERE `id`=3038002;
UPDATE `gen_event` SET `name`='残暴孤熊',`path_id`=1 WHERE `id`=3038003;
UPDATE `gen_event` SET `name`='白眼独狼',`path_id`=3 WHERE `id`=3038004;
UPDATE `gen_event` SET `name`='冰霜巨熊',`path_id`=4 WHERE `id`=3038005;
UPDATE `gen_event` SET `name`='摄魂狼王',`path_id`=5 WHERE `id`=3038006;

UPDATE `monster_group` SET `name`='野蛮孤狼' WHERE `id`=200232;
UPDATE `monster_group` SET `name`='残暴孤熊' WHERE `id`=200233;
UPDATE `monster_group` SET `name`='白眼独狼' WHERE `id`=200234;
UPDATE `monster_group` SET `name`='冰霜巨熊' WHERE `id`=200235;
UPDATE `monster_group` SET `name`='摄魂狼王' WHERE `id`=200236;

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('1000199','残暴孤熊','102','0','1','1','1','5','10023','','1005301;1005302','0,0,1;0,0,1','0','0,0,1;0,0,1','0','0'),
('1000201','冰霜巨熊','101','0','1','1','1','5','10023','','1004901;1004902','0,0,1;0,0,1','0','0,0,1;0,0,1','0','0');
