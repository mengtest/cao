###################################################
#20200106[终焉誓约][任务脚本]【好感度任务】【兰奇-友好】任务制作(倪祖伟)
#by:倪祖伟
#date:2020-01-06
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-358472.aspx
###################################################
#注释部分
#DELETE FROM `impression_task` WHERE `id`=10302;
#DELETE FROM `award_acquire` WHERE `award_id`=2000664;
#打开注释部分

###################################################
INSERT INTO `impression_task` (`id`, `hero_id`, `index`, `unlock_level`, `task_id`, `num`) VALUES 
(10302, 103, 2, 6, 70463, 1);

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(2000664, 1, 1, 1, 100, 10000, 0);
