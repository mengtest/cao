--region [CopyMap]WuYeShiJianBu_4.lua
--Purpose:		危机黯月城第四层
--Creator: 		倪祖伟
--Created:		2019-08-22
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-11-11 $
--RCS-ID:		$Revision: 4 $
--endregion


--===========================副本基础配置====================================--
local tEnterCreateGen = {
    3096001,3096002,3096003,3096004,3096005,    --5只NPC
    3096006,3096007,3096008,3096009,3096010,    --5怪
    3096011,3096012,3096013                     --空气墙
}
local nCopyMapMissId = 3096

local tNpcGroup = {}
tNpcGroup.Lang      = 20614
tNpcGroup.Xiong     = 20615
tNpcGroup.WZLang    = 20616
tNpcGroup.WZXiong   = 20617
tNpcGroup.BossGod   = 20618

rwtNpcGroup[tNpcGroup.Lang] = rwtNpcGroup[tNpcGroup.Lang] or {}
rwtNpcGroup[tNpcGroup.Lang]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Lang]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Lang]["GenIDMonster"] = 3096006
rwtNpcGroup[tNpcGroup.Lang]["GenIdObstacles"] = 3096012
rwtNpcGroup[tNpcGroup.Lang]["GenIdNPCGroup"] = 3096001
rwtNpcGroup[tNpcGroup.Lang]["GenIdBattelAftNpc"] = 3096014
rwtNpcGroup[tNpcGroup.Lang]["MonsterGroupID"] = 200459
rwtNpcGroup[tNpcGroup.Lang]["MyBossId"] = 20618
rwtNpcGroup[tNpcGroup.Lang]["BuffIndex"] = 1
rwtNpcGroup[tNpcGroup.Lang]["companionIndex"] = {2}
rwtNpcGroup[tNpcGroup.Lang]["tGenIdLastMonsterNpc"] = nil
rwtNpcGroup[tNpcGroup.Lang]["Floor"] = 1
rwtNpcGroup[tNpcGroup.Lang]["nMapIndex"] =CONST_MANYHEROS_MAP.MOZUZHIXIN

rwtNpcGroup[tNpcGroup.Xiong] = rwtNpcGroup[tNpcGroup.Xiong] or {}
rwtNpcGroup[tNpcGroup.Xiong]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Xiong]["isBoss"] = false
rwtNpcGroup[tNpcGroup.Xiong]["GenIDMonster"] = 3096007
rwtNpcGroup[tNpcGroup.Xiong]["GenIdObstacles"] = 3096012
rwtNpcGroup[tNpcGroup.Xiong]["GenIdNPCGroup"] = 3096002
rwtNpcGroup[tNpcGroup.Xiong]["GenIdBattelAftNpc"] = 3096015
rwtNpcGroup[tNpcGroup.Xiong]["MonsterGroupID"] = 200460
rwtNpcGroup[tNpcGroup.Xiong]["MyBossId"] = 20618
rwtNpcGroup[tNpcGroup.Xiong]["BuffIndex"] = 2
rwtNpcGroup[tNpcGroup.Xiong]["companionIndex"] = {1}
rwtNpcGroup[tNpcGroup.Xiong]["tGenIdLastMonsterNpc"] = nil
rwtNpcGroup[tNpcGroup.Xiong]["Floor"] = 1
rwtNpcGroup[tNpcGroup.Xiong]["nMapIndex"] =CONST_MANYHEROS_MAP.MOZUZHIXIN

rwtNpcGroup[tNpcGroup.WZLang] = rwtNpcGroup[tNpcGroup.WZLang] or {}
rwtNpcGroup[tNpcGroup.WZLang]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.WZLang]["isBoss"] = false
rwtNpcGroup[tNpcGroup.WZLang]["GenIDMonster"] = 3096008
rwtNpcGroup[tNpcGroup.WZLang]["GenIdObstacles"] = 3096013
rwtNpcGroup[tNpcGroup.WZLang]["GenIdNPCGroup"] = 3096003
rwtNpcGroup[tNpcGroup.WZLang]["GenIdBattelAftNpc"] = 3096016
rwtNpcGroup[tNpcGroup.WZLang]["MonsterGroupID"] = 200461
rwtNpcGroup[tNpcGroup.WZLang]["MyBossId"] = 20618
rwtNpcGroup[tNpcGroup.WZLang]["BuffIndex"] = 3
rwtNpcGroup[tNpcGroup.WZLang]["companionIndex"] = {4}
rwtNpcGroup[tNpcGroup.WZLang]["tGenIdLastMonsterNpc"] = {3096001,3096002}
rwtNpcGroup[tNpcGroup.WZLang]["Floor"] = 2
rwtNpcGroup[tNpcGroup.WZLang]["nMapIndex"] =CONST_MANYHEROS_MAP.MOZUZHIXIN


rwtNpcGroup[tNpcGroup.WZXiong] = rwtNpcGroup[tNpcGroup.WZXiong] or {}
rwtNpcGroup[tNpcGroup.WZXiong]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.WZXiong]["isBoss"] = false
rwtNpcGroup[tNpcGroup.WZXiong]["GenIDMonster"] = 3096009
rwtNpcGroup[tNpcGroup.WZXiong]["GenIdObstacles"] = 3096013
rwtNpcGroup[tNpcGroup.WZXiong]["GenIdNPCGroup"] = 3096004
rwtNpcGroup[tNpcGroup.WZXiong]["GenIdBattelAftNpc"] = 3096017
rwtNpcGroup[tNpcGroup.WZXiong]["MonsterGroupID"] = 200462
rwtNpcGroup[tNpcGroup.WZXiong]["MyBossId"] = 20618
rwtNpcGroup[tNpcGroup.WZXiong]["BuffIndex"] = 4
rwtNpcGroup[tNpcGroup.WZXiong]["companionIndex"] = {3}
rwtNpcGroup[tNpcGroup.WZXiong]["tGenIdLastMonsterNpc"] = {3096001,3096002}
rwtNpcGroup[tNpcGroup.WZXiong]["Floor"] = 2
rwtNpcGroup[tNpcGroup.WZXiong]["nMapIndex"] =CONST_MANYHEROS_MAP.MOZUZHIXIN

rwtNpcGroup[tNpcGroup.BossGod] = rwtNpcGroup[tNpcGroup.BossGod] or {}
rwtNpcGroup[tNpcGroup.BossGod]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.BossGod]["isBoss"] = true
rwtNpcGroup[tNpcGroup.BossGod]["GenIDMonster"] = 3096010
rwtNpcGroup[tNpcGroup.BossGod]["GenIdNPCGroup"] = 3096005
rwtNpcGroup[tNpcGroup.BossGod]["MonsterGroupID"] = 200463
rwtNpcGroup[tNpcGroup.BossGod]["MonsterID"] = 1000765
rwtNpcGroup[tNpcGroup.BossGod]["buff"] = {1604,1621,1607,1618}
rwtNpcGroup[tNpcGroup.BossGod]["buffTempdata"] = 1175
rwtNpcGroup[tNpcGroup.BossGod]["tGenIdLastMonsterNpc"] = {3096003,3096004}
rwtNpcGroup[tNpcGroup.BossGod]["nMapIndex"] =CONST_MANYHEROS_MAP.MOZUZHIXIN


--===================================
--任务目标配置
rwtTarget[60180] = {}
rwtTarget[60180]["Title"] = tLuaText[LANGUAGE_CONFIG][21592]
rwtTarget[60180]["KillMonsterGroup"] = 200459
rwtTarget[60180]["ReqCount"] = 1

rwtTarget[60181] = {}
rwtTarget[60181]["Title"] = tLuaText[LANGUAGE_CONFIG][21593]
rwtTarget[60181]["KillMonsterGroup"] = 200460
rwtTarget[60181]["ReqCount"] = 1

rwtTarget[60182] = {}
rwtTarget[60182]["Title"] = tLuaText[LANGUAGE_CONFIG][21594]
rwtTarget[60182]["KillMonsterGroup"] = 200461
rwtTarget[60182]["ReqCount"] = 1

rwtTarget[60183] = {}
rwtTarget[60183]["Title"] = tLuaText[LANGUAGE_CONFIG][21595]
rwtTarget[60183]["KillMonsterGroup"] = 200462
rwtTarget[60183]["ReqCount"] = 1

rwtTarget[60184] = {}
rwtTarget[60184]["Title"] = tLuaText[LANGUAGE_CONFIG][21596]
rwtTarget[60184]["KillMonsterGroup"] = 200463
rwtTarget[60184]["ReqCount"] = 1



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
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {60180,60181,60182,60183}
rwtCopyMapMission[nCopyMapMissId]["Target1_IsNotDel"] = true
rwtCopyMapMission[nCopyMapMissId]["Target1_NeedFinishNum"] = 2
rwtCopyMapMission[nCopyMapMissId]["Target2"] = {60184}

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6657
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = 1175
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"] = tMonsterTalent

