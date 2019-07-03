--region *.lua
--Date
--By：Syl


--endregion

local nCopyMapId = 3099
local nTempDataId = 1187

local tMonster_Group = {}

tMonster_Group.Normal_1 = 200491					--第一只怪物	部落战士			10004	1000812
tMonster_Group.Normal_2 = 200492					--第二只怪物	感染的冒险者		10038	1000813
tMonster_Group.Boss = 200493						--首领			部落精英战士		10002	1000814

local nMonster_Boss = 1000814 						--首领

local tNpcGroup = {}
tNpcGroup.Normal_1 = 20667							--第一只怪物	部落战士		20670
tNpcGroup.Normal_2 = 20668                          --第二只怪物	感染的冒险者	20671	
tNpcGroup.Boss = 20669                              --首领			部落精英战士			
	
local nTarget_1 = 60191
local nTarget_2 = 60192
local nTarget_3 = 60193

local tDialog = {}
tDialog.EnterMap = 6657								--进副本
tDialog.TalkToNormal_1 = 6658						--事件3-1
tDialog.TalkToNormal_2 = 6659						--事件3-2
tDialog.TalkToBoss_Dead_1 = 6660					--事件5  是		两个怪都死了的对白
tDialog.TalkToBoss_Dead_2 = 6661					--事件5  否		两个怪没有都死
tDialog.BossDead = 6662								--事件6

local tGenId = {}
tGenId.Npc_Normal_1 = 3099003						--第一只怪物	部落战士
tGenId.Npc_Normal_2 = 3099004						--第二只怪物	感染的冒险者
tGenId.Npc_Boss = 3099005							--首领			部落精英战士	
tGenId.Npc_Normal_Dead_1 = 3099009					--死后第一只怪物	部落战士
tGenId.Npc_Normal_Dead_2 = 3099010					--死后第二只怪物	感染的冒险者
tGenId.Monster_Normal_1 = 3099006					--第一只怪物	部落战士
tGenId.Monster_Normal_2 = 3099007					--第二只怪物	感染的冒险者
tGenId.Monster_Boss = 3099008						--首领			部落精英战士
tGenId.Wall = 3099002								--空气墙


local tPosBattleEffect = {}
tPosBattleEffect.Npc_Normal_1   =  "0.28,0.06,11.01"
tPosBattleEffect.Npc_Normal_2   =  "-1.64,0.06,-5.43"

--机关 
--固定  	1094  	gen  3099001
--可删除	1095	gen  3099002
 
rwtTarget[nTarget_1] = {}
rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21597]
rwtTarget[nTarget_1]["KillMonsterGroup"] = {tMonster_Group.Normal_1}
rwtTarget[nTarget_1]["ReqCount"] = 1

rwtTarget[nTarget_2] = {}
rwtTarget[nTarget_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21598]
rwtTarget[nTarget_2]["KillMonsterGroup"] = {tMonster_Group.Normal_2}
rwtTarget[nTarget_2]["ReqCount"] = 1

rwtTarget[nTarget_3] = {}
rwtTarget[nTarget_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21599]
rwtTarget[nTarget_3]["KillMonsterGroup"] = {tMonster_Group.Boss}
rwtTarget[nTarget_3]["ReqCount"] = 1

--第一只怪物
rwtNpcGroup[tNpcGroup.Normal_1] = rwtNpcGroup[tNpcGroup.Normal_1] or {}
rwtNpcGroup[tNpcGroup.Normal_1]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Normal_1]["isBoss"] = false
-- rwtNpcGroup[tNpcGroup.Normal_1]["BattalDialogBef"] = tDialog.TalkToNormal_1 --战前对白
rwtNpcGroup[tNpcGroup.Normal_1]["GenIDMonster"] = tGenId.Monster_Normal_1	
-- rwtNpcGroup[tNpcGroup.Normal_1]["GenIdObstacles"] = tGenId.Wall						--打死怪删墙
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdNPCGroup"] = tGenId.Npc_Normal_1				--打死怪删自己
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdBattelAftNpc"] = tGenId.Npc_Normal_Dead_1 	--打死怪创建被囚禁的自己
rwtNpcGroup[tNpcGroup.Normal_1]["MonsterGroupID"] = tMonster_Group.Normal_1	
rwtNpcGroup[tNpcGroup.Normal_1]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Normal_1]["BuffIndex"] = 1
rwtNpcGroup[tNpcGroup.Normal_1]["companionIndex"] = {2}
rwtNpcGroup[tNpcGroup.Normal_1]["Floor"] = 2
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdValve"] = tGenId.Wall
rwtNpcGroup[tNpcGroup.Normal_1]["BattleEffectPos"] = tPosBattleEffect.Npc_Normal_1

--第二只怪物
rwtNpcGroup[tNpcGroup.Normal_2] = rwtNpcGroup[tNpcGroup.Normal_2] or {}
rwtNpcGroup[tNpcGroup.Normal_2]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Normal_2]["isBoss"] = false
-- rwtNpcGroup[tNpcGroup.Normal_2]["BattalDialogBef"] = tDialog.TalkToNormal_2 --战前对白
rwtNpcGroup[tNpcGroup.Normal_2]["GenIDMonster"] = tGenId.Monster_Normal_2	
-- rwtNpcGroup[tNpcGroup.Normal_2]["GenIdObstacles"] = tGenId.Wall	--打死怪删墙
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdNPCGroup"] = tGenId.Npc_Normal_2	--打死怪删自己
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdBattelAftNpc"] = tGenId.Npc_Normal_Dead_2 --打死怪创建被囚禁的自己
rwtNpcGroup[tNpcGroup.Normal_2]["MonsterGroupID"] = tMonster_Group.Normal_2	
rwtNpcGroup[tNpcGroup.Normal_2]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Normal_2]["BuffIndex"] = 2
rwtNpcGroup[tNpcGroup.Normal_2]["companionIndex"] = {1}
rwtNpcGroup[tNpcGroup.Normal_2]["Floor"] = 2
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdValve"] = tGenId.Wall
rwtNpcGroup[tNpcGroup.Normal_2]["BattleEffectPos"] = tPosBattleEffect.Npc_Normal_2

--和首领对话判断怪物
rwtNpcGroup[tNpcGroup.Boss] = rwtNpcGroup[tNpcGroup.Boss] or {}
rwtNpcGroup[tNpcGroup.Boss]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Boss]["isBoss"] = true
rwtNpcGroup[tNpcGroup.Boss]["GenIDMonster"] = tGenId.Monster_Boss
rwtNpcGroup[tNpcGroup.Boss]["GenIdNPCGroup"] = tGenId.Npc_Boss --打死怪删自己
rwtNpcGroup[tNpcGroup.Boss]["MonsterGroupID"] = tMonster_Group.Boss
rwtNpcGroup[tNpcGroup.Boss]["MonsterID"] = nMonster_Boss --BOSS的怪物ID
rwtNpcGroup[tNpcGroup.Boss]["buff"] = {1111,1121}
rwtNpcGroup[tNpcGroup.Boss]["buffTempdata"] = nTempDataId
rwtNpcGroup[tNpcGroup.Boss]["tGenIdLastMonsterNpc"] = {tGenId.Npc_Normal_1,tGenId.Npc_Normal_2}


--简单难度副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_1,nTarget_2}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget_3}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["Target1_IsNotDel"] = true
rwtCopyMapMission[nCopyMapId]["Target1_NeedFinishNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.EnterMap
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempDataId
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
