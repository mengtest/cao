###################################################
#20200420[终焉誓约][任务脚本]任务-新本命星级效果和新增的本命配置(倪祖伟)
#by:倪祖伟
#date:2020-04-20
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-367772.aspx
###################################################
#注释部分
#delete from pet where id in(4003,4004,4194,4204,4214,4234);
#打开注释部分

###################################################

insert into pet(`id`,`pet_name`,`pet_type`,`start_life`,`growth_life`,`start_phy_atk`,`growth_phy_atk`,`start_mgc_atk`,`growth_mgc_atk`,`start_phy_def`,`growth_phy_def`,`start_mgc_def`,`growth_mgc_def`,`skill0_id`,`skill0_id2`,`skill0_id3`,`exclusive_hero`,`pet_money`) values
('4003','','1','1280','1600000','128','160000','128','160000','51','64000','51','64000','0','0','0','0','25'),
('4004','','1','1600','2000000','160','200000','160','200000','64','80000','64','80000','0','0','0','0','25'),
('4194','','2','1600','2000000','176','220000','144','180000','76','96000','44','56000','479','0','0','0','25'),
('4204','','1','2000','2500000','128','160000','128','160000','70','88000','70','88000','480','0','0','0','25'),
('4214','','1','1600','2000000','160','200000','160','200000','64','80000','64','80000','481','0','0','0','25'),
('4234','','3','1440','1800000','144','180000','200','250000','38','48000','64','80000','483','0','0','0','25');
