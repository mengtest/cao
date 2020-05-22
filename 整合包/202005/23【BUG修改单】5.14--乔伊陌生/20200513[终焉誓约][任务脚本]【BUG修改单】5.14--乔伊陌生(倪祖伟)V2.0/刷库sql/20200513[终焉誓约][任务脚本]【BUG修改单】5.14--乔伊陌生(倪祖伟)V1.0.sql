###################################################
#20200513[终焉誓约][任务脚本]【BUG修改单】5.14--乔伊陌生(倪祖伟)
#by:倪祖伟
#date:2020-05-13
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-370528.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `award_acquire` WHERE `award_id`=2000786;
###################################################
INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(2000786, 1, 1, 1, 50, 10000, 0),
(2000786, 1, 1, 3060410, 5, 10000, 0),
(2000786, 1, 1, 204020, 1, 10000, 0);