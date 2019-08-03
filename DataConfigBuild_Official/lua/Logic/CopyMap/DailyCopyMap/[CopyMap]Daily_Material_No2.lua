--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion

--ID申请
--副本          3135 
--采集物           60453  60455    60458
--铁们（墙）   1119 
--第一次进去的掩码 1225
--NPC   3810  3813 
--奖励   1000573  1000578    1000589
--物品    7000374
---副本目标     
--对白 6849~6858        6884~6888
-------------------------------------定义---------------------------------------
--副本
local nCopyMapId = 3135
local nSpecialTimesTemp = 1229

--奖励ID
local nAward_ShengShui5 = 1000573

local nAward_GuanCai = 1000574
local nAward_XiangZi = 1000575
local nAward_ShiTi = 1000576

local nAward_BaoJi = 1000577
local nAward_ShengShui = 1000589
local nAward_BaoWu = 1000578



--对白
local tDialog = {}
tDialog.nDialog_1 = 6849  --初次来到副本，掩码记录
tDialog.nDialog_2 = 6858  --非初次来到副本
--通关
tDialog.nDialog_TongGuan_caijiqian = 6850
tDialog.nDialog_TongGuan_caijihou = 6851
--闲聊
tDialog.nDialog_XianLiao_1  = 6852
tDialog.nDialog_XianLiao_2  = 6853
tDialog.nDialog_XianLiao_3  = 6854

--特殊事件对白
tDialog.nDialog_BaoWu = 6855
tDialog.nDialog_BaoJi = 6856
tDialog.nDialog_ShengShui = 6857

--

tDialog.nDialog_KaoGu_1  = 6884
tDialog.nDialog_KaoGu_2  = 6885
tDialog.nDialog_KaoGu_3  = 6886
tDialog.nDialog_KaoGu_4  = 6887



--机关（墙）
local nTieZhanLan_GenID = 3135001

--掩码（初次进副本）
local nUserRecordId = 1225

--防护手套
local nItem_ShengShui = 7000374
--采集物ID
local tCollect= {}

tCollect.nCollect_ShiTi = 60453
tCollect.nCollect_ShiTi_1 = 3135002
tCollect.nCollect_ShiTi_2 = 3135003
tCollect.nCollect_ShiTi_3 = 3135004
tCollect.nCollect_ShiTi_4 = 3135005
--NPC
local tSingleNpc = {}

tSingleNpc.nNpc_KaoGu = 3810
tSingleNpc.nNpcGroup_KaoGu = 20941
tSingleNpc.nNpcGroup_GenId_KaoGu = 3135014
rwtNpc[tSingleNpc.nNpc_KaoGu] = rwtNpc[tSingleNpc.nNpc_KaoGu] or {}
rwtNpc[tSingleNpc.nNpc_KaoGu]["DialogId"] = {tDialog.nDialog_KaoGu_1,tDialog.nDialog_KaoGu_2,tDialog.nDialog_KaoGu_3,tDialog.nDialog_KaoGu_4}
rwtNpcGroup[tSingleNpc.nNpcGroup_KaoGu] = rwtNpcGroup[tSingleNpc.nNpcGroup_KaoGu] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_KaoGu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_KaoGu]["NpcId"] = tSingleNpc.nNpc_KaoGu


tSingleNpc.nNpc_DaoMuZei_1 = 3811
tSingleNpc.nNpcGroup_DaoMuZei_1 = 20942
tSingleNpc.nNpcGroup_GenId_DaoMuZei_1 = 3135015
rwtNpc[tSingleNpc.nNpc_DaoMuZei_1] = rwtNpc[tSingleNpc.nNpc_DaoMuZei_1] or {}
rwtNpc[tSingleNpc.nNpc_DaoMuZei_1]["DialogId"] = {tDialog.nDialog_XianLiao_1}
rwtNpcGroup[tSingleNpc.nNpcGroup_DaoMuZei_1] = rwtNpcGroup[tSingleNpc.nNpcGroup_DaoMuZei_1] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_DaoMuZei_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_DaoMuZei_1]["NpcId"] = tSingleNpc.nNpc_DaoMuZei_1


tSingleNpc.nNpc_DaoMuZei_2 = 3812
tSingleNpc.nNpcGroup_DaoMuZei_2 = 20943
tSingleNpc.nNpcGroup_GenId_DaoMuZei_2 = 3135016
rwtNpc[tSingleNpc.nNpc_DaoMuZei_2] = rwtNpc[tSingleNpc.nNpc_DaoMuZei_2] or {}
rwtNpc[tSingleNpc.nNpc_DaoMuZei_2]["DialogId"] = {tDialog.nDialog_XianLiao_2}
rwtNpcGroup[tSingleNpc.nNpcGroup_DaoMuZei_2] = rwtNpcGroup[tSingleNpc.nNpcGroup_DaoMuZei_2] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_DaoMuZei_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_DaoMuZei_2]["NpcId"] = tSingleNpc.nNpc_DaoMuZei_2


tSingleNpc.nNpc_DaoMuZei_3 = 3813
tSingleNpc.nNpcGroup_DaoMuZei_3 = 20944
tSingleNpc.nNpcGroup_GenId_DaoMuZei_3 = 3135017
rwtNpc[tSingleNpc.nNpc_DaoMuZei_3] = rwtNpc[tSingleNpc.nNpc_DaoMuZei_3] or {}
rwtNpc[tSingleNpc.nNpc_DaoMuZei_3]["DialogId"] = {tDialog.nDialog_XianLiao_3}
rwtNpcGroup[tSingleNpc.nNpcGroup_DaoMuZei_3] = rwtNpcGroup[tSingleNpc.nNpcGroup_DaoMuZei_3] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_DaoMuZei_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_DaoMuZei_3]["NpcId"] = tSingleNpc.nNpc_DaoMuZei_3

-------------------------------------逻辑---------------------------------------
--副本目标
local nTarget = 60290

--材料2号本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Money
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10045]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtTarget[nTarget] = {}
rwtTarget[nTarget]["Title"] = tLuaText[LANGUAGE_CONFIG][21808]
rwtTarget[nTarget]["ReqDialogId"] = tDialog.nDialog_TongGuan_caijihou

rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1


--采集逻辑
rwtNpcGroup[tCollect.nCollect_ShiTi] = rwtNpcGroup[tCollect.nCollect_ShiTi] or {} 
rwtNpcGroup[tCollect.nCollect_ShiTi]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.nCollect_ShiTi]["CollectTime"] = 3
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["CostItems"] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["CostItems"][1]["id"] = nItem_ShengShui
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = tDialog.nDialog_TongGuan_caijiqian
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"] = {}  
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 9000
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}       
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.nCollect_ShiTi
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = nAward_ShiTi
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 9001
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkEventCond"] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Record"] = nSpecialTimesTemp
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Value"] = {0}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["TempDataID"] = nSpecialTimesTemp
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}       
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = tCollect.nCollect_ShiTi
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = nAward_BaoWu
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"] = {}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"]["tDialog"] = {tDialog.nDialog_BaoWu}
rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"] = rwtNpcGroup[tCollect.nCollect_ShiTi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]
rwtNpcGroup[tCollect.nCollect_ShiTi]["Func"] = function(nGenEventId,nRandom)
    if rwUserGetItemCount(nItem_ShengShui) <= 0 then
        rwOpenNpcChatDialog(tDialog.nDialog_TongGuan_caijihou)
    end 
end







--rwtNpcGroup[tCollect.nCollect_ShiTi]["BeforeCollect"] = {}
--rwtNpcGroup[tCollect.nCollect_ShiTi]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
--	local nUserId = rwUserGetId()
--	if rwUserGetItemCount(nItem_ShengShui) >= 1 then	
--		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
--	else
--		rwOpenNpcChatDialog(tDialog.nDialog_TongGuan_caijiqian)
--	end
--end

--rwtNpcGroup[tCollect.nCollect_ShiTi]["Func"] = function(nGenEventId,nRandom)
--	if rwUserGetItemCount(nItem_ShengShui) >= 1 then
--		rwItemDel(nItem_ShengShui,1)
--        local nTeShu = 0
----		local nPos = tCollect[nGenEventId]
----		rwDelGenEvent(nGenEventId)

--		--【概率10%获得盗贼的宝物
--		local nUserId = rwUserGetId()
--		if rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["BaoWu"] == 1 then
--		else
--			local nxiaoshu = math.random(1,100)
--			if nxiaoshu <= 10 then
----				rwCopyMapAddAward(CONST_ACTION_TYPE.TIPS,nAward_BaoWu,tCollect.nCollect_ShiTi,nUserId)
----				rwSpecialStatus_AddEffect(7,0, 2063, nPos, 0)
--                nTeShu = 1
--				rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["BaoWu"] = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["BaoWu"] + 1
--				rwOpenNpcChatDialog(tDialog.nDialog_BaoWu)
--			end
--		end
--         --】概率
--        if (nTeShu == 0) then 
--            local tAwardInfo = {}
--            tAwardInfo["Awards"] = {}
--	        tAwardInfo["Awards"]["Events"] = {}
--	        tAwardInfo["Awards"]["Events"][1] = {}
--	        tAwardInfo["Awards"]["Events"][1]["GetServerAward"] = {}
--            tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--            tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_ShiTi
--	        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
--	        rwBaseAward:create(tAwardInfo["Awards"]):Process() 
--            --档次】
--         end

--		if rwUserGetItemCount(nItem_ShengShui) == 0 then
--			rwOpenNpcChatDialog(tDialog.nDialog_TongGuan_caijihou)
--		end
--	end
--end


tCollect.nCollect_GuanCai = 60454
tCollect.nCollect_GenId_GuanCai_1 = 3135007
tCollect.nCollect_GenId_GuanCai_2 = 3135008
tCollect.nCollect_GenId_GuanCai_3 = 3135009
rwtNpcGroup[tCollect.nCollect_GuanCai] = rwtNpcGroup[tCollect.nCollect_GuanCai] or {} 
rwtNpcGroup[tCollect.nCollect_GuanCai]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.nCollect_GuanCai]["CollectTime"] = 2
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["CostItems"] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["CostItems"][1]["id"] = nItem_ShengShui
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = tDialog.nDialog_TongGuan_caijiqian
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"] = {}  
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 8000
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}       
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.nCollect_GuanCai
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = nAward_GuanCai
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 8001
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkEventCond"] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Record"] = nSpecialTimesTemp
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Value"] = {0}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["TempDataID"] = nSpecialTimesTemp
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}       
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = tCollect.nCollect_GuanCai
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = nAward_BaoJi
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"] = {}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"]["tDialog"] = {tDialog.nDialog_BaoJi}
rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"] = rwtNpcGroup[tCollect.nCollect_GuanCai]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]
rwtNpcGroup[tCollect.nCollect_GuanCai]["Func"] = function(nGenEventId,nRandom)
    if rwUserGetItemCount(nItem_ShengShui) <= 0 then
        rwOpenNpcChatDialog(tDialog.nDialog_TongGuan_caijihou)
    end 
end
--rwtNpcGroup[tCollect.nCollect_GuanCai]["BeforeCollect"] = {}
--rwtNpcGroup[tCollect.nCollect_GuanCai]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
--	local nUserId = rwUserGetId()
--	if rwUserGetItemCount(nItem_ShengShui) >= 1 then	
--		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
--	else
--		rwOpenNpcChatDialog(tDialog.nDialog_TongGuan_caijiqian)
--	end
--end


--rwtNpcGroup[tCollect.nCollect_GuanCai]["Func"] = function(nGenEventId,nRandom)
--	if rwUserGetItemCount(nItem_ShengShui) >= 1 then
--		rwItemDel(nItem_ShengShui,1)
----		local nPos = tCollect[nGenEventId]
----		rwDelGenEvent(nGenEventId)
--        local nTeShu = 0
--        --【概率20%获得暴击3倍奖励
--		local nUserId = rwUserGetId()
--		if rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["BaoJi"] == 3 then
--		else
--			local nxiaoshu = math.random(1,100)
--			if nxiaoshu <= 20 then
--				rwCopyMapAddAward(CONST_ACTION_TYPE.TIPS,nAward,tCollect.nCollect_GuanCai,nUserId)
--                rwCopyMapAddAward(CONST_ACTION_TYPE.TIPS,nAward,tCollect.nCollect_GuanCai,nUserId)
----				rwSpecialStatus_AddEffect(7,0, 2063, nPos, 0)
--                nTeShu = 1 
--				rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["BaoJi"] = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["BaoJi"] + 1
--				rwOpenNpcChatDialog(tDialog.nDialog_BaoJi)
--			end
--		end
--        --】概率
--         if (nTeShu ==0) then
--            local tAwardInfo = {}
--            tAwardInfo["Awards"] = {}
--	        tAwardInfo["Awards"]["Events"] = {}
--	        tAwardInfo["Awards"]["Events"][1] = {}
--	        tAwardInfo["Awards"]["Events"][1]["GetServerAward"] = {}
--            tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--            tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_GuanCai
--	        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
--	        rwBaseAward:create(tAwardInfo["Awards"]):Process() 
--            ---档次】
--        end

--		if rwUserGetItemCount(nItem_ShengShui) == 0 then
--			rwOpenNpcChatDialog(tDialog.nDialog_TongGuan_caijihou)
--		end
--	end
--end

--特殊光效棺材
tCollect.nCollect_GuanCai_TeShu = 60458
tCollect.nCollect_GenId_TeShu_GuanCai = 3135006
rwtNpcGroup[tCollect.nCollect_GuanCai_TeShu] = rwtNpcGroup[tCollect.nCollect_GuanCai] or {} 


tCollect.nCollect_XiangZi = 60455
tCollect.nCollect_GenId_XiangZi_1 = 3135010
tCollect.nCollect_GenId_XiangZi_2 = 3135011
tCollect.nCollect_GenId_XiangZi_3 = 3135012
tCollect.nCollect_GenId_XiangZi_4 = 3135013
rwtNpcGroup[tCollect.nCollect_XiangZi] = rwtNpcGroup[tCollect.nCollect_XiangZi] or {} 
rwtNpcGroup[tCollect.nCollect_XiangZi]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.nCollect_XiangZi]["CollectTime"] = 1

rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["CostItems"] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["CostItems"][1]["id"] = nItem_ShengShui
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = tDialog.nDialog_TongGuan_caijiqian
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"] = {}  
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 8000
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}       
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.nCollect_XiangZi
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = nAward_XiangZi
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 8001
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkEventCond"] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Record"] = nSpecialTimesTemp
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Value"] = {0}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["TempDataID"] = nSpecialTimesTemp
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}       
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = tCollect.nCollect_XiangZi
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = nAward_ShengShui
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"] = {}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"]["tDialog"] = {tDialog.nDialog_ShengShui}
rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"] = rwtNpcGroup[tCollect.nCollect_XiangZi]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]
rwtNpcGroup[tCollect.nCollect_XiangZi]["Func"] = function(nGenEventId,nRandom)
    if rwUserGetItemCount(nItem_ShengShui) <= 0 then
        rwOpenNpcChatDialog(tDialog.nDialog_TongGuan_caijihou)
    end 
end
--rwtNpcGroup[tCollect.nCollect_XiangZi]["BeforeCollect"] = {}
--rwtNpcGroup[tCollect.nCollect_XiangZi]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
--	local nUserId = rwUserGetId()
--	if rwUserGetItemCount(nItem_ShengShui) >= 1 then	
--		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
--	else
--		rwOpenNpcChatDialog(tDialog.nDialog_TongGuan_caijiqian)
--	end
--end


--rwtNpcGroup[tCollect.nCollect_XiangZi]["Func"] = function(nGenEventId,nRandom)
--	if rwUserGetItemCount(nItem_ShengShui) >= 1 then
--		rwItemDel(nItem_ShengShui,1)
--        local nTeShu = 0
--        --概率 【20%获得一瓶圣水
--		local nUserId = rwUserGetId()
--		if rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["ShengShui"] == 2 then
--		else
--			local nxiaoshu = math.random(1,100)
--			if nxiaoshu <= 20 then  --可暂时修改方便测试
--				rwCopyMapAddAward(CONST_ACTION_TYPE.TIPS,nAward_ShengShui1,tCollect.nCollect_XiangZi,nUserId)
----				rwSpecialStatus_AddEffect(7,0, 2063, nPos, 0)
--                nTeShu = 1
--				rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["ShengShui"] = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["ShengShui"] + 1
--				rwOpenNpcChatDialog(tDialog.nDialog_ShengShui)
--			end
--		end
--        --】概率 

--        if (nTeShu == 0) then
--            local tAwardInfo = {}
--            tAwardInfo["Awards"] = {}
--	        tAwardInfo["Awards"]["Events"] = {}
--	        tAwardInfo["Awards"]["Events"][1] = {}
--	        tAwardInfo["Awards"]["Events"][1]["GetServerAward"] = {}
--            tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--            tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_XiangZi
--	        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
--	        rwBaseAward:create(tAwardInfo["Awards"]):Process() 
--        end
--        if (nTeShu == 0)  then--没发生特殊事件获得圣水才弹出
--		    if rwUserGetItemCount(nItem_ShengShui) == 0 then
--			    rwOpenNpcChatDialog(tDialog.nDialog_TongGuan_caijihou)
--		    end
--        end
--	end
--end

--rwtDialog[tDialog.nDialog_TongGuan_caijihou] = {}
--rwtDialog[tDialog.nDialog_TongGuan_caijihou]["DialogEndInit"] = {}
--rwtDialog[tDialog.nDialog_TongGuan_caijihou]["DialogEndInit"]["Events"] = {}
--rwtDialog[tDialog.nDialog_TongGuan_caijihou]["DialogEndInit"]["Events"][1] = {}
--rwtDialog[tDialog.nDialog_TongGuan_caijihou]["DialogEndInit"]["Events"][1]["SetUserTempData"] = {}
--rwtDialog[tDialog.nDialog_TongGuan_caijihou]["DialogEndInit"]["Events"][1]["SetUserTempData"][1] = {}
--rwtDialog[tDialog.nDialog_TongGuan_caijihou]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nUserRecordId
--rwtDialog[tDialog.nDialog_TongGuan_caijihou]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
--rwtDialog[tDialog.nDialog_TongGuan_caijihou]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1


----棺材出暴击
--rwtDialog[tDialog.nDialog_BaoJi] = {}
--rwtDialog[tDialog.nDialog_BaoJi]["DialogEndInit"] = {}
--rwtDialog[tDialog.nDialog_BaoJi]["DialogEndInit"]["Events"] = {}
--rwtDialog[tDialog.nDialog_BaoJi]["DialogEndInit"]["Events"][1] = {}
--rwtDialog[tDialog.nDialog_BaoJi]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
--rwtDialog[tDialog.nDialog_BaoJi]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtDialog[tDialog.nDialog_BaoJi]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_BaoJi
--rwtDialog[tDialog.nDialog_BaoJi]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX

----宝箱出圣水
--rwtDialog[tDialog.nDialog_ShengShui] = {}
--rwtDialog[tDialog.nDialog_ShengShui]["DialogEndInit"] = {}
--rwtDialog[tDialog.nDialog_ShengShui]["DialogEndInit"]["Events"] = {}
--rwtDialog[tDialog.nDialog_ShengShui]["DialogEndInit"]["Events"][1] = {}
--rwtDialog[tDialog.nDialog_ShengShui]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
--rwtDialog[tDialog.nDialog_ShengShui]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtDialog[tDialog.nDialog_ShengShui]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_ShengShui
--rwtDialog[tDialog.nDialog_ShengShui]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX

----尸体出宝物
--rwtDialog[tDialog.nDialog_BaoWu] = {}
--rwtDialog[tDialog.nDialog_BaoWu]["DialogEndInit"] = {}
--rwtDialog[tDialog.nDialog_BaoWu]["DialogEndInit"]["Events"] = {}
--rwtDialog[tDialog.nDialog_BaoWu]["DialogEndInit"]["Events"][1] = {}
--rwtDialog[tDialog.nDialog_BaoWu]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
--rwtDialog[tDialog.nDialog_BaoWu]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtDialog[tDialog.nDialog_BaoWu]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_BaoWu
--rwtDialog[tDialog.nDialog_BaoWu]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX

rwtDialog[tDialog.nDialog_TongGuan_caijiqian] = rwtDialog[tDialog.nDialog_TongGuan_caijiqian] or {}
rwtDialog[tDialog.nDialog_TongGuan_caijiqian]["DialogEndInit"] = {}
rwtDialog[tDialog.nDialog_TongGuan_caijiqian]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.nDialog_TongGuan_caijiqian]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.nDialog_TongGuan_caijiqian]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}       
rwtDialog[tDialog.nDialog_TongGuan_caijiqian]["DialogEndInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog.nDialog_TongGuan_caijihou

--初始化
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_ShengShui5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"]= {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["InitType"] = CONST_COPYMAP_INIT_TYPE.USERID
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = 0
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "BaoJi"
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["InitType"] = CONST_COPYMAP_INIT_TYPE.USERID
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["SetValue"] = 0
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["ValueRes"] = "ShengShui"
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3]["InitType"] = CONST_COPYMAP_INIT_TYPE.USERID
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3]["SetValue"] = 0
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3]["ValueRes"] = "BaoWu"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["OpenDialog"]["DialogId"] = tDialog.nDialog_1

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["FailEvents"]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["FailEvents"]["OpenDialog"]["DialogId"] = tDialog.nDialog_2

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"][1]["TempDataID"] = nSpecialTimesTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"][2]["TempDataID"] = nSpecialTimesTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"][2]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"][3]["TempDataID"] = nSpecialTimesTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"][3]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["SetUserTempData"][3]["DataIndex"] = CONST_TEMP_DATA.Data3

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}    --进副本随机NPC
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "8.202,-3.78,56.2"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 80
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "19.26,-3.466,60.3"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 90
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = "16.815,-3.466,70.8"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_DaoMuZei_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_DaoMuZei_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_DaoMuZei_3


