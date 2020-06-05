###################################################
#20200527[终焉誓约][任务脚本]英雄启源相关单据-启源道具转化货币(倪祖伟)
#by:倪祖伟
#date:2020-05-27
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-372952.aspx
###################################################
#注释部分
#DELETE FROM `exchange_limit` WHERE `id` in (3011154,3011164);
#打开注释部分

###################################################
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=30000 WHERE `id`=3011014;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=30000 WHERE `id`=3011024;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=150000 WHERE `id`=3011034;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=30000 WHERE `id`=3011044;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=30000 WHERE `id`=3011054;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=30000 WHERE `id`=3011064;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=150000 WHERE `id`=3011074;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=30000 WHERE `id`=3011084;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=150000 WHERE `id`=3011114;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=150000 WHERE `id`=3011124;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=150000 WHERE `id`=3011134;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=30000 WHERE `id`=3011144;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=150000 WHERE `id`=3011154;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=150000 WHERE `id`=3011164;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=30000 WHERE `id`=3012014;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=30000 WHERE `id`=3013014;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=30000 WHERE `id`=3013024;
UPDATE `itemtype` SET `exchangeid`=31, `exchange_radio`=150000 WHERE `id`=3014014;

INSERT INTO `exchange_limit` (`id`, `limit_type`, `data1`, `data2`, `data3`, `data4`) VALUES 
(3011154, 1, 115, 2, 7, 0),
(3011164, 1, 116, 2, 7, 0);
