--region 		WuYeShiJianBu_2.lua
--Purpose:		魔族入侵第二关
--Creator: 		苏亚玲
--Created:		2019-04-13
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-01-02 $
--RCS-ID:		$Revision: 6 $
--endregion


local nCopyMapId = 3099

local tMonsterGroup = {}

tMonsterGroup.Normal_1 = 200777					--52003   1001254  幽影刺客	
tMonsterGroup.Normal_2 = 200778					--52008   1001255  夜幕战灵
tMonsterGroup.Elite_1   = 200491   				--10048	1000812   亵职的官员
tMonsterGroup.Elite_2   = 200492                --52001	1000813  禁卫军逃兵
tMonsterGroup.Boss = 200493						--52010	1000814  幽岚领主塔伦	1001632  禁锢黯魂		52008

local nMonster_Boss = 1000814 						--首领

local tNpcGroup = {}
tNpcGroup.Normal_1 = 21025							--21027
tNpcGroup.Normal_2 = 21026                          --21028
tNpcGroup.Elite_1   = 20667							--20670
tNpcGroup.Elite_2   = 20668							--20671
tNpcGroup.Boss = 20669                              --首领			部落精英战士			
	

local tDialog = {}
tDialog.EnterMap = 6657								--进副本
tDialog.TalkToNormal_1 = 6658						--事件3-1
tDialog.TalkToNormal_2 = 6659						--事件3-2
tDialog.TalkToBoss_Dead_1 = 6660					--事件5  是		两个怪都死了的对白
tDialog.TalkToBoss_Dead_2 = 6661					--事件5  否		两个怪没有都死
tDialog.BossDead = 6662								--事件6

local tGenId = {}
tGenId.Npc_Normal_1 = 3099011						--第一只怪物	部落战士
tGenId.Npc_Normal_2 = 3099012						--第二只怪物	感染的冒险者
tGenId.Npc_Elite_1 = 3099003
tGenId.Npc_Elite_2 = 3099004
tGenId.Npc_Boss = 3099005							--首领			部落精英战士	

tGenId.Npc_Dead_Normal_1 = 3099013					--死后第一只怪物	部落战士
tGenId.Npc_Dead_Normal_2 = 3099014					--死后第二只怪物	感染的冒险者
tGenId.Npc_Dead_Elite_1 = 3099009  
tGenId.Npc_Dead_Elite_2 = 3099010  

tGenId.Monster_Normal_1 = 3099015					--第一只怪物	部落战士
tGenId.Monster_Normal_2 = 3099016					--第二只怪物	感染的冒险者
tGenId.Monster_Elite_1  = 3099006 
tGenId.Monster_Elite_2  = 3099007 
tGenId.Monster_Boss = 3099008						--首领			部落精英战士
tGenId.Valve_1 = 3099002								--空气墙
tGenId.Valve_2 = 3099017								


local tPosBattleEffect = {}
tPosBattleEffect.Npc_Normal_1 = "25.27,1.64,-15.47"
tPosBattleEffect.Npc_Normal_2 = "16.48,1.64,-24.2"
tPosBattleEffect.Npc_Elite_1 =  "0.28,0.06,11.01"
tPosBattleEffect.Npc_Elite_2 =  "-1.64,0.06,-5.43"

--机关 
--固定  	1094  	gen  3099001
--可删除	1095	gen  3099002   1126  3099017


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
rwtNpcGroup[tNpcGroup.Boss]["MonsterID"] = nMonster_Boss
rwtNpcGroup[tNpcGroup.Boss]["buff"] = {1622,1608,1011,1021}
rwtNpcGroup[tNpcGroup.Boss]["buffTempdata"] = 1191
rwtNpcGroup[tNpcGroup.Boss]["tGenIdLastMonsterNpc"] = {tGenId.Npc_Elite_1,tGenId.Npc_Elite_2}
rwtNpcGroup[tNpcGroup.Boss]["BattalDialogAft"] = 7082
rwtNpcGroup[tNpcGroup.Boss]["nMapIndex"] = CONST_MANYHEROS_MAP.DYXLXMD

rwtTarget[60191] = {}
rwtTarget[60191]["Title"] = tLuaText[LANGUAGE_CONFIG][21597]
rwtTarget[60191]["KillMonsterGroup"] = tMonsterGroup.Normal_1  
rwtTarget[60191]["ReqCount"] = 1

rwtTarget[60192] = {}
rwtTarget[60192]["Title"] = tLuaText[LANGUAGE_CONFIG][21598]
rwtTarget[60192]["KillMonsterGroup"] = tMonsterGroup.Normal_2
rwtTarget[60192]["ReqCount"] = 1

rwtTarget[60336] = {}
rwtTarget[60336]["Title"] = tLuaText[LANGUAGE_CONFIG][21873]
rwtTarget[60336]["KillMonsterGroup"] = tMonsterGroup.Elite_1
rwtTarget[60336]["ReqCount"] = 1

rwtTarget[60337] = {}
rwtTarget[60337]["Title"] = tLuaText[LANGUAGE_CONFIG][21874]
rwtTarget[60337]["KillMonsterGroup"] = tMonsterGroup.Elite_2
rwtTarget[60337]["ReqCount"] = 1

rwtTarget[60193] = {}
rwtTarget[60193]["Title"] = tLuaText[LANGUAGE_CONFIG][21599]
rwtTarget[60193]["KillMonsterGroup"] = tMonsterGroup.Boss 
rwtTarget[60193]["ReqCount"] = 1



rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60191,60192,60336,60337}
rwtCopyMapMission[nCopyMapId]["Target1_IsNotDel"] = true
rwtCopyMapMission[nCopyMapId]["Target1_NeedFinishNum"] = 2
rwtCopyMapMission[nCopyMapId]["Target2"] = {60193}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6657
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = 1187
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1]["MonGenId"] = rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1]["MonsterId"] = rwtNpcGroup[tNpcGroup.Boss]["MonsterID"]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1]["TalentType"] = rwtNpcGroup[tNpcGroup.Boss]["buff"][1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2]["MonGenId"] = rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2]["MonsterId"] = rwtNpcGroup[tNpcGroup.Boss]["MonsterID"]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2]["TalentType"] = rwtNpcGroup[tNpcGroup.Boss]["buff"][2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][3]["MonGenId"] = rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][3]["MonsterId"] = rwtNpcGroup[tNpcGroup.Boss]["MonsterID"]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][3]["TalentType"] = rwtNpcGroup[tNpcGroup.Boss]["buff"][3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][4]["MonGenId"] = rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][4]["MonsterId"] = rwtNpcGroup[tNpcGroup.Boss]["MonsterID"]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][4]["TalentType"] = rwtNpcGroup[tNpcGroup.Boss]["buff"][4]
