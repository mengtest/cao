###################################################
#20190913[终焉誓约][任务脚本]任务-抽卡(新增本命 英雄)调整(倪祖伟)
#by:倪祖伟
#date:2019-09-13
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-346787.aspx
###################################################
#注释部分

#打开注释部分

###################################################
UPDATE `get_lottery` SET `cost_num`=500, `cost_num_ten`=5000, `hero_count`=9, `hero_floor_award`=2005 WHERE `id`=1;
UPDATE `get_lottery` SET `cost_num_ten`=10, `circle_award`=1002 WHERE `id`=2;
UPDATE `get_lottery` SET `cost_num_ten`=10, `hero_count`=9, `hero_floor_award`=2005 WHERE `id`=3;
