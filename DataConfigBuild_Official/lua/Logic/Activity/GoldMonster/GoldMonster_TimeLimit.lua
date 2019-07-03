--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--endregion
--限时黄金怪活动


--全局变量(用于判定全局表是否在当前时间节点被操作 （全局表怪物随机后置true  活动结束 删怪置false
bGoldMonster_Mark = false  
 
--任务物品id
local nTaskItemId = 7000345 --纹章符石

--兑奖npc位置
local nPos_SaiEng = '1 1000 20859 99990089'

--玩家掩码	-- 记录1\2\3\4 表示记录的时间段   记录101\102\103\104 表示该时间段已击杀
local nUserTemp = 1206 

--NPC
local nNpcId_KeLin = 3762 --帝国特使科林
local nNpcGroup_KeLin = 20859

local nNpcId_WuJianDao = 3747 --魔族无间道
local nNpcGroup_WuJianDao = 20860


--NPC伪装
local tNpcGroup_WeiZHuang = {}
tNpcGroup_WeiZHuang[1]  = 20903		--魅影女王
tNpcGroup_WeiZHuang[2]  = 20904		--赤焰之主
tNpcGroup_WeiZHuang[3]  = 20905		--幽沼祭司
tNpcGroup_WeiZHuang[4]  = 20906		--罪灵女巫
tNpcGroup_WeiZHuang[5]  = 20907		--石像领主
tNpcGroup_WeiZHuang[6]  = 20908		--劫掠战魂
tNpcGroup_WeiZHuang[7]  = 20909		--狂妄暴魂
tNpcGroup_WeiZHuang[8]  = 20910		--寂灭铁骑
tNpcGroup_WeiZHuang[9]  = 20911		--丧钟傀儡
tNpcGroup_WeiZHuang[10] = 20912		--独角狂战

tNpcGroup_WeiZHuang[11] = 20913		--魅影女王
tNpcGroup_WeiZHuang[12] = 20914		--赤焰之主
tNpcGroup_WeiZHuang[13] = 20915		--幽沼祭司
tNpcGroup_WeiZHuang[14] = 20916		--罪灵女巫
tNpcGroup_WeiZHuang[15] = 20917		--石像领主
tNpcGroup_WeiZHuang[16] = 20918		--劫掠战魂
tNpcGroup_WeiZHuang[17] = 20919		--狂妄暴魂
tNpcGroup_WeiZHuang[18] = 20920		--寂灭铁骑
tNpcGroup_WeiZHuang[19] = 20921		--丧钟傀儡
tNpcGroup_WeiZHuang[20] = 20922		--独角狂战

--Npc伪装者gen
local tNpcGroupGen = {}
tNpcGroupGen[2001] = 99990092	--第一片区
tNpcGroupGen[2003] = 99990093   --第二片区

--全局表 （用于兑奖显示
tTimeLimit_GoldMonster_DuiJiang_DialogInfo = {}

--限时黄金怪怪物 (活动id；判断限时/常驻黄金怪活动用
local tDailyactId = {}
tDailyactId[1] = 10021
tDailyactId[2] = 10022
tDailyactId[3] = 10023
tDailyactId[4] = 10024

local tMonster = {}
tMonster[1]	=	1000881    --魅影女王
tMonster[2]	=	1000882	   --赤焰之主
tMonster[3]	=	1000883	   --幽沼祭司
tMonster[4]	=	1000884	   --罪灵女巫
tMonster[5]	=	1000885	   --石像领主
tMonster[6]	=	1000886	   --劫掠战魂
tMonster[7]	=	1000887	   --狂妄暴魂
tMonster[8]	=	1000888	   --寂灭铁骑
tMonster[9]	=	1000889	   --丧钟傀儡
tMonster[10]=	1000890	   --独角狂战

local tMonsterGroup = {}
tMonsterGroup[1]	=	800183	 --魅影女王
tMonsterGroup[2]	=	800184	 --赤焰之主
tMonsterGroup[3]	=	800185	 --幽沼祭司
tMonsterGroup[4]	=	800186	 --罪灵女巫
tMonsterGroup[5]	=	800187	 --石像领主
tMonsterGroup[6]	=	800188	 --劫掠战魂
tMonsterGroup[7]	=	800189	 --狂妄暴魂
tMonsterGroup[8]	=	800190	 --寂灭铁骑
tMonsterGroup[9]	=	800191	 --丧钟傀儡
tMonsterGroup[10]	=	800192	 --独角狂战
--怪物对应伪装者

local tMonstergroup_Transfer = {}
tMonstergroup_Transfer[tMonsterGroup[1]] = {}
tMonstergroup_Transfer[tMonsterGroup[1]][2001] = tNpcGroup_WeiZHuang[1]
tMonstergroup_Transfer[tMonsterGroup[1]][2003] = tNpcGroup_WeiZHuang[11]

tMonstergroup_Transfer[tMonsterGroup[2]] = {}
tMonstergroup_Transfer[tMonsterGroup[2]][2001] = tNpcGroup_WeiZHuang[2]
tMonstergroup_Transfer[tMonsterGroup[2]][2003] = tNpcGroup_WeiZHuang[12]

tMonstergroup_Transfer[tMonsterGroup[3]] = {}
tMonstergroup_Transfer[tMonsterGroup[3]][2001] = tNpcGroup_WeiZHuang[3]
tMonstergroup_Transfer[tMonsterGroup[3]][2003] = tNpcGroup_WeiZHuang[13]

tMonstergroup_Transfer[tMonsterGroup[4]] = {}
tMonstergroup_Transfer[tMonsterGroup[4]][2001] = tNpcGroup_WeiZHuang[4]
tMonstergroup_Transfer[tMonsterGroup[4]][2003] = tNpcGroup_WeiZHuang[14]

tMonstergroup_Transfer[tMonsterGroup[5]] = {}
tMonstergroup_Transfer[tMonsterGroup[5]][2001] = tNpcGroup_WeiZHuang[5]
tMonstergroup_Transfer[tMonsterGroup[5]][2003] = tNpcGroup_WeiZHuang[15]

tMonstergroup_Transfer[tMonsterGroup[6]] = {}
tMonstergroup_Transfer[tMonsterGroup[6]][2001] = tNpcGroup_WeiZHuang[6]
tMonstergroup_Transfer[tMonsterGroup[6]][2003] = tNpcGroup_WeiZHuang[16]

tMonstergroup_Transfer[tMonsterGroup[7]] = {}
tMonstergroup_Transfer[tMonsterGroup[7]][2001] = tNpcGroup_WeiZHuang[7]
tMonstergroup_Transfer[tMonsterGroup[7]][2003] = tNpcGroup_WeiZHuang[17]

tMonstergroup_Transfer[tMonsterGroup[8]] = {}
tMonstergroup_Transfer[tMonsterGroup[8]][2001] = tNpcGroup_WeiZHuang[8]
tMonstergroup_Transfer[tMonsterGroup[8]][2003] = tNpcGroup_WeiZHuang[18]

tMonstergroup_Transfer[tMonsterGroup[9]] = {}
tMonstergroup_Transfer[tMonsterGroup[9]][2001] = tNpcGroup_WeiZHuang[9]
tMonstergroup_Transfer[tMonsterGroup[9]][2003] = tNpcGroup_WeiZHuang[19]

tMonstergroup_Transfer[tMonsterGroup[10]] = {}
tMonstergroup_Transfer[tMonsterGroup[10]][2001] = tNpcGroup_WeiZHuang[10]
tMonstergroup_Transfer[tMonsterGroup[10]][2003] = tNpcGroup_WeiZHuang[20]




local tMonsterGroupGen = {}
tMonsterGroupGen[2001] = 99990090 
tMonsterGroupGen[2003] = 99990091 
--------------------------------------------
local tMonsterRandom  ={}  --刷新概率  及对应伪装者

tMonsterRandom[1] = {} --活动时间段1
tMonsterRandom[1]["Monster"] = {}
tMonsterRandom[1]["Monster"][1] = {}
tMonsterRandom[1]["Monster"][1]["MonsterGroupId"] = tMonsterGroup[7]
tMonsterRandom[1]["Monster"][1]["MinRate"] = 1
tMonsterRandom[1]["Monster"][1]["MaxRate"] = 5000
tMonsterRandom[1]["Monster"][2] = {}
tMonsterRandom[1]["Monster"][2]["MonsterGroupId"] = tMonsterGroup[9]
tMonsterRandom[1]["Monster"][2]["MinRate"] = 5001
tMonsterRandom[1]["Monster"][2]["MaxRate"] = 10000

tMonsterRandom[2] = {} --活动时间段2
tMonsterRandom[2]["Monster"] = {}
tMonsterRandom[2]["Monster"][1] = {}
tMonsterRandom[2]["Monster"][1]["MonsterGroupId"] = tMonsterGroup[3]
tMonsterRandom[2]["Monster"][1]["MinRate"] = 1
tMonsterRandom[2]["Monster"][1]["MaxRate"] = 800
tMonsterRandom[2]["Monster"][2] = {}
tMonsterRandom[2]["Monster"][2]["MonsterGroupId"] = tMonsterGroup[4]
tMonsterRandom[2]["Monster"][2]["MinRate"] = 801
tMonsterRandom[2]["Monster"][2]["MaxRate"] = 1600
tMonsterRandom[2]["Monster"][3] = {}
tMonsterRandom[2]["Monster"][3]["MonsterGroupId"] = tMonsterGroup[5]
tMonsterRandom[2]["Monster"][3]["MinRate"] = 1601
tMonsterRandom[2]["Monster"][3]["MaxRate"] = 2400
tMonsterRandom[2]["Monster"][4] = {}
tMonsterRandom[2]["Monster"][4]["MonsterGroupId"] = tMonsterGroup[6]
tMonsterRandom[2]["Monster"][4]["MinRate"] = 2401
tMonsterRandom[2]["Monster"][4]["MaxRate"] = 6200
tMonsterRandom[2]["Monster"][5] = {}
tMonsterRandom[2]["Monster"][5]["MonsterGroupId"] = tMonsterGroup[8]
tMonsterRandom[2]["Monster"][5]["MinRate"] = 6201
tMonsterRandom[2]["Monster"][5]["MaxRate"] = 10000

tMonsterRandom[3] = {} --活动时间段3
tMonsterRandom[3]["Monster"] = {}
tMonsterRandom[3]["Monster"][1] ={}
tMonsterRandom[3]["Monster"][1]["MonsterGroupId"] = tMonsterGroup[6]
tMonsterRandom[3]["Monster"][1]["MinRate"] = 1
tMonsterRandom[3]["Monster"][1]["MaxRate"] = 3000
tMonsterRandom[3]["Monster"][2] ={}
tMonsterRandom[3]["Monster"][2]["MonsterGroupId"] = tMonsterGroup[7]
tMonsterRandom[3]["Monster"][2]["MinRate"] = 3001
tMonsterRandom[3]["Monster"][2]["MaxRate"] = 4000
tMonsterRandom[3]["Monster"][3] ={}
tMonsterRandom[3]["Monster"][3]["MonsterGroupId"] = tMonsterGroup[8]
tMonsterRandom[3]["Monster"][3]["MinRate"] = 4001
tMonsterRandom[3]["Monster"][3]["MaxRate"] = 7000
tMonsterRandom[3]["Monster"][4] ={}
tMonsterRandom[3]["Monster"][4]["MonsterGroupId"] = tMonsterGroup[9]
tMonsterRandom[3]["Monster"][4]["MinRate"] = 7001
tMonsterRandom[3]["Monster"][4]["MaxRate"] = 8500
tMonsterRandom[3]["Monster"][5] ={}
tMonsterRandom[3]["Monster"][5]["MonsterGroupId"] = tMonsterGroup[10]
tMonsterRandom[3]["Monster"][5]["MinRate"] = 8501
tMonsterRandom[3]["Monster"][5]["MaxRate"] = 10000


tMonsterRandom[4] = {} --活动时间段4
tMonsterRandom[4]["Monster"] = {}
tMonsterRandom[4]["Monster"][1] = {}
tMonsterRandom[4]["Monster"][1]["MonsterGroupId"] = tMonsterGroup[1]
tMonsterRandom[4]["Monster"][1]["MinRate"] = 1
tMonsterRandom[4]["Monster"][1]["MaxRate"] = 2000
tMonsterRandom[4]["Monster"][2] = {}
tMonsterRandom[4]["Monster"][2]["MonsterGroupId"] = tMonsterGroup[2]
tMonsterRandom[4]["Monster"][2]["MinRate"] = 2001
tMonsterRandom[4]["Monster"][2]["MaxRate"] = 4000
tMonsterRandom[4]["Monster"][3] = {}
tMonsterRandom[4]["Monster"][3]["MonsterGroupId"] = tMonsterGroup[3]
tMonsterRandom[4]["Monster"][3]["MinRate"] = 4001
tMonsterRandom[4]["Monster"][3]["MaxRate"] = 6000
tMonsterRandom[4]["Monster"][4] = {}
tMonsterRandom[4]["Monster"][4]["MonsterGroupId"] = tMonsterGroup[4]
tMonsterRandom[4]["Monster"][4]["MinRate"] = 6001
tMonsterRandom[4]["Monster"][4]["MaxRate"] = 8000
tMonsterRandom[4]["Monster"][5] = {}
tMonsterRandom[4]["Monster"][5]["MonsterGroupId"] = tMonsterGroup[5]
tMonsterRandom[4]["Monster"][5]["MinRate"] = 8001
tMonsterRandom[4]["Monster"][5]["MaxRate"] = 10000

--位置信息
local tAreaList = {200101,200102,200103,200104,200105,200301,200302,200303,200304,200305}
local tArea = {}
tArea[200101] = {}
tArea[200101][1] = {Map= 2001,Pos = "51.99,1.29,-39.80",     Ang = 315}
tArea[200101][2] = {Map= 2001,Pos = "-11.97,-1.82,57.32",    Ang = 348.22}
tArea[200102] = {}
tArea[200102][1] = {Map= 2001,Pos = "-76.88,0.90,43.81",     Ang = 339.98}
tArea[200103] = {}
tArea[200103][1] = {Map= 2001,Pos = "-53.56,0.05,-68.06",    Ang = 90.00}
--tArea[200103][2] = {Map= 2001,Pos = "-68.73,9.77,-98.12",    Ang = 319.50}
tArea[200104] = {}
tArea[200104][1] = {Map= 2001,Pos = "47.34,0.58,-99.09",     Ang = 37.71}
tArea[200104][2] = {Map= 2001,Pos = "59.03,0.04,-160.60",    Ang = 270}
tArea[200104][3] = {Map= 2001,Pos = "80.85,0.04,-144.87",    Ang = 345}
tArea[200105] = {}
tArea[200105][1] = {Map= 2001,Pos = "-57.74,0.06,-165.58",   Ang = 0}
tArea[200301] = {}
--tArea[200301][1] = {Map= 2003,Pos = "12.08,-0.01,-42.58",    Ang = 270}
tArea[200301][1] = {Map= 2003,Pos = "-30.50,-0.01,0.61",     Ang = 0}
tArea[200302] = {}
tArea[200302][1] = {Map= 2003,Pos = "-59.30,0.10,-48.36",    Ang = 0}
tArea[200302][2] = {Map= 2003,Pos = "-71.16,0.10,-14.99",    Ang = 214}
--tArea[200302][3] = {Map= 2003,Pos = "-147,0.15,-14.869",     Ang = 60}
tArea[200302][3] = {Map= 2003,Pos = "-159.79,0.15,-32.54",   Ang = 0}
tArea[200302][4] = {Map= 2003,Pos = "-225.19,0.10,-35.74",   Ang = 0}
tArea[200302][5] = {Map= 2003,Pos = "-181.10,0.32,-72.84",   Ang = 16}
tArea[200303] = {}
tArea[200303][1] = {Map= 2003,Pos = "-191.45,0.10,-112.79",  Ang = 0}
tArea[200303][2] = {Map= 2003,Pos = "-137.53,2.14,-126.69",  Ang = 11}
tArea[200303][3] = {Map= 2003,Pos = "-225.35,1.06,-139.58",  Ang = 335}
tArea[200303][4] = {Map= 2003,Pos = "-243.36,0.82,-136.86",  Ang = 302}
tArea[200304] = {}
tArea[200304][1] = {Map= 2003,Pos = "-183.34,0.12,-266.22",  Ang = 0}
tArea[200304][2] = {Map= 2003,Pos = "-199.49,2.67,-295.47",  Ang = 7}
tArea[200304][3] = {Map= 2003,Pos = "-209.23,0.23,-272.84",  Ang = 343}
tArea[200304][4] = {Map= 2003,Pos = "-248.09,0.09,-264.47",  Ang = 306}
tArea[200304][5] = {Map= 2003,Pos = "-159.99,-0.30,-229.16", Ang = 342}
tArea[200305] = {}
tArea[200305][1] = {Map= 2003,Pos = "-43.09,0.14,-264.35",   Ang = 0}
tArea[200305][2] = {Map= 2003,Pos = "-16.71,0.14,-196.75",   Ang = 0}
tArea[200305][3] = {Map= 2003,Pos = "6.20,0.14,-276.23",     Ang = 317}
tArea[200305][4] = {Map= 2003,Pos = "-119.81,0.14,-231.27",  Ang = 32}



---限时黄金怪对白数据
local tMonsterDialog = {}
tMonsterDialog 	= {}													
tMonsterDialog[200101] = {}
tMonsterDialog[200101][1] = { 60481, 60511, 60541, 60571 }
tMonsterDialog[200101][2] = { 60482, 60512,	60542, 60572 }
tMonsterDialog[200102] = {}
tMonsterDialog[200102][1] =	{ 60483, 60513,	60543, 60573 }
tMonsterDialog[200103] = {}
tMonsterDialog[200103][1] =	{ 60484, 60514, 60544, 60574 }
--tMonsterDialog[200103][2] =	{ 60485, 60515, 60545, 60575 }
tMonsterDialog[200104] = {}	 	   		  		 	   
tMonsterDialog[200104][1] =	{ 60486, 60516, 60546, 60576 }
tMonsterDialog[200104][2] =	{ 60487, 60517, 60547, 60577 }
tMonsterDialog[200104][3] =	{ 60488, 60518, 60548, 60578 }
tMonsterDialog[200105] = {}	 	   		  		 	   
tMonsterDialog[200105][1] =	{ 60489, 60519, 60549, 60579 }
tMonsterDialog[200301] = {}	 	   		  		 	   
--tMonsterDialog[200301][1] =	{ 60490, 60520, 60550, 60580 }
tMonsterDialog[200301][1] =	{ 60491, 60521, 60551, 60581 }
tMonsterDialog[200302] = {}	 	   		  		 	   
tMonsterDialog[200302][1] =	{ 60492, 60522, 60552, 60582 }
tMonsterDialog[200302][2] =	{ 60493, 60523, 60553, 60583 }
--tMonsterDialog[200302][3] =	{ 60494, 60524, 60554, 60584 }
tMonsterDialog[200302][3] =	{ 60495, 60525, 60555, 60585 }
tMonsterDialog[200302][4] =	{ 60496, 60526, 60556, 60586 }
tMonsterDialog[200302][5] =	{ 60497, 60527, 60557, 60587 }
tMonsterDialog[200303] = {}	 	   		  		 	   
tMonsterDialog[200303][1] =	{ 60498, 60528, 60558, 60588 }
tMonsterDialog[200303][2] =	{ 60499, 60529, 60559, 60589 }
tMonsterDialog[200303][3] =	{ 60500, 60530, 60560, 60590 }
tMonsterDialog[200303][4] =	{ 60501, 60531, 60561, 60591 }
tMonsterDialog[200304] = {}	 	   		  		 	   
tMonsterDialog[200304][1] =	{ 60502, 60532, 60562, 60592 }
tMonsterDialog[200304][2] =	{ 60503, 60533, 60563, 60593 }
tMonsterDialog[200304][3] =	{ 60504, 60534, 60564, 60594 }
tMonsterDialog[200304][4] =	{ 60505, 60535, 60565, 60595 }
tMonsterDialog[200304][5] =	{ 60506, 60536, 60566, 60596 }
tMonsterDialog[200305] = {}	 	   		  		 	   
tMonsterDialog[200305][1] =	{ 60507, 60537, 60567, 60597 }
tMonsterDialog[200305][2] =	{ 60508, 60538, 60568, 60598 }
tMonsterDialog[200305][3] =	{ 60509, 60539, 60569, 60599 }
tMonsterDialog[200305][4] =	{ 60510, 60540, 60570, 60600 }

--奖励兑换
local tTimeLimit_GoldNpc_AwardInfo = {}

tTimeLimit_GoldNpc_AwardInfo["Events"] = {}
tTimeLimit_GoldNpc_AwardInfo["Events"][1] = {}
tTimeLimit_GoldNpc_AwardInfo["Events"][1]["GetServerAward"] = {}
tTimeLimit_GoldNpc_AwardInfo["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
tTimeLimit_GoldNpc_AwardInfo["Events"][1]["GetServerAward"]["AwardId"] = 7000875
tTimeLimit_GoldNpc_AwardInfo["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

----------------------------------------
--系统提示
local tMonsterTips = {}
tMonsterTips[tMonsterGroup[1]] ={	Create = "魔族奸细魅影女王出现了，快去撕开他虚伪的伪装。",   
									Battle = "成功击退魅影女王"}								 
tMonsterTips[tMonsterGroup[2]] ={	Create = "魔族奸细赤焰之主出现了，快去撕开他虚伪的伪装。",	  
									Battle = "成功击退赤焰之主"}								 
tMonsterTips[tMonsterGroup[3]] ={	Create = "魔族奸细幽沼祭司出现了，快去撕开他虚伪的伪装。",	  
									Battle = "成功击退幽沼祭司"}								 
tMonsterTips[tMonsterGroup[4]] ={	Create = "魔族奸细罪灵女巫出现了，快去撕开他虚伪的伪装。",	  
									Battle = "成功击退罪灵女巫"}								 
tMonsterTips[tMonsterGroup[5]] ={	Create = "魔族奸细石像领主出现了，快去撕开他虚伪的伪装。",	  
									Battle = "成功击退石像领主"}								 
tMonsterTips[tMonsterGroup[6]] ={	Create = "魔族奸细劫掠战魂出现了，快去撕开他虚伪的伪装。",
									Battle = "成功击退劫掠战魂"}
tMonsterTips[tMonsterGroup[7]] ={	Create = "魔族奸细狂妄暴魂出现了，快去撕开他虚伪的伪装。",
									Battle = "成功击退狂妄暴魂"}
tMonsterTips[tMonsterGroup[8]] ={	Create = "魔族奸细寂灭铁骑出现了，快去撕开他虚伪的伪装。",
									Battle = "成功击退寂灭铁骑"}
tMonsterTips[tMonsterGroup[9]] ={	Create = "魔族奸细丧钟傀儡出现了，快去撕开他虚伪的伪装。",
									Battle = "成功击退丧钟傀儡"}
tMonsterTips[tMonsterGroup[10]]={	Create = "魔族奸细独角狂战出现了，快去撕开他虚伪的伪装。",
									Battle = "成功击退独角狂战"}


--公告板活动时间段（共4个
--开始时间填写今天的第几秒
local tTimeLimit_Activiry_Time = {}
tTimeLimit_Activiry_Time["Activity"] = {}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"] = {}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"][1] = {}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"][1]["StartTime"] = {Hour = 10, Min = 0, Sec = 0}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"][1]["EndTime"] = {Hour = 10, Min = 59, Sec = 59}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"][2] = {}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"][2]["StartTime"] = {Hour = 13, Min = 0, Sec = 0}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"][2]["EndTime"] = {Hour = 13, Min = 59, Sec = 59}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"][3] = {}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"][3]["StartTime"] = {Hour = 19, Min = 0, Sec = 0}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"][3]["EndTime"] = {Hour = 19, Min = 59, Sec = 59}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"][4] = {}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"][4]["StartTime"] = {Hour = 21, Min = 0, Sec = 0}
tTimeLimit_Activiry_Time["Activity"]["TimeConfig"][4]["EndTime"] = {Hour = 21, Min = 59, Sec = 59}
                          

--公告板对话框时间
tTimeLimit_Activiry_Time["Free"] = {}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"] = {}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"][1] = {}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"][1]["StartTime"] = {Hour = 0, Min = 0, Sec = 0}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"][1]["EndTime"] = {Hour = 10, Min = 59, Sec = 59}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"][2] = {}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"][2]["StartTime"] = {Hour = 11, Min = 0, Sec = 0}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"][2]["EndTime"] = {Hour = 13, Min = 59, Sec = 59}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"][3] = {}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"][3]["StartTime"] = {Hour = 14, Min = 0, Sec = 0}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"][3]["EndTime"] = {Hour = 19, Min = 59, Sec = 59}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"][4] = {}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"][4]["StartTime"] = {Hour = 20, Min = 0, Sec = 0}
tTimeLimit_Activiry_Time["Free"]["TimeConfig"][4]["EndTime"] = {Hour = 21, Min = 59, Sec = 59}

---------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------
------------------------------------------逻辑部分----------------------------------------------

------------------
--怪物模块
------------------

--怪物被击杀函数
function Activity_GoldMonster_TimeLimit_MonsterBeKilled(nMonsterGroupType, nMonsterGroupId, nGenId)
    local nDate,nTimeIndex = Activity_GoldMonster_DateInfo()
    local nVal = rwTempDataGetValue(nUserTemp)

    if nVal > 0  and nVal < 100 then
        nTimeIndex = nVal
    end
	rwRecordLoopActivityEvent(12,1)
    if nDate and tActivity_TimeLimit_GoldMonsterInfo[nDate] and tActivity_TimeLimit_GoldMonsterInfo[nDate][nTimeIndex] then
--rwPrintErrorLog("杀怪置掩码"..nTimeIndex)
        rwUserTempDataSet(nUserTemp,nVal + 100)
        rwSpecialStatus_RemoveEffect(7,0,2044)
        rwSendSystemMessage(tMonsterTips[nMonsterGroupType]["Battle"])
        if rwHasGenEvent(tActivity_TimeLimit_GoldMonsterInfo[nDate][nTimeIndex]["NPCGroupGen"]) then --删除伪装者模型
            rwDelGenEvent(tActivity_TimeLimit_GoldMonsterInfo[nDate][nTimeIndex]["NPCGroupGen"])
--rwPrintErrorLog("删除伪装者码"..tActivity_TimeLimit_GoldMonsterInfo[nDate][nTimeIndex]["NPCGroupGen"])
        end
    end
end

for k,v in pairs (tMonsterGroup) do
    rwtMonsterGroup_Func[tMonsterGroup[k]] = rwtMonsterGroup_Func[tMonsterGroup[k]] or {}
    table.insert(rwtMonsterGroup_Func[tMonsterGroup[k]],Activity_GoldMonster_TimeLimit_MonsterBeKilled)
end

--根据不同活动时间随机怪物（每个时间段的怪物出现概率不同
function rwActivity_GoldMonster_TimeLimit_Random()	
	local nCurrentTime = os.time()
    local nDate =  os.date("%Y,%m,%d",nCurrentTime)
    local nCheckTime = rwBaseAward:create(tTimeLimit_Activiry_Time["Activity"]):CheckTime()
	if  rwChkInt(nCheckTime) then     --活动时间段
		local nRandom1 = math.random(1,10000) --随机区间（1-10000）		
		for k,v in pairs(tMonsterRandom[nCheckTime]["Monster"]) do 
			if nRandom1 >= v.MinRate and nRandom1 <= v.MinRate then ---------------------------随机NPC组
				return tMonsterRandom[nCheckTime]["Monster"][k]["MonsterGroupId"]	
			end

		end
	end
end
-------------------
--NPC模块
-------------------
--NPC伪装
rwtNpcGroup[tNpcGroup_WeiZHuang[1]] = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] or {}
rwtNpcGroup[tNpcGroup_WeiZHuang[1]]["InterfaceFunc"] = function(NpcGroupType,NpcGroupId,GenEventId)
	local nMapId= rwUserGetCurMapId()
    if rwHasGenEvent(tMonsterGroupGen[nMapId]) then
        rwAutoBattle(tMonsterGroupGen[nMapId])
    end
end
rwtNpcGroup[tNpcGroup_WeiZHuang[2]]  = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[3]]  = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[4]]  = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[5]]  = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[6]]  = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[7]]  = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[8]]  = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[9]]  = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[10]] = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[11]] = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[12]] = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[13]] = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[14]] = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[15]] = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[16]] = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[17]] = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[18]] = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[19]] = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 
rwtNpcGroup[tNpcGroup_WeiZHuang[20]] = rwtNpcGroup[tNpcGroup_WeiZHuang[1]] 




--NPC对白选项

rwtNpcGroup[nNpcGroup_KeLin] = rwtNpcGroup[nNpcGroup_KeLin] or {} 
rwtNpcGroup[nNpcGroup_KeLin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_KeLin]["NpcId"] = nNpcId_KeLin

rwtNpc[nNpcId_KeLin] = rwtNpc[nNpcId_KeLin] or {}
rwtNpc[nNpcId_KeLin]["DialogId"] = {60433} 
rwtNpc[nNpcId_KeLin]["Option"] = {}
rwtNpc[nNpcId_KeLin]["Option"][1] = {}
rwtNpc[nNpcId_KeLin]["Option"][1]["Title"]= "上交符石"
rwtNpc[nNpcId_KeLin]["Option"][1]["State"] = 1
rwtNpc[nNpcId_KeLin]["Option"][1]["Chk"] = function(nNpcId)
--	local nItemNum = rwUserGetItemCount(nTaskItemId) 
--	if 	nItemNum >= 100 then
		return true
--	else
--		return false
--	end
end
rwtNpc[nNpcId_KeLin]["Option"][1]["Func"] = function(nNpcTypeId)  --点击按钮触发
	local nItemNum = rwUserGetItemCount(nTaskItemId) 
	if 	nItemNum < 100 then
		rwOpenNpcChatDialog(60435,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
		return 
	end
	Activity_GoldMonster_TimeLimit_GetAwardFuc(nTaskItemId)
	rwOpenNpcChatDialog(60434,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)

end


--公告板对白选项
rwtNpcGroup[nNpcGroup_WuJianDao] = rwtNpcGroup[nNpcGroup_WuJianDao] or {} 
rwtNpcGroup[nNpcGroup_WuJianDao]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_WuJianDao]["NpcId"] = nNpcId_WuJianDao

rwtNpc[nNpcId_WuJianDao] = rwtNpc[nNpcId_WuJianDao] or {}
rwtNpc[nNpcId_WuJianDao]["DialogId"] = {60430} 
rwtNpc[nNpcId_WuJianDao]["Option"] = {}
rwtNpc[nNpcId_WuJianDao]["Option"][1] = {}
rwtNpc[nNpcId_WuJianDao]["Option"][1]["Title"]= "暗匿者的真相"
rwtNpc[nNpcId_WuJianDao]["Option"][1]["State"] = 1
rwtNpc[nNpcId_WuJianDao]["Option"][1]["Chk"] = function(nNpcId)	
	return true
end
rwtNpc[nNpcId_WuJianDao]["Option"][1]["Func"] = function(nNpcTypeId)  --点击按钮触发


	local nCheckTime = rwBaseAward:create(tTimeLimit_Activiry_Time["Free"]):CheckTime()
    local nTimeIndex = nil --活动时间段索引
    local nDate = os.date("%Y%m%d",os.time())
--rwPrintErrorLog("nCheckTime"..nCheckTime)
--rwPrintErrorLog("nDate"..nDate)

    if rwChkInt(nCheckTime) then
        nTimeIndex = nCheckTime
--rwPrintErrorLog("nTimeIndex"..nTimeIndex)
		local nDialog= tActivity_TimeLimit_GoldMonsterInfo[nDate][nTimeIndex]["DialogId"]
--rwPrintErrorLog("nDialog"..nDialog)
		rwOpenNpcChatDialog(nDialog,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
	else
		rwOpenNpcChatDialog(60436)--不在活动时间的对白
    end
end
rwtNpc[nNpcId_WuJianDao]["Option"][2] = {}
rwtNpc[nNpcId_WuJianDao]["Option"][2]["Title"]= "活动负责人科林"
rwtNpc[nNpcId_WuJianDao]["Option"][2]["State"] = 1	
rwtNpc[nNpcId_WuJianDao]["Option"][2]["Chk"] = function(nNpcId)
	return true
end									
rwtNpc[nNpcId_WuJianDao]["Option"][2]["Func"] = function(nNpcTypeId)  --点击按钮触发
	rwOpenNpcChatDialog(60431,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
end
rwtNpc[nNpcId_WuJianDao]["Option"][3] = {}
rwtNpc[nNpcId_WuJianDao]["Option"][3]["Title"]= "魔族出现时间"
rwtNpc[nNpcId_WuJianDao]["Option"][3]["State"] = 1
rwtNpc[nNpcId_WuJianDao]["Option"][3]["Chk"] = function(nNpcId)
	return true
end									
rwtNpc[nNpcId_WuJianDao]["Option"][3]["Func"] = function(nNpcTypeId)  --点击按钮触发
	rwOpenNpcChatDialog(60432,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
	return
end


--NPC兑奖  给奖励
function Activity_GoldMonster_TimeLimit_GetAwardFuc(nTaskItemId)
	local nUserId =  rwUserGetId()  

    local nItemNum = rwUserGetItemCount(nTaskItemId) 
	local nAwardItem_num = 0 --奖励物品获得的数量，对白用
    if  nItemNum >=100 then
        --删除物品
        for i = 100,nItemNum,100 do
           if rwItemDel(nTaskItemId,100) then
              nAwardItem_num = nAwardItem_num+1
              rwBaseAward:create(tTimeLimit_GoldNpc_AwardInfo):Process()
           end
        end
		rwActivity_GoldMonster_TimeLimit_DuiJiang_Dialog(nUserId,nAwardItem_num)
    end  
	return false 
end


--兑奖对白拼接
function rwActivity_GoldMonster_TimeLimit_DuiJiang_Dialog(nUserId,nAwardItem_num)
	    if not tTimeLimit_GoldMonster_DuiJiang_DialogInfo[nUserId] then
        tTimeLimit_GoldMonster_DuiJiang_DialogInfo[nUserId] = {}
        tTimeLimit_GoldMonster_DuiJiang_DialogInfo[nUserId][1] = {}
        tTimeLimit_GoldMonster_DuiJiang_DialogInfo[nUserId][1]["Text"] = {}
        tTimeLimit_GoldMonster_DuiJiang_DialogInfo[nUserId][1]["Text"]["Content"] = "本次你们获得的赏金有："..nAwardItem_num.."个悬赏礼箱"
        tTimeLimit_GoldMonster_DuiJiang_DialogInfo[nUserId][1]["Text"]["TalkId"] = nNpcId_KeLin 
        tTimeLimit_GoldMonster_DuiJiang_DialogInfo[nUserId][1]["Text"]["LeftId"] = nNpcId_KeLin 
        tTimeLimit_GoldMonster_DuiJiang_DialogInfo[nUserId][1]["Text"]["LeftFace"] = 0
    end
end

--对白后提示获得赏金XXX个；之后清除当前userId的数据 
rwtDialog[60434] = rwtDialog[60434] or {}
rwtDialog[60434]["CloseDialog"] = 1
rwtDialog[60434]["DialogEnd"] = function ()
    local nUserId =  rwUserGetId()  
    if tTimeLimit_GoldMonster_DuiJiang_DialogInfo[nUserId] then
        rwNpcDialogText(tTimeLimit_GoldMonster_DuiJiang_DialogInfo[nUserId][1]["Text"])
        tTimeLimit_GoldMonster_DuiJiang_DialogInfo[nUserId] = nil
    end
end


-----------------
--物品模块
-----------------

--物品不删除；使用物品后寻路
rwtItem[7000345] = rwtItem[7000345] or {}
rwtItem[7000345]["Awards"] = {}
rwtItem[7000345]["UseNotDel"] = true 
rwtItem[7000345]["Function"] = function ()
	rwCloseLocalDialog(CONST_MENUTYPE.Bag)
    rwFindWay(nPos_SaiEng)---------------------------------------------------坐标修改
	return true
end

-----------------
--公用模块
----------------
--获取日期 以及时间所属段
function rwActivity_GoldMonster_TimeLimit_DateInfo()
    local nCheckTime = rwBaseAward:create(tTimeLimit_Activiry_Time["Activity"]):CheckTime()
    local nTimeIndex = nil --活动时间段索引
    local nDate = os.date("%Y%m%d",os.time())

    if rwChkInt(nCheckTime) then
        nTimeIndex = nCheckTime
    end

    return nDate,nTimeIndex
end
--隔天掩码清0
function rwActivity_GoldMonster_TimeLimit_TempDataReset()
	if rwTempDataDayJudgment(nUserTemp) then
		rwUserTempDataSet(nUserTemp,0,CONST_TEMP_DATA.Data1,0,true) --每次修改掩码都重置时间
	end
end

--------------
--上线触发
-------------
--玩家上线操作
function rwActivity_GoldMonster_TimeLimit_Login()
	rwActivity_GoldMonster_TimeLimit_OnTimer_Start()
end
-------------
--定时器
-------------
--活动开始
function rwActivity_GoldMonster_TimeLimit_OnTimer_Start()
	rwActivity_GoldMonster_TimeLimit_TempDataReset()--隔天上线掩码清0	
--	if not rwActivity_GoldMonster_TimeLimit_Check_InActivityTime(tDailyactId) then  --今天不是限时黄金怪活动
--        return
--    end
--临时解决方案
--先把限时黄金怪活动时间写死，与客户端同步为20190531-20190607
-------------------------------------------------
    local nDate = os.date("%Y%m%d",os.time())
	if tonumber(nDate) >= 20190531 and tonumber(nDate) <= 20190607 then
--rwPrintErrorLog("今天是限时黄金怪活动啦")
	else
--rwPrintErrorLog("今天是常驻黄金怪活动啦")
		return
	end

-------------------------------------------------
	rwAddGenEvent(99990088)
	rwAddGenEvent(99990089)
	rwActivity_GoldMonster_TimeLimit_RandomMon()	--如果全局表没数据 则随机全局表赋值
	rwActivity_GoldMonster_TimeLimit_Create()		--创建怪物
end

--活动结束
function rwActivity_GoldMonster_TimeLimit_OnTimer_End()
--rwPrintErrorLog("定时器活动结束调用")
	local nDate,nTimeIndex = Activity_GoldMonster_DateInfo()
    if nDate and tActivity_TimeLimit_GoldMonsterInfo[nDate] then
--rwPrintErrorLog("活动结束！！")
        for _,v in pairs(tActivity_TimeLimit_GoldMonsterInfo[nDate]) do
            if rwHasGenEvent(v["MonsterGen"]) then
                rwDelGenEvent(v["MonsterGen"])
				rwDelGenEvent(v["NPCGroupGen"])
--rwPrintErrorLog("活动结束！！删怪了")
				break
            end
--            if v["TransferGen"] ~= 0 and rwHasGenEvent(v["TransferGen"]) then
--                rwDelGenEvent(v["TransferGen"])
--            end
        end
    end
end

--将活动插入时间点

--活动开始
tUserOntimerFunc_HM[1000] = tUserOntimerFunc_HM[1000] or {}
table.insert(tUserOntimerFunc_HM[1000],rwActivity_GoldMonster_TimeLimit_OnTimer_Start)

tUserOntimerFunc_HM[1300] = tUserOntimerFunc_HM[1300] or {}
table.insert(tUserOntimerFunc_HM[1300],rwActivity_GoldMonster_TimeLimit_OnTimer_Start)

tUserOntimerFunc_HM[1900] = tUserOntimerFunc_HM[1900] or {}
table.insert(tUserOntimerFunc_HM[1900],rwActivity_GoldMonster_TimeLimit_OnTimer_Start)

tUserOntimerFunc_HM[2100] = tUserOntimerFunc_HM[2100] or {}
table.insert(tUserOntimerFunc_HM[2100],rwActivity_GoldMonster_TimeLimit_OnTimer_Start)
--活动结束
tUserOntimerFunc_HM[1100] = tUserOntimerFunc_HM[1100] or {}
table.insert(tUserOntimerFunc_HM[1100],rwActivity_GoldMonster_TimeLimit_OnTimer_End)

tUserOntimerFunc_HM[1400] = tUserOntimerFunc_HM[1400] or {}
table.insert(tUserOntimerFunc_HM[1400],rwActivity_GoldMonster_TimeLimit_OnTimer_End)

tUserOntimerFunc_HM[2000] = tUserOntimerFunc_HM[2000] or {}
table.insert(tUserOntimerFunc_HM[2000],rwActivity_GoldMonster_TimeLimit_OnTimer_End)

tUserOntimerFunc_HM[2200] = tUserOntimerFunc_HM[2200] or {}
table.insert(tUserOntimerFunc_HM[2200],rwActivity_GoldMonster_TimeLimit_OnTimer_End)
-----------------
--其他
-----------------
--判断活动是否在时间内（常驻黄金怪/限时黄金怪区分
function  rwActivity_GoldMonster_TimeLimit_Check_InActivityTime(tDailyactId)
	for k,v in pairs (tDailyactId) do
		if rwIsDailyactTime(tDailyactId[k]) then
--rwPrintErrorLog("今天是限时黄金怪活动")
			return true
		end
	end
--rwPrintErrorLog("今天不是限时黄金怪活动！！！")
	return false
end


--怪物创建
function rwActivity_GoldMonster_TimeLimit_Create() --怪物创建检测
--rwPrintErrorLog("怪物创建检测")
	local nDate,nTimeIndex = rwActivity_GoldMonster_TimeLimit_DateInfo()
    if not nDate or not nTimeIndex then
--rwPrintErrorLog("不在活动时间内")
        return
    end
	if tActivity_TimeLimit_GoldMonsterInfo[nDate][nTimeIndex] then
        if not rwTempDataIsExist(nUserTemp) then --检查玩家掩码
            rwTempDataAdd(nUserTemp)
        end
        local nVal = rwTempDataGetValue(nUserTemp)
--rwPrintErrorLog("活动掩码"..nVal)
--rwPrintErrorLog("对白"..tActivity_TimeLimit_GoldMonsterInfo[nDate][nTimeIndex]["DialogId"] )
        ------rwPrintErrorLog("rwActivity_GoldMonster_Create nVal = " .. nVal)
        if nVal == nTimeIndex + 100 then
            return --已杀过
        end

        rwUserTempDataSet(nUserTemp,nTimeIndex) --记录该时间段

        if tActivity_TimeLimit_GoldMonsterInfo[nDate][nTimeIndex]["Map"] == rwUserGetCurMapId() then --检查地图（不在通地图不创建）
            local tInfo = tActivity_TimeLimit_GoldMonsterInfo[nDate][nTimeIndex]
            if not rwHasGenEvent(tInfo["NPCGroupGen"]) then
                rwSendSystemMessage(tMonsterTips[tInfo["MonsterGroup"]]["Create"])
                rwAddGenEvent(tInfo["MonsterGen"],tInfo["Pos"] or "",tInfo["MonsterGroup"] or 0,tInfo["Ang"] or 0)
				rwAddGenEvent(tInfo["NPCGroupGen"],tInfo["Pos"] or "",tInfo["NPCGroup"] or 0,tInfo["Ang"] or 0)
                rwSpecialStatus_AddEffect(7,0,2044,tInfo["Pos"], 0)--创建光效
--rwPrintErrorLog("怪物创建")
--rwPrintErrorLog("伪装者创建地图"..tInfo["Map"].."位置"..tInfo["Pos"].."NPC组"..tInfo["NPCGroup"].."NPCgen"..tInfo["MonsterGen"])
--rwPrintErrorLog("怪物创建地图"..tInfo["Map"].."位置"..tInfo["Pos"].."怪物组"..tInfo["MonsterGroup"].."怪物gen"..tInfo["NPCGroupGen"])
            end
        end
    end

end

--随机活动怪物（全局表数据随机
function rwActivity_GoldMonster_TimeLimit_RandomMon()	
    local nDate = os.date("%Y%m%d",os.time())
    if tActivity_TimeLimit_GoldMonsterInfo[nDate] then
----rwPrintErrorLog("当天已随机,不操作全局表")
        return  --当天已随机
    end
    tActivity_TimeLimit_GoldMonsterInfo[nDate] = tActivity_TimeLimit_GoldMonsterInfo[nDate] or {}
	----rwPrintErrorLog("当天未随机,操作全局表")
    for i=1,#tTimeLimit_Activiry_Time["Activity"]["TimeConfig"] do 
        tActivity_TimeLimit_GoldMonsterInfo[nDate][i] = {}
        local nAreaRandom = math.random(1,#tAreaList)      
        local nAreaPosRandom = math.random(1,#tArea[tAreaList[nAreaRandom]])
		local nMonsterGroupId  = 0

        local tInfo = tArea[tAreaList[nAreaRandom]][nAreaPosRandom]

		local nRandom1 = math.random(1,10000) --随机区间（1-10000）		
		for k,v in pairs(tMonsterRandom[i]["Monster"]) do 
			if nRandom1 >= tMonsterRandom[i]["Monster"][k]["MinRate"] and nRandom1 <= tMonsterRandom[i]["Monster"][k]["MaxRate"] then------------------------随机NPC组
				nMonsterGroupId = tMonsterRandom[i]["Monster"][k]["MonsterGroupId"]
				break	
			end
		end
	
        tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["Map"] = tInfo["Map"]
        tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["Pos"] = tInfo["Pos"]
        tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["Ang"] = tInfo["Ang"]
		tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["MonsterGen"] = tMonsterGroupGen[tInfo["Map"]]
        tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["MonsterGroup"] = nMonsterGroupId
        tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["DialogId"] = tMonsterDialog[tAreaList[nAreaRandom]][nAreaPosRandom][i]
        tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["NPCGroupGen"] = tNpcGroupGen[tInfo["Map"]]
		tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["NPCGroup"] = tMonstergroup_Transfer[nMonsterGroupId][tInfo["Map"]]

--rwPrintErrorLog("活动时间段"..i)
--rwPrintErrorLog("怪物创建地图"..tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["Map"])
--rwPrintErrorLog("位置"..tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["Pos"])
--rwPrintErrorLog("怪物组"..tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["MonsterGroup"] )
--rwPrintErrorLog("对白"..tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["DialogId"] )
--rwPrintErrorLog("NPC组"..tActivity_TimeLimit_GoldMonsterInfo[nDate][i]["NPCGroup"] )
    end
end
