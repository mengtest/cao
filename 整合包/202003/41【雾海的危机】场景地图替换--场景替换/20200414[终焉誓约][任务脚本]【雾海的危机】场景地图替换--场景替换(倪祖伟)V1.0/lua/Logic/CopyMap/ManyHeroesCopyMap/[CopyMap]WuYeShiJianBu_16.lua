--region [CopyMap]WuYeShiJianBu_16.lua
--Purpose:		多英雄副本-雾夜事件簿-第16关
--Creator: 		李宏伟
--Created:		2019-09-19
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-04-30 $
--RCS-ID:		$Revision:8	$
--endregion


---------------------------基础配置-----------------------------------

local tEnterCreateGen = {}
tEnterCreateGen.Npc1 = 3106001
tEnterCreateGen.Npc2 = 3106002
tEnterCreateGen.Npc3 = 3106003
tEnterCreateGen.Npc4 = 3106004
tEnterCreateGen.Npc5 = 3106005

tEnterCreateGen.Mon1 = 3106006
tEnterCreateGen.Mon2 = 3106007
tEnterCreateGen.Mon3 = 3106008
tEnterCreateGen.Mon4 = 3106009
tEnterCreateGen.Mon5 = 3106010

tEnterCreateGen.Wall1 = 3106011
tEnterCreateGen.Wall2 = 3106012
tEnterCreateGen.Wall3 = 3106013

local tBuildGen = {}
tBuildGen.Npc1 = 3106014
tBuildGen.Npc2 = 3106015
tBuildGen.Npc3 = 3106016
tBuildGen.Npc4 = 3106017

local nCopyMapMissId = 3106

--Buff掩码位
local nUserData = 1195

--副本目标
local tTarget = {}
tTarget.Task1 = 60226
tTarget.Task2 = 60227
tTarget.Task3 = 60228
tTarget.Task4 = 60229
tTarget.Task5 = 60230

--NPC组
local tNpcGroup = {}
tNpcGroup.Mon1 = 20756
tNpcGroup.Mon2 = 20757
tNpcGroup.Mon3 = 20758
tNpcGroup.Mon4 = 20759
tNpcGroup.Boss = 20760
tNpcGroup.MonDel1 = 20761
tNpcGroup.MonDel2 = 20762
tNpcGroup.MonDel3 = 20763
tNpcGroup.MonDel4 = 20764


--怪物组
local tMonster = {}
tMonster.Mon1Group = 200524
tMonster.Mon2Group = 200525
tMonster.Mon3Group = 200526
tMonster.Mon4Group = 200527
tMonster.BossGroup = 200528

local tMonId = {}
tMonId.Mon1	= 1000851
tMonId.Mon2 = 1000852
tMonId.Mon3 = 1000853
tMonId.Mon4 = 1000854
tMonId.Boss	= 1000855

local tLaMen = {
    3106018,
    3106019,
    3106020,
    3106021
}

rwtNpcGroup[tNpcGroup.Mon1] = rwtNpcGroup[tNpcGroup.Mon1] or {}
rwtNpcGroup[tNpcGroup.Mon1]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Mon1]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Mon1]["GenIDMonster"] = tEnterCreateGen.Mon1
rwtNpcGroup[tNpcGroup.Mon1]["GenIdObstacles"] = {tEnterCreateGen.Wall2,tEnterCreateGen.Wall3}
rwtNpcGroup[tNpcGroup.Mon1]["ValveGenIdLaMen"] = tLaMen[1]
rwtNpcGroup[tNpcGroup.Mon1]["GenIdNPCGroup"] = tEnterCreateGen.Npc1
rwtNpcGroup[tNpcGroup.Mon1]["GenIdBattelAftNpc"] = tBuildGen.Npc1
rwtNpcGroup[tNpcGroup.Mon1]["MonsterGroupID"] = tMonster.Mon1Group
rwtNpcGroup[tNpcGroup.Mon1]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Mon1]["BuffIndex"] = 1
rwtNpcGroup[tNpcGroup.Mon1]["GenIdCompanion"] = tEnterCreateGen.Npc2
rwtNpcGroup[tNpcGroup.Mon1]["Floor"] = 1


rwtNpcGroup[tNpcGroup.Mon2] = rwtNpcGroup[tNpcGroup.Mon2] or {}
rwtNpcGroup[tNpcGroup.Mon2]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Mon2]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Mon2]["GenIDMonster"] = tEnterCreateGen.Mon2
rwtNpcGroup[tNpcGroup.Mon2]["GenIdObstacles"] = {tEnterCreateGen.Wall2,tEnterCreateGen.Wall3}
rwtNpcGroup[tNpcGroup.Mon2]["ValveGenIdLaMen"] = tLaMen[2]
rwtNpcGroup[tNpcGroup.Mon2]["GenIdNPCGroup"] = tEnterCreateGen.Npc2
rwtNpcGroup[tNpcGroup.Mon2]["GenIdBattelAftNpc"] = tBuildGen.Npc2
rwtNpcGroup[tNpcGroup.Mon2]["MonsterGroupID"] = tMonster.Mon2Group
rwtNpcGroup[tNpcGroup.Mon2]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Mon2]["BuffIndex"] = 2
rwtNpcGroup[tNpcGroup.Mon2]["GenIdCompanion"] = tEnterCreateGen.Npc1
rwtNpcGroup[tNpcGroup.Mon2]["Floor"] = 1


rwtNpcGroup[tNpcGroup.Mon3] = rwtNpcGroup[tNpcGroup.Mon3] or {}
rwtNpcGroup[tNpcGroup.Mon3]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Mon3]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Mon3]["GenIDMonster"] = tEnterCreateGen.Mon3
rwtNpcGroup[tNpcGroup.Mon3]["GenIdObstacles"] = tEnterCreateGen.Wall1
rwtNpcGroup[tNpcGroup.Mon3]["ValveGenIdLaMen"] = tLaMen[3]
rwtNpcGroup[tNpcGroup.Mon3]["GenIdNPCGroup"] = tEnterCreateGen.Npc3
rwtNpcGroup[tNpcGroup.Mon3]["GenIdBattelAftNpc"] = tBuildGen.Npc3
rwtNpcGroup[tNpcGroup.Mon3]["MonsterGroupID"] = tMonster.Mon3Group
rwtNpcGroup[tNpcGroup.Mon3]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Mon3]["BuffIndex"] = 3
rwtNpcGroup[tNpcGroup.Mon3]["GenIdCompanion"] = tEnterCreateGen.Npc4
rwtNpcGroup[tNpcGroup.Mon3]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.Npc1,tEnterCreateGen.Npc2}
rwtNpcGroup[tNpcGroup.Mon3]["Floor"] = 2

rwtNpcGroup[tNpcGroup.Mon4] = rwtNpcGroup[tNpcGroup.Mon4] or {}
rwtNpcGroup[tNpcGroup.Mon4]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Mon4]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Mon4]["GenIDMonster"] = tEnterCreateGen.Mon4
rwtNpcGroup[tNpcGroup.Mon4]["GenIdObstacles"] = tEnterCreateGen.Wall1
rwtNpcGroup[tNpcGroup.Mon4]["ValveGenIdLaMen"] = tLaMen[4]
rwtNpcGroup[tNpcGroup.Mon4]["GenIdNPCGroup"] = tEnterCreateGen.Npc4
rwtNpcGroup[tNpcGroup.Mon4]["GenIdBattelAftNpc"] = tBuildGen.Npc4
rwtNpcGroup[tNpcGroup.Mon4]["MonsterGroupID"] = tMonster.Mon4Group
rwtNpcGroup[tNpcGroup.Mon4]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Mon4]["BuffIndex"] = 4
rwtNpcGroup[tNpcGroup.Mon4]["GenIdCompanion"] =tEnterCreateGen.Npc3
rwtNpcGroup[tNpcGroup.Mon4]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.Npc1,tEnterCreateGen.Npc2}
rwtNpcGroup[tNpcGroup.Mon4]["Floor"] = 2


rwtNpcGroup[tNpcGroup.Boss] = rwtNpcGroup[tNpcGroup.Boss] or {}
rwtNpcGroup[tNpcGroup.Boss]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Boss]["isBoss"] = true
rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"] = tEnterCreateGen.Mon5
rwtNpcGroup[tNpcGroup.Boss]["GenIdNPCGroup"] = tEnterCreateGen.Npc5
rwtNpcGroup[tNpcGroup.Boss]["MonsterGroupID"] = tMonster.BossGroup
rwtNpcGroup[tNpcGroup.Boss]["MonsterID"] = tMonId.Boss
rwtNpcGroup[tNpcGroup.Boss]["buff"] = {1011,1021,1041,1031}
rwtNpcGroup[tNpcGroup.Boss]["NpcChildren"] = {tNpcGroup.Mon1,tNpcGroup.Mon2,tNpcGroup.Mon3,tNpcGroup.Mon4}
rwtNpcGroup[tNpcGroup.Boss]["buffTempdata"] = nUserData
rwtNpcGroup[tNpcGroup.Boss]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.Npc3,tEnterCreateGen.Npc4}
rwtNpcGroup[tNpcGroup.Boss]["BattalDialogAft"] =7177



--任务目标配置

rwtTarget[tTarget.Task1] = {}
rwtTarget[tTarget.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][21660]
rwtTarget[tTarget.Task1]["KillMonsterGroup"] = tMonster.Mon1Group
rwtTarget[tTarget.Task1]["ReqCount"] = 1

rwtTarget[tTarget.Task2] = {}
rwtTarget[tTarget.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][21661]
rwtTarget[tTarget.Task2]["KillMonsterGroup"] = tMonster.Mon2Group
rwtTarget[tTarget.Task2]["ReqCount"] = 1

rwtTarget[tTarget.Task3] = {}
rwtTarget[tTarget.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][21662]
rwtTarget[tTarget.Task3]["KillMonsterGroup"] = tMonster.Mon3Group
rwtTarget[tTarget.Task3]["ReqCount"] = 1

rwtTarget[tTarget.Task4] = {}
rwtTarget[tTarget.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][21663]
rwtTarget[tTarget.Task4]["KillMonsterGroup"] = tMonster.Mon4Group
rwtTarget[tTarget.Task4]["ReqCount"] = 1

rwtTarget[tTarget.Task5] = {}
rwtTarget[tTarget.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][21664]
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