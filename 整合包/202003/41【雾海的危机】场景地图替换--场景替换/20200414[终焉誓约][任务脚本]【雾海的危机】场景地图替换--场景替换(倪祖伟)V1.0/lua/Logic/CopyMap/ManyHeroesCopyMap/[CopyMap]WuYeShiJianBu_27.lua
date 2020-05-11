--region [CopyMap]WuYeShiJianBu_27.lua
--Purpose:		多英雄副本-雾夜事件簿-第27关
--Creator: 		倪祖伟
--Created:		2020-04-14
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-04-30 $
--RCS-ID:		$Revision:6	$
--endregion


--===========================副本基础配置====================================--
--副本id
local nCopyMapMissId = 3169			

--掩码
local nTemp = 1309

--任务目标
local tTarget = {}
tTarget.id1	= 60387
tTarget.id2	= 60388
tTarget.id3	= 60389
tTarget.id4	= 60390
tTarget.id5	= 60391

--进副本创建gen
local tEnterCreateGen = {} 

tEnterCreateGen.NpcXieguai = 3169001
tEnterCreateGen.NpcNvWu    = 3169002
tEnterCreateGen.NpcEMo     = 3169003
tEnterCreateGen.NpcMeiMo   = 3169004
tEnterCreateGen.NpcBossGod = 3169005

tEnterCreateGen.MonXieguai = 3169201
tEnterCreateGen.MonNvWu    = 3169202
tEnterCreateGen.MonEMo	   = 3169203
tEnterCreateGen.MonMeiMo   = 3169204
tEnterCreateGen.MonBossGod = 3169205

tEnterCreateGen.Valve1 = 3169011
tEnterCreateGen.Valve2 = 3169012
tEnterCreateGen.Valve3 = 3169013

--其他gen
local tGenId = {}
tGenId.LinShi1 = 3169301		
tGenId.LinShi2 = 3169302		
tGenId.LinShi3 = 3169303		
tGenId.LinShi4 = 3169304		


--怪物组
local tMonGroup={}
tMonGroup.Xieguai	= 200890
tMonGroup.NvWu		= 200891
tMonGroup.EMo		= 200892
tMonGroup.MeiMo		= 200893
tMonGroup.BossGod	= 200894
--怪物
local tMonId = {}
tMonId.Xieguai	= 1001731
tMonId.NvWu		= 1001732
tMonId.EMo		= 1001733
tMonId.MeiMo	= 1001734
tMonId.BossGod	= 1001735

--NPC
local tNpcGroup = {}
tNpcGroup.Xieguai   = 21333
tNpcGroup.NvWu		= 21334
tNpcGroup.EMo		= 21335
tNpcGroup.MeiMo		= 21336
tNpcGroup.BossGod   = 21337
tNpcGroup.LinShi1	= 21338
tNpcGroup.LinShi2	= 21339
tNpcGroup.LinShi3	= 21340
tNpcGroup.LinShi4	= 21341
local tLaMen = {
    3169018,
    3169019,
    3169020,
    3169021
}

rwtNpcGroup[tNpcGroup.Xieguai] = rwtNpcGroup[tNpcGroup.Xieguai] or {}
rwtNpcGroup[tNpcGroup.Xieguai]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Xieguai]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Xieguai]["GenIDMonster"] = tEnterCreateGen.MonXieguai		--怪物gen
rwtNpcGroup[tNpcGroup.Xieguai]["GenIdObstacles"] = {tEnterCreateGen.Valve2,tEnterCreateGen.Valve3}		--怪物死后删除的障碍gen
rwtNpcGroup[tNpcGroup.Xieguai]["ValveGenIdLaMen"] = tLaMen[1]		--怪物死后删除的障碍gen
rwtNpcGroup[tNpcGroup.Xieguai]["GenIdNPCGroup"] = tEnterCreateGen.NpcXieguai		--怪物死后删除的NPCgen
rwtNpcGroup[tNpcGroup.Xieguai]["GenIdBattelAftNpc"] = tGenId.LinShi1			--删除原先的NPC后，要再生成一个自己，表示被囚禁，
rwtNpcGroup[tNpcGroup.Xieguai]["MonsterGroupID"] = tMonGroup.Xieguai
rwtNpcGroup[tNpcGroup.Xieguai]["MyBossId"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.Xieguai]["BuffIndex"] = 1
rwtNpcGroup[tNpcGroup.Xieguai]["GenIdCompanion"] = tEnterCreateGen.NpcNvWu
rwtNpcGroup[tNpcGroup.Xieguai]["tGenIdLastMonsterNpc"] = nil
rwtNpcGroup[tNpcGroup.Xieguai]["Floor"] = 1


rwtNpcGroup[tNpcGroup.NvWu] = rwtNpcGroup[tNpcGroup.NvWu] or {}
rwtNpcGroup[tNpcGroup.NvWu]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.NvWu]["isBoss"] = false
rwtNpcGroup[tNpcGroup.NvWu]["GenIDMonster"] = tEnterCreateGen.MonNvWu
rwtNpcGroup[tNpcGroup.NvWu]["GenIdObstacles"] = {tEnterCreateGen.Valve2,tEnterCreateGen.Valve3}
rwtNpcGroup[tNpcGroup.NvWu]["ValveGenIdLaMen"] = tLaMen[2]
rwtNpcGroup[tNpcGroup.NvWu]["GenIdNPCGroup"] = tEnterCreateGen.NpcNvWu
rwtNpcGroup[tNpcGroup.NvWu]["GenIdBattelAftNpc"] = tGenId.LinShi2
rwtNpcGroup[tNpcGroup.NvWu]["MonsterGroupID"] = tMonGroup.NvWu
rwtNpcGroup[tNpcGroup.NvWu]["MyBossId"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.NvWu]["BuffIndex"] = 2
rwtNpcGroup[tNpcGroup.NvWu]["GenIdCompanion"] = tEnterCreateGen.NpcXieguai
rwtNpcGroup[tNpcGroup.NvWu]["tGenIdLastMonsterNpc"] = nil
rwtNpcGroup[tNpcGroup.NvWu]["Floor"] = 1


rwtNpcGroup[tNpcGroup.EMo] = rwtNpcGroup[tNpcGroup.EMo] or {}
rwtNpcGroup[tNpcGroup.EMo]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.EMo]["isBoss"] = false
rwtNpcGroup[tNpcGroup.EMo]["GenIDMonster"] = tEnterCreateGen.MonEMo
rwtNpcGroup[tNpcGroup.EMo]["GenIdObstacles"] = tEnterCreateGen.Valve1
rwtNpcGroup[tNpcGroup.EMo]["ValveGenIdLaMen"] = tLaMen[3]
rwtNpcGroup[tNpcGroup.EMo]["GenIdNPCGroup"] = tEnterCreateGen.NpcEMo
rwtNpcGroup[tNpcGroup.EMo]["GenIdBattelAftNpc"] = tGenId.LinShi3
rwtNpcGroup[tNpcGroup.EMo]["MonsterGroupID"] = tNpcGroup.EMo 
rwtNpcGroup[tNpcGroup.EMo]["MyBossId"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.EMo]["BuffIndex"] = 3
rwtNpcGroup[tNpcGroup.EMo]["GenIdCompanion"] = tEnterCreateGen.NpcMeiMo
rwtNpcGroup[tNpcGroup.EMo]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.NpcXieguai,tEnterCreateGen.NpcNvWu}
rwtNpcGroup[tNpcGroup.EMo]["Floor"] = 2


rwtNpcGroup[tNpcGroup.MeiMo] = rwtNpcGroup[tNpcGroup.MeiMo] or {}
rwtNpcGroup[tNpcGroup.MeiMo]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.MeiMo]["isBoss"] = false
rwtNpcGroup[tNpcGroup.MeiMo]["GenIDMonster"] = tEnterCreateGen.MonMeiMo
rwtNpcGroup[tNpcGroup.MeiMo]["GenIdObstacles"] = tEnterCreateGen.Valve1
rwtNpcGroup[tNpcGroup.MeiMo]["ValveGenIdLaMen"] = tLaMen[4]
rwtNpcGroup[tNpcGroup.MeiMo]["GenIdNPCGroup"] = tEnterCreateGen.NpcMeiMo
rwtNpcGroup[tNpcGroup.MeiMo]["GenIdBattelAftNpc"] = tGenId.LinShi4
rwtNpcGroup[tNpcGroup.MeiMo]["MonsterGroupID"] = tNpcGroup.MeiMo
rwtNpcGroup[tNpcGroup.MeiMo]["MyBossId"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.MeiMo]["BuffIndex"] = 4
rwtNpcGroup[tNpcGroup.MeiMo]["GenIdCompanion"] = tEnterCreateGen.NpcEMo
rwtNpcGroup[tNpcGroup.MeiMo]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.NpcXieguai,tEnterCreateGen.NpcNvWu}
rwtNpcGroup[tNpcGroup.MeiMo]["Floor"] = 2


rwtNpcGroup[tNpcGroup.BossGod] = rwtNpcGroup[tNpcGroup.BossGod] or {}
rwtNpcGroup[tNpcGroup.BossGod]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.BossGod]["isBoss"] = true
rwtNpcGroup[tNpcGroup.BossGod]["GenIDMonster"] = tEnterCreateGen.MonBossGod
rwtNpcGroup[tNpcGroup.BossGod]["GenIdNPCGroup"] = tEnterCreateGen.NpcBossGod
rwtNpcGroup[tNpcGroup.BossGod]["MonsterGroupID"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.BossGod]["MonsterID"] = tMonId.BossGod
rwtNpcGroup[tNpcGroup.BossGod]["buff"] = {1011,1021,1031,1041}
rwtNpcGroup[tNpcGroup.BossGod]["NpcChildren"] = {tNpcGroup.Xieguai,tNpcGroup.NvWu,tNpcGroup.EMo,tNpcGroup.MeiMo}
rwtNpcGroup[tNpcGroup.BossGod]["buffTempdata"] = nTemp
rwtNpcGroup[tNpcGroup.BossGod]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.NpcEMo,tEnterCreateGen.NpcMeiMo}
rwtNpcGroup[tNpcGroup.BossGod]["BattalDialogAft"] =7189

--===================================
--任务目标配置
rwtTarget[tTarget.id1] = {}
rwtTarget[tTarget.id1]["Title"] = tLuaText[LANGUAGE_CONFIG][21650]
rwtTarget[tTarget.id1]["KillMonsterGroup"] = tMonGroup.Xieguai	
rwtTarget[tTarget.id1]["ReqCount"] = 1

rwtTarget[tTarget.id2] = {}
rwtTarget[tTarget.id2]["Title"] = tLuaText[LANGUAGE_CONFIG][21651]
rwtTarget[tTarget.id2]["KillMonsterGroup"] = tMonGroup.NvWu	
rwtTarget[tTarget.id2]["ReqCount"] = 1

rwtTarget[tTarget.id3] = {}
rwtTarget[tTarget.id3]["Title"] = tLuaText[LANGUAGE_CONFIG][21652]
rwtTarget[tTarget.id3]["KillMonsterGroup"] = tMonGroup.EMo	
rwtTarget[tTarget.id3]["ReqCount"] = 1

rwtTarget[tTarget.id4] = {}
rwtTarget[tTarget.id4]["Title"] = tLuaText[LANGUAGE_CONFIG][21653]
rwtTarget[tTarget.id4]["KillMonsterGroup"] = tMonGroup.MeiMo	
rwtTarget[tTarget.id4]["ReqCount"] = 1

rwtTarget[tTarget.id5] = {}
rwtTarget[tTarget.id5]["Title"] = tLuaText[LANGUAGE_CONFIG][21654]
rwtTarget[tTarget.id5]["KillMonsterGroup"] = tMonGroup.BossGod	
rwtTarget[tTarget.id5]["ReqCount"] = 1



local tMonsterTalent = {}
    tMonsterTalent[1] = {}
    tMonsterTalent[1]["MonGenId"] = rwtNpcGroup[tNpcGroup.BossGod]["GenIDMonster"]
    tMonsterTalent[1]["MonsterId"] = rwtNpcGroup[tNpcGroup.BossGod]["MonsterID"]
    tMonsterTalent[1]["TalentType"] = rwtNpcGroup[tNpcGroup.BossGod]["buff"][1]

    tMonsterTalent[2] = {}
    tMonsterTalent[2]["MonGenId"] = rwtNpcGroup[tNpcGroup.BossGod]["GenIDMonster"]
    tMonsterTalent[2]["MonsterId"] = rwtNpcGroup[tNpcGroup.BossGod]["MonsterID"]
    tMonsterTalent[2]["TalentType"] = rwtNpcGroup[tNpcGroup.BossGod]["buff"][2]

    tMonsterTalent[3] = {}
    tMonsterTalent[3]["MonGenId"] = rwtNpcGroup[tNpcGroup.BossGod]["GenIDMonster"]
    tMonsterTalent[3]["MonsterId"] = rwtNpcGroup[tNpcGroup.BossGod]["MonsterID"]
    tMonsterTalent[3]["TalentType"] = rwtNpcGroup[tNpcGroup.BossGod]["buff"][3]

    tMonsterTalent[4] = {}
    tMonsterTalent[4]["MonGenId"] = rwtNpcGroup[tNpcGroup.BossGod]["GenIDMonster"]
    tMonsterTalent[4]["MonsterId"] = rwtNpcGroup[tNpcGroup.BossGod]["MonsterID"]
    tMonsterTalent[4]["TalentType"] = rwtNpcGroup[tNpcGroup.BossGod]["buff"][4]


--简单难度副本
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
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTemp
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"] = tMonsterTalent