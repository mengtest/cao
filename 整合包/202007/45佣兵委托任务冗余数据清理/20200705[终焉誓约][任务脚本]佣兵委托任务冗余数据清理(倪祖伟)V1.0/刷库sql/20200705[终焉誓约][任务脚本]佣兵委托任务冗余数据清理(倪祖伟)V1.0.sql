###################################################
#20200705[终焉誓约][任务脚本]佣兵委托任务冗余数据清理(倪祖伟)
#by:倪祖伟
#date:2020-07-05
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-374096.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `gen_event` WHERE `id` in (2001186,2001187,2001188,2001189,2001190,2001191,2001192,2001193,2001194,2001195,2001196,2001197,2001198,2001503,2001504,2001505,2001529);
DELETE FROM `npc_group` WHERE `id` in (30155,60057);
###################################################
