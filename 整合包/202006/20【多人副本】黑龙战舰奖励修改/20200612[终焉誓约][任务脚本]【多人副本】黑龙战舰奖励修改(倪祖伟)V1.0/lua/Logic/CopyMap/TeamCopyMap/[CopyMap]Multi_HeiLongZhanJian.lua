--region [CopyMap]Multi_HeiLongZhanJian
--Purpose:		黑龙战舰多人副本
--Creator: 		倪祖伟
--Created:		2020-02-28
--Modifier:		$Author: 孟志远 $
--Modified:		$Date: 2020-05-20 $
--RCS-ID:		$Revision: 2 $
--endregion




--**************************************数据定义***************************
--genid分配
--宝箱：3158012-3158013 3158014
--怪物组：3158001-3158011 3158005摩尼耶·投影-3158008-3158009机器人-3158010石像鬼--3158011BOSS

--副本id
local nCopyMapId = 3158
-- local nTimeMaoPao = 5   --临时加在小兵身上冒泡时长
local nEffectId = 2047  --暴击
local nEffectId_2 = 2048  --防为
local nEffectId_3 = 2049  --治疗
local nSize_1 = 100
local nSize_2 = 150 --海怪身上光效大小
local sPos_2 = "0,1.2,0" --光效相对位子
local sPos = "0,3.3,0" --光效相对位子
-- local nEffectId_JieJie = 2073  --结界球消失
-- local nSize_jiejie = 40       --结界球消失 的大小
-- local sPos_jiejie = "-106.6,18.285,0.101"      --结界球消失 光效位子
local tnBuffId = {}
tnBuffId[1] = 500602 --暴击
tnBuffId[2] = 500502 --防护
tnBuffId[3] = 500701 --治疗

--掩码
local tTempData = {}

--重登检测掩码
tTempData.ReLogin = 1322

local nTempdata = 1293
--掩码：data1：空气墙的触发对白，
--                1=触发了摩尼耶空气墙对白；
--                2=触发了亚破伦宝箱结界对白；
--      data2:与机器人的站前对白
--     data3：与亚破伦的战前对白
--     data4：与亚兹莫的战前对白


local nValve_1 = 1139
local nValve_2 = 1140
local nValve_3 = 1142
local nGenId_Valva1_1 = 3158019
local nGenId_Valva1_2 = 3158020
local nGenId_Valva1_3 = 3158021
local nGenId_Valva2_1 = 3158022

local tTrapValve = {}
tTrapValve.valve_1 = 1143
tTrapValve.valve_2 = 1144
tTrapValve.valve_3 = 1145
tTrapValve.valve_4 = 1152
tTrapValve.valveGenId_1 = 3158023
tTrapValve.valveGenId_2 = 3158024
tTrapValve.valveGenId_3 = 3158025
tTrapValve.valveGenId_4 = 3158026

--副本目标
local tTarget = {}
tTarget.Tar1 = 60350
tTarget.Tar2 = 60351
tTarget.Pass = 60069

local tEventAllPeople = {}  --用于统一的所有玩家执行的逻辑 fTeamCopyHLgJ_EventAll
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

tDialog.SmallMonster_1 = 7111
tDialog.SmallMonster_2 = 7112
tDialog.SmallMonster_3 = 7113
tDialog.JiYinMonster_1 = 7193
tDialog.JiYinMonster_2 = 7194

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
tMonsterGroupGenId.JiQiRe1  = 3158008 --机器人上
tMonsterGroupGenId.JiQiRe2  = 3158009 --机器人下

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
-- local tText = {}
-- tText.ZhanDun1 = tLuaText[LANGUAGE_CONFIG][70004]
-- tText.ZhanDun2 = tLuaText[LANGUAGE_CONFIG][70005]
-- tText.ZhongJ_1 = tLuaText[LANGUAGE_CONFIG][70006]
-- tText.ZhongJ_2 = tLuaText[LANGUAGE_CONFIG][70007]
-- tText.HaiSha_1 = tLuaText[LANGUAGE_CONFIG][70008]
-- tText.HaiSha_2 = tLuaText[LANGUAGE_CONFIG][70009]
-------------------------------奖励数据-----------------------
local tAward = {}
--通关奖励
tAward.Pass = 1001040
tAward.BoxNorMal1 = 1001041
tAward.BoxNorMal2 = 1001042
tAward.BoxBest    = 1001043

--===============陷阱================
local tTrapId = {}
tTrapId.Trap1 = 30741
tTrapId.Trap2 = 30742
tTrapId.Trap3 = 30743
tTrapId.TrapGenId_1 = 3158023
tTrapId.TrapGenId_2 = 3158024
tTrapId.TrapGenId_3 = 3158025

--动态创建table
local tDynaGenId = {
    --3宝箱
    nBox_NorMal_GenId1,nBox_NorMal_GenId2,nBox_Best_GenId,
    --3怪物NPC
    --tMonNPC.GenId_MoNiYe,
    tMonNPC.GenId_YaPLun,tMonNPC.GenId_YaZiMo,
    --机关墙，结界
    --nWall_MoNiYe,
    nWall_JiQiRen1,nWall_JiQiRen2,nJieJ_Box,
    --小怪陷阱
    tTrapValve.valveGenId_1,tTrapValve.valveGenId_2,tTrapValve.valveGenId_3,tTrapValve.valveGenId_4
}

--**************************************逻辑***************************
--function-----------------------------------------------
function fTeamCopyHLgJ_EventAll(tEvent)
    if not rwChkFunc(tEvent["Func"]) then
        return
    end

    local tUserList = rwGetCurMapUserList()
    if tUserList then
        for i=1,#tUserList do
            tEvent["Func"](tUserList[i])
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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = tTempData.ReLogin
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.EnterMap
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
-- -- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["TempDataID"] = nTempdata
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["ResetValue"] = true

--设置标记，表示小boss处机关是否开启
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["DynCreate"] = tDynaGenId   --动态创建

rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true

rwtCopyMapMission[nCopyMapId]["Fire"] = {}  ---篝火配置
rwtCopyMapMission[nCopyMapId]["Fire"]["GenId"] = nBonFire_GenId
rwtCopyMapMission[nCopyMapId]["Fire"]["LifeTime"] = 60
rwtCopyMapMission[nCopyMapId]["Fire"]["InterVal"] = 3
rwtCopyMapMission[nCopyMapId]["Fire"]["ExpBall"] = 20000
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"] = {}
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][1] = "-114.21,21.990,2.5007"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][2] = "-114.87,21.990,-2.334"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][3] = "-110.42,21.990,-0.668"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"] = {}
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][1] = 140		
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][2] = 50
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][3] = -76

rwtCopyMapMission[nCopyMapId]["CreateFunc"] = function(nCopyMapId,nDynMapId)
    --创建副本时重置重登掩码
    local tUserList = rwGetCurMapUserList()
    if tUserList then
        for i=1,#tUserList do
            rwUserTempDataSet(tTempData.ReLogin,0,CONST_TEMP_DATA.Data1,tUserList[i])
        end
    end
end

rwtCopyMapMission[nCopyMapId]["MultiDestroyFunc"] = function(nCopyMapMissId,nMapId)
    CopyMap_Multi_ShuXinCheng_Destroy(nCopyMapMissId,nMapId)
end

----------------------副本目标-------------------------
rwtTarget[tTarget.Tar1] = {}
rwtTarget[tTarget.Tar1]["Title"] = tLuaText[LANGUAGE_CONFIG][22017]
rwtTarget[tTarget.Tar1]["KillMonsterGroup"] = tMonsterGroup.MoNiYe
rwtTarget[tTarget.Tar1]["ReqCount"] = 1

rwtTarget[tTarget.Tar2] = {}
rwtTarget[tTarget.Tar2]["Title"] = tLuaText[LANGUAGE_CONFIG][22018]
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

-- rwtNpcGroup[tTrapId.Trap1] = {}
-- rwtNpcGroup[tTrapId.Trap1]["Type"] = CONST_NPCGROUP_TYPE.Trap
-- rwtNpcGroup[tTrapId.Trap1]["DelTrap"] = 1
-- rwtNpcGroup[tTrapId.Trap1]["Awards"] = {}
-- rwtNpcGroup[tTrapId.Trap1]["Awards"]["Events"] = {}
-- rwtNpcGroup[tTrapId.Trap1]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tTrapId.Trap1]["Awards"]["Events"][1]["OpenDialog"] = {}
-- rwtNpcGroup[tTrapId.Trap1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.JiYinMonster_1

----------NPC-----------------
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe] = {}
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]= {}
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"]= {}
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]= {}
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["ChkUserTempData"]= {} --检测data2 是否为0
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["ChkUserTempData"][1]= {}
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"]= nTempdata
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"]= CONST_TEMP_DATA.Data2
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"]= 0
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["OpenDialog"]={}    --若==0，则是第一次与摩尼耶对话，触发对白；设掩码
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["OpenDialog"]["DialogId"]=tDialog.BattlePre_MoNiYe
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["SetUserTempData"]={}
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["SetUserTempData"][1]={}
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"]=nTempdata
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"]=CONST_TEMP_DATA.Data2
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"]=1
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["FailEvents"]={}
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["FailEvents"]["AutoBattle"]={}  --若非0，则直接与摩尼耶战斗
rwtNpcGroup[tMonNPC.NPCGroup_MoNiYe]["Awards"]["Events"][1]["FailEvents"]["AutoBattle"]["GenId"]=tMonsterGroupGenId.MoNiYe


rwtNpcGroup[tMonNPC.NPCGroup_YaPLun] = {}
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]= {}
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"]= {}
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]= {}
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["ChkUserTempData"]= {} --检测data3 是否为0
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["ChkUserTempData"][1]= {}
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"]= nTempdata
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"]= CONST_TEMP_DATA.Data3
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"]= 0
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["SetUserTempData"]={}
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["SetUserTempData"][1]={}
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"]=nTempdata
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"]=CONST_TEMP_DATA.Data3
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"]=1
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["OpenDialog"]={}    --若==0，则是第一次与亚破伦对话，触发对白；设掩码
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["OpenDialog"]["DialogId"]=tDialog.BattlePre_YaPLun
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["FailEvents"]={}
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["FailEvents"]["AutoBattle"]={}  --若非0，则直接与亚破伦战斗
rwtNpcGroup[tMonNPC.NPCGroup_YaPLun]["Awards"]["Events"][1]["FailEvents"]["AutoBattle"]["GenId"]=tMonsterGroupGenId.YaPLun


rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo] = {}
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]= {}
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"]= {}
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]= {}
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["ChkUserTempData"]= {} --检测data4 是否为0
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["ChkUserTempData"][1]= {}
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"]= nTempdata
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"]= CONST_TEMP_DATA.Data4
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"]= 0
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["OpenDialog"]={}    --若==0，则是第一次与Boss对话，触发对白；设掩码
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["OpenDialog"]["DialogId"]=tDialog.BattlePre_YaZiMo
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["SetUserTempData"]={}
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["SetUserTempData"][1]={}
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"]=nTempdata
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"]=CONST_TEMP_DATA.Data4
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"]=1
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["FailEvents"]={}
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["FailEvents"]["AutoBattle"]={}  --若非0，则直接与Boss战斗
rwtNpcGroup[tMonNPC.NPCGroup_YaZiMo]["Awards"]["Events"][1]["FailEvents"]["AutoBattle"]["GenId"]=tMonsterGroupGenId.YaZiMo


rwtDialog[tDialog.BattlePre_MoNiYe] = {}
rwtDialog[tDialog.BattlePre_MoNiYe]["DialogEndInit"] = {}
rwtDialog[tDialog.BattlePre_MoNiYe]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.BattlePre_MoNiYe]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.BattlePre_MoNiYe]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.BattlePre_MoNiYe]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGenId.MoNiYe

rwtDialog[tDialog.BattlePre_YaPLun] = {}
rwtDialog[tDialog.BattlePre_YaPLun]["DialogEndInit"] = {}
rwtDialog[tDialog.BattlePre_YaPLun]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.BattlePre_YaPLun]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.BattlePre_YaPLun]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.BattlePre_YaPLun]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGenId.YaPLun

rwtDialog[tDialog.BattlePre_YaZiMo] = {}
rwtDialog[tDialog.BattlePre_YaZiMo]["DialogEndInit"] = {}
rwtDialog[tDialog.BattlePre_YaZiMo]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.BattlePre_YaZiMo]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.BattlePre_YaZiMo]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.BattlePre_YaZiMo]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGenId.YaZiMo


--进副本对白
rwtDialog[tDialog.EnterMap] = rwtDialog[tDialog.EnterMap] or {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"] = {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["SetUserTempData"] = {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = tTempData.ReLogin
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtDialog[tDialog.EnterMap]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
----------陷阱----------------

----------怪物----------------
--Boss
--死亡后，所有玩家，播放对白
tEventAllPeople["Boss"] = {}
tEventAllPeople["Boss"]["Func"] =function(nUserId)
    rwOpenNpcChatDialog(tDialog.Pass,CONST_NPCCHAT_TYPE.NPC,tMonsterGroup.YaZiMo,nUserId)
end
rwtMonsterGroup[tMonsterGroup.YaZiMo] = rwtMonsterGroup[tMonsterGroup.YaZiMo] or {}
rwtMonsterGroup[tMonsterGroup.YaZiMo]["BattleWin"] = function()
    fTeamCopyHLgJ_EventAll(tEventAllPeople["Boss"])
    rwDelGenEvent(nGenId_Valva1_2)
    rwDelGenEvent(nGenId_Valva1_3)
end
--摩尼耶
--删除空气墙
--死亡后当前玩家播放对白
rwtMonsterGroup[tMonsterGroup.MoNiYe] = rwtMonsterGroup[tMonsterGroup.MoNiYe] or {}
rwtMonsterGroup[tMonsterGroup.MoNiYe]["BattleWin"] = function()
    rwDelGenEvent(nGenId_Valva1_1)
    rwDelGenEvent(tMonNPC.GenId_MoNiYe)
    rwOpenNpcChatDialog(tDialog.BattleAft_MoNiYe)
end

-- rwtMonsterGroup[tMonsterGroup.JiQiRe1] = {}
-- rwtMonsterGroup[tMonsterGroup.JiQiRe1]["BattleCheckFunc"] = function(MonsterGroupId,MonsterGroupType,GenEventId)
--     local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data2,rwUserGetId())
--     rwSendSystemMessage("======="..index)
--     if index == 1 then
--     else
--         rwOpenNpcChatDialog(tDialog.JiYinMonster_1)
--         rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data2, rwUserGetId())
--         return false
--     end
--     return true
-- end
-- rwtMonsterGroup[tMonsterGroup.JiQiRe2] = {}
-- rwtMonsterGroup[tMonsterGroup.JiQiRe2]["BattleCheckFunc"] = function(MonsterGroupId,MonsterGroupType,GenEventId)
--     local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data2,rwUserGetId())
--     if index == 1 then
--     else
--         rwOpenNpcChatDialog(tDialog.JiYinMonster_2)
--         rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data2, rwUserGetId())
--     end
--     return true
-- end
--亚破伦
--死亡后删除宝箱结界
--死亡后，当前玩家，播放对白
rwtMonsterGroup[tMonsterGroup.YaPLun] = rwtMonsterGroup[tMonsterGroup.YaPLun] or {}
rwtMonsterGroup[tMonsterGroup.YaPLun]["BattleWin"] = function()
    rwDelGenEvent(nGenId_Valva2_1)
    rwDelGenEvent(tMonNPC.GenId_YaPLun)
    rwOpenNpcChatDialog(tDialog.BattleAft_YaPLun)
end

tEventAllPeople["JIQi"] = {}
tEventAllPeople["JIQi"]["Func"] =function(nUserId)
    rwOpenNpcChatDialog(tDialog.BattleAft_JiQiRe,CONST_NPCCHAT_TYPE.NPC,0,nUserId)
end
--机器人
--删除身后结界
rwtMonsterGroup[tMonsterGroup.JiQiRe1] = rwtMonsterGroup[tMonsterGroup.JiQiRe1] or {}
rwtMonsterGroup[tMonsterGroup.JiQiRe1]["BattleWin"] = function()
    rwDelGenEvent(nGenId_Valva1_2)
    --若机器人2还在
    if rwHasGenEvent(tMonsterGroupGenId.JiQiRe2) then
        -- fTeamCopyHLgJ_EventAll(tEventAllPeople["JIQi"])
        rwOpenNpcChatDialog(tDialog.BattleAft_JiQiRe)
    end
end
rwtMonsterGroup[tMonsterGroup.JiQiRe2] = rwtMonsterGroup[tMonsterGroup.JiQiRe2] or {}
rwtMonsterGroup[tMonsterGroup.JiQiRe2]["BattleWin"] = function()
    rwDelGenEvent(nGenId_Valva1_3)
    --若机器人1还在
    if rwHasGenEvent(tMonsterGroupGenId.JiQiRe1) then
        -- fTeamCopyHLgJ_EventAll(tEventAllPeople["JIQi"])
        rwOpenNpcChatDialog(tDialog.BattleAft_JiQiRe)
    end
end

--空气墙---------------------------
--摩尼耶身后之墙
tValve[nValve_1] = tValve[nValve_1] or {}
tValve[nValve_1]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nValve_1]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)
    if not rwTempDataIsExist(nTempdata) then
        rwTempDataAdd(nTempdata)
    end

    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data1,nuserId)
    --==0：第一次触碰空气墙
    if index <= 0 then
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data1, nuserId)
        rwOpenNpcChatDialog(tDialog.Wall_MoNiYe)
    end
end
--亚破伦宝箱之阵法
tValve[nValve_2] = tValve[nValve_2] or {}
tValve[nValve_2]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nValve_2]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)
    local nuserId = rwUserGetId()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data3,nuserId)
    if index == 1 then
        
    else
        rwOpenNpcChatDialog(tDialog.BattlePre_YaPLun)
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data3, nuserId)
    end
end
--机器人身后光墙
-- tValve[nValve_3] = tValve[nValve_3] or {}
-- tValve[nValve_3]["Type"] = CONST_VALVE_TYPE.DOOR
-- tValve[nValve_3]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)
--     -- local nuserId = rwUserGetId()
--     -- local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data2,nuserId)
--     -- if index == 0 then
--     --     rwOpenNpcChatDialog(tDialog.Wall_YaPLun)
--     --     rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data2, nuserId)
--     -- end
-- end
tEventAllPeople["Monster_1"] = {}
tEventAllPeople["Monster_1"]["Func"] = function(nUserId)
    -- rwOpenNpcChatDialog(tDialog.SmallMonster_1,CONST_NPCCHAT_TYPE.NPC,0,nUserId)
    rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data5, nUserId)
end
tEventAllPeople["Monster_2"] = {}
tEventAllPeople["Monster_2"]["Func"] = function(nUserId)
    -- rwOpenNpcChatDialog(tDialog.SmallMonster_2,CONST_NPCCHAT_TYPE.NPC,0,nUserId)
    rwUserTempDataSet(nTempdata,2,CONST_TEMP_DATA.Data5, nUserId)
end
tEventAllPeople["Monster_3"] = {}
tEventAllPeople["Monster_3"]["Func"] = function(nUserId)
    -- rwOpenNpcChatDialog(tDialog.SmallMonster_3,CONST_NPCCHAT_TYPE.NPC,0,nUserId)
    rwUserTempDataSet(nTempdata,3,CONST_TEMP_DATA.Data5, nUserId)
end
--小怪机关陷阱

tValve[tTrapValve.valve_1] = {}
tValve[tTrapValve.valve_1]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tTrapValve.valve_1]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)
    -- local nUserId = rwUserGetId()
    -- local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data5,nUserId)
    -- --==1到达第一批小怪位子
    -- if index == 1 then
    --     fTeamCopyHLgJ_EventAll(tEventAllPeople["Monster_2"])
    --     rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhongJ_1, nEffectId,sPos,"0,0,0",nSize_1)
    --     rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhongJ_2, nEffectId,sPos,"0,0,0",nSize_1)
    --     rwMonsterAddStatus(tMonsterGroupGenId.ZhongJ_1, nMonsterId_ZhongJ, nBuffId)
    --     rwMonsterAddStatus(tMonsterGroupGenId.ZhongJ_2, nMonsterId_ZhongJ, nBuffId)
    -- end
    rwOpenNpcChatDialog(tDialog.SmallMonster_1)
    -- rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhongJ_1, nEffectId,sPos,"0,0,0",nSize_1)
    -- rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhongJ_2, nEffectId,sPos,"0,0,0",nSize_1)
    rwMonsterAddStatus(tMonsterGroupGenId.ZhongJ_1, nMonsterId_ZhongJ, tnBuffId[1])
    rwMonsterAddStatus(tMonsterGroupGenId.ZhongJ_2, nMonsterId_ZhongJ, tnBuffId[1])
    rwDelGenEvent(tTrapValve.valveGenId_1)
end

rwtDialog[tDialog.SmallMonster_1] = {}
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"] = {}
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"][1]["AddEffect"] = {}
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"][1]["AddEffect"][1] = {}
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 5
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"][1]["AddEffect"][1]["TargetId"] = tMonsterGroupGenId.ZhongJ_1
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"][1]["AddEffect"][1]["EffectId"] = nEffectId
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"][1]["AddEffect"][1]["Pos"] = sPos
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"][1]["AddEffect"][2] = {}
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"][1]["AddEffect"][2]["TargetType"] = 5
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"][1]["AddEffect"][2]["TargetId"] = tMonsterGroupGenId.ZhongJ_2
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"][1]["AddEffect"][2]["EffectId"] = nEffectId
rwtDialog[tDialog.SmallMonster_1]["DialogEndInit"]["Events"][1]["AddEffect"][2]["Pos"] = sPos



tValve[tTrapValve.valve_2] = {}
tValve[tTrapValve.valve_2]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tTrapValve.valve_2]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)
    -- local nUserId = rwUserGetId()
    -- local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data5,nUserId)
    -- --==0：第一次触碰空气墙
    -- if index == 0 then
    --     fTeamCopyHLgJ_EventAll(tEventAllPeople["Monster_1"])
    --     rwOpenNpcChatDialog(tDialog.SmallMonster_1,CONST_NPCCHAT_TYPE.NPC,0,nUserId)
    --     rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhanDun1, nEffectId,sPos,"0,0,0",nSize_1)
    --     rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhanDun2, nEffectId,sPos,"0,0,0",nSize_1)
    --     rwMonsterAddStatus(tMonsterGroupGenId.ZhanDun1, nMonsterId_ZhanDn, nBuffId)
    --     rwMonsterAddStatus(tMonsterGroupGenId.ZhanDun2, nMonsterId_ZhanDn, nBuffId)
    -- end

    rwOpenNpcChatDialog(tDialog.SmallMonster_2)
    -- rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhanDun1, nEffectId,sPos,"0,0,0",nSize_1)
    -- rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.ZhanDun2, nEffectId,sPos,"0,0,0",nSize_1)
    rwMonsterAddStatus(tMonsterGroupGenId.ZhanDun1, nMonsterId_ZhanDn, tnBuffId[2])
    rwMonsterAddStatus(tMonsterGroupGenId.ZhanDun2, nMonsterId_ZhanDn, tnBuffId[2])
    rwDelGenEvent(tTrapValve.valveGenId_2)
end

rwtDialog[tDialog.SmallMonster_2] = {}
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"] = {}
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"][1]["AddEffect"] = {}
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"][1]["AddEffect"][1] = {}
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 5
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"][1]["AddEffect"][1]["TargetId"] = tMonsterGroupGenId.ZhanDun1
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"][1]["AddEffect"][1]["EffectId"] = nEffectId_2
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"][1]["AddEffect"][1]["Pos"] = sPos_2
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"][1]["AddEffect"][2] = {}
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"][1]["AddEffect"][2]["TargetType"] = 5
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"][1]["AddEffect"][2]["TargetId"] = tMonsterGroupGenId.ZhanDun2
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"][1]["AddEffect"][2]["EffectId"] = nEffectId_2
rwtDialog[tDialog.SmallMonster_2]["DialogEndInit"]["Events"][1]["AddEffect"][2]["Pos"] = sPos_2


tValve[tTrapValve.valve_3] = {}
tValve[tTrapValve.valve_3]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tTrapValve.valve_3]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)
    -- local nUserId = rwUserGetId()
    -- local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data5,nUserId)
    -- --==2：到达第二批小怪位子
    -- if index == 2 then
    --     fTeamCopyHLgJ_EventAll(tEventAllPeople["Monster_3"])
    --     rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.HaiSha_1, nEffectId,sPos,"0,0,0",nSize_1)
    --     rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.HaiSha_2, nEffectId,sPos,"0,0,0",nSize_1)
    --     rwMonsterAddStatus(tMonsterGroupGenId.HaiSha_1, nMonsterId_HaiSha, nBuffId)
    --     rwMonsterAddStatus(tMonsterGroupGenId.HaiSha_2, nMonsterId_HaiSha, nBuffId)
    -- end
    rwOpenNpcChatDialog(tDialog.SmallMonster_3)
    -- rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.HaiSha_1, nEffectId,sPos,"0,0,0",nSize_2)
    -- rwSpecialStatus_AddEffect(5,tMonsterGroupGenId.HaiSha_2, nEffectId,sPos,"0,0,0",nSize_2)
    rwMonsterAddStatus(tMonsterGroupGenId.HaiSha_1, nMonsterId_HaiSha, tnBuffId[3])
    rwMonsterAddStatus(tMonsterGroupGenId.HaiSha_2, nMonsterId_HaiSha, tnBuffId[3])
    rwDelGenEvent(tTrapValve.valveGenId_3)
end

rwtDialog[tDialog.SmallMonster_3] = {}
rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"] = {}
rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"][1]["AddEffect"] = {}
rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"][1]["AddEffect"][1] = {}
rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 5
rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"][1]["AddEffect"][1]["TargetId"] = tMonsterGroupGenId.HaiSha_1
rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"][1]["AddEffect"][1]["EffectId"] = nEffectId_3
-- rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"][1]["AddEffect"][1]["Pos"] = sPos
rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"][1]["AddEffect"][2] = {}
rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"][1]["AddEffect"][2]["TargetType"] = 5
rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"][1]["AddEffect"][2]["TargetId"] = tMonsterGroupGenId.HaiSha_2
rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"][1]["AddEffect"][2]["EffectId"] = nEffectId_3
-- rwtDialog[tDialog.SmallMonster_3]["DialogEndInit"]["Events"][1]["AddEffect"][2]["Pos"] = sPos


tValve[tTrapValve.valve_4] = {}
tValve[tTrapValve.valve_4]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tTrapValve.valve_4]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)

    rwOpenNpcChatDialog(tDialog.JiYinMonster_1)
    -- rwMonsterAddStatus(tMonsterGroupGenId.HaiSha_1, nMonsterId_HaiSha, tnBuffId[3])
    -- rwMonsterAddStatus(tMonsterGroupGenId.HaiSha_2, nMonsterId_HaiSha, tnBuffId[3])
    rwDelGenEvent(tTrapValve.valveGenId_4)
end

--**************************************函数***************************
--销毁副本
function CopyMap_Multi_ShuXinCheng_Destroy(nCopyMapId,nDynMapId)
    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId] = {}
end
