--region 		[CopyMap]WuYeShiJianBu_3.lua
--Purpose:		雾夜事件簿多英雄副本第三层
--Creator: 		张圆
--Created:		2019-08-22
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2019-11-11$
--RCS-ID:		$Revision: 4 $
--endregion

local nCopyMapMissId = 3098
local nTemp = 1186

--任务目标
local tTarget = {}
tTarget.id1	= 60188	 
tTarget.id2	= 60189	 
tTarget.id3	= 60338	
tTarget.id4	= 60339
tTarget.id5	= 60190	 

--进副本创建gen
local tEnterCreateGen = {} 

tEnterCreateGen.NpcXieguai = 3098001	--蝎怪	荒漠异蝎
tEnterCreateGen.NpcNvWu    = 3098002	--女巫	雾夜女巫
tEnterCreateGen.NpcEMo     = 3098003	--恶魔  幽冥鬼煞
tEnterCreateGen.NpcMeiMo   = 3098004	--魅魔	魅影幻像
tEnterCreateGen.NpcBossGod = 3098005	--boss 蜘蛛女王 极渊领主

tEnterCreateGen.MonXieguai = 3098006	--蝎怪	荒漠异蝎
tEnterCreateGen.MonNvWu    = 3098007	--女巫	雾夜女巫
tEnterCreateGen.MonEMo	   = 3098008	--恶魔  幽冥鬼煞
tEnterCreateGen.MonMeiMo   = 3098009	--魅魔	魅影幻像
tEnterCreateGen.MonBossGod = 3098010	--boss 蜘蛛女王 极渊领主

tEnterCreateGen.Valve1 = 3098011	--光墙
tEnterCreateGen.Valve2 = 3098012	--障碍墙
tEnterCreateGen.Valve3 = 3098013	--障碍墙

--其他gen
local tGenId = {}
tGenId.LinShi1 = 3098014
tGenId.LinShi2 = 3098015
tGenId.LinShi3 = 3098016
tGenId.LinShi4 = 3098017


--怪物组
local tMonGroup={}
tMonGroup.Xieguai	= 200779
tMonGroup.NvWu		= 200780
tMonGroup.EMo		= 200781
tMonGroup.MeiMo		= 200782
tMonGroup.BossGod	= 200783
--怪物
local tMonId = {}
tMonId.Xieguai	= 1001249
tMonId.NvWu		= 1001251
tMonId.EMo		= 1001252
tMonId.MeiMo	= 1001253
tMonId.BossGod	= 1001250

--NPC
local tNpcGroup = {}
tNpcGroup.Xieguai   = 20662
tNpcGroup.NvWu		= 20663
tNpcGroup.EMo		= 20664
tNpcGroup.MeiMo		= 21029
tNpcGroup.BossGod   = 21030
tNpcGroup.LinShi1	= 20665
tNpcGroup.LinShi2	= 20666
tNpcGroup.LinShi3	= 21031
tNpcGroup.LinShi4	= 21032

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
rwtNpcGroup[tNpcGroup.BossGod]["buff"] = {1628,1605,1637,1631}
rwtNpcGroup[tNpcGroup.BossGod]["buffTempdata"] = nTemp
rwtNpcGroup[tNpcGroup.BossGod]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.NpcEMo,tEnterCreateGen.NpcMeiMo}
rwtNpcGroup[tNpcGroup.BossGod]["nMapIndex"] = CONST_MANYHEROS_MAP.MOZUZHIXIN



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
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6657
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTemp
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"] = tMonsterTalent

