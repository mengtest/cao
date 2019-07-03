--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--第一片区宝箱
--by:mzy

--endregion

--------------------------------------------重制版---------------------

----***************************数据定义***************************----
----片区id
--local nMapId = 2001
----青铜宝箱(data1=1：未开启，data1=2：已开启)
----第一类（每天0~12点）
--local nQingTongBoxType_1 = 40062
--local tQingTongBoxGenId_Type_1 = {}
--tQingTongBoxGenId_Type_1[1] = 2001803
--tQingTongBoxGenId_Type_1[2] = 2001804
--tQingTongBoxGenId_Type_1[3] = 2001805
--tQingTongBoxGenId_Type_1[4] = 2001806
--tQingTongBoxGenId_Type_1[5] = 2001807
--tQingTongBoxGenId_Type_1[6] = 2001834
----第二类（每天12~18点）
--local nQingTongBoxType_2 = 40063
--local tQingTongBoxGenId_Type_2 = {}
--tQingTongBoxGenId_Type_2[1] = 2001808
--tQingTongBoxGenId_Type_2[2] = 2001809
--tQingTongBoxGenId_Type_2[3] = 2001810
--tQingTongBoxGenId_Type_2[4] = 2001811
--tQingTongBoxGenId_Type_2[5] = 2001812
----第三类（每天18~24点）
--local nQingTongBoxType_3 = 40064
--local tQingTongBoxGenId_Type_3 = {}
--tQingTongBoxGenId_Type_3[1] = 2001813
--tQingTongBoxGenId_Type_3[2] = 2001814
--tQingTongBoxGenId_Type_3[3] = 2001815
--tQingTongBoxGenId_Type_3[4] = 2001816
--tQingTongBoxGenId_Type_3[5] = 2001817

----白银宝箱
--local nBaiYinBoxType = 40065
--local tBaiYinBoxGenId_Type = {}
--tBaiYinBoxGenId_Type[1] = 2001818
--tBaiYinBoxGenId_Type[2] = 2001819
--tBaiYinBoxGenId_Type[3] = 2001820
--tBaiYinBoxGenId_Type[4] = 2001821
--tBaiYinBoxGenId_Type[5] = 2001822
--tBaiYinBoxGenId_Type[6] = 2001823
--tBaiYinBoxGenId_Type[7] = 2001824
--tBaiYinBoxGenId_Type[8] = 2001825
--tBaiYinBoxGenId_Type[9] = 2001826
--tBaiYinBoxGenId_Type[10] = 2001827

----黄金宝箱
--local nHuangJinBoxType = 40066
--local tHuangJinBoxGenId_Type = {}
--tHuangJinBoxGenId_Type[1] = 2001828
--tHuangJinBoxGenId_Type[2] = 2001829
--tHuangJinBoxGenId_Type[3] = 2001830
----黄金宝箱对应怪物
--local tMonsterTypeId = {}
--tMonsterTypeId[1] = 300130      --魔导箱守卫萨泽
--tMonsterTypeId[2] = 300132      --魔导箱守卫普坦
--tMonsterTypeId[3] = 300131      --魔导箱守卫波尔

--local tMonsterGenId = {}
--tMonsterGenId[1] = 2001831      --魔导箱守卫萨泽
--tMonsterGenId[2] = 2001833      --魔导箱守卫普坦
--tMonsterGenId[3] = 2001832      --魔导箱守卫波尔

--local tMonsterId = {}
--tMonsterId[1] = 1000228     --魔导箱守卫萨泽
--tMonsterId[2] = 1000230     --魔导箱守卫普坦
--tMonsterId[3] = 1000229     --魔导箱守卫波尔

----黄金宝箱未开启时对应对白
--local tDialogs_HuangJin = {}
--tDialogs_HuangJin[1] = 10703
--tDialogs_HuangJin[2] = 10704
--tDialogs_HuangJin[3] = 10705

----NPCid
--local tNpc_Monster = {}
--tNpc_Monster[1] = 3270  --魔导箱守卫萨泽
--tNpc_Monster[2] = 3271  --魔导箱守卫普坦
--tNpc_Monster[3] = 3272  --魔导箱守卫波尔

----宝箱掩码
--local nTempData_DayJudgment = 1028         --隔天掩码
----青铜类宝箱全部刷新不随机，data1表示是否开启（1：未开启，2：开启）
--local tTreasureBox_LeiMingDaLu_TempData = {}
--tTreasureBox_LeiMingDaLu_TempData["QingTong1"] = {} --第一类青铜宝箱
--tTreasureBox_LeiMingDaLu_TempData["QingTong1"][tQingTongBoxGenId_Type_1[1]] = 1029
--tTreasureBox_LeiMingDaLu_TempData["QingTong1"][tQingTongBoxGenId_Type_1[2]] = 1030
--tTreasureBox_LeiMingDaLu_TempData["QingTong1"][tQingTongBoxGenId_Type_1[3]] = 1031
--tTreasureBox_LeiMingDaLu_TempData["QingTong1"][tQingTongBoxGenId_Type_1[4]] = 1032
--tTreasureBox_LeiMingDaLu_TempData["QingTong1"][tQingTongBoxGenId_Type_1[5]] = 1033
--tTreasureBox_LeiMingDaLu_TempData["QingTong1"][tQingTongBoxGenId_Type_1[6]] = 1035

--tTreasureBox_LeiMingDaLu_TempData["QingTong2"] = {} --第二类青铜宝箱，data1表示是否开启（1：未开启，2：开启），data2存储要刷新的genid
--tTreasureBox_LeiMingDaLu_TempData["QingTong2"][1] = 1034
----tTreasureBox_LeiMingDaLu_TempData["QingTong2"][tQingTongBoxGenId_Type_2[2]] = 1035
----tTreasureBox_LeiMingDaLu_TempData["QingTong2"][tQingTongBoxGenId_Type_2[3]] = 1036
----tTreasureBox_LeiMingDaLu_TempData["QingTong2"][tQingTongBoxGenId_Type_2[4]] = 1037
----tTreasureBox_LeiMingDaLu_TempData["QingTong2"][tQingTongBoxGenId_Type_2[5]] = 1038

--tTreasureBox_LeiMingDaLu_TempData["QingTong3"] = {} --第三类青铜宝箱，data1表示是否开启（1：未开启，2：开启），data2存储要刷新的genid
--tTreasureBox_LeiMingDaLu_TempData["QingTong3"][1] = 1039
--tTreasureBox_LeiMingDaLu_TempData["QingTong3"][2] = 1040
--tTreasureBox_LeiMingDaLu_TempData["QingTong3"][3] = 1041
----tTreasureBox_LeiMingDaLu_TempData["QingTong3"][tQingTongBoxGenId_Type_3[4]] = 1042
----tTreasureBox_LeiMingDaLu_TempData["QingTong3"][tQingTongBoxGenId_Type_3[5]] = 1043

----白银宝箱随机刷新，data1表示是否开启（1：未开启，2：开启），data2存储要刷新的genid
--tTreasureBox_LeiMingDaLu_TempData["BaiYin"] = {} --白银宝箱
--tTreasureBox_LeiMingDaLu_TempData["BaiYin"][1] = 1044
--tTreasureBox_LeiMingDaLu_TempData["BaiYin"][2] = 1045
--tTreasureBox_LeiMingDaLu_TempData["BaiYin"][3] = 1046

----黄金宝箱随机刷新，data1表示是否开启（1：未开启，2：开启），data2存储要刷新的genid
--tTreasureBox_LeiMingDaLu_TempData["HuangJin"] = {} --黄金宝箱
--tTreasureBox_LeiMingDaLu_TempData["HuangJin"][1] = 1047

----奖励id
----local nAwardId_QingTong1 = 5000000         --青铜1奖励
--local nAwardId_BaiYin = 5000001        --白银奖励
--local nAwardId_HuangJin = 5000002         --黄金奖励
--local nAwardId_QingTong2 = 5000003         --青铜2奖励
--local nAwardId_QingTong3 = 5000004         --青铜3奖励

--local nQingTong1_BaseAwardId = 5000005
--local tAwardId_QingTong1 = {}
--for i = 1,100 do
--    tAwardId_QingTong1[i] = nQingTong1_BaseAwardId + i -1
--end
----物品
--local nItem_Key_BaiYin = 7000173          --白银宝箱镶金魔导箱之钥

----***************************逻辑***************************----
----青铜1类
--rwtNpcGroup[nQingTongBoxType_1] = rwtNpcGroup[nQingTongBoxType_1] or {}
--rwtNpcGroup[nQingTongBoxType_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nQingTongBoxType_1]["Awards"] = {}
--rwtNpcGroup[nQingTongBoxType_1]["Awards"]["ByLevel"] = 1
--rwtNpcGroup[nQingTongBoxType_1]["Awards"]["AwardId"] = tAwardId_QingTong1
--rwtNpcGroup[nQingTongBoxType_1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtNpcGroup[nQingTongBoxType_1]["ChkFunc"] = function(nGenEventId)
--    local nOpenFlag = rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["QingTong1"][nGenEventId],CONST_TEMP_DATA.Data1)
--    if nOpenFlag == 2 then
--        rwSendSystemMessage("该类型魔导箱今日开启数量已经到达上限。",2)
--        return false
--    elseif  nOpenFlag == 1 then
--        rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["QingTong1"][nGenEventId],2,CONST_TEMP_DATA.Data1)
--        return true
--    end

--    rwSendSystemMessage("打开失败！",2)
--    return false
--end

----青铜2类
--rwtNpcGroup[nQingTongBoxType_2] = rwtNpcGroup[nQingTongBoxType_2] or {}
--rwtNpcGroup[nQingTongBoxType_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nQingTongBoxType_2]["Awards"] = {}
--rwtNpcGroup[nQingTongBoxType_2]["Awards"]["AwardId"] = nAwardId_QingTong2
--rwtNpcGroup[nQingTongBoxType_2]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtNpcGroup[nQingTongBoxType_2]["ChkFunc"] = function(nGenEventId)
--    local nTempData_Flag = nil
--    for i = 1,#tTreasureBox_LeiMingDaLu_TempData["QingTong2"] do
--        if rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["QingTong2"][i],CONST_TEMP_DATA.Data2) == nGenEventId then
--            nTempData_Flag = i
--            break
--        end
--    end
--    if not nTempData_Flag then
--        rwSendSystemMessage("钥匙孔被铁锈腐蚀，无法开启。")
--        return false
--    end
--    local nOpenFlag = rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["QingTong2"][nTempData_Flag],CONST_TEMP_DATA.Data1)
--    if nOpenFlag == 2 then
--        rwSendSystemMessage("该类型魔导箱今日开启数量已经到达上限。")
--        return false
--    elseif  nOpenFlag == 1 then
--        rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["QingTong2"][nTempData_Flag],2,CONST_TEMP_DATA.Data1)
--        return true
--    end

--    rwSendSystemMessage("打开失败！",2)
--    return false
--end

----青铜3类
--rwtNpcGroup[nQingTongBoxType_3] = rwtNpcGroup[nQingTongBoxType_3] or {}
--rwtNpcGroup[nQingTongBoxType_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nQingTongBoxType_3]["Awards"] = {}
--rwtNpcGroup[nQingTongBoxType_3]["Awards"]["AwardId"] = nAwardId_QingTong3
--rwtNpcGroup[nQingTongBoxType_3]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtNpcGroup[nQingTongBoxType_3]["ChkFunc"] = function(nGenEventId)
--    local nTempData_Flag = nil
--    for i = 1,#tTreasureBox_LeiMingDaLu_TempData["QingTong3"] do
--        if rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["QingTong3"][i],CONST_TEMP_DATA.Data2) == nGenEventId then
--            nTempData_Flag = i
--            break
--        end
--    end
--    if not nTempData_Flag then
--        rwSendSystemMessage("钥匙孔被铁锈腐蚀，无法开启。")
--        return false
--    end
--    local nOpenFlag = rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["QingTong3"][nTempData_Flag],CONST_TEMP_DATA.Data1)
--    if nOpenFlag == 2 then
--        rwSendSystemMessage("该类型魔导箱今日开启数量已经到达上限。")
--        return false
--    elseif  nOpenFlag == 1 then
--        rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["QingTong3"][nTempData_Flag],2,CONST_TEMP_DATA.Data1)
--        return true
--    end

--    rwSendSystemMessage("打开失败！",2)
--    return false
--end

----白银宝箱
--rwtNpcGroup[nBaiYinBoxType] = rwtNpcGroup[nBaiYinBoxType] or {}
--rwtNpcGroup[nBaiYinBoxType]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nBaiYinBoxType]["Awards"] = {}
--rwtNpcGroup[nBaiYinBoxType]["Awards"]["AwardId"] = nAwardId_BaiYin
--rwtNpcGroup[nBaiYinBoxType]["Awards"]["CostItems"] = {}
--rwtNpcGroup[nBaiYinBoxType]["Awards"]["CostItems"][1] = {}
--rwtNpcGroup[nBaiYinBoxType]["Awards"]["CostItems"][1]["id"] = nItem_Key_BaiYin
--rwtNpcGroup[nBaiYinBoxType]["Awards"]["CostItems"][1]["num"] = 1
--rwtNpcGroup[nBaiYinBoxType]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtNpcGroup[nBaiYinBoxType]["ChkFunc"] = function(nGenEventId)
--    local nTempData_Flag = nil
--    for i = 1,#tTreasureBox_LeiMingDaLu_TempData["BaiYin"] do
--        if rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["BaiYin"][i],CONST_TEMP_DATA.Data2) == nGenEventId then
--            nTempData_Flag = i
--            break
--        end
--    end
--    if not nTempData_Flag then
--        rwSendSystemMessage("钥匙孔被铁锈腐蚀，无法开启。")
--        return false
--    end
--    local nOpenFlag = rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["BaiYin"][nTempData_Flag],CONST_TEMP_DATA.Data1)
--    if nOpenFlag == 2 then
--        rwSendSystemMessage("该类型魔导箱今日开启数量已经到达上限。")
--        return false
--    elseif  nOpenFlag == 1 then
--        if rwUserGetItemCount(nItem_Key_BaiYin) <= 0 then
--            rwSendSystemMessage("对不起，你没有打开镶金魔导箱的钥匙。")
--            return false
--        end
--        rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["BaiYin"][nTempData_Flag],2,CONST_TEMP_DATA.Data1)
--        return true
--    end

--    rwSendSystemMessage("打开失败！",2)
--    return false
--end

----黄金宝箱
--rwtNpcGroup[nHuangJinBoxType] = rwtNpcGroup[nHuangJinBoxType] or {}
--rwtNpcGroup[nHuangJinBoxType]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nHuangJinBoxType]["Awards"] = {}
--rwtNpcGroup[nHuangJinBoxType]["Awards"]["AwardId"] = nAwardId_HuangJin
--rwtNpcGroup[nHuangJinBoxType]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtNpcGroup[nHuangJinBoxType]["ChkFunc"] = function(nGenEventId)
--    local nTempData_Flag = nil
--    for i = 1,#tTreasureBox_LeiMingDaLu_TempData["HuangJin"] do
--        if rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["HuangJin"][i],CONST_TEMP_DATA.Data2) == nGenEventId then
--            nTempData_Flag = i
--            break
--        end
--    end
--    if not nTempData_Flag then
--        rwSendSystemMessage("钥匙孔被铁锈腐蚀，无法开启。")
--        return false
--    end
--    local nOpenFlag = rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["HuangJin"][nTempData_Flag],CONST_TEMP_DATA.Data1)
--    if nOpenFlag == 2 then
--        rwSendSystemMessage("该类型魔导箱今日开启数量已经到达上限。")
--        return false
--    elseif  nOpenFlag == 1 then
--        --对应怪物
--        local nMonsterGroup_GenId = nil
--        for k,v in pairs(tHuangJinBoxGenId_Type) do
--            if v == nGenEventId then
--                nMonsterGroup_GenId = tMonsterGenId[k]
--                if rwHasGenEvent(nMonsterGroup_GenId) then
--                    rwOpenNpcChatDialog(tDialogs_HuangJin[k],CONST_NPCCHAT_TYPE.TREASUREBOX, nGenEventId)
--                    return false
--                end
--            end
--        end
--        rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["HuangJin"][nTempData_Flag],2,CONST_TEMP_DATA.Data1)
--        return true
--    end

--    rwSendSystemMessage("打开失败！",2)
--    return false
--end

----对白结束后进入战斗
--for k,v in pairs(tDialogs_HuangJin) do
--    rwtDialog[v] = {}
--    rwtDialog[v]["DialogEnd"] = function()
--        if not rwHasGenEvent(tMonsterGenId[k]) then
--            rwAddGenEvent(tMonsterGenId[k])
--        end
--        rwAutoBattle(tMonsterGenId[k])
--    end
--end
----***************************函数***************************----
----刷出青铜宝箱1
--function TreasureBox_LeiMingDaLu_QingTong_1_Init()
--    for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["QingTong1"]) do
--        if rwTempDataGetValue(v, CONST_TEMP_DATA.Data1) ~= 2 then
--            rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["QingTong1"][k],1,CONST_TEMP_DATA.Data1)
--            if not rwHasGenEvent(k) then
--                rwAddGenEvent(k)
--            end
--        end
--    end
--end

----刷出青铜宝箱2
--function TreasureBox_LeiMingDaLu_QingTong_2_Init()
--    --选择1个进行刷新
--    local tResultGen = {}
--    tResultGen = TreasureBox_LeiMingDaLu_MRandomN(tQingTongBoxGenId_Type_2,1)
--    local nFlag = 1
--    for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["QingTong2"]) do
--        if rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["QingTong2"][k], CONST_TEMP_DATA.Data2) == 0 then
--            rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["QingTong2"][k],1,CONST_TEMP_DATA.Data1)
--            rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["QingTong2"][k],tResultGen[nFlag],CONST_TEMP_DATA.Data2)
--            nFlag = nFlag + 1
--        end
--    end
--    for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["QingTong2"]) do
--        if rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["QingTong2"][k], CONST_TEMP_DATA.Data1) == 1 then
--            local nGenId = rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["QingTong2"][k], CONST_TEMP_DATA.Data2)
--            if nGenId ~= 0 and not(rwHasGenEvent(nGenId)) then
--                rwAddGenEvent(nGenId)
--            end
--        end
--    end
--end

----刷出青铜宝箱3
--function TreasureBox_LeiMingDaLu_QingTong_3_Init()
--    --选择3个进行刷新
--    local tResultGen = {}
--    tResultGen = TreasureBox_LeiMingDaLu_MRandomN(tQingTongBoxGenId_Type_3,3)
--    local nFlag = 1
--    for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["QingTong3"]) do
--        if rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["QingTong3"][k], CONST_TEMP_DATA.Data2) == 0 then
--            rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["QingTong3"][k],1,CONST_TEMP_DATA.Data1)
--            rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["QingTong3"][k],tResultGen[nFlag],CONST_TEMP_DATA.Data2)
--            nFlag = nFlag + 1
--        end
--    end
--    for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["QingTong3"]) do
--        if rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["QingTong3"][k], CONST_TEMP_DATA.Data1) == 1 then
--            local nGenId = rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["QingTong3"][k], CONST_TEMP_DATA.Data2)
--            if nGenId ~= 0 and not(rwHasGenEvent(nGenId)) then
--                rwAddGenEvent(nGenId)
--            end
--        end
--    end
--end

----刷出白银宝箱
--function TreasureBox_LeiMingDaLu_BaiYinInit()
--    --选择3个进行刷新
--    local tResultGen = {}
--    tResultGen = TreasureBox_LeiMingDaLu_MRandomN(tBaiYinBoxGenId_Type,3)
--    local nFlag = 1
--    for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["BaiYin"]) do
--        if rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["BaiYin"][k], CONST_TEMP_DATA.Data2) == 0 then
--            rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["BaiYin"][k],1,CONST_TEMP_DATA.Data1)
--            rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["BaiYin"][k],tResultGen[nFlag],CONST_TEMP_DATA.Data2)
--            nFlag = nFlag + 1
--        end
--    end
--    for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["BaiYin"]) do
--        if rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["BaiYin"][k], CONST_TEMP_DATA.Data1) == 1 then
--            local nGenId = rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["BaiYin"][k], CONST_TEMP_DATA.Data2)
--            if nGenId ~= 0 and not(rwHasGenEvent(nGenId)) then
--                rwAddGenEvent(nGenId)
--            end
--        end
--    end
--end

----刷出黄金宝箱
--function TreasureBox_LeiMingDaLu_HuangJinInit()
--    --选择1个进行刷新
--    local tResultGen = {}
--    tResultGen = TreasureBox_LeiMingDaLu_MRandomN(tHuangJinBoxGenId_Type,1)
--    local nFlag = 1
--    for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["HuangJin"]) do
--        if rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["HuangJin"][k], CONST_TEMP_DATA.Data2) == 0 then
--            rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["HuangJin"][k],1,CONST_TEMP_DATA.Data1)
--            rwUserTempDataSet(tTreasureBox_LeiMingDaLu_TempData["HuangJin"][k],tResultGen[nFlag],CONST_TEMP_DATA.Data2)
--            nFlag = nFlag + 1
--        end
--    end
--    for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["HuangJin"]) do
--        if rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["HuangJin"][k], CONST_TEMP_DATA.Data1) == 1 then
--            local nGenId = rwTempDataGetValue(tTreasureBox_LeiMingDaLu_TempData["HuangJin"][k], CONST_TEMP_DATA.Data2)
--            --宝箱
--            if nGenId ~= 0 and not(rwHasGenEvent(nGenId)) then
--                rwAddGenEvent(nGenId)
--            end 
----            --对应怪物           
----            if not rwHasGenEvent(tMonsterGenId[k]) then
----                rwAddGenEvent(tMonsterGenId[k])
----            end
--            --对应怪物
--            for i,nBoxGenId in pairs(tHuangJinBoxGenId_Type) do
--                if nBoxGenId == nGenId then
--                    if nGenId ~= 0 and not(rwHasGenEvent(tMonsterGenId[i])) then
--                        rwAddGenEvent(tMonsterGenId[i])
--                    end
--                end
--            end
--        end
--    end
--end

----m选n
--function TreasureBox_LeiMingDaLu_MRandomN(tTable,n)
--    local tCopyTable = SysCopyTable(tTable)
--    local tResult = {}
--    for i = n,1,-1 do
--        local nLen = #tCopyTable
--        local nRandom = math.random(nLen)
--        table.insert(tResult,tCopyTable[nRandom])
--        table.remove(tCopyTable,nRandom)
--    end
--    return tResult
--end
----刷出函数
--function TreasureBox_LeiMingDaLu_Init()
--    if rwTempDataDayJudgment(nTempData_DayJudgment) then
--        --重置所有掩码
--        for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["QingTong1"]) do
--            if not rwTempDataIsExist(v) then
--                rwTempDataAdd(v)
--            end
--            rwTempDataReset(v)
--        end
--        for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["QingTong2"]) do
--            if not rwTempDataIsExist(v) then
--                rwTempDataAdd(v)
--            end
--            rwTempDataReset(v)
--        end
--        for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["QingTong3"]) do
--            if not rwTempDataIsExist(v) then
--                rwTempDataAdd(v)
--            end
--            rwTempDataReset(v)
--        end
--        for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["BaiYin"]) do
--            if not rwTempDataIsExist(v) then
--                rwTempDataAdd(v)
--            end
--            rwTempDataReset(v)
--        end
--        for k,v in pairs(tTreasureBox_LeiMingDaLu_TempData["HuangJin"]) do
--            if not rwTempDataIsExist(v) then
--                rwTempDataAdd(v)
--            end
--            rwTempDataReset(v)
--        end
--    end
--        --刷新青铜宝箱
----        local nTimeFlag = 0
----        local nCurrentHour = tonumber(os.date('%H'))
----        if nCurrentHour >= 12 and nCurrentHour <= 18 then
----            nTimeFlag = 1
----        elseif  nCurrentHour >= 18 and nCurrentHour <= 24 then
----            nTimeFlag = 2
----        end
--        TreasureBox_LeiMingDaLu_QingTong_1_Init()
--        TreasureBox_LeiMingDaLu_QingTong_2_Init()
--        TreasureBox_LeiMingDaLu_QingTong_3_Init()

--        --刷新白银宝箱
--        TreasureBox_LeiMingDaLu_BaiYinInit()
--        --刷新黄金宝箱
--        TreasureBox_LeiMingDaLu_HuangJinInit()
--end
--rwtSceneLoad_Func[nMapId] = rwtSceneLoad_Func[nMapId] or {}
--table.insert(rwtSceneLoad_Func[nMapId],TreasureBox_LeiMingDaLu_Init)




----==============================宝箱重做======================
---------------------------数据定义-------------------------
----地图id
--local nMapId = 2001

----时间掩码
--local nTempData_DayJudgment = 1028
----宝箱掩码（共10个宝箱，10个掩码，data1表示宝箱类型，data2表示坐标索引，data3是否开启）
--local tTempData = {}
--tTempData[1] = 1029
--tTempData[2] = 1030
--tTempData[3] = 1031
--tTempData[4] = 1032
--tTempData[5] = 1033
--tTempData[6] = 1034
--tTempData[7] = 1035
--tTempData[8] = 1036
--tTempData[9] = 1037
--tTempData[10] = 1038

----genid(每个genid对应一个掩码)
--local tBox_GenId = {}
--tBox_GenId[1] = 2001804
--tBox_GenId[2] = 2001805
--tBox_GenId[3] = 2001806
--tBox_GenId[4] = 2001807
--tBox_GenId[5] = 2001808
--tBox_GenId[6] = 2001809
--tBox_GenId[7] = 2001810
--tBox_GenId[8] = 2001811
--tBox_GenId[9] = 2001812
--tBox_GenId[10] = 2001813

----每次刷新宝箱总数量
--local nAllBoxNum = 10

----金宝箱每次刷新上限
--local nMaxNum_Gold = 3

----金宝箱刷新概率
--local nRandom_Gold = 30
----银宝箱刷新概率
--local nRandom_Silver = 30
----铜宝箱刷新概率
--local nRandom_Copper = 40

----宝箱变量标记
--local tBoxFlag = {
--    Gold = 1,
--    Silver = 2,
--    Copper = 3,
--}
----------------------------npcgroup--------------
----金宝箱
--local nBoxType_Gold = 40066
----银宝箱
--local nBoxType_Silver = 40065
----铜宝箱
--local nBoxType_Copper = 40064

----------------------------坐标-----------------
--local tPos = {}
----金点
--tPos[1] = {flag = "Gold",sPos = "6.24,0.03,-91.36",nRot = 0}
--tPos[2] = {flag = "Gold",sPos = "54.55,-0.82,-42.57",nRot = 305}
--tPos[3] = {flag = "Gold",sPos = "-25.33,-1.23,45.54",nRot = 230}

----银点
--tPos[4] = {flag = "Silver",sPos = "-38.48,0.10,2.72",nRot = 0}
--tPos[5] = {flag = "Silver",sPos = "-89.64,-0.04,46.36",nRot = 225}
--tPos[6] = {flag = "Silver",sPos = "-32.75,-2.28,60.42",nRot = 225}
--tPos[7] = {flag = "Silver",sPos = "-50.34,-1.76,56.57",nRot = 128.66}
--tPos[8] = {flag = "Silver",sPos = "-76.99,0.10,-80.03",nRot = 45}
--tPos[9] = {flag = "Silver",sPos = "-21.19,0.10,-92.39",nRot = 0}
--tPos[10] = {flag = "Silver",sPos = "-3.38,0.10,-168.89",nRot = 180}
--tPos[11] = {flag = "Silver",sPos = "11.89,-0.67,45.44",nRot = 270}
--tPos[12] = {flag = "Silver",sPos = "33.55,-0.06,-10.46",nRot = 270}
--tPos[13] = {flag = "Silver",sPos = "32.51,0.02,-211.07",nRot = 90}

----铜点
--tPos[14] = {flag = "Copper",sPos = "15.81,0.01,-173.91",nRot = 0}
--tPos[15] = {flag = "Copper",sPos = "-73.84,1.74,45.48",nRot = 180}
--tPos[16] = {flag = "Copper",sPos = "3.82,0.10,-51.70",nRot = 180}
--tPos[17] = {flag = "Copper",sPos = "67.70,0.01,-123.07",nRot = 0}
--tPos[18] = {flag = "Copper",sPos = "-102.58,0.10,-91.40",nRot = 100}
--tPos[19] = {flag = "Copper",sPos = "-60.19,0.07,-166.66",nRot = 330}
--tPos[20] = {flag = "Copper",sPos = "-6.47,0.12,-193.86",nRot = 0}
--tPos[21] = {flag = "Copper",sPos = "-12.96,0.10,19.28",nRot = 233.13}
--tPos[22] = {flag = "Copper",sPos = "-32.70,0.10,-60.01",nRot = 225}
--tPos[23] = {flag = "Copper",sPos = "31.54,0.01,-165.19",nRot = 270}
--tPos[24] = {flag = "Copper",sPos = "41.17,0.09,-74.10",nRot = 225}
--tPos[25] = {flag = "Copper",sPos = "-19.33,0.10,-28.38",nRot = 225}
--tPos[26] = {flag = "Copper",sPos = "-35.04,0.08,32.53",nRot = 180}
--tPos[27] = {flag = "Copper",sPos = "-1.89,0.10,-46.59",nRot = 225}
--tPos[28] = {flag = "Copper",sPos = "42.84,0.01,-127.78",nRot = 180}
--tPos[29] = {flag = "Copper",sPos = "-73.94,0.10,-158.29",nRot = 180}

----各类宝箱坐标信息索引
--local tPos_Gold_Index = {}
--local tPos_Silver_Index = {}
--local tPos_Copper_Index = {}
----------------------奖励id--------------
----金宝箱奖励
--local nAwardId_Gold = 5000002
----银宝箱奖励
--local nAwardId_Silver = 5000001
----铜宝箱奖励
--local nAwardId_Copper = 5000000
----------------------物品id----------------
----金宝箱钥匙
--local nItem_Key_Gold = 7000184

----银宝箱钥匙
--local nItem_Key_Silver = 7000183

--------------------------对白id---------------
--local nErrorDialog_Gold = 11036
--local nErrorDialog_Silver = 11035
---------------------------逻辑--------------------------------
----宝箱映射
--for i,v in pairs(tPos) do
--    if v["flag"] == "Gold" then
--        table.insert(tPos_Gold_Index,i)
--    elseif  v["flag"] == "Silver" then
--        table.insert(tPos_Silver_Index,i)
--    elseif  v["flag"] == "Copper" then
--        table.insert(tPos_Copper_Index,i)
--    end
--end

----金宝箱
--rwtNpcGroup[nBoxType_Gold] = rwtNpcGroup[nBoxType_Gold] or {}
--rwtNpcGroup[nBoxType_Gold]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nBoxType_Gold]["Awards"] = {}
--rwtNpcGroup[nBoxType_Gold]["Awards"]["AwardId"] = nAwardId_Gold
--rwtNpcGroup[nBoxType_Gold]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtNpcGroup[nBoxType_Gold]["Awards"]["CostItems"] = {}
--rwtNpcGroup[nBoxType_Gold]["Awards"]["CostItems"][1] = {}
--rwtNpcGroup[nBoxType_Gold]["Awards"]["CostItems"][1]["id"] = nItem_Key_Gold
--rwtNpcGroup[nBoxType_Gold]["Awards"]["CostItems"][1]["num"] = 1
--rwtNpcGroup[nBoxType_Gold]["Awards"]["ErrorMsg"] = {}
--rwtNpcGroup[nBoxType_Gold]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
--rwtNpcGroup[nBoxType_Gold]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
--rwtNpcGroup[nBoxType_Gold]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = nErrorDialog_Gold

--rwtNpcGroup[nBoxType_Gold]["Function"] = function(nNpcGroupType,nGenEventId)
--    local nIndex
--    for k,v in pairs(tBox_GenId) do
--        if v == nGenEventId then
--            nIndex = k
--        end
--    end
--    --开启宝箱后掩码设为1
--    rwUserTempDataSet(tTempData[nIndex],1,CONST_TEMP_DATA.Data3)
--end

----银宝箱
--rwtNpcGroup[nBoxType_Silver] = rwtNpcGroup[nBoxType_Silver] or {}
--rwtNpcGroup[nBoxType_Silver]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nBoxType_Silver]["Awards"] = {}
--rwtNpcGroup[nBoxType_Silver]["Awards"]["AwardId"] = nAwardId_Silver
--rwtNpcGroup[nBoxType_Silver]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtNpcGroup[nBoxType_Silver]["Awards"]["CostItems"] = {}
--rwtNpcGroup[nBoxType_Silver]["Awards"]["CostItems"][1] = {}
--rwtNpcGroup[nBoxType_Silver]["Awards"]["CostItems"][1]["id"] = nItem_Key_Silver
--rwtNpcGroup[nBoxType_Silver]["Awards"]["CostItems"][1]["num"] = 1
--rwtNpcGroup[nBoxType_Silver]["Awards"]["ErrorMsg"] = {}
--rwtNpcGroup[nBoxType_Silver]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
--rwtNpcGroup[nBoxType_Silver]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
--rwtNpcGroup[nBoxType_Silver]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = nErrorDialog_Silver

--rwtNpcGroup[nBoxType_Silver]["Function"] = function(nNpcGroupType,nGenEventId)
--    local nIndex
--    for k,v in pairs(tBox_GenId) do
--        if v == nGenEventId then
--            nIndex = k
--        end
--    end
--    --开启宝箱后掩码设为1
--    rwUserTempDataSet(tTempData[nIndex],1,CONST_TEMP_DATA.Data3)
--end

----铜宝箱
--rwtNpcGroup[nBoxType_Copper] = rwtNpcGroup[nBoxType_Copper] or {}
--rwtNpcGroup[nBoxType_Copper]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nBoxType_Copper]["Awards"] = {}
--rwtNpcGroup[nBoxType_Copper]["Awards"]["AwardId"] = nAwardId_Copper
--rwtNpcGroup[nBoxType_Copper]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD

--rwtNpcGroup[nBoxType_Copper]["Function"] = function(nNpcGroupType,nGenEventId)
--    local nIndex
--    for k,v in pairs(tBox_GenId) do
--        if v == nGenEventId then
--            nIndex = k
--        end
--    end
--    --开启宝箱后掩码设为1
--    rwUserTempDataSet(tTempData[nIndex],1,CONST_TEMP_DATA.Data3)
--end


-----------------------------函数----------------------------------

----根据概率随机要刷新的该类宝箱数量
--function TreasureBox_LeiMingDaLu_RandomChance(nRandom, nTimes)
--    local nNum = 0
--    for i = 1,nTimes do
--        local nJudgeRandom = math.random(100)
--        if nJudgeRandom < nRandom then
--            nNum = nNum + 1
--        end
--    end
--    return nNum
--end

----坐标随机
--function TreasureBox_LeiMingDaLu_RandomPos(tPosIndex)
--    if #tPosIndex > 1 then
--        local nRandom = math.random(#tPosIndex)
--        local nIndex = tPosIndex[nRandom]
--        table.remove(tPosIndex,nRandom)
--        return nIndex
--    else
--        local nIndex = tPosIndex[1]
--        table.remove(tPosIndex,1)
--        return nIndex
--    end
--end

----宝箱随机
--function TreasureBox_LeiMingDaLu_RandomBox()
--    --剩余未随机的数量
--    local nRestNum = nAllBoxNum
--    --先随机金宝箱数量
--    local nNum_Gold = TreasureBox_LeiMingDaLu_RandomChance(nRandom_Gold, nRestNum)
--    nNum_Gold = (nNum_Gold > nMaxNum_Gold) and nMaxNum_Gold or nNum_Gold

--    nRestNum = nRestNum - nNum_Gold         --更新剩余数量

--    --随机银宝箱数量
--    local nNum_Silver = TreasureBox_LeiMingDaLu_RandomChance(nRandom_Silver, nRestNum)

--    nRestNum = nRestNum - nNum_Silver         --更新剩余数量

--    --铜宝箱数量
--    local nNum_Copper = nRestNum

--    local nTempdataFlag = 1
--    local tPosRandom = {}
--    --将金位置保存的索引插入随机列表
--    for _,v in pairs(tPos_Gold_Index) do
--        table.insert(tPosRandom,v)
--    end
--    --设置掩码

--    for i = 1,nNum_Gold do
--        local nTempData = tTempData[nTempdataFlag]
--        rwUserTempDataSet(nTempData,tBoxFlag.Gold,CONST_TEMP_DATA.Data1)
--        local nPosIndex = TreasureBox_LeiMingDaLu_RandomPos(tPosRandom)
--        rwUserTempDataSet(nTempData,nPosIndex,CONST_TEMP_DATA.Data2)
--        rwUserTempDataSet(nTempData,0,CONST_TEMP_DATA.Data3)
--        nTempdataFlag = nTempdataFlag + 1
--    end
--    --将银位置保存的索引插入随机列表
--    for _,v in pairs(tPos_Silver_Index) do
--        table.insert(tPosRandom,v)
--    end
--    --设置掩码
--    for i = 1,nNum_Silver do
--        local nTempData = tTempData[nTempdataFlag]
--        rwUserTempDataSet(nTempData,tBoxFlag.Silver,CONST_TEMP_DATA.Data1)
--        local nPosIndex = TreasureBox_LeiMingDaLu_RandomPos(tPosRandom)
--        rwUserTempDataSet(nTempData,nPosIndex,CONST_TEMP_DATA.Data2)
--        rwUserTempDataSet(nTempData,0,CONST_TEMP_DATA.Data3)
--        nTempdataFlag = nTempdataFlag + 1
--    end
--    --将铜位置保存的索引插入随机列表
--    for _,v in pairs(tPos_Copper_Index) do
--        table.insert(tPosRandom,v)
--    end
--    --设置掩码
--    for i = 1,nNum_Copper do
--        local nTempData = tTempData[nTempdataFlag]
--        rwUserTempDataSet(nTempData,tBoxFlag.Copper,CONST_TEMP_DATA.Data1)
--        local nPosIndex = TreasureBox_LeiMingDaLu_RandomPos(tPosRandom)
--        rwUserTempDataSet(nTempData,nPosIndex,CONST_TEMP_DATA.Data2)
--        rwUserTempDataSet(nTempData,0,CONST_TEMP_DATA.Data3)
--        nTempdataFlag = nTempdataFlag + 1
--    end

--end

----是否重新随机宝箱
--function TreasureBox_LeiMingDaLu_TimeJudge()
--    --每天12点 24点重新随机
--    --上次随机时间
--    local nLastTime = rwTempDataGetValue(nTempData_DayJudgment, CONST_TEMP_DATA.RecordTime)
--    --当天12点和0点
--    local nTime_12 = os.time() + 12*3600 - os.date('%H',os.time())*3600 - os.date('%M',os.time())*60 - os.date('%S',os.time())
--    local nTime_0 = os.time() + 0*3600 - os.date('%H',os.time())*3600 - os.date('%M',os.time())*60 - os.date('%S',os.time())
--    local bFlag = false
--    if os.time() < nTime_12 then
--        bFlag = nTime_0 > nLastTime
--    else
--        bFlag = nTime_12 > nLastTime
--    end
--    return bFlag
--end

----初始化函数
--function TreasureBox_LeiMingDaLu_Init()
--    if TreasureBox_LeiMingDaLu_TimeJudge() then
--        if not rwTempDataIsExist(nTempData_DayJudgment) then
--            rwTempDataAdd(nTempData_DayJudgment)
--        end
--        rwTempDataReset(nTempData_DayJudgment)
--        --重置所有掩码
--        for k,v in pairs(tTempData) do
--            if not rwTempDataIsExist(v) then
--                rwTempDataAdd(v)
--            end
--            rwTempDataReset(v)
--        end
--        --随机宝箱
--        TreasureBox_LeiMingDaLu_RandomBox()
--    end
--    --刷出宝箱
--    for k,v in pairs(tTempData) do
--        local tBoxTypeFlag = rwTempDataGetValue(v, CONST_TEMP_DATA.Data1)
--        local nBoxType = (tBoxTypeFlag == tBoxFlag.Gold) and nBoxType_Gold or ((tBoxTypeFlag == tBoxFlag.Silver) and nBoxType_Silver or nBoxType_Copper)
--        local tPosIndex = rwTempDataGetValue(v, CONST_TEMP_DATA.Data2)
--        local sPos = tPos[tPosIndex]["sPos"]
--        local nRoation = tPos[tPosIndex]["nRot"]
--        local nGenId = tBox_GenId[k]
--        local bIsNotOpen = false
--        if rwTempDataGetValue(v, CONST_TEMP_DATA.Data3) == 0 then
--            bIsNotOpen = true
--        end
--        if bIsNotOpen and not rwHasGenEvent(nGenId) then
--            rwAddGenEvent(nGenId, sPos, nBoxType, nRoation)
--        end
--    end
--end

--rwtSceneLoad_Func[nMapId] = rwtSceneLoad_Func[nMapId] or {}
--table.insert(rwtSceneLoad_Func[nMapId],TreasureBox_LeiMingDaLu_Init)


--==============================模板配置======================
-------------------------数据定义-------------------------
local nMapId = 2001

----时间掩码
--local nTimeData = 1028

--每次刷新宝箱总数量
local nRefreshNum = 10

--------------------------npcgroup--------------
--金宝箱
local nBoxType_Gold = 40066
--银宝箱2
local nBoxType_Silver_2 = 40065
--铜宝箱2
local nBoxType_Copper_2 = 40064
--银宝箱1
local nBoxType_Silver_1 = 40063
--铜宝箱1
local nBoxType_Copper_1 = 40062

--------------------奖励id--------------
--金宝箱奖励
local nAwardId_Gold = 5000000
--银宝箱2奖励
local nAwardId_Silver_2 = 5000001
--银宝箱1奖励
local nAwardId_Silver_1 = 5000002
--铜宝箱2奖励
local nAwardId_Copper_2 = 5000003
--铜宝箱1奖励
local nAwardId_Copper_1 = 5000004
--------------------物品id----------------
--金宝箱钥匙
local nItem_Key_Gold = 310020

--银宝箱钥匙
local nItem_Key_Silver = 310010

------------------------对白id---------------
local nErrorDialog_Silver_1 = 11035
local nErrorDialog_Silver_2 = 11036
local nErrorDialog_Gold_1 = 11038
local nErrorDialog_Gold_2 = 11039

----------------------------片区宝箱数据配置-----------------------------
tAreaBoxInfo[nMapId] = {}
--tAreaBoxInfo[nMapId]["TimeData"] = nTimeData
tAreaBoxInfo[nMapId]["RefreshData"] = 1039
tAreaBoxInfo[nMapId]["LoopModeNum"] = 3

tAreaBoxInfo[nMapId]["RefreshNum"] = nRefreshNum

tAreaBoxInfo[nMapId]["TimeConfig"] = {}
tAreaBoxInfo[nMapId]["TimeConfig"][1] = {Hour = 0,Min = 0}
tAreaBoxInfo[nMapId]["TimeConfig"][2] = {Hour = 12,Min = 0}

--刷新方式1
tAreaBoxInfo[nMapId]["LoopMode1"] = {}
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType1"] = {}
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType1"]["TypeId"] = nBoxType_Gold
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType1"]["PosType"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType1"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType1"]["MaxNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType2"] = {}
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType2"]["TypeId"] = nBoxType_Silver_2
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType2"]["PosType"] = 2
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType2"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType2"]["MaxNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType3"] = {}
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType3"]["TypeId"] = nBoxType_Silver_1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType3"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType3"]["MaxNum"] = 2
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType4"] = {}
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType4"]["TypeId"] = nBoxType_Copper_2
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType4"]["PosType"] = 3
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType4"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType4"]["MaxNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType5"] = {}
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType5"]["TypeId"] = nBoxType_Copper_1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType5"]["FinalType"] = 1

--刷新方式2
tAreaBoxInfo[nMapId]["LoopMode2"] = {}
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType1"] = {}
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType1"]["TypeId"] = nBoxType_Gold
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType1"]["PosType"] = 1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType1"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType1"]["MaxNum"] = 2
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType2"] = {}
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType2"]["TypeId"] = nBoxType_Silver_2
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType2"]["PosType"] = 2
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType2"]["MinNum"] = 0
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType2"]["MaxNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType3"] = {}
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType3"]["TypeId"] = nBoxType_Silver_1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType3"]["MinNum"] = 2
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType3"]["MaxNum"] = 2
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType4"] = {}
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType4"]["TypeId"] = nBoxType_Copper_2
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType4"]["PosType"] = 3
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType4"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType4"]["MaxNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType5"] = {}
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType5"]["TypeId"] = nBoxType_Copper_1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType5"]["FinalType"] = 1

--刷新方式3
tAreaBoxInfo[nMapId]["LoopMode3"] = {}
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType1"] = {}
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType1"]["TypeId"] = nBoxType_Gold
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType1"]["PosType"] = 1
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType1"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType1"]["MaxNum"] = 2
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType2"] = {}
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType2"]["TypeId"] = nBoxType_Silver_2
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType2"]["PosType"] = 2
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType2"]["MinNum"] = 0
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType2"]["MaxNum"] = 0
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType3"] = {}
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType3"]["TypeId"] = nBoxType_Silver_1
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType3"]["MinNum"] = 2
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType3"]["MaxNum"] = 3
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType4"] = {}
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType4"]["TypeId"] = nBoxType_Copper_2
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType4"]["PosType"] = 3
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType4"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType4"]["MaxNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType5"] = {}
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType5"]["TypeId"] = nBoxType_Copper_1
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType5"]["FinalType"] = 1

--坐标信息
tAreaBoxInfo[nMapId]["PosInfo"] = {}
--金点
tAreaBoxInfo[nMapId]["PosInfo"][1] = {PosType = 1,sPos = "6.24,0.03,-91.36",nRot = 0}
tAreaBoxInfo[nMapId]["PosInfo"][2] = {PosType = 1,sPos = "64.80,-0.54,-36.14",nRot = 140}
tAreaBoxInfo[nMapId]["PosInfo"][3] = {PosType = 1,sPos = "-25.33,-1.23,45.54",nRot = 230}

--银点
tAreaBoxInfo[nMapId]["PosInfo"][4] = {PosType = 2,sPos = "-38.48,0.10,2.72",nRot = 0}
tAreaBoxInfo[nMapId]["PosInfo"][5] = {PosType = 2,sPos = "-89.64,-0.04,46.36",nRot = 225}
tAreaBoxInfo[nMapId]["PosInfo"][6] = {PosType = 2,sPos = "-32.75,-2.28,60.42",nRot = 225}
tAreaBoxInfo[nMapId]["PosInfo"][7] = {PosType = 2,sPos = "-50.34,-1.76,56.57",nRot = 128.66}
tAreaBoxInfo[nMapId]["PosInfo"][8] = {PosType = 2,sPos = "-76.99,0.10,-80.03",nRot = 45}
tAreaBoxInfo[nMapId]["PosInfo"][9] = {PosType = 2,sPos = "-21.19,0.10,-92.39",nRot = 0}
tAreaBoxInfo[nMapId]["PosInfo"][10] = {PosType = 2,sPos = "8.32,0.09,-190.91",nRot = 320}
tAreaBoxInfo[nMapId]["PosInfo"][11] = {PosType = 2,sPos = "11.89,-0.67,45.44",nRot = 270}
tAreaBoxInfo[nMapId]["PosInfo"][12] = {PosType = 2,sPos = "33.55,-0.06,-10.46",nRot = 270}
tAreaBoxInfo[nMapId]["PosInfo"][13] = {PosType = 2,sPos = "32.51,0.02,-211.07",nRot = 90}

--铜点
tAreaBoxInfo[nMapId]["PosInfo"][14] = {PosType = 3,sPos = "15.81,0.01,-173.91",nRot = 0}
tAreaBoxInfo[nMapId]["PosInfo"][15] = {PosType = 3,sPos = "-98.37,2.18,20.23",nRot = 180}
tAreaBoxInfo[nMapId]["PosInfo"][16] = {PosType = 3,sPos = "3.82,0.10,-51.70",nRot = 180}
tAreaBoxInfo[nMapId]["PosInfo"][17] = {PosType = 3,sPos = "67.70,0.01,-123.07",nRot = 0}
tAreaBoxInfo[nMapId]["PosInfo"][18] = {PosType = 3,sPos = "-102.58,0.10,-91.40",nRot = 100}
tAreaBoxInfo[nMapId]["PosInfo"][19] = {PosType = 3,sPos = "-60.19,0.07,-166.66",nRot = 330}
tAreaBoxInfo[nMapId]["PosInfo"][20] = {PosType = 3,sPos = "-6.47,0.12,-193.86",nRot = 0}
tAreaBoxInfo[nMapId]["PosInfo"][21] = {PosType = 3,sPos = "-12.96,0.10,19.28",nRot = 233.13}
tAreaBoxInfo[nMapId]["PosInfo"][22] = {PosType = 3,sPos = "-32.70,0.10,-60.01",nRot = 225}
tAreaBoxInfo[nMapId]["PosInfo"][23] = {PosType = 3,sPos = "31.54,0.01,-165.19",nRot = 270}
tAreaBoxInfo[nMapId]["PosInfo"][24] = {PosType = 3,sPos = "41.17,0.09,-74.10",nRot = 225}
tAreaBoxInfo[nMapId]["PosInfo"][25] = {PosType = 3,sPos = "-19.33,0.10,-28.38",nRot = 225}
tAreaBoxInfo[nMapId]["PosInfo"][26] = {PosType = 3,sPos = "-35.04,0.08,32.53",nRot = 180}
tAreaBoxInfo[nMapId]["PosInfo"][27] = {PosType = 3,sPos = "-1.89,0.10,-46.59",nRot = 225}
tAreaBoxInfo[nMapId]["PosInfo"][28] = {PosType = 3,sPos = "42.84,0.01,-127.78",nRot = 180}
tAreaBoxInfo[nMapId]["PosInfo"][29] = {PosType = 3,sPos = "-73.94,0.10,-158.29",nRot = 180}


--掩码记录宝箱信息
--data1:宝箱npcgrouptype
--data2:posIndex
--data3:isOpen
tAreaBoxInfo[nMapId]["BoxTempData"] = {}
tAreaBoxInfo[nMapId]["BoxTempData"][1] = 1029
tAreaBoxInfo[nMapId]["BoxTempData"][2] = 1030
tAreaBoxInfo[nMapId]["BoxTempData"][3] = 1031
tAreaBoxInfo[nMapId]["BoxTempData"][4] = 1032
tAreaBoxInfo[nMapId]["BoxTempData"][5] = 1033
tAreaBoxInfo[nMapId]["BoxTempData"][6] = 1034
tAreaBoxInfo[nMapId]["BoxTempData"][7] = 1035
tAreaBoxInfo[nMapId]["BoxTempData"][8] = 1036
tAreaBoxInfo[nMapId]["BoxTempData"][9] = 1037
tAreaBoxInfo[nMapId]["BoxTempData"][10] = 1038
--GenId，每个gen对应相同索引的掩码
tAreaBoxInfo[nMapId]["GenId"] = {}
tAreaBoxInfo[nMapId]["GenId"][1] = 2001804
tAreaBoxInfo[nMapId]["GenId"][2] = 2001805
tAreaBoxInfo[nMapId]["GenId"][3] = 2001806
tAreaBoxInfo[nMapId]["GenId"][4] = 2001807
tAreaBoxInfo[nMapId]["GenId"][5] = 2001808
tAreaBoxInfo[nMapId]["GenId"][6] = 2001809
tAreaBoxInfo[nMapId]["GenId"][7] = 2001810
tAreaBoxInfo[nMapId]["GenId"][8] = 2001811
tAreaBoxInfo[nMapId]["GenId"][9] = 2001812
tAreaBoxInfo[nMapId]["GenId"][10] = 2001813


--------------------------逻辑-------------------------------
--金宝箱
rwtNpcGroup[nBoxType_Gold] = rwtNpcGroup[nBoxType_Gold] or {}
rwtNpcGroup[nBoxType_Gold]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBoxType_Gold]["AreaBoxType"] = CONST_AREABOX_TYPE.Gold
rwtNpcGroup[nBoxType_Gold]["Awards"] = {}
--rwtNpcGroup[nBoxType_Gold]["Awards"]["AwardId"] = nAwardId_Gold
--rwtNpcGroup[nBoxType_Gold]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBoxType_Gold
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Gold  
rwtNpcGroup[nBoxType_Gold]["Awards"]["CostItems"] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["CostItems"][1]["id"] = nItem_Key_Gold
rwtNpcGroup[nBoxType_Gold]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[nBoxType_Gold]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[nBoxType_Gold]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = {nErrorDialog_Gold_1,nErrorDialog_Gold_2}

rwtNpcGroup[nBoxType_Gold]["Function"] = function(nNpcGroupType,nGenEventId)
    local nIndex
    for k,v in pairs(tAreaBoxInfo[nMapId]["GenId"]) do
        if v == nGenEventId then
            nIndex = k
        end
    end
    local nTempData = tAreaBoxInfo[nMapId]["BoxTempData"][nIndex]
    --开启宝箱后掩码设为1
    rwUserTempDataSet(nTempData,1,CONST_TEMP_DATA.Data3)
end

--银宝箱2
rwtNpcGroup[nBoxType_Silver_2] = rwtNpcGroup[nBoxType_Silver_2] or {}
rwtNpcGroup[nBoxType_Silver_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBoxType_Silver_2]["AreaBoxType"] = CONST_AREABOX_TYPE.Silver
rwtNpcGroup[nBoxType_Silver_2]["Awards"] = {}
--rwtNpcGroup[nBoxType_Silver_2]["Awards"]["AwardId"] = nAwardId_Silver_2
--rwtNpcGroup[nBoxType_Silver_2]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBoxType_Silver_2
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Silver_2  
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["CostItems"] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["CostItems"][1]["id"] = nItem_Key_Silver
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = {nErrorDialog_Silver_1,nErrorDialog_Silver_2}

rwtNpcGroup[nBoxType_Silver_2]["Function"] = function(nNpcGroupType,nGenEventId)
    local nIndex
    for k,v in pairs(tAreaBoxInfo[nMapId]["GenId"]) do
        if v == nGenEventId then
            nIndex = k
        end
    end
    local nTempData = tAreaBoxInfo[nMapId]["BoxTempData"][nIndex]
    --开启宝箱后掩码设为1
    rwUserTempDataSet(nTempData,1,CONST_TEMP_DATA.Data3)
end

--银宝箱1
rwtNpcGroup[nBoxType_Silver_1] = rwtNpcGroup[nBoxType_Silver_1] or {}
rwtNpcGroup[nBoxType_Silver_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBoxType_Silver_1]["AreaBoxType"] = CONST_AREABOX_TYPE.Silver
rwtNpcGroup[nBoxType_Silver_1]["Awards"] = {}
--rwtNpcGroup[nBoxType_Silver_1]["Awards"]["AwardId"] = nAwardId_Silver_1
--rwtNpcGroup[nBoxType_Silver_1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBoxType_Silver_1
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Silver_1 
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["CostItems"] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["CostItems"][1]["id"] = nItem_Key_Silver
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = {nErrorDialog_Silver_1,nErrorDialog_Silver_2}

rwtNpcGroup[nBoxType_Silver_1]["Function"] = function(nNpcGroupType,nGenEventId)
    local nIndex
    for k,v in pairs(tAreaBoxInfo[nMapId]["GenId"]) do
        if v == nGenEventId then
            nIndex = k
        end
    end
    local nTempData = tAreaBoxInfo[nMapId]["BoxTempData"][nIndex]
    --开启宝箱后掩码设为1
    rwUserTempDataSet(nTempData,1,CONST_TEMP_DATA.Data3)
end


--铜宝箱2
rwtNpcGroup[nBoxType_Copper_2] = rwtNpcGroup[nBoxType_Copper_2] or {}
rwtNpcGroup[nBoxType_Copper_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBoxType_Copper_2]["AreaBoxType"] = CONST_AREABOX_TYPE.Copper
rwtNpcGroup[nBoxType_Copper_2]["Awards"] = {}
--rwtNpcGroup[nBoxType_Copper_2]["Awards"]["AwardId"] = nAwardId_Copper_2
--rwtNpcGroup[nBoxType_Copper_2]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"] = {}
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBoxType_Copper_2
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Copper_2 
rwtNpcGroup[nBoxType_Copper_2]["Function"] = function(nNpcGroupType,nGenEventId)
    local nIndex
    for k,v in pairs(tAreaBoxInfo[nMapId]["GenId"]) do
        if v == nGenEventId then
            nIndex = k
        end
    end
    local nTempData = tAreaBoxInfo[nMapId]["BoxTempData"][nIndex]
    --开启宝箱后掩码设为1
    rwUserTempDataSet(nTempData,1,CONST_TEMP_DATA.Data3)
end

--铜宝箱1
rwtNpcGroup[nBoxType_Copper_1] = rwtNpcGroup[nBoxType_Copper_1] or {}
rwtNpcGroup[nBoxType_Copper_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBoxType_Copper_1]["AreaBoxType"] = CONST_AREABOX_TYPE.Copper
rwtNpcGroup[nBoxType_Copper_1]["Awards"] = {}
--rwtNpcGroup[nBoxType_Copper_1]["Awards"]["AwardId"] = nAwardId_Copper_1
--rwtNpcGroup[nBoxType_Copper_1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"] = {}
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBoxType_Copper_1
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Copper_1 
rwtNpcGroup[nBoxType_Copper_1]["Function"] = function(nNpcGroupType,nGenEventId)
    local nIndex
    for k,v in pairs(tAreaBoxInfo[nMapId]["GenId"]) do
        if v == nGenEventId then
            nIndex = k
        end
    end
    local nTempData = tAreaBoxInfo[nMapId]["BoxTempData"][nIndex]
    --开启宝箱后掩码设为1
    rwUserTempDataSet(nTempData,1,CONST_TEMP_DATA.Data3)
end
