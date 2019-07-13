--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--每日材料副本_噩梦



--endregion

-------------------------------------------- 数据定义 ----------------------------------------------

--副本ID
local nCopyMapId = 3130
local nTempDataId =1223  --本副本记录掩码   data1宝箱获得锄头 data2矿石暴击 data3石头开宝藏
local nTempDataId_Public =1225 --材料副本通用掩码
local nTarget1 = 60303 --副本目标
--物品id
local nItemType = 7000311  --锄头

--采集
local nCollect_Kuang = 60427
local tCollect_Kuang_Gen = {3130001,3130002,3130003,3130004}

local nCollect_ShiTou = 60428
local tCollect_ShiTou_Gen = {3130005,3130006,3130007,3130008}

--宝箱
local nBox = 40278
local tBox_Gen = {3130009,3130010,3130011,3130012}

--NPC
local nNPCGroup_NorMal1 = 20923
local tNPCGroup_NorMal1_Gen = 3130013
local nNPCGroup_NorMal2 = 20924
local tNPCGroup_NorMal2_Gen = 3130014
local nNPCGroup_NorMal3 = 20925
local tNPCGroup_NorMal3_Gen = 3130015

local nNPC_NorMal1 = 3803 --随机NPC1
local nNPC_NorMal2 = 3804
local nNPC_NorMal3 = 3805
--NPC
local nNPCGroup_Special = 20935
local nNPCGroup_Special_Gen = 3130016

local nNPC_Special = 3802	--特殊NPC

--对白
local tDialog = {}
tDialog[1] = 	6793 --首次进副本
tDialog[2] =	6794 --二次进副本
tDialog[3] =	6795 --NPC闲聊1
tDialog[4] =	6796 --NPC闲聊2
tDialog[5] =	6797 --NPC闲聊3
--tDialog[6] =	6798 --采集时有锄头
tDialog[7] =	6799 --采集时无锄头
--tDialog[8] =	6800 --采集后有锄头
tDialog[9] =	6801 --采集后无锄头
tDialog[10] =	6802 --石头出宝藏
tDialog[11] =	6803 --银母矿暴击
tDialog[12] =	6804 --宝箱额外锄头
tDialog[13] =	6805 --矮巨人闲聊1
tDialog[14] =	6806 --矮巨人闲聊2
tDialog[15] =	6807 --矮巨人闲聊3
tDialog[16] =	6808 --矮巨人闲聊4
--tDialog[17] =	6809 --矮巨人闲聊5
--tDialog[18] =	6810 --锄头全部用完，通关
--tDialog[19] =	6811
--tDialog[20] =	6812
--tDialog[21] =	6813
--tDialog[22] =	6814
--tDialog[23] =	6815
--tDialog[24] =	6816
--tDialog[25] =	6817


--奖励
local tAwardId = {}

tAwardId[1] = 	1000536   --宝箱奖励 无锄头
tAwardId[2] =	1000537	  --宝箱奖励 有锄头
tAwardId[3] =	1000538	  --矿奖励非暴击
tAwardId[4] =	1000539	  --矿奖励暴击
tAwardId[5] =	1000540	  --石头无宝藏
tAwardId[6] =	1000541	  --石头有宝藏
tAwardId[7] =	1000542	  --进副本五个锄头


---------------------------------
-----------------test



----------------逻辑
--NPC闲聊

rwtNpcGroup[nNPCGroup_NorMal1] = rwtNpcGroup[nNPCGroup_NorMal1] or {} 
rwtNpcGroup[nNPCGroup_NorMal1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNPCGroup_NorMal1]["NpcId"] = nNPC_NorMal1
rwtNpcGroup[nNPCGroup_NorMal2] = rwtNpcGroup[nNPCGroup_NorMal2] or {}  
rwtNpcGroup[nNPCGroup_NorMal2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNPCGroup_NorMal2]["NpcId"] = nNPC_NorMal3
rwtNpcGroup[nNPCGroup_NorMal3] = rwtNpcGroup[nNPCGroup_NorMal3] or {}  
rwtNpcGroup[nNPCGroup_NorMal3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNPCGroup_NorMal3]["NpcId"] = nNPC_NorMal2
rwtNpcGroup[nNPCGroup_Special] = rwtNpcGroup[nNPCGroup_Special] or {}
rwtNpcGroup[nNPCGroup_Special]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNPCGroup_Special]["NpcId"] = nNPC_Special

rwtNpc[nNPC_NorMal1] = rwtNpc[nNPC_NorMal1] or {}
rwtNpc[nNPC_NorMal1]["DialogId"] = {tDialog[3]}
rwtNpc[nNPC_NorMal2] = rwtNpc[nNPC_NorMal2] or {}
rwtNpc[nNPC_NorMal2]["DialogId"] = {tDialog[4]}
rwtNpc[nNPC_NorMal3] = rwtNpc[nNPC_NorMal3] or {}
rwtNpc[nNPC_NorMal3]["DialogId"] = {tDialog[5]}
rwtNpc[nNPC_Special] = rwtNpc[nNPC_Special] or {}
rwtNpc[nNPC_Special]["DialogId"] = {tDialog[13],tDialog[14],tDialog[15],tDialog[16]}

--宝箱 1~2档奖励（概率分别是70,30） 20%概率额外获得一把锄头
rwtNpcGroup[nBox] = rwtNpcGroup[nBox] or {}    
rwtNpcGroup[nBox]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nBox]["CollectTime"] = 1
rwtNpcGroup[nBox]["Awards"] = {}
rwtNpcGroup[nBox]["Awards"]["CostItems"] = {}
rwtNpcGroup[nBox]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[nBox]["Awards"]["CostItems"][1]["id"] = nItemType
rwtNpcGroup[nBox]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[nBox]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[nBox]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[nBox]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[nBox]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = tDialog[7]

rwtNpcGroup[nBox]["Awards"]["RandomEvents"] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 8000 --
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAwardId[1]
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nBox
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 8001 --
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000	--20%
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkEventCond"] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Value"] = {0,1}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"]["tDialog"] = {tDialog[12]}	
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAwardId[2]
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nBox
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempDataId
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"] = {}
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"] = {}          
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["AwardId"] = tAwardId[1]
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[nBox]["Func"] = function(nGenEventId,nRandom)
    if rwUserGetItemCount(nItemType) <= 0 then
        rwOpenNpcChatDialog(tDialog[9])
    end 
end


--矿
rwtNpcGroup[nCollect_Kuang] = rwtNpcGroup[nCollect_Kuang] or {}    
rwtNpcGroup[nCollect_Kuang]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_Kuang]["CollectTime"] = 2
rwtNpcGroup[nCollect_Kuang]["Awards"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["CostItems"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["CostItems"][1]["id"] = nItemType
rwtNpcGroup[nCollect_Kuang]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[nCollect_Kuang]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[nCollect_Kuang]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = tDialog[7]
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 8000	--非暴击 
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAwardId[3]
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nCollect_Kuang
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 8001	--暴击 
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkEventCond"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Value"] = {0,1,2}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"]["tDialog"] = {tDialog[11]}	
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAwardId[4]
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nCollect_Kuang
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempDataId
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2						
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"] = {}
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["AwardId"] = tAwardId[3]
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[nCollect_Kuang]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["ActionId"] = nCollect_Kuang
rwtNpcGroup[nCollect_Kuang]["Func"] = function(nGenEventId,nRandom)
    if rwUserGetItemCount(nItemType) <= 0 then
        rwOpenNpcChatDialog(tDialog[9])
    end 
end																				  
----石头															
rwtNpcGroup[nCollect_ShiTou] = rwtNpcGroup[nCollect_ShiTou] or {}    
rwtNpcGroup[nCollect_ShiTou]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_ShiTou]["CollectTime"] = 3

rwtNpcGroup[nCollect_ShiTou]["Awards"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["CostItems"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["CostItems"][1]["id"] = nItemType
rwtNpcGroup[nCollect_ShiTou]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[nCollect_ShiTou]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[nCollect_ShiTou]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = tDialog[7]

rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1] = {}

rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 9000  --
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAwardId[5]
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nCollect_ShiTou


rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 9000   --9001
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000   --10%
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkEventCond"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Value"] = {0}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"]["tDialog"] = {tDialog[10]}	
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAwardId[6]
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nCollect_ShiTou
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempDataId
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"] = {}
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["AwardId"] = tAwardId[5]
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[nCollect_ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["ActionId"] = nCollect_ShiTou
rwtNpcGroup[nCollect_ShiTou]["Func"] = function(nGenEventId,nRandom)
    if rwUserGetItemCount(nItemType) <= 0 then
        rwOpenNpcChatDialog(tDialog[9])
    end 
end	

-------------------------------------------- 配置 ----------------------------------------------
--副本目标
--副本目标
rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][21772]
rwtTarget[nTarget1]["ReqDialogId"] = tDialog[9]
rwtTarget[nTarget1]["ReqCount"] = 1

--副本配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_PetExp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][21586]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

--进副本给对白+5锄头
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTempDataId_Public
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = {0}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["OpenDialog"] = {}	   --失败对白
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogId"] =  tDialog[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}					--成功对白
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempDataId_Public
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["GetServerAward"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["GetServerAward"]["AwardId"] = tAwardId[7] 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nTempDataId  --进副本重置掩码（本副本内记录随机事件的掩码
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1]["ResetValue"] = true


rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}    --进副本随机NPC
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tNPCGroup_NorMal1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "14.71,0.16,6.2"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 36
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tNPCGroup_NorMal1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "25.81,0.126,20.33"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 165
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = tNPCGroup_NorMal1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = "-8.97,3.33,4.14"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = -85
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tNPCGroup_NorMal2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = tNPCGroup_NorMal3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["GenId"] = tNPCGroup_NorMal1_Gen


