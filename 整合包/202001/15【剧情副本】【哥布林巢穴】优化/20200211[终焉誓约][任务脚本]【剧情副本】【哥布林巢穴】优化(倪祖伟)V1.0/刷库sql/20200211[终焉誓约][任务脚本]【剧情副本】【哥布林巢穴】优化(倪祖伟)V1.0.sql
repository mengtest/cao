###################################################
#20200211[终焉誓约][任务脚本]【剧情副本】【哥布林巢穴】优化(倪祖伟)
#by:倪祖伟
#date:2020-02-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-360198.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `monster` WHERE `id`=1000921;
DELETE FROM `npc_group` WHERE `id`=40034;
DELETE FROM `attribute` WHERE `id`=1000921;
DELETE FROM `monster_group` WHERE `id`=200091;
DELETE FROM `gen_event` WHERE `id` in (3031011,3031028);
###################################################
