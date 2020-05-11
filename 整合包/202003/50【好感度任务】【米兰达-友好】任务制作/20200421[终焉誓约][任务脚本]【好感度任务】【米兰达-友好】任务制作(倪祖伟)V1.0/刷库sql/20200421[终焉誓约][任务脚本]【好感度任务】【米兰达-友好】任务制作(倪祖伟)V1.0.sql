###################################################
#20200421[终焉誓约][任务脚本]【好感度任务】【米兰达-友好】任务制作(倪祖伟)
#by:倪祖伟
#date:2020-04-21
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-362972.aspx
###################################################
#注释部分
#DELETE FROM `impression_task` WHERE `id`=11202;
#DELETE FROM `award_acquire` WHERE `award_id`=2000772;
#打开注释部分

###################################################
INSERT INTO `impression_task` (`id`, `hero_id`, `index`, `unlock_level`, `task_id`, `num`) VALUES 
(11202, 112, 2, 6, 70550, 1);

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(2000772, 1, 1, 3060610, 5, 10000, 0),
(2000772, 1, 1, 204020, 2, 10000, 0),
(2000772, 1, 1, 120023, 1, 10000, 0);
