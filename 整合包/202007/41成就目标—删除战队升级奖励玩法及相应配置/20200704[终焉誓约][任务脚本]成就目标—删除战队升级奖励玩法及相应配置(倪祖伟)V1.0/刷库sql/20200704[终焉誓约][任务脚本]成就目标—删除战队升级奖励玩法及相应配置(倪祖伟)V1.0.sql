###################################################
#20200704[终焉誓约][任务脚本]成就目标—删除战队升级奖励玩法及相应配置(倪祖伟)
#by:倪祖伟
#date:2020-07-04
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-370795.aspx
###################################################
#注释部分

#打开注释部分#战斗升级的监听的配置type=2并且type_id=1
DELETE FROM `activity_award` WHERE `award_id`>=7000673 AND `award_id`<=7000685;
DELETE FROM `dailyact` WHERE `id`=10008;
DELETE FROM `goals` WHERE `id`>=2020000 AND `id`<=2020012;
DELETE FROM `monitor` WHERE `type`=2 AND `type_id`=1;
###################################################
