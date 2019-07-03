
--夜幕古堡-走廊副本


----数据1----

--副本ID
local nCopyMapId = 3078

--目标任务
local nMainTaskId_1 = 60147

--场景加载
local tLoadGenId = {}

--副本数据
local tCopyMap = {}


--首通掩码
local nTemp_PassCopyMap = 1141

--首通奖励
local nAwardId_PassCopyMap = 1000359
----数据2----

--怪物
--(3)
tCopyMap.nMonsterId_ZHZL = 1000542
tCopyMap.nMonsterId_ZHZY = 1000543
tCopyMap.nMonsterId_AHZH = 1000544

--怪物组
--(3)
tCopyMap.nMonGroupId_ZHZL = 200374
tCopyMap.nMonGroupId_ZHZY = 200375
tCopyMap.nMonGroupId_AHZH = 200376

table.insert(tLoadGenId,3078001)
table.insert(tLoadGenId,3078002)
table.insert(tLoadGenId,3078003)

--机关
tCopyMap.nValveId_Wall = 1065

table.insert(tLoadGenId,3078004)

--进副本对白
tCopyMap.nDialogId_Enter = 6225
tCopyMap.nDialogId_Win = 6226


----逻辑----

--副本目标
rwtTarget[nMainTaskId_1] = {}
rwtTarget[nMainTaskId_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21403]
rwtTarget[nMainTaskId_1]["KillMonsterGroup"] = tCopyMap.nMonGroupId_AHZH
rwtTarget[nMainTaskId_1]["ReqCount"] = 1

--副本信息
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
--副本首通掩码
rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = 1

rwtCopyMapMission[nCopyMapId]["Target1"] = {nMainTaskId_1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
--副本首通检查和奖励
rwtCopyMapMission[nCopyMapId]["TargetAward1"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1]["Data"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"] = {}          
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_PassCopyMap
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tCopyMap.nDialogId_Enter
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadGenId
