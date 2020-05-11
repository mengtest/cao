--region [CopyMap]WuYeShiJianBu_5.lua
--Purpose:		雾夜事件簿第五关
--Creator: 		林多娜
--Created:		2019-04-26
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-12-19 $
--RCS-ID:		$Revision: 3 $
--endregion


--===========================副本基础配置====================================--
--副本id
local nCopyMapMissId = 3101

--掩码
local nTemp = 1190

--任务目标
local tTarget = {}
tTarget.id1	=60201	 
tTarget.id2	=60202	 
tTarget.id3	=60203	
tTarget.id4	=60204	
tTarget.id5	=60205	 

--进副本创建gen
local tEnterCreateGen = {} 

tEnterCreateGen.NpcXieguai = 3101001	--	复仇妖姬
tEnterCreateGen.NpcNvWu    = 3101002	--	暗夜潜行者
tEnterCreateGen.NpcEMo     = 3101003	--  虚死惩戒者
tEnterCreateGen.NpcMeiMo   = 3101004	--	鬼刃剑士
tEnterCreateGen.NpcBossGod = 3101005	-- 千纸领主洛伊

tEnterCreateGen.MonXieguai = 3101006	--	复仇妖姬
tEnterCreateGen.MonNvWu    = 3101007	--	暗夜潜行者
tEnterCreateGen.MonEMo	   = 3101008	--  虚死惩戒者
tEnterCreateGen.MonMeiMo   = 3101009	--	鬼刃剑士
tEnterCreateGen.MonBossGod = 3101010	-- 千纸领主洛伊

--tEnterCreateGen.Valve1 = 3101011	--光墙
tEnterCreateGen.Valve2 = 3101012	--障碍墙
tEnterCreateGen.Valve3 = 3101013	--障碍墙

--其他gen
local tGenId = {}
tGenId.LinShi1 = 3101014
tGenId.LinShi2 = 3101015
tGenId.LinShi3 = 3101016
tGenId.LinShi4 = 3101017


--怪物组
local tMonGroup={}
tMonGroup.Xieguai	= 200499	--	复仇妖姬
tMonGroup.NvWu		= 200500	--	暗夜潜行者
tMonGroup.EMo		= 200501	--  虚死惩戒者
tMonGroup.MeiMo		= 200502	--	鬼刃剑士
tMonGroup.BossGod	= 200503	-- 千纸领主洛伊
--怪物
local tMonId = {}
tMonId.Xieguai	= 1000821	--	复仇妖姬
tMonId.NvWu		= 1000822	--	暗夜潜行者
tMonId.EMo		= 1000823	--  虚死惩戒者
tMonId.MeiMo	= 1000824	--	鬼刃剑士
tMonId.BossGod	= 1000825	-- 千纸领主洛伊

--NPC
local tNpcGroup = {}
tNpcGroup.Xieguai   = 20699	--	复仇妖姬
tNpcGroup.NvWu		= 20700	--	暗夜潜行者
tNpcGroup.EMo		= 20701	--  虚死惩戒者
tNpcGroup.MeiMo		= 20702	--	鬼刃剑士
tNpcGroup.BossGod   = 20703	-- 千纸领主洛伊
tNpcGroup.LinShi1	= 20704	--	复仇妖姬
tNpcGroup.LinShi2	= 20705	--	暗夜潜行者
tNpcGroup.LinShi3	= 20706	--  虚死惩戒者
tNpcGroup.LinShi4	= 20707	--	鬼刃剑士
						
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
rwtNpcGroup[tNpcGroup.Xieguai]["nMapIndex"] =CONST_MANYHEROS_MAP.DYXKSCC

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
rwtNpcGroup[tNpcGroup.NvWu]["nMapIndex"] = CONST_MANYHEROS_MAP.DYXKSCC

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
rwtNpcGroup[tNpcGroup.EMo]["nMapIndex"] = CONST_MANYHEROS_MAP.DYXKSCC

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
rwtNpcGroup[tNpcGroup.MeiMo]["nMapIndex"] = CONST_MANYHEROS_MAP.DYXKSCC

rwtNpcGroup[tNpcGroup.BossGod] = rwtNpcGroup[tNpcGroup.BossGod] or {}
rwtNpcGroup[tNpcGroup.BossGod]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.BossGod]["isBoss"] = true
rwtNpcGroup[tNpcGroup.BossGod]["GenIDMonster"] = tEnterCreateGen.MonBossGod
rwtNpcGroup[tNpcGroup.BossGod]["GenIdNPCGroup"] = tEnterCreateGen.NpcBossGod
rwtNpcGroup[tNpcGroup.BossGod]["MonsterGroupID"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.BossGod]["MonsterID"] = tMonId.BossGod
rwtNpcGroup[tNpcGroup.BossGod]["buff"] = {1606,1621,1626,1616}
rwtNpcGroup[tNpcGroup.BossGod]["buffTempdata"] = nTemp
rwtNpcGroup[tNpcGroup.BossGod]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.NpcEMo,tEnterCreateGen.NpcMeiMo}
rwtNpcGroup[tNpcGroup.BossGod]["nMapIndex"] = CONST_MANYHEROS_MAP.DYXKSCC
rwtNpcGroup[tNpcGroup.BossGod]["BattalDialogBef"] = {}                   
rwtNpcGroup[tNpcGroup.BossGod]["BattalDialogBef"]["Clean"] = 7085
rwtNpcGroup[tNpcGroup.BossGod]["BattalDialogBef"]["NoClean"] = 7085
rwtNpcGroup[tNpcGroup.BossGod]["BattalDialogAft"] = 7086

--===================================
--任务目标配置
rwtTarget[tTarget.id1] = {}
rwtTarget[tTarget.id1]["Title"] = tLuaText[LANGUAGE_CONFIG][21609]
rwtTarget[tTarget.id1]["KillMonsterGroup"] = tMonGroup.Xieguai	
rwtTarget[tTarget.id1]["ReqCount"] = 1

rwtTarget[tTarget.id2] = {}
rwtTarget[tTarget.id2]["Title"] = tLuaText[LANGUAGE_CONFIG][21610]
rwtTarget[tTarget.id2]["KillMonsterGroup"] = tMonGroup.NvWu	
rwtTarget[tTarget.id2]["ReqCount"] = 1

rwtTarget[tTarget.id3] = {}
rwtTarget[tTarget.id3]["Title"] = tLuaText[LANGUAGE_CONFIG][21611]
rwtTarget[tTarget.id3]["KillMonsterGroup"] = tMonGroup.EMo	
rwtTarget[tTarget.id3]["ReqCount"] = 1

rwtTarget[tTarget.id4] = {}
rwtTarget[tTarget.id4]["Title"] = tLuaText[LANGUAGE_CONFIG][21612]
rwtTarget[tTarget.id4]["KillMonsterGroup"] = tMonGroup.MeiMo	
rwtTarget[tTarget.id4]["ReqCount"] = 1

rwtTarget[tTarget.id5] = {}
rwtTarget[tTarget.id5]["Title"] = tLuaText[LANGUAGE_CONFIG][21613]
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

