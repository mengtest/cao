###################################################
#20200519[终焉誓约][任务脚本]【自律联盟】前置一阶段任务奖励修改(倪祖伟)
#by:倪祖伟
#date:2020-05-19
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-372030.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `award_acquire` WHERE `award_id`=2000679;
###################################################
INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(2000679, 1, 1, 5, 1000, 10000, 0),
(2000679, 1, 1, 204030, 1, 10000, 0),
(2000679, 1, 1, 120023, 1, 10000, 0),
(2000679, 1, 1, 3, 100000, 10000, 0);
