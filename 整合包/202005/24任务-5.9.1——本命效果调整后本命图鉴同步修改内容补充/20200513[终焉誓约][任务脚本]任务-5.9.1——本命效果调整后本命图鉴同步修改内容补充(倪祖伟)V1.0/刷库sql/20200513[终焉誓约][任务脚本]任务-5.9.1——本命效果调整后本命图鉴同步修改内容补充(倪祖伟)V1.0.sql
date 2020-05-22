###################################################
#20200513[终焉誓约][任务脚本]任务-5.9.1——本命效果调整后本命图鉴同步修改内容补充(倪祖伟)
#by:倪祖伟
#date:2020-05-13
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-370436.aspx
###################################################
#注释部分
DELETE FROM `archive_task` WHERE `id` in (191,192);
#打开注释部分

###################################################
INSERT INTO `archive_task` (`id`, `archive_type`, `archive_type_id`, `task_id`, `archive_mask`, `archive_index`) VALUES 
(191, 40, 4003, 0, 2, 3),
(192, 40, 4004, 0, 2, 4);
