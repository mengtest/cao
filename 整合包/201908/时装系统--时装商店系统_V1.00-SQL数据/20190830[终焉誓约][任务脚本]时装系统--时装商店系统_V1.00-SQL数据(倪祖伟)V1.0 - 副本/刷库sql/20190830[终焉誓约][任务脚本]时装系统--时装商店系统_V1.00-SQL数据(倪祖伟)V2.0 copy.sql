###################################################
#20190830[终焉誓约][任务脚本]时装系统--时装商店系统_V1.00-SQL数据(倪祖伟)
#by:倪祖伟
#date:2019-08-30
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-345251.aspx
###################################################
#注释部分
#DELETE FROM `dailyact` WHERE `id`=10036;
#DELETE FROM `fashion_shop` WHERE `fashion_id` in (10102,10103,10301,10401,10801,20101,20102,20103,30103,30104,30202,40101);
#打开注释部分

###################################################
#INSERT INTO `dailyact` (`id`, `against_id`, `type`, `starttime`, `endtime`, `data1`, `data2`, `data3`, `day`) VALUES 
#(10036, 0, 10, 10000, 62359, 0, 0, 0, 0);

INSERT INTO `fashion_shop` (`fashion_id`, `dailyact_id`, `price`) VALUES 
(10102, 0, 100),
(10103, 0, 100),
(10301, 0, 100),
(10401, 0, 100),
(10801, 0, 100),
(20101, 0, 100),
(20102, 0, 100),
(20103, 0, 100),
(30103, 0, 100),
(30104, 0, 100),
(30202, 0, 100),
(40101, 0, 100);
