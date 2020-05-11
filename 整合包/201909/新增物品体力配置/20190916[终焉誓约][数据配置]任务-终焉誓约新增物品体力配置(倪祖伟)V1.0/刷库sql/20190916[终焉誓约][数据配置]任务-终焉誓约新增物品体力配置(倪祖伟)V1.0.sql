###################################################
#20190916[终焉誓约][数据配置]任务-终焉誓约新增物品体力配置(倪祖伟)
#by:倪祖伟
#date:2019-09-16
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-347025.aspx
###################################################
#注释部分
#DELETE FROM `itemtype` WHERE `id`=9;
#打开注释部分

###################################################
INSERT INTO `itemtype` (`id`, `name`, `sort`, `amount_limit`, `flag`, `price`, `awardid`, `actionid`) VALUES
(9, '干劲', 0, 0, 2, 1, 0, 0);
