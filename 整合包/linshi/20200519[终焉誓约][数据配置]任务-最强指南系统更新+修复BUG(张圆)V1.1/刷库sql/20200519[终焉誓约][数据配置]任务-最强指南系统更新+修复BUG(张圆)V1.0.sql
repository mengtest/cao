###################################################
#20200519[终焉誓约][数据配置]任务-最强指南系统更新+修复BUG(张圆)
#by:张圆
#date:2020-05-19
#论坛链接:http://forum.nderp.99.com/BugManage/internal/bugOperationList.htm?taskId=102982&onlyMe=true
###################################################
#注释部分
#DELETE FROM monitor where id >= 2404 and id <= 2438;
#打开注释部分

###################################################
update special_effect set respond_actor = 12 where id = 10431;

update shop_refresh set item_type = 3011084 where id = 144;

update guide_task set `order` = 4 where id = 13;
update guide_task set `order` = 5 where id = 14;
update guide_task set `order` = 6 where id = 15;
update guide_task set `order` = 4 where id = 32;
update guide_task set `order` = 5 where id = 33;
update guide_task set `order` = 6 where id = 34;
update guide_task set `order` = 4 where id = 51;
update guide_task set `order` = 5 where id = 52;
update guide_task set `order` = 6 where id = 53;
update guide_task set `order` = 1,star = 4,chapter = 1 where id = 58;

update gen_event set event_id = 21383 where id = 20010350;

INSERT INTO `monitor` (`id`, `monitor_type`, `type`, `type_id`, `num_type`, `data1`, `data2`, `data3`, `data4`, `mask1`, `mask2`) VALUES 
(2404,1,1,1,1,25,4,0,0,0,0),
(2413,3,20,4,1,10,0,0,0,2,16),
(2414,2,5,1,1,1,3,2,0,9,3),
(2415,1,1,2,1,2,4,0,0,0,0),
(2416,2,6,2,1,1,6,0,0,9,4),
(2417,3,12,3,1,150,0,0,0,3,18),
(2418,3,12,3,1,400,0,0,0,3,18),
(2419,3,12,3,1,1000,0,0,0,3,18),
(2420,3,12,1,1,600,0,0,0,4,1),
(2421,3,12,2,1,150,0,0,0,1,6),
(2422,3,12,2,1,400,0,0,0,1,6),
(2405,1,3,1,1,25,4,4,0,0,0),
(2423,3,12,2,1,600,0,0,0,1,6),
(2424,1,1,3,1,3,6,0,0,0,0),
(2425,2,6,3,1,2,8,0,0,9,5),
(2426,1,1,1,1,50,8,0,0,0,0),
(2427,1,3,1,1,50,4,8,0,0,0),
(2428,2,6,1,1,50,8,0,0,9,6),
(2429,2,6,2,1,2,8,0,0,9,7),
(2430,3,20,1,1,10,5,0,0,2,13),
(2431,3,20,4,1,55,0,0,0,2,16),
(2432,1,1,3,1,3,8,0,0,0,0),
(2406,1,3,3,1,1,2,4,0,0,0),
(2433,1,1,3,1,3,12,0,0,0,0),
(2434,2,6,3,1,2,15,0,0,9,33),
(2435,2,6,3,1,2,15,0,0,9,33),
(2436,3,20,1,1,20,5,0,0,2,13),
(2437,3,20,4,1,80,0,0,0,2,16),
(2438,2,19,1,1,707,0,0,0,9,8),
(2407,1,4,1,1,1,2,4,0,0,0),
(2408,2,6,1,1,25,4,0,0,9,2),
(2409,3,12,3,1,30,0,0,0,3,18),
(2410,3,12,1,1,50,0,0,0,4,1),
(2411,3,12,2,1,30,0,0,0,1,6),
(2412,3,20,1,1,2,4,0,0,2,12);
