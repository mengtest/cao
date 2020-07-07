###################################################
#20200630[终焉誓约][任务脚本]最新版本佣兵委托任务调整制作一鲸脊岛(倪祖伟)
#by:倪祖伟
#date:2020-06-30
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-374789.aspx
###################################################
#注释部分
#DELETE FROM `npc_group` WHERE `id`=30811;
#打开注释部分
delete from monster where `id`>=9000424 and `id`<=9000426;
DELETE FROM `npc_group` WHERE `id` in (20589,60326);
###################################################

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('9000424','','102','0','1','4','1','1','9000424','','1004601;1004602;1004603','0,1,1;0,1,2','0','0,1,1;0,1,2','0','0'),
('9000425','','203','0','1','4','1','1','9000425','','1000201;1000202;1000203','0,2;1,0,1,0;1,0,1,2','0','0,2;1,0,1,0;1,2','0','0'),
('9000426','','102','0','1','5','1','1','9000426','','1000801;1000802','0,0,1;0,0,1','0','0,0,1;0,0,1','0','0');

UPDATE `gen_event` SET `name`='', `position`='479.68,-2.06,103.62', `rotation_y`=225 WHERE `id`=20050193;
UPDATE `gen_event` SET `name`='', `position`='477.50,-2.06,102.91', `rotation_y`=52.06 WHERE `id`=20050194;
UPDATE `gen_event` SET `name`='', `intask`=1, `position`='392.74,4.06,78.41', `rotation_y`=26.57 WHERE `id`=20050195;

UPDATE `gen_event` SET `name`='', `event_id`=30811, `position`='392.74,4.06,78.41' WHERE `id`=20050191;

UPDATE `monster_group` SET `name`='', `monster`='9000424;9000425' WHERE `id`=900447;

UPDATE `monster` SET `attr_id`=9000428 WHERE `id`=9000428;

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(30811, '11', 1);
