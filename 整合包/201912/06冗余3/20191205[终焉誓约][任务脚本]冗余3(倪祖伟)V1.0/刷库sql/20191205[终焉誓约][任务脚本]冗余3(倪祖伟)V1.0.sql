###################################################
#20191205[终焉誓约][任务脚本]冗余3(倪祖伟)
#by:倪祖伟
#date:2019-12-05
#论坛链接:如：http
###################################################
#注释部分

#打开注释部分
DELETE FROM `game_map` WHERE `id` in (3089,3067);
DELETE FROM `monster` WHERE `id` in (1000372,1000502,1000731,1000732,1000733,1000781,1000782);
DELETE FROM `attribute` WHERE `id` in (1000112,1000125,1000155,1000372,1000502,1000731,1000732,1000733,1000781,1000782,9001022);
DELETE FROM `monster_group` WHERE `id` in (200321,200347,200418,200419,200420,200478,200479);
DELETE FROM `gen_event` WHERE `id` in (3089001,3089002,3089003,3089004,3089005,3089006,3089007,3089008,3089009,3089010,3089011,3089012,3089013,3089014,3089015,3089016,3089017,3089018,3089019);
DELETE FROM `copymap_condition` WHERE `id`=3067;
DELETE FROM `valve` WHERE `id`=1044;
###################################################
