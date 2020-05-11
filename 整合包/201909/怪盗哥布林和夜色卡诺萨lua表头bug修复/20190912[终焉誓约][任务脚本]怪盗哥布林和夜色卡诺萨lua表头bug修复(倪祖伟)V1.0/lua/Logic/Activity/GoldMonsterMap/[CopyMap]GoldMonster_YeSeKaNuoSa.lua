--region [CopyMap]GoldMonster_YeSeKaNuoSa
--Purpose:		怪盗夜色卡诺萨
--Creator: 		倪祖伟
--Created:		2019-09-12
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-09-12 $
--RCS-ID:		$Revision: 1 $
--endregion

--endregion
--===========================副本基础配置====================================--
local tGuaiDaiCreateGen = {
    3154001,3154002,3154003,    --怪物
    3154007,3154008,3154009,
    3154011,3154012,
    3154034,3154035,
    }
local tAwardID = {}
tAwardID[1] = 1000824
tAwardID[2] = 1000825
tAwardID[3] = 1000826
local nCopyMapMissId = 3154
local nUserId = rwUserGetId()
local nItem1 = 7000008
local nItem2 = 7000009
local tBiaoQian = {}
tBiaoQian[1] = "NPC"
tBiaoQian[2] = "NPC"
tBiaoQian[3] = "NPC"
tBiaoQian[4] = "NPC"
tBiaoQian[5] = "Monster1"
tBiaoQian[6] = "Monster2"
tBiaoQian[7] = "Monster3"
tBiaoQian[8] = "Monster4"
tBiaoQian[9] = "Monster5"
tBiaoQian[10]= "Monster6"

local tNpcPos={}
-- tNpcPos[1] = "-77.68,17.644,-8.064"
-- tNpcPos[2] = "-68.76,17.644,-11.49"
-- tNpcPos[3] = "-59.73,17.644,-8.282"
-- tNpcPos[4] = "-64.71,20.617,25.699"
-- tNpcPos[5] = "-63.70,25.434,68.928"
-- tNpcPos[6] = "-73.28,20.560,104.83"
-- tNpcPos[7] = "-78.66,20.684,136.18"
-- tNpcPos[8] = "-67.17,20.684,145.06"
-- tNpcPos[9] = "-59.71,20.684,136.69"
-- tNpcPos[10]= "-37.74,23.315,80.837"
-- tNpcPos[11]= "-16.84,23.398,88.355"
-- tNpcPos[12]= "-8.996,22.717,81.559"
-- tNpcPos[13]= "-0.222,22.783,58.221"
-- tNpcPos[14]= "13.249,22.777,86.645"
-- tNpcPos[15]= "8.1129,22.631,98.417"
-- tNpcPos[16]= "17.719,22.631,116.09"
-- tNpcPos[17]= "42.964,22.631,110.75"
-- tNpcPos[18]= "64.313,22.631,131.46"
-- tNpcPos[19]= "35.517,22.631,83.977"
-- tNpcPos[20]= "47.549,22.631,79.362"

tNpcPos[1] = "-75.92,21.064,6.2106"
tNpcPos[2] = "-68.46,19.163,-3.095"
tNpcPos[3] = "-61.08,21.064,6.3664"
tNpcPos[4] = "-58.97,23.358,54.782"
tNpcPos[5] = "-63.70,25.434,68.928"
tNpcPos[6] = "-77.73,23.354,82.829"
tNpcPos[7] = "-78.66,20.684,136.18"
tNpcPos[8] = "-67.17,20.684,145.06"
tNpcPos[9] = "-59.71,20.684,136.69"
tNpcPos[10]= "-37.74,23.315,80.837"
tNpcPos[11]= "-18.08,23.315,80.837"
tNpcPos[12]= "-8.996,22.717,81.559"
tNpcPos[13]= "-0.222,22.783,58.221"
tNpcPos[14]= "13.249,22.777,86.645"
tNpcPos[15]= "8.1129,22.631,98.417"
tNpcPos[16]= "17.719,22.631,117.32"
tNpcPos[17]= "42.964,22.631,110.75"
tNpcPos[18]= "20.780,22.631,77.821"
tNpcPos[19]= "35.517,22.631,83.977"
tNpcPos[20]= "47.549,22.631,79.362"

local tNpcRot = {}
-- tNpcRot[1] = 50
-- tNpcRot[2] = 0
-- tNpcRot[3] = -50
-- tNpcRot[4] = -90
-- tNpcRot[5] = 90
-- tNpcRot[6] = 90
-- tNpcRot[7] = 90
-- tNpcRot[8] = 0
-- tNpcRot[9] = -90
-- tNpcRot[10]= 180
-- tNpcRot[11]= 90
-- tNpcRot[12]= 180
-- tNpcRot[13]= 0
-- tNpcRot[14]= 90
-- tNpcRot[15]= 110
-- tNpcRot[16]= 90
-- tNpcRot[17]= 180
-- tNpcRot[18]= 0
-- tNpcRot[19]= 180
-- tNpcRot[20]= 180

tNpcRot[1] = 90
tNpcRot[2] = 180
tNpcRot[3] = -90
tNpcRot[4] = -40
tNpcRot[5] = 90
tNpcRot[6] = 150
tNpcRot[7] = 90
tNpcRot[8] = 0
tNpcRot[9] = -90
tNpcRot[10]= 180
tNpcRot[11]= 180
tNpcRot[12]= 180
tNpcRot[13]= 0
tNpcRot[14]= 90
tNpcRot[15]= 110
tNpcRot[16]= 90
tNpcRot[17]= 180
tNpcRot[18]= -144
tNpcRot[19]= 180
tNpcRot[20]= 180

local tGenId_Npc={}
tGenId_Npc[1] = 3154016
tGenId_Npc[2] = 3154017
tGenId_Npc[3] = 3154018
tGenId_Npc[4] = 3154019
tGenId_Npc[5] = 3154020
tGenId_Npc[6] = 3154021
tGenId_Npc[7] = 3154022
tGenId_Npc[8] = 3154023
tGenId_Npc[9] = 3154024
tGenId_Npc[10]= 3154025
local tGenId_NpcMBMonster={}
tGenId_NpcMBMonster[1] = 3154016
tGenId_NpcMBMonster[2] = 3154017
tGenId_NpcMBMonster[3] = 3154021
tGenId_NpcMBMonster[4] = 3154022
tGenId_NpcMBMonster[5] = 3154024

local tNPCGroup = {}
tNPCGroup[1] = 21045
tNPCGroup[2] = 21046
tNPCGroup[3] = 21047
tNPCGroup[4] = 21048
tNPCGroup[5] = 21049
tNPCGroup[6] = 21050
tNPCGroup[7] = 21051
tNPCGroup[8] = 21052
tNPCGroup[9] = 21053
tNPCGroup[10]= 21054

local tNPCGroupBox = {}
tNPCGroupBox[1] = 40348
tNPCGroupBox[2] = 40349
local tBoxPos = {}
tBoxPos[1] = "50.95,22.63,85.594"
tBoxPos[2] = "-0.26,22.76,54.290"
tBoxPos[3] = "-15.4,22.79,80.257"
tBoxPos[4] = "-38.7,23.31,85.405"
tBoxPos[5] = "-73.4,25.43,68.849"
local tBoxRot = {}
tBoxRot[1] = 180
tBoxRot[2] = 0
tBoxRot[3] = 180
tBoxRot[4] = 180
tBoxRot[5] = -90
local tGenId_Box={}
tGenId_Box[1] = 3154026
tGenId_Box[2] = 3154027
-----------------------
local tMonsterGroup = {}--巡逻士兵
tMonsterGroup[1] = 200785
tMonsterGroup[2] = 200786
tMonsterGroup[3] = 200787
tMonsterGroup[4] = 200791
tMonsterGroup[5] = 200792
tMonsterGroup[6] = 200794
tMonsterGroup[7] = 200795
tMonsterGroup[8] = 200796

local tMonsterGroupJG = {}--巡逻教官
tMonsterGroupJG[1] = 200788
tMonsterGroupJG[2] = 200789
tMonsterGroupJG[3] = 200790
tMonsterGroupJG[4] = 200793
tMonsterGroupJG[5] = 200797
tMonsterGroupJG[6] = 200798
tMonsterGroupJG[7] = 200799

local tMonsterMon = {}--真正的怪
tMonsterMon[1] = 200802
tMonsterMon[2] = 200800
tMonsterMon[3] = 200803
tMonsterMon[4] = 200804
tMonsterMon[5] = 200801
local MonsterGuaiDao = 200805--怪盗

local tGenId_Monster = {}
tGenId_Monster[3154016] = 3154030
tGenId_Monster[3154017] = 3154028
tGenId_Monster[3154021] = 3154031
tGenId_Monster[3154022] = 3154032
tGenId_Monster[3154024] = 3154029
local GuaiDaoGenId = 3154033

local tGenId_MonsterToNPC = {}
tGenId_MonsterToNPC[3154030] = 3154016
tGenId_MonsterToNPC[3154028] = 3154017
tGenId_MonsterToNPC[3154031] = 3154021
tGenId_MonsterToNPC[3154032] = 3154022
tGenId_MonsterToNPC[3154029] = 3154024
--======对白配置
local tDialogs = {}
--进入副本
tDialogs.Enter = 6977
--被士兵发现
tDialogs.SBFind= 6978
tDialogs.JGFind= 7012   --教官发现
--NPC交流
tDialogs[21045]= 6979
tDialogs[21046]= 6980
tDialogs[21047]= 6981
tDialogs[21048]= 6982
tDialogs[21049]= 6983
tDialogs[21050]= 6984
tDialogs[21051]= 6985
tDialogs[21052]= 6986
tDialogs[21053]= 6987
tDialogs[21054]= 6988
--NPC争执
tDialogs[6979] = 6989
tDialogs[6980] = 6990
tDialogs[6981] = 6991
tDialogs[6982] = 6992
tDialogs[6983] = 6993
tDialogs[6984] = 6994
tDialogs[6985] = 6995
tDialogs[6986] = 6996
tDialogs[6987] = 6997
tDialogs[6988] = 6998
-- 发现是普通怪
tDialogs[3154016] = 6999
tDialogs[3154017] = 7000
tDialogs[3154021] = 7001
tDialogs[3154022] = 7002
tDialogs[3154024] = 7003
--发现怪盗
tDialogs["GuaiDao"] = 7004
--怪物战后
tDialogs.MbattleAfter = 7005
tDialogs.GbattleAfter = 7006
--获得制服
tDialogs.GetUniform = 7007
--特殊士兵引开对白
tDialogs.ShiB1 = 7008
tDialogs.ShiB2 = 7009
tDialogs.ShiB3 = 7010
tDialogs.ShiBFind = 7011


--==巡逻怪逻辑======================
-- for i,v in ipairs(tMonsterGroup) do
--     rwtMonsterGroup[v] = {}
--     rwtMonsterGroup[v]["BattleCheckFunc"] = function()
--         return false
--     end
-- end
for i,v in ipairs(tMonsterGroupJG) do
    rwtMonsterGroup[v] = {}
    rwtMonsterGroup[v]["BattleCheckFunc"] = function()
        rwStatusRemove(1003,1)
        return false
    end
end
--==陷阱拦路===================================
rwtNpcGroup[30705] = {}
rwtNpcGroup[30705]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30705]["Awards"] = {}  
rwtNpcGroup[30705]["Awards"]["Events"] = {}   
rwtNpcGroup[30705]["Awards"]["Events"][1] = {}
rwtNpcGroup[30705]["Awards"]["Events"][1]["AddState"] = {}          
rwtNpcGroup[30705]["Awards"]["Events"][1]["AddState"]["SpecialState"] = CONST_USER_SPECIAL_STATE.HIDE 
rwtNpcGroup[30705]["Awards"]["Events"][1]["AddState"]["SpecialStateParam"] = 0
--==NPC逻辑=============================
for i, v in ipairs(tNPCGroup) do
    rwtNpcGroup[v] = {}
    rwtNpcGroup[v]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
    rwtNpcGroup[v]["Awards"] = {}
    rwtNpcGroup[v]["Awards"]["Events"] = {}
    rwtNpcGroup[v]["Awards"]["Events"][1] = {}
    rwtNpcGroup[v]["Awards"]["Events"][1]["OpenDialog"] = {}
    rwtNpcGroup[v]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogs[v]
end

rwtNpcGroup[tNPCGroupBox[1]] = {}
rwtNpcGroup[tNPCGroupBox[1]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tNPCGroupBox[1]]["Awards"] = {}
rwtNpcGroup[tNPCGroupBox[1]]["Awards"]["Events"] = {}
rwtNpcGroup[tNPCGroupBox[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNPCGroupBox[1]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tNPCGroupBox[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tNPCGroupBox[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tNPCGroupBox[1]
rwtNpcGroup[tNPCGroupBox[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tNPCGroupBox[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardID[1]

rwtNpcGroup[tNPCGroupBox[2]] = {}
rwtNpcGroup[tNPCGroupBox[2]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tNPCGroupBox[2]]["Awards"] = {}
rwtNpcGroup[tNPCGroupBox[2]]["Awards"]["Events"] = {}
rwtNpcGroup[tNPCGroupBox[2]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNPCGroupBox[2]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tNPCGroupBox[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tNPCGroupBox[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tNPCGroupBox[2]
rwtNpcGroup[tNPCGroupBox[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tNPCGroupBox[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardID[2]


--==对白逻辑====================================

for i = 6979,6988 do
    rwtDialog[i] = {}
    rwtDialog[i]["DialogEnd"] = function(nId)
        if rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["GuaiDaiGenId"] and rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["GuaiDaiGenId"] == nId then
            rwOpenNpcChatDialog(tDialogs["GuaiDao"])
        elseif rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["MonsterInfo"]["Monster1"] and rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["MonsterInfo"]["Monster1"] == nId then
            rwOpenNpcChatDialog(tDialogs[nId])
        elseif rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["MonsterInfo"]["Monster2"] and rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["MonsterInfo"]["Monster2"] == nId then
            rwOpenNpcChatDialog(tDialogs[nId])
        else
            rwOpenNpcChatDialog(tDialogs[i])
        end
    end
end
rwtDialog[tDialogs[3154016]] = {}
rwtDialog[tDialogs[3154016]]["DialogEndInit"] = {}
rwtDialog[tDialogs[3154016]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs[3154016]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs[3154016]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialogs[3154016]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGenId_Monster[3154016]

rwtDialog[tDialogs[3154017]] = {}
rwtDialog[tDialogs[3154017]]["DialogEndInit"] = {}
rwtDialog[tDialogs[3154017]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs[3154017]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs[3154017]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialogs[3154017]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGenId_Monster[3154017]

rwtDialog[tDialogs[3154021]] = {}
rwtDialog[tDialogs[3154021]]["DialogEndInit"] = {}
rwtDialog[tDialogs[3154021]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs[3154021]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs[3154021]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialogs[3154021]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGenId_Monster[3154021]

rwtDialog[tDialogs[3154022]] = {}
rwtDialog[tDialogs[3154022]]["DialogEndInit"] = {}
rwtDialog[tDialogs[3154022]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs[3154022]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs[3154022]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialogs[3154022]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGenId_Monster[3154022]

rwtDialog[tDialogs[3154024]] = {}
rwtDialog[tDialogs[3154024]]["DialogEndInit"] = {}
rwtDialog[tDialogs[3154024]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs[3154024]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs[3154024]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialogs[3154024]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGenId_Monster[3154024]

rwtDialog[tDialogs["GuaiDao"]] = {}
rwtDialog[tDialogs["GuaiDao"]]["DialogEndInit"] = {}
rwtDialog[tDialogs["GuaiDao"]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["GuaiDao"]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["GuaiDao"]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialogs["GuaiDao"]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = GuaiDaoGenId
--==怪物死亡==========================================
function CopyMap_GDYeSeKaNuoSa_monsterDie(nMonsterGroupType, nMonsterGroupId, nGenId)
    if tGenId_MonsterToNPC[nGenId] then
        rwDelGenEvent(tGenId_MonsterToNPC[nGenId])
    end
    rwOpenNpcChatDialog(tDialogs.MbattleAfter)
end

for i,v in ipairs(tMonsterMon) do
    rwtMonsterGroup_Func[v] = rwtMonsterGroup_Func[v] or {}
    table.insert(rwtMonsterGroup_Func[v],CopyMap_GDYeSeKaNuoSa_monsterDie)
end

function CopyMap_GDYeSeKaNuoSa_Pass()
    rwPrintErrorLog("---------------")
    rwClearGenEvent(2)
    rwOpenNpcChatDialog(tDialogs.GbattleAfter)
    -- for i,v in ipairs(tGuaiDaiCreateGen)do
    --     rwDelGenEvent(v)
    -- end
    rwPrintErrorLog("2---------------2")
end
rwtMonsterGroup_Func[MonsterGuaiDao] = rwtMonsterGroup_Func[MonsterGuaiDao] or {}
table.insert(rwtMonsterGroup_Func[MonsterGuaiDao],CopyMap_GDYeSeKaNuoSa_Pass)

rwtDialog[tDialogs.GbattleAfter] = {}
rwtDialog[tDialogs.GbattleAfter]["DialogEndInit"] = {}
rwtDialog[tDialogs.GbattleAfter]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs.GbattleAfter]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs.GbattleAfter]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogs.GbattleAfter]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtDialog[tDialogs.GbattleAfter]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = MonsterGuaiDao
rwtDialog[tDialogs.GbattleAfter]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogs.GbattleAfter]["DialogEndInit"]["Events"][1]["GetServerAward"]["isAwardByGoldMonster"] = true

--==道具========================================
rwtItem[nItem1] = rwtItem[nItem1] or {}
rwtItem[nItem1]["Function"] = function(nItemType)
    if rwItemDel(nItem1) then
        rwStatusAddHide(15)
    end
end

rwtItem[nItem2] = rwtItem[nItem2] or {}
rwtItem[nItem2]["Function"] = function(nItemType)
    if rwItemDel(nItem2) then
        rwStatusAdd(1003)
        rwSpecialStatus_ChangeLookFace(1, nUserId, 0, 52011)
    end
end
--============================================
-- function CopyMap_GDYeSeKaNuoSa_opendiaolog(id)
--     rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["NPCDialog"] = id
--     rwOpenNpcChatDialog(id)
-- end

--==副本配置====================================

rwtTarget[60340] = {}
rwtTarget[60340]["Title"] = nil--tLuaText[LANGUAGE_CONFIG][21230]
-- rwtTarget[60340]["KillMonsterGroup"] = MonsterGuaiDao
rwtTarget[60340]["ReqDialogId"] = tDialogs.GbattleAfter
rwtTarget[60340]["ReqCount"] = 1

-- rwtTarget[60006] = {}
-- rwtTarget[60006]["Title"] = nil--tLuaText[LANGUAGE_CONFIG][21230]
-- rwtTarget[60006]["ReqDialogId"] = 7012
-- rwtTarget[60006]["ReqCount"] = 1

rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {60340}
-- rwtCopyMapMission[nCopyMapMissId]["Target2"] = {60006}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogs.Enter
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tGuaiDaiCreateGen
-- 全局表存随机到怪物的信息
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "MonsterInfo"
-- --宝箱随机
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = tNpcPos[1]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = tNpcRot[1]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = tNpcPos[2]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = tNpcRot[2]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = tNpcPos[3]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = tNpcRot[3]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["Pos"] = tNpcPos[4]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["RotationY"] = tNpcRot[4]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["Pos"] = tNpcPos[5]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["RotationY"] = tNpcRot[5]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6]["Pos"] = tNpcPos[6]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6]["RotationY"] = tNpcRot[6]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][7] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][7]["Pos"] = tNpcPos[7]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][7]["RotationY"] = tNpcRot[7]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][8] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][8]["Pos"] = tNpcPos[8]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][8]["RotationY"] = tNpcRot[8]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][9] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][9]["Pos"] = tNpcPos[9]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][9]["RotationY"] = tNpcRot[9]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][10] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][10]["Pos"] = tNpcPos[10]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][10]["RotationY"] = tNpcRot[10]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][11] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][11]["Pos"] = tNpcPos[11]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][11]["RotationY"] = tNpcRot[11]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][12] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][12]["Pos"] = tNpcPos[12]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][12]["RotationY"] = tNpcRot[12]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][13] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][13]["Pos"] = tNpcPos[13]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][13]["RotationY"] = tNpcRot[13]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][14] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][14]["Pos"] = tNpcPos[14]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][14]["RotationY"] = tNpcRot[14]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][15] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][15]["Pos"] = tNpcPos[15]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][15]["RotationY"] = tNpcRot[15]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][16] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][16]["Pos"] = tNpcPos[16]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][16]["RotationY"] = tNpcRot[16]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][17] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][17]["Pos"] = tNpcPos[17]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][17]["RotationY"] = tNpcRot[17]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][18] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][18]["Pos"] = tNpcPos[18]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][18]["RotationY"] = tNpcRot[18]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][19] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][19]["Pos"] = tNpcPos[19]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][19]["RotationY"] = tNpcRot[19]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][20] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][20]["Pos"] = tNpcPos[20]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][20]["RotationY"] = tNpcRot[20]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 10
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tGenId_Npc[1]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = tGenId_Npc[2]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["GenId"] = tGenId_Npc[3]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][4] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][4]["GenId"] = tGenId_Npc[4]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][5] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][5]["GenId"] = tGenId_Npc[5]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][6] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][6]["GenId"] = tGenId_Npc[6]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][7] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][7]["GenId"] = tGenId_Npc[7]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][8] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][8]["GenId"] = tGenId_Npc[8]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][9] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][9]["GenId"] = tGenId_Npc[9]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][10] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][10]["GenId"] = tGenId_Npc[10]
--宝箱
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["MinRate"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["Pos"] = tBoxPos[1]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["RotationY"] = tBoxRot[1]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["Pos"] = tBoxPos[2]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["RotationY"] = tBoxRot[2]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["Pos"] = tBoxPos[3]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["RotationY"] = tBoxRot[3]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["Pos"] = tBoxPos[4]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["RotationY"] = tBoxRot[4]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5]["Pos"] = tBoxPos[5]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5]["RotationY"] = tBoxRot[5]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomNum"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RemainRandomNum"] = 2
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = tGenId_Box[1]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][2]["GenId"] = tGenId_Box[2]
--掩码
rwtCopyMapMission[nCopyMapMissId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapMissId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["PassSetTempGroup"][1]["TempDataId"] = 1113
rwtCopyMapMission[nCopyMapMissId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapMissId]["PassSetTempGroup"][1]["SetValue"] = 101

rwtCopyMapMission[nCopyMapMissId]["MapInitFunc"] = function()  
    rwtCopyMapUserInitInfo[nCopyMapMissId] = {}
    rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId] = {}
    -- rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["NPCDialog"] = 0
    rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["MonsterInfo"] = {}
    rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["GuaiDaiGenId"] = 0

    local ran = rwGetRandInt(1,#tGenId_Npc)
    rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["GuaiDaiGenId"] = tGenId_Npc[ran]

    local t = SysCopyTable(tGenId_NpcMBMonster)
    local index = 1
    for i,v in ipairs(t) do
        if index == 3 then
            break
        end
        local ran = rwGetRandInt(1,#t)
        if t[ran] ~= rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["GuaiDaiGenId"] then
            rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["MonsterInfo"]["Monster"..index] = t[ran]
            table.remove(t,ran)
            index = index+1
        end
    end
end

function CopyMap_GDYeSeKaNuoSa_test()
    rwSendSystemMessage("test:")
    rwSendSystemMessage("Monster1:"..rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["MonsterInfo"]["Monster1"])
    rwSendSystemMessage("Monster2:"..rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["MonsterInfo"]["Monster2"])
    rwSendSystemMessage("GuaiDaiGenId:"..rwtCopyMapUserInitInfo[nCopyMapMissId][nUserId]["GuaiDaiGenId"])
end
