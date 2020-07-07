###################################################
#20200605[终焉誓约][任务脚本]修改bug-物品的flag和price字段的修改(倪祖伟)
#by:倪祖伟
#date:2020-06-05
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-373843.aspx
###################################################
#注释部分

#打开注释部分

###################################################
UPDATE `itemtype` SET `flag`=67 WHERE `id`=610012;
UPDATE `itemtype` SET `flag`=67 WHERE `id`=610013;
UPDATE `itemtype` SET `flag`=67 WHERE `id`=610014;

UPDATE `itemtype` SET `flag`=67 WHERE `id`=610022;
UPDATE `itemtype` SET `flag`=67 WHERE `id`=610023;
UPDATE `itemtype` SET `flag`=67 WHERE `id`=610024;

UPDATE `itemtype` SET `flag`=3 WHERE `id`=5000012;
UPDATE `itemtype` SET `flag`=3 WHERE `id`=5000023;
UPDATE `itemtype` SET `flag`=3 WHERE `id`=5000034;

UPDATE `itemtype` SET `price`=50000  WHERE `id`=201002;
UPDATE `itemtype` SET `price`=150000 WHERE `id`=201003;
UPDATE `itemtype` SET `price`=500000 WHERE `id`=201004;

UPDATE `award_acquire` SET `item_num`=50000  WHERE `award_id`=4000050;
UPDATE `award_acquire` SET `item_num`=150000 WHERE `award_id`=4000051;
UPDATE `award_acquire` SET `item_num`=500000 WHERE `award_id`=4000052;
