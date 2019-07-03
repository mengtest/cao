--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--罗兰币副本



--endregion

----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3138
local tEnterMapInit = {
	3138001,3138002,3138003,3138004,3138005,3138006,		--宝箱
	3138007,3138008,3138009,3138010,3138011,3138012,		--怪物
}

local tAward = {}
tAward.NorMalBox = 1000593
tAward.PassBox = 1000594

local tBox = {}
tBox.Normal1 = 40291
tBox.Normal2 = 40292
tBox.Normal3 = 40293
tBox.Normal4 = 40294
tBox.Normal5 = 40295
tBox.PassBox = 40296

rwtNpcGroup[tBox.Normal1] = rwtNpcGroup[tBox.Normal1] or {}    
rwtNpcGroup[tBox.Normal1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Normal1]["Awards"] = {}
rwtNpcGroup[tBox.Normal1]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Normal1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Normal1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Normal1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Normal1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.NorMalBox
rwtNpcGroup[tBox.Normal1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Normal1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Normal1

rwtNpcGroup[tBox.Normal2] = rwtNpcGroup[tBox.Normal2] or {}    
rwtNpcGroup[tBox.Normal2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Normal2]["Awards"] = {}
rwtNpcGroup[tBox.Normal2]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Normal2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Normal2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Normal2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Normal2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.NorMalBox
rwtNpcGroup[tBox.Normal2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Normal2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Normal2


rwtNpcGroup[tBox.Normal3] = rwtNpcGroup[tBox.Normal3] or {}    
rwtNpcGroup[tBox.Normal3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Normal3]["Awards"] = {}
rwtNpcGroup[tBox.Normal3]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Normal3]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Normal3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Normal3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Normal3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.NorMalBox
rwtNpcGroup[tBox.Normal3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Normal3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Normal3


rwtNpcGroup[tBox.Normal4] = rwtNpcGroup[tBox.Normal4] or {}    
rwtNpcGroup[tBox.Normal4]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Normal4]["Awards"] = {}
rwtNpcGroup[tBox.Normal4]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Normal4]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Normal4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Normal4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Normal4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.NorMalBox
rwtNpcGroup[tBox.Normal4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Normal4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Normal4

rwtNpcGroup[tBox.Normal5] = rwtNpcGroup[tBox.Normal5] or {}    
rwtNpcGroup[tBox.Normal5]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Normal5]["Awards"] = {}
rwtNpcGroup[tBox.Normal5]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Normal5]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Normal5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Normal5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Normal5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.NorMalBox
rwtNpcGroup[tBox.Normal5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Normal5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Normal4

rwtNpcGroup[tBox.PassBox] = rwtNpcGroup[tBox.PassBox] or {}    
rwtNpcGroup[tBox.PassBox]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.PassBox]["Awards"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.PassBox
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.PassBox
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6862

----***************************副本配置定义***************************----
rwtTarget[60306] = {}
rwtTarget[60306]["Title"] = tLuaText[LANGUAGE_CONFIG][21799]
rwtTarget[60306]["ReqDialogId"] = 6862
rwtTarget[60306]["ReqCount"] = 1

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Money
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10045]
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60306}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterMapInit
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6861

