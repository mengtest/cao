###################################################
#20190718[终焉誓约][任务脚本]【普通副本】【哥布林巢穴】制作(倪祖伟)
#by:倪祖伟
#date:2019-07-18
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-340280.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `gen_event` WHERE `id` in (3030002,3030006,3030007,3030010,3030011,3030012);
DELETE FROM `monster_group` WHERE `id` = 200225;
DELETE FROM `monster` WHERE `id` in (1000192,1000194);
###################################################
UPDATE `gen_event` SET `name`='贪婪的哥布林', `path_id`=2 WHERE `id`=3030003;
UPDATE `gen_event` SET `name`='贪婪的哥布林', `path_id`=3 WHERE `id`=3030004;
UPDATE `gen_event` SET `name`='贪婪的哥布林', `path_id`=1 WHERE `id`=3030005;
UPDATE `gen_event` SET `name`='食人魔佣兵', `path_id`=4, `scale`=1 WHERE `id`=3030008;
UPDATE `gen_event` SET `name`='哥布林哈克', `path_id`=5, `scale`=1 WHERE `id`=3030009;

UPDATE `monster_group` SET `name`='贪婪的哥布林' WHERE `id`=200226;
UPDATE `monster_group` SET `name`='贪婪的哥布林' WHERE `id`=200227;
UPDATE `monster_group` SET `name`='贪婪的哥布林', `monster`='1000193' WHERE `id`=200228;
UPDATE `monster_group` SET `name`='食人魔佣兵' WHERE `id`=200229;
UPDATE `monster_group` SET `name`='哥布林哈克' WHERE `id`=200230;
