###################################################
#20200429[终焉誓约][任务脚本]5.9 bug修复 拼绘消耗的金币改为1(倪祖伟)
#by:倪祖伟
#date:2020-04-29
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-369736.aspx
###################################################
#注释部分

#打开注释部分

###################################################
UPDATE `random_compound` SET `money`=1 WHERE `id`=111;
UPDATE `random_compound` SET `money`=1 WHERE `id`=112;
UPDATE `random_compound` SET `money`=1 WHERE `id`=113;
UPDATE `random_compound` SET `money`=1 WHERE `id`=121;
UPDATE `random_compound` SET `money`=1 WHERE `id`=122;
UPDATE `random_compound` SET `money`=1 WHERE `id`=123;
UPDATE `random_compound` SET `money`=1 WHERE `id`=211;
UPDATE `random_compound` SET `money`=1 WHERE `id`=212;
UPDATE `random_compound` SET `money`=1 WHERE `id`=213;
