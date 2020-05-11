###################################################
#20191219[终焉誓约][任务脚本]【雾海的危机】【前置任务】优化(倪祖伟)
#by:倪祖伟
#date:2019-12-23
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-355396.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `task_index` WHERE `taskid` >= 70223 and `taskid` <= 70227;
DELETE FROM `gen_event` WHERE `id` >= 2002035 and `id` <= 2002040;
DELETE FROM `gen_event` WHERE `id` = 20010251;
DELETE FROM `npc_group` WHERE `id`in (20948,30658);
DELETE FROM `monster` WHERE `id` >= 9000654 AND `id` <= 9000658;
DELETE FROM `attribute` WHERE `id` >= 9000654 AND `id` <= 9000658;
DELETE FROM `monster_group` WHERE `id` >= 900585 AND `id` <= 900589;
###################################################
UPDATE `gen_event` SET `name`='老船长佩翁', `flag`=0 WHERE `id`=20010252;
