--region *.lua
--Date
--zy


--endregion

local nCopyMapId = 3098
local nTempDataId = 1186

local tMonster_Group = {}

tMonster_Group.Normal_1 = 200486
tMonster_Group.Normal_2 = 200487
tMonster_Group.Boss = 200488

local nMonster_Boss = 1000810 

local tNpcGroup = {}
tNpcGroup.Normal_1 = 20662
tNpcGroup.Normal_2 = 20663
tNpcGroup.Boss = 20664

local nTarget_1 = 60188
local nTarget_2 = 60189
local nTarget_3 = 60190

local tDialog = {}
tDialog.EnterMap = 6651
tDialog.TalkToNormal_1 = 6652
tDialog.TalkToNormal_2 = 6653
tDialog.TalkToBoss_Dead_1 = 6655
tDialog.TalkToBoss_Dead_2 = 6654
tDialog.BossDead = 6656

local tGenId = {}
tGenId.Npc_Normal_1 = 3098003
tGenId.Npc_Normal_2 = 3098004
tGenId.Npc_Boss = 3098005
tGenId.Npc_Normal_Dead_1 = 3098009
tGenId.Npc_Normal_Dead_2 = 3098010
tGenId.Monster_Normal_1 = 3098006
tGenId.Monster_Normal_2 = 3098007
tGenId.Monster_Boss = 3098008
tGenId.Wall = 3098002

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

rwtNpcGroup[tNpcGroup.Normal_1] = rwtNpcGroup[tNpcGroup.Normal_1] or {}
rwtNpcGroup[tNpcGroup.Normal_1]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Normal_1]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Normal_1]["GenIDMonster"] = tGenId.Monster_Normal_1	
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdObstacles"] = tGenId.Wall	--打死怪删墙
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdNPCGroup"] = tGenId.Npc_Normal_1	--打死怪删自己
rwtNpcGroup[tNpcGroup.Normal_1]["GenIdBattelAftNpc"] = tGenId.Npc_Normal_Dead_1 --打死怪创建被囚禁的自己
rwtNpcGroup[tNpcGroup.Normal_1]["MonsterGroupID"] = tMonster_Group.Normal_1	
rwtNpcGroup[tNpcGroup.Normal_1]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Normal_1]["BuffIndex"] = 1
rwtNpcGroup[tNpcGroup.Normal_1]["companionIndex"] = {2}
rwtNpcGroup[tNpcGroup.Normal_1]["Floor"] = 2

rwtNpcGroup[tNpcGroup.Normal_2] = rwtNpcGroup[tNpcGroup.Normal_2] or {}
rwtNpcGroup[tNpcGroup.Normal_2]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Normal_2]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Normal_2]["GenIDMonster"] = tGenId.Monster_Normal_2	
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdObstacles"] = tGenId.Wall	--打死怪删墙
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdNPCGroup"] = tGenId.Npc_Normal_2	--打死怪删自己
rwtNpcGroup[tNpcGroup.Normal_2]["GenIdBattelAftNpc"] = tGenId.Npc_Normal_Dead_2 --打死怪创建被囚禁的自己
rwtNpcGroup[tNpcGroup.Normal_2]["MonsterGroupID"] = tMonster_Group.Normal_2	
rwtNpcGroup[tNpcGroup.Normal_2]["MyBossId"] = tNpcGroup.Boss
rwtNpcGroup[tNpcGroup.Normal_2]["BuffIndex"] = 2
rwtNpcGroup[tNpcGroup.Normal_2]["companionIndex"] = {1}
rwtNpcGroup[tNpcGroup.Normal_2]["Floor"] = 2

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
rwtCopyMapMission[nCopyMapId]["Target2"]  = {nTarget_3}
rwtCopyMapMission[nCopyMapId]["Target1_IsNotDel"] = true
rwtCopyMapMission[nCopyMapId]["Target1_NeedFinishNum"] = 1
--rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
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

