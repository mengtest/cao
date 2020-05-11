--region [CopyMap]WuYeShiJianBu_10.lua
--Purpose:		多英雄副本-雾夜事件簿-第10关
--Creator: 		倪祖伟
--Created:		2019-09-19
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-04-14 $
--RCS-ID:		$Revision: 4 $
--endregion


--endregion
local nCopyMapMissId = 3104
local tEnterCreateGen = {
    3104001,3104002,3104003,3104004,3104005,    --5只怪
    3104006,3104007,3104008,3104009,3104010,    --5只npc
    3104011,3104016,3104017                           --空气墙
}
local tNpcGroup  = {}
tNpcGroup.Normal_1  = 20737
tNpcGroup.Normal_2  = 20738
tNpcGroup.Elite_1   = 20739
tNpcGroup.Elite_2   = 20740
tNpcGroup.Boss      = 20741

local tMonsterGroup  = {}
tMonsterGroup.Normal_1  =    200519
tMonsterGroup.Normal_2  =    200520
tMonsterGroup.Elite_1   =    200521
tMonsterGroup.Elite_2   =    200522
tMonsterGroup.Boss      =    200523

local tGenId = {}
tGenId.Monster_Normal_1 =  3104001
tGenId.Monster_Normal_2 =  3104002
tGenId.Monster_Elite_1  =  3104003
tGenId.Monster_Elite_2  =  3104004
tGenId.Monster_Boss     =  3104005

tGenId.Npc_Normal_1     = 3104006
tGenId.Npc_Normal_2     = 3104007
tGenId.Npc_Elite_1      = 3104008
tGenId.Npc_Elite_2      = 3104009
tGenId.Npc_Boss         = 3104010

tGenId.Valve_1 = 3104016
tGenId.Valve_2 = 3104017

tGenId.Npc_Dead_Normal_1     =   3104012
tGenId.Npc_Dead_Normal_2     =   3104013
tGenId.Npc_Dead_Elite_1      =   3104014
tGenId.Npc_Dead_Elite_2      =   3104015

local tLaMen = {
    3104018,
    3104019,
    3104020,
    3104021
}

rwtNpcGroup[tNpcGroup.Normal_1] = rwtNpcGroup[tNpcGroup.Normal_1] or {}
rwtNpcGroup[tNpcGroup.Normal_1]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Normal_1]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Normal_1]["GenIDMonster"] = tGenId.Monster_Normal_1
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdObstacles"] = {tGenId.Valve_1,tGenId.Valve_2}
rwtNpcGroup[tNpcGroup.Normal_1]["ValveGenIdLaMen"] = tLaMen[1]
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdNPCGroup"] = tGenId.Npc_Normal_1
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdBattelAftNpc"] = tGenId.Npc_Dead_Normal_1
rwtNpcGroup[tNpcGroup.Normal_1]["MonsterGroupID"] = tMonsterGroup.Normal_1
rwtNpcGroup[tNpcGroup.Normal_1]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Normal_1]["BuffIndex"] = 1
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdCompanion"] = tGenId.Npc_Normal_2
rwtNpcGroup[tNpcGroup.Normal_1]["tGenIdLastMonsterNpc"] = nil
rwtNpcGroup[tNpcGroup.Normal_1]["Floor"] = 1

rwtNpcGroup[tNpcGroup.Normal_2] = rwtNpcGroup[tNpcGroup.Normal_2] or {}
rwtNpcGroup[tNpcGroup.Normal_2]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Normal_2]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Normal_2]["GenIDMonster"] = tGenId.Monster_Normal_2
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdObstacles"] = {tGenId.Valve_1,tGenId.Valve_2}
rwtNpcGroup[tNpcGroup.Normal_2]["ValveGenIdLaMen"] = tLaMen[2]
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdNPCGroup"] = tGenId.Npc_Normal_2
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdBattelAftNpc"] = tGenId.Npc_Dead_Normal_2
rwtNpcGroup[tNpcGroup.Normal_2]["MonsterGroupID"] = tMonsterGroup.Normal_2
rwtNpcGroup[tNpcGroup.Normal_2]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Normal_2]["BuffIndex"] = 2
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdCompanion"] = tGenId.Npc_Normal_1
rwtNpcGroup[tNpcGroup.Normal_2]["tGenIdLastMonsterNpc"] = nil
rwtNpcGroup[tNpcGroup.Normal_2]["Floor"] = 1

rwtNpcGroup[tNpcGroup.Elite_1] = rwtNpcGroup[tNpcGroup.Elite_1] or {}
rwtNpcGroup[tNpcGroup.Elite_1]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Elite_1]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Elite_1]["GenIDMonster"] = tGenId.Monster_Elite_1
rwtNpcGroup[tNpcGroup.Elite_1]["GenIdObstacles"] = 3104011
rwtNpcGroup[tNpcGroup.Elite_1]["ValveGenIdLaMen"] = tLaMen[3]
rwtNpcGroup[tNpcGroup.Elite_1]["GenIdNPCGroup"] = tGenId.Npc_Elite_1
rwtNpcGroup[tNpcGroup.Elite_1]["GenIdBattelAftNpc"] = tGenId.Npc_Dead_Elite_1
rwtNpcGroup[tNpcGroup.Elite_1]["MonsterGroupID"] = tMonsterGroup.Elite_1
rwtNpcGroup[tNpcGroup.Elite_1]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Elite_1]["BuffIndex"] = 3
rwtNpcGroup[tNpcGroup.Elite_1]["GenIdCompanion"] = tGenId.Npc_Elite_2
rwtNpcGroup[tNpcGroup.Elite_1]["tGenIdLastMonsterNpc"] = {tGenId.Npc_Normal_1,tGenId.Npc_Normal_2}
rwtNpcGroup[tNpcGroup.Elite_1]["Floor"] = 2

rwtNpcGroup[tNpcGroup.Elite_2] = rwtNpcGroup[tNpcGroup.Elite_2] or {}
rwtNpcGroup[tNpcGroup.Elite_2]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Elite_2]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Elite_2]["GenIDMonster"] = tGenId.Monster_Elite_2
rwtNpcGroup[tNpcGroup.Elite_2]["GenIdObstacles"] = 3104011
rwtNpcGroup[tNpcGroup.Elite_2]["ValveGenIdLaMen"] = tLaMen[4]
rwtNpcGroup[tNpcGroup.Elite_2]["GenIdNPCGroup"] = tGenId.Npc_Elite_2
rwtNpcGroup[tNpcGroup.Elite_2]["GenIdBattelAftNpc"] = tGenId.Npc_Dead_Elite_2
rwtNpcGroup[tNpcGroup.Elite_2]["MonsterGroupID"] = tMonsterGroup.Elite_2
rwtNpcGroup[tNpcGroup.Elite_2]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Elite_2]["BuffIndex"] = 4
rwtNpcGroup[tNpcGroup.Elite_2]["GenIdCompanion"] = tGenId.Npc_Elite_1
rwtNpcGroup[tNpcGroup.Elite_2]["tGenIdLastMonsterNpc"] = {tGenId.Npc_Normal_1,tGenId.Npc_Normal_2}
rwtNpcGroup[tNpcGroup.Elite_2]["Floor"] = 2

rwtNpcGroup[tNpcGroup.Boss] = rwtNpcGroup[tNpcGroup.Boss] or {}
rwtNpcGroup[tNpcGroup.Boss]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Boss]["isBoss"] = true
rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"] = tGenId.Monster_Boss
rwtNpcGroup[tNpcGroup.Boss]["GenIdNPCGroup"] = tGenId.Npc_Boss
rwtNpcGroup[tNpcGroup.Boss]["MonsterGroupID"] = tMonsterGroup.Boss
rwtNpcGroup[tNpcGroup.Boss]["MonsterID"] = 1000850
rwtNpcGroup[tNpcGroup.Boss]["buff"] = {1011,1021,1031,1041}
rwtNpcGroup[tNpcGroup.Boss]["NpcChildren"] = {tNpcGroup.Normal_1,tNpcGroup.Normal_2,tNpcGroup.Elite_1,tNpcGroup.Elite_2}
rwtNpcGroup[tNpcGroup.Boss]["buffTempdata"] = 1194
rwtNpcGroup[tNpcGroup.Boss]["tGenIdLastMonsterNpc"] = {tGenId.Npc_Elite_1,tGenId.Npc_Elite_2}


rwtTarget[60221] = {}
rwtTarget[60221]["Title"] = tLuaText[LANGUAGE_CONFIG][21665]
rwtTarget[60221]["KillMonsterGroup"] = tMonsterGroup.Normal_1  
rwtTarget[60221]["ReqCount"] = 1

rwtTarget[60222] = {}
rwtTarget[60222]["Title"] = tLuaText[LANGUAGE_CONFIG][21666]
rwtTarget[60222]["KillMonsterGroup"] = tMonsterGroup.Normal_2
rwtTarget[60222]["ReqCount"] = 1

rwtTarget[60223] = {}
rwtTarget[60223]["Title"] = tLuaText[LANGUAGE_CONFIG][21667]
rwtTarget[60223]["KillMonsterGroup"] = tMonsterGroup.Elite_1
rwtTarget[60223]["ReqCount"] = 1

rwtTarget[60224] = {}
rwtTarget[60224]["Title"] = tLuaText[LANGUAGE_CONFIG][21668]
rwtTarget[60224]["KillMonsterGroup"] = tMonsterGroup.Elite_2
rwtTarget[60224]["ReqCount"] = 1

rwtTarget[60225] = {}
rwtTarget[60225]["Title"] = tLuaText[LANGUAGE_CONFIG][21669]
rwtTarget[60225]["KillMonsterGroup"] = tMonsterGroup.Boss 
rwtTarget[60225]["ReqCount"] = 1



rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {60221,60222,60223,60224}
rwtCopyMapMission[nCopyMapMissId]["Target1_IsNotDel"] = true
rwtCopyMapMission[nCopyMapMissId]["Target1_NeedFinishNum"] = 2
rwtCopyMapMission[nCopyMapMissId]["Target2"] = {60225}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6657
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = 1194
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1]["MonGenId"] = rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1]["MonsterId"] = rwtNpcGroup[tNpcGroup.Boss]["MonsterID"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1]["TalentType"] = rwtNpcGroup[tNpcGroup.Boss]["buff"][1]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2]["MonGenId"] = rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2]["MonsterId"] = rwtNpcGroup[tNpcGroup.Boss]["MonsterID"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2]["TalentType"] = rwtNpcGroup[tNpcGroup.Boss]["buff"][2]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][3] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][3]["MonGenId"] = rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][3]["MonsterId"] = rwtNpcGroup[tNpcGroup.Boss]["MonsterID"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][3]["TalentType"] = rwtNpcGroup[tNpcGroup.Boss]["buff"][3]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][4] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][4]["MonGenId"] = rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][4]["MonsterId"] = rwtNpcGroup[tNpcGroup.Boss]["MonsterID"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][4]["TalentType"] = rwtNpcGroup[tNpcGroup.Boss]["buff"][4]