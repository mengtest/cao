###################################################
#20190924[终焉誓约][任务脚本]修复bug恢复体力的物品配置错误(倪祖伟)
#by:倪祖伟
#date:2019-09-24
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-347025.aspx
###################################################
#注释部分

#打开注释部分

###################################################
UPDATE `itemtype` SET `flag`=10, `price`=100 WHERE `id`=204010;
UPDATE `itemtype` SET `flag`=10, `price`=100 WHERE `id`=204020;
UPDATE `itemtype` SET `flag`=10, `price`=100 WHERE `id`=204030;
