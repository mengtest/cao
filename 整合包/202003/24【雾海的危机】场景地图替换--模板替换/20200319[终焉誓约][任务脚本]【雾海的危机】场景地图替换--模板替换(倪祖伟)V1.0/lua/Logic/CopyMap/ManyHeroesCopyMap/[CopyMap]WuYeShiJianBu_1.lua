--region [CopyMap]WuYeShiJianBu_1.lua
--Purpose:		危机黯月城第一层
--Creator: 		倪祖伟
--Created:		2019-08-22
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-04-14 $
--RCS-ID:		$Revision: 5 $
--endregion


--===========================副本基础配置====================================--
--副本id
local nCopyMapMissId = 3097

--掩码
local nTemp = 1190

--任务目标
local tTarget = {}
tTarget.id3	=60185	
tTarget.id4	=60186	
tTarget.id5	=60187	 

--进副本创建gen
local tEnterCreateGen = {} 

tEnterCreateGen.NpcEMo     = 3097003	--恶魔  幽冥鬼煞
tEnterCreateGen.NpcMeiMo   = 3097004	--魅魔	魅影幻像
tEnterCreateGen.NpcBossGod = 3097005	--boss 蜘蛛女王 极渊领主

tEnterCreateGen.MonEMo	   = 3097008	--恶魔  幽冥鬼煞
tEnterCreateGen.MonMeiMo   = 3097009	--魅魔	魅影幻像
tEnterCreateGen.MonBossGod = 3097010	--boss 蜘蛛女王 极渊领主

-- tEnterCreateGen.Valve2 = 3097012	--障碍墙
tEnterCreateGen.Valve3 = 3097013	--障碍墙

tEnterCreateGen.WeiBin1 = 3097001
tEnterCreateGen.WeiBin2 = 3097002
tEnterCreateGen.DianYuZ = 3097014


--其他gen
local tGenId = {}
tGenId.LinShi3 = 3097016
tGenId.LinShi4 = 3097017

tGenId.valveMen1 = 3097020
tGenId.valveMen2 = 3097021


--怪物组
local tMonGroup={}

tMonGroup.EMo		= 200466
tMonGroup.MeiMo		= 200467
tMonGroup.BossGod	= 200468
--怪物
local tMonId = {}
tMonId.EMo		= 1000768
tMonId.MeiMo	= 1000769
tMonId.BossGod	= 1000770

--NPC
local tNpcGroup = {}
tNpcGroup.EMo		= 20638
tNpcGroup.MeiMo		= 20623
tNpcGroup.BossGod   = 20624

tNpcGroup.LinShi3	= 21023
tNpcGroup.LinShi4	= 21024

tNpcGroup.DianYuZ	= 21021

local sText1 = tLuaText[LANGUAGE_CONFIG][70010]
local sText2 = tLuaText[LANGUAGE_CONFIG][70011]
local nTiemMaoPao = 2400

rwtNpcGroup[tNpcGroup.EMo] = rwtNpcGroup[tNpcGroup.EMo] or {}
rwtNpcGroup[tNpcGroup.EMo]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.EMo]["isBoss"] = false
rwtNpcGroup[tNpcGroup.EMo]["NotOpenFormation"] = true
rwtNpcGroup[tNpcGroup.EMo]["BattalBef"] = {}
rwtNpcGroup[tNpcGroup.EMo]["BattalBef"]["Events"] = {}
rwtNpcGroup[tNpcGroup.EMo]["BattalBef"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.EMo]["BattalBef"]["Events"][1]["ChkGenEventIsExist"] = {tEnterCreateGen.NpcMeiMo}
rwtNpcGroup[tNpcGroup.EMo]["BattalBef"]["Events"][1]["OpenDialog"]={}
rwtNpcGroup[tNpcGroup.EMo]["BattalBef"]["Events"][1]["OpenDialog"]["DialogId"] = 6641
rwtNpcGroup[tNpcGroup.EMo]["BattalBef"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.MANYHEROCOPY
rwtNpcGroup[tNpcGroup.EMo]["BattalBef"]["Events"][1]["FailEvents"]={}
rwtNpcGroup[tNpcGroup.EMo]["BattalBef"]["Events"][1]["FailEvents"]["OpenWnd"]={}
rwtNpcGroup[tNpcGroup.EMo]["BattalBef"]["Events"][1]["FailEvents"]["OpenWnd"]["WndId"]=CONST_MENUTYPE.Formation
rwtNpcGroup[tNpcGroup.EMo]["BattalBef"]["Events"][1]["FailEvents"]["OpenWnd"]["Data1"]=tEnterCreateGen.MonEMo
rwtNpcGroup[tNpcGroup.EMo]["BattalAft"] = {} 
rwtNpcGroup[tNpcGroup.EMo]["BattalAft"]["Events"] = {}
rwtNpcGroup[tNpcGroup.EMo]["BattalAft"]["Events"][1] = {}
-- rwtNpcGroup[tNpcGroup.EMo]["BattalAft"]["Events"][1]["OpenDialog"]={}
-- rwtNpcGroup[tNpcGroup.EMo]["BattalAft"]["Events"][1]["OpenDialog"]["DialogId"] = 6642
-- rwtNpcGroup[tNpcGroup.EMo]["BattalAft"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.MANYHEROCOPY
rwtNpcGroup[tNpcGroup.EMo]["BattalAft"]["Events"][1]["PlaySceneAnimation"] = {}
rwtNpcGroup[tNpcGroup.EMo]["BattalAft"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15519
-- rwtNpcGroup[tNpcGroup.EMo]["BattalAft"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[tNpcGroup.EMo]["GenIDMonster"] = tEnterCreateGen.MonEMo
rwtNpcGroup[tNpcGroup.EMo]["GenIdObstacles"] = tEnterCreateGen.Valve3
rwtNpcGroup[tNpcGroup.EMo]["ValveGenIdLaMen"] = tGenId.valveMen1
rwtNpcGroup[tNpcGroup.EMo]["GenIdNPCGroup"] = tEnterCreateGen.NpcEMo
rwtNpcGroup[tNpcGroup.EMo]["GenIdBattelAftNpc"] = tGenId.LinShi3
rwtNpcGroup[tNpcGroup.EMo]["MonsterGroupID"] = tNpcGroup.EMo 
rwtNpcGroup[tNpcGroup.EMo]["MyBossId"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.EMo]["BuffIndex"] = 1
rwtNpcGroup[tNpcGroup.EMo]["GenIdCompanion"] = tEnterCreateGen.NpcMeiMo
rwtNpcGroup[tNpcGroup.EMo]["Floor"] = 2
rwtNpcGroup[tNpcGroup.EMo]["nMapIndex"] = CONST_MANYHEROS_MAP.NewJianYu_2

rwtNpcGroup[tNpcGroup.MeiMo] = rwtNpcGroup[tNpcGroup.MeiMo] or {}
rwtNpcGroup[tNpcGroup.MeiMo]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.MeiMo]["isBoss"] = false
rwtNpcGroup[tNpcGroup.MeiMo]["NotOpenFormation"] = true
rwtNpcGroup[tNpcGroup.MeiMo]["BattalBef"] = {}
rwtNpcGroup[tNpcGroup.MeiMo]["BattalBef"]["Events"] = {}
rwtNpcGroup[tNpcGroup.MeiMo]["BattalBef"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.MeiMo]["BattalBef"]["Events"][1]["ChkGenEventIsExist"] = {tEnterCreateGen.NpcEMo}
rwtNpcGroup[tNpcGroup.MeiMo]["BattalBef"]["Events"][1]["OpenDialog"]={}
rwtNpcGroup[tNpcGroup.MeiMo]["BattalBef"]["Events"][1]["OpenDialog"]["DialogId"] = 6644
rwtNpcGroup[tNpcGroup.MeiMo]["BattalBef"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.MANYHEROCOPY
rwtNpcGroup[tNpcGroup.MeiMo]["BattalBef"]["Events"][1]["FailEvents"]={}
rwtNpcGroup[tNpcGroup.MeiMo]["BattalBef"]["Events"][1]["FailEvents"]["OpenWnd"]={}
rwtNpcGroup[tNpcGroup.MeiMo]["BattalBef"]["Events"][1]["FailEvents"]["OpenWnd"]["WndId"]=CONST_MENUTYPE.Formation
rwtNpcGroup[tNpcGroup.MeiMo]["BattalBef"]["Events"][1]["FailEvents"]["OpenWnd"]["Data1"]=tEnterCreateGen.MonMeiMo
rwtNpcGroup[tNpcGroup.MeiMo]["BattalAft"] = {} 
rwtNpcGroup[tNpcGroup.MeiMo]["BattalAft"]["Events"] = {}
rwtNpcGroup[tNpcGroup.MeiMo]["BattalAft"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.MeiMo]["BattalAft"]["Events"][1]["OpenDialog"]={}
-- rwtNpcGroup[tNpcGroup.MeiMo]["BattalAft"]["Events"][1]["OpenDialog"]["DialogId"] = 6645
-- rwtNpcGroup[tNpcGroup.MeiMo]["BattalAft"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.MANYHEROCOPY
rwtNpcGroup[tNpcGroup.MeiMo]["BattalAft"]["Events"][1]["PlaySceneAnimation"] = {}
rwtNpcGroup[tNpcGroup.MeiMo]["BattalAft"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15520
rwtNpcGroup[tNpcGroup.MeiMo]["GenIDMonster"] = tEnterCreateGen.MonMeiMo
rwtNpcGroup[tNpcGroup.MeiMo]["GenIdObstacles"] = tEnterCreateGen.Valve3
rwtNpcGroup[tNpcGroup.MeiMo]["ValveGenIdLaMen"] = tGenId.valveMen2
rwtNpcGroup[tNpcGroup.MeiMo]["GenIdNPCGroup"] = tEnterCreateGen.NpcMeiMo
rwtNpcGroup[tNpcGroup.MeiMo]["GenIdBattelAftNpc"] = tGenId.LinShi4
rwtNpcGroup[tNpcGroup.MeiMo]["MonsterGroupID"] = tNpcGroup.MeiMo
rwtNpcGroup[tNpcGroup.MeiMo]["MyBossId"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.MeiMo]["BuffIndex"] = 2
rwtNpcGroup[tNpcGroup.MeiMo]["GenIdCompanion"] = tEnterCreateGen.NpcEMo
rwtNpcGroup[tNpcGroup.MeiMo]["Floor"] = 2
rwtNpcGroup[tNpcGroup.MeiMo]["nMapIndex"] = CONST_MANYHEROS_MAP.NewJianYu_2

rwtNpcGroup[tNpcGroup.BossGod] = rwtNpcGroup[tNpcGroup.BossGod] or {}
rwtNpcGroup[tNpcGroup.BossGod]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.BossGod]["isBoss"] = true
rwtNpcGroup[tNpcGroup.BossGod]["BattalDialogBef"] = {}                   
rwtNpcGroup[tNpcGroup.BossGod]["BattalDialogBef"]["Clean"] = 6647
rwtNpcGroup[tNpcGroup.BossGod]["BattalDialogBef"]["NoClean"] = 6647
rwtNpcGroup[tNpcGroup.BossGod]["BattalDialogAft"] = 6649
rwtNpcGroup[tNpcGroup.BossGod]["GenIDMonster"] = tEnterCreateGen.MonBossGod
rwtNpcGroup[tNpcGroup.BossGod]["GenIdNPCGroup"] = tEnterCreateGen.NpcBossGod
rwtNpcGroup[tNpcGroup.BossGod]["MonsterGroupID"] = tNpcGroup.BossGod
rwtNpcGroup[tNpcGroup.BossGod]["MonsterID"] = tMonId.BossGod
rwtNpcGroup[tNpcGroup.BossGod]["buff"] = {1031,1041}
rwtNpcGroup[tNpcGroup.BossGod]["NpcChildren"] = {tNpcGroup.EMo,tNpcGroup.MeiMo}
rwtNpcGroup[tNpcGroup.BossGod]["buffTempdata"] = nTemp
rwtNpcGroup[tNpcGroup.BossGod]["tGenIdLastMonsterNpc"] = {tEnterCreateGen.NpcEMo,tEnterCreateGen.NpcMeiMo}
rwtNpcGroup[tNpcGroup.BossGod]["nMapIndex"] = CONST_MANYHEROS_MAP.NewJianYu_2

--===================================
--任务目标配置
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


--简单难度副本
rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 2
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {tTarget.id3,tTarget.id4}
rwtCopyMapMission[nCopyMapMissId]["Target1_IsNotDel"] = true
rwtCopyMapMission[nCopyMapMissId]["Target1_NeedFinishNum"] = 1
rwtCopyMapMission[nCopyMapMissId]["Target2"] = {tTarget.id5}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15518
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 1
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTemp
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"] = tMonsterTalent 

function CopyMapWuHaiOne_MaoPao()
    rwSynBubbleInfo(tEnterCreateGen.WeiBin1,sText1,0,nTiemMaoPao)
    rwSynBubbleInfo(tEnterCreateGen.WeiBin2,sText2,0,nTiemMaoPao)
end
rwtCGFinish[15518] = rwtCGFinish[15518] or {}
table.insert(rwtCGFinish[15518],CopyMapWuHaiOne_MaoPao)

tValve[1092] = tValve[1092] or {}
tValve[1092]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[1092]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId)
    --打开提示对白
    rwOpenNpcChatDialog(6640)
end

rwtNpcGroup[tNpcGroup.DianYuZ] = rwtNpcGroup[tNpcGroup.DianYuZ] or {}
rwtNpcGroup[tNpcGroup.DianYuZ]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup.DianYuZ]["Awards"] = {}
rwtNpcGroup[tNpcGroup.DianYuZ]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.DianYuZ]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.DianYuZ]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.DianYuZ]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {7148,7149,7150}

