###################################################
#20200524[终焉誓约][任务脚本]技能类bug 第2波(效果表和效果描述)(张圆)
#by:张圆
#date:2020-05-24
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-372654.aspx
###################################################
#注释部分
#DELETE FROM special_effect where id in (441101,441102,441201,441202,441301,441302,442101,442102,442201,442202,442301,442302,10741,40141,40142,10721);
#打开注释部分
DELETE FROM special_effect where id in (10260,10261,10262,10263,10264,10265);
DELETE FROM special_effect where id in (4411,4412,4413,4421,4422,4423,4801,4802,4803,5061,5062,5063,5064,5065,5071,5072,5073,5074,5075,5081,5082,5083,5084,5085,5091,5092,5093,5094,5095,5101,5102,5103,5104,5105,5111,5112,5113,5114,5115,5261,5262,5263,5264,5265,5361,5362,5363,5364,5365,5461,5481,5482,5483,5484,5485,10205,10234,10235,10291,10292,10293,10405,10410,10434,10436,10439,10601,10730,10734,10737,10738,10739,10740,11109,11136,11137,11306,11315,11331,11336,11337,11343,11431,11491,11492,11493,20136,20143,40132,40191,463101,463102,463201,463202,463301,463302,480101,480102,480201,480202,480301,480302,508101,508102,508103,508201,508202,508203,508301,508302,508303,508401,508402,508403,508501,508502,508503,509101,509102,509103,509201,509202,509203,509301,509302,509303,509401,509402,509403,509501,509502,509503,1049101,1119101,1119201,1119301,1149101,1149102,1149201,1149202,1149301,1149302,4019103,4019104,1607);
###################################################
INSERT INTO `special_effect` (`id`, `name`, `percent`, `position`, `isalive`, `listen_actor`, `trigger_type`, `trigger_arg1`, `trigger_arg2`, `trigger_arg3`, `trigger_arg4`, `respond_actor`, `respond_type`, `respond_arg1`, `respond_arg2`, `respond_arg3`, `respond_arg4`) VALUES 
(4411,'',10000,1,1,10,1,0,0,0,0,99,441101,441102,0,0,''),
(4412,'',10000,1,1,10,1,0,0,0,0,99,441201,441202,0,0,''),
(4413,'',10000,1,1,10,1,0,0,0,0,99,441301,441302,0,0,''),
(4421,'',10000,1,1,10,1,0,0,0,0,99,442101,442102,0,0,''),
(4422,'',10000,1,1,10,1,0,0,0,0,99,442201,442202,0,0,''),
(4423,'',10000,1,1,10,1,0,0,0,0,99,442301,442302,0,0,''),
(4801,'',10000,0,1,10,1,0,0,0,0,10,99,480101,480102,0,''),
(4802,'',10000,0,1,10,1,0,0,0,0,10,99,480201,480202,0,''),
(4803,'',10000,0,1,10,1,0,0,0,0,10,99,480301,480302,0,''),
(5061,'',10000,0,0,10,44,0,0,0,0,10,54,500,10,0,''),
(5062,'',10000,0,0,10,44,0,0,0,0,10,54,700,10,0,''),
(5063,'',10000,0,0,10,44,0,0,0,0,10,54,900,10,0,''),
(5064,'',10000,0,0,10,44,0,0,0,0,10,54,1200,10,0,''),
(5065,'',10000,0,0,10,44,0,0,0,0,10,56,1500,10,0,''),
(5071,'',10000,0,0,10,32,1,73,0,0,10,34,10200,10800,10,''),
(5072,'',10000,0,0,10,32,1,73,0,0,10,34,10300,11200,10,''),
(5073,'',10000,0,0,10,32,1,73,0,0,10,34,10400,11600,10,''),
(5074,'',10000,0,0,10,32,1,73,0,0,10,34,10500,12000,10,''),
(5075,'',10000,0,0,10,32,1,73,0,0,10,34,10600,12400,10,''),
(5081,'',10000,0,0,10,40,0,0,0,0,10,99,508101,508102,508103,''),
(5082,'',10000,0,0,10,40,0,0,0,0,10,99,508201,508202,508203,''),
(5083,'',10000,0,0,10,40,0,0,0,0,10,99,508301,508302,508303,''),
(5084,'',10000,0,0,10,40,0,0,0,0,10,99,508401,508402,508403,''),
(5085,'',10000,0,0,10,40,0,0,0,0,10,99,508501,508502,508503,''),
(5091,'',10000,0,0,10,44,0,0,0,0,10,99,509101,509102,509103,''),
(5092,'',10000,0,0,10,44,0,0,0,0,10,99,509201,509202,509203,''),
(5093,'',10000,0,0,10,44,0,0,0,0,10,99,509301,509302,509303,''),
(5094,'',10000,0,0,10,44,0,0,0,0,10,99,509401,509402,509403,''),
(5095,'',10000,0,0,10,44,0,0,0,0,10,99,509501,509502,509503,''),
(5101,'',10000,0,0,20,32,1,73,0,0,10,33,10200,10800,10,2),
(5102,'',10000,0,0,20,32,1,73,0,0,10,33,10300,11200,10,2),
(5103,'',10000,0,0,20,32,1,73,0,0,10,33,10400,11600,10,2),
(5104,'',10000,0,0,20,32,1,73,0,0,10,33,10500,12000,10,2),
(5105,'',10000,0,0,20,32,1,73,0,0,10,33,10600,12400,10,2),
(5111,'',10000,0,0,20,32,1,73,0,0,10,33,10200,10800,10,1),
(5112,'',10000,0,0,20,32,1,73,0,0,10,33,10300,11200,10,1),
(5113,'',10000,0,0,20,32,1,73,0,0,10,33,10400,11600,10,1),
(5114,'',10000,0,0,20,32,1,73,0,0,10,33,10500,12000,10,1),
(5115,'',10000,0,0,20,32,1,73,0,0,10,33,10600,12400,10,1),
(5261,'',3000,0,0,10,1,0,0,0,0,10,11,72,0,150,''),
(5262,'',4500,0,0,10,1,0,0,0,0,10,11,72,0,150,''),
(5263,'',6000,0,0,10,1,0,0,0,0,10,11,72,0,150,''),
(5264,'',7500,0,0,10,1,0,0,0,0,10,11,72,0,150,''),
(5265,'',9000,0,0,10,1,0,0,0,0,10,11,72,0,150,''),
(5361,'',10000,0,0,10,11,73,1,8000,0,10,31,0,1500,0,''),
(5362,'',10000,0,0,10,11,73,1,8000,0,10,31,0,2200,0,''),
(5363,'',10000,0,0,10,11,73,1,8000,0,10,31,0,2900,0,''),
(5364,'',10000,0,0,10,11,73,1,8000,0,10,31,0,3700,0,''),
(5365,'',10000,0,0,10,11,73,1,8000,0,10,31,0,4500,0,''),
(5461,'',10000,0,0,10,44,0,0,0,0,10,151,2000,0,0,''),
(5481,'',2000,0,0,10,44,0,0,0,0,10,151,5000,0,0,''),
(5482,'',3000,0,0,10,44,0,0,0,0,10,151,5000,0,0,''),
(5483,'',4000,0,0,10,44,0,0,0,0,10,151,5000,0,0,''),
(5484,'',5000,0,0,10,44,0,0,0,0,10,151,5000,0,0,''),
(5485,'',6000,0,0,10,44,0,0,0,0,10,151,5000,0,0,''),
(10205,'',4000,1,1,10,1,0,0,0,0,10,21,100101,1,0,''),
(10234,'',10000,0,0,10,1,0,0,0,0,10,112,10235,10205,0,''),
(10235,'',6500,1,1,10,1,0,0,0,0,10,21,100101,1,0,''),
(10291,'',10000,0,1,40,64,0,0,1,0,10,99,1029101,1029102,0,''),
(10292,'',10000,0,1,40,64,0,0,1,0,10,99,1029201,1029202,0,''),
(10293,'',10000,0,1,40,64,0,0,1,0,10,99,1029301,1029302,0,''),
(10405,'',10000,1,1,10,44,0,0,0,0,10,151,500,0,0,''),
(10410,'',10000,0,0,10,40,30,0,0,0,10,31,0,5000,0,''),
(10434,'',10000,0,1,10,40,80,0,0,0,10,144,1,1000,0,''),
(10436,'',10000,0,1,10,44,22,0,0,0,10,99,10439,0,0,''),
(10439,'',10000,1,1,10,11,73,2,2000,0,10,150,5,10000,0,''),
(10601,'',10000,0,1,40,21,2013,0,0,0,10,160,10638,0,0,''),
(10730,'',10000,0,0,10,31,2,1,0,0,10,11,72,0,50,''),
(10734,'',10000,1,1,10,44,70,0,0,0,10,99,10737,0,0,''),
(10737,'',10000,1,1,10,118,2014,2015,2016,2017,10,11,72,0,500,''),
(10738,'',10000,1,1,10,2,1,0,0,0,10,21,201401,1,0,''),
(10739,'',10000,1,1,10,2,1,0,0,0,10,21,201501,1,0,''),
(10740,'',10000,1,1,10,2,1,0,0,0,10,21,201601,1,0,''),
(11109,'',10000,1,1,10,11,73,2,5000,0,10,144,1,1000,0,''),
(11136,'',10000,0,0,10,72,1,10000,0,0,10,11,11,0,2000,''),
(11137,'',10000,0,0,10,72,1,10000,0,0,10,11,13,0,2000,''),
(11306,'',10000,1,1,10,1,0,0,0,0,10,31,0,500,0,''),
(11315,'',10000,1,1,10,1,0,0,0,0,10,154,3,5000,0,''),
(11331,'',10000,0,0,10,1,0,0,0,0,10,11,72,0,300,''),
(11336,'',10000,0,0,10,1,0,0,0,0,10,112,11337,11315,0,''),
(11337,'',10000,1,1,10,1,0,0,0,0,30,154,3,5000,0,''),
(11343,'',10000,0,0,10,22,2021,0,0,0,40,21,106201,1,0,''),
(11431,'',10000,0,1,10,1,0,0,0,0,30,11,13,0,500,''),
(11491,'',10000,0,0,10,44,21,0,0,0,10,99,1149101,1149102,0,''),
(11492,'',10000,0,0,10,44,21,0,0,0,10,99,1149201,1149202,0,''),
(11493,'',10000,0,0,10,44,21,0,0,0,10,99,1149301,1149302,0,''),
(20136,'',10000,1,1,10,40,21,0,0,0,10,99,20137,0,0,''),
(20143,'',10000,1,1,10,103,1,5,0,0,10,99,20144,0,0,''),
(40132,'',10000,0,0,10,1,0,0,0,0,10,112,40142,40141,0,''),
(40191,'',10000,0,0,10,1,0,0,0,0,10,99,4019101,4019102,4019103,''),
(463101,'',10000,0,1,20,66,1,0,0,0,10,11,32,0,1500,''),
(463102,'',10000,0,1,20,66,2,0,0,0,10,11,32,0,1500,''),
(463201,'',10000,0,1,20,66,1,0,0,0,10,11,32,0,2200,''),
(463202,'',10000,0,1,20,66,2,0,0,0,10,11,32,0,2200,''),
(463301,'',10000,0,1,20,66,1,0,0,0,10,11,32,0,2900,''),
(463302,'',10000,0,1,20,66,2,0,0,0,10,11,32,0,2900,''),
(480101,'',10000,0,1,10,40,0,0,0,0,10,11,13,0,1000,''),
(480102,'',10000,0,1,10,204,0,2,10,0,20,155,1,500,0,''),
(480201,'',10000,0,1,10,40,0,0,0,0,10,11,13,0,1500,''),
(480202,'',10000,0,1,10,204,0,2,10,0,20,155,1,500,0,''),
(480301,'',10000,0,1,10,40,0,0,0,0,10,11,13,0,2000,''),
(480302,'',10000,0,1,10,204,0,2,10,0,20,155,1,500,0,''),
(508101,'',10000,0,0,10,11,73,2,10000,0,10,56,200,10,0,''),
(508102,'',10000,0,0,10,11,73,2,6500,0,10,56,200,10,0,''),
(508103,'',10000,0,0,10,11,73,2,3000,0,10,56,400,10,0,''),
(508201,'',10000,0,0,10,11,73,2,10000,0,10,56,300,10,0,''),
(508202,'',10000,0,0,10,11,73,2,6500,0,10,56,300,10,0,''),
(508203,'',10000,0,0,10,11,73,2,3000,0,10,56,600,10,0,''),
(508301,'',10000,0,0,10,11,73,2,10000,0,10,56,400,10,0,''),
(508302,'',10000,0,0,10,11,73,2,6500,0,10,56,400,10,0,''),
(508303,'',10000,0,0,10,11,73,2,3000,0,10,56,800,10,0,''),
(508401,'',10000,0,0,10,11,73,2,10000,0,10,56,500,10,0,''),
(508402,'',10000,0,0,10,11,73,2,6500,0,10,56,500,10,0,''),
(508403,'',10000,0,0,10,11,73,2,3000,0,10,56,1000,10,0,''),
(508501,'',10000,0,0,10,11,73,2,10000,0,10,56,600,10,0,''),
(508502,'',10000,0,0,10,11,73,2,6500,0,10,56,600,10,0,''),
(508503,'',10000,0,0,10,11,73,2,3000,0,10,56,1200,10,0,''),
(509101,'',10000,0,0,10,11,73,2,10000,0,10,151,200,0,0,''),
(509102,'',10000,0,0,10,11,73,2,6500,0,10,151,200,0,0,''),
(509103,'',10000,0,0,10,11,73,2,3000,0,10,151,400,0,0,''),
(509201,'',10000,0,0,10,11,73,2,10000,0,10,151,300,0,0,''),
(509202,'',10000,0,0,10,11,73,2,6500,0,10,151,300,0,0,''),
(509203,'',10000,0,0,10,11,73,2,3000,0,10,151,600,0,0,''),
(509301,'',10000,0,0,10,11,73,2,10000,0,10,151,400,0,0,''),
(509302,'',10000,0,0,10,11,73,2,6500,0,10,151,400,0,0,''),
(509303,'',10000,0,0,10,11,73,2,3000,0,10,151,800,0,0,''),
(509401,'',10000,0,0,10,11,73,2,10000,0,10,151,500,0,0,''),
(509402,'',10000,0,0,10,11,73,2,6500,0,10,151,500,0,0,''),
(509403,'',10000,0,0,10,11,73,2,3000,0,10,151,1000,0,0,''),
(509501,'',10000,0,0,10,11,73,2,10000,0,10,151,600,0,0,''),
(509502,'',10000,0,0,10,11,73,2,6500,0,10,151,600,0,0,''),
(509503,'',10000,0,0,10,11,73,2,3000,0,10,151,1200,0,0,''),
(1049101,'',10000,0,0,12,51,0,0,0,0,11,21,100901,1,0,''),
(1119101,'',10000,1,1,10,71,0,0,0,0,10,11,16,0,2000,''),
(1119201,'',10000,1,1,10,71,0,0,0,0,10,11,16,0,2500,''),
(1119301,'',10000,1,1,10,71,0,0,0,0,10,11,16,0,3000,''),
(1149101,'',10000,0,1,10,1,0,0,0,0,10,40,21,1,10000,''),
(1149102,'',10000,0,1,10,1,0,0,0,0,10,21,104601,2,0,''),
(1149201,'',10000,0,1,10,1,0,0,0,0,10,40,21,1,10000,''),
(1149202,'',10000,0,1,10,1,0,0,0,0,10,21,104601,3,0,''),
(1149301,'',10000,0,1,10,1,0,0,0,0,10,40,21,1,10000,''),
(1149302,'',10000,0,1,10,1,0,0,0,0,10,21,104601,4,0,''),
(4019103,'',5000,0,0,10,44,0,0,0,0,10,99,4019104,0,0,''),
(4019104,'',10000,0,0,20,24,1024,1,1,0,10,21,200903,1,0,''),
(1607,'',10000,0,1,40,40,80,0,0,0,10,21,800016,1,0,''),
#新增数据
(441101,'',10000,1,1,12,125,80,30,0,0,30,21,104421,1,0,''),
(441102,'',10000,1,1,10,125,0,30,0,0,30,21,104421,1,0,''),
(441201,'',10000,1,1,12,125,80,30,0,0,30,21,104422,1,0,''),
(441202,'',10000,1,1,10,125,0,30,0,0,30,21,104422,1,0,''),
(441301,'',10000,1,1,12,125,80,30,0,0,30,21,104423,1,0,''),
(441302,'',10000,1,1,10,125,0,30,0,0,30,21,104423,1,0,''),
(442101,'',10000,1,1,12,125,80,30,0,0,30,11,72,0,200,''),
(442102,'',10000,1,1,10,125,0,30,0,0,30,11,72,0,200,''),
(442201,'',10000,1,1,12,125,80,30,0,0,30,11,72,0,300,''),
(442202,'',10000,1,1,10,125,0,30,0,0,30,11,72,0,300,''),
(442301,'',10000,1,1,12,125,80,30,0,0,30,11,72,0,400,''),
(442302,'',10000,1,1,10,125,0,30,0,0,30,11,72,0,400,''),
(10741,'',10000,1,1,10,2,1,0,0,0,10,21,201701,1,0,''),
(40141,'',3000,0,0,10,1,0,0,0,0,10,21,200901,1,0,''),
(40142,'',10000,0,0,10,1,0,0,0,0,10,21,200901,1,0,''),
(10721,'',10000,1,1,20,11,73,2,3500,0,10,11,13,0,3000,'');
