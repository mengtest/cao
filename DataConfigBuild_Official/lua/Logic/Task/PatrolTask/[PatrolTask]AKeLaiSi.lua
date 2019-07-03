--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--阿克莱斯巡查任务
--HYT
----******************************************************
--巡查奖励配置：
--联盟宝箱
local nLianMeng_Box_AwardId = 2000151
--普通宝箱
local nNormal_Box_AwardId = 2000152

local tAKeLaiSi = {}

--陷阱 3个
--宝箱2个
--npc 三个 3282 -3284
--怪物 两个
tAKeLaiSi.Task1 = 50019

--新增过场动画任务
tAKeLaiSi.Task1_1 = 50153
tAKeLaiSi.Task1_2 = 50154
tAKeLaiSi.Task1_3 = 50155
tAKeLaiSi.Task1_4 = 50156
tAKeLaiSi.Task1_5 = 50157
tAKeLaiSi.Task1_6 = 50158

tAKeLaiSi.Task2 = 50020
tAKeLaiSi.Task3 = 50021

tAKeLaiSi.Task4 = 50022
tAKeLaiSi.Task5 = 50023

tAKeLaiSi.Task6 = 50024
tAKeLaiSi.Task7 = 50025

tAKeLaiSi.Task8 = 50026
tAKeLaiSi.Task9 = 50027


tAKeLaiSi.Task10 = 50028
tAKeLaiSi.Task11 = 50029
tAKeLaiSi.Task12 = 50030
tAKeLaiSi.Task13 = 50031
tAKeLaiSi.Task14 = 50032

tAKeLaiSi.Task15 = 50033
tAKeLaiSi.Task16 = 50034
tAKeLaiSi.Task17 = 50035

tAKeLaiSi.Task18 = 50175
tAKeLaiSi.Task19 = 50176
tAKeLaiSi.Task20 = 50177
tAKeLaiSi.Task21 = 50178
tAKeLaiSi.Task22 = 50179
tAKeLaiSi.Task23 = 50180
tAKeLaiSi.Task24 = 50181
tAKeLaiSi.Task25 = 50182
tAKeLaiSi.Task26 = 50183
tAKeLaiSi.Task27 = 50184
tAKeLaiSi.Task28 = 50185
tAKeLaiSi.Task29 = 50186
tAKeLaiSi.Task30 = 50187


local tDialog = {}


local nBiDuoMao = 3080
--npc组
--宝箱 40080-40081
rwtNpcGroup[40080] = rwtNpcGroup[40080] or {}  --宝箱1
rwtNpcGroup[40080]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40080]["Awards"] = {}
--rwtNpcGroup[40080]["Awards"]["AwardId"] = nNormal_Box_AwardId--5000214    
--rwtNpcGroup[40080]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[40080]["Awards"]["Events"] = {}
rwtNpcGroup[40080]["Awards"]["Events"][1] = {}
rwtNpcGroup[40080]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40080]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40080]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40080
rwtNpcGroup[40080]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[40080]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nNormal_Box_AwardId  

rwtNpcGroup[40081] = rwtNpcGroup[40081] or {}  --宝箱2
rwtNpcGroup[40081]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40081]["Awards"] = {}
--rwtNpcGroup[40081]["Awards"]["AwardId"] = nNormal_Box_AwardId--5000215   
--rwtNpcGroup[40081]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[40081]["Awards"]["Events"] = {}
rwtNpcGroup[40081]["Awards"]["Events"][1] = {}
rwtNpcGroup[40081]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40081]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40081]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40081
rwtNpcGroup[40081]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[40081]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nNormal_Box_AwardId  

--陷阱 30342-30344
local nTrap_1 = 30342
local nTrap_gen_1 = 2001892
local nTrap_2 = 30343
local nTrap_gen_2 = 2001893 
local nTrap_3 = 30344 
local nTrap_gen_3 = 2001894

rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {} 
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}   
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {}   
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[30410] = rwtNpcGroup[30410] or {}   
rwtNpcGroup[30410]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30411] = rwtNpcGroup[30411] or {}   
rwtNpcGroup[30411]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30412] = rwtNpcGroup[30412] or {}   
rwtNpcGroup[30412]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30413] = rwtNpcGroup[30413] or {}   
rwtNpcGroup[30413]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30414] = rwtNpcGroup[30414] or {}   
rwtNpcGroup[30414]["Type"] = CONST_NPCGROUP_TYPE.Trap



local nFuShan = 3282
local nLaFu = 3283
local nWeiBin = 3284
local nWeiBinZhang = 3294

rwtNpc[nFuShan] = rwtNpc[nFuShan] or {}
rwtNpc[nLaFu] = rwtNpc[nLaFu] or {}
rwtNpc[nWeiBin] = rwtNpc[nWeiBin] or {}
rwtNpc[nWeiBinZhang] = rwtNpc[nWeiBinZhang] or {}
rwtNpc[3387] = rwtNpc[3387] or {}
rwtNpc[3389] = rwtNpc[3389] or {}
rwtNpc[3390] = rwtNpc[3390] or {}
--npc
rwtNpcGroup[20319] = rwtNpcGroup[20319] or {}  --富商金斯特
rwtNpcGroup[20319]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20319]["NpcId"]= nFuShan

rwtNpcGroup[20320] = rwtNpcGroup[20320] or {}  --卫兵
rwtNpcGroup[20320]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20320]["NpcId"]= nWeiBin

rwtNpcGroup[20321] = rwtNpcGroup[20321] or {}  --拉夫
rwtNpcGroup[20321]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20321]["NpcId"]= nLaFu

rwtNpcGroup[20327] = rwtNpcGroup[20327] or {}  --卫兵长
rwtNpcGroup[20327]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20327]["NpcId"]= nWeiBinZhang

rwtNpcGroup[20412] = rwtNpcGroup[20412] or {}  --强壮的男人
rwtNpcGroup[20412]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20412]["NpcId"]= 3387
			
rwtNpcGroup[20413] = rwtNpcGroup[20413] or {}  --
rwtNpcGroup[20413]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20413]["NpcId"]= 3389
			
rwtNpcGroup[20414] = rwtNpcGroup[20414] or {}  --
rwtNpcGroup[20414]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20414]["NpcId"]= 3390



local ndialogId=1048
local nAwardid  = 2000076
--采集
rwtNpcGroup[60118] = rwtNpcGroup[60118] or {}     
rwtNpcGroup[60118]["Type"] = CONST_NPCGROUP_TYPE.Collect 

rwtNpcGroup[60201] = rwtNpcGroup[60201] or {}     
rwtNpcGroup[60201]["Type"] = CONST_NPCGROUP_TYPE.Collect 
rwtNpcGroup[60202] = rwtNpcGroup[60202] or {}     
rwtNpcGroup[60202]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[60202]["DialogId"] = 11168 
rwtNpcGroup[60202]["CollectTime"] = 3
rwtNpcGroup[60203] = rwtNpcGroup[60203] or {}     
rwtNpcGroup[60203]["Type"] = CONST_NPCGROUP_TYPE.Collect 
rwtNpcGroup[60204] = rwtNpcGroup[60204] or {}     
rwtNpcGroup[60204]["Type"] = CONST_NPCGROUP_TYPE.Collect 
rwtNpcGroup[60205] = rwtNpcGroup[60205] or {}     
rwtNpcGroup[60205]["Type"] = CONST_NPCGROUP_TYPE.Collect 
rwtNpcGroup[60206] = rwtNpcGroup[60206] or {}     
rwtNpcGroup[60206]["Type"] = CONST_NPCGROUP_TYPE.Collect 

rwtTask[tAKeLaiSi.Task1] = {}
rwtTask[tAKeLaiSi.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][20795]
rwtTask[tAKeLaiSi.Task1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[tAKeLaiSi.Task1]["AcceptDialogId"] = 10900
rwtTask[tAKeLaiSi.Task1]["ReqTrap1"] = nTrap_1
rwtTask[tAKeLaiSi.Task1]["PatrolFirstTask"] = 1
rwtTask[tAKeLaiSi.Task1]["PatrolAfterTask"] = {tAKeLaiSi.Task1_1,tAKeLaiSi.Task1_2,tAKeLaiSi.Task1_3,tAKeLaiSi.Task1_4,tAKeLaiSi.Task1_5,tAKeLaiSi.Task1_6}
rwtTask[tAKeLaiSi.Task1]["PatrolTaskAreaId"] = 2001
rwtTask[tAKeLaiSi.Task1]["PatrolTaskTownId"] = 200104
rwtTask[tAKeLaiSi.Task1]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task1]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task1]["DynaNpcGroupGen"][1]["GenId"] =nTrap_gen_1
rwtTask[tAKeLaiSi.Task1]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tAKeLaiSi.Task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tAKeLaiSi.Task1]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task1]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tAKeLaiSi.Task1]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task1]["StartAutoWay"]["FindWayPos"] = "47.20,0.10,-106.58"

--新增巡查动画任务1
rwtTask[tAKeLaiSi.Task1_1] = {}
rwtTask[tAKeLaiSi.Task1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20796]
rwtTask[tAKeLaiSi.Task1_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.Task1_1]["NextTaskId" ]= tAKeLaiSi.Task2
rwtTask[tAKeLaiSi.Task1_1]["DialogId"] = 11105
rwtTask[tAKeLaiSi.Task1_1]["ReqTrap1" ]= nTrap_1
rwtTask[tAKeLaiSi.Task1_1]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task1_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task1_1]["DynaNpcGroupGen"][1]["GenId"] =nTrap_gen_1
rwtTask[tAKeLaiSi.Task1_1]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tAKeLaiSi.Task1_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task1_1]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task1_1]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tAKeLaiSi.Task1_1]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task1_1]["StartAutoWay"]["FindWayPos"] = "47.20,0.10,-106.58"

--开启宝箱
rwtTask[tAKeLaiSi.Task2] = {}
rwtTask[tAKeLaiSi.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][20797]
rwtTask[tAKeLaiSi.Task2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
rwtTask[tAKeLaiSi.Task2]["NextTaskId"] = tAKeLaiSi.Task3
--rwtTask[tAKeLaiSi.Task2]["PatrolCg"] = 2114
rwtTask[tAKeLaiSi.Task2]["ReqTreasureBox"] = 40080
rwtTask[tAKeLaiSi.Task2]["DialogId"]= 10903
rwtTask[tAKeLaiSi.Task2]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task2]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task2]["DynaNpcGroupGen"][1]["GenId"] = 2001895
rwtTask[tAKeLaiSi.Task2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task2]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task2]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task2]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task2]["StartAutoWay"]["FindWayGroupId"] =40080
rwtTask[tAKeLaiSi.Task2]["StartAutoWay"]["FindWayGenId"] =2001895

--回复联盟
rwtTask[tAKeLaiSi.Task3] = {}
rwtTask[tAKeLaiSi.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][20798]
rwtTask[tAKeLaiSi.Task3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task3]["TaskNpc"] = nBiDuoMao
rwtTask[tAKeLaiSi.Task3]["DialogId"] = 10904
rwtTask[tAKeLaiSi.Task3]["PatrolLastTask"] = 1
rwtTask[tAKeLaiSi.Task3]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task3]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task3]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[tAKeLaiSi.Task3]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tAKeLaiSi.Task3]["StartAutoWay"]["FindWayGenId"] =2001658
--rwtTask[tAKeLaiSi.Task3]["AwardId"] = 2000117

--新增巡查动画任务2
rwtTask[tAKeLaiSi.Task1_2] = {}
rwtTask[tAKeLaiSi.Task1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20799]
rwtTask[tAKeLaiSi.Task1_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.Task1_2]["NextTaskId" ]= tAKeLaiSi.Task4
rwtTask[tAKeLaiSi.Task1_2]["DialogId"] = 11106
rwtTask[tAKeLaiSi.Task1_2]["ReqTrap1" ]= nTrap_1
rwtTask[tAKeLaiSi.Task1_2]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task1_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task1_2]["DynaNpcGroupGen"][1]["GenId"] =nTrap_gen_1
rwtTask[tAKeLaiSi.Task1_2]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tAKeLaiSi.Task1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task1_2]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task1_2]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tAKeLaiSi.Task1_2]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task1_2]["StartAutoWay"]["FindWayPos"] = "47.20,0.10,-106.58"

--开启宝箱    
rwtTask[tAKeLaiSi.Task4] = {}
rwtTask[tAKeLaiSi.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][20800]
rwtTask[tAKeLaiSi.Task4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
rwtTask[tAKeLaiSi.Task4]["NextTaskId"] = tAKeLaiSi.Task5
--rwtTask[tAKeLaiSi.Task4]["PatrolCg"] = 2115
rwtTask[tAKeLaiSi.Task4]["ReqTreasureBox"] = 40081
rwtTask[tAKeLaiSi.Task4]["DialogId"]= 10903
rwtTask[tAKeLaiSi.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task4]["DynaNpcGroupGen"][1]["GenId"] = 2001896
rwtTask[tAKeLaiSi.Task4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task4]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task4]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task4]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task4]["StartAutoWay"]["FindWayGroupId"] =40081
rwtTask[tAKeLaiSi.Task4]["StartAutoWay"]["FindWayGenId"] =2001896

--回报联盟
rwtTask[tAKeLaiSi.Task5] = {}
rwtTask[tAKeLaiSi.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][20801]
rwtTask[tAKeLaiSi.Task5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task5]["TaskNpc"] = nBiDuoMao
rwtTask[tAKeLaiSi.Task5]["DialogId"] = 10904
rwtTask[tAKeLaiSi.Task5]["PatrolLastTask"] = 1  
rwtTask[tAKeLaiSi.Task5]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task5]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task5]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[tAKeLaiSi.Task5]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tAKeLaiSi.Task5]["StartAutoWay"]["FindWayGenId"] =2001658
--rwtTask[tAKeLaiSi.Task5]["AwardId"] = 2000118

--新增巡查动画任务3
rwtTask[tAKeLaiSi.Task1_3] = {}
rwtTask[tAKeLaiSi.Task1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20802]
rwtTask[tAKeLaiSi.Task1_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.Task1_3]["NextTaskId" ]= tAKeLaiSi.Task6
rwtTask[tAKeLaiSi.Task1_3]["DialogId"] = 11107
rwtTask[tAKeLaiSi.Task1_3]["ReqTrap1" ]= nTrap_1
rwtTask[tAKeLaiSi.Task1_3]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task1_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task1_3]["DynaNpcGroupGen"][1]["GenId"] =nTrap_gen_1
rwtTask[tAKeLaiSi.Task1_3]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tAKeLaiSi.Task1_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task1_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.Task1_3]["DynaNpcGroupGen"][2]["GenId"] = 2001897
rwtTask[tAKeLaiSi.Task1_3]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task1_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task1_3]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task1_3]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tAKeLaiSi.Task1_3]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task1_3]["StartAutoWay"]["FindWayPos"] = "47.20,0.10,-106.58"

--调查石碑

rwtTask[tAKeLaiSi.Task6] = {}
rwtTask[tAKeLaiSi.Task6]["Title"] = tLuaText[LANGUAGE_CONFIG][20803]
rwtTask[tAKeLaiSi.Task6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task6]["NextTaskId"] = tAKeLaiSi.Task7
rwtTask[tAKeLaiSi.Task6]["TaskNpc"] = nFuShan
--rwtTask[tAKeLaiSi.Task6]["PatrolCg"] = 2116
rwtTask[tAKeLaiSi.Task6]["DialogId"] = 10906
rwtTask[tAKeLaiSi.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task6]["DynaNpcGroupGen"][1]["GenId"] = 2001897
rwtTask[tAKeLaiSi.Task6]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task6]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task6]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task6]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task6]["StartAutoWay"]["FindWayGroupId"] =20319
rwtTask[tAKeLaiSi.Task6]["StartAutoWay"]["FindWayGenId"] =2001897
rwtTask[tAKeLaiSi.Task6]["AwardId"] = nLianMeng_Box_AwardId
--回报联盟
 
rwtTask[tAKeLaiSi.Task7] = {}
rwtTask[tAKeLaiSi.Task7]["Title"] = tLuaText[LANGUAGE_CONFIG][20804]
rwtTask[tAKeLaiSi.Task7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task7]["TaskNpc"] = nBiDuoMao
rwtTask[tAKeLaiSi.Task7]["DialogId"] = 10907
rwtTask[tAKeLaiSi.Task7]["PatrolLastTask"] = 1  
rwtTask[tAKeLaiSi.Task7]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task7]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task7]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[tAKeLaiSi.Task7]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tAKeLaiSi.Task7]["StartAutoWay"]["FindWayGenId"] =2001658
--rwtTask[tAKeLaiSi.Task7]["AwardId"] = 2000119

--新增巡查动画任务4
rwtTask[tAKeLaiSi.Task1_4] = {}
rwtTask[tAKeLaiSi.Task1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20805]
rwtTask[tAKeLaiSi.Task1_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.Task1_4]["NextTaskId" ]= tAKeLaiSi.Task8
rwtTask[tAKeLaiSi.Task1_4]["DialogId"] = 11108
rwtTask[tAKeLaiSi.Task1_4]["ReqTrap1" ]= nTrap_1
rwtTask[tAKeLaiSi.Task1_4]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task1_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task1_4]["DynaNpcGroupGen"][1]["GenId"] =nTrap_gen_1
rwtTask[tAKeLaiSi.Task1_4]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tAKeLaiSi.Task1_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task1_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.Task1_4]["DynaNpcGroupGen"][2]["GenId"] = 2001902
rwtTask[tAKeLaiSi.Task1_4]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task1_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task1_4]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task1_4]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tAKeLaiSi.Task1_4]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task1_4]["StartAutoWay"]["FindWayPos"] = "47.20,0.10,-106.58"

--调查石碑
rwtTask[tAKeLaiSi.Task8] = {}
rwtTask[tAKeLaiSi.Task8]["Title"] = tLuaText[LANGUAGE_CONFIG][20806]
rwtTask[tAKeLaiSi.Task8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task8]["NextTaskId"] = tAKeLaiSi.Task9
rwtTask[tAKeLaiSi.Task8]["TaskNpc"] = nFuShan
--rwtTask[tAKeLaiSi.Task8]["PatrolCg"] = 2117
rwtTask[tAKeLaiSi.Task8]["DialogId"] = 10909
rwtTask[tAKeLaiSi.Task8]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task8]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task8]["DynaNpcGroupGen"][1]["GenId"] = 2001902
rwtTask[tAKeLaiSi.Task8]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task8]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task8]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task8]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task8]["StartAutoWay"]["FindWayGroupId"] =20319
rwtTask[tAKeLaiSi.Task8]["StartAutoWay"]["FindWayGenId"] =2001897
rwtTask[tAKeLaiSi.Task8]["AwardId"] = nLianMeng_Box_AwardId
--回报联盟

rwtTask[tAKeLaiSi.Task9] = {}
rwtTask[tAKeLaiSi.Task9]["Title"] = tLuaText[LANGUAGE_CONFIG][20807]
rwtTask[tAKeLaiSi.Task9]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task9]["TaskNpc"] = nBiDuoMao
rwtTask[tAKeLaiSi.Task9]["DialogId"] = 10907
rwtTask[tAKeLaiSi.Task9]["PatrolLastTask"] = 1
rwtTask[tAKeLaiSi.Task9]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task9]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task9]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[tAKeLaiSi.Task9]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tAKeLaiSi.Task9]["StartAutoWay"]["FindWayGenId"] =2001658
--rwtTask[tAKeLaiSi.Task9]["AwardId"] = 2000120  

--新增巡查动画任务5
rwtTask[tAKeLaiSi.Task1_5] = {}
rwtTask[tAKeLaiSi.Task1_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20808]
rwtTask[tAKeLaiSi.Task1_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.Task1_5]["NextTaskId" ]= tAKeLaiSi.Task10
rwtTask[tAKeLaiSi.Task1_5]["DialogId"] = 11109
rwtTask[tAKeLaiSi.Task1_5]["ReqTrap1" ]= nTrap_1
rwtTask[tAKeLaiSi.Task1_5]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task1_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task1_5]["DynaNpcGroupGen"][1]["GenId"] =nTrap_gen_1
rwtTask[tAKeLaiSi.Task1_5]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tAKeLaiSi.Task1_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task1_5]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.Task1_5]["DynaNpcGroupGen"][2]["GenId"] = 2001903
rwtTask[tAKeLaiSi.Task1_5]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task1_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task1_5]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task1_5]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tAKeLaiSi.Task1_5]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task1_5]["StartAutoWay"]["FindWayPos"] = "47.20,0.10,-106.58"

--找到镇民拉夫  --任务分支
rwtTask[tAKeLaiSi.Task10] = {}
rwtTask[tAKeLaiSi.Task10]["Title"] = tLuaText[LANGUAGE_CONFIG][20809]
--rwtTask[tAKeLaiSi.Task10]["NextTaskId"] = tAKeLaiSi.Task11
rwtTask[tAKeLaiSi.Task10]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tAKeLaiSi.Task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tAKeLaiSi.Task10]["TaskNpc"] = nLaFu
--rwtTask[tAKeLaiSi.Task10]["PatrolCg"] = 2118
rwtTask[tAKeLaiSi.Task10]["DialogId"] = 11148       ------- 新增对白
rwtTask[tAKeLaiSi.Task10]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task10]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task10]["DynaNpcGroupGen"][1]["GenId"] = 2001903
rwtTask[tAKeLaiSi.Task10]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task10]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task10]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task10]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task10]["StartAutoWay"]["FindWayGroupId"] =20321
rwtTask[tAKeLaiSi.Task10]["StartAutoWay"]["FindWayGenId"] =2001903
rwtTask[tAKeLaiSi.Task10]["OptionTask1"] = tAKeLaiSi.Task18  --选项1任务
rwtTask[tAKeLaiSi.Task10]["OptionTask2"] = tAKeLaiSi.Task20  --选项2任务


--深入荒林进行探查   --选项1任务
rwtTask[tAKeLaiSi.Task18] = {}
rwtTask[tAKeLaiSi.Task18]["Title"] = tLuaText[LANGUAGE_CONFIG][20810]
rwtTask[tAKeLaiSi.Task18]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.Task18]["NextTaskId" ]= tAKeLaiSi.Task11
rwtTask[tAKeLaiSi.Task18]["DialogId"] = 11149
rwtTask[tAKeLaiSi.Task18]["ReqTrap1" ]= 30410 
rwtTask[tAKeLaiSi.Task18]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task18]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task18]["DynaNpcGroupGen"][1]["GenId"] =20010001  
rwtTask[tAKeLaiSi.Task18]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tAKeLaiSi.Task18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task18]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.Task18]["DynaNpcGroupGen"][2]["GenId"] = 20010005 
rwtTask[tAKeLaiSi.Task18]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task18]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task18]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task18]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tAKeLaiSi.Task18]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task18]["StartAutoWay"]["FindWayPos"] = "24.29,0.04,-137.74"  --改好了

--搜查附近区域
rwtTask[tAKeLaiSi.Task11] = {}
rwtTask[tAKeLaiSi.Task11]["Title"] = tLuaText[LANGUAGE_CONFIG][20811]  
rwtTask[tAKeLaiSi.Task11]["NextTaskId"] = tAKeLaiSi.Task19
rwtTask[tAKeLaiSi.Task11]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tAKeLaiSi.Task11]["DialogId"] = 11150  
rwtTask[tAKeLaiSi.Task11]["ReqCollectId1"] = 60118  
rwtTask[tAKeLaiSi.Task11]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task11]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task11]["DynaNpcGroupGen"][1]["GenId"] = 2001905
rwtTask[tAKeLaiSi.Task11]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task11]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task11]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task11]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task11]["StartAutoWay"]["FindWayGroupId"] =60118
rwtTask[tAKeLaiSi.Task11]["StartAutoWay"]["FindWayGenId"] =2001905


--继续搜查附近
rwtTask[tAKeLaiSi.Task19] = {}
rwtTask[tAKeLaiSi.Task19]["Title"] = tLuaText[LANGUAGE_CONFIG][20812]
rwtTask[tAKeLaiSi.Task19]["NextTaskId"] = tAKeLaiSi.Task12
rwtTask[tAKeLaiSi.Task19]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tAKeLaiSi.Task19]["DialogId"] = 11151 
rwtTask[tAKeLaiSi.Task19]["ReqCollectId1"] = 60202 
rwtTask[tAKeLaiSi.Task19]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task19]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task19]["DynaNpcGroupGen"][1]["GenId"] = 20010006
rwtTask[tAKeLaiSi.Task19]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task19]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task19]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task19]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task19]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.Task19]["StartAutoWay"]["FindWayGroupId"] = 60202
rwtTask[tAKeLaiSi.Task19]["StartAutoWay"]["FindWayGenId"] = 20010006

     
--继续向深处进发
rwtTask[tAKeLaiSi.Task12] = {}
rwtTask[tAKeLaiSi.Task12]["Title"] = tLuaText[LANGUAGE_CONFIG][20813]
rwtTask[tAKeLaiSi.Task12]["NextTaskId"] = tAKeLaiSi.Task13
rwtTask[tAKeLaiSi.Task12]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tAKeLaiSi.Task12]["DialogId"] = 11152
rwtTask[tAKeLaiSi.Task12]["ReqTrap1"] = nTrap_2
rwtTask[tAKeLaiSi.Task12]["MonsterGroupGenId"] = 2001900
rwtTask[tAKeLaiSi.Task12]["KillMonsterGroup1" ]= 900261
rwtTask[tAKeLaiSi.Task12]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task12]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task12]["DynaNpcGroupGen"][1]["GenId"] = 2001900
rwtTask[tAKeLaiSi.Task12]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task12]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.Task12]["DynaNpcGroupGen"][2]["GenId"] = nTrap_gen_2
rwtTask[tAKeLaiSi.Task12]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task12]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task12]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task12]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tAKeLaiSi.Task12]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.Task12]["StartAutoWay"]["FindWayGroupId"] = 900261
rwtTask[tAKeLaiSi.Task12]["StartAutoWay"]["FindWayGenId"] = 2001900


rwtTask[tAKeLaiSi.Task13] = {}
rwtTask[tAKeLaiSi.Task13]["Title"] = tLuaText[LANGUAGE_CONFIG][20814]
rwtTask[tAKeLaiSi.Task13]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task13]["TaskNpc"] = nBiDuoMao
rwtTask[tAKeLaiSi.Task13]["DialogId"] = 10907
rwtTask[tAKeLaiSi.Task13]["PatrolLastTask"] = 1  
rwtTask[tAKeLaiSi.Task13]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task13]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task13]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[tAKeLaiSi.Task13]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tAKeLaiSi.Task13]["StartAutoWay"]["FindWayGenId"] =2001658
--rwtTask[tAKeLaiSi.Task13]["AwardId"] = 2000121


--和联盟办事员对话
--选项2任务
rwtTask[tAKeLaiSi.Task20] = {}
rwtTask[tAKeLaiSi.Task20]["Title"] = tLuaText[LANGUAGE_CONFIG][20815]
rwtTask[tAKeLaiSi.Task20]["NextTaskId"] = tAKeLaiSi.Task21
rwtTask[tAKeLaiSi.Task20]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task20]["TaskNpc"] = 3061
rwtTask[tAKeLaiSi.Task20]["DialogId"] = 11154
--rwtTask[tAKeLaiSi.Task20]["PatrolLastTask"] = 1
rwtTask[tAKeLaiSi.Task20]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task20]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tAKeLaiSi.Task20]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.Task20]["StartAutoWay"]["FindWayGroupId"] = 20086
rwtTask[tAKeLaiSi.Task20]["StartAutoWay"]["FindWayGenId"] =  2001466

--前往荒林寻找佣兵
rwtTask[tAKeLaiSi.Task21] = {}
rwtTask[tAKeLaiSi.Task21]["Title"] = tLuaText[LANGUAGE_CONFIG][20816]
rwtTask[tAKeLaiSi.Task21]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tAKeLaiSi.Task21]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task21]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task21]["DynaNpcGroupGen"][1]["GenId"] = 20010011 
rwtTask[tAKeLaiSi.Task21]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task21]["TaskNpc"] = 3387 
rwtTask[tAKeLaiSi.Task21]["DialogId"] = 11155
rwtTask[tAKeLaiSi.Task21]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task21]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tAKeLaiSi.Task21]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.Task21]["StartAutoWay"]["FindWayGroupId"] = 20412 
rwtTask[tAKeLaiSi.Task21]["StartAutoWay"]["FindWayGenId"] =  20010011 
rwtTask[tAKeLaiSi.Task21]["OptionTask1"] = tAKeLaiSi.Task22  --选项1任务
rwtTask[tAKeLaiSi.Task21]["OptionTask2"] = tAKeLaiSi.Task25  --选项2任务

--相信是佣兵 选项1任务
--寻找情报箱
rwtTask[tAKeLaiSi.Task22] = {}
rwtTask[tAKeLaiSi.Task22]["Title"] = tLuaText[LANGUAGE_CONFIG][20817]
rwtTask[tAKeLaiSi.Task22]["NextTaskId"] = tAKeLaiSi.Task23
rwtTask[tAKeLaiSi.Task22]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tAKeLaiSi.Task22]["DialogId"] = 11157 
rwtTask[tAKeLaiSi.Task22]["AcceptDialogId"] = 11156
rwtTask[tAKeLaiSi.Task22]["ReqCollectId1"] = 60203   
rwtTask[tAKeLaiSi.Task22]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task22]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task22]["DynaNpcGroupGen"][1]["GenId"] = 20010007
rwtTask[tAKeLaiSi.Task22]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tAKeLaiSi.Task22]["DynaNpcGroupGen"][2] = {}
--rwtTask[tAKeLaiSi.Task22]["DynaNpcGroupGen"][2]["GenId"] = 20010014--------------怪物1gen
--rwtTask[tAKeLaiSi.Task22]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tAKeLaiSi.Task22]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task22]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task22]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task22]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task22]["StartAutoWay"]["FindWayGroupId"] =60203
rwtTask[tAKeLaiSi.Task22]["StartAutoWay"]["FindWayGenId"] =20010007


--战胜巨骨熊（0/1）  ---怪物战后对白
rwtTask[tAKeLaiSi.Task23] = {}
rwtTask[tAKeLaiSi.Task23]["Title"] = tLuaText[LANGUAGE_CONFIG][20818]
rwtTask[tAKeLaiSi.Task23]["NextTaskId"] = tAKeLaiSi.Task24
rwtTask[tAKeLaiSi.Task23]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tAKeLaiSi.Task23]["DialogId"] = 11158 
rwtTask[tAKeLaiSi.Task23]["AcceptDialogId"] = 11158
--rwtTask[tAKeLaiSi.Task23]["ReqTrap1"] = 30414
rwtTask[tAKeLaiSi.Task23]["MonsterGroupGenId"] = 20010014
rwtTask[tAKeLaiSi.Task23]["KillMonsterGroup1" ]= 900308 
rwtTask[tAKeLaiSi.Task23]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task23]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task23]["DynaNpcGroupGen"][1]["GenId"] = 20010014 
rwtTask[tAKeLaiSi.Task23]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tAKeLaiSi.Task23]["DynaNpcGroupGen"][2] = {}
--rwtTask[tAKeLaiSi.Task23]["DynaNpcGroupGen"][2]["GenId"] = 20010017 
--rwtTask[tAKeLaiSi.Task23]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tAKeLaiSi.Task23]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task23]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task23]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tAKeLaiSi.Task23]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.Task23]["StartAutoWay"]["FindWayGroupId"] = 900308 ----------
rwtTask[tAKeLaiSi.Task23]["StartAutoWay"]["FindWayGenId"] = 20010014 ------------



--返回寻找盗贼
rwtTask[tAKeLaiSi.Task24] = {}
rwtTask[tAKeLaiSi.Task24]["Title"] = tLuaText[LANGUAGE_CONFIG][20819]
rwtTask[tAKeLaiSi.Task24]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task24]["NextTaskId"] = tAKeLaiSi.Task13
rwtTask[tAKeLaiSi.Task24]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task24]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task24]["DynaNpcGroupGen"][1]["GenId"] = 20010012
rwtTask[tAKeLaiSi.Task24]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task24]["TaskNpc"] = 3389 
rwtTask[tAKeLaiSi.Task24]["DialogId"] = 11169 
rwtTask[tAKeLaiSi.Task24]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task24]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tAKeLaiSi.Task24]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.Task24]["StartAutoWay"]["FindWayGroupId"] = 20413
rwtTask[tAKeLaiSi.Task24]["StartAutoWay"]["FindWayGenId"] =  20010012

--选项2任务
--拆穿谎言
rwtTask[tAKeLaiSi.Task25] = {}
rwtTask[tAKeLaiSi.Task25]["Title"] = tLuaText[LANGUAGE_CONFIG][20820]
rwtTask[tAKeLaiSi.Task25]["NextTaskId"] = tAKeLaiSi.Task26
rwtTask[tAKeLaiSi.Task25]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tAKeLaiSi.Task25]["DialogId"] = 11160
rwtTask[tAKeLaiSi.Task25]["AcceptDialogId"] = 11160
rwtTask[tAKeLaiSi.Task25]["ReqTrap1"] = 30411 
rwtTask[tAKeLaiSi.Task25]["MonsterGroupGenId"] = 20010015 
rwtTask[tAKeLaiSi.Task25]["KillMonsterGroup1" ]= 900309 
rwtTask[tAKeLaiSi.Task25]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task25]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task25]["DynaNpcGroupGen"][1]["GenId"] = 20010002 
rwtTask[tAKeLaiSi.Task25]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task25]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task25]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.Task25]["DynaNpcGroupGen"][2]["GenId"] = 20010015
rwtTask[tAKeLaiSi.Task25]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task25]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task25]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task25]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tAKeLaiSi.Task25]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.Task25]["StartAutoWay"]["FindWayGroupId"] = 900309 
rwtTask[tAKeLaiSi.Task25]["StartAutoWay"]["FindWayGenId"] = 20010015 

--
--拾起被盗的宝藏
rwtTask[tAKeLaiSi.Task26] = {}
rwtTask[tAKeLaiSi.Task26]["Title"] = tLuaText[LANGUAGE_CONFIG][20821] 
rwtTask[tAKeLaiSi.Task26]["NextTaskId"] = tAKeLaiSi.Task13
rwtTask[tAKeLaiSi.Task26]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tAKeLaiSi.Task26]["DialogId"] = 11161  
rwtTask[tAKeLaiSi.Task26]["ReqCollectId1"] = 60204 
rwtTask[tAKeLaiSi.Task26]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task26]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task26]["DynaNpcGroupGen"][1]["GenId"] = 20010008 
rwtTask[tAKeLaiSi.Task26]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task26]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task26]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task26]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task26]["StartAutoWay"]["FindWayGroupId"] =60204
rwtTask[tAKeLaiSi.Task26]["StartAutoWay"]["FindWayGenId"] =20010008



--新增巡查动画任务6
rwtTask[tAKeLaiSi.Task1_6] = {}
rwtTask[tAKeLaiSi.Task1_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20822]
rwtTask[tAKeLaiSi.Task1_6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task1_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.Task1_6]["NextTaskId" ]= tAKeLaiSi.Task14
rwtTask[tAKeLaiSi.Task1_6]["DialogId"] = 11110
rwtTask[tAKeLaiSi.Task1_6]["ReqTrap1" ]= nTrap_1
rwtTask[tAKeLaiSi.Task1_6]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task1_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task1_6]["DynaNpcGroupGen"][1]["GenId"] =nTrap_gen_1
rwtTask[tAKeLaiSi.Task1_6]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tAKeLaiSi.Task1_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task1_6]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.Task1_6]["DynaNpcGroupGen"][2]["GenId"] = 2001898
rwtTask[tAKeLaiSi.Task1_6]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task1_6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task1_6]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task1_6]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tAKeLaiSi.Task1_6]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task1_6]["StartAutoWay"]["FindWayPos"] = "47.20,0.10,-106.58"

--对话卫兵
rwtTask[tAKeLaiSi.Task14] = {}
rwtTask[tAKeLaiSi.Task14]["Title"] = tLuaText[LANGUAGE_CONFIG][20823]
rwtTask[tAKeLaiSi.Task14]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task14]["NextTaskId"] = tAKeLaiSi.Task27
rwtTask[tAKeLaiSi.Task14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task14]["TaskNpc"] = nWeiBin
--rwtTask[tAKeLaiSi.Task14]["PatrolCg"] = 2119
rwtTask[tAKeLaiSi.Task14]["DialogId"] = 11163
rwtTask[tAKeLaiSi.Task14]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task14]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task14]["DynaNpcGroupGen"][1]["GenId"] = 2001898
rwtTask[tAKeLaiSi.Task14]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task14]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task14]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task14]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task14]["StartAutoWay"]["FindWayGroupId"] =20320
rwtTask[tAKeLaiSi.Task14]["StartAutoWay"]["FindWayGenId"] =2001898


--前往附近清除魔物
rwtTask[tAKeLaiSi.Task27] = {}
rwtTask[tAKeLaiSi.Task27]["Title"] = tLuaText[LANGUAGE_CONFIG][20824]
rwtTask[tAKeLaiSi.Task27]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.Task27]["NextTaskId" ]= tAKeLaiSi.Task15
rwtTask[tAKeLaiSi.Task27]["DialogId"] = 11164 
rwtTask[tAKeLaiSi.Task27]["ReqTrap1" ]= 30412
rwtTask[tAKeLaiSi.Task27]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task27]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task27]["DynaNpcGroupGen"][1]["GenId"] =20010003  
rwtTask[tAKeLaiSi.Task27]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tAKeLaiSi.Task27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task27]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.Task27]["DynaNpcGroupGen"][2]["GenId"] = 20010013
rwtTask[tAKeLaiSi.Task27]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task27]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tAKeLaiSi.Task27]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task27]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tAKeLaiSi.Task27]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task27]["StartAutoWay"]["FindWayPos"] = "26.07,0.04,-156.61" 

----铲除魔物
rwtTask[tAKeLaiSi.Task15] = {}
rwtTask[tAKeLaiSi.Task15]["Title"] = tLuaText[LANGUAGE_CONFIG][20825]
rwtTask[tAKeLaiSi.Task15]["NextTaskId"] = tAKeLaiSi.Task29
rwtTask[tAKeLaiSi.Task15]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tAKeLaiSi.Task15]["DialogId"] = 11165
rwtTask[tAKeLaiSi.Task15]["ReqTrap1"] = nTrap_3
rwtTask[tAKeLaiSi.Task15]["MonsterGroupGenId"] = 2001901
rwtTask[tAKeLaiSi.Task15]["KillMonsterGroup1" ]= 900262
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_3
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"][2]["GenId"] = 2001901
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"][3] = {}
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"][3]["GenId"] = 20010013
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"][3]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task15]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tAKeLaiSi.Task15]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task15]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tAKeLaiSi.Task15]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.Task15]["StartAutoWay"]["FindWayGroupId"] = 900262
rwtTask[tAKeLaiSi.Task15]["StartAutoWay"]["FindWayGenId"] = 2001901


--上前查看情况
--rwtTask[tAKeLaiSi.Task28] = {}
--rwtTask[tAKeLaiSi.Task28]["Title"] = tLuaText[LANGUAGE_CONFIG][20826]
--rwtTask[tAKeLaiSi.Task28]["NextTaskId"] = tAKeLaiSi.Task29
--rwtTask[tAKeLaiSi.Task28]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tAKeLaiSi.Task28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[tAKeLaiSi.Task28]["DialogId"] = 1 --------------------对白
--rwtTask[tAKeLaiSi.Task28]["ReqTrap1"] = 1 ----------------------陷阱
--rwtTask[tAKeLaiSi.Task28]["MonsterGroupGenId"] = 1--------------------怪物gen
--rwtTask[tAKeLaiSi.Task28]["KillMonsterGroup1" ]=  1-------------------怪物
--rwtTask[tAKeLaiSi.Task28]["DynaNpcGroupGen"] = {}
--rwtTask[tAKeLaiSi.Task28]["DynaNpcGroupGen"][1] = {}
--rwtTask[tAKeLaiSi.Task28]["DynaNpcGroupGen"][1]["GenId"] =1------------------陷阱gen
--rwtTask[tAKeLaiSi.Task28]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tAKeLaiSi.Task28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tAKeLaiSi.Task28]["DynaNpcGroupGen"][2] = {}
--rwtTask[tAKeLaiSi.Task28]["DynaNpcGroupGen"][2]["GenId"] = 1 ----------------------怪物
--rwtTask[tAKeLaiSi.Task28]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tAKeLaiSi.Task28]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tAKeLaiSi.Task28]["StartAutoWay"] = {}
--rwtTask[tAKeLaiSi.Task28]["StartAutoWay"]["FindWayTypeId"] = 2
--rwtTask[tAKeLaiSi.Task28]["StartAutoWay"]["FindWayMapId"] = 2001
--rwtTask[tAKeLaiSi.Task28]["StartAutoWay"]["FindWayGroupId"] = 1 -----------------------
--rwtTask[tAKeLaiSi.Task28]["StartAutoWay"]["FindWayGenId"] = 1----------------------

----查看受伤的卫兵
rwtTask[tAKeLaiSi.Task29] = {}
rwtTask[tAKeLaiSi.Task29]["Title"] = tLuaText[LANGUAGE_CONFIG][20827]
rwtTask[tAKeLaiSi.Task29]["NextTaskId"] = tAKeLaiSi.Task30
rwtTask[tAKeLaiSi.Task29]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tAKeLaiSi.Task29]["DialogId"] = 11166 
rwtTask[tAKeLaiSi.Task29]["ReqCollectId1"] = 60205 
rwtTask[tAKeLaiSi.Task29]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task29]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task29]["DynaNpcGroupGen"][1]["GenId"] = 20010009 
rwtTask[tAKeLaiSi.Task29]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task29]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task29]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.Task29]["DynaNpcGroupGen"][2]["GenId"] = 20010013
rwtTask[tAKeLaiSi.Task29]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task29]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tAKeLaiSi.Task29]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task29]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task29]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task29]["StartAutoWay"]["FindWayGroupId"] =60205
rwtTask[tAKeLaiSi.Task29]["StartAutoWay"]["FindWayGenId"] =20010009


--

----仔细记住情报

rwtTask[tAKeLaiSi.Task30] = {}
rwtTask[tAKeLaiSi.Task30]["Title"] = tLuaText[LANGUAGE_CONFIG][20828]
rwtTask[tAKeLaiSi.Task30]["NextTaskId"] = tAKeLaiSi.Task16
rwtTask[tAKeLaiSi.Task30]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tAKeLaiSi.Task30]["DialogId"] = 11170 
rwtTask[tAKeLaiSi.Task30]["ReqCollectId1"] = 60206 
rwtTask[tAKeLaiSi.Task30]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task30]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task30]["DynaNpcGroupGen"][1]["GenId"] = 20010010 
rwtTask[tAKeLaiSi.Task30]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task30]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task30]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.Task30]["DynaNpcGroupGen"][2]["GenId"] = 20010013
rwtTask[tAKeLaiSi.Task30]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task30]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tAKeLaiSi.Task30]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task30]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task30]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task30]["StartAutoWay"]["FindWayGroupId"] =60206
rwtTask[tAKeLaiSi.Task30]["StartAutoWay"]["FindWayGenId"] =20010010





--向卫兵队长汇报

rwtTask[tAKeLaiSi.Task16] = {}
rwtTask[tAKeLaiSi.Task16]["Title"] = tLuaText[LANGUAGE_CONFIG][20829]
rwtTask[tAKeLaiSi.Task16]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task16]["NextTaskId"] = tAKeLaiSi.Task17
rwtTask[tAKeLaiSi.Task16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task16]["TaskNpc"] = nWeiBinZhang
rwtTask[tAKeLaiSi.Task16]["DialogId"] = 11167
rwtTask[tAKeLaiSi.Task16]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.Task16]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.Task16]["DynaNpcGroupGen"][1]["GenId"] = 2001899
rwtTask[tAKeLaiSi.Task16]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task16]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.Task16]["DynaNpcGroupGen"][2]["GenId"] = 20010013
rwtTask[tAKeLaiSi.Task16]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.Task16]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.Task16]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task16]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task16]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAKeLaiSi.Task16]["StartAutoWay"]["FindWayGroupId"] =20327
rwtTask[tAKeLaiSi.Task16]["StartAutoWay"]["FindWayGenId"] =2001899



rwtTask[tAKeLaiSi.Task17] = {}
rwtTask[tAKeLaiSi.Task17]["Title"] =tLuaText[LANGUAGE_CONFIG][20830]
rwtTask[tAKeLaiSi.Task17]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAKeLaiSi.Task17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.Task17]["TaskNpc"] = nBiDuoMao
rwtTask[tAKeLaiSi.Task17]["DialogId"] = 10907
rwtTask[tAKeLaiSi.Task17]["PatrolLastTask"] = 1 
rwtTask[tAKeLaiSi.Task17]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.Task17]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAKeLaiSi.Task17]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[tAKeLaiSi.Task17]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tAKeLaiSi.Task17]["StartAutoWay"]["FindWayGenId"] =2001658
--rwtTask[tAKeLaiSi.Task17]["AwardId"] = 2000122