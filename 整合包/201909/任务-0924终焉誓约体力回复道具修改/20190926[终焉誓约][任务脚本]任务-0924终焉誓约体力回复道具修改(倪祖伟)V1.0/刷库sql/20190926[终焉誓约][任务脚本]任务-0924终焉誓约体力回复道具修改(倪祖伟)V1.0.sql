###################################################
#20190926[终焉誓约][任务脚本]任务-0924终焉誓约体力回复道具修改(倪祖伟)
#by:倪祖伟
#date:2019-09-26
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-347977.aspx
###################################################
#注释部分

#打开注释部分

###################################################
UPDATE `config` SET `type_id`=2, `data1`=30, `desc`='道具点数回复体力' WHERE `id`=162;
UPDATE `config` SET `type_id`=2, `desc`='道具点数回复体力' WHERE `id`=163;

UPDATE `itemtype` SET `flag`=16 WHERE `id`=204010;
UPDATE `itemtype` SET `flag`=16 WHERE `id`=204020;
UPDATE `itemtype` SET `flag`=16 WHERE `id`=204030;

