--region *.lua
--Date
--多英雄副本-雾夜事件簿-第8关
--


--endregion


--===========================副本基础配置====================================--
--副本id
local nCopyMapMissId = 3111

--掩码
local nTemp = 1199

--任务目标
local tTarget = {}
tTarget.id1	= 60246 	 
tTarget.id2	= 60247	 
tTarget.id3	= 60248	
tTarget.id4	= 60249	
tTarget.id5	= 60250	 

--进副本创建gen
local tEnterCreateGen = {} 

tEnterCreateGen.NpcXieguai = 3111001	--蝎怪	荒漠异蝎
tEnterCreateGen.NpcNvWu    = 3111002	--女巫	雾夜女巫
tEnterCreateGen.NpcEMo     = 3111003	--恶魔  幽冥鬼煞
tEnterCreateGen.NpcMeiMo   = 3111004	--魅魔	魅影幻像
tEnterCreateGen.NpcBossGod = 3111005	--boss 蜘蛛女王 极渊领主

tEnterCreateGen.MonXieguai = 3111006	--蝎怪	荒漠异蝎
tEnterCreateGen.MonNvWu    = 3111007	--女巫	雾夜女巫
tEnterCreateGen.MonEMo	   = 3111008	--恶魔  幽冥鬼煞
tEnterCreateGen.MonMeiMo   = 3111009	--魅魔	魅影幻像
tEnterCreateGen.MonBossGod = 3111010	--boss 蜘蛛女王 极渊领主

tEnterCreateGen.Valve1 = 3111011	--光墙
tEnterCreateGen.Valve2 = 3111012	--障碍墙
tEnterCreateGen.Valve3 = 3111013	--障碍墙

--其他gen
local tGenId = {}
tGenId.LinShi1 = 3111014
tGenId.LinShi2 = 3111015
tGenId.LinShi3 = 3111016
tGenId.LinShi4 = 3111017


--怪物组
local tMonGroup={}
tMonGroup.Xieguai	= 200549
tMonGroup.NvWu		= 200550
tMonGroup.EMo		= 200551
tMonGroup.MeiMo		= 200552
tMonGroup.BossGod	= 200553
--怪物
local tMonId = {}
tMonId.Xieguai	= 1000964
tMonId.NvWu		= 1000965
tMonId.EMo		= 1000966
tMonId.MeiMo	= 1000967
tMonId.BossGod	= 1000968

--NPC
local tNpcGroup = {}
tNpcGroup.Xieguai   = 20802
tNpcGroup.NvWu		= 20803
tNpcGroup.EMo		= 20804
tNpcGroup.MeiMo		= 20805
tNpcGroup.BossGod   = 20806
tNpcGroup.LinShi1	= 20807
tNpcGroup.LinShi2	= 20808
tNpcGroup.LinShi3	= 20809
tNpcGroup.LinShi4	= 20810

rwtNpcGroup[tNpcGroup.Xieguai] = rwtNpcGroup[tNpcGroup.Xieguai] or {}
rwtNpcGroup[tNpcGroup.Xieguai]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Xieguai]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Xieguai]["GenIDMonster"] = tEnterCreateGen.MonXieguai		--怪物gen
rwtNpcGroup[tNpcGroup.Xieguai]["GenIdObstacles"] = tEnterCreateGen.Valve2		--怪物死后删除的障碍gen
rwtNpcGroup[tNpcGroup.Xieguai]["GenIdNPCGroup"] = tEnterCreateGen.NpcXieguai		--怪物死后删除的NPCgen
rwtNpcGroup[tNpcGroup.Xieguai]["GenIdBattelAftNpc"] = tGenId.LinShi1			--删除原先的NPC后，要再生成一个自己，表示被囚禁，
rwtNpcGroup[tNpcGroup.Xieguai]["MonsterGroupID"] = tMonGroup.Xieguai
rwtNpcGroup[tNpcGroup.Xieguai]["MyBossId"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.Xieguai]["BuffIndex"] = 1
rwtNpcGroup[tNpcGroup.Xieguai]["companionIndex"] = {2}
rwtNpcGroup[tNpcGroup.Xieguai]["tGenIdLastMonsterNpc"] = nil
rwtNpcGroup[tNpcGroup.Xieguai]["Floor"] = 1
--rwtNpcGroup[tNpcGroup.Xieguai]["MoveWalleftPos"] = "-16.47282,0.09567789,16.9677"
--rwtNpcGroup[tNpcGroup.Xieguai]["MoveWalleftRotation"] = -38
--rwtNpcGroup[tNpcGroup.Xieguai]["BattleEffectPos"] = "-14.74,0.09567789,8.97"
rwtNpcGroup[tNpcGroup.Xieguai]["nMapIndex"] =CONST_MANYHEROS_MAP.MOZUZHIXIN

rwtNpcGroup[tNpcGroup.NvWu] = rwtNpcGroup[tNpcGroup.NvWu] or {}
rwtNpcGroup[tNpcGroup.NvWu]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.NvWu]["isBoss"] = false
rwtNpcGroup[tNpcGroup.NvWu]["GenIDMonster"] = tEnterCreateGen.MonNvWu
rwtNpcGroup[tNpcGroup.NvWu]["GenIdObstacles"] = tEnterCreateGen.Valve2
rwtNpcGroup[tNpcGroup.NvWu]["GenIdNPCGroup"] = tEnterCreateGen.NpcNvWu
rwtNpcGroup[tNpcGroup.NvWu]["GenIdBattelAftNpc"] = tGenId.LinShi2
rwtNpcGroup[tNpcGroup.NvWu]["MonsterGroupID"] = tMonGroup.NvWu
rwtNpcGroup[tNpcGroup.NvWu]["MyBossId"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.NvWu]["BuffIndex"] = 2
rwtNpcGroup[tNpcGroup.NvWu]["companionIndex"] = {1}
rwtNpcGroup[tNpcGroup.NvWu]["tGenIdLastMonsterNpc"] = nil
rwtNpcGroup[tNpcGroup.NvWu]["Floor"] = 1
--rwtNpcGroup[tNpcGroup.NvWu]["MoveWalleftPos"] = "-16.47282,0.09567789,16.9677"
--rwtNpcGroup[tNpcGroup.NvWu]["MoveWalleftRotation"] = -38
--rwtNpcGroup[tNpcGroup.NvWu]["BattleEffectPos"] = "-8.75,0.09567789,14.07"
rwtNpcGroup[tNpcGroup.NvWu]["nMapIndex"] = CONST_MANYHEROS_MAP.MOZUZHIXIN

rwtNpcGroup[tNpcGroup.EMo] = rwtNpcGroup[tNpcGroup.EMo] or {}
rwtNpcGroup[tNpcGroup.EMo]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.EMo]["isBoss"] = false
rwtNpcGroup[tNpcGroup.EMo]["GenIDMonster"] = tEnterCreateGen.MonEMo
rwtNpcGroup[tNpcGroup.EMo]["GenIdObstacles"] = tEnterCreateGen.Valve3
rwtNpcGroup[tNpcGroup.EMo]["GenIdNPCGroup"] = tEnterCreateGen.NpcEMo
rwtNpcGroup[tNpcGroup.EMo]["GenIdBattelAftNpc"] = tGenId.LinShi3
rwtNpcGroup[tNpcGroup.EMo]["MonsterGroupID"] = tNpcGroup.EMo 
rwtNpcGroup[tNpcGroup.EMo]["MyBossId"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.EMo]["BuffIndex"] = 3
rwtNpcGroup[tNpcGroup.EMo]["companionIndex"] = {4}
rwtNpcGroup[tNpcGroup.EMo]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.NpcXieguai,tEnterCreateGen.NpcNvWu}
rwtNpcGroup[tNpcGroup.EMo]["Floor"] = 2
--rwtNpcGroup[tNpcGroup.EMo]["MoveWalleftPos"] = "-37.37526,0.09567789,34.49336"
--rwtNpcGroup[tNpcGroup.EMo]["MoveWalleftRotation"] = 135
--rwtNpcGroup[tNpcGroup.EMo]["BattleEffectPos"] = "-36.87,0.09567789,26.21"
rwtNpcGroup[tNpcGroup.EMo]["nMapIndex"] = CONST_MANYHEROS_MAP.MOZUZHIXIN

rwtNpcGroup[tNpcGroup.MeiMo] = rwtNpcGroup[tNpcGroup.MeiMo] or {}
rwtNpcGroup[tNpcGroup.MeiMo]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.MeiMo]["isBoss"] = false
rwtNpcGroup[tNpcGroup.MeiMo]["GenIDMonster"] = tEnterCreateGen.MonMeiMo
rwtNpcGroup[tNpcGroup.MeiMo]["GenIdObstacles"] = tEnterCreateGen.Valve3
rwtNpcGroup[tNpcGroup.MeiMo]["GenIdNPCGroup"] = tEnterCreateGen.NpcMeiMo
rwtNpcGroup[tNpcGroup.MeiMo]["GenIdBattelAftNpc"] = tGenId.LinShi4
rwtNpcGroup[tNpcGroup.MeiMo]["MonsterGroupID"] = tNpcGroup.MeiMo
rwtNpcGroup[tNpcGroup.MeiMo]["MyBossId"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.MeiMo]["BuffIndex"] = 4
rwtNpcGroup[tNpcGroup.MeiMo]["companionIndex"] = {3}
rwtNpcGroup[tNpcGroup.MeiMo]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.NpcXieguai,tEnterCreateGen.NpcNvWu}
rwtNpcGroup[tNpcGroup.MeiMo]["Floor"] = 2
--rwtNpcGroup[tNpcGroup.MeiMo]["MoveWalleftPos"] = "-37.37526,0.09567789,34.49336"
--rwtNpcGroup[tNpcGroup.MeiMo]["MoveWalleftRotation"] = 135
--rwtNpcGroup[tNpcGroup.MeiMo]["BattleEffectPos"] = "-28.55,0.09567789,33.59"
rwtNpcGroup[tNpcGroup.MeiMo]["nMapIndex"] = CONST_MANYHEROS_MAP.MOZUZHIXIN

rwtNpcGroup[tNpcGroup.BossGod] = rwtNpcGroup[tNpcGroup.BossGod] or {}
rwtNpcGroup[tNpcGroup.BossGod]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.BossGod]["isBoss"] = true
rwtNpcGroup[tNpcGroup.BossGod]["GenIDMonster"] = tEnterCreateGen.MonBossGod
rwtNpcGroup[tNpcGroup.BossGod]["GenIdNPCGroup"] = tEnterCreateGen.NpcBossGod
rwtNpcGroup[tNpcGroup.BossGod]["MonsterGroupID"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.BossGod]["MonsterID"] = tMonId.BossGod
rwtNpcGroup[tNpcGroup.BossGod]["buff"] = {1011,1021,1031,1041}
rwtNpcGroup[tNpcGroup.BossGod]["buffTempdata"] = nTemp
rwtNpcGroup[tNpcGroup.BossGod]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.NpcEMo,tEnterCreateGen.NpcMeiMo}


--===================================
--任务目标配置
rwtTarget[tTarget.id1] = {}
rwtTarget[tTarget.id1]["Title"] = tLuaText[LANGUAGE_CONFIG][21675]
rwtTarget[tTarget.id1]["KillMonsterGroup"] = tMonGroup.Xieguai	
rwtTarget[tTarget.id1]["ReqCount"] = 1

rwtTarget[tTarget.id2] = {}
rwtTarget[tTarget.id2]["Title"] = tLuaText[LANGUAGE_CONFIG][21676]
rwtTarget[tTarget.id2]["KillMonsterGroup"] = tMonGroup.NvWu	
rwtTarget[tTarget.id2]["ReqCount"] = 1

rwtTarget[tTarget.id3] = {}
rwtTarget[tTarget.id3]["Title"] = tLuaText[LANGUAGE_CONFIG][21677]
rwtTarget[tTarget.id3]["KillMonsterGroup"] = tMonGroup.EMo	
rwtTarget[tTarget.id3]["ReqCount"] = 1

rwtTarget[tTarget.id4] = {}
rwtTarget[tTarget.id4]["Title"] = tLuaText[LANGUAGE_CONFIG][21678]
rwtTarget[tTarget.id4]["KillMonsterGroup"] = tMonGroup.MeiMo	
rwtTarget[tTarget.id4]["ReqCount"] = 1

rwtTarget[tTarget.id5] = {}
rwtTarget[tTarget.id5]["Title"] = tLuaText[LANGUAGE_CONFIG][21679]
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
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6657
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTemp
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"] = tMonsterTalent

