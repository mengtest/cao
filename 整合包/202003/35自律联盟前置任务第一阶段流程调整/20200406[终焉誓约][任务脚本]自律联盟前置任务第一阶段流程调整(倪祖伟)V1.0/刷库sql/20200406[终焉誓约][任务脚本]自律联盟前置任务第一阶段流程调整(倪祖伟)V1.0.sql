###################################################
#20200406[终焉誓约][任务脚本]自律联盟前置任务第一阶段流程调整(倪祖伟)
#by:倪祖伟
#date:2020-04-06
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-364499.aspx
###################################################
#注释部分
#delete from npc_group where id = 30744;
#打开注释部分
delete from attribute where id = 9000694;
delete from monster where id = 9000694;
delete from monster_group where id = 900613;
delete from gen_event where id = 1000297;

###################################################
insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('1000297','','1000','1','30744','0','1','0','0','0','0','0','-34.62,555.05,117.8','0','1');

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(30744, '陷阱', 1);
