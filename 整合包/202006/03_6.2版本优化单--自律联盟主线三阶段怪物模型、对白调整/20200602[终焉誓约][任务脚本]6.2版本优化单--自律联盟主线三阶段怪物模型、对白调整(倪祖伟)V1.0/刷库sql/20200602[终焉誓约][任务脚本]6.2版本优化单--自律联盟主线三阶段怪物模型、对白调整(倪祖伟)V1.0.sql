###################################################
#20200602[终焉誓约][任务脚本]6.2版本优化单--自律联盟主线三阶段怪物模型、对白调整(倪祖伟)
#by:倪祖伟
#date:2020-06-02
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-373714.aspx
###################################################
#注释部分

#打开注释部分
delete from monster where `id` = 9000699;
###################################################
insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('9000699','','0','0','1','6','2','32','9000699','','5202201;5202202;5202203;5202204','0,1,2,3;1,0,2','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0');


UPDATE `gen_event` SET `position`='48.17,1.31,-36.48' WHERE `id`=1000302;
UPDATE `gen_event` SET `position`='50.47,1.29,-39.01' WHERE `id`=1000303;

UPDATE `gen_event` SET `position`='49.35,1.30,-39.28' WHERE `id`=20010361;
UPDATE `gen_event` SET `position`='48.52,1.31,-38.33' WHERE `id`=20010362;
