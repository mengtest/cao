--region [CopyMap]WuYeShiJianBu_18.lua
--Purpose:		多英雄副本-雾夜事件簿-第18关
--Creator: 		孟志远
--Created:		2019-09-19
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-04-30 $
--RCS-ID:		$Revision:9	$
--endregion

--===========================副本基础配置====================================--
--genid分配
--NPC组：3116001-3116100
--怪物组：3116101-3116200
--机关：3116201-3116300
--模型：3116301-3116400

local nCopyMapMissId = 3116
--掩码
local nTemp = 1205

local tEnterCreateGen = {   
    3116101,3116102,3116103,3116104,3116105,    --5只怪
    3116001,3116002,3116003,3116004,3116005,    --5只npc
    3116201,3116202,3116203                           --空气墙
}
local tNpcGroup  = {}
tNpcGroup.Normal_1  = 20847
tNpcGroup.Normal_2  = 20848
tNpcGroup.Elite_1   = 20849
tNpcGroup.Elite_2   = 20850
tNpcGroup.Boss      = 20851

tNpcGroup.Dead_Normal_1  = 20852
tNpcGroup.Dead_Normal_2  = 20853
tNpcGroup.Dead_Elite_1   = 20854
tNpcGroup.Dead_Elite_2   = 20855

local tMonsterGroup  = {}
tMonsterGroup.Normal_1  =    200574
tMonsterGroup.Normal_2  =    200575
tMonsterGroup.Elite_1   =    200576
tMonsterGroup.Elite_2   =    200577
tMonsterGroup.Boss      =    200578

local tGenId = {}
tGenId.Monster_Normal_1 =  3116101
tGenId.Monster_Normal_2 =  3116102
tGenId.Monster_Elite_1  =  3116103
tGenId.Monster_Elite_2  =  3116104
tGenId.Monster_Boss     =  3116105

tGenId.Npc_Normal_1     = 3116001
tGenId.Npc_Normal_2     = 3116002
tGenId.Npc_Elite_1      = 3116003
tGenId.Npc_Elite_2      = 3116004
tGenId.Npc_Boss         = 3116005

tGenId.Valve_1 = 3116201
tGenId.Valve_2 = 3116202
--空气墙
tGenId.Valve_3 = 3116203

tGenId.Npc_Dead_Normal_1     =   3116301
tGenId.Npc_Dead_Normal_2     =   3116302
tGenId.Npc_Dead_Elite_1      =   3116303
tGenId.Npc_Dead_Elite_2      =   3116304

local tPosBattleEffect = {}
tPosBattleEffect.Npc_Normal_1  =  "25.27,1.64,-15.47"
tPosBattleEffect.Npc_Normal_2  =  "16.48,1.64,-24.2"
tPosBattleEffect.Npc_Elite_1   =  "0.28,0.06,11.01"
tPosBattleEffect.Npc_Elite_2   =  "-1.64,0.06,-5.43"

  --怪物
local tMonId = {}
tMonId.Monster_Normal_1 = 1000876
tMonId.Monster_Normal_2 = 1000877
tMonId.Monster_Elite_1  = 1000878
tMonId.Monster_Elite_2  = 1000879
tMonId.Monster_Boss     = 1000880

--任务目标
local tTarget = {}
tTarget.id1	= 60276
tTarget.id2	= 60277
tTarget.id3	= 60278
tTarget.id4	= 60279
tTarget.id5	= 60280

local tLaMen = {
  3116018,
  3116019,
  3116020,
  3116021
}

rwtNpcGroup[tNpcGroup.Normal_1] = rwtNpcGroup[tNpcGroup.Normal_1] or {}
rwtNpcGroup[tNpcGroup.Normal_1]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Normal_1]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Normal_1]["GenIDMonster"] = tGenId.Monster_Normal_1
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdObstacles"] = {tGenId.Valve_3,tGenId.Valve_2}
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
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdObstacles"] = {tGenId.Valve_3,tGenId.Valve_2}
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
rwtNpcGroup[tNpcGroup.Elite_1]["GenIdObstacles"] = tGenId.Valve_1
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
rwtNpcGroup[tNpcGroup.Elite_2]["GenIdObstacles"] = tGenId.Valve_1
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
rwtNpcGroup[tNpcGroup.Boss]["buffTempdata"] = nTemp
rwtNpcGroup[tNpcGroup.Boss]["tGenIdLastMonsterNpc"] = {tGenId.Npc_Elite_1,tGenId.Npc_Elite_2}
rwtNpcGroup[tNpcGroup.Boss]["BattalDialogAft"] =7179


rwtTarget[tTarget.id1] = {}
rwtTarget[tTarget.id1]["Title"] = tLuaText[LANGUAGE_CONFIG][21690]
rwtTarget[tTarget.id1]["KillMonsterGroup"] = tMonsterGroup.Normal_1  
rwtTarget[tTarget.id1]["ReqCount"] = 1

rwtTarget[tTarget.id2] = {}
rwtTarget[tTarget.id2]["Title"] = tLuaText[LANGUAGE_CONFIG][21691]
rwtTarget[tTarget.id2]["KillMonsterGroup"] = tMonsterGroup.Normal_2
rwtTarget[tTarget.id2]["ReqCount"] = 1

rwtTarget[tTarget.id3] = {}
rwtTarget[tTarget.id3]["Title"] = tLuaText[LANGUAGE_CONFIG][21692]
rwtTarget[tTarget.id3]["KillMonsterGroup"] = tMonsterGroup.Elite_1
rwtTarget[tTarget.id3]["ReqCount"] = 1

rwtTarget[tTarget.id4] = {}
rwtTarget[tTarget.id4]["Title"] = tLuaText[LANGUAGE_CONFIG][21693]
rwtTarget[tTarget.id4]["KillMonsterGroup"] = tMonsterGroup.Elite_2
rwtTarget[tTarget.id4]["ReqCount"] = 1

rwtTarget[tTarget.id5] = {}
rwtTarget[tTarget.id5]["Title"] = tLuaText[LANGUAGE_CONFIG][21694]
rwtTarget[tTarget.id5]["KillMonsterGroup"] = tMonsterGroup.Boss 
rwtTarget[tTarget.id5]["ReqCount"] = 1



rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {tTarget.id1,tTarget.id2,tTarget.id3,tTarget.id4}
rwtCopyMapMission[nCopyMapMissId]["Target1_IsNotDel"] = true
rwtCopyMapMission[nCopyMapMissId]["Target1_NeedFinishNum"] = 2
rwtCopyMapMission[nCopyMapMissId]["Target2"] = {tTarget.id5}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6657
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTemp
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