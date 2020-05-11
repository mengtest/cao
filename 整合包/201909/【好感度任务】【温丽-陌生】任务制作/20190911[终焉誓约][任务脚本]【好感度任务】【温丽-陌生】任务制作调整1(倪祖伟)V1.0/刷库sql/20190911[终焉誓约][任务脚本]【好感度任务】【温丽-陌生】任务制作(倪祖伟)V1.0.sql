###################################################
#20190911[终焉誓约][任务脚本]【好感度任务】【温丽-陌生】任务制作(倪祖伟)
#by:倪祖伟
#date:2019-09-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-344735.aspx
###################################################
#注释部分
#DELETE FROM `award_acquire` WHERE `award_id` in (2000623,2000624);
#DELETE FROM `impression_task` WHERE `id` =20101;
#打开注释部分

###################################################

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(2000623, 1, 1, 3, 1000, 10000, 0),
(2000624, 1, 1, 3, 1000, 10000, 0);

INSERT INTO `impression_task` (`id`, `hero_id`, `index`, `unlock_level`, `task_id`, `num`) VALUES 
(20101, 201, 1, 0, 70341, 2);
