###################################################
#20190905[终焉誓约][任务脚本]第三片区部分探索层野怪替换成悬赏任务怪(倪祖伟)
#by:倪祖伟
#date:2019-09-05
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-345768.aspx
###################################################
#注释部分

#打开注释部分
delete from monster where `id` in (1000568,1000571,1000573,1000579,1000580,1000583,1000585,1000587,1000589,1000788,1000789,1000791,1000794);
delete from gen_event where `id` in (20050139,20050142,20050144,20050150,20050151,20050154,20050156,20050158,20050160,20050272,20050273,
20050275,20050278,20050291,20050293,20050296,20050299,20050302,20050306,20050310,20050313,20050316,20050317,20050331,20050333,20050337,20050338);
###################################################
insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('20050139','狂战指挥官托特','2005','2','300151','0','0','0','0','0','0','75','14.03,4.91,-3.18','220','1'),
('20050142','邪鳍海魔奥利弗','2005','2','300154','0','0','0','0','0','0','0','393.28,-2.11,164.01','90','1'),
('20050144','漆黑侍魔者巴罗','2005','2','300156','0','0','0','0','0','0','0','357.12,-0.04,-355.99','260','1'),
('20050150','猩红鞭刺者多琳','2005','2','300162','0','0','0','0','0','0','75','-2.36,10.91,-45.93','-90','1'),
('20050151','实验合成兽巴德','2005','2','300163','0','0','0','0','0','0','75','-34.90,-0.89,-3.16','270','1'),
('20050154','欲望男爵舒克','2005','2','300166','0','0','0','0','0','0','0','444.12,0.66,102.46','180','1'),
('20050156','翼魔统领塞曼','2005','2','300168','0','0','0','0','0','0','0','268.79,6.05,-315.32','50','1'),
('20050158','暗影操控者格斯','2005','2','300170','0','0','0','0','0','0','0','324.68,5.28,-309.40','45','1'),
('20050160','钢羽枭鹰伊伦','2005','2','300172','0','0','0','0','0','0','0','356.90,0.48,-274.06','200','1'),
('20050272','碎岩战锤查理','2005','2','300178','0','0','0','0','0','0','73','61.21,28.70,-349.59','100','1'),
('20050273','烈炎斧兽凯恩特','2005','2','300179','0','0','0','0','0','0','73','23.73,29.21,-374.32','80.57','1'),
('20050275','暗金领主维恩','2005','2','300181','0','0','0','0','0','0','73','6.3,22.804,-318.1','-120','1'),
('20050278','机械魔人杰森','2005','2','300184','0','0','0','0','0','0','73','83.56,25.74,-347.11','250','1'),
('20050291','实验合成兽巴德','2005','2','900531','0','1','0','0','0','0','0','-34.90,-0.89,-3.16','270','1'),
('20050293','欲望男爵舒克','2005','2','900533','0','1','0','0','0','0','0','444.12,0.66,102.46','180','1'),
('20050296','钢羽枭鹰伊伦','2005','2','900536','0','1','0','0','0','0','0','356.90,0.48,-274.06','200','1'),
('20050299','翼魔统领塞曼','2005','2','900539','0','1','0','0','0','0','0','268.79,6.05,-315.32','50','1'),
('20050302','暗金领主维恩','2005','2','900542','0','1','0','0','0','0','73','6.3,22.804,-318.1','-120','1'),
('20050306','烈炎斧兽凯恩特','2005','2','900546','0','1','0','0','0','0','73','23.73,29.21,-374.32','80.57','1'),
('20050310','暗影操控者格斯','2005','2','900550','0','1','0','0','0','0','0','324.68,5.28,-309.40','0','1'),
('20050313','猩红鞭刺者多琳','2005','2','900553','0','1','0','0','0','0','0','-2.36,10.91,-45.93','-90','1'),
('20050316','碎岩战锤查理','2005','2','900556','0','1','0','0','0','0','0','61.21,28.70,-349.59','100','1'),
('20050317','邪鳍海魔奥利弗','2005','2','900557','0','1','0','0','0','0','0','393.28,-2.11,164.01','90','1'),
('20050331','漆黑侍魔者巴罗','2005','2','900567','0','1','0','0','0','0','0','357.12,-0.04,-355.99','260','1'),
('20050333','狂战指挥官托特','2005','2','900569','0','1','0','0','0','0','0','14.03,4.91,-3.18','220','1'),
('20050337','深渊铁蹄卡萨帕','2005','2','900573','0','1','0','0','0','0','0','57.37,29.24,-361.30','28.62','1'),
('20050338','机械魔人杰森','2005','2','900574','0','1','0','0','0','0','0','83.56,25.74,-347.11','250','1');

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('1000568','狂战指挥官托特','201','1','1','4','1','1','1000568','','5201101;5201102;5201103','0,1;0,2,2','0','0,1;0,0,2;0,1;0,1,2,2;0','0','0'),
('1000571','邪鳍海魔奥利弗','101','1','1','6','1','1','1000571','','1001201;1001202;1001203','2,0,1,0;0,1,2','0','2,0,1,0;0,1,2','0','0'),
('1000573','漆黑侍魔者巴罗','301','1','1','6','1','1','1000573','','900101;900102;900103;900104','1,1,3;0,2,2','0','0,1,2;0,1,3;0,1,2','0','0'),
('1000579','猩红鞭刺者多琳','201','1','1','4','1','0','1000579','1031','1002201;1002202;1002203','0,1,0;0,1,2','0','0,1;0,1,2;1,0,1;0,1;1,0,2','0','0'),
('1000580','实验合成兽巴德','201','1','1','6','1','1','1000580','1021','1003301;1003302;1003303','0,1,2;0,0,1','0','0,0,2;0,0,1;0,1','0','0'),
('1000583','欲望男爵舒克','201','1','1','4','1','1','1000583','','1003201;1003202;1003203','1,1,2;0,0,2','0','0,0,1;0,0,1;0,1,2;0,0,1;0,1,2,2','0','0'),
('1000585','翼魔统领塞曼','301','1','1','6','1','0','1000585','','900201;900202;900203;900204','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1000587','黑背暴熊','204','1','1','3','1','1','1000587','','1001301;1001302;1001303','0,1,2;1,0,1','0','2,1,0;0,1,1;0,1,1;1,0,1,2','0','0'),
('1000589','钢羽枭鹰伊伦','203','1','1','1','1','0','1000589','','5201201;5201202;5201203','0,1,0,2;1,0,1','0','1,0,1,0,2;0,1,1;0,1,1;1,0,1,2','0','0'),
('1000788','碎岩战锤查理','203','1','1','4','1','0','1000788','','800001;800002;800003','0,1,2;1,2,0,2','0','0,1,2;1,2,0,2','0','0'),
('1000789','烈炎斧兽凯恩特','304','1','1','6','1','0','1000789','','1003601;1003602;1003603;1003604','1,0,1,2;0,1,3','0','0,1,2;1,0,3;1,0,2;1,1,3;1,0,2','0','0'),
('1000791','暗金领主维恩','205','1','1','4','2','0','1000791','','5202101;5202102;5202103','2,0;0,1,1','0','0,0;0,1,2;0,0;0,1;0,1,2,2','0','0'),
('1000794','机械魔人杰森','301','1','1','6','1','0','1000794','','5202201;5202202;5202203;5202204','0,1,2,3;1,0,2','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0');
