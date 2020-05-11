--region [CopyMap]WuYeShiJianBu_19.lua
--Purpose:		多英雄副本-雾夜事件簿-第19关
--Creator: 		倪祖伟
--Created:		2019-09-19
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-04-30 $
--RCS-ID:		$Revision:8	$
--endregion


--===========================副本基础配置====================================--
--副本id
local nCopyMapMissId = 3112

--掩码
local nTemp = 1200

--任务目标
local tTarget = {}
tTarget.id1	= 60256 	 
tTarget.id2	= 60257
tTarget.id3	= 60258	
tTarget.id4	= 60259	
tTarget.id5	= 60260	 

--进副本创建gen
local tEnterCreateGen = {} 

tEnterCreateGen.NpcXieguai = 3112001	--蝎怪	荒漠异蝎
tEnterCreateGen.NpcNvWu    = 3112002	--女巫	雾夜女巫
tEnterCreateGen.NpcEMo     = 3112003	--恶魔  幽冥鬼煞
tEnterCreateGen.NpcMeiMo   = 3112004	--魅魔	魅影幻像
tEnterCreateGen.NpcBossGod = 3112005	--boss 蜘蛛女王 极渊领主

tEnterCreateGen.MonXieguai = 3112006	--蝎怪	荒漠异蝎
tEnterCreateGen.MonNvWu    = 3112007	--女巫	雾夜女巫
tEnterCreateGen.MonEMo	   = 3112008	--恶魔  幽冥鬼煞
tEnterCreateGen.MonMeiMo   = 3112009	--魅魔	魅影幻像
tEnterCreateGen.MonBossGod = 3112010	--boss 蜘蛛女王 极渊领主

tEnterCreateGen.Valve1 = 3112011	--光墙
tEnterCreateGen.Valve2 = 3112012	--障碍墙
tEnterCreateGen.Valve3 = 3112013	--障碍墙

--其他gen
local tGenId = {}
tGenId.LinShi1 = 3112014
tGenId.LinShi2 = 3112015
tGenId.LinShi3 = 3112016
tGenId.LinShi4 = 3112017


--怪物组
local tMonGroup={}
tMonGroup.Xieguai	=  200554
tMonGroup.NvWu		=  200555 
tMonGroup.EMo		=  200556 
tMonGroup.MeiMo		=  200557 
tMonGroup.BossGod	=  200558 
--怪物
local tMonId = {}
tMonId.Xieguai	= 1000974
tMonId.NvWu		= 1000975
tMonId.EMo		= 1000976
tMonId.MeiMo	= 1000977
tMonId.BossGod	= 1000978

--NPC
local tNpcGroup = {}
tNpcGroup.Xieguai   = 20820
tNpcGroup.NvWu		= 20821
tNpcGroup.EMo		= 20822
tNpcGroup.MeiMo		= 20823
tNpcGroup.BossGod   = 20824
tNpcGroup.LinShi1	= 20825
tNpcGroup.LinShi2	= 20826
tNpcGroup.LinShi3	= 20827
tNpcGroup.LinShi4	= 20828
local tLaMen = {
    3112018,
    3112019,
    3112020,
    3112021
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
rwtNpcGroup[tNpcGroup.BossGod]["BattalDialogAft"] =7180


--===================================
--任务目标配置
rwtTarget[tTarget.id1] = {}
rwtTarget[tTarget.id1]["Title"] = tLuaText[LANGUAGE_CONFIG][21680]
rwtTarget[tTarget.id1]["KillMonsterGroup"] = tMonGroup.Xieguai	
rwtTarget[tTarget.id1]["ReqCount"] = 1

rwtTarget[tTarget.id2] = {}
rwtTarget[tTarget.id2]["Title"] = tLuaText[LANGUAGE_CONFIG][21681]
rwtTarget[tTarget.id2]["KillMonsterGroup"] = tMonGroup.NvWu	
rwtTarget[tTarget.id2]["ReqCount"] = 1

rwtTarget[tTarget.id3] = {}
rwtTarget[tTarget.id3]["Title"] = tLuaText[LANGUAGE_CONFIG][21682]
rwtTarget[tTarget.id3]["KillMonsterGroup"] = tMonGroup.EMo	
rwtTarget[tTarget.id3]["ReqCount"] = 1

rwtTarget[tTarget.id4] = {}
rwtTarget[tTarget.id4]["Title"] = tLuaText[LANGUAGE_CONFIG][21683]
rwtTarget[tTarget.id4]["KillMonsterGroup"] = tMonGroup.MeiMo	
rwtTarget[tTarget.id4]["ReqCount"] = 1

rwtTarget[tTarget.id5] = {}
rwtTarget[tTarget.id5]["Title"] = tLuaText[LANGUAGE_CONFIG][21684]
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
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6657
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTemp
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"] = tMonsterTalent