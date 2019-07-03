--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--经验副本（地狱）
--by:mzy
--date:2019/03/12

--endregion

--**************************************数据定义***************************
--genid分配
--NPC组：3088001-3088000
--怪物组：3088001-3088200
--机关：3088201-3088300


--副本id
local nCopyMapId = 3088

--副本目标
local tTarget = {}
--tTarget.Target1 = 60176     --击败扬博士
tTarget.Target2 = 60177     --寻找宝藏

--副本随机掩码
local  nCopyRandomTemp = 1174
--进入地图创建的事件
local tLoadGenId = {}
--副本内需要全部开启的事件集合
local tAwardGenId = {}
------------------对白id-------------
local tDialog = {}

--进入副本对白
tDialog.EnterMap = {6575,6576,6577,6578,6579}

--J博士战前对白
--tDialog.Dialog1 = 6580
----战后对白
--tDialog.Dialog2 = 6581
--通关宝箱对白
tDialog.Dialog3 = {6586,6587,6588,6589,6590}
--通关对白
tDialog.Dialog4 = {6591,6592,6593,6594,6595,6582,6583}
--变异生物NPC对白
tDialog.Dialog5 = {6596,6597,6598,6599,6600}
--怪物宝箱战前对白
tDialog.Dialog6 = 6601
--怪物宝箱战后对白
tDialog.Dialog7 = {6602,6603,6604,6605,6606}
--默希娅战前对白
tDialog.Dialog8 = {6607,6663,6664,6665,6666}
--采集培养皿对白
tDialog.Dialog9 = {6608,6609,6610,6611,6612}


------------------NPC组-------------
--宝箱--
local tBox = {}
local tBoxGen = {}

--通关宝箱
tBox.Pass = 40209
tBoxGen.Pass = 3088001
table.insert(tLoadGenId,tBoxGen.Pass)

--普通宝箱
tBox.Normal = 40210
tBoxGen.Normal = {3088002,3088003,3088004,3088005}
for k,v in pairs(tBoxGen.Normal) do
    table.insert(tAwardGenId,v)
end

--怪物宝箱
tBox.Monster = 40211
tBoxGen.Monster = 3088006
table.insert(tAwardGenId,tBoxGen.Monster)

--黯月宝箱	
tBox.AnYue = 40243
tBoxGen.AnYue = 3088014
table.insert(tAwardGenId,tBoxGen.AnYue)

--辉日宝箱	
tBox.HuiRi = 40244
tBoxGen.HuiRi = 3088015
table.insert(tAwardGenId,tBoxGen.HuiRi)

--采集物--
local tCollect = {}
local tCollectGen = {}

--变异生物
tCollect.Collect1 = 60350
tCollectGen.Collect1 = {3088007,3088008,3088009}
for k,v in pairs(tCollectGen.Collect1) do
    table.insert(tAwardGenId,v)
end

--NPC--
local tSingleNpc = {}
local tSingleNpcGen = {}

--变异生物
tSingleNpc.Npc1 = 20610
tSingleNpcGen.Npc1 = {3088010,3088011,3088012,3088013}
for k,v in pairs(tSingleNpcGen.Npc1) do
    table.insert(tAwardGenId,v)
end

--默希娅
tSingleNpc.Npc2 = 20672
tSingleNpcGen.Npc2 = 3088016
table.insert(tAwardGenId,tSingleNpcGen.Npc2)

------------------MonsterGroup-------------
local tMonsterGroup = {}
local tMonsterGroupGen = {}

----J博士
--tMonsterGroup.Monster1 = 200453
--tMonsterGroupGen.Monster1 = 3088101
--宝箱怪
tMonsterGroup.Monster2 = 200454
tMonsterGroupGen.Monster2 = 3088102
--默希娅
tMonsterGroup.Monster3 = 200455
tMonsterGroupGen.Monster3 = 3088103
--海魔
tMonsterGroup.Monster4 = 200456
tMonsterGroupGen.Monster4 = 3088104
for k,v in pairs(tMonsterGroupGen) do
    table.insert(tAwardGenId,v)
end

--稀有怪1
tMonsterGroup.Monster1 = 200453
tMonsterGroupGen.Monster1 = 3088101
table.insert(tAwardGenId,tMonsterGroupGen.Monster1)

--稀有怪2
tMonsterGroup.Monster5 = 200494
tMonsterGroupGen.Monster5 = 3088105
table.insert(tAwardGenId,tMonsterGroupGen.MonsterGroup3)

------------------monster-------------
local tMonster = {}

----J博士
--tMonster.Monster1 = 1000756
--宝箱怪
tMonster.Monster2 = 1000757
--默希娅
tMonster.Monster3 = 1000758
--海魔
tMonster.Monster4 = 1000759 

--稀有怪1
tMonster.Monster1 = 1000756
--稀有怪2
tMonster.Monster5 = 1000816

------------------valve-------------
--封门机关
local nValve = 1085
local nValve_GenId = 3088201
------------------奖励id-------------
local tAwardId = {}

--通关宝箱奖励
tAwardId.Award1 = 1000416
--普通宝箱奖励
tAwardId.Award2 = 1000417
--宝箱怪奖励
tAwardId.Award3 = 1000418
--采集怪奖励
tAwardId.Award4 = 1000419
--NPC奖励
tAwardId.Award5 = 1000420
--默希娅奖励
tAwardId.Award6 = 1000421
--黯月宝箱
tAwardId.Award7 = 1000454
--辉日宝箱
tAwardId.Award8 = 1000455
--**************************************逻辑***************************
--副本--
rwtCopyMapMission[nCopyMapId] = {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Exp
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

--副本目标
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
--rwtCopyMapMission[nCopyMapId]["Target1"] = {tTarget.Target1}
rwtCopyMapMission[nCopyMapId]["Target1"] = {tTarget.Target2}
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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog.EnterMap
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadGenId

--副本初始化 随机事件
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["ChkUserTempData"][1]["Record"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["MaxRate"] = 4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][1]["GenId"] = tBoxGen.Normal[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][1]["Pos"] = "77.85,-9.2,27.72"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 10
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][2]["GenId"] = tBoxGen.Normal[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][2]["Pos"] = "91.50,-8.05,20.07"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][3]["GenId"] = tBoxGen.Normal[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][3]["Pos"] = "82.02,-8,44.74"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][4]["GenId"] = tBoxGen.Normal[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][4]["Pos"] = "88.267,-8,45.94"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tBoxGen.Monster	

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["FixGen"] = tMonsterGroupGen.Monster3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][1]["GenId"] = tSingleNpcGen.Npc1[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][1]["Pos"] = "90.19,-9.19,24.25"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][1]["RotationY"] = -30
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][2]["GenId"] = tSingleNpcGen.Npc1[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][2]["Pos"] = "85.95,-9.08,29.57"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][2]["RotationY"] = 170
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][3]["GenId"] = tSingleNpcGen.Npc1[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][3]["Pos"] = "81.42,-8.05,20"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][3]["RotationY"] = 100
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][4]["GenId"] = tSingleNpcGen.Npc1[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][4]["Pos"] = "93.76758,-9.189997,34.44761"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tGenId"][4]["RotationY"] = -90
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = tSingleNpcGen.Npc2

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["tGenId"][1]["GenId"] = tCollectGen.Collect1[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["tGenId"][2]["GenId"] = tCollectGen.Collect1[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["tGenId"][3]["GenId"] = tCollectGen.Collect1[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][3]["RandomNum"] = 1

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["tGenId"][1]["GenId"] = tBoxGen.Normal[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["tGenId"][2]["GenId"] = tBoxGen.Normal[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["tGenId"][3]["GenId"] = tBoxGen.Normal[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["tGenId"][4]["GenId"] = tBoxGen.Normal[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][5]["RandomNum"] = 3

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["tGenId"][1]["GenId"] = tBoxGen.Normal[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["tGenId"][2]["GenId"] = tBoxGen.Normal[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["tGenId"][3]["GenId"] = tBoxGen.Normal[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["tGenId"][4]["GenId"] = tBoxGen.Normal[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][6]["RandomNum"] = 3

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["tGenId"][1]["GenId"] = tSingleNpcGen.Npc1[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["tGenId"][2]["GenId"] = tSingleNpcGen.Npc1[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["tGenId"][3]["GenId"] = tSingleNpcGen.Npc1[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["tGenId"][4]["GenId"] = tSingleNpcGen.Npc1[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][7]["RandomNum"] = 3

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["MaxRate"] = 4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["tGenId"][1]["GenId"] = tSingleNpcGen.Npc1[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["tGenId"][2]["GenId"] = tSingleNpcGen.Npc1[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["tGenId"][3]["GenId"] = tSingleNpcGen.Npc1[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["tGenId"][4]["GenId"] = tSingleNpcGen.Npc1[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][0]["RandomCreare"][8]["RandomNum"] = 3




--随机事件1,随机怪物宝箱
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tBoxGen.Normal[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "77.85,-9.2,27.72"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 10
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tBoxGen.Normal[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "91.50,-8.05,20.07"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = tBoxGen.Normal[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = "82.02,-8,44.74"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["GenId"] = tBoxGen.Normal[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["Pos"] = "88.267,-8,45.94"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tBoxGen.Monster	

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["GenId"] = tSingleNpcGen.Npc1[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["GenId"] = tSingleNpcGen.Npc1[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["GenId"] = tSingleNpcGen.Npc1[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["GenId"] = tSingleNpcGen.Npc1[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomNum"] = 3

--随机事件2,随机怪物
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["FixGen"] = tMonsterGroupGen.Monster3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tSingleNpcGen.Npc1[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["Pos"] = "90.19,-9.19,24.25"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["RotationY"] = -30
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2]["GenId"] = tSingleNpcGen.Npc1[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2]["Pos"] = "85.95,-9.08,29.57"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 170
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3]["GenId"] = tSingleNpcGen.Npc1[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3]["Pos"] = "81.42,-8.05,20"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 100
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][4]["GenId"] = tSingleNpcGen.Npc1[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][4]["Pos"] = "93.76758,-9.189997,34.44761"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][4]["RotationY"] = -90
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tSingleNpcGen.Npc2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][1]["GenId"] = tBoxGen.Normal[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][2]["GenId"] = tBoxGen.Normal[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][3]["GenId"] = tBoxGen.Normal[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][4]["GenId"] = tBoxGen.Normal[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["RandomNum"] = 3


--随机事件3,随机采集物
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Record"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCollectGen.Collect1[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCollectGen.Collect1[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][3]["GenId"] = tCollectGen.Collect1[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][1]["GenId"] = tBoxGen.Normal[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][2]["GenId"] = tBoxGen.Normal[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][3]["GenId"] = tBoxGen.Normal[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][4]["GenId"] = tBoxGen.Normal[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["RandomNum"] = 3

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][1]["GenId"] = tSingleNpcGen.Npc1[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][2]["GenId"] = tSingleNpcGen.Npc1[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][3]["GenId"] = tSingleNpcGen.Npc1[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][4]["GenId"] = tSingleNpcGen.Npc1[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["RandomNum"] = 3

--随机生成怪物
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["Record"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["FixGen"] = {tMonsterGroupGen.Monster1,tBoxGen.AnYue}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["Record"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["FixGen"] = {tMonsterGroupGen.Monster5,tBoxGen.HuiRi}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["Record"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["MaxRate"] = 3500
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["FixGen"] = {tMonsterGroupGen.Monster1,tBoxGen.AnYue}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][2]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][2]["MinRate"] = 3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][2]["MaxRate"] = 5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][2]["FixGen"] = {tMonsterGroupGen.Monster5,tBoxGen.HuiRi}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][3]["TempDataID"] = nCopyRandomTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][3]["MaxRate"] = 10000


----固定刷新
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1]["GenId"] = tSingleNpcGen.Npc1[1]
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2]["GenId"] = tSingleNpcGen.Npc1[2]
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3]["GenId"] = tSingleNpcGen.Npc1[3]
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4]["GenId"] = tSingleNpcGen.Npc1[4]
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomNum"] = 3

-------副本目标-------
--rwtTarget[tTarget.Target1] = {}
--rwtTarget[tTarget.Target1]["Title"] = tLuaText[LANGUAGE_CONFIG][21587]
--rwtTarget[tTarget.Target1]["KillMonsterGroup"] = tMonsterGroup.Monster1
--rwtTarget[tTarget.Target1]["ReqCount"] = 1

rwtTarget[tTarget.Target2] = {}
rwtTarget[tTarget.Target2]["Title"] = tLuaText[LANGUAGE_CONFIG][21587]
rwtTarget[tTarget.Target2]["ReqTreasureBox"] = tBox.Pass
rwtTarget[tTarget.Target2]["ReqCount"] = 1


--宝箱--
--通关宝箱--
rwtNpcGroup[tBox.Pass] = rwtNpcGroup[tBox.Pass] or {}  --通关宝箱
rwtNpcGroup[tBox.Pass]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Pass]["NotDel"] = 1
rwtNpcGroup[tBox.Pass]["Awards"] = {}
rwtNpcGroup[tBox.Pass]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["ChkGenEventNoExist"]	= tAwardGenId
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}	   --失败对白
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] =  tDialog.Dialog3
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialog.Dialog4
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["DynDelete"][1] = tBoxGen.Pass
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Pass
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Pass]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award1  
rwtNpcGroup[tBox.Pass]["ChooseAwards"] = {}		  --强制打开通关宝箱奖励
rwtNpcGroup[tBox.Pass]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[tBox.Pass]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[tBox.Pass]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[tBox.Pass]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialog.Dialog4
rwtNpcGroup[tBox.Pass]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[tBox.Pass]["ChooseAwards"]["Events"][1]["DynDelete"][1] = tBoxGen.Pass
rwtNpcGroup[tBox.Pass]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Pass
rwtNpcGroup[tBox.Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award1

--普通宝箱--
rwtNpcGroup[tBox.Normal] = rwtNpcGroup[tBox.Normal] or {} 
rwtNpcGroup[tBox.Normal]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Normal]["Awards"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Normal]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Normal
rwtNpcGroup[tBox.Normal]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Normal]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award2 

--怪物宝箱--
rwtNpcGroup[tBox.Monster] = rwtNpcGroup[tBox.Monster] or {} 

rwtNpcGroup[tBox.Monster]["InterfaceFunc"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)

	rwOpenNpcChatDialog(tDialog.Dialog6,CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)

end

--怪物宝箱开启前对白对白后进入战斗
rwtDialog[tDialog.Dialog6] = rwtDialog[tDialog.Dialog6] or {}
rwtDialog[tDialog.Dialog6]["DialogEndInit"] = {}
rwtDialog[tDialog.Dialog6]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Dialog6]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Dialog6]["DialogEndInit"]["Events"][1]["DynCreate"] = tMonsterGroupGen.Monster2
rwtDialog[tDialog.Dialog6]["DialogEndInit"]["Events"][1]["AutoBattle"]= {}
rwtDialog[tDialog.Dialog6]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGen.Monster2


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
rwtNpcGroup[tBox.AnYue]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award7

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
rwtNpcGroup[tBox.HuiRi]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award8

--采集物
rwtNpcGroup[tCollect.Collect1] = rwtNpcGroup[tCollect.Collect1] or {}    
rwtNpcGroup[tCollect.Collect1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.Collect1]["CollectTime"] = 1
rwtNpcGroup[tCollect.Collect1]["NotDel"] = 1
rwtNpcGroup[tCollect.Collect1]["Awards"] = {}  
rwtNpcGroup[tCollect.Collect1]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect.Collect1]["Awards"]["Events"][1] = {}   
rwtNpcGroup[tCollect.Collect1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCollect.Collect1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog.Dialog9

--采集后对白进入战斗
for i = 1,#tDialog.Dialog9 do
    rwtDialog[tDialog.Dialog9[i]] = rwtDialog[tDialog.Dialog9[i]] or {}
    rwtDialog[tDialog.Dialog9[i]]["DialogEndInit"] = {}
    rwtDialog[tDialog.Dialog9[i]]["DialogEndInit"]["Events"] = {}
    rwtDialog[tDialog.Dialog9[i]]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[tDialog.Dialog9[i]]["DialogEndInit"]["Events"][1]["DynCreate"] = tMonsterGroupGen.Monster4
    rwtDialog[tDialog.Dialog9[i]]["DialogEndInit"]["Events"][1]["AutoBattle"]= {}
    rwtDialog[tDialog.Dialog9[i]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGen.Monster4
end

--NPC 变异生物
rwtNpcGroup[tSingleNpc.Npc1] = {}     
rwtNpcGroup[tSingleNpc.Npc1]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tSingleNpc.Npc1]["Awards"] = {}
rwtNpcGroup[tSingleNpc.Npc1]["Awards"]["Events"] = {}
rwtNpcGroup[tSingleNpc.Npc1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tSingleNpc.Npc1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tSingleNpc.Npc1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog.Dialog5
--对白后发奖励
for i = 1,#tDialog.Dialog5 do
    rwtDialog[tDialog.Dialog5[i]] = rwtDialog[tDialog.Dialog5[i]] or {}
    rwtDialog[tDialog.Dialog5[i]]["DialogEndInit"] = {}
    rwtDialog[tDialog.Dialog5[i]]["DialogEndInit"]["Events"] = {}
    rwtDialog[tDialog.Dialog5[i]]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[tDialog.Dialog5[i]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[tDialog.Dialog5[i]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[tDialog.Dialog5[i]]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[tDialog.Dialog5[i]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[tDialog.Dialog5[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[tDialog.Dialog5[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award5
    rwtDialog[tDialog.Dialog5[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
    rwtDialog[tDialog.Dialog5[i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = tSingleNpc.Npc1
end

--NPC 默希娅
rwtNpcGroup[tSingleNpc.Npc2] = {}     
rwtNpcGroup[tSingleNpc.Npc2]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tSingleNpc.Npc2]["Awards"] = {}
rwtNpcGroup[tSingleNpc.Npc2]["Awards"]["Events"] = {}
rwtNpcGroup[tSingleNpc.Npc2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tSingleNpc.Npc2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tSingleNpc.Npc2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog.Dialog8
--对白后进入战斗
for i = 1,#tDialog.Dialog8 do
    rwtDialog[tDialog.Dialog8[i]] = rwtDialog[tDialog.Dialog8[i]] or {}
    rwtDialog[tDialog.Dialog8[i]]["DialogEndInit"] = {}
    rwtDialog[tDialog.Dialog8[i]]["DialogEndInit"]["Events"] = {}
    rwtDialog[tDialog.Dialog8[i]]["DialogEndInit"]["Events"][1] = {}
--    rwtDialog[tDialog.Dialog8[i]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
--    rwtDialog[tDialog.Dialog8[i]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
--    rwtDialog[tDialog.Dialog8[i]]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[tDialog.Dialog8[i]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
    rwtDialog[tDialog.Dialog8[i]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGen.Monster3
end

for i = 1,#tDialog.Dialog3 do
    --通关宝箱开启前对白
    rwtDialog[tDialog.Dialog3[i]] = rwtDialog[tDialog.Dialog3[i]] or {}
    rwtDialog[tDialog.Dialog3[i]]["OptionFunc1"] = function ()
	    return false
    end

    rwtDialog[tDialog.Dialog3[i]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	    LinkTreasureBoxOpenSucc(tBox.Pass,tBoxGen.Pass,1)
        return true
    end
end

--**************************************函数***************************
--------------怪物-----------------
----矮巨人指挥官
--function CopyMap_Daily_Experience_Hell_MonsterGroup1_BeKill()
--    local nRandom = math.random(1,#tDialog.Dialog2)
--    rwOpenNpcChatDialog(tDialog.Dialog2[nRandom])
--end
--rwtMonsterGroup_Func[tMonsterGroup.Monster1] = rwtMonsterGroup_Func[tMonsterGroup.Monster1] or {}
--table.insert(rwtMonsterGroup_Func[tMonsterGroup.Monster1],CopyMap_Daily_Experience_Hell_MonsterGroup1_BeKill)


--宝箱怪
function CopyMap_Daily_Experience_Hell_MonsterGroup2_BeKill()
    --宝箱怪死亡后删除怪物宝箱
    if rwHasGenEvent(tBoxGen.Monster) then
        rwDelGenEvent(tBoxGen.Monster)
    end
    local nRandom = math.random(1,#tDialog.Dialog7)
    rwOpenNpcChatDialog(tDialog.Dialog7[nRandom])
end
rwtMonsterGroup_Func[tMonsterGroup.Monster2] = rwtMonsterGroup_Func[tMonsterGroup.Monster2] or {}
table.insert(rwtMonsterGroup_Func[tMonsterGroup.Monster2],CopyMap_Daily_Experience_Hell_MonsterGroup2_BeKill)


--默希娅
function CopyMap_Daily_Experience_Hell_MonsterGroup3_BeKill()
    --怪物死亡后删除NPC
    if rwHasGenEvent(tSingleNpcGen.Npc2) then
        rwDelGenEvent(tSingleNpcGen.Npc2)
    end
end
rwtMonsterGroup_Func[tMonsterGroup.Monster3] = rwtMonsterGroup_Func[tMonsterGroup.Monster3] or {}
table.insert(rwtMonsterGroup_Func[tMonsterGroup.Monster3],CopyMap_Daily_Experience_Hell_MonsterGroup3_BeKill)

--采集怪
function CopyMap_Daily_Experience_Hell_MonsterGroup4_BeKill()
    --采集怪
    for k,v in pairs(tCollectGen.Collect1) do
        if rwHasGenEvent(v) then
            rwDelGenEvent(v)
        end
    end
end
rwtMonsterGroup_Func[tMonsterGroup.Monster4] = rwtMonsterGroup_Func[tMonsterGroup.Monster4] or {}
table.insert(rwtMonsterGroup_Func[tMonsterGroup.Monster4],CopyMap_Daily_Experience_Hell_MonsterGroup4_BeKill)