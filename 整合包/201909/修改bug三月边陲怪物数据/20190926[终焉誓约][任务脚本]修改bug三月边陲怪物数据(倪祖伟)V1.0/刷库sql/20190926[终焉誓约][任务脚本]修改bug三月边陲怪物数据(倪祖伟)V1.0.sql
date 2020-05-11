###################################################
#20190926[终焉誓约][任务脚本]修改bug三月边陲怪物数据(倪祖伟)
#by:倪祖伟
#date:2019-09-26
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-346692.aspx
###################################################
#注释部分

#打开注释部分
delete from monster where `id` in (9000072,9000073);
###################################################
UPDATE `monster_group` SET `fight`=0 WHERE `id`=900240;
UPDATE `monster_group` SET `fight`=0 WHERE `id`=900241;
UPDATE `monster_group` SET `fight`=0 WHERE `id`=900242;
UPDATE `monster_group` SET `fight`=0 WHERE `id`=900243;


insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('9000072','魔脊半人鱼','0','1','0','5','1','35','9000072','1071;1101','1004701;1004702;1004703','1,0,1;0,1,2','0','0,0,1;0,0,2;0,1,1','0','0'),
('9000073','阔斧鹿角兽','0','0','0','1','1','35','9000073','1221','1003401;1003402;1003403','1,0,1;0,1,2','0','0,0,1;0,0,2;0,1,1','0','0');
