###################################################
#20200520[终焉誓约][任务脚本]修改西蒙甲子园之梦的售卖价格(倪祖伟)
#by:倪祖伟
#date:2020-05-20
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-372171.aspx
###################################################
#注释部分
#DELETE FROM `fashion_shop` WHERE `id` = 1001;
#打开注释部分
DELETE FROM `fashion_shop` WHERE `id` in (1,2,3,4);
###################################################
INSERT INTO `fashion_shop` (`id`, `fashion_id`, `start_time`, `end_time`, `money_type`, `price`) VALUES 
(1, 20103, 20200101000000,20201231000000, 10, 272),
(2, 30104, 20200101000000,20201231000000, 10, 392),
(3, 40101, 20200101000000,20201231000000, 2, 196),
(1001, 10103, 20200101000000,20201231000000, 999, 28);
