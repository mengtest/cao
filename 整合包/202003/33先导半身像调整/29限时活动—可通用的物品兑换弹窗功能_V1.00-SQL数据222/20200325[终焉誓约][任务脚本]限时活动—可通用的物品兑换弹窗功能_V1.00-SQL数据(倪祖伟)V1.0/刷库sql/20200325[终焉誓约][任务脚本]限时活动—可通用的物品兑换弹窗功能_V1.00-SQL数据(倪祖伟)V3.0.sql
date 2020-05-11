###################################################
#20200325[终焉誓约][任务脚本]限时活动—可通用的物品兑换弹窗功能_V1.00-SQL数据(倪祖伟)
#by:倪祖伟
#date:2020-03-25
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-364219.aspx
###################################################
#注释部分
DELETE FROM `exchange` WHERE `id` in (1,2,3,4,5);
DELETE FROM `shop_type_info` WHERE `id` = 9;
#打开注释部分

###################################################
INSERT INTO `exchange` (`id`, `shop_type`, `target_type`, `target_id`, `target_num`, `limit_times`, `consum1_id`, `consum1_num`, `consum2_id`, `consum2_num`, `consum3_id`, `consum3_num`) VALUES 
(1, 100, 1, 3010013, 2, 0, 3060030, 1, 204010, 10, 0, 0),
(2, 100, 2, 401, 1, 3, 3014014, 1, 3060030, 1, 204010, 10),
(3, 100, 3, 4122, 1, 3, 3060030, 5, 0, 0, 0, 0),
(4, 100, 4, 10102, 1, 1, 3060030, 5, 0, 0, 0, 0),
(5, 100, 5, 10000, 1, 1, 3060030, 10, 0, 0, 0, 0);

INSERT INTO `shop_type_info` (`id`, `shop_type`, `deblocking_id`, `refresh_time`, `times_type`, `refresh_money`, `money_id`, `ticket_id`, `time_type`, `time_min`, `time_max`) VALUES 
(9, 100, 23, 0, 0, 0, 0, 0, 1, 20200226000000, 20200326000000);
