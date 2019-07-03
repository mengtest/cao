--region *.lua
--Date
--夜幕古堡-密室
--Nizw

--endregion

--==============================数据定义============================--
--副本ID
local nCopyMapId = 3079

--首通掩码
local nTemp_PassCopyMap = 1140

--首通奖励
local nAwardId_PassCopyMap = 1000358


local tBoxGenId = {
    3079002,
    3079003,
    3079004,
    3079005,
    3079006,
    3079007,
    3079008,
    3079009,
    3079018     --通关陷阱
}
local tBoxNpcGroup = {
    40160,
    40161,
    40162,
    40163,
    40164,
    40165,
    40166,
    40167
}

local tMonsterBoxGenId = {}
tMonsterBoxGenId[40160] = 3079010
tMonsterBoxGenId[40161] = 3079011
tMonsterBoxGenId[40162] = 3079012
tMonsterBoxGenId[40163] = 3079013
tMonsterBoxGenId[40164] = 3079014
tMonsterBoxGenId[40165] = 3079015
tMonsterBoxGenId[40166] = 3079016
tMonsterBoxGenId[40167] = 3079017

local tPassCopyCkeGenId = {
    3079002,    --宝箱
    3079003,
    3079004,
    3079005,
    3079006,
    3079007,
    3079008,
    3079009,
    3079010,    --怪物
    3079011,
    3079012,
    3079013,
    3079014,
    3079015,
    3079016,
    3079017
}


--==============================================================--
rwtTarget[60154] = {}
rwtTarget[60154]["Title"] = tLuaText[LANGUAGE_CONFIG][21437]
rwtTarget[60154]["ReqDialogId"] = 6258

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60154}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
--副本首通掩码
rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = 1

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6257
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tBoxGenId

--副本首通检查和奖励
rwtCopyMapMission[nCopyMapId]["TargetAward1"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1]["Data"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"] = {}          
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_PassCopyMap
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX

--==通关陷阱================================--
rwtNpcGroup[30562] = rwtNpcGroup[30562] or {}
rwtNpcGroup[30562]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30562]["TrapFunc"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    rwOpenNpcChatDialog(6258,CONST_NPCCHAT_TYPE.COPYMAP)
end

--===================8宝箱========================--

rwtNpcGroup[tBoxNpcGroup[1]] = rwtNpcGroup[tBoxNpcGroup[1]] or {}
rwtNpcGroup[tBoxNpcGroup[1]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBoxNpcGroup[1]]["Awards"] = {}
rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"] = {}
rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tPassCopyCkeGenId
-- rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1]["DynCreate"] = {}
-- rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1]["DynCreate"][1] = 3079018
-- rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1]["ChkRandom"] = 75
rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBoxNpcGroup[1]
rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000186
rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"] = {}
rwtNpcGroup[tBoxNpcGroup[1]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"][1] = tMonsterBoxGenId[tBoxNpcGroup[1]]

rwtNpcGroup[tBoxNpcGroup[2]] = rwtNpcGroup[tBoxNpcGroup[2]] or {}
rwtNpcGroup[tBoxNpcGroup[2]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBoxNpcGroup[2]]["Awards"] = {}
rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"] = {}
rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tPassCopyCkeGenId
-- rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1]["DynCreate"] = {}
-- rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1]["DynCreate"][1] = 3079018
-- rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1]["ChkRandom"] = 75
rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBoxNpcGroup[2]
rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000186
rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"] = {}
rwtNpcGroup[tBoxNpcGroup[2]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"][1] = tMonsterBoxGenId[tBoxNpcGroup[2]]

rwtNpcGroup[tBoxNpcGroup[3]] = rwtNpcGroup[tBoxNpcGroup[3]] or {}
rwtNpcGroup[tBoxNpcGroup[3]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBoxNpcGroup[3]]["Awards"] = {}
rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"] = {}
rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tPassCopyCkeGenId
-- rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1]["DynCreate"] = {}
-- rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1]["DynCreate"][1] = 3079018
-- rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1]["ChkRandom"] = 75
rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBoxNpcGroup[3]
rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000186
rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"] = {}
rwtNpcGroup[tBoxNpcGroup[3]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"][1] = tMonsterBoxGenId[tBoxNpcGroup[3]]

rwtNpcGroup[tBoxNpcGroup[4]] = rwtNpcGroup[tBoxNpcGroup[4]] or {}
rwtNpcGroup[tBoxNpcGroup[4]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBoxNpcGroup[4]]["Awards"] = {}
rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"] = {}
rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tPassCopyCkeGenId
-- rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1]["DynCreate"] = {}
-- rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1]["DynCreate"][1] = 3079018
-- rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1]["ChkRandom"] = 75
rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBoxNpcGroup[4]
rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000186
rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"] = {}
rwtNpcGroup[tBoxNpcGroup[4]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"][1] = tMonsterBoxGenId[tBoxNpcGroup[4]]

rwtNpcGroup[tBoxNpcGroup[5]] = rwtNpcGroup[tBoxNpcGroup[5]] or {}
rwtNpcGroup[tBoxNpcGroup[5]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBoxNpcGroup[5]]["Awards"] = {}
rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"] = {}
rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tPassCopyCkeGenId
-- rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1]["DynCreate"] = {}
-- rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1]["DynCreate"][1] = 3079018
-- rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1]["ChkRandom"] = 75
rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBoxNpcGroup[5]
rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000186
rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"] = {}
rwtNpcGroup[tBoxNpcGroup[5]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"][1] = tMonsterBoxGenId[tBoxNpcGroup[5]]

rwtNpcGroup[tBoxNpcGroup[6]] = rwtNpcGroup[tBoxNpcGroup[6]] or {}
rwtNpcGroup[tBoxNpcGroup[6]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBoxNpcGroup[6]]["Awards"] = {}
rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"] = {}
rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tPassCopyCkeGenId
-- rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1]["DynCreate"] = {}
-- rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1]["DynCreate"][1] = 3079018
-- rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1]["ChkRandom"] = 75
rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBoxNpcGroup[6]
rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000186
rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"] = {}
rwtNpcGroup[tBoxNpcGroup[6]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"][1] = tMonsterBoxGenId[tBoxNpcGroup[6]]

rwtNpcGroup[tBoxNpcGroup[7]] = rwtNpcGroup[tBoxNpcGroup[7]] or {}
rwtNpcGroup[tBoxNpcGroup[7]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBoxNpcGroup[7]]["Awards"] = {}
rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"] = {}
rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tPassCopyCkeGenId
-- rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1]["DynCreate"] = {}
-- rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1]["DynCreate"][1] = 3079018
-- rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1]["ChkRandom"] = 75
rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBoxNpcGroup[7]
rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000186
rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"] = {}
rwtNpcGroup[tBoxNpcGroup[7]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"][1] = tMonsterBoxGenId[tBoxNpcGroup[7]]

rwtNpcGroup[tBoxNpcGroup[8]] = rwtNpcGroup[tBoxNpcGroup[8]] or {}
rwtNpcGroup[tBoxNpcGroup[8]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBoxNpcGroup[8]]["Awards"] = {}
rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"] = {}
rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tPassCopyCkeGenId
-- rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1]["DynCreate"] = {}
-- rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1]["DynCreate"][1] = 3079018
-- rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1]["ChkRandom"] = 75
rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBoxNpcGroup[8]
rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000186
rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"] = {}
rwtNpcGroup[tBoxNpcGroup[8]]["Awards"]["Events"][1]["FailEvents"]["DynCreate"][1] = tMonsterBoxGenId[tBoxNpcGroup[8]]

--==================宝箱怪逻辑=======================--

function TimeCopyYeMuGuBao_MiShiBoxMonsterDeath(nMonsterGroupType, nMonsterGroupId, nGenId)
    for _,v in pairs(tPassCopyCkeGenId) do
        if rwHasGenEvent(v) and v ~= nGenId then
            -- rwPrintWarnLog(v)
            return
        end
    end
    --若不存在在，则刷出通关传送
    rwAddGenEvent(3079018)
end

rwtMonsterGroup_Func[200391] = rwtMonsterGroup_Func[200391] or {}
table.insert(rwtMonsterGroup_Func[200391],TimeCopyYeMuGuBao_MiShiBoxMonsterDeath)
