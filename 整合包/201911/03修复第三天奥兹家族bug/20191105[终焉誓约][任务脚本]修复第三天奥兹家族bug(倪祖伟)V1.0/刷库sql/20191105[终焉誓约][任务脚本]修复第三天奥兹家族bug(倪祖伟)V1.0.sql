###################################################
#20191105[终焉誓约][任务脚本]修复第三天奥兹家族bug(倪祖伟)
#by:倪祖伟
#date:2019-11-05
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-349578.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `award_acquire` WHERE `award_id` = 1000970;
###################################################
INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000970, 1, 1, 3060310, 3, 10000, 0),
(1000970, 1, 1, 3060030, 1, 10000, 0);
