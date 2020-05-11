--region *.lua
--Date
--nzw


--endregion

local nCopyMapId = 3153
local nTempDataId = 1238
local texing1 = 1011
local texing2 = 1021
local nvalve = 1124
--光效ID
local nEffect_WallDisapper = 2065
local nEffect_Qiu = 2073        -- 战后紫色球，光效ID
local nEffect_Qiu_WZ = 2006        -- 完整的战后紫色球，光效ID
local nEffect_FaZhen_Death = 2072  --怪物死亡后留下的法阵光效

local tGenIdInit={
    3153001,3153002,            --墙
    3153003,3153004,3153005,    --npc
    3153006,3153007,3153008,    --怪
    3153012,                    --陷阱
}

local tMonster_Group = {}

tMonster_Group.Normal_1 = 200772
tMonster_Group.Normal_2 = 200773
tMonster_Group.Boss = 200774

local nMonster_Boss = 1001246 
local nTrap_1 = 30697

local tNpcGroup = {}
tNpcGroup.Normal_1 = 21014
tNpcGroup.Normal_2 = 21015
tNpcGroup.Boss = 21016

local nTarget_1 = 60331
local nTarget_2 = 60332
local nTarget_3 = 60333

local tDialog = {}
tDialog.EnterMap = 6951
tDialog.valve = 6956
tDialog.TalkToNormal_1 = 6957
tDialog.TalkToNormal_2 = 6960
tDialog.Talkmonster_Dead = {6961,6958}
tDialog.Talkmonster_DeadClean={6962,6959}

tDialog.Boss_Clean = 6963
tDialog.Boss_NoClen = 6964
tDialog.BossDead = 6965

local tGenId = {}
tGenId.Npc_Normal_1 = 3153003
tGenId.Npc_Normal_2 = 3153004
tGenId.Npc_Boss = 3153005
tGenId.Npc_Normal_Dead_1 = 3153009
tGenId.Npc_Normal_Dead_2 = 3153010
tGenId.Monster_Normal_1 = 3153006
tGenId.Monster_Normal_2 = 3153007
tGenId.Monster_Boss = 3153008
tGenId.Wall = 3153001

local tPos = {}
tPos.Monster = {
    "-240.08,-21.14,47",
    "-231.32,-21.14,47",
}
tPos.NpcModel1={
    "-239.89,-21.14,44.6",
    "-242.31,-21.14,48.36",
    "-237.86,-21.14,48.29"
}
tPos.NpcModel2={
    "-231.24,-21.14,44.49",
    "-233.43,-21.14,48.31",
    "-229.14,-21.14,48.44"
}
tPos.Wall = "-236.03,-20.89,55.55"

-- local tCg={
--     155021,
--     155022
-- }


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
rwtNpcGroup[tNpcGroup.Normal_1]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup.Normal_1]["Awards"] = {}
rwtNpcGroup[tNpcGroup.Normal_1]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.Normal_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.Normal_1]["Awards"]["Events"][1]["ChkGenEventNoExist"] = {tGenId.Npc_Normal_2}
rwtNpcGroup[tNpcGroup.Normal_1]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[tNpcGroup.Normal_1]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = tGenId.Monster_Normal_1
rwtNpcGroup[tNpcGroup.Normal_1]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tNpcGroup.Normal_1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.Normal_1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogId"] = tDialog.TalkToNormal_1

rwtDialog[tDialog.TalkToNormal_1] = {}
rwtDialog[tDialog.TalkToNormal_1]["DialogEndInit"] = {}
rwtDialog[tDialog.TalkToNormal_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.TalkToNormal_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.TalkToNormal_1]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}       
rwtDialog[tDialog.TalkToNormal_1]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGenId.Monster_Normal_1

rwtNpcGroup[tNpcGroup.Normal_2] = rwtNpcGroup[tNpcGroup.Normal_2] or {}
rwtNpcGroup[tNpcGroup.Normal_2]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup.Normal_2]["Awards"] = {}
rwtNpcGroup[tNpcGroup.Normal_2]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.Normal_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.Normal_2]["Awards"]["Events"][1]["ChkGenEventNoExist"] = {tGenId.Npc_Normal_1}
rwtNpcGroup[tNpcGroup.Normal_2]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[tNpcGroup.Normal_2]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = tGenId.Monster_Normal_2
rwtNpcGroup[tNpcGroup.Normal_2]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tNpcGroup.Normal_2]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.Normal_2]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogId"] = tDialog.TalkToNormal_2


rwtDialog[tDialog.TalkToNormal_2] = {}
rwtDialog[tDialog.TalkToNormal_2]["DialogEndInit"] = {}
rwtDialog[tDialog.TalkToNormal_2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.TalkToNormal_2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.TalkToNormal_2]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}       
rwtDialog[tDialog.TalkToNormal_2]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGenId.Monster_Normal_2


function rwCopyMap_AnYueChengPre_CheckFirstDie(nId,index)
    local sPos = tPos.Monster[index]
    local tmodelPos = {}
    if index == 2 then
        tmodelPos = tPos.NpcModel1
    elseif index==1 then
        tmodelPos = tPos.NpcModel2
    end

    if rwHasGenEvent(nId) then
        --生成的是泰雷带领小队
        rwAddGenEvent(3153013,tmodelPos[1],70025)
        rwAddGenEvent(3153014,tmodelPos[2],21035,180)
        rwAddGenEvent(3153015,tmodelPos[3],21035,180)
        -- rwUserTempDataSet(nTempDataId,102,CONST_TEMP_DATA.Data1,nUserId)
        --播放动画
        --rwStoryTrigger(15521,2,0)
        rwOpenNpcChatDialog(tDialog.Talkmonster_Dead[index])
        --怨灵墙只播一次
        rwSpecialStatus_AddEffect(7,0,nEffect_WallDisapper,tPos.Wall)
    else
        rwAddGenEvent(3153016,tmodelPos[1],21035)
        rwAddGenEvent(3153017,tmodelPos[2],21035,180)
        rwAddGenEvent(3153018,tmodelPos[3],21035,180)

        --若非一血，旧的生成紫色球、消失法阵换成已经生成的紫色球
        rwSpecialStatus_RemoveEffect(7,0,nEffect_WallDisapper)
        rwSpecialStatus_RemoveEffect(7,0,nEffect_Qiu)
        rwSpecialStatus_RemoveEffect(7,0,nEffect_FaZhen_Death)
        rwSpecialStatus_AddEffect(7,0,nEffect_Qiu_WZ,sPos,0,70)
        -- --删除怨灵墙
        -- rwDelGenEvent(3153001)
        rwOpenNpcChatDialog(tDialog.Talkmonster_DeadClean[index])
    end
    --删除怨灵墙
    rwDelGenEvent(3153001)
end


function rwCopyMap_AnYueChengPre_MonsterDie_1()
    --删除旧NPC模型，生成新的0范围NPC模型
    rwDelGenEvent(tGenId.Npc_Normal_1)
    rwAddGenEvent(tGenId.Npc_Normal_Dead_1)
    
    --检测是否一血
    rwCopyMap_AnYueChengPre_CheckFirstDie(tGenId.Npc_Normal_2,2)

    --生成光效
    rwSpecialStatus_AddEffect(7,0,nEffect_Qiu,tPos.Monster[1],0,70)
    rwSpecialStatus_AddEffect(7,0,nEffect_FaZhen_Death,tPos.Monster[1])
    --删除怪物特性
    rwRemoveMonsterTalent(tGenId.Monster_Boss,nMonster_Boss,texing1)
end

function rwCopyMap_AnYueChengPre_MonsterDie_2()
    --删除旧NPC模型，生成新的0范围NPC模型
    rwDelGenEvent(tGenId.Npc_Normal_2)
    rwAddGenEvent(tGenId.Npc_Normal_Dead_2)
    
    --检测是否一血
    rwCopyMap_AnYueChengPre_CheckFirstDie(tGenId.Npc_Normal_1,1)

    --生成光效
    rwSpecialStatus_AddEffect(7,0,nEffect_Qiu,tPos.Monster[2],0,70)
    rwSpecialStatus_AddEffect(7,0,nEffect_FaZhen_Death,tPos.Monster[2])
    --删除怪物特性
    rwRemoveMonsterTalent(tGenId.Monster_Boss,nMonster_Boss,texing2)
end

-- function rwCopyMap_AnYueChengPre_DisapperWall()
--     rwDelGenEvent(3153001)
-- end
-- rwtCGFinish[15521] = rwtCGFinish[15521] or {}
-- table.insert(rwtCGFinish[15521],rwCopyMap_AnYueChengPre_DisapperWall)
-- rwtCGFinish[15522] = rwtCGFinish[15522] or {}
-- table.insert(rwtCGFinish[15522],rwCopyMap_AnYueChengPre_DisapperWall)

rwtMonsterGroup_Func[tMonster_Group.Normal_1] = rwtMonsterGroup_Func[tMonster_Group.Normal_1] or {}
table.insert(rwtMonsterGroup_Func[tMonster_Group.Normal_1],rwCopyMap_AnYueChengPre_MonsterDie_1)
rwtMonsterGroup_Func[tMonster_Group.Normal_2] = rwtMonsterGroup_Func[tMonster_Group.Normal_2] or {}
table.insert(rwtMonsterGroup_Func[tMonster_Group.Normal_2],rwCopyMap_AnYueChengPre_MonsterDie_2)

-- function rwCopyMap_AnYueChengPre_isHeroFighted()
--     local tFightHeros = rwHeroGetAllInFight()
--     local tDataHero ={}
--     tDataHero[1] = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data2,nUserId)
--     tDataHero[2] = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data3,nUserId)
--     tDataHero[3] = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data4,nUserId)
--     for i = 1,#tDataHero do
--         for y = 1,#tFightHeros do
--             if tDataHero[i] ~= 0 and tDataHero[i] == tFightHeros[y] then
--                 return true
--             end
--         end
--     end
--     return false
-- end

rwtNpcGroup[tNpcGroup.Boss] = rwtNpcGroup[tNpcGroup.Boss] or {}
rwtNpcGroup[tNpcGroup.Boss]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Boss]["NpcId"] = 3924
rwtNpc[3924] = rwtNpc[3924] or {}
rwtNpc[3924]["NpcProcess"] = function()
    -- if rwCopyMap_AnYueChengPre_isHeroFighted() then
    --     rwOpenNpcChatDialog(9990)
    --     return
    -- end

    if rwHasGenEvent(tGenId.Npc_Normal_1) or rwHasGenEvent(tGenId.Npc_Normal_2) then
        rwOpenNpcChatDialog(tDialog.Boss_NoClen)
    else
        rwOpenNpcChatDialog(tDialog.Boss_Clean)
    end
end

rwtDialog[tDialog.Boss_NoClen] = {}
rwtDialog[tDialog.Boss_NoClen]["DialogEndInit"] = {}
rwtDialog[tDialog.Boss_NoClen]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Boss_NoClen]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Boss_NoClen]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}       
rwtDialog[tDialog.Boss_NoClen]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGenId.Monster_Boss

rwtDialog[tDialog.Boss_Clean] = {}
rwtDialog[tDialog.Boss_Clean]["DialogEndInit"] = {}
rwtDialog[tDialog.Boss_Clean]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Boss_Clean]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Boss_Clean]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}       
rwtDialog[tDialog.Boss_Clean]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGenId.Monster_Boss

function rwCopyMap_AnYueChengPre_BossDie()
    rwOpenNpcChatDialog(tDialog.BossDead)
end
rwtMonsterGroup_Func[tMonster_Group.Boss]= rwtMonsterGroup_Func[tMonster_Group.Boss] or {}
table.insert(rwtMonsterGroup_Func[tMonster_Group.Boss],rwCopyMap_AnYueChengPre_BossDie)


--机关
tValve[nvalve] = tValve[nvalve] or {}
tValve[nvalve]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nvalve]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId)
    --打开提示对白
    rwOpenNpcChatDialog(tDialog.valve)
end

--陷阱触发介绍
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_1]["DelTrap"] = 1
rwtNpcGroup[nTrap_1]["Awards"] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15518
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0


--简单难度副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_1,nTarget_2}
rwtCopyMapMission[nCopyMapId]["Target2"]  = {nTarget_3}
-- rwtCopyMapMission[nCopyMapId]["Target1_IsNotDel"] = true
rwtCopyMapMission[nCopyMapId]["Target1_NeedFinishNum"] = 1
--rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15518
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tGenIdInit
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.EnterMap
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1]["MonGenId"] = tGenId.Monster_Boss
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1]["MonsterId"] = nMonster_Boss
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1]["TalentType"] = texing1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2]["MonGenId"] = tGenId.Monster_Boss
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2]["MonsterId"] = nMonster_Boss
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2]["TalentType"] = texing2

