###################################################
#20200622[终焉誓约][任务脚本]【雾海危机】【cbt2】活动时间调整(倪祖伟)
#by:倪祖伟
#date:2020-06-22
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-375304.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `dailyact` WHERE `id`=10015;
###################################################
INSERT INTO `dailyact` (`id`, `against_id`, `type`, `starttime`, `endtime`, `data1`, `data2`, `data3`, `day`) VALUES 
(10015, 0, 9, 40000, 2359, 8, 7, 0, 0);
