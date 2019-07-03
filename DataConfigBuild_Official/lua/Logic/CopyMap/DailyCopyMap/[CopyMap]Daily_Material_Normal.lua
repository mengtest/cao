--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--材料副本（普通）
--By:mzy
--CreatDate:2018.07.16


--endregion

--**************************************数据定义***************************
--genid分配
--NPC组：3068001-3068100
--怪物组：3068101-3068200
--机关：3068201-3068300


--副本id
local nCopyMapId = 3068

--副本目标
local nTarget_1 = 60111     --残酷的剥削者
local nTarget_2 = 60112     --寻找宝藏

--副本随机掩码
local  nCopyRandomTemp = 1126

------------------对白id-------------
--进入副本对白
local tDialogId_EnterMap = {5376,5377,5378,5379,5380}

--local nDialogId_2 = {5381,6104,6105,6106,6107}       --矮巨人指挥官战前对白 
--local tDialogId_3 = {6073,6074,6075,6076,6077}       --矮巨人指挥官战后对白
local tDialogId_4 = {6078,6079,6080,6081,6082}       --矿工对白
local tDialogId_5 = {6083,6084,6085,6086,6087}       --通关宝箱开启前对白（还存在未获得的奖励）
local tDialogId_6 = {6088,6089,6090,6091,6092,6114,6115}       --通关对白
 

local tDialogId_9 = {6103}         --怪物宝箱开启前对白 ,6104,6105,6106,6107

local tDialogId_8 = {6093,6094,6095,6096,6097}         --宝箱怪战后对白

local tDialogId_12 = {6098,6099,6100}         --上锁的宝箱开启前对白(有爱琳娜)
local tDialogId_13 = {6101,6102,6116}         --上锁的宝箱开启前对白(没有爱琳娜)


local tDialogId_10 = {6108,6109,6110}         --玩法3有檐鬼

local tDialogId_11 = {6111,6112,6113}         --玩法3无檐鬼


----------副本内所有需要获取的奖励gen集合--------
local tAwardGenId = {}

-----------------怪物组---------------
local tMonsterGroup = {}
local tMonsterGroupGen = {}

--宝箱怪
tMonsterGroup.MonsterGroup1 = 200339
tMonsterGroupGen.MonsterGroup1 = 3068102
table.insert(tAwardGenId,tMonsterGroupGen.MonsterGroup1)

--稀有怪1
tMonsterGroup.MonsterGroup2 = 200322
tMonsterGroupGen.MonsterGroup2 = 3068101
table.insert(tAwardGenId,tMonsterGroupGen.MonsterGroup2)

--稀有怪2
tMonsterGroup.MonsterGroup3 = 200490
tMonsterGroupGen.MonsterGroup3 = 3068103
table.insert(tAwardGenId,tMonsterGroupGen.MonsterGroup3)


----------------怪物---------------------
local tMonsterId = {}

--宝箱怪
tMonsterId.Monster1 = 1000494
--稀有怪1
tMonsterId.Monster1 = 1000373
--稀有怪2
tMonsterId.Monster1 = 1000815




-------------singleNpc
--矿工
local nSingleNpc_KuangGong = 20405
local nSingleNpc_KuangGong_GenId_1 = 3068001
table.insert(tAwardGenId,nSingleNpc_KuangGong_GenId_1)
local nSingleNpc_KuangGong_GenId_2 = 3068002
table.insert(tAwardGenId,nSingleNpc_KuangGong_GenId_2)
local nSingleNpc_KuangGong_GenId_3 = 3068003
table.insert(tAwardGenId,nSingleNpc_KuangGong_GenId_3)
local nSingleNpc_KuangGong_GenId_4 = 3068004
table.insert(tAwardGenId,nSingleNpc_KuangGong_GenId_4)

--玩法3NPC
local nSingleNpc_Game3 = 20476
local nSingleNpc_Game3_GenId = 3068007
table.insert(tAwardGenId,nSingleNpc_Game3_GenId)
-----------npcid
----矿工
--local nNpc_KuangGong = 3375
--采矿监工
--local nNpc_JianGong = 3486
-----------------npcGroup---------------
-----------宝箱
local tBox = {}
local tBoxGen = {}
--通关宝箱
tBox.PassCopy = 40129
tBoxGen.PassCopy = 3068005
--隐藏宝箱
tBox.Hide = 40130
tBoxGen.Hide = {3068006,3068012,3068013,3068014}
for k,v in pairs(tBoxGen.Hide) do
    table.insert(tAwardGenId,v)
end

--上锁的宝箱
tBox.Lock = 40131
tBoxGen.Lock = 3068008
table.insert(tAwardGenId,tBoxGen.Lock)

--怪物宝箱
tBox.Monster = 40132
tBoxGen.Monster = 3068009
table.insert(tAwardGenId,tBoxGen.Monster)

--黯月宝箱	
tBox.AnYue = 40241
tBoxGen.AnYue = 3068010
table.insert(tAwardGenId,tBoxGen.AnYue)

--辉日宝箱	
tBox.HuiRi = 40242
tBoxGen.HuiRi = 3068011
table.insert(tAwardGenId,tBoxGen.HuiRi)


-------------采集物
--银母矿
local nCollect_1 = 60176
local nCollect_GenId_1 = 3068015
table.insert(tAwardGenId,nCollect_GenId_1)

local nCollect_2 = 60177
local nCollect_GenId_2 = 3068016
table.insert(tAwardGenId,nCollect_GenId_2)

local nCollect_3 = 60178
local nCollect_GenId_3 = 3068017
table.insert(tAwardGenId,nCollect_GenId_3)

-----------------机关---------------
--空气墙
local nValve_1 = 1053
local nValve_GenId = 3068201

-------------------奖励id----------------
local tAwardId = {}
--通关宝箱
tAwardId.PassCopyBox = 1000191
--隐藏宝箱
tAwardId.HideBox = 1000192
--采集物1
tAwardId.Collect = 1000195

--黯月宝箱	
tAwardId.AnYueBox = 1000452
--辉日宝箱	
tAwardId.HuiRiBox = 1000453


--**************************
--npc矿工对话奖励
local nAwardId_NpcDialog = 1000193

--上锁的宝箱
local nAwardId_HavaHero = 1000194     --有相应英雄
local nAwardId_NoHero = 1000335       --没有相应英雄

--玩法3
local nAwardId_Game3_HasHero = 1000336     --有相应英雄
local nAwardId_Game3_NoHero = 1000337       --没有相应英雄


----宝箱怪奖励
--local nAwardId_BoxMonsterDrop = 1000196

-----------------------------其他数据------------------------
--随机玩法坐标
local tPos_Random = {}
tPos_Random[1] = {pos = "12.18,1.72,17.81",rotY = 100}
tPos_Random[2] = {pos = "23.99,0.10,22.84",rotY = 180}
tPos_Random[3] = {pos = "32.03,0.46,17.90",rotY = 200}
tPos_Random[4] = {pos = "15.07,0.16,5.22",rotY = 20}

--**************************************逻辑***************************
--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_PetExp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10044]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 2

--副本目标
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_2}
--rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget_2}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}


--通关更新掩码
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["DataIndex"] = CONST_TEMP_DATA.Data2

--副本初始化
--进入副本随机对白
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogId_EnterMap


----随机事件
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}

--data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = {1,2,3}

--掩码为0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MinRate"] =  0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MaxRate"] =  4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = tBoxGen.Hide[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["Pos"] = tPos_Random[1].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["RotationY"] = tPos_Random[1].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = tBoxGen.Hide[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["Pos"] = tPos_Random[2].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["RotationY"] = tPos_Random[2].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["GenId"] = tBoxGen.Hide[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["Pos"] = tPos_Random[3].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["RotationY"] = tPos_Random[3].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["GenId"] = tBoxGen.Hide[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["Pos"] = tPos_Random[4].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["RotationY"] = tPos_Random[4].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tBoxGen.Monster	

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MinRate"] =  4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MaxRate"] =  7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = tBoxGen.Hide[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["Pos"] = tPos_Random[1].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["RotationY"] = tPos_Random[1].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = tBoxGen.Hide[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["Pos"] = tPos_Random[2].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["RotationY"] = tPos_Random[2].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["GenId"] = tBoxGen.Hide[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["Pos"] = tPos_Random[3].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["RotationY"] = tPos_Random[3].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["GenId"] = tBoxGen.Hide[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["Pos"] = tPos_Random[4].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["RotationY"] = tPos_Random[4].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = tBoxGen.Lock	

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MinRate"] =  7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MaxRate"] =  10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["GenId"] = tBoxGen.Hide[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["Pos"] = tPos_Random[1].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["RotationY"] = tPos_Random[1].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["GenId"] = tBoxGen.Hide[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["Pos"] = tPos_Random[2].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["RotationY"] = tPos_Random[2].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["GenId"] = tBoxGen.Hide[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["Pos"] = tPos_Random[3].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["RotationY"] = tPos_Random[3].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["GenId"] = tBoxGen.Hide[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["Pos"] = tPos_Random[4].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["RotationY"] = tPos_Random[4].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tOtherGenId"][1]["GenId"] = nSingleNpc_Game3_GenId	

--事件1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["GenId"] = tBoxGen.Hide[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["Pos"] = tPos_Random[1].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["RotationY"] = tPos_Random[1].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["GenId"] = tBoxGen.Hide[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["Pos"] = tPos_Random[2].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["RotationY"] = tPos_Random[2].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["GenId"] = tBoxGen.Hide[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["Pos"] = tPos_Random[3].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["RotationY"] = tPos_Random[3].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["GenId"] = tBoxGen.Hide[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["Pos"] = tPos_Random[4].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["RotationY"] = tPos_Random[4].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1]["GenId"] = tBoxGen.Monster	

--事件2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["GenId"] = tBoxGen.Hide[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["Pos"] = tPos_Random[1].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["RotationY"] = tPos_Random[1].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["GenId"] = tBoxGen.Hide[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["Pos"] = tPos_Random[2].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["RotationY"] = tPos_Random[2].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["GenId"] = tBoxGen.Hide[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["Pos"] = tPos_Random[3].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["RotationY"] = tPos_Random[3].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["GenId"] = tBoxGen.Hide[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["Pos"] = tPos_Random[4].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["RotationY"] = tPos_Random[4].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"][1]["GenId"] = tBoxGen.Lock	
--事件3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["GenId"] = tBoxGen.Hide[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["Pos"] = tPos_Random[1].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["RotationY"] = tPos_Random[1].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["GenId"] = tBoxGen.Hide[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["Pos"] = tPos_Random[2].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["RotationY"] = tPos_Random[2].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["GenId"] = tBoxGen.Hide[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["Pos"] = tPos_Random[3].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["RotationY"] = tPos_Random[3].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["GenId"] = tBoxGen.Hide[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["Pos"] = tPos_Random[4].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["RotationY"] = tPos_Random[4].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tOtherGenId"][1]["GenId"] = nSingleNpc_Game3_GenId	


--data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = {1,2,3}

--掩码为0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MinRate"] =  0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MaxRate"] =  3500
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["FixGen"] = {tBoxGen.AnYue,tMonsterGroupGen.MonsterGroup2}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MinRate"] =  3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MaxRate"] =  5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["FixGen"] = {tBoxGen.HuiRi,tMonsterGroupGen.MonsterGroup3}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MinRate"] =  5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MaxRate"] =  10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2

--事件4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["FixGen"] = {tBoxGen.AnYue,tMonsterGroupGen.MonsterGroup2}
--事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["FixGen"] = {tBoxGen.HuiRi,tMonsterGroupGen.MonsterGroup3}

-------副本目标
--rwtTarget[nTarget_1] = {}
--rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20015]
--rwtTarget[nTarget_1]["KillMonsterGroup"] = tMonsterGroup.MonsterGroup2
--rwtTarget[nTarget_1]["ReqCount"] = 1

rwtTarget[nTarget_2] = {}
rwtTarget[nTarget_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20016]
rwtTarget[nTarget_2]["ReqTreasureBox"] = tBox.PassCopy
rwtTarget[nTarget_2]["ReqCount"] = 1

--宝箱
--通关宝箱

rwtNpcGroup[tBox.PassCopy] = rwtNpcGroup[tBox.PassCopy] or {}  --通关宝箱
rwtNpcGroup[tBox.PassCopy]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.PassCopy]["NotDel"] = 1
rwtNpcGroup[tBox.PassCopy]["Awards"] = {}
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["ChkGenEventNoExist"]	= tAwardGenId
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}	   --失败对白
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] =  tDialogId_5
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialogId_6
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["DynDelete"][1] = tBoxGen.PassCopy
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.PassCopy
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.PassCopyBox  
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"] = {}		  --强制打开通关宝箱奖励
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialogId_6
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["DynDelete"][1] = tBoxGen.PassCopy
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.PassCopy
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.PassCopyBox    

--隐藏宝箱
rwtNpcGroup[tBox.Hide] = rwtNpcGroup[tBox.Hide] or {} 
rwtNpcGroup[tBox.Hide]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Hide]["Awards"] = {}
rwtNpcGroup[tBox.Hide]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Hide]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Hide]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Hide]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Hide]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Hide
rwtNpcGroup[tBox.Hide]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Hide]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.HideBox 

--怪物宝箱
rwtNpcGroup[tBox.Monster] = rwtNpcGroup[tBox.Monster] or {} 
rwtNpcGroup[tBox.Monster]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Monster]["NotDel"] = 1
rwtNpcGroup[tBox.Monster]["Awards"] = {}
rwtNpcGroup[tBox.Monster]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Monster]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Monster]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[tBox.Monster]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] =  tDialogId_9[1]


--怪物宝箱开启前对白
-- for i = 1,#tDialogId_9 do
rwtDialog[tDialogId_9[1]] = rwtDialog[tDialogId_9[i]] or {}
rwtDialog[tDialogId_9[1]]["DialogEndInit"] = {}
rwtDialog[tDialogId_9[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId_9[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId_9[1]]["DialogEndInit"]["Events"][1]["DynCreate"] = {tMonsterGroupGen.MonsterGroup1} 
rwtDialog[tDialogId_9[1]]["DialogEndInit"]["Events"][1]["AutoBattle"]= {}
rwtDialog[tDialogId_9[1]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGen.MonsterGroup1
-- end





--上锁的宝箱
rwtNpcGroup[tBox.Lock] = rwtNpcGroup[tBox.Lock] or {} 
rwtNpcGroup[tBox.Lock]["InterfaceFunc"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    local tHeroTable = rwHeroGetAllInFight()
    local bHasHero = false
    for i = 1,#tHeroTable do
--    for _,nHeroId in pairs(tHeroTable) do
       if tHeroTable[i] == 301 then
            bHasHero = true
            break
       end
    end
    
    local tDialogs = bHasHero and tDialogId_12 or tDialogId_13
    local nIndex = math.random(1,#tDialogs)
	rwOpenNpcChatDialog(tDialogs[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)

end

--有爱琳娜对白
for i = 1,#tDialogId_12 do
    rwtDialog[tDialogId_12[i]] = rwtDialog[tDialogId_12[i]] or {}
    rwtDialog[tDialogId_12[i]]["DialogEndInit"] = {}
    rwtDialog[tDialogId_12[i]]["DialogEndInit"]["Events"] = {}
    rwtDialog[tDialogId_12[i]]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[tDialogId_12[i]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[tDialogId_12[i]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[tDialogId_12[i]]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[tDialogId_12[i]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[tDialogId_12[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
    rwtDialog[tDialogId_12[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Lock
    rwtDialog[tDialogId_12[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[tDialogId_12[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_HavaHero 
end

--无爱琳娜对白
for i = 1,#tDialogId_13 do
    rwtDialog[tDialogId_13[i]] = rwtDialog[tDialogId_13[i]] or {}
    rwtDialog[tDialogId_13[i]]["DialogEndInit"] = {}
    rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"] = {}
    rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
    rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Lock
    rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_NoHero
	rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"][2] = {}
    rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"][2]["OpenDialog"] = {}
    rwtDialog[tDialogId_13[i]]["DialogEndInit"]["Events"][2]["OpenDialog"]["DialogId"] = 6181
end

--黯月宝箱	
rwtNpcGroup[tBox.AnYue] = rwtNpcGroup[tBox.AnYue] or {} 
rwtNpcGroup[tBox.AnYue]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.AnYue]["Awards"] = {}
rwtNpcGroup[tBox.AnYue]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.AnYue]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.AnYue]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.AnYue]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.AnYue]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.AnYue
rwtNpcGroup[tBox.AnYue]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.AnYue]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.AnYueBox

--辉日宝箱	
rwtNpcGroup[tBox.HuiRi] = rwtNpcGroup[tBox.HuiRi] or {} 
rwtNpcGroup[tBox.HuiRi]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.HuiRi]["Awards"] = {}
rwtNpcGroup[tBox.HuiRi]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.HuiRi]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.HuiRi]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.HuiRi]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.HuiRi]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.HuiRi
rwtNpcGroup[tBox.HuiRi]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.HuiRi]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.HuiRiBox


--采集物1
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}    
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["CollectTime"] = 1
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Collect
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_1
--采集物2
rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}    
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_2]["CollectTime"] = 1
rwtNpcGroup[nCollect_2]["Awards"] = {}  
rwtNpcGroup[nCollect_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Collect
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_2
--采集物3
rwtNpcGroup[nCollect_3] = rwtNpcGroup[nCollect_3] or {}    
rwtNpcGroup[nCollect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_3]["CollectTime"] = 1
rwtNpcGroup[nCollect_3]["Awards"] = {}  
rwtNpcGroup[nCollect_3]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Collect
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_3
--npc
--NPC 普通矿工
rwtNpcGroup[nSingleNpc_KuangGong] = {}     
rwtNpcGroup[nSingleNpc_KuangGong]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nSingleNpc_KuangGong]["Awards"] = {}
rwtNpcGroup[nSingleNpc_KuangGong]["Awards"]["Events"] = {}
rwtNpcGroup[nSingleNpc_KuangGong]["Awards"]["Events"][1] = {}
rwtNpcGroup[nSingleNpc_KuangGong]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nSingleNpc_KuangGong]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogId_4


for i = 1,#tDialogId_4 do
    rwtDialog[tDialogId_4[i]] = rwtDialog[tDialogId_4[i]] or {}
    rwtDialog[tDialogId_4[i]]["DialogEndInit"] = {}
    rwtDialog[tDialogId_4[i]]["DialogEndInit"]["Events"] = {}
    rwtDialog[tDialogId_4[i]]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[tDialogId_4[i]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[tDialogId_4[i]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[tDialogId_4[i]]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[tDialogId_4[i]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[tDialogId_4[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[tDialogId_4[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_NpcDialog
    rwtDialog[tDialogId_4[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
    rwtDialog[tDialogId_4[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = nSingleNpc_KuangGong
end

--NPC 玩法3矿工
rwtNpcGroup[nSingleNpc_Game3] = {}     
rwtNpcGroup[nSingleNpc_Game3]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nSingleNpc_Game3]["Awards"] = {}
rwtNpcGroup[nSingleNpc_Game3]["Awards"]["Events"] = {}
rwtNpcGroup[nSingleNpc_Game3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nSingleNpc_Game3]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {106}
rwtNpcGroup[nSingleNpc_Game3]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nSingleNpc_Game3]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogId_10
rwtNpcGroup[nSingleNpc_Game3]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[nSingleNpc_Game3]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[nSingleNpc_Game3]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialogId_11


for i = 1,#tDialogId_10 do
    rwtDialog[tDialogId_10[i]] = rwtDialog[tDialogId_10[i]] or {}
    rwtDialog[tDialogId_10[i]]["DialogEndInit"] = {}
    rwtDialog[tDialogId_10[i]]["DialogEndInit"]["Events"] = {}
    rwtDialog[tDialogId_10[i]]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[tDialogId_10[i]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[tDialogId_10[i]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[tDialogId_10[i]]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[tDialogId_10[i]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[tDialogId_10[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[tDialogId_10[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Game3_HasHero
    rwtDialog[tDialogId_10[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
    rwtDialog[tDialogId_10[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = nSingleNpc_Game3
end
for i = 1,#tDialogId_11 do
    rwtDialog[tDialogId_11[i]] = rwtDialog[tDialogId_11[i]] or {}
    rwtDialog[tDialogId_11[i]]["DialogEndInit"] = {}
    rwtDialog[tDialogId_11[i]]["DialogEndInit"]["Events"] = {}
    rwtDialog[tDialogId_11[i]]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[tDialogId_11[i]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[tDialogId_11[i]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[tDialogId_11[i]]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[tDialogId_11[i]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[tDialogId_11[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[tDialogId_11[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Game3_NoHero
    rwtDialog[tDialogId_11[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
    rwtDialog[tDialogId_11[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = nSingleNpc_Game3
end

for i = 1,#tDialogId_5 do
    --通关宝箱开启前对白
    rwtDialog[tDialogId_5[i]] = rwtDialog[tDialogId_5[i]] or {}
    rwtDialog[tDialogId_5[i]]["OptionFunc1"] = function ()
	    return false
    end

    rwtDialog[tDialogId_5[i]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	    LinkTreasureBoxOpenSucc(tBox.PassCopy,tBoxGen.PassCopy,1)
        return true
    end
end


--**************************************函数***************************

--------------怪物-----------------

--宝箱怪
function CopyMap_Daily_Material_Normal_MonsterGroup2_BeKill()
    --宝箱怪死亡后删除怪物宝箱
    rwDelGenEvent(tBoxGen.Monster)
    local nRandom = math.random(1,#tDialogId_8)
    rwOpenNpcChatDialog(tDialogId_8[nRandom])
end
rwtMonsterGroup_Func[tMonsterGroup.MonsterGroup1] = rwtMonsterGroup_Func[tMonsterGroup.MonsterGroup1] or {}
table.insert(rwtMonsterGroup_Func[tMonsterGroup.MonsterGroup1],CopyMap_Daily_Material_Normal_MonsterGroup2_BeKill)
