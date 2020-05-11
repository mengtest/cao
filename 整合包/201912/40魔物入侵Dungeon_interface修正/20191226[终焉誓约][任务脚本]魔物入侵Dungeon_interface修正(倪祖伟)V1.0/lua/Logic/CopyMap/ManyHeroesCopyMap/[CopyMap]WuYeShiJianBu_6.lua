--region [CopyMap]WuYeShiJianBu_6.lua
--Purpose:		危机黯月城第6层
--Creator: 		胡青
--Created:		2019-04-26
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-01-02 $
--RCS-ID:		$Revision: 4 $
--endregion

local nCopyMapMissId = 3102
local tEnterCreateGen = {
    3102001,3102002,3102003,3102004,3102005,    --5只怪
    3102006,3102007,3102008,3102009,3102010,    --5只npc
    3102011,3102016,3102017                           --空气墙
}
local tNpcGroup  = {}
tNpcGroup.Normal_1  = 20710
tNpcGroup.Normal_2  = 20711
tNpcGroup.Elite_1   = 20712
tNpcGroup.Elite_2   = 20713
tNpcGroup.Boss      = 20714

local tMonsterGroup  = {}
tMonsterGroup.Normal_1  =    200504
tMonsterGroup.Normal_2  =    200505
tMonsterGroup.Elite_1   =    200506
tMonsterGroup.Elite_2   =    200507
tMonsterGroup.Boss      =    200508

--怪物id
local tMonsterId = {}
tMonsterId.Normal_1  =    1000826
tMonsterId.Normal_2  =    1000827
tMonsterId.Elite_1   =    1000828
tMonsterId.Elite_2   =    1000829
tMonsterId.Boss      =    1000830

local tGenId = {}
tGenId.Monster_Normal_1 =  3102001
tGenId.Monster_Normal_2 =  3102002
tGenId.Monster_Elite_1  =  3102003
tGenId.Monster_Elite_2  =  3102004
tGenId.Monster_Boss     =  3102005

tGenId.Npc_Normal_1     = 3102006
tGenId.Npc_Normal_2     = 3102007
tGenId.Npc_Elite_1      = 3102008
tGenId.Npc_Elite_2      = 3102009
tGenId.Npc_Boss         = 3102010

tGenId.Valve_1 = 3102016
tGenId.Valve_2 = 3102017

tGenId.Npc_Dead_Normal_1     =   3102012
tGenId.Npc_Dead_Normal_2     =   3102013
tGenId.Npc_Dead_Elite_1      =   3102014
tGenId.Npc_Dead_Elite_2      =   3102015

local tPosBattleEffect = {}
tPosBattleEffect.Npc_Normal_1  =  "25.27,1.64,-15.47"
tPosBattleEffect.Npc_Normal_2  =  "16.48,1.64,-24.2"
tPosBattleEffect.Npc_Elite_1   =  "0.28,0.06,11.01"
tPosBattleEffect.Npc_Elite_2   =  "-1.64,0.06,-5.43"
  
rwtNpcGroup[tNpcGroup.Normal_1] = rwtNpcGroup[tNpcGroup.Normal_1] or {}
rwtNpcGroup[tNpcGroup.Normal_1]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Normal_1]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Normal_1]["GenIDMonster"] = tGenId.Monster_Normal_1
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdValve"] = tGenId.Valve_1
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdNPCGroup"] = tGenId.Npc_Normal_1
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdBattelAftNpc"] = tGenId.Npc_Dead_Normal_1
rwtNpcGroup[tNpcGroup.Normal_1]["MonsterGroupID"] = tMonsterGroup.Normal_1
rwtNpcGroup[tNpcGroup.Normal_1]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Normal_1]["BuffIndex"] = 1
rwtNpcGroup[tNpcGroup.Normal_1]["companionIndex"] = {2}
rwtNpcGroup[tNpcGroup.Normal_1]["tGenIdLastMonsterNpc"] = nil
rwtNpcGroup[tNpcGroup.Normal_1]["Floor"] = 1
rwtNpcGroup[tNpcGroup.Normal_1]["BattleEffectPos"] = tPosBattleEffect.Npc_Normal_1
rwtNpcGroup[tNpcGroup.Normal_1]["nMapIndex"] = CONST_MANYHEROS_MAP.DYXLXMD

rwtNpcGroup[tNpcGroup.Normal_2] = rwtNpcGroup[tNpcGroup.Normal_2] or {}
rwtNpcGroup[tNpcGroup.Normal_2]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Normal_2]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Normal_2]["GenIDMonster"] = tGenId.Monster_Normal_2
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdValve"] = tGenId.Valve_1
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdNPCGroup"] = tGenId.Npc_Normal_2
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdBattelAftNpc"] = tGenId.Npc_Dead_Normal_2
rwtNpcGroup[tNpcGroup.Normal_2]["MonsterGroupID"] = tMonsterGroup.Normal_2
rwtNpcGroup[tNpcGroup.Normal_2]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Normal_2]["BuffIndex"] = 2
rwtNpcGroup[tNpcGroup.Normal_2]["companionIndex"] = {1}
rwtNpcGroup[tNpcGroup.Normal_2]["tGenIdLastMonsterNpc"] = nil
rwtNpcGroup[tNpcGroup.Normal_2]["Floor"] = 1
rwtNpcGroup[tNpcGroup.Normal_2]["BattleEffectPos"] = tPosBattleEffect.Npc_Normal_2
rwtNpcGroup[tNpcGroup.Normal_2]["nMapIndex"] = CONST_MANYHEROS_MAP.DYXLXMD

rwtNpcGroup[tNpcGroup.Elite_1] = rwtNpcGroup[tNpcGroup.Elite_1] or {}
rwtNpcGroup[tNpcGroup.Elite_1]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Elite_1]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Elite_1]["GenIDMonster"] = tGenId.Monster_Elite_1
rwtNpcGroup[tNpcGroup.Elite_1]["GenIdValve"] = tGenId.Valve_2
rwtNpcGroup[tNpcGroup.Elite_1]["GenIdNPCGroup"] = tGenId.Npc_Elite_1
rwtNpcGroup[tNpcGroup.Elite_1]["GenIdBattelAftNpc"] = tGenId.Npc_Dead_Elite_1
rwtNpcGroup[tNpcGroup.Elite_1]["MonsterGroupID"] = tMonsterGroup.Elite_1
rwtNpcGroup[tNpcGroup.Elite_1]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Elite_1]["BuffIndex"] = 3
rwtNpcGroup[tNpcGroup.Elite_1]["companionIndex"] = {4}
rwtNpcGroup[tNpcGroup.Elite_1]["tGenIdLastMonsterNpc"] = {tGenId.Npc_Normal_1,tGenId.Npc_Normal_2}
rwtNpcGroup[tNpcGroup.Elite_1]["Floor"] = 2
rwtNpcGroup[tNpcGroup.Elite_1]["BattleEffectPos"] = tPosBattleEffect.Npc_Elite_1
rwtNpcGroup[tNpcGroup.Elite_1]["nMapIndex"] = CONST_MANYHEROS_MAP.DYXLXMD

rwtNpcGroup[tNpcGroup.Elite_2] = rwtNpcGroup[tNpcGroup.Elite_2] or {}
rwtNpcGroup[tNpcGroup.Elite_2]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Elite_2]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Elite_2]["GenIDMonster"] = tGenId.Monster_Elite_2
rwtNpcGroup[tNpcGroup.Elite_2]["GenIdValve"] = tGenId.Valve_2
rwtNpcGroup[tNpcGroup.Elite_2]["GenIdNPCGroup"] = tGenId.Npc_Elite_2
rwtNpcGroup[tNpcGroup.Elite_2]["GenIdBattelAftNpc"] = tGenId.Npc_Dead_Elite_2
rwtNpcGroup[tNpcGroup.Elite_2]["MonsterGroupID"] = tMonsterGroup.Elite_2
rwtNpcGroup[tNpcGroup.Elite_2]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Elite_2]["BuffIndex"] = 4
rwtNpcGroup[tNpcGroup.Elite_2]["companionIndex"] = {3}
rwtNpcGroup[tNpcGroup.Elite_2]["tGenIdLastMonsterNpc"] = {tGenId.Npc_Normal_1,tGenId.Npc_Normal_2}
rwtNpcGroup[tNpcGroup.Elite_2]["Floor"] = 2
rwtNpcGroup[tNpcGroup.Elite_2]["BattleEffectPos"] = tPosBattleEffect.Npc_Elite_2
rwtNpcGroup[tNpcGroup.Elite_2]["nMapIndex"] = CONST_MANYHEROS_MAP.DYXLXMD

rwtNpcGroup[tNpcGroup.Boss] = rwtNpcGroup[tNpcGroup.Boss] or {}
rwtNpcGroup[tNpcGroup.Boss]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Boss]["isBoss"] = true
rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"] = tGenId.Monster_Boss
rwtNpcGroup[tNpcGroup.Boss]["GenIdNPCGroup"] = tGenId.Npc_Boss
rwtNpcGroup[tNpcGroup.Boss]["MonsterGroupID"] = tMonsterGroup.Boss
rwtNpcGroup[tNpcGroup.Boss]["MonsterID"] = 1000830
rwtNpcGroup[tNpcGroup.Boss]["buff"] = {1623,1636,1604,1620}
rwtNpcGroup[tNpcGroup.Boss]["buffTempdata"] = 1191
rwtNpcGroup[tNpcGroup.Boss]["tGenIdLastMonsterNpc"] = {tGenId.Npc_Elite_1,tGenId.Npc_Elite_2}
rwtNpcGroup[tNpcGroup.Boss]["BattalDialogAft"] = 7087
rwtNpcGroup[tNpcGroup.Boss]["nMapIndex"] = CONST_MANYHEROS_MAP.DYXLXMD

rwtTarget[60206] = {}
rwtTarget[60206]["Title"] = tLuaText[LANGUAGE_CONFIG][21614]
rwtTarget[60206]["KillMonsterGroup"] = tMonsterGroup.Normal_1  
rwtTarget[60206]["ReqCount"] = 1

rwtTarget[60207] = {}
rwtTarget[60207]["Title"] = tLuaText[LANGUAGE_CONFIG][21615]
rwtTarget[60207]["KillMonsterGroup"] = tMonsterGroup.Normal_2
rwtTarget[60207]["ReqCount"] = 1

rwtTarget[60208] = {}
rwtTarget[60208]["Title"] = tLuaText[LANGUAGE_CONFIG][21616]
rwtTarget[60208]["KillMonsterGroup"] = tMonsterGroup.Elite_1
rwtTarget[60208]["ReqCount"] = 1

rwtTarget[60209] = {}
rwtTarget[60209]["Title"] = tLuaText[LANGUAGE_CONFIG][21617]
rwtTarget[60209]["KillMonsterGroup"] = tMonsterGroup.Elite_2
rwtTarget[60209]["ReqCount"] = 1

rwtTarget[60210] = {}
rwtTarget[60210]["Title"] = tLuaText[LANGUAGE_CONFIG][21618]
rwtTarget[60210]["KillMonsterGroup"] = tMonsterGroup.Boss 
rwtTarget[60210]["ReqCount"] = 1



rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {60206,60207,60208,60209}
rwtCopyMapMission[nCopyMapMissId]["Target1_IsNotDel"] = true
rwtCopyMapMission[nCopyMapMissId]["Target1_NeedFinishNum"] = 2
rwtCopyMapMission[nCopyMapMissId]["Target2"] = {60210}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6657
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = 1191
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