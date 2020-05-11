###################################################
#20191109[终焉誓约][任务脚本]奥兹家族任务优化---第三天(倪祖伟)
#by:倪祖伟
#date:2019-11-09
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-352679.aspx
###################################################
#注释部分
#DELETE FROM `task_index` WHERE `taskid`=70435;
#DELETE FROM `award_acquire` WHERE `award_id` in (2000660,2000661,2000662);
#打开注释部分
DELETE FROM `award_acquire` WHERE `award_id` = 1000970;
###################################################
INSERT INTO `task_index` (`taskid`, `data_index`, `mask_index`) VALUES 
(70435, 24, 20);

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000970, 1, 1, 3060310, 3, 10000, 0),
(1000970, 1, 1, 1, 100, 10000, 0),
(2000660, 1, 1, 3, 5000, 10000, 0),
(2000661, 1, 1, 1, 50, 10000, 0),
(2000662, 1, 1, 3060120, 1, 10000, 0);

UPDATE `gen_event` SET `event_id`=1094 WHERE `id`=3097012;
