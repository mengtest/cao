--region [CopyMap]WuYeShiJianBu_7.lua
--Purpose:		多英雄副本第7关
--Creator: 		李宏伟
--Created:		2018-08-01
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-11-11 $
--RCS-ID:		$Revision: 2 $
--endregion


---------------------------基础配置-----------------------------------

local tEnterCreateGen = {}
tEnterCreateGen.Npc1 = 3105001
tEnterCreateGen.Npc2 = 3105002
tEnterCreateGen.Npc3 = 3105003
tEnterCreateGen.Npc4 = 3105004
tEnterCreateGen.Npc5 = 3105005

tEnterCreateGen.Mon1 = 3105006
tEnterCreateGen.Mon2 = 3105007
tEnterCreateGen.Mon3 = 3105008
tEnterCreateGen.Mon4 = 3105009
tEnterCreateGen.Mon5 = 3105010

tEnterCreateGen.Wall1 = 3105011
tEnterCreateGen.Wall2 = 3105012
tEnterCreateGen.Wall3 = 3105013

local tBuildGen = {}
tBuildGen.Npc1 = 3105014
tBuildGen.Npc2 = 3105015
tBuildGen.Npc3 = 3105016
tBuildGen.Npc4 = 3105017

local nCopyMapMissId = 3105

--Buff掩码位
local nUserData = 1193

--副本目标
local tTarget = {}
tTarget.Task1 = 60216
tTarget.Task2 = 60217
tTarget.Task3 = 60218
tTarget.Task4 = 60219
tTarget.Task5 = 60220

--NPC组
local tNpcGroup = {}
tNpcGroup.Mon1 = 20747
tNpcGroup.Mon2 = 20748
tNpcGroup.Mon3 = 20749
tNpcGroup.Mon4 = 20750
tNpcGroup.Boss = 20751
tNpcGroup.MonDel1 = 20752
tNpcGroup.MonDel2 = 20753
tNpcGroup.MonDel3 = 20754
tNpcGroup.MonDel4 = 20755


--怪物组
local tMonster = {}
tMonster.Mon1Group = 200514
tMonster.Mon2Group = 200515
tMonster.Mon3Group = 200516
tMonster.Mon4Group = 200517
tMonster.BossGroup = 200518

local tMonId = {}
tMonId.Mon1	= 1000841
tMonId.Mon2 = 1000842
tMonId.Mon3 = 1000843
tMonId.Mon4 = 1000844
tMonId.Boss	= 1000845


rwtNpcGroup[tNpcGroup.Mon1] = rwtNpcGroup[tNpcGroup.Mon1] or {}
rwtNpcGroup[tNpcGroup.Mon1]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Mon1]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Mon1]["GenIDMonster"] = tEnterCreateGen.Mon1
rwtNpcGroup[tNpcGroup.Mon1]["GenIdObstacles"] = tEnterCreateGen.Wall2
rwtNpcGroup[tNpcGroup.Mon1]["GenIdNPCGroup"] = tEnterCreateGen.Npc1
rwtNpcGroup[tNpcGroup.Mon1]["GenIdBattelAftNpc"] = tBuildGen.Npc1
rwtNpcGroup[tNpcGroup.Mon1]["MonsterGroupID"] = tMonster.Mon1Group
rwtNpcGroup[tNpcGroup.Mon1]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Mon1]["BuffIndex"] = 1
rwtNpcGroup[tNpcGroup.Mon1]["companionIndex"] = {2}
rwtNpcGroup[tNpcGroup.Mon1]["Floor"] = 1
rwtNpcGroup[tNpcGroup.Mon1]["nMapIndex"] =CONST_MANYHEROS_MAP.MOZUZHIXIN

rwtNpcGroup[tNpcGroup.Mon2] = rwtNpcGroup[tNpcGroup.Mon2] or {}
rwtNpcGroup[tNpcGroup.Mon2]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Mon2]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Mon2]["GenIDMonster"] = tEnterCreateGen.Mon2
rwtNpcGroup[tNpcGroup.Mon2]["GenIdObstacles"] = tEnterCreateGen.Wall2
rwtNpcGroup[tNpcGroup.Mon2]["GenIdNPCGroup"] = tEnterCreateGen.Npc2
rwtNpcGroup[tNpcGroup.Mon2]["GenIdBattelAftNpc"] = tBuildGen.Npc2
rwtNpcGroup[tNpcGroup.Mon2]["MonsterGroupID"] = tMonster.Mon2Group
rwtNpcGroup[tNpcGroup.Mon2]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Mon2]["BuffIndex"] = 2
rwtNpcGroup[tNpcGroup.Mon2]["companionIndex"] = {1}
rwtNpcGroup[tNpcGroup.Mon2]["Floor"] = 1
rwtNpcGroup[tNpcGroup.Mon2]["nMapIndex"] =CONST_MANYHEROS_MAP.MOZUZHIXIN

rwtNpcGroup[tNpcGroup.Mon3] = rwtNpcGroup[tNpcGroup.Mon3] or {}
rwtNpcGroup[tNpcGroup.Mon3]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Mon3]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Mon3]["GenIDMonster"] = tEnterCreateGen.Mon3
rwtNpcGroup[tNpcGroup.Mon3]["GenIdObstacles"] = tEnterCreateGen.Wall3
rwtNpcGroup[tNpcGroup.Mon3]["GenIdNPCGroup"] = tEnterCreateGen.Npc3
rwtNpcGroup[tNpcGroup.Mon3]["GenIdBattelAftNpc"] = tBuildGen.Npc3
rwtNpcGroup[tNpcGroup.Mon3]["MonsterGroupID"] = tMonster.Mon3Group
rwtNpcGroup[tNpcGroup.Mon3]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Mon3]["BuffIndex"] = 3
rwtNpcGroup[tNpcGroup.Mon3]["companionIndex"] = {4}
rwtNpcGroup[tNpcGroup.Mon3]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.Npc1,tEnterCreateGen.Npc2}
rwtNpcGroup[tNpcGroup.Mon3]["Floor"] = 2
rwtNpcGroup[tNpcGroup.Mon3]["nMapIndex"] =CONST_MANYHEROS_MAP.MOZUZHIXIN

rwtNpcGroup[tNpcGroup.Mon4] = rwtNpcGroup[tNpcGroup.Mon4] or {}
rwtNpcGroup[tNpcGroup.Mon4]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Mon4]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Mon4]["GenIDMonster"] = tEnterCreateGen.Mon4
rwtNpcGroup[tNpcGroup.Mon4]["GenIdObstacles"] = tEnterCreateGen.Wall3
rwtNpcGroup[tNpcGroup.Mon4]["GenIdNPCGroup"] = tEnterCreateGen.Npc4
rwtNpcGroup[tNpcGroup.Mon4]["GenIdBattelAftNpc"] = tBuildGen.Npc4
rwtNpcGroup[tNpcGroup.Mon4]["MonsterGroupID"] = tMonster.Mon4Group
rwtNpcGroup[tNpcGroup.Mon4]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Mon4]["BuffIndex"] = 4
rwtNpcGroup[tNpcGroup.Mon4]["companionIndex"] = {3}
rwtNpcGroup[tNpcGroup.Mon4]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.Npc1,tEnterCreateGen.Npc2}
rwtNpcGroup[tNpcGroup.Mon4]["Floor"] = 2
rwtNpcGroup[tNpcGroup.Mon4]["nMapIndex"] =CONST_MANYHEROS_MAP.MOZUZHIXIN

rwtNpcGroup[tNpcGroup.Boss] = rwtNpcGroup[tNpcGroup.Boss] or {}
rwtNpcGroup[tNpcGroup.Boss]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Boss]["isBoss"] = true
rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"] = tEnterCreateGen.Mon5
rwtNpcGroup[tNpcGroup.Boss]["GenIdNPCGroup"] = tEnterCreateGen.Npc5
rwtNpcGroup[tNpcGroup.Boss]["MonsterGroupID"] = tMonster.BossGroup
rwtNpcGroup[tNpcGroup.Boss]["MonsterID"] = tMonId.Boss
rwtNpcGroup[tNpcGroup.Boss]["buff"] = {1631,1637,1011,1021}
rwtNpcGroup[tNpcGroup.Boss]["buffTempdata"] = nUserData
rwtNpcGroup[tNpcGroup.Boss]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.Npc3,tEnterCreateGen.Npc4}
rwtNpcGroup[tNpcGroup.Boss]["nMapIndex"] =CONST_MANYHEROS_MAP.MOZUZHIXIN



--任务目标配置

rwtTarget[tTarget.Task1] = {}
rwtTarget[tTarget.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][21655]
rwtTarget[tTarget.Task1]["KillMonsterGroup"] = tMonster.Mon1Group
rwtTarget[tTarget.Task1]["ReqCount"] = 1

rwtTarget[tTarget.Task2] = {}
rwtTarget[tTarget.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][21656]
rwtTarget[tTarget.Task2]["KillMonsterGroup"] = tMonster.Mon2Group
rwtTarget[tTarget.Task2]["ReqCount"] = 1

rwtTarget[tTarget.Task3] = {}
rwtTarget[tTarget.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][21657]
rwtTarget[tTarget.Task3]["KillMonsterGroup"] = tMonster.Mon3Group
rwtTarget[tTarget.Task3]["ReqCount"] = 1

rwtTarget[tTarget.Task4] = {}
rwtTarget[tTarget.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][21658]
rwtTarget[tTarget.Task4]["KillMonsterGroup"] = tMonster.Mon4Group
rwtTarget[tTarget.Task4]["ReqCount"] = 1

rwtTarget[tTarget.Task5] = {}
rwtTarget[tTarget.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][21659]
rwtTarget[tTarget.Task5]["KillMonsterGroup"] = tMonster.BossGroup
rwtTarget[tTarget.Task5]["ReqCount"] = 1



local tMonsterTalent = {}
    tMonsterTalent[1] = {}
    tMonsterTalent[1]["MonGenId"] = rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"]
    tMonsterTalent[1]["MonsterId"] = rwtNpcGroup[tNpcGroup.Boss]["MonsterID"]
    tMonsterTalent[1]["TalentType"] = rwtNpcGroup[tNpcGroup.Boss]["buff"][1]

    tMonsterTalent[2] = {}
    tMonsterTalent[2]["MonGenId"] = rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"]
    tMonsterTalent[2]["MonsterId"] = rwtNpcGroup[tNpcGroup.Boss]["MonsterID"]
    tMonsterTalent[2]["TalentType"] = rwtNpcGroup[tNpcGroup.Boss]["buff"][2]

    tMonsterTalent[3] = {}
    tMonsterTalent[3]["MonGenId"] = rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"]
    tMonsterTalent[3]["MonsterId"] = rwtNpcGroup[tNpcGroup.Boss]["MonsterID"]
    tMonsterTalent[3]["TalentType"] = rwtNpcGroup[tNpcGroup.Boss]["buff"][3]

    tMonsterTalent[4] = {}
    tMonsterTalent[4]["MonGenId"] = rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"]
    tMonsterTalent[4]["MonsterId"] = rwtNpcGroup[tNpcGroup.Boss]["MonsterID"]
    tMonsterTalent[4]["TalentType"] = rwtNpcGroup[tNpcGroup.Boss]["buff"][4]


--副本配置
rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {tTarget.Task1,tTarget.Task2,tTarget.Task3,tTarget.Task4}
rwtCopyMapMission[nCopyMapMissId]["Target1_IsNotDel"] = true
rwtCopyMapMission[nCopyMapMissId]["Target1_NeedFinishNum"] = 2
rwtCopyMapMission[nCopyMapMissId]["Target2"] = {tTarget.Task5}

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6657
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nUserData
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"] = tMonsterTalent

