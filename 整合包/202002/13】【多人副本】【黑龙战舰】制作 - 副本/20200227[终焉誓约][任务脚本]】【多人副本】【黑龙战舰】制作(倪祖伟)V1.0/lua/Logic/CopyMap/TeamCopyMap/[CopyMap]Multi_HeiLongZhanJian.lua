--region [CopyMap]Multi_HeiLongZhanJian
--Purpose:		黑龙战舰多人副本
--Creator: 		倪祖伟
--Created:		2020-02-28
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-02-28 $
--RCS-ID:		$Revision: 1 $
--endregion




--**************************************数据定义***************************
--genid分配
--宝箱：3158012-3158013 3158014
--怪物组：3158001-3158011 3158005摩尼耶·投影-3158008-3158009机器人-3158010石像鬼--3158011BOSS

--副本id
local nCopyMapId = 3158
local nTimeMaoPao = 5
local nEffectId = 9999
local nSize = 200
local nBuffId = 104711
local nTempdata = 1293
--掩码：data1：空气墙的触发对白，1=触发了摩尼耶空气墙对白；2=已经击杀了摩尼耶；3=触发了机器人空气墙对白；4=击杀了机器人，并出现了击杀提示
--     data2：触发了宝箱结界的触发对白，1=触发了
--     data3：BOSS的战前对白
--     data4：机器人死其一
--     data5：小兵进度；1=到达战盾面前；2=到达重剑面前；3=到达海鲨面前

local nValve_1 = 1139
local nValve_2 = 1140
local nGenId_Valva1_1 = 3158019
local nGenId_Valva1_2 = 3158020
local nGenId_Valva1_3 = 3158021
local nGenId_Valva2_1 = 3158022
--副本目标
local tTarget = {}
tTarget.Tar1 = 60350
tTarget.Tar2 = 60351
tTarget.Pass = 60069

-------------------------------对白-----------------------
local tDialog = {}
tDialog.EnterMap = 7095
tDialog.Dialog1 = 7096
tDialog.Pass = 7097

tDialog.BattlePre_MoNiYe = 7103
tDialog.BattlePre_YaPLun = 7104
tDialog.BattlePre_YaZiMo = 7096

tDialog.BattleAft_MoNiYe = 7105
tDialog.BattleAft_YaPLun = 7107
-- tDialog.BattleAft_YaZiMo = 7096
tDialog.Wall_MoNiYe = 7106
tDialog.Wall_YaPLun = 7108
tDialog.Wall_JiQiRe = 7108

tDialog.BattleAft_JiQiRe = 7109



-------------------------------NPCGroup-----------------------
--普通宝箱
local nBox_NorMal1 = 40358
local nBox_NorMal2 = 40359
local nBox_Best    = 40360
local nBox_NorMal_GenId1 = 3158012
local nBox_NorMal_GenId2 = 3158013
local nBox_Best_GenId    = 3158014

local nWall_MoNiYe = 3158019    --空气墙
local nWall_JiQiRen1 = 3158020
local nWall_JiQiRen2 = 3158021
local nJieJ_Box = 3158022       --宝箱结界


--篝火
-- local nBonFire = 70051
local nBonFire_GenId = 3158015

--怪物NPC
local tMonNPC = {}
tMonNPC.GenId_MoNiYe = 3158016      --亚玻伦·投影
tMonNPC.GenId_YaPLun = 3158017      --摩尼耶·投影
tMonNPC.GenId_YaZiMo = 3158018      --亚兹莫·投影
tMonNPC.NPCGroup_MoNiYe = 21196
tMonNPC.NPCGroup_YaPLun = 21197
tMonNPC.NPCGroup_YaZiMo = 21198
tMonNPC.NPC_MoNiYe = 4188
tMonNPC.NPC_YaPLun = 4189
tMonNPC.NPC_YaZiMo = 4190
-------------------------------MonsterGroup-----------------------
local tMonsterGroup = {}
local tMonsterGroupGenId = {}

tMonsterGroup.MoNiYe = 200834  --摩尼耶
tMonsterGroupGenId.MoNiYe = 3158005

tMonsterGroup.YaPLun = 200839  --亚玻伦
tMonsterGroupGenId.YaPLun = 3158010

tMonsterGroup.YaZiMo = 200840  --亚兹莫
tMonsterGroupGenId.YaZiMo = 3158011

tMonsterGroup.JiQiRe1  = 200837 --机器人上
tMonsterGroup.JiQiRe2  = 200838 --机器人下
tMonsterGroup.ZhanDun1 = 200830 --战盾
tMonsterGroup.ZhanDun2 = 200831 --战盾
tMonsterGroup.ZhongJ_1 = 200832 --重剑
tMonsterGroup.ZhongJ_2 = 200833 --重剑
tMonsterGroup.HaiSha_1 = 200835 --海鲨
tMonsterGroup.HaiSha_2 = 200836 --海鲨
local nMonsterId_ZhanDn = 1001673   --战盾
local nMonsterId_ZhongJ = 1001674   --重剑
local nMonsterId_HaiSha = 1001676   --海鲨

tMonsterGroupGenId.ZhanDun1 = 3158001   --战盾
tMonsterGroupGenId.ZhanDun2 = 3158002
tMonsterGroupGenId.ZhongJ_1 = 3158003   --重剑
tMonsterGroupGenId.ZhongJ_2 = 3158004
tMonsterGroupGenId.HaiSha_1 = 3158006   --海鲨
tMonsterGroupGenId.HaiSha_2 = 3158007
-------------------------------怪物冒泡-----------------------
local tText = {}
tText.ZhanDun1 = tLuaText[LANGUAGE_CONFIG][70004]
tText.ZhanDun2 = tLuaText[LANGUAGE_CONFIG][70005]
tText.ZhongJ_1 = tLuaText[LANGUAGE_CONFIG][70006]
tText.ZhongJ_2 = tLuaText[LANGUAGE_CONFIG][70007]
tText.HaiSha_1 = tLuaText[LANGUAGE_CONFIG][70008]
tText.HaiSha_2 = tLuaText[LANGUAGE_CONFIG][70009]
-------------------------------奖励数据-----------------------
local tAward = {}
--通关奖励
tAward.Pass = 1001040
tAward.BoxNorMal1 = 1001041
tAward.BoxNorMal2 = 1001042
tAward.BoxBest    = 1001043

--动态创建table
local tDynaGenId = {
    --3宝箱
    nBox_NorMal_GenId1,nBox_NorMal_GenId2,nBox_Best_GenId,
    --3怪物NPC
    tMonNPC.GenId_MoNiYe,tMonNPC.GenId_YaPLun,tMonNPC.GenId_YaZiMo,
    --机关墙，结界
    nWall_MoNiYe,nWall_JiQiRen1,nWall_JiQiRen2,nJieJ_Box,
}

--**************************************逻辑***************************
--function-----------------------------------------------
function fTeamCopyHLgJ_SetTempAll()
    local tUserList = rwGetCurMapUserList()
    if tUserList then
        for i=1,#tUserList do
        end
    end
end
-- function fTeamCopyHLgJ_GetValueTempData()

-- end
-------------------------副本-------------------------
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["Type"] = CONST_COPYMAP_TYPE.MULTI
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.TeamCopyMap
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapId]["Target1"] = {tTarget.Tar1}
rwtCopyMapMission[nCopyMapId]["Target2"] = {tTarget.Tar2}
rwtCopyMapMission[nCopyMapId]["Target99"] = {tTarget.Pass}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.EnterMap
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["ResetValue"] = true

--设置标记，表示小boss处机关是否开启
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["DynCreate"] = tDynaGenId   --动态创建

rwtCopyMapMission[nCopyMapId]["Fire"] = {}  ---篝火配置
rwtCopyMapMission[nCopyMapId]["Fire"]["GenId"] = nBonFire_GenId
rwtCopyMapMission[nCopyMapId]["Fire"]["LifeTime"] = 60
rwtCopyMapMission[nCopyMapId]["Fire"]["InterVal"] = 3
rwtCopyMapMission[nCopyMapId]["Fire"]["ExpBall"] = 8000
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"] = {}
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][1] = "-114.21,21.990,2.5007"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][2] = "-114.87,21.990,-2.334"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][3] = "-110.42,21.990,-0.668"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"] = {}
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][1] = 140		
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][2] = 50
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][3] = -76

rwtCopyMapMission[nCopyMapId]["MultiDestroyFunc"] = function(nCopyMapMissId,nMapId)
    CopyMap_Multi_ShuXinCheng_Destroy(nCopyMapMissId,nMapId)
end

----------------------副本目标-------------------------
rwtTarget[tTarget.Tar1] = {}
rwtTarget[tTarget.Tar1]["Title"] = tLuaText[LANGUAGE_CONFIG][21425]
rwtTarget[tTarget.Tar1]["KillMonsterGroup"] = tMonsterGroup.MoNiYe
rwtTarget[tTarget.Tar1]["ReqCount"] = 1

rwtTarget[tTarget.Tar2] = {}
rwtTarget[tTarget.Tar2]["Title"] = tLuaText[LANGUAGE_CONFIG][21426]
rwtTarget[tTarget.Tar2]["KillMonsterGroup"] = tMonsterGroup.YaZiMo
rwtTarget[tTarget.Tar2]["ReqCount"] = 1


------------宝箱-----------------
--宝箱
rwtNpcGroup[nBox_NorMal1] = rwtNpcGroup[nBox_NorMal1] or {}
rwtNpcGroup[nBox_NorMal1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox 
rwtNpcGroup[nBox_NorMal1]["Awards"] = {}
rwtNpcGroup[nBox_NorMal1]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_NorMal1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_NorMal1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_NorMal1]["Awards"]["Events"][1]["GetServerAward"]["AwardTarget"] = CONST_AWARD_TARGET.TEAM
rwtNpcGroup[nBox_NorMal1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_NorMal1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_NorMal1
rwtNpcGroup[nBox_NorMal1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_NorMal1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.BoxNorMal1

rwtNpcGroup[nBox_NorMal2] = rwtNpcGroup[nBox_NorMal2] or {}
rwtNpcGroup[nBox_NorMal2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox 
rwtNpcGroup[nBox_NorMal2]["Awards"] = {}
rwtNpcGroup[nBox_NorMal2]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_NorMal2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_NorMal2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_NorMal2]["Awards"]["Events"][1]["GetServerAward"]["AwardTarget"] = CONST_AWARD_TARGET.TEAM
rwtNpcGroup[nBox_NorMal2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_NorMal2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_NorMal2
rwtNpcGroup[nBox_NorMal2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_NorMal2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.BoxNorMal2

rwtNpcGroup[nBox_Best] = rwtNpcGroup[nBox_Best] or {}
rwtNpcGroup[nBox_Best]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox 
rwtNpcGroup[nBox_Best]["Awards"] = {}
rwtNpcGroup[nBox_Best]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_Best]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_Best]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Best]["Awards"]["Events"][1]["GetServerAward"]["AwardTarget"] = CONST_AWARD_TARGET.TEAM
rwtNpcGroup[nBox_Best]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Best]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Best
rwtNpcGroup[nBox_Best]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Best]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.BoxBest
----------NPC-----------------
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe] = rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe] or {}
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["NpcId"]= tMonNPC.NPC_MoNiYe

rwtNpcGroup[tMonNPC.NPCGroup_YaPLun] = rwtNpcGroup[tMonNPC.NPCGroup_YaPLun] or {}
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["NpcId"]= tMonNPC.NPC_YaPLun

rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo] = rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo] or {}
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["NpcId"]= tMonNPC.NPC_YaZiMo

rwtNpc[tMonNPC.NPC_MoNiYe] = rwtNpc[tMonNPC.NPC_MoNiYe] or {}
rwtNpc[tMonNPC.NPC_MoNiYe]["DialogId"] = tDialog.BattlePre_MoNiYe
rwtDialog[tDialog.BattlePre_MoNiYe] = {}
rwtDialog[tDialog.BattlePre_MoNiYe]["DialogEndInit"] = {}
rwtDialog[tDialog.BattlePre_MoNiYe]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.BattlePre_MoNiYe]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.BattlePre_MoNiYe]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.BattlePre_MoNiYe]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGenId.MoNiYe

rwtNpc[tMonNPC.NPC_YaPLun] = rwtNpc[tMonNPC.NPC_YaPLun] or {}
rwtNpc[tMonNPC.NPC_YaPLun]["DialogId"] = tDialog.BattlePre_YaPLun
rwtDialog[tDialog.BattlePre_YaPLun] = {}
rwtDialog[tDialog.BattlePre_YaPLun]["DialogEndInit"] = {}
rwtDialog[tDialog.BattlePre_YaPLun]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.BattlePre_YaPLun]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.BattlePre_YaPLun]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.BattlePre_YaPLun]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGenId.YaPLun

rwtNpc[tMonNPC.NPC_YaZiMo] = rwtNpc[tMonNPC.NPC_YaZiMo] or {}
rwtNpc[tMonNPC.NPC_YaZiMo]["NpcProcess"] = function()
    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data3,nuserId)
    if index == 0 then
        rwOpenNpcChatDialog(tDialog.BattlePre_YaZiMo)
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data3, nuserId)
    else
        AutoBattle(tMonsterGroupGenId.YaZiMo)
    end
end
rwtDialog[tDialog.BattlePre_YaZiMo] = {}
rwtDialog[tDialog.BattlePre_YaZiMo]["DialogEndInit"] = {}
rwtDialog[tDialog.BattlePre_YaZiMo]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.BattlePre_YaZiMo]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.BattlePre_YaZiMo]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.BattlePre_YaZiMo]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGenId.YaZiMo
----------怪物-----------------
--Boss
--死亡后，所有玩家，播放对白
rwtMonsterGroup[tMonsterGroup.YaZiMo] = rwtMonsterGroup[tMonsterGroup.YaZiMo] or {}
rwtMonsterGroup[tMonsterGroup.YaZiMo]["BattleWin"] = function()
    local tUserList = rwGetCurMapUserList()
    if tUserList then
        for i=1,#tUserList do
            rwOpenNpcChatDialog(tDialog.Pass,CONST_NPCCHAT_TYPE.NPC,tMonsterGroup.YaZiMo,tUserList[i])
        end
    end
end
--摩尼耶
--设所有玩家 data1 = 2；表示空气墙对白进入下一阶段
--删除空气墙
--死亡后当前玩家播放对白
rwtMonsterGroup[tMonsterGroup.MoNiYe] = rwtMonsterGroup[tMonsterGroup.MoNiYe] or {}
rwtMonsterGroup[tMonsterGroup.MoNiYe]["BattleWin"] = function()
    local tUserList = rwGetCurMapUserList()
    if tUserList then
        for i=1,#tUserList do
            --设掩码data1 = 2：已经击杀摩尼耶
            rwUserTempDataSet(nTempdata,2,CONST_TEMP_DATA.Data1, tUserList[i])
        end
    end
    rwDelGenEvent(nGenId_Valva1_1)
    rwDelGenEvent(tMonNPC.GenId_MoNiYe)
    rwOpenNpcChatDialog(tDialog.BattleAft_MoNiYe)
end
--亚破伦
--死亡后删除宝箱结界
--死亡后，当前玩家，播放对白
rwtMonsterGroup[tMonsterGroup.YaPLun] = rwtMonsterGroup[tMonsterGroup.YaPLun] or {}
rwtMonsterGroup[tMonsterGroup.YaPLun]["BattleWin"] = function()
    rwDelGenEvent(nGenId_Valva2_1)
    rwDelGenEvent(tMonNPC.GenId_YaPLun)
    rwOpenNpcChatDialog(tDialog.BattleAft_YaPLun)
end

--机器人
--删除身后结界
--判断掩码data4=0；若机器人没有全清，所有玩家播放提示
--机器人死亡后当前玩家播放对白
rwtMonsterGroup[tMonsterGroup.JiQiRe1] = rwtMonsterGroup[tMonsterGroup.JiQiRe1] or {}
rwtMonsterGroup[tMonsterGroup.JiQiRe1]["BattleWin"] = function()
    rwDelGenEvent(nGenId_Valva1_2)
    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data4,nuserId)
    --==0：说明两只都没死
    if index == 0 then
        local tUserList = rwGetCurMapUserList()
        if tUserList then
            for i=1,#tUserList do
                rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data4, tUserList[i])
                rwSendSystemMessage("可以打BOSS了",2,2,tUserList[i])
            end
        end
    end
    rwOpenNpcChatDialog(tDialog.BattleAft_JiQiRe)
end
rwtMonsterGroup[tMonsterGroup.JiQiRe2] = rwtMonsterGroup[tMonsterGroup.JiQiRe2] or {}
rwtMonsterGroup[tMonsterGroup.JiQiRe2]["BattleWin"] = function()
    rwDelGenEvent(nGenId_Valva1_3)
    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data4,nuserId)
    --==0：说明两只都没死
    if index == 0 then
        local tUserList = rwGetCurMapUserList()
        if tUserList then
            for i=1,#tUserList do
                rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data4, tUserList[i])
                rwSendSystemMessage("可以打BOSS了",2,2,tUserList[i])
            end
        end
    end
    rwOpenNpcChatDialog(tDialog.BattleAft_JiQiRe)
end
--战盾小兵
--战前检测
rwtMonsterGroup[tMonsterGroup.ZhanDun1] = {}
rwtMonsterGroup[tMonsterGroup.ZhanDun1]["BattleCheckFunc"] = function()
    rwSynBubbleInfo(tMonsterGroupGenId.ZhanDun1,tText.ZhanDun1,0,5)
    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data5,nuserId)
    if index == 0 then
        local tUserList = rwGetCurMapUserList()
        if tUserList then
            for i=1,#tUserList do
                rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data5, tUserList[i])
            end
        end
        rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhanDun1, nEffectId,"0,0,0","0,0,0",nSize)
        rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhanDun2, nEffectId,"0,0,0","0,0,0",nSize)
        rwMonsterAddStatus(tMonsterGroupGenId.ZhanDun1, nMonsterId_ZhanDn, nBuffId)
        rwMonsterAddStatus(tMonsterGroupGenId.ZhanDun2, nMonsterId_ZhanDn, nBuffId)
    end
    return true
end
rwtMonsterGroup[tMonsterGroup.ZhanDun2] = {}
rwtMonsterGroup[tMonsterGroup.ZhanDun2]["BattleCheckFunc"] = function()
    rwSynBubbleInfo(tMonsterGroupGenId.ZhanDun2,tText.ZhanDun2,0,5)
    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data5,nuserId)
    if index == 0 then
        local tUserList = rwGetCurMapUserList()
        if tUserList then
            for i=1,#tUserList do
                rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data5, tUserList[i])
            end
        end
        rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhanDun1, nEffectId,"0,0,0","0,0,0",nSize)
        rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhanDun2, nEffectId,"0,0,0","0,0,0",nSize)
        rwMonsterAddStatus(tMonsterGroupGenId.ZhanDun1, nMonsterId_ZhanDn, nBuffId)
        rwMonsterAddStatus(tMonsterGroupGenId.ZhanDun2, nMonsterId_ZhanDn, nBuffId)
    end
    return true
end

rwtMonsterGroup[tMonsterGroup.ZhongJ_1] = {}
rwtMonsterGroup[tMonsterGroup.ZhongJ_1]["BattleCheckFunc"] = function()
    rwSynBubbleInfo(tMonsterGroupGenId.ZhongJ_1,tText.ZhongJ_1,0,5)
    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data5,nuserId)
    if index == 1 then
        local tUserList = rwGetCurMapUserList()
        if tUserList then
            for i=1,#tUserList do
                rwUserTempDataSet(nTempdata,2,CONST_TEMP_DATA.Data5, tUserList[i])
            end
        end
        rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhongJ_1, nEffectId,"0,0,0","0,0,0",nSize)
        rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhongJ_2, nEffectId,"0,0,0","0,0,0",nSize)
        rwMonsterAddStatus(tMonsterGroupGenId.ZhongJ_1, nMonsterId_ZhongJ, nBuffId)
        rwMonsterAddStatus(tMonsterGroupGenId.ZhongJ_2, nMonsterId_ZhongJ, nBuffId)
    end
    return true
end
rwtMonsterGroup[tMonsterGroup.ZhongJ_2] = {}
rwtMonsterGroup[tMonsterGroup.ZhongJ_2]["BattleCheckFunc"] = function()
    rwSynBubbleInfo(tMonsterGroupGenId.ZhongJ_2,tText.ZhongJ_2,0,5)
    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data5,nuserId)
    if index == 1 then
        local tUserList = rwGetCurMapUserList()
        if tUserList then
            for i=1,#tUserList do
                rwUserTempDataSet(nTempdata,2,CONST_TEMP_DATA.Data5, tUserList[i])
            end
        end
        rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhongJ_1, nEffectId,"0,0,0","0,0,0",nSize)
        rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhongJ_2, nEffectId,"0,0,0","0,0,0",nSize)
        rwMonsterAddStatus(tMonsterGroupGenId.ZhongJ_1, nMonsterId_ZhongJ, nBuffId)
        rwMonsterAddStatus(tMonsterGroupGenId.ZhongJ_2, nMonsterId_ZhongJ, nBuffId)
    end
    return true
end

rwtMonsterGroup[tMonsterGroup.HaiSha_1] = {}
rwtMonsterGroup[tMonsterGroup.HaiSha_1]["BattleCheckFunc"] = function()
    rwSynBubbleInfo(tMonsterGroupGenId.HaiSha_1,tText.HaiSha_1,0,5)
    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data5,nuserId)
    if index == 2 then
        local tUserList = rwGetCurMapUserList()
        if tUserList then
            for i=1,#tUserList do
                rwUserTempDataSet(nTempdata,3,CONST_TEMP_DATA.Data5, tUserList[i])
            end
        end
        rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.HaiSha_1, nEffectId,"0,0,0","0,0,0",nSize)
        rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.HaiSha_2, nEffectId,"0,0,0","0,0,0",nSize)
        rwMonsterAddStatus(tMonsterGroupGenId.HaiSha_1, nMonsterId_HaiSha, nBuffId)
        rwMonsterAddStatus(tMonsterGroupGenId.HaiSha_2, nMonsterId_HaiSha, nBuffId)
    end
    return true
end
rwtMonsterGroup[tMonsterGroup.HaiSha_2] = {}
rwtMonsterGroup[tMonsterGroup.HaiSha_2]["BattleCheckFunc"] = function()
    rwSynBubbleInfo(tMonsterGroupGenId.HaiSha_2,tText.HaiSha_2,0,5)
    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data5,nuserId)
    if index == 2 then
        local tUserList = rwGetCurMapUserList()
        if tUserList then
            for i=1,#tUserList do
                rwUserTempDataSet(nTempdata,3,CONST_TEMP_DATA.Data5, tUserList[i])
            end
        end
        rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.HaiSha_1, nEffectId,"0,0,0","0,0,0",nSize)
        rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.HaiSha_2, nEffectId,"0,0,0","0,0,0",nSize)
        rwMonsterAddStatus(tMonsterGroupGenId.HaiSha_1, nMonsterId_HaiSha, nBuffId)
        rwMonsterAddStatus(tMonsterGroupGenId.HaiSha_2, nMonsterId_HaiSha, nBuffId)
    end
    return true
end
--怪物冒泡
rwtBubbleGenInfo[tMonsterGroupGenId.ZhanDun1] = {}
rwtBubbleGenInfo[tMonsterGroupGenId.ZhanDun1]["BubbleText"] = tText.ZhanDun1
rwtBubbleGenInfo[tMonsterGroupGenId.ZhanDun1]["BubbleMode"] = 0 
rwtBubbleGenInfo[tMonsterGroupGenId.ZhanDun1]["BubbleTime"] = nTimeMaoPao
rwtBubbleGenInfo[tMonsterGroupGenId.ZhanDun2] = {}
rwtBubbleGenInfo[tMonsterGroupGenId.ZhanDun2]["BubbleText"] = tText.ZhanDun2
rwtBubbleGenInfo[tMonsterGroupGenId.ZhanDun2]["BubbleMode"] = 0 
rwtBubbleGenInfo[tMonsterGroupGenId.ZhanDun2]["BubbleTime"] = nTimeMaoPao

rwtBubbleGenInfo[tMonsterGroupGenId.ZhongJ_1] = {}
rwtBubbleGenInfo[tMonsterGroupGenId.ZhongJ_1]["BubbleText"] = tText.ZhongJ_1
rwtBubbleGenInfo[tMonsterGroupGenId.ZhongJ_1]["BubbleMode"] = 0 
rwtBubbleGenInfo[tMonsterGroupGenId.ZhongJ_1]["BubbleTime"] = nTimeMaoPao
rwtBubbleGenInfo[tMonsterGroupGenId.ZhongJ_2] = {}
rwtBubbleGenInfo[tMonsterGroupGenId.ZhongJ_2]["BubbleText"] = tText.ZhongJ_2
rwtBubbleGenInfo[tMonsterGroupGenId.ZhongJ_2]["BubbleMode"] = 0 
rwtBubbleGenInfo[tMonsterGroupGenId.ZhongJ_2]["BubbleTime"] = nTimeMaoPao

rwtBubbleGenInfo[tMonsterGroupGenId.HaiSha_1] = {}
rwtBubbleGenInfo[tMonsterGroupGenId.HaiSha_1]["BubbleText"] = tText.HaiSha_1
rwtBubbleGenInfo[tMonsterGroupGenId.HaiSha_1]["BubbleMode"] = 0 
rwtBubbleGenInfo[tMonsterGroupGenId.HaiSha_1]["BubbleTime"] = nTimeMaoPao
rwtBubbleGenInfo[tMonsterGroupGenId.HaiSha_2] = {}
rwtBubbleGenInfo[tMonsterGroupGenId.HaiSha_2]["BubbleText"] = tText.HaiSha_2
rwtBubbleGenInfo[tMonsterGroupGenId.HaiSha_2]["BubbleMode"] = 0 
rwtBubbleGenInfo[tMonsterGroupGenId.HaiSha_2]["BubbleTime"] = nTimeMaoPao

--空气墙---------------------------
tValve[nValve_1] = tValve[nValve_1] or {}
tValve[nValve_1]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nValve_1]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)
    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data1,nuserId)
    --==0：第一次触碰空气墙
    if index == 0 then
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data1, nuserId)
        rwOpenNpcChatDialog(tDialog.Wall_MoNiYe)
    --==2：击杀了摩尼耶，进入下一阶段了
    elseif index ==2 then
        rwUserTempDataSet(nTempdata,3,CONST_TEMP_DATA.Data1, nuserId)
        rwOpenNpcChatDialog(tDialog.Wall_JiQiRe)
    end
end
tValve[nValve_2] = tValve[nValve_2] or {}
tValve[nValve_2]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nValve_2]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)
    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data2,nuserId)
    if index == 0 then
        rwOpenNpcChatDialog(tDialog.Wall_YaPLun)
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data2, nuserId)
    end
end
--**************************************函数***************************
--销毁副本
function CopyMap_Multi_ShuXinCheng_Destroy(nCopyMapId,nDynMapId)
    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId] = {}
end
