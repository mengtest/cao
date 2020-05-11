###################################################
#20190919[终焉誓约][任务脚本]修改bug，奖励SQ存在空奖励(倪祖伟)
#by:倪祖伟
#date:2019-09-19
#论坛链接:如：http://forum.nderp.99.com/Forum/TopicList-347509.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `award_acquire` WHERE `award_id`=2000021 AND `award_type_id`=4 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000021 AND `award_type_id`=8 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000022 AND `award_type_id`=4 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000022 AND `award_type_id`=8 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000023 AND `award_type_id`=4 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000023 AND `award_type_id`=8 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000025 AND `award_type_id`=4 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000025 AND `award_type_id`=8 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000026 AND `award_type_id`=4 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000026 AND `award_type_id`=8 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000027 AND `award_type_id`=4 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000027 AND `award_type_id`=8 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000028 AND `award_type_id`=4 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000028 AND `award_type_id`=8 AND `item_num` = 0;
DELETE FROM `award_acquire` WHERE `award_id`=2000030 AND `award_type_id`=8 AND `item_num` = 0;
###################################################

DELETE FROM `award_acquire` WHERE `award_id` = 6000000;
###################################################
INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES
(6000000, 1, 1, 1, 50, 10000, 0);
