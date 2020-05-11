###################################################
#20191119[终焉誓约][任务脚本]任务-速递商店(删除爱琪材料等)(倪祖伟)
#by:倪祖伟
#date:2019-11-19
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-353372.aspx
###################################################
#注释部分
#DELETE FROM `shop_refresh` WHERE `id` in (89,90,91,92);
#打开注释部分
DELETE FROM `shop_refresh` WHERE `id`=27;
###################################################
INSERT INTO `shop_refresh` (`id`, `shop_type`, `award_id`, `item_type`, `money_type`, `price`, `limit_amount`, `weight`) VALUES 
(89, 3, 5, 203003, 4, 6, 2, 1),
(90, 3, 5, 203002, 4, 2, 2, 1),
(91, 3, 6, 202003, 5, 6, 2, 1),
(92, 3, 6, 202002, 5, 2, 2, 1);

UPDATE `shop_refresh` SET `price`=20 WHERE `id`=43;
