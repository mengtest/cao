###################################################
#20200518[终焉誓约][任务脚本]【BUG修改单】三测版本--沙海遗迹魔法阵副本(倪祖伟)
#by:倪祖伟
#date:2020-05-18
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-363962.aspx
###################################################
#注释部分

#打开注释部分

###################################################
UPDATE `game_map` SET `time`=3600 WHERE `id`=3160;
UPDATE `gen_event` SET `position`='-234.29,-21.20,-9.698' WHERE `id`=3160228;
UPDATE `gen_event` SET `position`='-270.66,-21.12,-29.69' WHERE `id`=3160218;
