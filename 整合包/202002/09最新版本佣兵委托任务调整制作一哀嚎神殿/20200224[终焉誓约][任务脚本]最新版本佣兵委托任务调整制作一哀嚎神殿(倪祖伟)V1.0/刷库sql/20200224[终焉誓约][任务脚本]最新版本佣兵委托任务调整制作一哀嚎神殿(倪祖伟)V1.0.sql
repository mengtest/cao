###################################################
#20200224[终焉誓约][任务脚本]最新版本佣兵委托任务调整制作一哀嚎神殿(倪祖伟)
#by:倪祖伟
#date:2020-02-24
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-362270.aspx
###################################################
#注释部分
#DELETE FROM `gen_event` WHERE `id` in (20010311,20010312,20010313);
#DELETE FROM `npc_group` WHERE `id` in (21173,21174,21175);
#打开注释部分
DELETE FROM `attribute` WHERE `id` in (9000150,9000256,9000258);
DELETE FROM `monster` WHERE `id` in (9000150,9000256,9000258,9000173);
DELETE FROM `monster_group` WHERE `id` in (900182,900339,900340);
DELETE FROM `npc_group` WHERE `id` = 60226;
DELETE FROM `gen_event` WHERE `id` in (2001506,2001996,2001999);
###################################################
UPDATE `gen_event` SET `intask`=1 WHERE `id`=2001502;
UPDATE `gen_event` SET `intask`=1 WHERE `id`=2001757;
UPDATE `gen_event` SET `intask`=1 WHERE `id`=2001998;

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(21173, '战魂之殇', 1),
(21174, '狮心魔骑贝恩', 1),
(21175, '异变者法师', 1);

insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('20010311','战魂之殇','2001','1','21173','0','1','0','0','0','0','0','-85.84,0.10,-138.29','135','1'),
('20010312','狮心魔骑贝恩','2001','1','21174','0','1','0','0','0','0','0','-51.44,0.11,-200.73','45','1'),
('20010313','异变者法师','2001','1','21175','0','1','0','0','0','0','0','-78.10,0.06,-162.97','78.72','1');

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('9000173','狮心魔骑贝恩','201','0','1','3','1','1','9000173','','5200801;5200802;5200803','0,1;0,0,2;0,0','0','0,1;0,0,2;0,0;1,2,2;0,0','0','0');
