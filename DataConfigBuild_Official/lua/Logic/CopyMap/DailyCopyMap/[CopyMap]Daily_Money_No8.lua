
--日常副本 金钱 8号

local tCopyMap = {}

local tLoadGenId = {}
local tLoadGenId_cg1 = {}
local tLoadGenId_cg2 = {}
local tLoadGenId_cg3 = {}

local nCopyMapId = 3124

local nCopyMapTask1_Id = 60293

--奖励

local nAwardId_Box1 = 1000528
local nAwardId_Box2 = 1000529

--对白

local tDialog_MaxBox = {6786}
local tDialog_Enter = {6785}

------------------------------------------

--怪物组

tCopyMap.nMonGroup_1 = 200617
table.insert(tLoadGenId,3124001)
table.insert(tLoadGenId,3124002)

tCopyMap.nMonGroup_2 = 200619
table.insert(tLoadGenId,3124003)


tCopyMap.nMonGroup_3 = 200620
table.insert(tLoadGenId,3124004)

tCopyMap.nMonGroup_4 = 200621
table.insert(tLoadGenId,3124005)

tCopyMap.nMonGroup_5 = 200618
table.insert(tLoadGenId,3124006)
table.insert(tLoadGenId,3124007)

--宝箱
tCopyMap.nBoxGroup_1 = 40266
table.insert(tLoadGenId,3124008)

tCopyMap.nBoxGroup_2 = 40267
table.insert(tLoadGenId,3124009)
table.insert(tLoadGenId,3124010)
table.insert(tLoadGenId,3124011)
table.insert(tLoadGenId,3124012)
table.insert(tLoadGenId,3124013)

--机关(空气墙)


tCopyMap.nValve1 = 1110
table.insert(tLoadGenId,3124014)

tCopyMap.nValve2 = 1111
table.insert(tLoadGenId,3124015)

tCopyMap.nValve3 = 1112
table.insert(tLoadGenId,3124016)





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
rwtTarget[nCopyMapTask1_Id]["Title"] = tLuaText[LANGUAGE_CONFIG][21794]
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





