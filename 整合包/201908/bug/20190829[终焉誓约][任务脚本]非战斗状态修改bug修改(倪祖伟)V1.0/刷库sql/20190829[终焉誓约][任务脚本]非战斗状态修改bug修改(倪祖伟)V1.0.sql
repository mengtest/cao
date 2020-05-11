###################################################
#20190829[终焉誓约][任务脚本]非战斗状态修改bug修改(倪祖伟)
#by:倪祖伟
#date:2019-08-29
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-343511.aspx
###################################################
#注释部分
#delete from `status` where `id` =7002;
#打开注释部分

###################################################
INSERT INTO `status` (`id`, `type_id`, `affect_faction`, `target_rule`, `duration`, `end_condition`, `end_data`, `trigger_interval`, `trigger_percent`, `ishelpful`, `override_id`, `max_superposition`, `clear`, `parm1`, `parm2`, `parm3`, `attr_exp1`, `attr_class1`, `attr_value1`, `attr_exp2`, `attr_class2`, `attr_value2`, `attr_exp3`, `attr_class3`, `attr_value3`) VALUES 
(7002, 10, 1, 0, 0, 0, 0, 0, 10000, 0, '0', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
