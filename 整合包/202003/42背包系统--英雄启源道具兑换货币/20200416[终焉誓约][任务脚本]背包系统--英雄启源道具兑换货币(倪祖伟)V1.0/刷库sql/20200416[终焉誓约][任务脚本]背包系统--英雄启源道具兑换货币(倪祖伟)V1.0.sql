###################################################
#20200416[终焉誓约][任务脚本]背包系统--英雄启源道具兑换货币(倪祖伟)
#by:倪祖伟
#date:2020-04-16
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-364949.aspx
###################################################
#注释部分
DELETE FROM `itemtype` WHERE `id` in (31,32);
#打开注释部分

###################################################
UPDATE `itemtype` SET `flag`=128, `exchangeid`=31, `exchange_radio`=300000 WHERE `id`=3011014;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=31, `exchange_radio`=300000 WHERE `id`=3012014;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=31, `exchange_radio`=300000 WHERE `id`=3013014;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=31, `exchange_radio`=300000 WHERE `id`=3011024;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=31, `exchange_radio`=300000 WHERE `id`=3013024;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=32, `exchange_radio`=500000 WHERE `id`=3011034;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=31, `exchange_radio`=300000 WHERE `id`=3011044;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=31, `exchange_radio`=300000 WHERE `id`=3011054;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=31, `exchange_radio`=300000 WHERE `id`=3011064;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=32, `exchange_radio`=500000 WHERE `id`=3011074;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=31, `exchange_radio`=300000 WHERE `id`=3011084;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=32, `exchange_radio`=500000 WHERE `id`=3014014;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=32, `exchange_radio`=500000 WHERE `id`=3011124;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=32, `exchange_radio`=500000 WHERE `id`=3011114;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=32, `exchange_radio`=500000 WHERE `id`=3011134;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=31, `exchange_radio`=300000 WHERE `id`=3011144;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=32, `exchange_radio`=500000 WHERE `id`=3011154;
UPDATE `itemtype` SET `flag`=128, `exchangeid`=32, `exchange_radio`=500000 WHERE `id`=3011164;

INSERT INTO `itemtype` (`id`, `name`, `sort`, `time_type`, `time_min`, `time_max`, `amount_limit`, `flag`, `price`, `awardid`, `actionid`, `exchangeid`, `exchange_radio`) VALUES 
(31, '萤玉', 0, 0, 0, 0, 0, 2, 10, 0, 0, 0, 0),
(32, '月鸣玉', 0, 0, 0, 0, 0, 2, 100, 0, 0, 0, 0);
