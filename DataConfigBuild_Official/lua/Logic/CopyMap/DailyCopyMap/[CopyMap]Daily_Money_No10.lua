
--日常副本 金钱 8号

local tCopyMap = {}

local tLoadGenId = {}

local nCopyMapId = 3128

local nCopyMapTask1_Id = 60297

--奖励

local nAwardId_Box1 = 1000534
local nAwardId_Box2 = 1000535

--对白

local tDialog_MaxBox = {6792}
local tDialog_Enter = {6791}

------------------------------------------

--怪物组

tCopyMap.nMonGroup_1 = 200643
table.insert(tLoadGenId,3128001)
table.insert(tLoadGenId,3128003)

tCopyMap.nMonGroup_2 = 200644
table.insert(tLoadGenId,3128005)
table.insert(tLoadGenId,3128006)

tCopyMap.nMonGroup_3 = 200645
table.insert(tLoadGenId,3128002)
table.insert(tLoadGenId,3128004)

tCopyMap.nMonGroup_4 = 200646
table.insert(tLoadGenId,3128007)
table.insert(tLoadGenId,3128008)
table.insert(tLoadGenId,3128009)



--宝箱
tCopyMap.nBoxGroup_1 = 40276
table.insert(tLoadGenId,3128010)

tCopyMap.nBoxGroup_2 = 40277
table.insert(tLoadGenId,3128011)
table.insert(tLoadGenId,3128012)
table.insert(tLoadGenId,3128013)
table.insert(tLoadGenId,3128014)
table.insert(tLoadGenId,3128015)
table.insert(tLoadGenId,3128016)






----------------------------------------------------------------------------------
------------------------------------数据------------------------------------------
----------------------------------------------------------------------------------



rwtNpcGroup[tCopyMap.nBoxGroup_1] = rwtNpcGroup[tCopyMap.nBoxGroup_1] or {}
rwtNpcGroup[tCopyMap.nBoxGroup_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap.nBoxGroup_1]["CollectTime"] = 3
rwtNpcGroup[tCopyMap.nBoxGroup_1]["Awards"] = {}  
rwtNpcGroup[tCopyMap.nBoxGroup_1]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap.nBoxGroup_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap.nBoxGroup_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap.nBoxGroup_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap.nBoxGroup_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap.nBoxGroup_1
rwtNpcGroup[tCopyMap.nBoxGroup_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap.nBoxGroup_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Box1
rwtNpcGroup[tCopyMap.nBoxGroup_1]["Awards"]["Events"][2] = {}
rwtNpcGroup[tCopyMap.nBoxGroup_1]["Awards"]["Events"][2]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap.nBoxGroup_1]["Awards"]["Events"][2]["OpenDialog"]["tDialog"] = tDialog_MaxBox

rwtNpcGroup[tCopyMap.nBoxGroup_2] = rwtNpcGroup[tCopyMap.nBoxGroup_2] or {}
rwtNpcGroup[tCopyMap.nBoxGroup_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap.nBoxGroup_2]["CollectTime"] = 2
rwtNpcGroup[tCopyMap.nBoxGroup_2]["Awards"] = {}  
rwtNpcGroup[tCopyMap.nBoxGroup_2]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap.nBoxGroup_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap.nBoxGroup_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap.nBoxGroup_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCopyMap.nBoxGroup_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap.nBoxGroup_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Box2




rwtTarget[nCopyMapTask1_Id] = {}
rwtTarget[nCopyMapTask1_Id]["Title"] = tLuaText[LANGUAGE_CONFIG][21796]
rwtTarget[nCopyMapTask1_Id]["ReqCollectId"] = tCopyMap.nBoxGroup_1
rwtTarget[nCopyMapTask1_Id]["ReqCount"] = 1

--副本信息
rwtCopyMapMission[nCopyMapId] = {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nCopyMapTask1_Id}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_Enter
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadGenId





