###################################################
#20200102[终焉誓约][任务脚本]【材料副本】【材料副本3】优化(倪祖伟)
#by:倪祖伟
#date:2020-01-02
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-357846.aspx
###################################################
#注释部分

#打开注释部分
delete from gen_event where `id` in (3133001,3133011,3133013,3133014,3133015,3133201);
###################################################
insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('3133001','工具箱','3133','1','40285','0','1','0','0','0','0','0','30.392,-3.912,32.389','180','1'),
('3133011','盗墓贼的尸体','3133','1','60457','0','1','0','0','0','0','0','23.286,-3.921,29.589','90','1'),
('3133013','佣兵亚特','3133','1','20937','0','1','0','0','0','0','0','36.85,-2.92,31.9','180','1'),
('3133014','佣兵伍德','3133','1','20938','0','1','0','0','0','0','0','35.04,-2.3,19.549','90','1'),
('3133015','佣兵特朗','3133','1','20939','0','1','0','0','0','0','0','37.663,-0.86,4.664','-90','1'),
('3133201','空气墙','3133','4','1120','0','0','0','0','0','0','0','18.4,-3.921,29.1','90','1');
