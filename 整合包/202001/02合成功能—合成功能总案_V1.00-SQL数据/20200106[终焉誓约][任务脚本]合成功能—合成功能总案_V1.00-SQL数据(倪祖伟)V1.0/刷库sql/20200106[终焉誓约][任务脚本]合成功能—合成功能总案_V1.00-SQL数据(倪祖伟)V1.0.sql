###################################################
#20200106[终焉誓约][任务脚本]合成功能—合成功能总案_V1.00-SQL数据(倪祖伟)
#by:倪祖伟
#date:2020-01-06
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-356678.aspx
###################################################
#注释部分
#DELETE FROM `award_acquire` WHERE `award_id`>=6000327 AND `award_id`<=6000332;
#DELETE FROM `itemtype` WHERE `id` in (610012,610013,610014,610022,610023,610024);
#DELETE FROM `random_compound` WHERE `id`in (111,112,113,121,122,123,211,212,213);
#打开注释部分

###################################################
INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
#蓝色随机合成紫色
(6000327, 1, 1, 5021013, 1,625,0),
(6000327, 1, 1, 5022013, 1,1250,625),
(6000327, 1, 1, 5023013, 1,1875,1250),
(6000327, 1, 1, 5024013, 1,2500,1875),
(6000327, 1, 1, 5025013, 1,3125,2500),
(6000327, 1, 1, 5026013, 1,3750,3125),
(6000327, 1, 1, 5027013, 1,4375,3750),
(6000327, 1, 1, 5028013, 1,5000,4375),
(6000327, 1, 1, 5029013, 1,5625,5000),
(6000327, 1, 1, 5030013, 1,6250,5625),
(6000327, 1, 1, 5031013, 1,6875,6250),
(6000327, 1, 1, 5032013, 1,7500,6875),
(6000327, 1, 1, 5033013, 1,8125,7500),
(6000327, 1, 1, 5034013, 1,8750,8125),
(6000327, 1, 1, 5035013, 1,9375,8750),
(6000327, 1, 1, 5036013, 1,10000,9375),

#和成橙色符文
(6000328, 1, 1, 5041014, 1,500,0),
(6000328, 1, 1, 5042014, 1,1000,500),
(6000328, 1, 1, 5043014, 1,1500,1000),
(6000328, 1, 1, 5044014, 1,2000,1500),
(6000328, 1, 1, 5045014, 1,2500,2000),
(6000328, 1, 1, 5046014, 1,3000,2500),
(6000328, 1, 1, 5047014, 1,3500,3000),
(6000328, 1, 1, 5048014, 1,4000,3500),
(6000328, 1, 1, 5049014, 1,4500,4000),
(6000328, 1, 1, 5050014, 1,5000,4500),
(6000328, 1, 1, 5051014, 1,5500,5000),
(6000328, 1, 1, 5052014, 1,6000,5500),
(6000328, 1, 1, 5053014, 1,6500,6000),
(6000328, 1, 1, 5054014, 1,7000,6500),
(6000328, 1, 1, 5055014, 1,7500,7000),
(6000328, 1, 1, 5056014, 1,8000,7500),
(6000328, 1, 1, 5057014, 1,8500,8000),
(6000328, 1, 1, 5058014, 1,9000,8500),
(6000328, 1, 1, 5059014, 1,9500,9000),
(6000328, 1, 1, 5060014, 1,10000,9500),

#随机蓝色符文
(6000329, 1, 1, 5001012, 1,833,0),
(6000329, 1, 1, 5002012, 1,1666,833),
(6000329, 1, 1, 5003012, 1,2499,1666),
(6000329, 1, 1, 5004012, 1,3332,2499),
(6000329, 1, 1, 5005012, 1,4165,3332),
(6000329, 1, 1, 5006012, 1,4998,4165),
(6000329, 1, 1, 5007012, 1,5831,4998),
(6000329, 1, 1, 5008012, 1,6664,5831),
(6000329, 1, 1, 5009012, 1,7497,6664),
(6000329, 1, 1, 5010012, 1,8330,7497),
(6000329, 1, 1, 5011012, 1,9163,8330),
(6000329, 1, 1, 5012012, 1,10000,9163),

#R本命
(6000330, 1, 3, 4012, 1,833,0),
(6000330, 1, 3, 4022, 1,1666,833),
(6000330, 1, 3, 4032, 1,2499,1666),
(6000330, 1, 3, 4042, 1,3332,2499),
(6000330, 1, 3, 4052, 1,4165,3332),
(6000330, 1, 3, 4062, 1,4998,4165),
(6000330, 1, 3, 4072, 1,5831,4998),
(6000330, 1, 3, 4082, 1,6664,5831),
(6000330, 1, 3, 4092, 1,7497,6664),
(6000330, 1, 3, 4102, 1,8330,7497),
(6000330, 1, 3, 4112, 1,9163,8330),
(6000330, 1, 3, 4122, 1,10000,9163),
#SR本命
(6000331, 1, 3, 4013, 1,667,0),
(6000331, 1, 3, 4023, 1,1334,667),
(6000331, 1, 3, 4033, 1,2001,1334),
(6000331, 1, 3, 4043, 1,2668,2001),
(6000331, 1, 3, 4053, 1,3335,2668),
(6000331, 1, 3, 4063, 1,4002,3335),
(6000331, 1, 3, 4073, 1,4669,4002),
(6000331, 1, 3, 4083, 1,5336,4669),
(6000331, 1, 3, 4093, 1,6003,5336),
(6000331, 1, 3, 4103, 1,6670,6003),
(6000331, 1, 3, 4113, 1,7337,6670),
(6000331, 1, 3, 4123, 1,8004,7337),
(6000331, 1, 3, 4133, 1,8671,8004),
(6000331, 1, 3, 4143, 1,9338,8671),
(6000331, 1, 3, 4153, 1,10000,9338),
#ssr本命
(6000332, 1, 3, 4014, 1,556,0),
(6000332, 1, 3, 4024, 1,1112,556),
(6000332, 1, 3, 4034, 1,1668,1112),
(6000332, 1, 3, 4044, 1,2224,1668),
(6000332, 1, 3, 4054, 1,2780,2224),
(6000332, 1, 3, 4064, 1,3336,2780),
(6000332, 1, 3, 4074, 1,3892,3336),
(6000332, 1, 3, 4084, 1,4448,3892),
(6000332, 1, 3, 4094, 1,5004,4448),
(6000332, 1, 3, 4104, 1,5560,5004),
(6000332, 1, 3, 4114, 1,6116,5560),
(6000332, 1, 3, 4124, 1,6672,6116),
(6000332, 1, 3, 4134, 1,7228,6672),
(6000332, 1, 3, 4144, 1,7784,7228),
(6000332, 1, 3, 4154, 1,8340,7784),
(6000332, 1, 3, 4164, 1,8896,8340),
(6000332, 1, 3, 4174, 1,9452,8896),
(6000332, 1, 3, 4184, 1,10000,9452);

INSERT INTO `itemtype` (`id`, `name`, `sort`, `amount_limit`, `flag`, `price`, `awardid`, `actionid`) VALUES 
(610012, 'R本命碎片', 10, 9999, 64, 100, 0,0),
(610013, 'SR本命碎片', 10, 9999, 64, 200, 0,0),
(610014, 'SSR本命碎片', 10, 9999, 64, 300, 0,0),
(610022, '蓝色符文碎片', 10, 9999, 64, 100, 0,0),
(610023, '紫色符文碎片', 10, 9999, 64, 200, 0,0),
(610024, '橙色符文碎片', 10, 9999, 64, 300, 0,0);

#符文
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5001012;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5001022;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5001032;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5001042;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5001052;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5002012;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5002022;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5002032;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5002042;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5002052;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5003012;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5003022;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5003032;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5003042;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5003052;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5004012;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5004022;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5004032;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5004042;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5004052;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5005012;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5005022;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5005032;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5005042;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5005052;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5006012;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5006022;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5006032;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5006042;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5006052;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5007012;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5007022;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5007032;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5007042;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5007052;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5008012;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5008022;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5008032;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5008042;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5008052;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5009012;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5009022;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5009032;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5009042;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5009052;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5010012;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5010022;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5010032;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5010042;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5010052;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5011012;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5011022;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5011032;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5011042;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5011052;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5012012;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5012022;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5012032;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5012042;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5012052;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5021013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5021023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5021033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5021043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5021053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5022013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5022023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5022033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5022043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5022053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5023013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5023023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5023033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5023043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5023053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5024013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5024023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5024033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5024043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5024053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5025013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5025023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5025033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5025043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5025053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5026013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5026023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5026033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5026043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5026053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5027013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5027023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5027033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5027043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5027053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5028013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5028023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5028033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5028043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5028053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5029013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5029023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5029033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5029043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5029053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5030013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5030023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5030033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5030043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5030053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5031013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5031023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5031033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5031043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5031053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5032013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5032023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5032033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5032043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5032053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5033013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5033023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5033033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5033043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5033053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5034013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5034023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5034033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5034043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5034053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5035013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5035023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5035033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5035043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5035053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5036013;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5036023;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5036033;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5036043;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5036053;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5041014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5041024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5041034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5041044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5041054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5042014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5042024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5042034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5042044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5042054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5043014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5043024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5043034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5043044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5043054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5044014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5044024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5044034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5044044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5044054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5045014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5045024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5045034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5045044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5045054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5046014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5046024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5046034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5046044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5046054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5047014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5047024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5047034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5047044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5047054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5048014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5048024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5048034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5048044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5048054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5049014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5049024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5049034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5049044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5049054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5050014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5050024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5050034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5050044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5050054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5051014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5051024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5051034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5051044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5051054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5052014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5052024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5052034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5052044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5052054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5053014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5053024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5053034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5053044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5053054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5054014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5054024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5054034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5054044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5054054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5055014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5055024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5055034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5055044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5055054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5056014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5056024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5056034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5056044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5056054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5057014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5057024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5057034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5057044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5057054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5058014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5058024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5058034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5058044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5058054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5059014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5059024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5059034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5059044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5059054;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5060014;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5060024;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5060034;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5060044;
UPDATE `itemtype` SET `flag`=8 WHERE `id`=5060054;


INSERT INTO `random_compound` (`id`, `type`, `sub_type`, `award_id`, `money`, `core_num`, `item1_id`, `item1_num`) VALUES 
(111,1,4,6000329,5000,0,610022,10),
(112,1,5,6000327,20000,0,610023,10),
(113,1,6,6000328,50000,0,610024,10),
(121,1,1,6000330,5000,0,610012,10),
(122,1,2,6000331,20000,0,610013,10),
(123,1,3,6000332,50000,0,610014,10),
(211,2,1,6000327,5000,5,5000012,1),
(212,2,2,6000328,20000,4,5000023,1),
(213,2,3,6000328,50000,3,5000034,1);
