--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--endregion

--local nBoard_Group = 70012
--黄金怪活动id；判断限时/常驻黄金怪活动用
local tDailyactId = {}
tDailyactId[1] = 10012
tDailyactId[2] = 10017
tDailyactId[3] = 10018

--任务

local nGoldMonster_Task1 = 90066
--怪物目前是临时的，先申请了id预留着
--黄金魅影 哥布林
local nMonster1 = 1000484
local nMonster1_group = 800115
local nMonster1_gen = 20010122
--黄金巨石大盗 石头人
local nMonster2 = 1000485
local nMonster2_group = 800116
local nMonster2_gen = 20010123
--黄金寇盗 鹿角兽
local nMonster3 = 1000486
local nMonster3_group = 800117
local nMonster3_gen = 20010124
--黄金魅惑大盗 花妖
local nMonster4 = 1000487
local nMonster4_group = 800118
local nMonster4_gen = 20030472


--local nMonster5 = 1000488
--local nMonster5_group = 800119
--local nMonster5_gen = 20030473

--local nMonster6 = 1000489
--local nMonster6_group = 800120
--local nMonster6_gen = 20030474

--local nMonster7 = 1000490
--local nMonster7_group = 800121
--local nMonster7_gen = 20030475

--local nMonster8 = 1000506
--local nMonster8_group = 800122
--local nMonster8_gen = 20030475

--local nMonster9 = 1000507
--local nMonster9_group = 800123
--local nMonster9_gen = 20030475

local tMonster_gen = {99990001,99990002,99990003,99990004,99990005,99990006,99990007,99990008,99990009,99990010}
local tMonster_group = {nMonster1_group,nMonster2_group,nMonster3_group,nMonster4_group}
local tMonstergroup_Transfer = {}
    tMonstergroup_Transfer[nMonster2_group] = 40172
    tMonstergroup_Transfer[nMonster4_group] = 20565

--刷怪点配置
--MonGen:怪物GEN
--TransferGen:NPC组GEN
--MonHideGen:通过NPC创建的隐藏怪物
local tAreaList = {200101,200102,200103,200104,200105,200301,200302,200303,200304,200305}
local tArea = {}
tArea[200101] = {}
tArea[200101][1] = {Map= 2001,MonGen = 99990070 ,MonHideGen = 99990001 ,TransferGen = 99990068 ,Pos = "51.99,1.29,-39.80",     Ang = 315}
tArea[200101][2] = {Map= 2001,MonGen = 99990070 ,MonHideGen = 99990001 ,TransferGen = 99990068 ,Pos = "-11.97,-1.82,57.32",    Ang = 348.22}
tArea[200102] = {}
tArea[200102][1] = {Map= 2001,MonGen = 99990071 ,MonHideGen = 99990002 ,TransferGen = 99990068 ,Pos = "-76.88,0.90,43.81",     Ang = 339.98}
tArea[200103] = {}
tArea[200103][1] = {Map= 2001,MonGen = 99990072 ,MonHideGen = 99990003 ,TransferGen = 99990068 ,Pos = "-53.56,0.05,-68.06",    Ang = 90.00}
--tArea[200103][2] = {Map= 2001,MonGen = 99990072 ,MonHideGen = 99990003 ,TransferGen = 99990068 ,Pos = "-68.73,9.77,-98.12",    Ang = 319.50}
tArea[200104] = {}
tArea[200104][1] = {Map= 2001,MonGen = 99990073 ,MonHideGen = 99990004 ,TransferGen = 99990068 ,Pos = "47.34,0.58,-99.09",     Ang = 37.71}
tArea[200104][2] = {Map= 2001,MonGen = 99990073 ,MonHideGen = 99990004 ,TransferGen = 99990068 ,Pos = "59.03,0.04,-160.60",    Ang = 270}
tArea[200104][3] = {Map= 2001,MonGen = 99990073 ,MonHideGen = 99990004 ,TransferGen = 99990068 ,Pos = "80.85,0.04,-144.87",    Ang = 345}
tArea[200105] = {}
tArea[200105][1] = {Map= 2001,MonGen = 99990074 ,MonHideGen = 99990005 ,TransferGen = 99990068 ,Pos = "-57.74,0.06,-165.58",   Ang = 0}
tArea[200301] = {}
--tArea[200301][1] = {Map= 2003,MonGen = 99990075 ,MonHideGen = 99990006 ,TransferGen = 99990069 ,Pos = "12.08,-0.01,-42.58",    Ang = 270}
tArea[200301][1] = {Map= 2003,MonGen = 99990075 ,MonHideGen = 99990006 ,TransferGen = 99990069 ,Pos = "-30.50,-0.01,0.61",     Ang = 0}
tArea[200302] = {}
tArea[200302][1] = {Map= 2003,MonGen = 99990076 ,MonHideGen = 99990007 ,TransferGen = 99990069 ,Pos = "-59.30,0.10,-48.36",    Ang = 0}
tArea[200302][2] = {Map= 2003,MonGen = 99990076 ,MonHideGen = 99990007 ,TransferGen = 99990069 ,Pos = "-71.16,0.10,-14.99",    Ang = 214}
--tArea[200302][3] = {Map= 2003,MonGen = 99990076 ,MonHideGen = 99990007 ,TransferGen = 99990069 ,Pos = "-147,0.15,-14.869",	   Ang = 60}
tArea[200302][3] = {Map= 2003,MonGen = 99990076 ,MonHideGen = 99990007 ,TransferGen = 99990069 ,Pos = "-159.79,0.15,-32.54",   Ang = 0}
tArea[200302][4] = {Map= 2003,MonGen = 99990076 ,MonHideGen = 99990007 ,TransferGen = 99990069 ,Pos = "-225.19,0.10,-35.74",   Ang = 0}
tArea[200302][5] = {Map= 2003,MonGen = 99990076 ,MonHideGen = 99990007 ,TransferGen = 99990069 ,Pos = "-181.10,0.32,-72.84",   Ang = 16}
tArea[200303] = {}
tArea[200303][1] = {Map= 2003,MonGen = 99990077 ,MonHideGen = 99990008 ,TransferGen = 99990069 ,Pos = "-191.45,0.10,-112.79",  Ang = 0}
tArea[200303][2] = {Map= 2003,MonGen = 99990077 ,MonHideGen = 99990008 ,TransferGen = 99990069 ,Pos = "-137.53,2.14,-126.69",  Ang = 11}
tArea[200303][3] = {Map= 2003,MonGen = 99990077 ,MonHideGen = 99990008 ,TransferGen = 99990069 ,Pos = "-225.35,1.06,-139.58",  Ang = 335}
tArea[200303][4] = {Map= 2003,MonGen = 99990077 ,MonHideGen = 99990008 ,TransferGen = 99990069 ,Pos = "-243.36,0.82,-136.86",  Ang = 302}
tArea[200304] = {}
tArea[200304][1] = {Map= 2003,MonGen = 99990078 ,MonHideGen = 99990009 ,TransferGen = 99990069 ,Pos = "-183.34,0.12,-266.22",  Ang = 0}
tArea[200304][2] = {Map= 2003,MonGen = 99990078 ,MonHideGen = 99990009 ,TransferGen = 99990069 ,Pos = "-199.49,2.67,-295.47",  Ang = 7}
tArea[200304][3] = {Map= 2003,MonGen = 99990078 ,MonHideGen = 99990009 ,TransferGen = 99990069 ,Pos = "-209.23,0.23,-272.84",  Ang = 343}
tArea[200304][4] = {Map= 2003,MonGen = 99990078 ,MonHideGen = 99990009 ,TransferGen = 99990069 ,Pos = "-248.09,0.09,-264.47",  Ang = 306}
tArea[200304][5] = {Map= 2003,MonGen = 99990078 ,MonHideGen = 99990009 ,TransferGen = 99990069 ,Pos = "-159.99,-0.30,-229.16", Ang = 342}
tArea[200305] = {}
tArea[200305][1] = {Map= 2003,MonGen = 99990079 ,MonHideGen = 99990010 ,TransferGen = 99990069 ,Pos = "-43.09,0.14,-264.35",   Ang = 0}
tArea[200305][2] = {Map= 2003,MonGen = 99990079 ,MonHideGen = 99990010 ,TransferGen = 99990069 ,Pos = "-16.71,0.14,-196.75",   Ang = 0}
tArea[200305][3] = {Map= 2003,MonGen = 99990079 ,MonHideGen = 99990010 ,TransferGen = 99990069 ,Pos = "6.20,0.14,-276.23",     Ang = 317}
tArea[200305][4] = {Map= 2003,MonGen = 99990079 ,MonHideGen = 99990010 ,TransferGen = 99990069 ,Pos = "-119.81,0.14,-231.27",  Ang = 32}

--临时配置  TODO  等功能优化
local tMonsterPosDate = {}
tMonsterPosDate[nMonster1_group]={}
tMonsterPosDate[nMonster1_group][200101] = {}
tMonsterPosDate[nMonster1_group][200101][1] = {tDialog = {60026,60054,60085}}
tMonsterPosDate[nMonster1_group][200101][2] = {tDialog = {60027,60055,60086}}
tMonsterPosDate[nMonster1_group][200102] = {}
tMonsterPosDate[nMonster1_group][200102][1] = {tDialog = {60028,60056,60087}}
tMonsterPosDate[nMonster1_group][200103] = {}
tMonsterPosDate[nMonster1_group][200103][1] = {tDialog = {60029,60057,60088}}
--tMonsterPosDate[nMonster1_group][200103][2] = {tDialog = {60117,60058,60089}}
tMonsterPosDate[nMonster1_group][200104] = {}
tMonsterPosDate[nMonster1_group][200104][1] = {tDialog = {60030,60059,60090}}
tMonsterPosDate[nMonster1_group][200104][2] = {tDialog = {60031,60060,60091}}
tMonsterPosDate[nMonster1_group][200104][3] = {tDialog = {60032,60061,60092}}
tMonsterPosDate[nMonster1_group][200105] = {}
tMonsterPosDate[nMonster1_group][200105][1] = {tDialog = {60033,60062,60093}}
tMonsterPosDate[nMonster1_group][200301] = {}
--tMonsterPosDate[nMonster1_group][200301][1] = {tDialog = {60034,60063,60094}}
tMonsterPosDate[nMonster1_group][200301][1] = {tDialog = {60035,60064,60095}}
tMonsterPosDate[nMonster1_group][200302] = {}
tMonsterPosDate[nMonster1_group][200302][1] = {tDialog = {60036,60065,60096}}
tMonsterPosDate[nMonster1_group][200302][2] = {tDialog = {60037,60066,60097}}
--tMonsterPosDate[nMonster1_group][200302][3] = {tDialog = {60038,60067,60098}}
tMonsterPosDate[nMonster1_group][200302][3] = {tDialog = {60039,60068,60099}}
tMonsterPosDate[nMonster1_group][200302][4] = {tDialog = {60040,60069,60100}}
tMonsterPosDate[nMonster1_group][200302][5] = {tDialog = {60041,60070,60101}}
tMonsterPosDate[nMonster1_group][200303] = {}
tMonsterPosDate[nMonster1_group][200303][1] = {tDialog = {60042,60071,60102}}
tMonsterPosDate[nMonster1_group][200303][2] = {tDialog = {60043,60072,60103}}
tMonsterPosDate[nMonster1_group][200303][3] = {tDialog = {60044,60073,60104}}
tMonsterPosDate[nMonster1_group][200303][4] = {tDialog = {60045,60074,60105}}
tMonsterPosDate[nMonster1_group][200304] = {}
tMonsterPosDate[nMonster1_group][200304][1] = {tDialog = {60115,60075,60106}}
tMonsterPosDate[nMonster1_group][200304][2] = {tDialog = {60046,60076,60107}}
tMonsterPosDate[nMonster1_group][200304][3] = {tDialog = {60047,60077,60108}}
tMonsterPosDate[nMonster1_group][200304][4] = {tDialog = {60048,60078,60109}}
tMonsterPosDate[nMonster1_group][200304][5] = {tDialog = {60049,60079,60110}}
tMonsterPosDate[nMonster1_group][200305] = {}
tMonsterPosDate[nMonster1_group][200305][1] = {tDialog = {60050,60080,60111}}
tMonsterPosDate[nMonster1_group][200305][2] = {tDialog = {60051,60081,60112}}
tMonsterPosDate[nMonster1_group][200305][3] = {tDialog = {60052,60082,60113}}
tMonsterPosDate[nMonster1_group][200305][4] = {tDialog = {60053,60083,60114}}

tMonsterPosDate[nMonster2_group]={}
tMonsterPosDate[nMonster2_group][200101] = {}
tMonsterPosDate[nMonster2_group][200101][1] = {tDialog = {60140,60170,60200}}
tMonsterPosDate[nMonster2_group][200101][2] = {tDialog = {60141,60171,60201}}
tMonsterPosDate[nMonster2_group][200102] = {}
tMonsterPosDate[nMonster2_group][200102][1] = {tDialog = {60142,60172,60202}}
tMonsterPosDate[nMonster2_group][200103] = {}
tMonsterPosDate[nMonster2_group][200103][1] = {tDialog = {60143,60173,60203}}
--tMonsterPosDate[nMonster2_group][200103][2] = {tDialog = {60144,60174,60204}}
tMonsterPosDate[nMonster2_group][200104] = {}
tMonsterPosDate[nMonster2_group][200104][1] = {tDialog = {60145,60175,60205}}
tMonsterPosDate[nMonster2_group][200104][2] = {tDialog = {60146,60176,60206}}
tMonsterPosDate[nMonster2_group][200104][3] = {tDialog = {60147,60177,60207}}
tMonsterPosDate[nMonster2_group][200105] = {}
tMonsterPosDate[nMonster2_group][200105][1] = {tDialog = {60148,60178,60208}}
tMonsterPosDate[nMonster2_group][200301] = {}
--tMonsterPosDate[nMonster2_group][200301][1] = {tDialog = {60149,60179,60209}}
tMonsterPosDate[nMonster2_group][200301][1] = {tDialog = {60150,60180,60210}}
tMonsterPosDate[nMonster2_group][200302] = {}
tMonsterPosDate[nMonster2_group][200302][1] = {tDialog = {60151,60181,60211}}
tMonsterPosDate[nMonster2_group][200302][2] = {tDialog = {60152,60182,60212}}
--tMonsterPosDate[nMonster2_group][200302][3] = {tDialog = {60153,60183,60213}}
tMonsterPosDate[nMonster2_group][200302][3] = {tDialog = {60154,60184,60214}}
tMonsterPosDate[nMonster2_group][200302][4] = {tDialog = {60155,60185,60215}}
tMonsterPosDate[nMonster2_group][200302][5] = {tDialog = {60156,60186,60216}}
tMonsterPosDate[nMonster2_group][200303] = {}
tMonsterPosDate[nMonster2_group][200303][1] = {tDialog = {60157,60187,60217}}
tMonsterPosDate[nMonster2_group][200303][2] = {tDialog = {60158,60188,60218}}
tMonsterPosDate[nMonster2_group][200303][3] = {tDialog = {60159,60189,60219}}
tMonsterPosDate[nMonster2_group][200303][4] = {tDialog = {60160,60190,60220}}
tMonsterPosDate[nMonster2_group][200304] = {}
tMonsterPosDate[nMonster2_group][200304][1] = {tDialog = {60161,60191,60221}}
tMonsterPosDate[nMonster2_group][200304][2] = {tDialog = {60162,60192,60222}}
tMonsterPosDate[nMonster2_group][200304][3] = {tDialog = {60163,60193,60223}}
tMonsterPosDate[nMonster2_group][200304][4] = {tDialog = {60164,60194,60224}}
tMonsterPosDate[nMonster2_group][200304][5] = {tDialog = {60165,60195,60225}}
tMonsterPosDate[nMonster2_group][200305] = {}                                                                        
tMonsterPosDate[nMonster2_group][200305][1] = {tDialog = {60166,60196,60226}}
tMonsterPosDate[nMonster2_group][200305][2] = {tDialog = {60167,60197,60227}}
tMonsterPosDate[nMonster2_group][200305][3] = {tDialog = {60168,60198,60228}}
tMonsterPosDate[nMonster2_group][200305][4] = {tDialog = {60169,60199,60229}}


tMonsterPosDate[nMonster3_group]={}
tMonsterPosDate[nMonster3_group][200101] = {}
tMonsterPosDate[nMonster3_group][200101][1] = {tDialog = {60236,60266,60296}}
tMonsterPosDate[nMonster3_group][200101][2] = {tDialog = {60237,60267,60297}}
tMonsterPosDate[nMonster3_group][200102] = {}
tMonsterPosDate[nMonster3_group][200102][1] = {tDialog = {60238,60268,60298}}
tMonsterPosDate[nMonster3_group][200103] = {}
tMonsterPosDate[nMonster3_group][200103][1] = {tDialog = {60239,60269,60299}}
--tMonsterPosDate[nMonster3_group][200103][2] = {tDialog = {60240,60270,60300}}
tMonsterPosDate[nMonster3_group][200104] = {}
tMonsterPosDate[nMonster3_group][200104][1] = {tDialog = {60241,60271,60301}}
tMonsterPosDate[nMonster3_group][200104][2] = {tDialog = {60242,60272,60302}}
tMonsterPosDate[nMonster3_group][200104][3] = {tDialog = {60243,60273,60303}}
tMonsterPosDate[nMonster3_group][200105] = {}
tMonsterPosDate[nMonster3_group][200105][1] = {tDialog = {60244,60274,60304}}
tMonsterPosDate[nMonster3_group][200301] = {}
--tMonsterPosDate[nMonster3_group][200301][1] = {tDialog = {60245,60275,60305}}
tMonsterPosDate[nMonster3_group][200301][1] = {tDialog = {60246,60276,60306}}
tMonsterPosDate[nMonster3_group][200302] = {}
tMonsterPosDate[nMonster3_group][200302][1] = {tDialog = {60247,60277,60307}}
tMonsterPosDate[nMonster3_group][200302][2] = {tDialog = {60248,60278,60308}}
--tMonsterPosDate[nMonster3_group][200302][3] = {tDialog = {60249,60279,60309}}
tMonsterPosDate[nMonster3_group][200302][3] = {tDialog = {60250,60280,60310}}
tMonsterPosDate[nMonster3_group][200302][4] = {tDialog = {60251,60281,60311}}
tMonsterPosDate[nMonster3_group][200302][5] = {tDialog = {60252,60282,60312}}
tMonsterPosDate[nMonster3_group][200303] = {}
tMonsterPosDate[nMonster3_group][200303][1] = {tDialog = {60253,60283,60313}}
tMonsterPosDate[nMonster3_group][200303][2] = {tDialog = {60254,60284,60314}}
tMonsterPosDate[nMonster3_group][200303][3] = {tDialog = {60255,60285,60315}}
tMonsterPosDate[nMonster3_group][200303][4] = {tDialog = {60256,60286,60316}}
tMonsterPosDate[nMonster3_group][200304] = {}
tMonsterPosDate[nMonster3_group][200304][1] = {tDialog = {60257,60287,60317}}
tMonsterPosDate[nMonster3_group][200304][2] = {tDialog = {60258,60288,60318}}
tMonsterPosDate[nMonster3_group][200304][3] = {tDialog = {60259,60289,60319}}
tMonsterPosDate[nMonster3_group][200304][4] = {tDialog = {60260,60290,60320}}
tMonsterPosDate[nMonster3_group][200304][5] = {tDialog = {60261,60291,60321}}
tMonsterPosDate[nMonster3_group][200305] = {}
tMonsterPosDate[nMonster3_group][200305][1] = {tDialog = {60262,60292,60322}}
tMonsterPosDate[nMonster3_group][200305][2] = {tDialog = {60263,60293,60323}}
tMonsterPosDate[nMonster3_group][200305][3] = {tDialog = {60264,60294,60324}}
tMonsterPosDate[nMonster3_group][200305][4] = {tDialog = {60265,60295,60325}}


tMonsterPosDate[nMonster4_group]={}
tMonsterPosDate[nMonster4_group][200101] = {}
tMonsterPosDate[nMonster4_group][200101][1] = {tDialog = {60332,60362,60392}}
tMonsterPosDate[nMonster4_group][200101][2] = {tDialog = {60333,60363,60393}}
tMonsterPosDate[nMonster4_group][200102] = {}
tMonsterPosDate[nMonster4_group][200102][1] = {tDialog = {60334,60364,60394}}
tMonsterPosDate[nMonster4_group][200103] = {}
tMonsterPosDate[nMonster4_group][200103][1] = {tDialog = {60335,60365,60395}}
--tMonsterPosDate[nMonster4_group][200103][2] = {tDialog = {60336,60366,60396}}
tMonsterPosDate[nMonster4_group][200104] = {}
tMonsterPosDate[nMonster4_group][200104][1] = {tDialog = {60337,60367,60397}}
tMonsterPosDate[nMonster4_group][200104][2] = {tDialog = {60338,60368,60398}}
tMonsterPosDate[nMonster4_group][200104][3] = {tDialog = {60339,60369,60399}}
tMonsterPosDate[nMonster4_group][200105] = {}
tMonsterPosDate[nMonster4_group][200105][1] = {tDialog = {60340,60370,60400}}
tMonsterPosDate[nMonster4_group][200301] = {}
--tMonsterPosDate[nMonster4_group][200301][1] = {tDialog = {60341,60371,60401}}
tMonsterPosDate[nMonster4_group][200301][1] = {tDialog = {60342,60372,60402}}
tMonsterPosDate[nMonster4_group][200302] = {}
tMonsterPosDate[nMonster4_group][200302][1] = {tDialog = {60343,60373,60403}}
tMonsterPosDate[nMonster4_group][200302][2] = {tDialog = {60344,60374,60404}}
--tMonsterPosDate[nMonster4_group][200302][3] = {tDialog = {60345,60375,60405}}
tMonsterPosDate[nMonster4_group][200302][3] = {tDialog = {60346,60376,60406}}
tMonsterPosDate[nMonster4_group][200302][4] = {tDialog = {60347,60377,60407}}
tMonsterPosDate[nMonster4_group][200302][5] = {tDialog = {60348,60378,60408}}
tMonsterPosDate[nMonster4_group][200303] = {}
tMonsterPosDate[nMonster4_group][200303][1] = {tDialog = {60349,60379,60409}}
tMonsterPosDate[nMonster4_group][200303][2] = {tDialog = {60350,60380,60410}}
tMonsterPosDate[nMonster4_group][200303][3] = {tDialog = {60351,60381,60411}}
tMonsterPosDate[nMonster4_group][200303][4] = {tDialog = {60352,60382,60412}}
tMonsterPosDate[nMonster4_group][200304] = {}
tMonsterPosDate[nMonster4_group][200304][1] = {tDialog = {60353,60383,60413}}
tMonsterPosDate[nMonster4_group][200304][2] = {tDialog = {60354,60384,60414}}
tMonsterPosDate[nMonster4_group][200304][3] = {tDialog = {60355,60385,60415}}
tMonsterPosDate[nMonster4_group][200304][4] = {tDialog = {60356,60386,60416}}
tMonsterPosDate[nMonster4_group][200304][5] = {tDialog = {60357,60387,60417}}
tMonsterPosDate[nMonster4_group][200305] = {}
tMonsterPosDate[nMonster4_group][200305][1] = {tDialog = {60358,60388,60418}}
tMonsterPosDate[nMonster4_group][200305][2] = {tDialog = {60359,60389,60419}}
tMonsterPosDate[nMonster4_group][200305][3] = {tDialog = {60360,60390,60420}}
tMonsterPosDate[nMonster4_group][200305][4] = {tDialog = {60361,60391,60421}}

--NPC
--禁卫军
local tGoldMonster_Npc = 3536
rwtNpc[tGoldMonster_Npc] = rwtNpc[tGoldMonster_Npc] or {}
rwtNpc[tGoldMonster_Npc]["DialogId"] = {60006}


--奖励
--怪物奖励表
local tGoldMonster_AwardInfo = {}
--npc奖励表
local tGoldNpc_AwardInfo = {}

local tAwardMonster = {}
tAwardMonster[nMonster1_group] = 7000119
tAwardMonster[nMonster2_group] = 7000120
tAwardMonster[nMonster3_group] = 7000121
tAwardMonster[nMonster4_group] = 7000122

 tAwardNpc = {}
--黄金兑奖

tAwardNpc[7000201] = { Award = 7000672, Name = "黄金"    ,quality = 1}
tAwardNpc[7000202] = { Award = 7000671, Name = "耀炼黄金",quality = 2}
tAwardNpc[7000203] = { Award = 7000670, Name = "无暇黄金",quality = 3}

--翡翠兑奖

tAwardNpc[7000231] = { Award = 7000672, Name = "翡翠"    ,quality = 1}
tAwardNpc[7000232] = { Award = 7000671, Name = "星辰翡翠",quality = 2}
tAwardNpc[7000233] = { Award = 7000670, Name = "曜日翡翠",quality = 3}

--钻石兑奖

tAwardNpc[7000261] = { Award = 7000672, Name = "钻石"    ,quality = 1}
tAwardNpc[7000262] = { Award = 7000671, Name = "耀夜钻石",quality = 2}
tAwardNpc[7000263] = { Award = 7000670, Name = "恒光钻石",quality = 3}

--珍珠兑奖

tAwardNpc[7000291] = { Award = 7000672, Name = "珍珠"    ,quality = 1}
tAwardNpc[7000292] = { Award = 7000671, Name = "海珍珠"  ,quality = 2}
tAwardNpc[7000293] = { Award = 7000670, Name = "纯然珍珠",quality = 3}

--三种品质宝箱开奖
local tTreasureBox = {}
 tTreasureBox[7000343] = {Award = 7000096}
 tTreasureBox[7000342] = {Award = 7000097}
 tTreasureBox[7000341] = {Award = 7000098}

--系统提示
local tMonsterTips = {}
tMonsterTips[nMonster1_group] = {Create = "金色魅影出现了，快去揭穿他的骗局！",
                        Battle = "成功击退金色魅影"}
tMonsterTips[nMonster2_group] = {Create = "黄金巨石大盗出现了，快去揭穿他的骗局！",
                        Battle = "成功击退黄金巨石大盗"}
tMonsterTips[nMonster3_group] = {Create = "黄金寇盗出现了，快去揭穿他的骗局！",
                        Battle = "成功击退黄金寇盗"}
tMonsterTips[nMonster4_group] = {Create = "黄金魅惑大盗出现了，快去揭穿他的骗局！",
                        Battle = "成功击退黄金魅惑大盗"}

 --战后胜利对话
local tMonsterBattleWinDialog = {}
tMonsterBattleWinDialog[nMonster1_group] = {60001,60003,60005}
tMonsterBattleWinDialog[nMonster2_group] = {60135,60137,60139}
tMonsterBattleWinDialog[nMonster3_group] = {60231,60233,60235}
tMonsterBattleWinDialog[nMonster4_group] = {60327,60329,60331}

--开始时间填写今天的第几秒
local tActiviry_Time = {}
tActiviry_Time["Activity"] = {}
tActiviry_Time["Activity"]["TimeConfig"] = {}
tActiviry_Time["Activity"]["TimeConfig"][1] = {}
tActiviry_Time["Activity"]["TimeConfig"][1]["StartTime"] = {Hour = 10, Min = 0, Sec = 0}
tActiviry_Time["Activity"]["TimeConfig"][1]["EndTime"] = {Hour = 10, Min = 59, Sec = 59}
tActiviry_Time["Activity"]["TimeConfig"][2] = {}
tActiviry_Time["Activity"]["TimeConfig"][2]["StartTime"] = {Hour = 13, Min = 0, Sec = 0}
tActiviry_Time["Activity"]["TimeConfig"][2]["EndTime"] = {Hour = 13, Min = 59, Sec = 59}
tActiviry_Time["Activity"]["TimeConfig"][3] = {}
tActiviry_Time["Activity"]["TimeConfig"][3]["StartTime"] = {Hour = 19, Min = 0, Sec = 0}
tActiviry_Time["Activity"]["TimeConfig"][3]["EndTime"] = {Hour = 19, Min = 59, Sec = 59}
                          

--公告板对话框时间
tActiviry_Time["Free"] = {}
tActiviry_Time["Free"]["TimeConfig"] = {}
tActiviry_Time["Free"]["TimeConfig"][1] = {}
tActiviry_Time["Free"]["TimeConfig"][1]["StartTime"] = {Hour = 0, Min = 0, Sec = 0}
tActiviry_Time["Free"]["TimeConfig"][1]["EndTime"] = {Hour = 10, Min = 59, Sec = 59}
tActiviry_Time["Free"]["TimeConfig"][2] = {}
tActiviry_Time["Free"]["TimeConfig"][2]["StartTime"] = {Hour = 11, Min = 0, Sec = 0}
tActiviry_Time["Free"]["TimeConfig"][2]["EndTime"] = {Hour = 13, Min = 59, Sec = 59}
tActiviry_Time["Free"]["TimeConfig"][3] = {}
tActiviry_Time["Free"]["TimeConfig"][3]["StartTime"] = {Hour = 14, Min = 0, Sec = 0}
tActiviry_Time["Free"]["TimeConfig"][3]["EndTime"] = {Hour = 19, Min = 59, Sec = 59}




--兑奖npc位置
local nPos_SaiEng = '1 1000 20507 99990011'
--玩家掩码
local nUserTemp = 1113    -- 记录1\2\3 表示记录的时间段   记录101\102\103 表示该时间段已击杀


---===========================================逻辑分割======================================

---============================
---公用模块
---============================
--获取日期 以及时间所属段
function Activity_GoldMonster_DateInfo()
    local nCheckTime = rwBaseAward:create(tActiviry_Time["Activity"]):CheckTime()
    local nTimeIndex = nil --活动时间段索引
    local nDate = os.date("%Y%m%d",os.time())

    if rwChkInt(nCheckTime) then
        nTimeIndex = nCheckTime
    end

    return nDate,nTimeIndex
end

--隔天掩码清0
function rwActivity_GoldMonster_TempDataReset()
    if rwTempDataDayJudgment(nUserTemp) then
        rwUserTempDataSet(nUserTemp,0,CONST_TEMP_DATA.Data1,0,true) --每次修改掩码都重置时间
    end
end
---============================
---上线触发
---============================
function rwActivity_GoldMonster_Login() --玩家上线时调用
    rwActivity_GoldMonster_OnTimer_Start()
end

---============================
---定时器
---============================
--活动开始
function rwActivity_GoldMonster_OnTimer_Start()
    rwActivity_GoldMonster_TempDataReset()  --隔天上线掩码清0
--    if not rwActivity_GoldMonster_Check_InActivityTime(tDailyactId) then  --今天不是黄金怪活动
--        return
--    end
--临时解决方案
--先把限时黄金怪活动时间写死，与客户端同步为20190531-20190607
-------------------------------------------------
local nDate = os.date("%Y%m%d",os.time())
--rwPrintErrorLog(nDate)
if tonumber(nDate) >= 20190531 and tonumber(nDate)  <= 20190607 then
	--rwPrintErrorLog("今天是限时黄金怪活动啦")
	return
else
	--rwPrintErrorLog("今天是常驻黄金怪活动啦")
end
	rwAddGenEvent(99990012)
-------------------------------------------------
    Activity_GoldMonster_RandomMonster()
    rwActivity_GoldMonster_Create() 
end

--活动结束
function rwActivity_GoldMonster_OnTimer_End()
    local nDate,nTimeIndex = Activity_GoldMonster_DateInfo()
--rwPrintErrorLog("shanguai")
    if nDate and tActivity_GoldMonsterInfo[nDate] then
        for _,v in pairs(tActivity_GoldMonsterInfo[nDate]) do
            if rwHasGenEvent(v["MonsterGen"]) then
                rwDelGenEvent(v["MonsterGen"])
            end
            if v["TransferGen"] ~= 0 and rwHasGenEvent(v["TransferGen"]) then
                rwDelGenEvent(v["TransferGen"])
            end
        end
    end
end

--活动开始
tUserOntimerFunc_HM[1000] = tUserOntimerFunc_HM[1000] or {}
table.insert(tUserOntimerFunc_HM[1000],rwActivity_GoldMonster_OnTimer_Start)

tUserOntimerFunc_HM[1300] = tUserOntimerFunc_HM[1300] or {}
table.insert(tUserOntimerFunc_HM[1300],rwActivity_GoldMonster_OnTimer_Start)

tUserOntimerFunc_HM[1900] = tUserOntimerFunc_HM[1900] or {}
table.insert(tUserOntimerFunc_HM[1900],rwActivity_GoldMonster_OnTimer_Start)

--活动结束
tUserOntimerFunc_HM[1059] = tUserOntimerFunc_HM[1059] or {}
table.insert(tUserOntimerFunc_HM[1059],rwActivity_GoldMonster_OnTimer_End)

tUserOntimerFunc_HM[1359] = tUserOntimerFunc_HM[1359] or {}
table.insert(tUserOntimerFunc_HM[1359],rwActivity_GoldMonster_OnTimer_End)

tUserOntimerFunc_HM[1959] = tUserOntimerFunc_HM[1959] or {}
table.insert(tUserOntimerFunc_HM[1959],rwActivity_GoldMonster_OnTimer_End)

---============================
---怪物模块
---============================
--怪物被击杀函数
function rwActivity_GoldMonster_MonsterBeKilled(nMonsterGroupType, nMonsterGroupId, nGenId)
    local nDate,nTimeIndex = Activity_GoldMonster_DateInfo()
    local nRandom =  math.random(1,#tMonsterBattleWinDialog[nMonsterGroupType])
	
    local nVal = rwTempDataGetValue(nUserTemp)

    ----rwPrintErrorLog("rwActivity_GoldMonster_MonsterBeKilled nVal = " .. nVal)
	rwRecordLoopActivityEvent(12,1)
    if nVal > 0  and nVal < 100 then
        nTimeIndex = nVal
    end

    ----rwPrintErrorLog("rwActivity_GoldMonster_MonsterBeKilled nTimeIndex = " .. nTimeIndex)

    if nDate and tActivity_GoldMonsterInfo[nDate] and tActivity_GoldMonsterInfo[nDate][nTimeIndex] then
        rwUserTempDataSet(nUserTemp,nVal + 100)
        rwSpecialStatus_RemoveEffect(7,0,2044)
        rwOpenNpcChatDialog(tMonsterBattleWinDialog[nMonsterGroupType][nRandom])
        rwBaseAward:create(tGoldMonster_AwardInfo[nMonsterGroupType]):Process()
        rwSendSystemMessage(tMonsterTips[nMonsterGroupType]["Battle"])
        if rwHasGenEvent(tActivity_GoldMonsterInfo[nDate][nTimeIndex]["TransferGen"]) then
            rwDelGenEvent(tActivity_GoldMonsterInfo[nDate][nTimeIndex]["TransferGen"])
        end
    end
end

for k,v in pairs (tAwardMonster) do
    rwtMonsterGroup_Func[k] = rwtMonsterGroup_Func[k] or {}
    table.insert(rwtMonsterGroup_Func[k],rwActivity_GoldMonster_MonsterBeKilled)
end

-- --怪物战斗失败
-- rwtMonsterGroup[nMonster2_group] = {}
-- rwtMonsterGroup[nMonster2_group]["BattleWin"] = function()
--     if rwHasGenEvent(99990069) then
--        rwDelGenEvent(99990069)
--     end
--     if rwHasGenEvent(99990068) then
--        rwDelGenEvent(99990068)
--     end
-- end

--随机活动怪物
function Activity_GoldMonster_RandomMonster()
    local nDate = os.date("%Y%m%d",os.time())
    if tActivity_GoldMonsterInfo[nDate] then
--rwPrintErrorLog("当天已随机")
        return  --当天已随机
    end
--rwPrintErrorLog("当天未随机")
    tActivity_GoldMonsterInfo[nDate] = tActivity_GoldMonsterInfo[nDate] or {}

    for i=1,#tActiviry_Time["Activity"]["TimeConfig"] do
        tActivity_GoldMonsterInfo[nDate][i] = {}
        local nAreaRandom = math.random(1,#tAreaList)
        local nMonsterRandom = math.random(1,#tMonster_group)
        local nAreaPosRandom = math.random(1,#tArea[tAreaList[nAreaRandom]])

        local tInfo = tArea[tAreaList[nAreaRandom]][nAreaPosRandom]
        tActivity_GoldMonsterInfo[nDate][i]["Map"] = tInfo["Map"]
        tActivity_GoldMonsterInfo[nDate][i]["Pos"] = tInfo["Pos"]
        tActivity_GoldMonsterInfo[nDate][i]["Ang"] = tInfo["Ang"]
--rwPrintErrorLog("怪"..tMonster_group[nMonsterRandom])
        if tMonstergroup_Transfer[tMonster_group[nMonsterRandom]] then
            tActivity_GoldMonsterInfo[nDate][i]["MonsterGen"] = tInfo["MonHideGen"]
--rwPrintErrorLog("隐藏怪gen"..tInfo["MonHideGen"])
        else
            tActivity_GoldMonsterInfo[nDate][i]["MonsterGen"] = tInfo["MonGen"]
--rwPrintErrorLog("非隐藏怪gen"..tInfo["MonGen"])
        end
        tActivity_GoldMonsterInfo[nDate][i]["TransferGen"] = tInfo["TransferGen"]
--rwPrintErrorLog("NPCgen"..tInfo["TransferGen"])
        tActivity_GoldMonsterInfo[nDate][i]["TransferGroup"] = tMonstergroup_Transfer[tMonster_group[nMonsterRandom]] or 0
        tActivity_GoldMonsterInfo[nDate][i]["DialogId"] = tMonsterPosDate[tMonster_group[nMonsterRandom]][tAreaList[nAreaRandom]][nAreaPosRandom]["tDialog"][i]
--rwPrintErrorLog("对白".. tActivity_GoldMonsterInfo[nDate][i]["DialogId"] )
        tActivity_GoldMonsterInfo[nDate][i]["MonsterGroup"] = tMonster_group[nMonsterRandom]
--rwPrintErrorLog("怪物组"..tMonster_group[nMonsterRandom])
    end
end

--创建怪物
function rwActivity_GoldMonster_Create()
    --rwPrintErrorLog("rwActivity_GoldMonster_Create 0")
    local nDate,nTimeIndex = Activity_GoldMonster_DateInfo()
    if not nDate or not nTimeIndex then
        return
    end
    --rwPrintErrorLog("rwActivity_GoldMonster_Create 1")
    if tActivity_GoldMonsterInfo[nDate][nTimeIndex] then
        if not rwTempDataIsExist(nUserTemp) then --检查玩家掩码
            rwTempDataAdd(nUserTemp)
        end
        local nVal = rwTempDataGetValue(nUserTemp)
        --rwPrintErrorLog("rwActivity_GoldMonster_Create nVal = " .. nVal)
        if nVal == nTimeIndex + 100 then
            return --已杀过
        end

        rwUserTempDataSet(nUserTemp,nTimeIndex) --记录该时间段
--rwPrintErrorLog("地图"..tActivity_GoldMonsterInfo[nDate][nTimeIndex]["Map"])
        --rwPrintErrorLog("rwActivity_GoldMonster_Create 1")

        if tActivity_GoldMonsterInfo[nDate][nTimeIndex]["Map"] == rwUserGetCurMapId() then --检查地图（不在通地图不创建）
            local tInfo = tActivity_GoldMonsterInfo[nDate][nTimeIndex]
            if not rwHasGenEvent(tInfo["MonsterGen"]) then
                rwSendSystemMessage(tMonsterTips[tInfo["MonsterGroup"]]["Create"])
                rwAddGenEvent(tInfo["MonsterGen"],tInfo["Pos"] or "",tInfo["MonsterGroup"] or 0,tInfo["Ang"] or 0)
--rwPrintErrorLog(tInfo["Pos"])
--rwPrintErrorLog(tInfo["MonsterGen"].."=="..tInfo["Pos"].."=="..tInfo["MonsterGroup"].."=="..tInfo["Ang"])
                if tInfo["TransferGroup"] and tInfo["TransferGroup"] ~= 0 then
                    rwAddGenEvent(tInfo["TransferGen"],tInfo["Pos"] or "",tInfo["TransferGroup"])
                end
                rwSpecialStatus_AddEffect(7,0,2044,tInfo["Pos"], 0)--创建光效
            end
        end
    end
end

---============================
---NPC组/对白模块
---============================
--=========================对白
--情况1
local nNpc_JingDian_13 = 3461
local nNpcGroup_JingDian_13  = 20512
local nGenId_NpcGroup_JingDian_13 = 99990012
rwtNpc[nNpc_JingDian_13] = rwtNpc[nNpc_JingDian_13] or {}
rwtNpc[nNpc_JingDian_13]["NpcId"] = nNpc_JingDian_13
local tNpcGroupJingDian_Config = {}
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13] = {}
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1] = {}
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Text"] = {}
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Text"]["Content"] = "听说最近有怪盗出没，抓到他们就会有一大笔赏金。<br>让我来看看这到底是怎么回事。"
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Text"]["TalkId"] = 301
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Text"]["LeftId"] = 301
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Text"]["LeftFace"] = 0
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"] = {}
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][1] = {}
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][1]["Text"] = "黄金怪盗之约"
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][1]["State"] = 1
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][1]["Func"] = "</F>Activity_GoldMonster_JingDianOption1"
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][2] = {}
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][2]["Text"] = "怪盗时间"
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][2]["State"] = 1
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][2]["Func"] = "</F>Activity_GoldMonster_GetTime"
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][3] = {}
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][3]["Text"] = "执行官塞恩"
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][3]["State"] = 1
tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][3]["Func"] = "</F>Activity_GoldMonster_JingDianOption3"
--tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][4] = {}
--tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][4]["Text"] = "路过看看"
--tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][4]["State"] = 1
--tNpcGroupJingDian_Config[nNpcGroup_JingDian_13][1]["Option"][4]["Func"] = "</F>Activity_GoldMonster_JingDianOption2"


rwtNpcGroup[nNpcGroup_JingDian_13] = rwtNpcGroup[nNpcGroup_JingDian_13] or {}
rwtNpcGroup[nNpcGroup_JingDian_13]["InterfaceFunc"] = function(NpcGroupType,NpcGroupId,GenEventId)
    nNpcGroupJingDian_Func(NpcGroupType,1)
end

function nNpcGroupJingDian_Func(nGourpId,nIndex)
    if not tNpcGroupJingDian_Config[nGourpId][nIndex] then
        return
    end
    rwNpcDialogText(tNpcGroupJingDian_Config[nGourpId][nIndex]["Text"])
    rwNpcDialogOption(tNpcGroupJingDian_Config[nGourpId][nIndex]["Option"])
end

function Activity_GoldMonster_JingDianOption1()
    local nDate = os.date("%Y%m%d",os.time())
    local nCheckTime = rwBaseAward:create(tActiviry_Time["Free"]):CheckTime()
    if nCheckTime then
        if tActivity_GoldMonsterInfo[nDate] and tActivity_GoldMonsterInfo[nDate][nCheckTime] then
           rwOpenNpcChatDialog(tActivity_GoldMonsterInfo[nDate][nCheckTime]["DialogId"])
       end
    else
        rwOpenNpcChatDialog(60424)
    end 
end

--function Activity_GoldMonster_JingDianOption2()
--    rwCloseLocalDialog(1)
--end

function Activity_GoldMonster_JingDianOption3()
    rwOpenNpcChatDialog(60428)
end

--=================Npc===============

tNpcGroupSaiEng_Config = {}
tNpcGroupSaiEng_Config[20507] = {}
tNpcGroupSaiEng_Config[20507][1] = {}
tNpcGroupSaiEng_Config[20507][1]["Text"] = {}
tNpcGroupSaiEng_Config[20507][1]["Text"]["Content"] = "真难得，你们怎么突然来找我，是有什么急事吗？"
tNpcGroupSaiEng_Config[20507][1]["Text"]["TalkId"] = tGoldMonster_Npc
tNpcGroupSaiEng_Config[20507][1]["Text"]["LeftId"] = tGoldMonster_Npc
tNpcGroupSaiEng_Config[20507][1]["Text"]["LeftFace"] = 0
tNpcGroupSaiEng_Config[20507][1]["Option"] = {}
tNpcGroupSaiEng_Config[20507][1]["Option"][1] = {}
tNpcGroupSaiEng_Config[20507][1]["Option"][1]["Text"] = "归还失物"
tNpcGroupSaiEng_Config[20507][1]["Option"][1]["State"] = 1
tNpcGroupSaiEng_Config[20507][1]["Option"][1]["Func"] = "</F>Activity_GoldMonster_GetAwardFuc"
tNpcGroupSaiEng_Config[20507][1]["Option"][2] = {}
tNpcGroupSaiEng_Config[20507][1]["Option"][2]["Text"] = "赏金规则"
tNpcGroupSaiEng_Config[20507][1]["Option"][2]["State"] = 1
tNpcGroupSaiEng_Config[20507][1]["Option"][2]["Func"] = "</F>Activity_GoldMonster_GetRule"
--tNpcGroupSaiEng_Config[20507][1]["Option"][3] = {}
--tNpcGroupSaiEng_Config[20507][1]["Option"][3]["Text"] = "恰巧路过"
--tNpcGroupSaiEng_Config[20507][1]["Option"][3]["State"] = 1
--tNpcGroupSaiEng_Config[20507][1]["Option"][3]["Func"] = "</F>Activity_GoldMonster_JingDianOption2"


function Activity_GoldMonster_GetRule()
    rwOpenNpcChatDialog(60423)
end
--怪盗时间
function Activity_GoldMonster_GetTime()
    rwOpenNpcChatDialog(60429)
end

function Activity_GoldMonster_GetAwardFuc()
 local nUserId =  rwUserGetId()  
    for k,v in pairs (tAwardNpc) do
--        ------rwPrintErrorLog("测试物品"..k.."测试对应奖励"..v["Award"])
        local nItemNum = rwUserGetItemCount(k)
        if  nItemNum >=1 then
            --删除物品
            for i = 1,nItemNum do
               if rwItemDel(k,1) then
                  nNpcGroupSaiEngAward_Func(nUserId,v["Name"],v["quality"])
                  rwBaseAward:create(tGoldNpc_AwardInfo[k]):Process()
               end
            end
        end
   end  
   if tNpcGroupSaiEng_Config[nUserId] then
        rwOpenNpcChatDialog(60422)
   else
       rwOpenNpcChatDialog(60133)
   end
end

function nNpcGroupSaiEngAward_Func(userid,name,quality)
    if not tNpcGroupSaiEng_Config[userid] then
        tNpcGroupSaiEng_Config[userid] = {}
        tNpcGroupSaiEng_Config[userid][1] = {}
        tNpcGroupSaiEng_Config[userid][1]["Text"] = {}
        tNpcGroupSaiEng_Config[userid][1]["Text"]["Content"] = ""
        tNpcGroupSaiEng_Config[userid][1]["Text"]["Count"] = {}
        tNpcGroupSaiEng_Config[userid][1]["Text"]["Count"][1] = 0
        tNpcGroupSaiEng_Config[userid][1]["Text"]["Count"][2] = 0
        tNpcGroupSaiEng_Config[userid][1]["Text"]["Count"][3] = 0
        tNpcGroupSaiEng_Config[userid][1]["Text"]["TalkId"] = tGoldMonster_Npc
        tNpcGroupSaiEng_Config[userid][1]["Text"]["LeftId"] = tGoldMonster_Npc
        tNpcGroupSaiEng_Config[userid][1]["Text"]["LeftFace"] = 0
    end
    tNpcGroupSaiEng_Config[userid] = tNpcGroupSaiEng_Config[userid] 
    tNpcGroupSaiEng_Config[userid][1]["Text"]["Count"][quality] = tNpcGroupSaiEng_Config[userid][1]["Text"]["Count"][quality]+1 
end

--20507 执行官塞恩
rwtNpcGroup[20507] = rwtNpcGroup[20507]or {}
rwtNpcGroup[20507]["NpcId"]= tGoldMonster_Npc
rwtNpcGroup[20507]["InterfaceFunc"] = function(NpcGroupType,NpcGroupId,GenEventId)
    nNpcGroupSaiEng_Func(NpcGroupType,1)
end

function nNpcGroupSaiEng_Func(nGourpId,nIndex)
    if not tNpcGroupSaiEng_Config[nGourpId][nIndex] then
        return
    end
    rwNpcDialogText(tNpcGroupSaiEng_Config[nGourpId][nIndex]["Text"])
    rwNpcDialogOption(tNpcGroupSaiEng_Config[nGourpId][nIndex]["Option"])
end


rwtDialog[60422] = rwtDialog[60422] or {}
rwtDialog[60422]["CloseDialog"] = 1
rwtDialog[60422]["DialogEnd"] = function ()
    local nUserId =  rwUserGetId()  
    if tNpcGroupSaiEng_Config[nUserId] then
        tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Content"] = "本次你们获得的赏金有："
        if tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Count"][1] ~= 0 then
            tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Content"] = tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Content"]..tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Count"][1].."个天然木匣   "
        end
        if tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Count"][2] ~= 0 then 
            tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Content"] = tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Content"]..tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Count"][2].."个星河宝匣   "
        end
        if tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Count"][3] ~= 0 then
            tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Content"] = tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Content"]..tNpcGroupSaiEng_Config[nUserId][1]["Text"]["Count"][3].."个穹宇星秘匣"
        end
        
        rwNpcDialogText(tNpcGroupSaiEng_Config[nUserId][1]["Text"])
        tNpcGroupSaiEng_Config[nUserId] = nil
    end
end

-------------------新增--------------
--石头人宝箱
rwtNpcGroup[40172] = rwtNpcGroup[40172] or {}
rwtNpcGroup[40172]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40172]["NotDel"] = 1
rwtNpcGroup[40172]["Function"] = function ()
    for _,v in pairs (tMonster_gen) do
        if rwHasGenEvent(v) then
            rwAutoBattle(v)
        end
    end
end
--花妖猫
rwtNpcGroup[20565] = rwtNpcGroup[20565] or {}
rwtNpcGroup[20565]["InterfaceFunc"] = function(NpcGroupType,NpcGroupId,GenEventId)
    for _,v in pairs (tMonster_gen) do
        if rwHasGenEvent(v) then
            rwAutoBattle(v)
        end
    end
end

---============================
---奖励相关
---============================
--怪物奖励
for k,v in pairs (tAwardMonster) do
    tGoldMonster_AwardInfo[k] = {}
    tGoldMonster_AwardInfo[k]["Events"] = {}
    tGoldMonster_AwardInfo[k]["Events"][1] = {}
    tGoldMonster_AwardInfo[k]["Events"][1]["GetServerAward"] = {}
    tGoldMonster_AwardInfo[k]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
    tGoldMonster_AwardInfo[k]["Events"][1]["GetServerAward"]["AwardId"] = v
    tGoldMonster_AwardInfo[k]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

--npc兑奖  下面注释的循环间歇性有问题 所以直接配置
for k,v in pairs (tAwardNpc) do
    tGoldNpc_AwardInfo[k] = {}
    tGoldNpc_AwardInfo[k]["Events"] = {}
    tGoldNpc_AwardInfo[k]["Events"][1] = {}
    tGoldNpc_AwardInfo[k]["Events"][1]["GetServerAward"] = {}
    tGoldNpc_AwardInfo[k]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
    tGoldNpc_AwardInfo[k]["Events"][1]["GetServerAward"]["AwardId"] = v["Award"]
    tGoldNpc_AwardInfo[k]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

--物品使用
for k,v in pairs (tAwardNpc) do
    rwtItem[k] = rwtItem[k] or {}
    rwtItem[k]["Awards"] = {}
    rwtItem[k]["UseNotDel"] = true 
--	rwtItem[k]["Awards"]["Events"] = {}
--	rwtItem[k]["Awards"]["Events"][1] = {}
--	rwtItem[k]["Awards"]["Events"][1]["CloseWnd"] = {}
--	rwtItem[k]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
    rwtItem[k]["Function"] = function ()
		rwCloseLocalDialog(CONST_MENUTYPE.Bag)
    	rwFindWay(nPos_SaiEng)
        return true
    end
end


for k,v in pairs (tTreasureBox) do
    rwtItem[k] = rwtItem[k] or {}
    rwtItem[k]["Awards"] = {}
    rwtItem[k]["Awards"]["Events"] = {}
    rwtItem[k]["Awards"]["Events"][1] = {}
    rwtItem[k]["Awards"]["Events"][1]["GetServerAward"] = {}
    rwtItem[k]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
    rwtItem[k]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = v["Award"]
    rwtItem[k]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

--判断活动是否在时间内（常驻黄金怪/限时黄金怪区分
function rwActivity_GoldMonster_Check_InActivityTime(tDailyactId)
	for k,v in pairs (tDailyactId) do
		if rwIsDailyactTime(tDailyactId[k]) then
			return true
		end
	end
	return false
end