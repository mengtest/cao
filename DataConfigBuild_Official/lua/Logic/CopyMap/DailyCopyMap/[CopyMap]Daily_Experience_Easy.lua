                                                     --region *.lua
--Date
--此文件由[BabeLua]插件自动生成


--endregion

----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3064

--掩码
local nTempDataId = 1127  
local nTempDataId_2 = 1181 

--采集
local nCollectId_1 = 60166

--NpcGroup
local nNpcGroupId_1 =  20395
local nNpcId = 3369
rwtNpc[nNpcId] = rwtNpc[nNpcId] or {}

--随机npc
local  nRandom_NpcGroupId_1   = 20478      --强盗贝拉
local  nGenId_Random_NpcGroupId_1 =  3064015
local  nRandom_NpcGroupId_2   = 20479      --玫瑰团凯蒂
local  nGenId_Random_NpcGroupId_2 =  3064016

local tGenId_NpcGroup = {}             --四个npc随机点
tGenId_NpcGroup[1]  = 3064006
tGenId_NpcGroup[2]  = 3064007
tGenId_NpcGroup[3]  = 3064008
tGenId_NpcGroup[4]  = 3064014

local tPos_NpcGroup = {}
tPos_NpcGroup[1] = "27.035,0.02066231,-17.26"
tPos_NpcGroup[2] = "36.092,0.02,-16.268"
tPos_NpcGroup[3] = "35.54,0.01,-5.82"                             
tPos_NpcGroup[4] = "37.37,0.01,-11.47"

local tRotY_NpcGroup = {}
tRotY_NpcGroup[1] = 10
tRotY_NpcGroup[2] = 300
tRotY_NpcGroup[3] = 240                             
tRotY_NpcGroup[4] = 200


--宝箱
local nTreasureBoxId_1 =  40122        --通关宝箱
local nGenId_TongGuanBox_1 =  3064009

local nRandom_TreasureBoxId =  40157   --彩蛋宝箱
local tGenId_Random_TreasureBox = {}
tGenId_Random_TreasureBox[1]  =  3064011
tGenId_Random_TreasureBox[2]  =  3064012
tGenId_Random_TreasureBox[3]  =  3064013

 --随机怪物
local  tGenId_Monster = {}
 tGenId_Monster[1]  =  3064020
 tGenId_Monster[2]  =  3064021

--随机宝箱
 local tGenId_TreasureBox = {}
 tGenId_TreasureBox[1] = 3064018
 tGenId_TreasureBox[2] = 3064019


--机关
local nValve_1 = 1050
local nGenId_nValve1 =  3064010

--怪物
local nMonsterGroupId_1 = 200318
local nGenId_nMonster_1  = 3064001

local nRandom_MonsterGroup =  200351 --随机怪物
local nGenId_Random_MonsterGroup = 3064017

--副本入口
local nCopyMapGroupId =  50042

--副本目标
--cal nTarget1 = 60102
local nTarget1 = 60103


--对话id
local tDialog_EnterCopy     =	{6117,6118,6119,6120,6121}		        --进入副本5句对白
local tDialog_Bef_FixedMon  =	{6122,6123,6124,6125,6126}		        --和固定怪战斗前
local tDialog_Aft_FixedMon  =	{6127,6128,6129,6130,6131}		        --和固定怪战斗后
local tDialog_TransureBox   =	{6132,6133,6134,6135,6136}		        --通关宝箱对白											   
local tDialog_PassCopy      =	{6137,6138,6139,6140,6141,6142,6143}    --通关对白
local tDialog_Npc           =	{6144,6145,6146,6147,6148}		    --和npc对话对白
local tDialog_WithWenLi     =	{6260,6261,6262}		            --有温丽对白
local tDialog_WithoutWenLi  =	{6263,6264,6265}		            --无温丽对白
local tDialog_WithAiQi      =	{6266,6267,6268}		            --有爱琪对白
local tDialog_WithoutAiQi   =	{6269,6270,6271}		            --无爱琪对白
local tDialog_Random_TransureBox   =	{6161,6162,6163,6164,6165}		    --宝箱采集前对白



--奖励id
local nRewardId_1 = 1000178      --采集经验球
local nRewardId_2 = 1000179      --与npc对话
local nRewardId_3 = 1000180      --开启通关宝箱
local nRewardId_4 = 1000338      --无温丽奖励
local nRewardId_5 = 1000339      --有温丽奖励
local nRewardId_6 = 1000340      --无爱琪奖励
local nRewardId_7 = 1000341      --有爱琪奖励
local nRewardId_8 = 1000342      --彩蛋宝箱奖励
local nRewardId_9 = 1000440      --稀有宝箱1奖励
local nRewardId_10 = 1000441     --稀有宝箱2奖励


local tAwardGenId = {3064002,3064003,3064004,3064005,3064006,3064007,3064008,3064011,3064012,3064013,3064014,3064015,3064016,3064017,3064018,3064019}


--进入副本NPC
rwtNpcGroup[nCopyMapGroupId] = {}
rwtNpcGroup[nCopyMapGroupId]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nCopyMapGroupId]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Exp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10043]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
--rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
--rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = nTempDataId
--rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_EnterCopy
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {nGenId_nValve1}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = {1,2,3}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1] = {} ----------------------随机事件1 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 3000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["Pos"] = tPos_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["RotationY"] = tRotY_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGenId_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["Pos"] = tPos_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["RotationY"] = tRotY_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["GenId"] = tGenId_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["Pos"] = tPos_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["RotationY"] = tRotY_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["GenId"] = tGenId_NpcGroup[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["Pos"] = tPos_NpcGroup[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["RotationY"] = tRotY_NpcGroup[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RemainRandomNum"] = 1                
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = nGenId_Random_NpcGroupId_1
	
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2] = {} ----------------------随机事件2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MinRate"] = 3001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 6000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = tGenId_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["Pos"] = tPos_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["RotationY"] = tRotY_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = tGenId_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["Pos"] = tPos_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["RotationY"] = tRotY_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["GenId"] = tGenId_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["Pos"] = tPos_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["RotationY"] = tRotY_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["GenId"] = tGenId_NpcGroup[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["Pos"] = tPos_NpcGroup[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["RotationY"] = tRotY_NpcGroup[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RemainRandomNum"] = 1                
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = nGenId_Random_NpcGroupId_2	


rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3] = {} ----------------------随机事件3 （随机一个彩蛋宝箱）
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["FixGen"] = {tGenId_NpcGroup[1],tGenId_NpcGroup[2],tGenId_NpcGroup[3],tGenId_Random_TreasureBox[3]}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MinRate"] = 6001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = {1,2,3}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1] = {} ----------------------随机怪物生成宝箱1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 3500
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId_Monster[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGenId_TreasureBox[1]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2] = {} ----------------------随机怪物生成宝箱2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MinRate"] = 3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = tGenId_Monster[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = tGenId_TreasureBox[2]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3] = {} ----------------------随机不生成怪物宝箱
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3


rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1] = {} ----------------------
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["GenId"] = tGenId_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["Pos"] = tPos_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["RotationY"] = tRotY_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["GenId"] = tGenId_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["Pos"] = tPos_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["RotationY"] = tRotY_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["GenId"] = tGenId_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["Pos"] = tPos_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["RotationY"] = tRotY_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["GenId"] = tGenId_NpcGroup[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["Pos"] = tPos_NpcGroup[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["RotationY"] = tRotY_NpcGroup[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RemainRandomNum"] = 1                
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1]["GenId"] = nGenId_Random_NpcGroupId_1

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2] = {} ----------------------
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["GenId"] = tGenId_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["Pos"] = tPos_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["RotationY"] = tRotY_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["GenId"] = tGenId_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["Pos"] = tPos_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["RotationY"] = tRotY_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["GenId"] = tGenId_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["Pos"] = tPos_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["RotationY"] = tRotY_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["GenId"] = tGenId_NpcGroup[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["Pos"] = tPos_NpcGroup[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["RotationY"] = tRotY_NpcGroup[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RemainRandomNum"] = 1                
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"][1]["GenId"] = nGenId_Random_NpcGroupId_2

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3] = {} ----------------------
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["FixGen"] = {tGenId_NpcGroup[1],tGenId_NpcGroup[2],tGenId_NpcGroup[3],tGenId_Random_TreasureBox[3]}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["Value"] = 3


rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1] = {} --------------------------------随机怪物(对应宝箱)
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"][1]["GenId"] = tGenId_Monster[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"][2]["GenId"] = tGenId_TreasureBox[1]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2] = {} --------------------------------随机怪物（对应宝箱）
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"][1]["GenId"] = tGenId_Monster[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"][2]["GenId"] = tGenId_TreasureBox[2]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3] = {} --------------------------------随机怪物（对应宝箱）
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["Value"] = 3


--副本目标
--rwtTarget[nTarget1] = {}
--rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20004]
--rwtTarget[nTarget1]["KillMonsterGroup"] = nMonsterGroupId_1
--rwtTarget[nTarget1]["ReqCount"] = 1

rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20005]
rwtTarget[nTarget1]["ReqTreasureBox"] = nTreasureBoxId_1
rwtTarget[nTarget1]["ReqCount"] = 1


--采集物
rwtNpcGroup[nCollectId_1] = rwtNpcGroup[nCollectId_1] or {}  --经验球
rwtNpcGroup[nCollectId_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_1]["CollectTime"] = 1 
rwtNpcGroup[nCollectId_1]["Awards"] = {}  
rwtNpcGroup[nCollectId_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_1
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollectId_1
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

--宝箱
rwtNpcGroup[nTreasureBoxId_1] = rwtNpcGroup[nTreasureBoxId_1] or {}  --通关宝箱
rwtNpcGroup[nTreasureBoxId_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBoxId_1]["NotDel"] = 1
rwtNpcGroup[nTreasureBoxId_1]["Awards"] = {}
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["ChkGenEventNoExist"]	= tAwardGenId
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}	   --失败对白
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] =  tDialog_TransureBox
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialog_PassCopy
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["DynDelete"][1] = nGenId_TongGuanBox_1
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureBoxId_1
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_3  
rwtNpcGroup[nTreasureBoxId_1]["ChooseAwards"] = {}		  --强制打开通关宝箱奖励
rwtNpcGroup[nTreasureBoxId_1]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[nTreasureBoxId_1]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBoxId_1]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[nTreasureBoxId_1]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialog_PassCopy
rwtNpcGroup[nTreasureBoxId_1]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTreasureBoxId_1]["ChooseAwards"]["Events"][1]["DynDelete"][1] = nGenId_TongGuanBox_1
rwtNpcGroup[nTreasureBoxId_1]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureBoxId_1]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureBoxId_1]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureBoxId_1
rwtNpcGroup[nTreasureBoxId_1]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasureBoxId_1]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_3  

 
rwtNpcGroup[40221] = rwtNpcGroup[40221] or {}  --隐藏宝箱
rwtNpcGroup[40221]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40221]["Awards"] = {}
rwtNpcGroup[40221]["Awards"]["Events"] = {}
rwtNpcGroup[40221]["Awards"]["Events"][1] = {}
rwtNpcGroup[40221]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40221]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40221]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40221
rwtNpcGroup[40221]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40221]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_9 

rwtNpcGroup[40222] = rwtNpcGroup[40222] or {}  --隐藏宝箱
rwtNpcGroup[40222]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40222]["Awards"] = {}
rwtNpcGroup[40222]["Awards"]["Events"] = {}
rwtNpcGroup[40222]["Awards"]["Events"][1] = {}
rwtNpcGroup[40222]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40222]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40222]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40222
rwtNpcGroup[40222]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40222]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_10




--通关宝箱对白
for k,v in ipairs(tDialog_TransureBox) do
	rwtDialog[v] = rwtDialog[v] or {}
	rwtDialog[v]["OptionFunc1"] = function ()
		return false
	end
	rwtDialog[v]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
		LinkTreasureBoxOpenSucc(nTreasureBoxId_1,nGenId_TongGuanBox_1,1)
	end
end

 --彩蛋宝箱对白 
rwtNpcGroup[nRandom_TreasureBoxId] = rwtNpcGroup[nRandom_TreasureBoxId] or {}  --彩蛋宝箱
rwtNpcGroup[nRandom_TreasureBoxId]["InterfaceFunc"] = function (nGroupTypeId,nNpcTypeId,nGenEventId)
    local nRandom = math.random(1,#tDialog_Random_TransureBox)
    rwOpenNpcChatDialog(tDialog_Random_TransureBox[nRandom],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
end

--宝箱奖励
for k,v in ipairs(tDialog_Random_TransureBox) do
    rwtDialog[v] = rwtDialog[v] or {}
    rwtDialog[v]["DialogEndInit"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] =  nRewardId_8
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

end	


--固定npc
rwtNpcGroup[nNpcGroupId_1] = rwtNpcGroup[nNpcGroupId_1] or {}
rwtNpcGroup[nNpcGroupId_1]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNpcGroupId_1]["Awards"] = {}
rwtNpcGroup[nNpcGroupId_1]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroupId_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroupId_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroupId_1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_Npc
-- rwtNpcGroup[nNpcGroupId_1]["InterfaceFunc"]= function(nGroupTypeId,nNpcTypeId,nGenEventId)
-- 	local nIndex = math.random(1,#tDialog_Npc)
-- 	rwOpenNpcChatDialog(tDialog_Npc[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)

-- end


--固定npc奖励
for k,v in ipairs(tDialog_Npc) do
    rwtDialog[v] = rwtDialog[v] or {}
    rwtDialog[v]["DialogEndInit"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] =  nRewardId_2
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

end	

----随机事件1
rwtNpcGroup[nRandom_NpcGroupId_1] = rwtNpcGroup[nRandom_NpcGroupId_1] or {}
rwtNpcGroup[nRandom_NpcGroupId_1]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nRandom_NpcGroupId_1]["Awards"] = {}
rwtNpcGroup[nRandom_NpcGroupId_1]["Awards"]["Events"] = {}
rwtNpcGroup[nRandom_NpcGroupId_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nRandom_NpcGroupId_1]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {201}
rwtNpcGroup[nRandom_NpcGroupId_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nRandom_NpcGroupId_1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_WithWenLi
rwtNpcGroup[nRandom_NpcGroupId_1]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[nRandom_NpcGroupId_1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[nRandom_NpcGroupId_1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog_WithoutWenLi
-- rwtNpcGroup[nRandom_NpcGroupId_1]["InterfaceFunc"]= function(nGroupTypeId,nNpcTypeId,nGenEventId)
-- local tHeroTable = rwHeroGetAllInFight()
-- 	local nMask = 0
-- 	for i=1,#tHeroTable do
-- 		if tHeroTable[i] == 201 then
-- 			nMask = 1
-- 		end	
-- 	end
-- 	if nMask == 1 then 
-- 		local nIndex = math.random(1,#tDialog_WithWenLi)
-- 		rwOpenNpcChatDialog(tDialog_WithWenLi[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 	else
-- 		local nIndex = math.random(1,#tDialog_WithoutWenLi)
-- 		rwOpenNpcChatDialog(tDialog_WithoutWenLi[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 	end 	

-- end

--队伍中有温丽触发战斗
for k,v in ipairs(tDialog_WithWenLi) do 
    rwtDialog[v] = rwtDialog[v] or {}
    rwtDialog[v]["DialogEndInit"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynCreate"] = {nGenId_Random_MonsterGroup} 
    rwtDialog[v]["DialogEndInit"]["Events"][1]["AutoBattle"]= {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nGenId_Random_MonsterGroup
end


 --队伍中无温丽奖励
for k,v in ipairs(tDialog_WithoutWenLi) do
    rwtDialog[v] = rwtDialog[v] or {}
    rwtDialog[v]["DialogEndInit"] = {}                                                                                                   
    rwtDialog[v]["DialogEndInit"]["Events"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] =  nRewardId_4
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

--随机事件2
rwtNpcGroup[nRandom_NpcGroupId_2] = rwtNpcGroup[nRandom_NpcGroupId_2] or {}  
rwtNpcGroup[nRandom_NpcGroupId_2]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nRandom_NpcGroupId_2]["Awards"] = {}
rwtNpcGroup[nRandom_NpcGroupId_2]["Awards"]["Events"] = {}
rwtNpcGroup[nRandom_NpcGroupId_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nRandom_NpcGroupId_2]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {302}
rwtNpcGroup[nRandom_NpcGroupId_2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nRandom_NpcGroupId_2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_WithAiQi
rwtNpcGroup[nRandom_NpcGroupId_2]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[nRandom_NpcGroupId_2]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[nRandom_NpcGroupId_2]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog_WithoutAiQi
-- rwtNpcGroup[nRandom_NpcGroupId_2]["InterfaceFunc"]= function(nGroupTypeId,nNpcTypeId,nGenEventId)
-- local tHeroTable = rwHeroGetAllInFight()
-- 	local nMask = 0
-- 	for i=1,#tHeroTable do
-- 		if tHeroTable[i] == 302 then
-- 			nMask = 1
-- 		end	
-- 	end
-- 	if nMask == 1 then 
-- 		local nIndex = math.random(1,#tDialog_WithAiQi)
-- 		rwOpenNpcChatDialog(tDialog_WithAiQi[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 	else
-- 		local nIndex = math.random(1,#tDialog_WithoutAiQi)
-- 		rwOpenNpcChatDialog(tDialog_WithoutAiQi[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 	end 	

-- end

--对白奖励  无爱琪
for k,v in ipairs(tDialog_WithoutAiQi) do
    rwtDialog[v] = rwtDialog[v] or {}
    rwtDialog[v]["DialogEndInit"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] =  nRewardId_6
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end


--对白奖励  有爱琪
for k,v in ipairs(tDialog_WithAiQi) do 
    rwtDialog[v] = rwtDialog[v] or {}
    rwtDialog[v]["DialogEndInit"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_7
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

--function CopyMap_Daily_Experience_Easy_MonsterGroup_BattleWin() 
----随机战斗对白
--    local nRandom = math.random(1,#tDialog_Aft_FixedMon)
--    rwOpenNpcChatDialog(tDialog_Aft_FixedMon[nRandom])

--end
--rwtMonsterGroup_Func[nMonsterGroupId_1] = rwtMonsterGroup_Func[nMonsterGroupId_1] or {}
--table.insert(rwtMonsterGroup_Func[nMonsterGroupId_1],CopyMap_Daily_Experience_Easy_MonsterGroup_BattleWin)		

function CopyMap_Daily_Experienc_Easy_Random_MonsterGroup_BattleWin()
    if rwHasGenEvent(nGenId_Random_NpcGroupId_1) then
		rwDelGenEvent(nGenId_Random_NpcGroupId_1)
	end	
end
rwtMonsterGroup_Func[nRandom_MonsterGroup] = rwtMonsterGroup_Func[nRandom_MonsterGroup] or {}
table.insert(rwtMonsterGroup_Func[nRandom_MonsterGroup],CopyMap_Daily_Experienc_Easy_Random_MonsterGroup_BattleWin)	






					