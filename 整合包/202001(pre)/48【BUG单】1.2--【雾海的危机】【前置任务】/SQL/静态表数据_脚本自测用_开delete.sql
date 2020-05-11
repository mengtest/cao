###################################################
#20191212[终焉誓约][数据配置]ERP315316【终焉誓约】【普通副本（秘境探索）】【银母矿洞】数值调整(林多娜)
#by:林多娜
#date:2019-12-12
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-356327.aspx
###################################################
#注释部分

#打开注释部分

###################################################
update attribute set life = 26933,phy_atk = 2342,mgc_atk = 2342,phy_def = 936,mgc_def = 936 where id = 1000238;
update attribute set life = 70615,phy_atk = 2435,mgc_atk = 2435,phy_def = 974,mgc_def = 974 where id = 1000239;
update attribute set life = 73972,phy_atk = 2529,mgc_atk = 2529,phy_def = 1011,mgc_def = 1011 where id = 1000240;

update monster set `level` = 34  where id = 1000238;
update monster set `level` = 35  where id = 1000239;
update monster set `level` = 36  where id = 1000240;


###################################################
#20191213[终焉誓约][数据配置]【普通副本（秘境探索）】【荒原古堡】数值调整(孟志远)
#by:孟志远
#date:2019-12-13
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-356323.aspx
###################################################
#注释部分

#打开注释部分

###################################################
update monster_group set fight = 0 where id = 200262;
update monster set level = 30 where id = 9000161;
update monster set level = 31 where id = 9000162;

update attribute set life = 44776,phy_atk = 2017,mgc_atk = 2017,phy_def = 537,mgc_def = 537 where id = 9000161;
update attribute set life = 69585,phy_atk = 2071,mgc_atk = 2071,phy_def = 552,mgc_def = 552 where id = 9000162;



###################################################
#20191212[终焉誓约][数据配置]【沙海虫巢】BUG修改(张圆)
#by:张圆
#date:2019-12-12
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-356153.aspx
###################################################
#注释部分

#打开注释部分

###################################################
update attribute set life = 46390,phy_atk = 2071,mgc_atk = 2071,phy_def = 552,mgc_def = 552 where id = 1000236;
update attribute set life = 68342,phy_atk = 2160,mgc_atk = 2160,phy_def = 864,mgc_def = 864 where id = 1000237;

update monster set `level` = 32,special_effects = 1341 where id = 1000237;
update monster set `level` = 31 where id = 1000236;




###################################################
#20191212[终焉誓约][数据配置]【普通副本（秘境探索）】【风沙堡】数值调整(李宏伟)
#by:李宏伟
#date:2019-12-12
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-356326.aspx
###################################################
#注释部分

#打开注释部分

###################################################

UPDATE `attribute` SET `life`=60768, `phy_atk`=2532, `mgc_atk`=2532, `phy_def`=1012, `mgc_def`=1012 WHERE `id`=1000232;
UPDATE `attribute` SET `life`=57552, `phy_atk`=2398, `mgc_atk`=2398, `phy_def`=959, `mgc_def`=959 WHERE `id`=1000233;
UPDATE `attribute` SET `life`=95354, `phy_atk`=2671, `mgc_atk`=2671, `phy_def`=1068, `mgc_def`=1068 WHERE `id`=1001173;

UPDATE `monster` SET `level`=34 WHERE `id`=1000232;
UPDATE `monster` SET `level`=33 WHERE `id`=1000233;
UPDATE `monster` SET `level`=35 WHERE `id`=1001173;


###################################################
#20191213[终焉誓约][数据配置]【普通副本（秘境探索）】【树心城】数值调整(孟志远)
#by:孟志远
#date:2019-12-13
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-356329.aspx
###################################################
#注释部分

#打开注释部分

###################################################
update monster set level = 40 where id = 1000272;
update monster set level = 40,special_effects = "1141;1071" where id = 1000273;
update monster set level = 40 where id = 1000274;
update monster set level = 42 where id = 1000278;

update attribute set life = 70664,phy_atk = 2920,mgc_atk = 2920,phy_def = 1168,mgc_def = 1168 where id = 1000272;
update attribute set life = 70664,phy_atk = 2920,mgc_atk = 2920,phy_def = 1168,mgc_def = 1168 where id = 1000273;
update attribute set life = 70664,phy_atk = 2920,mgc_atk = 2920,phy_def = 1168,mgc_def = 1168 where id = 1000274;
update attribute set life = 107553,phy_atk = 3123,mgc_atk = 3123,phy_def = 1249,mgc_def = 1249 where id = 1000278;



###################################################
#20191213[终焉誓约][任务脚本]任务ERP315317终焉誓约普通副本秘境探索凋零之地数值调整(苏亚玲)
#by:苏亚玲
#date:2019-12-13
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-356328.aspx
###################################################
#注释部分

#打开注释部分

###################################################


update monster set level=37 where id=1000264;
update monster set level=37 where id=1000266;
update monster set level=36 where id=1000267;
update monster set level=38,special_effects ='' where id=1000268;

update monster_group set monster="1000267;1000267" where id=200275;

update attribute set life=77437,phy_atk=2625,mgc_atk=2625,phy_def=700,mgc_def=700 where id=1000264;
update attribute set life=77437,phy_atk=2625,mgc_atk=2625,phy_def=700,mgc_def=700 where id=1000266;
update attribute set life=44383,phy_atk=2529,mgc_atk=2529,phy_def=1011,mgc_def=1011 where id=1000267;
update attribute set life=97173,phy_atk=2722,mgc_atk=2722,phy_def=1088,mgc_def=1088 where id=1000268;


###################################################以上为CBT1测完未更新数据###################################################

###################################################
#20191202[终焉誓约][任务脚本]任务冗余数据删除(黄业勤)
#by:黄业勤
#date:2019-12-02
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分
#打开注释部分
DELETE FROM `gen_event` WHERE `id` in (3024005,20030179,20030195,20030208,20050066,20050069,20050070,20050075);
DELETE FROM `npc_group` WHERE `id` in (20300,20303,30192,30292,30481,60242);
DELETE FROM `attribute` WHERE `id` in (9000275);
DELETE FROM `monster` WHERE `id` in (9000275);
DELETE FROM `monster_group` WHERE `id` in (900358);
DELETE FROM `task_index` WHERE `taskid` in (10186,10189,10371,10378,10387,10536,10537,10538,10539,10540,10615);
#自律联盟支线
DELETE FROM `task_index` WHERE `taskid` in (70108,70109,70110,70111,70112,70113,70114,70115,70195,70116,70117,70118,70119,70120,70121,70122,70123,70124,70125,70126,70127,70128,70129,70130,70192,70131,70132,70133,70134,70193,70135,70136,70137,70138,70139,70140,70141,70142,70143,70144,70145,70146,70147,70148,70149,70150,70151,70152,70153,70154,70155,70156,70157,70158,70159,70160,70161,70162,70163,70164,70165,70166,70167,70194,70168,70169,70170,70171,70172,70174,70175,70176,70177,70178,70179,70180,70181,70182,70183,70184,70185,70186,70187,70188,70189,70190,70191);
DELETE FROM `npc_group` WHERE `id` in (30531,30532,30533,30534,30535,30536,30537,30538,30539,30540,30541,30542,30543,30544,30545,30546,30547,30548,30549,30550,60300,60301,60302,60303,60304);
DELETE FROM `gen_event` WHERE `id` in (99980001,99980002,99980003,99980004,99980005,99980006,99980007,99980008,99980009,99980010,99980011,99980012,99980013,99980014,99980015,99980016,99980017,99980018,99980019,99980020,99980021,99980022,99980023,99980024,99980025,99980026,99980027,99980028,99980029,99980030,99980031,99980032,99980033,99980034,99980035,99980036,99980037,99980038,99980039,99980040);
DELETE FROM `attribute` WHERE `id` in (9000304,9000305,9000306,9000307,9000308,9000309,9000310,9000311,9000312,9000313);
DELETE FROM `monster` WHERE `id` in (9000304,9000305,9000306,9000307,9000308,9000309,9000310,9000311,9000312,9000313);
DELETE FROM `monster_group` WHERE `id` in (900385,900386,900387,900388,900389,900390,900391,900392,900393,900394);
DELETE FROM `award_acquire` WHERE `award_id` in (2000222,2000223,2000224,2000225,2000226,2000227,2000228,2000229,2000230,2000231,2000232,2000233,2000234,2000235,2000236,2000237,2000238,2000239,2000315);

#四蹄神支线
DELETE FROM `task_index` WHERE `taskid` in (70000,70001,70002,70003,70004,70005,70006,70007,70008,70009,70010,70011,70012,70013,70014,70015,70016,70017,70018,70019,70020,70021,70022,70023,70024);
DELETE FROM `npc_group` WHERE `id` in (20487,20488,20489,20490,30494,30495,30496,30497,30498,30499,30500,30501,60277,60278,60279,60280,60281,60282);
DELETE FROM `gen_event` WHERE `id` in (2002020,2002021,2002022,2002023,2002024,2002025,2002026,2002027,2002028,2002029,2002030,2002031,2002032,2002033,2002034);
DELETE FROM `attribute` WHERE `id` in (9000281,9000282,9000283,9000284,9000286);
DELETE FROM `monster` WHERE `id` in (9000281,9000282,9000283,9000284,9000286);
DELETE FROM `monster_group` WHERE `id` in (900361,900362,900363,900364,900365,900366);
DELETE FROM `award_acquire` WHERE `award_id` in (2000313,2000314);
###################################################

###################################################
#20191128[终焉誓约][任务脚本]任务冗余数据删除(张圆)
#by:张圆
#date:2019-11-28
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分 删除冗余数据
DELETE FROM npc_group where id in (30167,30169,30204,30205,30206,60110,60111,10008,21000001,30162,20174,20175,30072,30074,40007,20041,30175,20093,60055,60073,60074,30189,20945,60382,60383,60384,30657,60387,60389,60388,30620,20455,40107,40108,40109,40150,40219,40220,60147,60148,60149,60150,20596,20597,20639,40198,40215,40216,60342,60343,60344,30353);
DELETE FROM monster_group where id in (900192,900529,900560,900561,200337,200338,200472,200473,200427,200428,200469,200470);
DELETE FROM monster where id in (9000074,1000908,1000915,1000914,1000492,1000493,1000775,1000776,1000738,1000739,1000740,1000772,1000773);
DELETE FROM attribute where id in (9000074,1000908,1000914,1000915,1000492,1000493,1000775,1000776,1000738,1000739,1000740,1000772,1000773);
DELETE FROM gen_event where id in (2001733,2001508,2001515,2001838,2001513,2001837,2001730,2001731,2001732,2001736,2001737,3034003,3034005,3034007,3034008,3034022,3034026,3034029,3022014,1000199,1000186,1000187,1000188,1000189,1000198,20010243,20010244,20010245,20010246,20010247,20040076,2001908);
DELETE FROM gen_event where id >= 3058002 and id <= 3058028;
DELETE FROM gen_event where id >= 3091002 and id <= 3091033;
DELETE FROM valve where id in (1002,1005,1006,1043,1086);
DELETE FROM task_index where taskid in (10542,10674) ;
DELETE FROM game_map where id in (3058,3091) ;
DELETE FROM award_acquire where award_id in (1000139,1000140,1000141,1000142,1000428,1000429,1000410,1000411,1000412,1000413,1000414,1000415,1000424,1000425);
###################################################



###################################################
#20191128[终焉誓约][任务脚本]任务冗余数据删除(张圆)
#by:张圆
#date:2019-11-28
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分 删除冗余数据
DELETE FROM monster_group where id = 900306;
DELETE FROM monster where id = 9000223;
DELETE FROM attribute where id = 9000223;
DELETE FROM gen_event where id in (2001975,2001977,2001978);
DELETE FROM npc_group where id in (30416,30417);
###################################################

###################################################
#20191203[终焉誓约][任务脚本]任务冗余数据删除(倪祖伟)
#by:倪祖伟
#date:2019-12-03
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分
#湖畔镇
DELETE FROM `npc_group` WHERE `id` in (30082,30086,30211,30578);
DELETE FROM `gen_event` WHERE `id` in (2001109,2001107,2001120,2001102,20010199,2001115,2001116,2001118,2001119);
DELETE FROM `monster` WHERE `id` = 9001022;
DELETE FROM `monster_group` WHERE `id` in (900126,900127,900128);
DELETE FROM `award_acquire` WHERE `award_id` in (2000258,2000259);
DELETE FROM `task_index` WHERE `taskid`=10107;
#三月边陲
DELETE FROM `npc_group` WHERE `id` in (30199,30200,30201,30202,30316,20158,20160,20162,20164,20317,30313);
DELETE FROM `gen_event` WHERE `id` in (20030010,20030011,20030012,20030013,20030253,20030016,20030018,20030020,20030022,20030254,20030226);
DELETE FROM `task_index` WHERE `taskid` in (10235,10252,10255);
#失落群岛先导剧情
DELETE FROM `award_acquire` WHERE `award_id` in (2000618);
DELETE FROM `npc_group` WHERE `id` = 10015;
DELETE FROM `gen_event` WHERE `id` = 2001955;
DELETE FROM `task_index` WHERE `taskid` in (10439,10618,10680);
#副本饿狼巢穴
DELETE FROM `monster` WHERE `id` = 1000112;
DELETE FROM `monster_group` WHERE `id` = 200155;
DELETE FROM `gen_event` WHERE `id` in (3011005,3011020);
#哥布林巢穴
DELETE FROM `gen_event` WHERE `id` in (3031003,3031004,3031005,3031006,3031013,3031014,3031015,3031023,3031031,3031032);
DELETE FROM `npc_group` WHERE `id` in (30014,40003,40004,40005,40029,40037,20901);
DELETE FROM `monster` WHERE `id` in (1000125,1000155,812107);
DELETE FROM `monster_group` WHERE `id` in (200088,200083);
DELETE FROM `award_acquire` WHERE `award_id` = 1000059;
#神迹实验室
DELETE FROM `gen_event` WHERE `id` in (3071012,3071013);
DELETE FROM `npc_group` WHERE `id` in (40192,10149);
#材料金钱副本
DELETE FROM `game_map` WHERE `id` in (3089,3067);
DELETE FROM `monster` WHERE `id` in (1000372,1000502,1000731,1000732,1000733,1000781,1000782);
DELETE FROM `attribute` WHERE `id` in (1000112,1000125,1000155,1000372,1000502,1000731,1000732,1000733,1000781,1000782,9001022);
DELETE FROM `monster_group` WHERE `id` in (200321,200347,200418,200419,200420,200478,200479);
DELETE FROM `gen_event` WHERE `id` in (3089001,3089002,3089003,3089004,3089005,3089006,3089007,3089008,3089009,3089010,3089011,3089012,3089013,3089014,3089015,3089016,3089017,3089018,3089019);
DELETE FROM `copymap_condition` WHERE `id`=3067;
DELETE FROM `valve` WHERE `id`=1044;
###################################################
###################################################
#20191205[终焉誓约][数据配置]ERP312893【终焉誓约】任务冗余数据删除(林多娜)
#by:林多娜
#date:2019-12-05
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分
#阿克莱斯
delete from task_index where taskid in (10072,10430);
delete from npc_group where id in (20318,20025,20582,30021);
delete from monster where id in (9000149);
delete from attribute where id in (9000149);
delete from monster_group where id in (900257);
delete from gen_event where id in (2001836,2001345,2001835,2001330,2001337,2001338);

#天空城
delete from task_index where taskid in (10481,10482,10483,10484,10485,10497);
delete from npc_group where id in (10016,10017,30436,30442);
delete from gen_event where id in (20040013,20040019);

#七日全删
delete from task_index where taskid >= 70025 and taskid <= 70071;
delete from task_index where taskid >= 70196 and taskid <= 70202;
delete from npc_group where id >= 30551 and id <= 30556;
delete from npc_group where id >= 30565 and id <= 30571;
delete from npc_group where id in (10022,20528,20530,20531,20532,20541,20542,20544,20545,20546,20567,20568,20569,30563,30564,60311,60312,60314,60315,60316);
delete from monster where id >= 9000315 and id <= 9000322;
delete from attribute where id >= 9000315 and id <= 9000322;
delete from monster_group where id >= 900396 and id <= 900401;
delete from gen_event where id >= 1000169 and id <= 1000172;
delete from gen_event where id >= 20010157 and id <= 20010176;
delete from gen_event where id >= 20010178 and id <= 20010194;
delete from award_acquire where award_id in (2000247,2000248,2000249,2000240,2000241,2000242,2000215,2000216,2000243,2000244,2000245,2000246,2000250,2000251,2000252,2000253,2000254);

#经验简单全删 3064
delete from npc_group where id in (20395,60166,20478,20479,40122,40157,50042);
delete from monster where id in (1000366,1000509,1000777,1000778);
delete from monster_group where id in (200318,200351,200474,200475);
delete from attribute where id in (1000366,1000509,1000777,1000778);
delete from gen_event where mapid in (3064);
delete from valve where id in (1050);
delete from game_map where id = 3064;

#经验普通全删 3066
delete from npc_group where id in (60171,60255,40124,40125,40239,40240,20402,20403,20404,20469,20470);
delete from monster where id in (1000371,1000503,1000811);
delete from monster_group where id in (200320,200348,200489);
delete from attribute where id in (1000371,1000503,1000811);
delete from gen_event where mapid in (3066);
delete from game_map where id = 3066;

#金钱噩梦全删
delete from npc_group where id in (50040,60140,60141,60142,60143,60144,60145,40104,40105,40106,40151,40214,30399);
delete from monster where id in (1000324,1000495,1000771);
delete from monster_group where id in (200139,200340,200649);
delete from attribute where id in (1000324,1000495,1000771);
delete from gen_event where mapid in (3057);
delete from game_map where id = 3057;

#材料深渊全删
delete from npc_group where id in (40196,40197,60345,20598,20599,20600);
delete from monster where id in (1000741,1000742,1000743,1000779);
delete from monster_group where id in (200429,200430,200431,200452,200476);
delete from attribute where id in (1000741,1000742,1000743,1000779);
delete from gen_event where mapid in (3092);
delete from game_map where id = 3092;

#主城巡查全删
delete from npc_group where id in (10018,60212,60213,60214);
delete from npc_group where id >= 30425 and id <= 30430;
delete from monster where id in (9000228,9000230);
delete from monster_group where id in (900313,900315);
delete from attribute where id in (9000228,9000230);
delete from gen_event where id >= 1000137 and id <= 1000149;

#限时黄金怪全删
delete from npc_group where id >= 20903 and id <= 20922;
delete from npc_group where id in (20859,20860);
delete from gen_event where id >= 99990088 and id <= 99990093;
delete from monster where id >= 1000881 and id <= 1000890;
delete from monster_group where id >= 800183 and id <= 800192;
delete from attribute where id >= 1000881 and id <= 1000890;
delete from award_acquire where award_id = 7000875;
delete from itemtype where id = 7000345;


###################################################



###################################################
#20191128[终焉誓约][数据配置]任务冗余数据删除(李宏伟)
#by:李宏伟
#date:2019-11-28
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分
#风车镇冗余
#风车镇废弃任务（掩码释放 5-61 5-62）
DELETE FROM `task_index`  WHERE `taskid` in(10171,10172);
#风车镇废弃支线引导任务（掩码释放 16-30 16-31）
DELETE FROM `task_index`  WHERE `taskid` in(70210,70211);
#风车镇废弃支线引导任务奖励
DELETE FROM `award_acquire` WHERE `award_id` in(2000264,2000265);
#风车镇废弃GenId(陷阱相关)
DELETE FROM `gen_event`  WHERE `id` in(2001401,2001402,2001403,2001405,2001406,2001407,2001408,2001409,2001411);
#风车镇废弃GenId(NPC相关)
DELETE FROM `gen_event`  WHERE `id` in(2001419,2001420,2001421);
#风车镇废弃GenId(怪物相关)
DELETE FROM `gen_event`  WHERE `id` in(2001423);
#风车镇废弃陷阱 - NpcGroup
DELETE FROM `npc_group`  WHERE `id` in(30107,30108,30110,30111,30112,30113,30114,30116);
#风车镇废弃NPC - NpcGroup
DELETE FROM `npc_group`  WHERE `id` in(20064,20065,20123,20133);
#风车镇废弃采集物 - NpcGroup
DELETE FROM `npc_group`  WHERE `id` in(60044,60045);
#风车镇废弃怪物 - MonGroup
DELETE FROM `monster_group`  WHERE `id` in(900137);

#已删除 风车镇 ChineseText Id(20172,20176,20177,20178,20179,20182,20183,20184,21459,21460)


#永夜森林冗余
#永夜森林废弃任务（掩码释放 8-3 8-4 8-5 8-8 8-15）
DELETE FROM `task_index`  WHERE `taskid` in(10304,10305,10306,10309,10316);
#永夜森林废弃GenId(陷阱相关) --已删除（20030227）
DELETE FROM `gen_event`  WHERE `id` in(20030141);
#永夜森林废弃GenId(NPC相关)  --已删除（20030160）
DELETE FROM `gen_event`  WHERE `id` in(20030150);
#永夜森林废弃陷阱 - NpcGroup
DELETE FROM `npc_group`  WHERE `id` in(30281,30314);
#永夜森林废弃NPC - NpcGroup
DELETE FROM `npc_group`  WHERE `id` in(20239);

#已删除 永夜森林 ChineseText Id(10038,20191,20193,20195,20196,20198,20200,20202,20203,20204,20207,20211,20213,20214)


#阿诺特岛冗余
#阿诺特岛废弃任务
#（掩码释放 13-(17~22) ）
DELETE FROM `task_index`  WHERE `taskid` in(10546,10547,10548,10549,10550,10551);
#（掩码释放 13-(38~39) ）
DELETE FROM `task_index`  WHERE `taskid` in(10567,10568);
#（掩码释放 13-(42~43) ）
DELETE FROM `task_index`  WHERE `taskid` in(10571,10572);
#（掩码释放 13-(57~60) ）
DELETE FROM `task_index`  WHERE `taskid` in(10586,10587,10588,10589);
#（掩码释放 13-(61~63) 14-(1~2)）
DELETE FROM `task_index`  WHERE `taskid` in(10590,10591,10592,10593,10594);
#（掩码释放 13-54 16-41 16-44 ）
DELETE FROM `task_index`  WHERE `taskid` in(10583,10614,10617);

#（MonId GroupId GenId）
#已删除怪物（9000291 900371 20050112）

#阿诺特岛废弃GenId(陷阱相关)
DELETE FROM `gen_event`  WHERE `id` in(20050101,20050102,20050108);
#阿诺特岛废弃陷阱 - NpcGroup
DELETE FROM `npc_group`  WHERE `id` in(30510,30511,30517);

#阿诺特岛废弃GenId(采集相关)
DELETE FROM `gen_event`  WHERE `id` in(20050109);
#阿诺特岛废弃采集 - NpcGroup
DELETE FROM `npc_group`  WHERE `id` in(60292);

#阿诺特岛废弃GenId(NPC相关)
DELETE FROM `gen_event`  WHERE `id` in(20050100,20050087);
#阿诺特岛废弃Npc - NpcGroup
DELETE FROM `npc_group`  WHERE `id` in(10020,20497);

#阿诺特岛废弃怪物(mon)
DELETE FROM `gen_event`  WHERE `id` in(20050113,20050117);
DELETE FROM `attribute`  WHERE `id` in(9000292,9000296);
DELETE FROM `monster`  WHERE `id` in(9000292,9000296);
#阿诺特岛废弃怪物 - MonGroup
DELETE FROM `monster_group`  WHERE `id` in(900372,900376);

#已删除 阿诺特岛 ChineseText Id(10167,10170,21301,21302,21303,21304,21305,21306,21322,21323,21326,21327)
#已删除 阿诺特岛 ChineseText Id(21341,21342,21343,21344,21345,21346,21347,21348,21349,21476,21477)
#已删除 阿诺特岛 ChineseText Id(21308,21309 21311-21318 21320,21321,21325 21329,21330,21332,21333 21335,21336,21337,21338,21340,21351)

#露西墓地副本冗余
DELETE FROM `itemtype`  WHERE `id` = 7000670;
#露西墓地副本废弃Npc - NpcGroup
DELETE FROM `npc_group`  WHERE `id` in(20118,20119,20120,20121);

#风沙堡副本冗余
#已删除MonGroup（200212）
#已删除GenId(20030162 20030163 20030164 20030165 20030166 20030167 20030168 20030169 20030170 20030171 20030172)

#枭鹰矿洞副本冗余(无)

#永夜森林巡查冗余
#已删除 永夜森林巡查 ChineseText Id(20958,20959,20960,20961,20962,20963,20964,20965,20966,20967,21277,21278)

#美食周五冗余
#未使用 taskId(70359 70360 70361)

#倒计时相关
#永夜森林
DELETE FROM `itemtype`  WHERE `id` = 7000280;
DELETE FROM `award_acquire` WHERE `award_id` in(1000818,1000966);

#已删除 ChineseText Id 10224

#日常副本删除（金钱简单 金钱普通 金钱深渊 经验困难）
DELETE FROM `game_map`  WHERE `id` in(3060,3056,3093,3059);
#掩码回收（1122,1177,1119,1171,1116,1135）

DELETE FROM `award_acquire` WHERE `award_id` in(1000422,1000423,1000149,1000150,1000152,1000153);
DELETE FROM `award_acquire` WHERE `award_id` in(1000327,1000328,1000329,1000330,1000331,1000332,1000333,1000334);
DELETE FROM `npc_group`  WHERE `id` in(20457,40112,40113,40114,40212,40213,60153,60154,60159,60160,60249,60267,60269,60273,60274,60275,60276);
DELETE FROM `monster_group`  WHERE `id` in(200315,200341,200464,200465);
DELETE FROM `monster`  WHERE `id` in(1000332,1000496,1000766,1000767);
DELETE FROM `attribute`  WHERE `id` in(1000332,1000496,1000766,1000767);
DELETE FROM `valve`  WHERE `id` in(1041);
DELETE FROM `gen_event`  WHERE `id` >= 3060001 and `id` <= 3060033;

#已删除 ChineseText Id  20018,20019


DELETE FROM `award_acquire` WHERE `award_id` in(1000134,1000135,1000136,1000137,1000198,1000320,1000321,1000362,1000432,1000433);
DELETE FROM `npc_group`  WHERE `id` in(20345,20371,20372,20373,20468,20661,40101,40102,40103,40231,40232,60146);
DELETE FROM `monster_group`  WHERE `id` in(200342,200138,200343,200480,200481);
DELETE FROM `monster`  WHERE `id` in(1000497,1000323,1000498,1000783,1000784);
DELETE FROM `attribute`  WHERE `id` in(1000497,1000323,1000498,1000783,1000784);
DELETE FROM `valve`  WHERE `id` in(1040);
DELETE FROM `gen_event`  WHERE `id` >= 3056001 and `id` <= 3056028;

#已删除 ChineseText Id  21451,21452


DELETE FROM `award_acquire` WHERE `award_id` in(1000392,1000393,1000394,1000395,1000396,1000397,1000398,1000438,1000439);
DELETE FROM `npc_group`  WHERE `id` in(20602,20603,20660,40201,40202,40235,40236,60347);
DELETE FROM `monster_group`  WHERE `id` in(200433,200434,200435,200483);
DELETE FROM `monster`  WHERE `id` in(1000745,1000746,1000747,1000805);
DELETE FROM `attribute`  WHERE `id` in(1000745,1000746,1000747,1000805);
DELETE FROM `valve`  WHERE `id` in(1083);
DELETE FROM `gen_event`  WHERE `id` >= 3093001 and `id` <= 3093020;

#已删除 ChineseText Id  21572,21573

DELETE FROM `award_acquire` WHERE `award_id` in(1000143,1000144,1000145,1000146,1000302,1000303,1000304,1000147,1000148,1000426,1000427);
DELETE FROM `npc_group`  WHERE `id` in(20374,20378,20379,20459,20460,20461,40110,40111,40217,40218,60152,60250);
DELETE FROM `monster_group`  WHERE `id` in(200314,200345,200346,200471);
DELETE FROM `monster`  WHERE `id` in(1000331,1000500,1000501,1000774);
DELETE FROM `attribute`  WHERE `id` in(1000331,1000500,1000501,1000774);
DELETE FROM `valve`  WHERE `id` in(1046);
DELETE FROM `gen_event`  WHERE `id` >= 3059001 and `id` <= 3059021;

#已删除 ChineseText Id  20006,20007

#奇遇异界迷踪冗余

#已删除 ChineseText Id  20103,20104,20105


###################################################

###################################################
#20191211[终焉誓约][数据配置]ERP315190【终焉誓约】物品、特性表冗余数据删除(林多娜)
#by:林多娜
#date:2019-12-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-356139.aspx
###################################################
#注释部分

#打开注释部分
delete from itemtype where id in (3020013,3020014,3020015);
###################################################
###################################################
#20191212[终焉誓约][数据配置]古加尼尔之息活动开启配置【CBT2】(林多娜)
#by:林多娜
#date:2019-12-12
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-356002.aspx
###################################################
#注释部分
delete from dailyact where id in (10019,10020);
#打开注释部分

###################################################

insert into dailyact(`id`,`against_id`,`type`,`starttime`,`endtime`,`data1`,`data2`,`data3`,`day`) values
('10019','0','9','40000','2359','7','21','0','0'),
('10020','0','9','180000','2359','7','21','0','0');




###################################################
#20191210[终焉誓约][数据配置]【终焉誓约】任务冗余数据删除(孟志远)-冒险者营地主线
#by:孟志远
#date:2019-12-10
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分,打开原因：删除无用数据
delete from award_acquire where award_id in (1000815,1000963);
delete from npc_group where id in (20182,20183,20184,20201);
delete from itemtype where id in (7000250);
delete from task_index where taskid in (10277,10283,10292);
###################################################

###################################################
#20191210[终焉誓约][数据配置]【终焉誓约】任务冗余数据删除(孟志远)-主城主线
#by:孟志远
#date:2019-12-10
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分，打开原因：删除无用数据
delete from award_acquire where award_id in (2000055);
delete from gen_event where id in (1000033);
delete from npc_group where id in (20180);
delete from task_index where taskid in (10212,10409);

###################################################

###################################################
#20191211[终焉誓约][数据配置]【终焉誓约】任务冗余数据删除(孟志远)-口袋岛主线
#by:孟志远
#date:2019-12-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分,打开原因：删除无用数据
delete from award_acquire where award_id in (1000823);
delete from npc_group where id in (60358,20642);
delete from itemtype where id in (7000330);
delete from gen_event where id in (20050269);
delete from task_index where taskid in (10652);
###################################################

###################################################
#20191211[终焉誓约][数据配置]【终焉誓约】任务冗余数据删除-哀嚎神殿副本(孟志远)
#by:孟志远
#date:2019-12-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分，打开原因：删除无用数据
delete from award_acquire where award_id in (1000461,1000462);

###################################################

###################################################
#20191211[终焉誓约][数据配置]【终焉誓约】任务冗余数据删除-失事飞船剧情副本(孟志远)
#by:孟志远
#date:2019-12-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分

###################################################

###################################################
#20191211[终焉誓约][数据配置]【终焉誓约】任务冗余数据删除-树心城多人本(孟志远)
#by:孟志远
#date:2019-12-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分，打开原因：删除无用数据
delete from npc_group where id in (30526,30528,30529);
delete from gen_event where id in (3074003,3074005,3074006);

###################################################

###################################################
#20191211[终焉誓约][数据配置]【终焉誓约】任务冗余数据删除-树心城剧情副本(孟志远)
#by:孟志远
#date:2019-12-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分，打开原因：删除无用数据
delete from npc_group where id in (30349,30350);
delete from gen_event where id in (3044006);

###################################################

###################################################
#20191211[终焉誓约][数据配置]【终焉誓约】任务冗余数据删除-悬赏任务(孟志远)
#by:孟志远
#date:2019-12-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分，打开原因：删除无用数据
delete from award_acquire where award_id >= 2000316 and award_id <= 2000366;
delete from attribute where id >= 9000327 and id <= 9000358;
delete from attribute where id >= 9000362 and id <= 9000396;
delete from attribute where id >= 9000402 and id <= 9000409;
delete from monster where id >= 9000327 and id <= 9000358;
delete from monster where id >= 9000362 and id <= 9000396;
delete from monster where id >= 9000402 and id <= 9000409;
delete from monster_group where id >= 900403 and id <= 900433;
delete from monster_group where id >= 900437 and id <= 900440;
delete from gen_event where id >= 99980041 and id <= 99980060;
delete from gen_event where id >= 99980075 and id <= 99980090;
delete from task_index where taskid >= 40050 and taskid <= 40084;
delete from task_index where taskid >= 40097 and taskid <= 40131;

###################################################

###################################################
#20191212[终焉誓约][数据配置]【终焉誓约】任务冗余数据删除-材料普通(孟志远)
#by:孟志远
#date:2019-12-12
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分,打开原因：删除无用数据
delete from game_map where id = 3068;
delete from npc_group where id in (20405,20406,20476,40129,40130,40131,40132,40133,40241,40242,60176,60177,60178);
delete from monster_group where id in (200322,200339,200490);
delete from monster where id in (1000373,1000494,1000815);
delete from attribute where id in (1000373,1000494,1000815);
delete from gen_event where id in (3068001,3068002,3068003,3068004,3068005,3068006,3068007,3068008,3068009,3068010,3068011,3068012,3068013,3068014,3068015,3068016,3068017,3068101,3068102,3068103,3068201);
delete from valve where id in (1053);
delete from award_acquire where award_id in (1000191,1000192,1000195,1000452,1000453,1000193,1000194,1000335,1000336,1000337);
###################################################


###################################################
#20191212[终焉誓约][数据配置]【终焉誓约】任务冗余数据删除-经验炼狱(孟志远)
#by:孟志远
#date:2019-12-12
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分
delete from game_map where id = 3088;
delete from award_acquire where award_id in (1000416,1000417,1000418,1000419,1000420,1000421,1000454,1000455);
delete from npc_group where id in (20610,20672,40209,40210,40211,40243,40244,60350);
delete from monster_group where id in (200453,200454,200455,200456,200494);
delete from gen_event where id in (3088001,3088002,3088003,3088004,3088005,3088006,3088007,3088008,3088009,3088010,3088011,3088012,3088013,3088014,3088015,3088016,3088101,3088102,3088103,3088104,3088105,3088201);
delete from attribute where id in (1000756,1000757,1000758,1000759,1000816);
delete from monster where id in (1000756,1000757,1000758,1000759,1000816);
delete from valve where id in (1085);
###################################################




###################################################
#20191204[终焉誓约][任务脚本]任务ERP312893终焉誓约任务冗余数据删除(苏亚玲)
#by:苏亚玲
#date:2019-12-04
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分,原因：删除旧数据
#转职
delete from task_index where taskid >= 30000 and taskid <= 30017;
delete from task_index where taskid >= 30021 and taskid <= 30023;

#经验副本噩梦
delete from game_map where id = 3062;
delete from valve where id = 1047;
delete from gen_event where id >= 3062001 and id <= 3062021;
delete from award_acquire where award_id >= 1000154 and award_id <= 1000162;
delete from award_acquire where award_id IN (1000365,1000450,1000451);
delete from npc_group where id IN (20458,30485,40115,40116,40237,40238,60251,60155,60156,60157,60158);
delete from npc_group where id >= 20375 and id <= 20377;
delete from monster where id IN (1000333,1000499,1000807);
delete from monster_group where id IN (200316,200344,200485);
delete from attribute where id IN (1000333,1000499,1000807);

#材料副本噩梦
delete from game_map where id = 3063;
delete from valve where id = 1049;
delete from gen_event where id >= 3063001 and id <= 3063022;
delete from award_acquire where award_id >= 1000168 and award_id <= 1000177;
delete from npc_group where id IN (20472,30400,30488,40117,40118,40119,40120,40121,60161,60162,60163,60164,60165);
delete from monster where id IN (1000365,1000504,1000505,1000806);
delete from monster_group where id IN (200317,200349,200350,200484);
delete from attribute where id IN (1000365,1000504,1000505,1000806);

#材料副本困难
delete from game_map where id = 3065;
delete from valve where id = 1051;
delete from gen_event where id >= 3065001 and id <= 3065020;
delete from award_acquire where award_id >= 1000199 and award_id <= 1000202;
delete from award_acquire where award_id >= 1000324 and award_id <= 1000326;
delete from npc_group where id IN (20475,40123,40134,40135,40225,40226,60167,60168,60169,60170,60263,60264,60265,60266,60268,60270,60271,60272);
delete from monster where id IN (1000370,1000491,1000780);
delete from monster_group where id IN (200319,200336,200477);
delete from attribute where id IN (1000370,1000491,1000780);

#材料副本炼狱
delete from game_map where id = 3094;
delete from gen_event where id >= 3094001 and id <= 3094022;
delete from award_acquire where award_id >= 1000405 and award_id <= 1000409;
delete from award_acquire where award_id >= 1000442 and award_id <= 1000445;
delete from npc_group where id IN (20608,30607,40207,40208,40233,40234,60348,60349);
delete from monster where id IN (1000754,1000755,1000785);
delete from monster_group where id IN (200450,200451,200482);
delete from attribute where id IN (1000754,1000755,1000785);

#罗兰镇巡查
delete from gen_event where id IN (2001847,2001850,20010024,20010026,20010030) ;
delete from award_acquire where award_id >= 2000099 and award_id <= 2000103;
delete from award_acquire where award_id >= 5000105 and award_id <= 5000107;
delete from award_acquire where award_id >= 6000057 and award_id <= 6000058;
delete from award_acquire where award_id >= 6000156 and award_id <= 6000157;
delete from award_acquire where award_id = 2000191;
delete from npc_group where id IN (30324,30422,30424,30454);
delete from monster where id = 1000243;
delete from monster_group where id = 900268;
delete from attribute where id = 1000243;

#风车镇巡查
delete from gen_event where id = 2001921 ;
delete from award_acquire where award_id >= 2000104 and award_id <= 2000109;
delete from award_acquire where award_id >= 5000108 and award_id <= 5000109;
delete from award_acquire where award_id >= 6000054 and award_id <= 6000055;
delete from award_acquire where award_id >= 6000059 and award_id <= 6000060;
delete from npc_group where id = 30363;

#凋零之地副本
delete from award_acquire where award_id = 1000107;
delete from monster where id IN (1000251,1000958);
delete from monster_group where id = 200255;
delete from attribute where id IN (1000251,1000958);

#玫瑰团驻地副本
delete from valve where id = 1019;
delete from gen_event where id IN (3021010,3021011,3021012,3021014,3021015);
delete from award_acquire where award_id >= 1000013 and award_id <= 1000015;
delete from npc_group where id IN (20431,30051,40001,60230);
delete from monster where id = 1000744;
delete from monster_group where id = 200432;
delete from attribute where id = 1000744;

#不冬岛主线
delete from task_index where taskid = 10620;

#月神森林主线
delete from task_index where taskid = 10324;
delete from gen_event where id IN(20030125,20030126,20030127);
delete from npc_group where id IN (20193,20195,20196,20200,30242,30654);
delete from monster where id = 9000134;
delete from monster_group where id = 900244;
delete from attribute where id = 9000134;

#罗兰镇主线
delete from task_index where taskid IN (10135,10136,10137,10268,10138,10142,10143,10146,10150,10269,10214,10543,10544,10215,10613,10147);
delete from npc_group where id IN (20050,20052,20135,20136,20137,20416,30091,30092,30093,30094,30099,30100,30212,30647,60042);
delete from gen_event where id IN (2001384,2001386,2001387,2001388,2001389,2001393,2001394,2001395,2001396,2001536,2001539,2001540,2001541,2001542,2001544,2001545,2001739,2001988,20010248);
delete from monster where id IN (9001026,9001027,9001028);
delete from monster_group where id IN (900131,900132,900133);
delete from attribute where id IN (9001026,9001027,9001028);
###################################################

###################################################
#20191129[终焉誓约][数据配置]ERP312620【终焉誓约】最新版本佣兵委托任务调整制作(林多娜)
#by:林多娜
#date:2019-11-29
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354046.aspx
###################################################
#注释部分
delete from gen_event where id = 1000285;
#打开注释部分

###################################################
INSERT INTO gen_event (`id`, `name`, `mapid`, `event_type`, `event_id`,`flag`, `position`, `rotation_y`, `scale`) VALUES 
('1000285', '费夫', '1000', '1', '20217',1, '46.67,22.63,78.77', '225', '1');

update gen_event set flag = 1 where id = 1001008;

UPDATE `gen_event` SET `position`='43.97,22.63,84.96' WHERE  `id`=1000160;


###################################################
#20191216[终焉誓约][任务脚本]任务ERP313591终焉誓约主城和王宫NPC闲聊有关文字换行(苏亚玲)
#by:苏亚玲
#date:2019-12-16
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-355298.aspx
###################################################
#注释部分
delete from npc_group where id = 60270;
#打开注释部分

###################################################

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(60270, '神秘册子', 1);

###################################################
#20191129[终焉誓约][任务脚本]魔物入侵活动玩法总案_V1.01-SQL数据(倪祖伟)
#by:倪祖伟
#date:2019-12-20
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-351930.aspx#tbTopicReply
###################################################
#注释部分
DELETE FROM `dungeon_level` WHERE `id` in(21,22,23,24,25,31,32,33,34,35,41,42,43,44,45);
#打开注释部分
DELETE FROM `config` WHERE `id`=144;
DELETE FROM `dungeon_level` WHERE `id`>=1 AND `id`<=20;
DELETE FROM `syn_reward` WHERE `id` in(241,242,243,10014,10015,10016,10017,10029,10030,10031,10032,10044,10045,10046,10047,10059,10060,10061,10062,10074,10075,10076,10077,10089,10090,10091,10092,10104,10105,10106,10107,10119,10120,10121,10122,10123,10134,10135,10136,10137,10138,10149,10150,10151,10152,10153,10164,10165,10166,10167,10168,10179,10180,10181,10182,10183,10194,10195,10196,10197,10198,10209,10210,10211,10212,10213,10224,10225,10226,10227,10228,10239,10240,10241,10242,10243,10254,10255,10256,10257,10258,10269,10270,10271,10272,10273,10284,10285,10286,10287,10288);
###################################################
INSERT INTO `dungeon_level` (`id`, `level_id`, `monster1_id`, `monster2_id`, `boss_id`) VALUES 
(11, 3097, '200466;200467', '0', 200468),
(12, 3099, '200777;200778', '200491;200492', 200493),
(13, 3098, '200779;200780', '200781;200782', 200783),
(14, 3096, '200459;200460', '200461;200462', 200463),
(15, 3101, '200499;200500', '200501;200502', 200503),
(21, 3102, '200504;200505', '200506;200507', 200508),
(22, 3105, '200514;200515', '200516;200517', 200518),
(23, 3111, '200549;200550', '200551;200552', 200553),
(24, 3115, '200569;200570', '200571;200572', 200573),
(25, 3104, '200519;200520', '200521;200522', 200523),
(31, 3103, '200509;200510', '200511;200512', 200513),
(32, 3113, '200559;200560', '200561;200562', 200563),
(33, 3108, '200534;200535', '200536;200537', 200538),
(34, 3110, '200544;200545', '200546;200547', 200548),
(35, 3107, '200529;200530', '200531;200532', 200533),
(41, 3106, '200524;200525', '200526;200527', 200528),
(42, 3109, '200539;200540', '200541;200542', 200543),
(43, 3116, '200574;200575', '200576;200577', 200578),
(44, 3112, '200554;200555', '200556;200557', 200558),
(45, 3114, '200564;200565', '200566;200567', 200568);

INSERT INTO `syn_reward` (`id`, `type`, `data1`, `data2`, `data3`, `reward1_id`, `reward1_num`, `reward2_id`, `reward2_num`, `reward3_id`, `reward3_num`, `reward4_id`, `reward4_num`) VALUES 
(241, 2, 0, 0, 0, 3030013, 1, 2000054, 1, 204020, 2, 13, 100);

UPDATE `syn_reward` SET `data1`=11, `reward3_id`=13, `reward3_num`=100 WHERE `id`=10318;
UPDATE `syn_reward` SET `data1`=12, `reward3_id`=13, `reward3_num`=100 WHERE `id`=10319;
UPDATE `syn_reward` SET `data1`=13, `reward3_id`=13, `reward3_num`=100 WHERE `id`=10320;
UPDATE `syn_reward` SET `data1`=14, `reward3_id`=13, `reward3_num`=100 WHERE `id`=10321;
UPDATE `syn_reward` SET `data1`=15, `reward3_id`=13, `reward3_num`=100 WHERE `id`=10322;
UPDATE `syn_reward` SET `data1`=21, `reward3_id`=13, `reward3_num`=100 WHERE `id`=10323;
UPDATE `syn_reward` SET `data1`=22, `reward3_id`=13, `reward3_num`=100 WHERE `id`=10324;
UPDATE `syn_reward` SET `data1`=23, `reward3_id`=13, `reward3_num`=100 WHERE `id`=10325;


###################################################
#20191219[终焉誓约][任务脚本]【雾海的危机】【前置任务】优化(倪祖伟)
#by:倪祖伟
#date:2019-12-19
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-355396.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `task_index` WHERE `taskid` >= 70223 and `taskid` <= 70227;
DELETE FROM `gen_event` WHERE `id` >= 2002035 and `id` <= 2002040;
DELETE FROM `gen_event` WHERE `id` = 20010251;
DELETE FROM `npc_group` WHERE `id`in (20948,30658);
DELETE FROM `monster` WHERE `id` >= 9000654 AND `id` <= 9000658;
DELETE FROM `attribute` WHERE `id` >= 9000654 AND `id` <= 9000658;
DELETE FROM `monster_group` WHERE `id` >= 900585 AND `id` <= 900589;
###################################################
UPDATE `gen_event` SET `name`='老船长佩翁', `flag`=0 WHERE `id`=20010252;


###################################################
#20191219[终焉誓约][数据配置]成就目标—成就目标总案_V1.10-SQL数据(李宏伟)
#by:李宏伟
#date:2019-12-19
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-350646.aspx
###################################################
#注释部分

#打开注释部分

###################################################

UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010000;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010001;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010002;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010003;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010004;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010005;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010006;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010007;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010008;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010009;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010010;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010011;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010012;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010013;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010014;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010015;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010016;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010017;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010018;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010019;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010020;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010021;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010022;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010023;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010024;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010025;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010026;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010027;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010028;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010029;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010030;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010031;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010032;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010033;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010034;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010035;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010036;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010037;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010038;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010039;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010040;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010041;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010042;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010043;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010044;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010045;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010046;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010047;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010048;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010049;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010050;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010051;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010052;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010053;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010054;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010055;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010056;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010057;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010058;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010059;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010060;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010061;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010062;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010063;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010064;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010065;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010066;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010067;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010068;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010069;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010070;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010071;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010072;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010073;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010074;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010075;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010076;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010077;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010078;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010079;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010080;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010081;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010082;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010083;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010084;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010085;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010086;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010087;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010088;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010089;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010090;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010091;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010092;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010093;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010094;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010095;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010096;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010097;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010098;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010099;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010100;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010101;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010102;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010103;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010104;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010105;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010106;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010107;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010108;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010109;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010110;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010111;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010112;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010113;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010114;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010115;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010116;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010117;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010118;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010119;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010120;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010121;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010122;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010123;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010124;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010125;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010126;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010127;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010128;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010129;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010130;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010131;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010132;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010133;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010134;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010135;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010136;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010137;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010138;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010139;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010140;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010141;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010142;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010143;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010144;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010145;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010146;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010147;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010148;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010149;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010150;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010151;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010152;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010153;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010154;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010155;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010156;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010157;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010158;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010159;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010160;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010196;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010197;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010198;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010199;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010200;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010201;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010202;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010203;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010204;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010205;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010206;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010207;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010208;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010209;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010210;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010211;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010212;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010213;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010214;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010215;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010216;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010217;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010218;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010219;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010220;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010221;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010222;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010223;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010224;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010225;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010226;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010227;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010228;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010229;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010230;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010231;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010232;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010233;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010234;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010235;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010236;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010237;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010238;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010239;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010240;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010241;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010242;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010243;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010244;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010245;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010246;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010247;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010248;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010249;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010250;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010251;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010252;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010253;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010254;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010255;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010256;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010257;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010258;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010259;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010260;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010261;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010262;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010263;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010264;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010265;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010266;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010267;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010268;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010269;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010270;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010271;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010272;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010273;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010274;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010275;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010276;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010277;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010278;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010279;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010280;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010281;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010282;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010283;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010284;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010285;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010286;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010287;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010288;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010289;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010290;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010291;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010292;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010293;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010294;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010295;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010296;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010297;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010298;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010299;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010300;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010301;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010302;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010303;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010304;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010305;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010306;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010307;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010308;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010309;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010310;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010311;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010312;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010313;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010314;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010315;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010316;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010317;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010318;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010319;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010320;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010321;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010322;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010323;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010324;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010325;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010326;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010327;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010328;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010329;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010330;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010331;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010332;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010333;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010334;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010335;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010336;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010337;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010338;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010339;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010340;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010341;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010342;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010343;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010344;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010345;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010346;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010347;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010348;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010349;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010350;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010351;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010352;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010353;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010354;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010355;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010356;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010357;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010358;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010359;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010360;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010361;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010362;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010363;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010364;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010365;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010366;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010367;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010368;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010369;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010370;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010371;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010372;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010373;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010374;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010375;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010376;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010377;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010378;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010379;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010380;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010381;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010382;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010383;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010384;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010385;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010386;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010387;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010388;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010389;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010390;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010391;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010392;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010393;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010394;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010395;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010396;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010397;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010398;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010399;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010400;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010401;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010402;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010403;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010404;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010405;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010406;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010407;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010408;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010409;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010410;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010411;
UPDATE  `goals` SET `data1` = 1 WHERE `id` = 1010412;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010413;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010414;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010415;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010416;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010417;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010418;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010419;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010420;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010421;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010422;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010423;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010424;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010425;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010426;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010427;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010428;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010429;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010430;
UPDATE  `goals` SET `data1` = 2 WHERE `id` = 1010436;
UPDATE  `goals` SET `data1` = 2 WHERE `id` = 1010437;
UPDATE  `goals` SET `data1` = 2 WHERE `id` = 1010438;
UPDATE  `goals` SET `data1` = 2 WHERE `id` = 1010439;
UPDATE  `goals` SET `data1` = 2 WHERE `id` = 1010440;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010441;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010442;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010443;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010444;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010445;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010446;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010447;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010448;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010449;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010450;
UPDATE  `goals` SET `data1` = 3 WHERE `id` = 1010451;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010452;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010453;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010454;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010455;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010456;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010457;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010458;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010459;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010460;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010461;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010462;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010463;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010464;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010465;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010466;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010467;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010468;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010469;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010470;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010471;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010472;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010473;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010474;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010475;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010476;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010477;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010478;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010479;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010480;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010481;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010482;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010483;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010484;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010485;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010486;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010487;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010488;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010489;
UPDATE  `goals` SET `data1` = 4 WHERE `id` = 1010490;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010491;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010492;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010493;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010494;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010495;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010496;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010497;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010498;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010499;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010500;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010501;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010502;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010503;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010504;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010505;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010506;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010507;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010508;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010509;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010510;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010511;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010512;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010513;
UPDATE  `goals` SET `data1` = 5 WHERE `id` = 1010514;




###################################################
#20191121[终焉誓约][数据配置]成就目标-称号系统玩法-SQL数据(李宏伟)
#by:李宏伟
#date:2019-11-21
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-350647.aspx
###################################################
#注释部分
DELETE FROM `label`  WHERE `id` >= 10000 and `id` <= 10031;
DELETE FROM `goals`  WHERE `id` >= 1010515 and `id` <= 1010521;
DELETE FROM `activity_award`  WHERE `id` >= 11210 and `id` <= 11216;
DELETE FROM `monitor`  WHERE `id` >= 2236 and `id` <= 2239;

#打开注释部分

###################################################

INSERT INTO `label` (`id`, `label_index`, `label_mask`) VALUES 
(10000, 1, 1),
(10001, 1, 2),
(10002, 1, 3),
(10003, 1, 4),
(10004, 1, 5),
(10005, 1, 6),
(10006, 1, 7),
(10007, 1, 8),
(10008, 1, 9),
(10009, 1, 10),
(10010, 1, 11),
(10011, 1, 12),
(10012, 1, 13),
(10013, 1, 14),
(10014, 1, 15),
(10015, 1, 16),
(10016, 1, 17),
(10017, 1, 18),
(10018, 1, 19),
(10019, 1, 20),
(10020, 1, 21),
(10021, 1, 22),
(10022, 1, 23),
(10023, 1, 24),
(10024, 1, 25),
(10025, 1, 26),
(10026, 1, 27),
(10027, 1, 28),
(10028, 1, 29),
(10029, 1, 30),
(10030, 1, 31),
(10031, 1, 32);


INSERT INTO `goals` (`id`, `sort`, `activity_id`, `monitor_id`, `mask_index`, `mask_id`, `award_id`, `point`, `data1`) VALUES 
(1010515, 1, 0, 2236, 10, 36, 7000957, 20, 6),
(1010516, 1, 0, 1504, 10, 37, 7000958, 20, 6),
(1010517, 1, 0, 1769, 10, 38, 7000959, 50, 6),
(1010518, 1, 0, 2237, 10, 39, 7000960, 20, 6),
(1010519, 1, 0, 2238, 10, 40, 7000961, 50, 6),
(1010520, 1, 0, 1669, 10, 41, 7000962, 50, 6),
(1010521, 1, 0, 2239, 10, 42, 7000963, 30, 6);

INSERT INTO `activity_award` (`id`, `award_id`, `award_type`, `award_type_id`, `award_num`, `award_show`) VALUES 
(11210, 7000957, 5, 10019, 1, 0),
(11211, 7000958, 5, 10020, 1, 0),
(11212, 7000959, 5, 10026, 1, 0),
(11213, 7000960, 5, 10027, 1, 0),
(11214, 7000961, 5, 10028, 1, 0),
(11215, 7000962, 5, 10029, 1, 0),
(11216, 7000963, 5, 10031, 1, 0);


INSERT INTO `monitor` (`id`, `monitor_type`, `type`, `type_id`, `num_type`, `data1`, `data2`, `data3`, `data4`, `mask1`, `mask2`) VALUES 
(2236, 3, 12, 2, 1, 200, 0, 0, 0, 1, 6),
(2237, 3, 15, 1, 1, 300, 3, 0, 0, 3, 4),
(2238, 1, 3, 3, 1, 6, 4, 5, 0, 0, 0),
(2239, 2, 7, 1, 1, 10222, 0, 0, 0, 8, 9);


###################################################
#20191121[终焉誓约][数据配置]TQD90933【终焉誓约】事件监听系统—事件监听系统总案_V1.15(林多娜)
#by:林多娜
#date:2019-11-21
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-352789.aspx
###################################################
#注释部分
delete from monitor where id in(2233,2234,2235);
#打开注释部分

###################################################

insert into monitor(`id`,`monitor_type`,`type`,`type_id`,`num_type`,`data1`,`data2`,`data3`,`data4`,`mask1`,`mask2`) values
('2233','3','17','4','1','2','0','0','0','3','6'),
('2234','3','21','2','1','2','0','0','0','3','7'),
('2235','3','22','2','1','2','0','0','0','3','8');

update broadcast_type set monitor_id = 2233 where id = 1;
update broadcast_type set monitor_id = 2234 where id = 2;
update broadcast_type set monitor_id = 2235 where id = 3;



###################################################
#20191219[终焉誓约][数据配置]5.7服务端补充（解决开不起来问题）
#by:李宏伟
#date:2019-12-19
###################################################
#注释部分
DELETE FROM `attribute`  WHERE `id` = 9000679;

#打开注释部分

###################################################

INSERT INTO `attribute` (`id`, `life`, `phy_atk`, `mgc_atk`, `phy_def`, `mgc_def`, `life_add`, `phy_atk_add`, `mgc_atk_add`, `phy_def_add`, `mgc_def_add`, `hit_rate`, `dodge_rate`, `critical_rate`, `critical_dmg`, `critical_def`, `parry_rate`, `parry_def`, `hitbreak_rate`, `hitback_xp`, `dmg_add`, `dmg_cut`, `ice_atk`, `fire_atk`, `light_atk`, `dark_atk`, `ice_def`, `fire_def`, `light_def`, `dark_def`) VALUES 
(9000679, 10000, 1000, 1000, 400, 400, 0, 0, 0, 0, 0, 10000, 0, 1000, 5000, 0, 500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

###################################################
#20191122[终焉誓约][数据配置]TQD88807_8【终焉誓约】货币系统—红钻兑换罗兰钻功能_V1.01 (林多娜)
#by:林多娜
#date:2019-11-22
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-351410.aspx
###################################################
#注释部分
delete from itemtype where id = 20;
delete from config where id = 173;
#打开注释部分

###################################################

insert into itemtype(`id`,`name`,`sort`,`amount_limit`,`flag`,`price`,`awardid`,`actionid`) values
('20','星石','0','0','0','1000','0','0');


insert into config(`id`,`type`,`type_id`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`param1`,`desc`) values
('173','32','1','10','0','0','0','0','0','0','','暂定1红钻兑换10罗兰钻');

###################################################
#20191220[终焉誓约][数据配置]TQD89693_7【终焉誓约】亲密度系统—战斗结算增加亲密度_V1.00-SQL数据(林多娜)
#by:林多娜
#date:2019-12-20
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-351495.aspx
###################################################
#注释部分
delete from config where id = 174;
delete from times_limit where id = 64;
#打开注释部分

###################################################

insert into config(`id`,`type`,`type_id`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`param1`,`desc`) values
('174','20','2','100','64','0','0','0','0','0','','英雄每日的好感度提高上限');

insert into times_limit(`id`,`type`,`times`,`limit_tag`,`recover_time`,`refresh_time`,`type_desc`) values
('64','64','0','0','0','0','好感度上限重置时间每天0点刷新');


update monster_group set hero_impression = 5 where multi_boss = 0 and id not in (200468,200493,200783,200463,200503,200508,200518,200553,200573,200523,200513,200563,200538,200548,200533,200528,200543,200578,200558,200568);
update monster_group set hero_impression = 10 where multi_boss = 1 ;
update monster_group set hero_impression = 10 where id in (200468,200493,200783,200463,200503,200508,200518,200553,200573,200523,200513,200563,200538,200548,200533,200528,200543,200578,200558,200568);

###################################################
#20191129[终焉誓约][功能脚本]TQD97078_7【终焉誓约】限时活动—14日循环活动UI替换_V1.00(林多娜)
#by:林多娜
#date:2019-11-29
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-351825.aspx
###################################################
#注释部分
delete from times_limit where id = 63;
#打开注释部分
###################################################


update config set data1 = 63 where id = 149;

insert into times_limit(`id`,`type`,`times`,`limit_tag`,`recover_time`,`refresh_time`,`type_desc`) values
('63','63','1','0','0','0','14日循环活动目标刷新次数每天0点刷新');



###################################################
#20191121[终焉誓约][数据配置]奖励系统—物品抽取功能文档_V1.05-SQL数据(张圆)
#by:张圆
#date:2019-11-21
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-352897.aspx
###################################################
#注释部分
DELETE FROM award_lev_adapt where extract_id  = 1000;
#打开注释部分

###################################################
INSERT INTO `award_lev_adapt` (`extract_id`, `min_lev`, `award1_id`, `award2_id`, `award3_id`, `award4_id`, `award5_id`) VALUES 
(1000, 1, 1000010, 0, 0, 0, 0),
(1000, 10, 0, 1000011, 0, 0, 0),
(1000, 20, 0, 0, 1000012, 0, 0),
(1000, 30, 0, 0, 0, 1000016, 0),
(1000, 40, 0, 0, 0, 0, 1000017),
(1000, 50, 1000010, 1000011, 0, 0, 0),
(1000, 60, 1000010, 1000011, 1000012, 0, 0),
(1000, 70, 1000010, 1000011, 1000012, 1000016, 0),
(1000, 80, 1000010, 1000011, 1000012, 1000016, 1000017);


###################################################
#20191223[终焉誓约][数据配置]修改战技研习中葛莱蒂丝的姓名错误bug(孟志远)
#by:孟志远
#date:2019-12-23
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-346654-6.aspx
###################################################
#注释部分

#打开注释部分

###################################################
update monster set name = "葛莱蒂丝" where id = 1001095;
update monster set name = "葛莱蒂丝" where id = 1001115;
update monster set name = "葛莱蒂丝" where id = 1001116;
update monster set name = "葛莱蒂丝" where id = 1001117;


###################################################
#20191223[终焉誓约][数据配置]英雄技能bug修复(张圆)
#by:张圆
#date:2019-12-23
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-357318.aspx
###################################################
#注释部分
DELETE FROM config where id = 175;
#打开注释部分

###################################################
INSERT INTO `config` (`id`, `type`, `type_id`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `param1`, `desc`) VALUES 
(175, 18, 2, 21, 10002, 0, 0, 0, 0, 0, '', '温丽的梦境关联玩法id');

update special_effect set trigger_arg2 = 4 where id = 11405;

update special_effect set trigger_type = 21,trigger_arg1 = 2019,respond_arg3 = 300 where id = 11302;
update special_effect set trigger_type = 21,trigger_arg1 = 2020 where id = 11303;
update special_effect set trigger_type = 21,trigger_arg1 = 2021 where id = 11304;
update special_effect set trigger_type = 21,trigger_arg1 = 2019,respond_arg3 = 350 where id = 11360;
update special_effect set trigger_type = 21,trigger_arg1 = 2020,respond_arg3 = 50 where id = 11361;
update special_effect set trigger_type = 21,trigger_arg1 = 2019,respond_arg3 = 400 where id = 11362;
update special_effect set trigger_type = 21,trigger_arg1 = 2020,respond_arg3 = 50 where id = 11363;
update special_effect set trigger_type = 21,trigger_arg1 = 2019,respond_arg3 = 450 where id = 11364;
update special_effect set trigger_type = 21,trigger_arg1 = 2020,respond_arg3 = 50 where id = 11365;
update special_effect set trigger_type = 21,trigger_arg1 = 2019,respond_arg3 = 500 where id = 11366;
update special_effect set trigger_type = 21,trigger_arg1 = 2020,respond_arg3 = 50 where id = 11367;
update special_effect set trigger_type = 21,trigger_arg1 = 2019,respond_arg3 = 550 where id = 11368;
update special_effect set trigger_type = 21,trigger_arg1 = 2020,respond_arg3 = 50 where id = 11369;
update special_effect set trigger_type = 21,trigger_arg1 = 2019,respond_arg3 = 600 where id = 11370;
update special_effect set trigger_type = 21,trigger_arg1 = 2020,respond_arg3 = 50 where id = 11371;

update status set special_effects = '' where id in (201901,202001,202101);

update skill_type set status = '',status_start = 0 where id >= 105061 and id <= 105067;


###################################################
#20191225[终焉誓约][数据配置]【秘境探索】【露西蒂尼之墓】优化(李宏伟)
#by:李宏伟
#date:2019-12-25
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-357499.aspx
###################################################
#注释部分
DELETE FROM `monster_group`  WHERE `id` = 200825;

#打开注释部分

###################################################

INSERT INTO `monster_group` (`id`, `name`, `fight`, `multi_boss`, `monster`, `money`, `user_exp`, `hero_exp`, `hero_impression`, `exp_ball`, `reward_id`, `action_id`, `max_battle_time`, `battle_check`, `attack_status_id`, `fight_type`) VALUES 
(200825, '熔岩丧尸', 0, 0, '1000179', 0, 0, 0, 5, 0, 0, 0, 600000, 0, 0, 0);

UPDATE `gen_event` SET `event_id`=200825 WHERE `id`=3028005;



###################################################
#20191224[终焉誓约][任务脚本]【材料副本】【材料副本2】优化(黄业勤)
#by:黄业勤
#date:2019-12-24
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-357844.aspx
###################################################
#注释部分
#打开注释部分
###################################################
UPDATE `gen_event` SET `position`='12.38,-3.738,70.4' WHERE `id`=3135003;
UPDATE `gen_event` SET `position`='17.19,-3.46,60.69' WHERE `id`=3135004;
UPDATE `gen_event` SET `position`='20.77,-3.78,66.29', `rotation_y`=240 WHERE `id`=3135016;
UPDATE `gen_event` SET `position`='12.71,-3.77,65.18', `rotation_y`=76.4 WHERE `id`=3135017;


###################################################
#20191220[终焉誓约][任务脚本]【剧情副本】【荒原古堡】优化(黄业勤)
#by:黄业勤
#date:2019-12-20
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-357502.aspx
###################################################
#注释部分
#打开注释部分  删除宝箱怪有关数据
delete from award_acquire where award_id in (1000456);
delete from attribute where id in (9000431);
delete from gen_event where id in (3024016,3024017);
delete from monster where id in (9000431);
delete from monster_group where id in (200425);
delete from npc_group where id in (40194);
###################################################

###################################################
#20191225[终焉誓约][任务脚本]【日常副本】【金钱副本3】巡逻难度降低(倪祖伟)
#by:倪祖伟
#date:2019-12-25
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-357092.aspx
###################################################
#注释部分
DELETE FROM `attribute` WHERE `id` in (1000992,1000993,1000994,1000996,1000997,1000998);
#打开注释部分
DELETE FROM `monster` WHERE `id`=1000995;
DELETE FROM `monster_group` WHERE `id`=200678;
DELETE FROM `gen_event` WHERE `id`=3137009;
###################################################

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1000992','1000','6000','6000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000993','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000994','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000996','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000997','1000','6000','6000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000998','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0');

UPDATE `monster` SET `attr_id`=1000992 WHERE `id`=1000992;
UPDATE `monster` SET `attr_id`=1000993 WHERE `id`=1000993;
UPDATE `monster` SET `attr_id`=1000994 WHERE `id`=1000994;
UPDATE `monster` SET `attr_id`=1000996 WHERE `id`=1000996;
UPDATE `monster` SET `attr_id`=1000997 WHERE `id`=1000997;
UPDATE `monster` SET `attr_id`=1000998 WHERE `id`=1000998;

###################################################
#20191225[终焉誓约][任务脚本]【日常副本】【金钱副本7】巡逻难度降低(倪祖伟)
#by:倪祖伟
#date:2019-12-25
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-357096.aspx
###################################################
#注释部分
DELETE FROM `attribute` WHERE `id` in (1001131,1001132,1001133,1001134,1001135,1001136);
#打开注释部分

###################################################
insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1001131','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001132','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001133','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001134','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001135','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001136','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0');


UPDATE `monster` SET `attr_id`=1001131 WHERE `id`=1001131;
UPDATE `monster` SET `attr_id`=1001132 WHERE `id`=1001132;
UPDATE `monster` SET `attr_id`=1001133 WHERE `id`=1001133;
UPDATE `monster` SET `attr_id`=1001134 WHERE `id`=1001134;
UPDATE `monster` SET `attr_id`=1001135 WHERE `id`=1001135;
UPDATE `monster` SET `attr_id`=1001136 WHERE `id`=1001136;
###################################################
#20191122[终焉誓约][数据配置]TQD88807_8【终焉誓约】货币系统—红钻兑换罗兰钻功能_V1.01 (林多娜)
#by:林多娜
#date:2019-11-22
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-351410.aspx
###################################################
#注释部分

#打开注释部分
delete from itemtype where id = 20;
###################################################
update itemtype set name = "星石" where id = 2;
###################################################
#20191231[终焉誓约][数据配置]ERP316003【终焉誓约】【日常副本】【金钱副本6】巡逻难度降低(林多娜)
#by:林多娜
#date:2019-12-31
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-357095.aspx
###################################################
#注释部分

#打开注释部分

###################################################
update gen_event set flag = 1 where id = 3125002;

###################################################
#20191231[终焉誓约][数据配置]黄金立方bug修改(孟志远)
#by:孟志远
#date:2019-12-31
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354666.aspx
###################################################
#注释部分

#打开注释部分

###################################################
update gen_event set flag = 1 where id = 3145001;



###################################################
#20191230[终焉誓约][数据配置]【剧情副本】【枭鹰矿洞】优化(李宏伟)
#by:李宏伟
#date:2019-12-30
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-358276.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `npc_group` WHERE `id` in(60187,60188);

###################################################

UPDATE `gen_event` SET `event_id`=60139 WHERE `id`in(3055002,3055003);

###################################################
#20200102[终焉誓约][任务脚本]月神森林巡查bug修改(苏亚玲)
#by:苏亚玲
#date:2020-01-02
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分
delete from npc_group where id >= 60271 and id <= 60272;
#打开注释部分

###################################################

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(60271, '', 1),
(60272, '', 1);

###################################################
#20191224[终焉誓约][任务脚本]最新版本佣兵委托任务调整制作一湖畔镇(林多娜)
#by:林多娜
#date:2019-12-24
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-357579.aspx
###################################################
#注释部分
delete from attribute where id = 9000680;
delete from monster where id = 9000680;
delete from monster_group where id = 900606;
delete from npc_group where id = 21162;
delete from gen_event where id in( 20010294,20010295);
#打开注释部分

###################################################
update gen_event set name = "晚宴陷阱" ,position = "16.13,0.12,-25.09" where id = 2001664;
update gen_event set name = "碎魂狼王乌迪尔" ,intask = 1  where id = 20010044;
update npc_group set name = "晚宴陷阱" where id = 30179;

update monster set name = "碎魂狼王乌迪尔" where id = 9000238;
update monster set name = "海盗皮耶罗",family = 3, own_skills = '1003801;1003802;1003803',skill_que = '0,2;1,0,1,0;1,0,1,2',skill_loop_que = '0,2;1,0,1,0;1,2' where id = 9000239;
update monster_group set name = "碎魂狼王乌迪尔" where id = 900321;
update monster_group set name = "海盗皮耶罗" where id = 900322;
update gen_event set name = "海盗皮耶罗",`position` = "68.69,-0.54,-45.78",rotation_y = 270  where id = 20010045;

insert into npc_group(`id`,`name`,`req_level`) values
('21162','碎魂狼王乌迪尔','1');

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('9000680','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0');

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('9000680','假扮探员的间谍','0','1','1','1','1','0','9000680','','1000201;1000202;1000203','0,2;1,0,1,0;1,0,1,2','0','0,2;1,0,1,0;1,2','0','0');

insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`hero_impression`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('900606','假扮探员的间谍','0','0','9000680','0','0','0','5','0','0','0','600000','0','0','0');

insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('20010294','假扮探员的间谍','2001','2','900606','0','1','1','0','0','0','0','-7.33,0.05,-37.09','225','1'),
('20010295','碎魂狼王乌迪尔','2001','1','21162','0','1','0','0','0','0','0','6.55,0.14,-6.79','134.07','1');


###################################################
#20200102[终焉誓约][任务脚本]【剧情副本】【沙海虫巢】优化(张圆)
#by:张圆
#date:2020-01-02
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-357503.aspx
###################################################
#注释部分
DELETE FROM gen_event where id = 3022021;
#打开注释部分

###################################################
update gen_event set position = '46.99,0.14,30.66',scale = 1 where id = 3022017;
update gen_event set scale = 0.8 where id = 3022018;
update gen_event set position = '39.11,0.14,56.19',scale = 0.5 where id = 3022019;

INSERT INTO `gen_event` (`id`, `name`, `mapid`, `event_type`, `event_id`, `path_id`, `flag`, `intask`, `story_id`, `life_time`, `level_id`, `battle_scene`, `position`, `rotation_y`, `scale`) VALUES 
(3022021, '流沙陷阱', 3022, 3, 5013, 0, 0, 0, 0, 0, 0, 0, '47.54,0.14,64.02', 0, 0.5);


###################################################
#20191128[终焉誓约][任务脚本]任务冗余数据删除(张圆)
#by:张圆
#date:2019-11-28
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-354504.aspx
###################################################
#注释部分

#打开注释部分 删除冗余数据
DELETE FROM attribute where id = 1000325;
DELETE FROM monster where id = 1000325;
DELETE FROM npc_group where id = 20659;
###################################################
update config set data1 = 10002,data2 = 0 where id = 175;


###################################################
#20200102[终焉誓约][数据配置]【剧情副本】【失事飞船】优化(孟志远)
#by:孟志远
#date:2020-01-02
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-358296.aspx
###################################################
#注释部分

#打开注释部分

###################################################
update gen_event set flag = 0 where id = 3087105;
update gen_event set position = "-0.17,0.17,-0.21" where id = 3087003;

