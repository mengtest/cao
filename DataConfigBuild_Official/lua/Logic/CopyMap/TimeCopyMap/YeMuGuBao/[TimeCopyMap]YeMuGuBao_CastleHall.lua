--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--副本大厅副本

--endregion

-------------------------------------------------- 数据定义 ------------------------------------------------------------
--副本ID
local nCopyMapId = 3075

local nDialog_1 = 6211
local nDialog_2 = 6212

--首通掩码
local nTemp_PassCopyMap = 1137

--首通奖励
local nAwardId_PassCopyMap = 1000355

--A型感染者  10019
local nMonster_1 = 1000523
local nMonsterGroup_1 = 200357
local nMonsterGroup_1_Gen = 3075001
--受惊的僵尸  10045
local nMonster_2 = 1000524
local nMonsterGroup_2 = 200358
local nMonsterGroup_2_Gen = 3075002
--僵尸妈妈  10040
local nMonster_3 = 1000525
local nMonsterGroup_3 = 200359
local nMonsterGroup_3_Gen = 3075003

--机关
-- local nValue_1 = 1060
-- local nValue_1_Gen = 3075004

-- local nValue_2 = 1061
-- local nValue_2_Gen = 3075005

-- local nValue_3 = 1062
-- local nValue_3_Gen = 3075006

-- local nValue_4 = 1063
-- local nValue_4_Gen = 3075007

-------------------------------------------------- 副本 ---------------------------------------------------------------
rwtTarget[60137] = {}
rwtTarget[60137]["Title"] = tLuaText[LANGUAGE_CONFIG][21391]
rwtTarget[60137]["KillMonsterGroup"] = nMonsterGroup_1
rwtTarget[60137]["ReqCount"] = 1

rwtTarget[60138] = {}
rwtTarget[60138]["Title"] = tLuaText[LANGUAGE_CONFIG][21391]
rwtTarget[60138]["KillMonsterGroup"] = nMonsterGroup_2
rwtTarget[60138]["ReqCount"] = 1

rwtTarget[60139] = {}
rwtTarget[60139]["Title"] = tLuaText[LANGUAGE_CONFIG][21391]
rwtTarget[60139]["KillMonsterGroup"] = nMonsterGroup_3
rwtTarget[60139]["ReqCount"] = 1

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
--副本首通掩码 
rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = 1

rwtCopyMapMission[nCopyMapId]["Target1"] = {60137,60138,60139}

rwtCopyMapMission[nCopyMapId]["TargetAward1"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_2
--副本首通检查和首通奖励
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][2] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][2]["ChkUserTempData"][1]["Record"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][2]["ChkUserTempData"][1]["Data"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][2]["GetServerAward"] = {}          
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][2]["GetServerAward"]["AwardId"] = nAwardId_PassCopyMap
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX

rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}


rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_1 

