--region [CopyMap]Daily_Material_No3.lua
--Purpose:		每日材料副本_3号本
--Creator: 		孟志远
--Created:		2019-06-26
--Modifier:		$Author: 孟志远 $
--Modified:		$Date: 19-08-21 $
--RCS-ID:		$Revision: 1 $
--endregion

--*******************************************数据定义*******************************************
--genid分配
--NPC组：3133001-3133100
--怪物组：3133101-3133200
--机关：3133201-3133300

--副本id
local nCopyMapId = 3133

--副本目标
local nTarget_1 = 60301     --完成收集

--首次进入材料本掩码（所有材料本共用）
local nFirstTemp = 1225

--副本特殊事件次数掩码,data1:宝箱获得圣水次数，data2:棺材暴击次数，data3:尸体获得宝物次数
local nSpecialTimesTemp = 1227

--进入副本创建事件列表
local tDynaGenId = {}


------------对白-----------
local tDialogId = {}

--首次进入副本对白
tDialogId.First = {6818}
--进入副本对白
tDialogId.Enter = {6819}
--通关对白
tDialogId.Pass = {6820}
--没有圣水对白
tDialogId.LackProp = {6821}
--盗贼1对白
tDialogId.Apc1 = {6822}
--盗贼2对白
tDialogId.Apc2 = {6823}
--盗贼3对白
tDialogId.Apc3 = {6824}
--考古学者
tDialogId.Npc = {6825,6826,6827,6828}
--采集尸体出现盗墓贼宝物对白
tDialogId.CorpseSpecial = {6829}
--采集棺材暴击对白
tDialogId.CoffinSpecial = {6830}
--采集箱子获得圣水对白
tDialogId.BoxSpecial = {6831}
------------物品id-----------
--圣水
local nItemProp = 7000373

------------NPC组-----------
--宝箱
local tBoxId = {}
local tBoxGenId = {}

tBoxId.Normal = 40285
tBoxGenId.Normal = {3133001,3133002,3133003,3133004}
for k,v in pairs(tBoxGenId.Normal) do
    table.insert(tDynaGenId,v)
end

local tCollect = {}
local tCollectGenId = {}
--棺材
tCollect.Coffin = 60456
tCollectGenId.Coffin = {3133005,3133006,3133007,3133008}
for k,v in pairs(tCollectGenId.Coffin) do
    table.insert(tDynaGenId,v)
end

--尸体
tCollect.Corpse = 60457
tCollectGenId.Corpse = {3133009,3133010,3133011,3133012}
for k,v in pairs(tCollectGenId.Corpse) do
    table.insert(tDynaGenId,v)
end

--NPC
local tSingleNpc = {}
local tSingleNpcGenId = {}

--盗墓贼1
tSingleNpc.Npc1 = 20937
tSingleNpcGenId.Npc1 = 3133013
--盗墓贼2
tSingleNpc.Npc2 = 20938
tSingleNpcGenId.Npc2 = 3133014
--盗墓贼3
tSingleNpc.Npc3 = 20939
tSingleNpcGenId.Npc3 = 3133015
--考古研究员
tSingleNpc.Npc4 = 20940
tSingleNpcGenId.Npc4 = 3133016
table.insert(tDynaGenId,tSingleNpcGenId.Npc4)
------------NPCid----------
local tNpc = {}

--盗墓贼1
tNpc.Npc1 = 3806
--盗墓贼2
tNpc.Npc2 = 3807
--盗墓贼3
tNpc.Npc3 = 3808
--考古研究员
tNpc.Npc4 = 3809



-------------------奖励id----------------
local tAwardId = {}

----宝箱普通奖励
--tAwardId.Box = 1000567
----棺材普通奖励
--tAwardId.Coffin = 1000568
----尸体普通奖励
--tAwardId.Corpse = 1000569
----宝箱获得道具奖励
--tAwardId.BoxSpecial = 1000570
----棺材暴击奖励
--tAwardId.CoffinSpecial = 1000571
----尸体获得宝物奖励
--tAwardId.CorpseSpecial = 1000572

--进入副本给5个圣水
tAwardId.EnterMap =  1000590

--棺材奖励 非暴击
tAwardId[1] = {}
tAwardId[1][1] = {MinLevel = 0, MaxLevel = 30, AwardId = 1000567}
tAwardId[1][2] = {MinLevel = 31, MaxLevel = 40, AwardId = 1000568}
tAwardId[1][3] = {MinLevel = 41, MaxLevel = 50, AwardId = 1000569}
tAwardId[1][4] = {MinLevel = 51, MaxLevel = 60, AwardId = 1000570}
tAwardId[1][5] = {MinLevel = 61, MaxLevel = 80, AwardId = 1000571}
--棺材奖励 暴击
tAwardId[2] = {}
tAwardId[2][1] = {MinLevel = 0, MaxLevel = 30, AwardId = 1000572}
tAwardId[2][2] = {MinLevel = 31, MaxLevel = 40, AwardId = 1000703}
tAwardId[2][3] = {MinLevel = 41, MaxLevel = 50, AwardId = 1000704}
tAwardId[2][4] = {MinLevel = 51, MaxLevel = 60, AwardId = 1000705}
tAwardId[2][5] = {MinLevel = 61, MaxLevel = 80, AwardId = 1000706}
--宝箱奖励 无圣水
tAwardId[3] = {}
tAwardId[3][1] = {MinLevel = 0, MaxLevel = 30, AwardId = 1000707}
tAwardId[3][2] = {MinLevel = 31, MaxLevel = 40, AwardId = 1000708}
tAwardId[3][3] = {MinLevel = 41, MaxLevel = 50, AwardId = 1000709}
tAwardId[3][4] = {MinLevel = 51, MaxLevel = 60, AwardId = 1000710}
tAwardId[3][5] = {MinLevel = 61, MaxLevel = 80, AwardId = 1000711}
--宝箱奖励 有圣水
tAwardId[4] = {}
tAwardId[4][1] = {MinLevel = 0, MaxLevel = 30, AwardId = 1000712}
tAwardId[4][2] = {MinLevel = 31, MaxLevel = 40, AwardId = 1000713}
tAwardId[4][3] = {MinLevel = 41, MaxLevel = 50, AwardId = 1000714}
tAwardId[4][4] = {MinLevel = 51, MaxLevel = 60, AwardId = 1000715}
tAwardId[4][5] = {MinLevel = 61, MaxLevel = 80, AwardId = 1000716}
--尸体 无宝藏
tAwardId[5] = {}
tAwardId[5][1] = {MinLevel = 0, MaxLevel = 30, AwardId = 1000717}
tAwardId[5][2] = {MinLevel = 31, MaxLevel = 40, AwardId = 1000718}
tAwardId[5][3] = {MinLevel = 41, MaxLevel = 50, AwardId = 1000719}
tAwardId[5][4] = {MinLevel = 51, MaxLevel = 60, AwardId = 1000720}
tAwardId[5][5] = {MinLevel = 61, MaxLevel = 80, AwardId = 1000721}
--尸体 有宝藏
tAwardId[6] = {}
tAwardId[6][1] = {MinLevel = 0, MaxLevel = 30, AwardId = 1000722}
tAwardId[6][2] = {MinLevel = 31, MaxLevel = 40, AwardId = 1000723}
tAwardId[6][3] = {MinLevel = 41, MaxLevel = 50, AwardId = 1000724}
tAwardId[6][4] = {MinLevel = 51, MaxLevel = 60, AwardId = 1000725}
tAwardId[6][5] = {MinLevel = 61, MaxLevel = 80, AwardId = 1000726}

-------------------其他数据----------------
--奖励暴击最大次数
local nCritMaxTimes = 3
--额外获得圣水最大次数
local nPropMaxTimes = 2
---获得盗墓贼宝物最大次数
local nTreasureMaxTimes = 1

--随机盗墓贼NPC坐标
local tPos_Random = {}
tPos_Random[1] = {pos = "41.07,-2.34,19.41",rotY = 180}
tPos_Random[2] = {pos = "40.98,-2.34,22.95",rotY = 90}
tPos_Random[3] = {pos = "33.37,-0.86,-0.38",rotY = -90}
--**************************************逻辑***************************

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["DailyType"] = CONST_DAILYCOPYMAP_TYPE.MATERIAL_MAP
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_PetExp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10044]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

--副本目标
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

--副本初始化
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}

----副本事件
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}

--进入副本固定事件
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tDynaGenId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nSpecialTimesTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"] = {}       
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"]["ActionId"] = nCopyMapId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.EnterMap

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = tPos_Random[1].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = tPos_Random[1].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = tPos_Random[2].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = tPos_Random[2].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = tPos_Random[3].pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = tPos_Random[3].rotY
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tSingleNpcGenId.Npc1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = tSingleNpcGenId.Npc2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["GenId"] = tSingleNpcGenId.Npc3

--首次进入副本播相应对白并设置掩码
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = nFirstTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["OpenDialog"]["tDialog"] = tDialogId.First
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nFirstTemp
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1]["SetValue"] = 1
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1

--非首次时播相应对白
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["FailEvents"]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["FailEvents"]["OpenDialog"]["tDialog"] = tDialogId.Enter

--首次通关后置掩码
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nFirstTemp
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
----副本数据
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3] = {}
----奖励暴击次数
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][1]["SetValue"] = 0
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][1]["ValueRes"] = "CritTimes"
----额外获得圣水次数
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][2] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][2]["SetValue"] = 0
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][2]["ValueRes"] = "PropTimes"
-----获得盗墓贼宝物次数
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][3] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][3]["SetValue"] = 0
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][3]["ValueRes"] = "TreasureTimes"

--


-------副本目标
--完成收集
rwtTarget[nTarget_1] = {}
rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21814]
rwtTarget[nTarget_1]["ReqDialogId"] = tDialogId.Pass
rwtTarget[nTarget_1]["ReqCount"] = 1


--宝箱
rwtNpcGroup[tBoxId.Normal] = rwtNpcGroup[tBoxId.Normal] or {}
rwtNpcGroup[tBoxId.Normal]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tBoxId.Normal]["CollectTime"] = 1
rwtNpcGroup[tBoxId.Normal]["Awards"] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["CostItems"] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["CostItems"][1]["id"] = nItemProp
rwtNpcGroup[tBoxId.Normal]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[tBoxId.Normal]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[tBoxId.Normal]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = tDialogId.LackProp
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"] = {}  
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0 
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 8000
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}       
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tBoxId.Normal
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAwardId.Box
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["LevelAward"] = tAwardId[3]

rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 8001 
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkEventCond"] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Record"] = nSpecialTimesTemp
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Value"] = {0,1}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["TempDataID"] = nSpecialTimesTemp
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}       
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = tBoxId.Normal
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAwardId.BoxSpecial
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["LevelAward"] = tAwardId[4]
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"] = {}
rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"]["tDialog"] = tDialogId.BoxSpecial
--rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["TempDataID"] = nSpecialTimesTemp
--rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["AddValue"] = 1
--rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["DataIndex"] = CONST_TEMP_DATA.Data1

rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"] = rwtNpcGroup[tBoxId.Normal]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]


rwtNpcGroup[tBoxId.Normal]["Func"] = function(nGenEventId,nRandom)
    if rwUserGetItemCount(nItemProp) <= 0 then
        rwOpenNpcChatDialog(tDialogId.Pass[1])
    end 
end

--棺材
rwtNpcGroup[tCollect.Coffin] = rwtNpcGroup[tCollect.Coffin] or {}
rwtNpcGroup[tCollect.Coffin]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.Coffin]["CollectTime"] = 1
rwtNpcGroup[tCollect.Coffin]["Awards"] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["CostItems"] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["CostItems"][1]["id"] = nItemProp
rwtNpcGroup[tCollect.Coffin]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[tCollect.Coffin]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[tCollect.Coffin]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = tDialogId.LackProp
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"] = {}  
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0 
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 8000
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}       
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.Coffin
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAwardId.Coffin
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["LevelAward"] = tAwardId[1]

rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 8001 
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkEventCond"] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Record"] = nSpecialTimesTemp
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Value"] = {0,1,2}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}       
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = tCollect.Coffin
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAwardId.CoffinSpecial
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["LevelAward"] = tAwardId[2]
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"]["tDialog"] = tDialogId.CoffinSpecial
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["TempDataID"] = nSpecialTimesTemp
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"] = rwtNpcGroup[tCollect.Coffin]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]


rwtNpcGroup[tCollect.Coffin]["Func"] = function(nGenEventId,nRandom)
    if rwUserGetItemCount(nItemProp) <= 0 then
        rwOpenNpcChatDialog(tDialogId.Pass[1])
    end 
end


--尸体
rwtNpcGroup[tCollect.Corpse] = rwtNpcGroup[tCollect.Corpse] or {}
rwtNpcGroup[tCollect.Corpse]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.Corpse]["CollectTime"] = 1
rwtNpcGroup[tCollect.Corpse]["Awards"] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["CostItems"] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["CostItems"][1]["id"] = nItemProp
rwtNpcGroup[tCollect.Corpse]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[tCollect.Corpse]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[tCollect.Corpse]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = tDialogId.LackProp
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"] = {}  
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0 
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 8000
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}       
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.Corpse
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAwardId.Corpse
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["LevelAward"] = tAwardId[5]

rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 8001 
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkEventCond"] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Record"] = nSpecialTimesTemp
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Value"] = {0}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}       
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = tCollect.Corpse
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAwardId.CorpseSpecial
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["LevelAward"] = tAwardId[6]
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"]["tDialog"] = tDialogId.CorpseSpecial
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["TempDataID"] = nSpecialTimesTemp
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3

rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"] = rwtNpcGroup[tCollect.Corpse]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]


rwtNpcGroup[tCollect.Corpse]["Func"] = function(nGenEventId,nRandom)
    if rwUserGetItemCount(nItemProp) <= 0 then
        rwOpenNpcChatDialog(tDialogId.Pass[1])
    end 
end


rwtDialog[tDialogId.LackProp[1]] = rwtDialog[tDialogId.LackProp[1]] or {}
rwtDialog[tDialogId.LackProp[1]]["DialogEndInit"] = {}
rwtDialog[tDialogId.LackProp[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.LackProp[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.LackProp[1]]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}       
rwtDialog[tDialogId.LackProp[1]]["DialogEndInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogId.Pass


--盗墓贼1
rwtNpc[tNpc.Npc1] = rwtNpc[tNpc.Npc1] or{}
rwtNpc[tNpc.Npc1]["DialogId"] = tDialogId.Apc1

rwtNpcGroup[tSingleNpc.Npc1] = rwtNpcGroup[tSingleNpc.Npc1] or {}
rwtNpcGroup[tSingleNpc.Npc1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Npc1]["NpcId"]= tNpc.Npc1

--盗墓贼2
rwtNpc[tNpc.Npc2] = rwtNpc[tNpc.Npc2] or{}
rwtNpc[tNpc.Npc2]["DialogId"] = tDialogId.Apc2

rwtNpcGroup[tSingleNpc.Npc2] = rwtNpcGroup[tSingleNpc.Npc2] or {}
rwtNpcGroup[tSingleNpc.Npc2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Npc2]["NpcId"]= tNpc.Npc2

--盗墓贼3
rwtNpc[tNpc.Npc3] = rwtNpc[tNpc.Npc3] or{}
rwtNpc[tNpc.Npc3]["DialogId"] = tDialogId.Apc3

rwtNpcGroup[tSingleNpc.Npc3] = rwtNpcGroup[tSingleNpc.Npc3] or {}
rwtNpcGroup[tSingleNpc.Npc3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Npc3]["NpcId"]= tNpc.Npc3

--考古学者
rwtNpc[tNpc.Npc4] = rwtNpc[tNpc.Npc4] or{}
rwtNpc[tNpc.Npc4]["DialogId"] = tDialogId.Npc

rwtNpcGroup[tSingleNpc.Npc4] = rwtNpcGroup[tSingleNpc.Npc4] or {}
rwtNpcGroup[tSingleNpc.Npc4]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Npc4]["NpcId"]= tNpc.Npc4
