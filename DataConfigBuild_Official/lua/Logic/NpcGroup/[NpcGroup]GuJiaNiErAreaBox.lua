--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--第二片区古加尼尔片区宝箱


--endregion


----***************************数据定义***************************----
----片区id
--local nMapId = 2003
----青铜宝箱(data1=1：未开启，data1=2：已开启)
----第一类（每天0~12点）
--local nQingTongBoxType_1 = 40084
--local tQingTongBoxGenId_Type_1 = {}
--tQingTongBoxGenId_Type_1[1] = 20030283
--tQingTongBoxGenId_Type_1[2] = 20030284
--tQingTongBoxGenId_Type_1[3] = 20030285
--tQingTongBoxGenId_Type_1[4] = 20030286
--tQingTongBoxGenId_Type_1[5] = 20030287
--tQingTongBoxGenId_Type_1[6] = 20030288
----第二类（每天12~18点）
--local nQingTongBoxType_2 = 40085
--local tQingTongBoxGenId_Type_2 = {}
--tQingTongBoxGenId_Type_2[1] = 20030289
--tQingTongBoxGenId_Type_2[2] = 20030290
--tQingTongBoxGenId_Type_2[3] = 20030291
--tQingTongBoxGenId_Type_2[4] = 20030292
--tQingTongBoxGenId_Type_2[5] = 20030293
----第三类（每天18~24点）
--local nQingTongBoxType_3 = 40086
--local tQingTongBoxGenId_Type_3 = {}
--tQingTongBoxGenId_Type_3[1] = 20030294
--tQingTongBoxGenId_Type_3[2] = 20030295
--tQingTongBoxGenId_Type_3[3] = 20030296
--tQingTongBoxGenId_Type_3[4] = 20030297
--tQingTongBoxGenId_Type_3[5] = 20030298

----白银宝箱
--local nBaiYinBoxType = 40087
--local tBaiYinBoxGenId_Type = {}
--tBaiYinBoxGenId_Type[1] = 20030299
--tBaiYinBoxGenId_Type[2] = 20030300
--tBaiYinBoxGenId_Type[3] = 20030301
--tBaiYinBoxGenId_Type[4] = 20030302
--tBaiYinBoxGenId_Type[5] = 20030303
--tBaiYinBoxGenId_Type[6] = 20030304
--tBaiYinBoxGenId_Type[7] = 20030305
--tBaiYinBoxGenId_Type[8] = 20030306
--tBaiYinBoxGenId_Type[9] = 20030307
--tBaiYinBoxGenId_Type[10] = 20030308

----黄金宝箱
--local nHuangJinBoxType = 40088
--local tHuangJinBoxGenId_Type = {}
--tHuangJinBoxGenId_Type[1] = 20030309
--tHuangJinBoxGenId_Type[2] = 20030310
--tHuangJinBoxGenId_Type[3] = 20030311
----黄金宝箱对应怪物
--local tMonsterTypeId = {}
--tMonsterTypeId[1] = 300133      --魔导箱守卫伊登
--tMonsterTypeId[2] = 300134      --魔导箱守卫哈伦
--tMonsterTypeId[3] = 300135      --魔导箱守卫科克

--local tMonsterGenId = {}
--tMonsterGenId[1] = 20030312      --魔导箱守卫伊登
--tMonsterGenId[2] = 20030313      --魔导箱守卫哈伦
--tMonsterGenId[3] = 20030314      --魔导箱守卫科克

--local tMonsterId = {}
--tMonsterId[1] = 1000261     --魔导箱守卫伊登
--tMonsterId[2] = 1000262     --魔导箱守卫哈伦
--tMonsterId[3] = 1000263     --魔导箱守卫科克

----黄金宝箱未开启时对应对白
--local tDialogs_HuangJin = {}
--tDialogs_HuangJin[1] = 10791
--tDialogs_HuangJin[2] = 10792
--tDialogs_HuangJin[3] = 10793

----NPCid
--local tNpc_Monster = {}
--tNpc_Monster[1] = 3298  --魔导箱守卫伊登
--tNpc_Monster[2] = 3299  --魔导箱守卫哈伦
--tNpc_Monster[3] = 3300  --魔导箱守卫科克

----宝箱掩码
--local nTempData_DayJudgment = 1048         --隔天掩码
----青铜类宝箱全部刷新不随机，data1表示是否开启（1：未开启，2：开启）
--local tTreasureBox_GuJiaNiEr_TempData = {}
--tTreasureBox_GuJiaNiEr_TempData["QingTong1"] = {} --第一类青铜宝箱
--tTreasureBox_GuJiaNiEr_TempData["QingTong1"][tQingTongBoxGenId_Type_1[1]] = 1049
--tTreasureBox_GuJiaNiEr_TempData["QingTong1"][tQingTongBoxGenId_Type_1[2]] = 1050
--tTreasureBox_GuJiaNiEr_TempData["QingTong1"][tQingTongBoxGenId_Type_1[3]] = 1051
--tTreasureBox_GuJiaNiEr_TempData["QingTong1"][tQingTongBoxGenId_Type_1[4]] = 1052
--tTreasureBox_GuJiaNiEr_TempData["QingTong1"][tQingTongBoxGenId_Type_1[5]] = 1053
--tTreasureBox_GuJiaNiEr_TempData["QingTong1"][tQingTongBoxGenId_Type_1[6]] = 1054

--tTreasureBox_GuJiaNiEr_TempData["QingTong2"] = {} --第二类青铜宝箱，data1表示是否开启（1：未开启，2：开启），data2存储要刷新的genid
--tTreasureBox_GuJiaNiEr_TempData["QingTong2"][1] = 1055

--tTreasureBox_GuJiaNiEr_TempData["QingTong3"] = {} --第三类青铜宝箱，data1表示是否开启（1：未开启，2：开启），data2存储要刷新的genid
--tTreasureBox_GuJiaNiEr_TempData["QingTong3"][1] = 1056
--tTreasureBox_GuJiaNiEr_TempData["QingTong3"][2] = 1057
--tTreasureBox_GuJiaNiEr_TempData["QingTong3"][3] = 1058

----白银宝箱随机刷新，data1表示是否开启（1：未开启，2：开启），data2存储要刷新的genid
--tTreasureBox_GuJiaNiEr_TempData["BaiYin"] = {} --白银宝箱
--tTreasureBox_GuJiaNiEr_TempData["BaiYin"][1] = 1059
--tTreasureBox_GuJiaNiEr_TempData["BaiYin"][2] = 1060
--tTreasureBox_GuJiaNiEr_TempData["BaiYin"][3] = 1061

----黄金宝箱随机刷新，data1表示是否开启（1：未开启，2：开启），data2存储要刷新的genid
--tTreasureBox_GuJiaNiEr_TempData["HuangJin"] = {} --黄金宝箱
--tTreasureBox_GuJiaNiEr_TempData["HuangJin"][1] = 1062

----奖励id
----青铜1奖励
--local nQingTong1_BaseAwardId = 5000110
--local tAwardId_QingTong1 = {}
--for i = 1,100 do
--    tAwardId_QingTong1[i] = nQingTong1_BaseAwardId + i -1
--end
--local nAwardId_QingTong2 = 5000210         --青铜2奖励
--local nAwardId_QingTong3 = 5000211         --青铜3奖励
--local nAwardId_BaiYin = 5000212        --白银奖励
--local nAwardId_HuangJin = 5000213         --黄金奖励
----物品
--local nItem_Key_BaiYin = 7000173          --白银宝箱镶金魔导箱之钥(和第一片区钥匙一样)

----***************************逻辑***************************----
----青铜1类
--rwtNpcGroup[nQingTongBoxType_1] = rwtNpcGroup[nQingTongBoxType_1] or {}
--rwtNpcGroup[nQingTongBoxType_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nQingTongBoxType_1]["Awards"] = {}
--rwtNpcGroup[nQingTongBoxType_1]["Awards"]["ByLevel"] = 1
--rwtNpcGroup[nQingTongBoxType_1]["Awards"]["AwardId"] = tAwardId_QingTong1
--rwtNpcGroup[nQingTongBoxType_1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtNpcGroup[nQingTongBoxType_1]["ChkFunc"] = function(nGenEventId)
--    local nOpenFlag = rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["QingTong1"][nGenEventId],CONST_TEMP_DATA.Data1)
--    if nOpenFlag == 2 then
--        rwSendSystemMessage("该类型魔导箱今日开启数量已经到达上限。",2)
--        return false
--    elseif  nOpenFlag == 1 then
--        rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["QingTong1"][nGenEventId],2,CONST_TEMP_DATA.Data1)
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
--    for i = 1,#tTreasureBox_GuJiaNiEr_TempData["QingTong2"] do
--        if rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["QingTong2"][i],CONST_TEMP_DATA.Data2) == nGenEventId then
--            nTempData_Flag = i
--            break
--        end
--    end
--    if not nTempData_Flag then
--        rwSendSystemMessage("钥匙孔被铁锈腐蚀，无法开启。")
--        return false
--    end
--    local nOpenFlag = rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["QingTong2"][nTempData_Flag],CONST_TEMP_DATA.Data1)
--    if nOpenFlag == 2 then
--        rwSendSystemMessage("该类型魔导箱今日开启数量已经到达上限。")
--        return false
--    elseif  nOpenFlag == 1 then
--        rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["QingTong2"][nTempData_Flag],2,CONST_TEMP_DATA.Data1)
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
--    for i = 1,#tTreasureBox_GuJiaNiEr_TempData["QingTong3"] do
--        if rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["QingTong3"][i],CONST_TEMP_DATA.Data2) == nGenEventId then
--            nTempData_Flag = i
--            break
--        end
--    end
--    if not nTempData_Flag then
--        rwSendSystemMessage("钥匙孔被铁锈腐蚀，无法开启。")
--        return false
--    end
--    local nOpenFlag = rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["QingTong3"][nTempData_Flag],CONST_TEMP_DATA.Data1)
--    if nOpenFlag == 2 then
--        rwSendSystemMessage("该类型魔导箱今日开启数量已经到达上限。")
--        return false
--    elseif  nOpenFlag == 1 then
--        rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["QingTong3"][nTempData_Flag],2,CONST_TEMP_DATA.Data1)
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
--    for i = 1,#tTreasureBox_GuJiaNiEr_TempData["BaiYin"] do
--        if rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["BaiYin"][i],CONST_TEMP_DATA.Data2) == nGenEventId then
--            nTempData_Flag = i
--            break
--        end
--    end
--    if not nTempData_Flag then
--        rwSendSystemMessage("钥匙孔被铁锈腐蚀，无法开启。")
--        return false
--    end
--    local nOpenFlag = rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["BaiYin"][nTempData_Flag],CONST_TEMP_DATA.Data1)
--    if nOpenFlag == 2 then
--        rwSendSystemMessage("该类型魔导箱今日开启数量已经到达上限。")
--        return false
--    elseif  nOpenFlag == 1 then
--        if rwUserGetItemCount(nItem_Key_BaiYin) <= 0 then
--            rwSendSystemMessage("对不起，你没有打开镶金魔导箱的钥匙。")
--            return false
--        end
--        rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["BaiYin"][nTempData_Flag],2,CONST_TEMP_DATA.Data1)
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
--    for i = 1,#tTreasureBox_GuJiaNiEr_TempData["HuangJin"] do
--        if rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["HuangJin"][i],CONST_TEMP_DATA.Data2) == nGenEventId then
--            nTempData_Flag = i
--            break
--        end
--    end
--    if not nTempData_Flag then
--        rwSendSystemMessage("钥匙孔被铁锈腐蚀，无法开启。")
--        return false
--    end
--    local nOpenFlag = rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["HuangJin"][nTempData_Flag],CONST_TEMP_DATA.Data1)
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
--        rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["HuangJin"][nTempData_Flag],2,CONST_TEMP_DATA.Data1)
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
--function TreasureBox_GuJiaNiEr_QingTong_1_Init()
--    for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["QingTong1"]) do
--        if rwTempDataGetValue(v, CONST_TEMP_DATA.Data1) ~= 2 then
--            rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["QingTong1"][k],1,CONST_TEMP_DATA.Data1)
--            if not rwHasGenEvent(k) then
--                rwAddGenEvent(k)
--            end
--        end
--    end
--end

----刷出青铜宝箱2
--function TreasureBox_GuJiaNiEr_QingTong_2_Init()
--    --选择1个进行刷新
--    local tResultGen = {}
--    tResultGen = TreasureBox_GuJiaNiEr_MRandomN(tQingTongBoxGenId_Type_2,1)
--    local nFlag = 1
--    for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["QingTong2"]) do
--        if rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["QingTong2"][k], CONST_TEMP_DATA.Data2) == 0 then
--            --rwPrintErrorLog("Flag为："..nFlag)
--            --rwPrintErrorLog("K为："..k)
--            --rwPrintErrorLog("青铜宝箱2要刷出的genid"..tResultGen[nFlag])
--            rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["QingTong2"][k],1,CONST_TEMP_DATA.Data1)
--            rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["QingTong2"][k],tResultGen[nFlag],CONST_TEMP_DATA.Data2)
--            nFlag = nFlag + 1
--        end
--    end
--    for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["QingTong2"]) do
--        if rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["QingTong2"][k], CONST_TEMP_DATA.Data1) == 1 then
--            local nGenId = rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["QingTong2"][k], CONST_TEMP_DATA.Data2)
--            if nGenId ~= 0 and not(rwHasGenEvent(nGenId)) then
--                rwAddGenEvent(nGenId)
--            end
--        end
--    end
--end

----刷出青铜宝箱3
--function TreasureBox_GuJiaNiEr_QingTong_3_Init()
--    --选择3个进行刷新
--    local tResultGen = {}
--    tResultGen = TreasureBox_GuJiaNiEr_MRandomN(tQingTongBoxGenId_Type_3,3)
--    local nFlag = 1
--    for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["QingTong3"]) do
--        if rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["QingTong3"][k], CONST_TEMP_DATA.Data2) == 0 then
--            --rwPrintErrorLog("Flag为："..nFlag)
--            --rwPrintErrorLog("K为："..k)
--            --rwPrintErrorLog("青铜宝箱3要刷出的genid"..tResultGen[nFlag])
--            rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["QingTong3"][k],1,CONST_TEMP_DATA.Data1)
--            rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["QingTong3"][k],tResultGen[nFlag],CONST_TEMP_DATA.Data2)
--            nFlag = nFlag + 1
--        end
--    end
--    for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["QingTong3"]) do
--        if rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["QingTong3"][k], CONST_TEMP_DATA.Data1) == 1 then
--            local nGenId = rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["QingTong3"][k], CONST_TEMP_DATA.Data2)
--            if nGenId ~= 0 and not(rwHasGenEvent(nGenId)) then
--                rwAddGenEvent(nGenId)
--            end
--        end
--    end
--end

----刷出白银宝箱
--function TreasureBox_GuJiaNiEr_BaiYinInit()
--    --选择3个进行刷新
--    local tResultGen = {}
--    tResultGen = TreasureBox_GuJiaNiEr_MRandomN(tBaiYinBoxGenId_Type,3)
--    local nFlag = 1
--    for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["BaiYin"]) do
--        if rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["BaiYin"][k], CONST_TEMP_DATA.Data2) == 0 then
--            --rwPrintErrorLog("Flag为："..nFlag)
--            --rwPrintErrorLog("K为："..k)
--            --rwPrintErrorLog("白银宝箱要刷出的genid"..tResultGen[nFlag])
--            rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["BaiYin"][k],1,CONST_TEMP_DATA.Data1)
--            rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["BaiYin"][k],tResultGen[nFlag],CONST_TEMP_DATA.Data2)
--            nFlag = nFlag + 1
--        end
--    end
--    for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["BaiYin"]) do
--        if rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["BaiYin"][k], CONST_TEMP_DATA.Data1) == 1 then
--            local nGenId = rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["BaiYin"][k], CONST_TEMP_DATA.Data2)
--            if nGenId ~= 0 and not(rwHasGenEvent(nGenId)) then
--                rwAddGenEvent(nGenId)
--            end
--        end
--    end
--end

----刷出黄金宝箱
--function TreasureBox_GuJiaNiEr_HuangJinInit()
--    --选择1个进行刷新
--    local tResultGen = {}
--    tResultGen = TreasureBox_GuJiaNiEr_MRandomN(tHuangJinBoxGenId_Type,1)
--    local nFlag = 1
--    for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["HuangJin"]) do
--        if rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["HuangJin"][k], CONST_TEMP_DATA.Data2) == 0 then
--            --rwPrintErrorLog("Flag为："..nFlag)
--            --rwPrintErrorLog("K为："..k)
--            --rwPrintErrorLog("黄金宝箱要刷出的genid"..tResultGen[nFlag])
--            rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["HuangJin"][k],1,CONST_TEMP_DATA.Data1)
--            rwUserTempDataSet(tTreasureBox_GuJiaNiEr_TempData["HuangJin"][k],tResultGen[nFlag],CONST_TEMP_DATA.Data2)
--            nFlag = nFlag + 1
--        end
--    end
--    for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["HuangJin"]) do
--        if rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["HuangJin"][k], CONST_TEMP_DATA.Data1) == 1 then
--            local nGenId = rwTempDataGetValue(tTreasureBox_GuJiaNiEr_TempData["HuangJin"][k], CONST_TEMP_DATA.Data2)
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
--function TreasureBox_GuJiaNiEr_MRandomN(tTable,n)
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
--function TreasureBox_GuJiaNiEr_Init()
--    if rwTempDataDayJudgment(nTempData_DayJudgment) then
--        --重置所有掩码
--        for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["QingTong1"]) do
--            if not rwTempDataIsExist(v) then
--                rwTempDataAdd(v)
--            end
--            rwTempDataReset(v)
--        end
--        for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["QingTong2"]) do
--            if not rwTempDataIsExist(v) then
--                rwTempDataAdd(v)
--            end
--            rwTempDataReset(v)
--        end
--        for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["QingTong3"]) do
--            if not rwTempDataIsExist(v) then
--                rwTempDataAdd(v)
--            end
--            rwTempDataReset(v)
--        end
--        for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["BaiYin"]) do
--            if not rwTempDataIsExist(v) then
--                rwTempDataAdd(v)
--            end
--            rwTempDataReset(v)
--        end
--        for k,v in pairs(tTreasureBox_GuJiaNiEr_TempData["HuangJin"]) do
--            if not rwTempDataIsExist(v) then
--                rwTempDataAdd(v)
--            end
--            rwTempDataReset(v)
--        end
--    end
--        TreasureBox_GuJiaNiEr_QingTong_1_Init()
--        TreasureBox_GuJiaNiEr_QingTong_2_Init()
--        TreasureBox_GuJiaNiEr_QingTong_3_Init()

--        --刷新白银宝箱
--        TreasureBox_GuJiaNiEr_BaiYinInit()
--        --刷新黄金宝箱
--        TreasureBox_GuJiaNiEr_HuangJinInit()
--end
--rwtSceneLoad_Func[nMapId] = rwtSceneLoad_Func[nMapId] or {}
--table.insert(rwtSceneLoad_Func[nMapId],TreasureBox_GuJiaNiEr_Init)

------测试函数：刷新所有宝箱及怪物
----function TreasureBox_GuJiaNiEr_Test()
----    for _,v in pairs(tQingTongBoxGenId_Type_1) do
----        if not rwHasGenEvent(v) then
----            rwAddGenEvent(v)
----        end
----    end
----    for _,v in pairs(tQingTongBoxGenId_Type_2) do
----        if not rwHasGenEvent(v) then
----            rwAddGenEvent(v)
----        end
----    end
----    for _,v in pairs(tQingTongBoxGenId_Type_3) do
----        if not rwHasGenEvent(v) then
----            rwAddGenEvent(v)
----        end
----    end
----    for _,v in pairs(tBaiYinBoxGenId_Type) do
----        if not rwHasGenEvent(v) then
----            rwAddGenEvent(v)
----        end
----    end
----    for _,v in pairs(tHuangJinBoxGenId_Type) do
----        if not rwHasGenEvent(v) then
----            rwAddGenEvent(v)
----        end
----    end
----    for _,v in pairs(tMonsterGenId) do
----        if not rwHasGenEvent(v) then
----            rwAddGenEvent(v)
----        end
----    end
----end

------掩码设置测试函数
----function TreasureBox_GuJiaNiEr_TempDataTest()
----   if SetTempData(nTempData_DayJudgment,8,1) then
----        --rwPrintErrorLog("掩码设置成功")
----    else 
----        --rwPrintErrorLog("掩码设置失败")
----   end
----end

------概率测试
----function TreasureBox_GuJiaNiEr_GaiLvTest()
----   local tResultGen = TreasureBox_GuJiaNiEr_MRandomN(tQingTongBoxGenId_Type_3,3)
----   for k,v in pairs(tResultGen) do

----	    rwPrintErrorLog("第"..k.."个是："..v)
----    end
----end

----==============================宝箱重做======================
---------------------------数据定义-------------------------
----地图id
--local nMapId = 2003

----第一片区最后一个主线任务id（任务没完成不开放第二片区宝箱）
--local nLastAreaFinalTask = 10222

----时间掩码
--local nTempData_DayJudgment = 1048
----宝箱掩码（共10个宝箱，10个掩码，data1表示宝箱类型，data2表示坐标索引，data3是否开启）
--local tTempData = {}
--tTempData[1] = 1049
--tTempData[2] = 1050
--tTempData[3] = 1051
--tTempData[4] = 1052
--tTempData[5] = 1053
--tTempData[6] = 1054
--tTempData[7] = 1055
--tTempData[8] = 1056
--tTempData[9] = 1057
--tTempData[10] = 1058

----genid(每个genid对应一个掩码)
--local tBox_GenId = {}
--tBox_GenId[1] = 20030283
--tBox_GenId[2] = 20030284
--tBox_GenId[3] = 20030285
--tBox_GenId[4] = 20030286
--tBox_GenId[5] = 20030287
--tBox_GenId[6] = 20030288
--tBox_GenId[7] = 20030289
--tBox_GenId[8] = 20030290
--tBox_GenId[9] = 20030291
--tBox_GenId[10] = 20030292

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
--local nBoxType_Gold = 40088
----银宝箱
--local nBoxType_Silver = 40087
----铜宝箱
--local nBoxType_Copper = 40086

----------------------------坐标-----------------
--local tPos = {}
----金点
--tPos[1] = {flag = "Gold",sPos = "-51.73,-0.01,17.93",nRot = 60}
--tPos[2] = {flag = "Gold",sPos = "-8.496,0.1,-86.373",nRot = 270}
--tPos[3] = {flag = "Gold",sPos = "-251.89,0.13,-229.72",nRot = 40}

----银点
--tPos[4] = {flag = "Silver",sPos = "-7.99,-0.01,-5.08",nRot = 260}
--tPos[5] = {flag = "Silver",sPos = "17.77,-0.01,-52.22",nRot = 0}
--tPos[6] = {flag = "Silver",sPos = "-169.12,0.10,-5.69",nRot = 0}
--tPos[7] = {flag = "Silver",sPos = "-152.86,0.15,-16.34",nRot = 150}
--tPos[8] = {flag = "Silver",sPos = "-133.43,2.75,-142.42",nRot = 180}
--tPos[9] = {flag = "Silver",sPos = "-191.53,0.10,-30.70",nRot = 20}
--tPos[10] = {flag = "Silver",sPos = "-202.01,2.08,-289.46",nRot = 140}
--tPos[11] = {flag = "Silver",sPos = "-219.41,0.09,-237.02",nRot = 0}
--tPos[12] = {flag = "Silver",sPos = "-19.87,0.14,-180.94",nRot = 180}
--tPos[13] = {flag = "Silver",sPos = "-63.67,0.50,-269.32",nRot = 300}

----铜点
--tPos[14] = {flag = "Copper",sPos = "16.82,-0.01,-27.72", nRot = 90.00}
--tPos[15] = {flag = "Copper",sPos = "-89.45,0.10,-27.41", nRot = 300.00}
--tPos[16] = {flag = "Copper",sPos = "-220.03,0.10,-167.41", nRot = 0.00}
--tPos[17] = {flag = "Copper",sPos = "-205.69,0.09,-100.55", nRot = 0.00}
--tPos[18] = {flag = "Copper",sPos = "-216.957,0.09,-265.884", nRot = 80.00}
--tPos[19] = {flag = "Copper",sPos = "-91.81,0.14,-190.84", nRot = 140.00}
--tPos[20] = {flag = "Copper",sPos = "17.93,-0.01,-3.58", nRot = 90.00}
--tPos[21] = {flag = "Copper",sPos = "-136.62,0.15,-13.61", nRot = 60.00}
--tPos[22] = {flag = "Copper",sPos = "-253.87,0.08,-115.10", nRot = 90.00}
--tPos[23] = {flag = "Copper",sPos = "-180.31,0.13,-267.31", nRot = 230.00}
--tPos[24] = {flag = "Copper",sPos = "-101.27,0.14,-239.38", nRot = 0.00}
--tPos[25] = {flag = "Copper",sPos = "-37.88,-0.01,-1.81", nRot = 30.00}
--tPos[26] = {flag = "Copper",sPos = "-145.91,0.15,-63.33", nRot = 120.00}
--tPos[27] = {flag = "Copper",sPos = "-160.63,0.10,-116.15", nRot = 35.00}
--tPos[28] = {flag = "Copper",sPos = "-179.64,0.08,-233.02", nRot = 120.00}
--tPos[29] = {flag = "Copper",sPos = "-13.78,0.08,-246.22", nRot = 60}

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
--function TreasureBox_GuJiaNiEr_RandomChance(nRandom, nTimes)
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
--function TreasureBox_GuJiaNiEr_RandomPos(tPosIndex)
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
--function TreasureBox_GuJiaNiEr_RandomBox()
--    --剩余未随机的数量
--    local nRestNum = nAllBoxNum
--    --先随机金宝箱数量
--    local nNum_Gold = TreasureBox_GuJiaNiEr_RandomChance(nRandom_Gold, nRestNum)
--    nNum_Gold = (nNum_Gold > nMaxNum_Gold) and nMaxNum_Gold or nNum_Gold

--    nRestNum = nRestNum - nNum_Gold         --更新剩余数量

--    --随机银宝箱数量
--    local nNum_Silver = TreasureBox_GuJiaNiEr_RandomChance(nRandom_Silver, nRestNum)

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
--        local nPosIndex = TreasureBox_GuJiaNiEr_RandomPos(tPosRandom)
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
--        local nPosIndex = TreasureBox_GuJiaNiEr_RandomPos(tPosRandom)
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
--        local nPosIndex = TreasureBox_GuJiaNiEr_RandomPos(tPosRandom)
--        rwUserTempDataSet(nTempData,nPosIndex,CONST_TEMP_DATA.Data2)
--        rwUserTempDataSet(nTempData,0,CONST_TEMP_DATA.Data3)
--        nTempdataFlag = nTempdataFlag + 1
--    end

--end

----是否重新随机宝箱
--function TreasureBox_GuJiaNiEr_TimeJudge()
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
--function TreasureBox_GuJiaNiEr_Init()
--    if not rwTaskIsSuccess(nLastAreaFinalTask) then
--        return
--    end
--    if TreasureBox_GuJiaNiEr_TimeJudge() then
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
--        TreasureBox_GuJiaNiEr_RandomBox()
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
--table.insert(rwtSceneLoad_Func[nMapId],TreasureBox_GuJiaNiEr_Init)




--==============================模板配置======================
-------------------------数据定义-------------------------
local nMapId = 2003

--第一片区最后的任务id
local nPreAreaLastTaskId = 10542

----时间掩码
--local nTimeData = 1048

--每次刷新宝箱总数量
local nRefreshNum = 10

--------------------------npcgroup--------------
--金宝箱
local nBoxType_Gold = 40088
--银宝箱2
local nBoxType_Silver_2 = 40087
--铜宝箱2
local nBoxType_Copper_2 = 40086
--银宝箱1
local nBoxType_Silver_1 = 40085
--铜宝箱1
local nBoxType_Copper_1 = 40084

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
--前置任务id
tAreaBoxInfo[nMapId]["PreTaskId"] = nPreAreaLastTaskId

--tAreaBoxInfo[nMapId]["TimeData"] = nTimeData
tAreaBoxInfo[nMapId]["RefreshData"] = 1059
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
tAreaBoxInfo[nMapId]["PosInfo"][1] = {PosType = 1,sPos = "-51.73,-0.01,17.93",nRot = 60}
tAreaBoxInfo[nMapId]["PosInfo"][2] = {PosType = 1,sPos = "-8.496,0.1,-86.373",nRot = 270}
tAreaBoxInfo[nMapId]["PosInfo"][3] = {PosType = 1,sPos = "-251.89,0.13,-229.72",nRot = 40}
                                         
--银点
tAreaBoxInfo[nMapId]["PosInfo"][4] = {PosType = 2,sPos = "-7.99,-0.01,-5.08",nRot = 260}
tAreaBoxInfo[nMapId]["PosInfo"][5] = {PosType = 2,sPos = "21.12,-0.01,-52.29",nRot = 315}
tAreaBoxInfo[nMapId]["PosInfo"][6] = {PosType = 2,sPos = "-169.12,0.10,-5.69",nRot = 0}
tAreaBoxInfo[nMapId]["PosInfo"][7] = {PosType = 2,sPos = "-134.50,0.10,-1.12",nRot = 180}
tAreaBoxInfo[nMapId]["PosInfo"][8] = {PosType = 2,sPos = "-133.43,2.75,-142.42",nRot = 180}
tAreaBoxInfo[nMapId]["PosInfo"][9] = {PosType = 2,sPos = "-191.53,0.10,-30.70",nRot = 20}
tAreaBoxInfo[nMapId]["PosInfo"][10] = {PosType = 2,sPos = "-202.01,2.08,-289.46",nRot = 140}
tAreaBoxInfo[nMapId]["PosInfo"][11] = {PosType = 2,sPos = "-219.41,0.09,-237.02",nRot = 0}
tAreaBoxInfo[nMapId]["PosInfo"][12] = {PosType = 2,sPos = "-19.87,0.14,-180.94",nRot = 180}
tAreaBoxInfo[nMapId]["PosInfo"][13] = {PosType = 2,sPos = "-63.67,0.50,-269.32",nRot = 300}

--铜点
tAreaBoxInfo[nMapId]["PosInfo"][14] = {PosType = 3,sPos = "16.82,-0.01,-27.72", nRot = 90.00}
tAreaBoxInfo[nMapId]["PosInfo"][15] = {PosType = 3,sPos = "-89.45,0.10,-27.41", nRot = 300.00}
tAreaBoxInfo[nMapId]["PosInfo"][16] = {PosType = 3,sPos = "-220.03,0.10,-167.41", nRot = 0.00}
tAreaBoxInfo[nMapId]["PosInfo"][17] = {PosType = 3,sPos = "-205.69,0.09,-100.55", nRot = 0.00}
tAreaBoxInfo[nMapId]["PosInfo"][18] = {PosType = 3,sPos = "-216.957,0.09,-265.884", nRot = 80.00}
tAreaBoxInfo[nMapId]["PosInfo"][19] = {PosType = 3,sPos = "-91.81,0.14,-190.84", nRot = 140.00}
tAreaBoxInfo[nMapId]["PosInfo"][20] = {PosType = 3,sPos = "17.93,-0.01,-3.58", nRot = 90.00}
tAreaBoxInfo[nMapId]["PosInfo"][21] = {PosType = 3,sPos = "-136.62,0.15,-13.61", nRot = 60.00}
tAreaBoxInfo[nMapId]["PosInfo"][22] = {PosType = 3,sPos = "-253.87,0.08,-115.10", nRot = 90.00}
tAreaBoxInfo[nMapId]["PosInfo"][23] = {PosType = 3,sPos = "-180.31,0.13,-267.31", nRot = 230.00}
tAreaBoxInfo[nMapId]["PosInfo"][24] = {PosType = 3,sPos = "-101.27,0.14,-239.38", nRot = 0.00}
tAreaBoxInfo[nMapId]["PosInfo"][25] = {PosType = 3,sPos = "-37.88,-0.01,-1.81", nRot = 30.00}
tAreaBoxInfo[nMapId]["PosInfo"][26] = {PosType = 3,sPos = "-145.91,0.15,-63.33", nRot = 120.00}
tAreaBoxInfo[nMapId]["PosInfo"][27] = {PosType = 3,sPos = "-160.63,0.10,-116.15", nRot = 35.00}
tAreaBoxInfo[nMapId]["PosInfo"][28] = {PosType = 3,sPos = "-179.64,0.08,-233.02", nRot = 120.00}
tAreaBoxInfo[nMapId]["PosInfo"][29] = {PosType = 3,sPos = "-13.78,0.08,-246.22", nRot = 60}


--掩码记录宝箱信息
--data1:宝箱npcgrouptype
--data2:posIndex
--data3:isOpen
tAreaBoxInfo[nMapId]["BoxTempData"] = {}
tAreaBoxInfo[nMapId]["BoxTempData"][1] = 1049
tAreaBoxInfo[nMapId]["BoxTempData"][2] = 1050
tAreaBoxInfo[nMapId]["BoxTempData"][3] = 1051
tAreaBoxInfo[nMapId]["BoxTempData"][4] = 1052
tAreaBoxInfo[nMapId]["BoxTempData"][5] = 1053
tAreaBoxInfo[nMapId]["BoxTempData"][6] = 1054
tAreaBoxInfo[nMapId]["BoxTempData"][7] = 1055
tAreaBoxInfo[nMapId]["BoxTempData"][8] = 1056
tAreaBoxInfo[nMapId]["BoxTempData"][9] = 1057
tAreaBoxInfo[nMapId]["BoxTempData"][10] = 1058
--GenId，每个gen对应相同索引的掩码
tAreaBoxInfo[nMapId]["GenId"] = {}
tAreaBoxInfo[nMapId]["GenId"][1] = 20030283
tAreaBoxInfo[nMapId]["GenId"][2] = 20030284
tAreaBoxInfo[nMapId]["GenId"][3] = 20030285
tAreaBoxInfo[nMapId]["GenId"][4] = 20030286
tAreaBoxInfo[nMapId]["GenId"][5] = 20030287
tAreaBoxInfo[nMapId]["GenId"][6] = 20030288
tAreaBoxInfo[nMapId]["GenId"][7] = 20030289
tAreaBoxInfo[nMapId]["GenId"][8] = 20030290
tAreaBoxInfo[nMapId]["GenId"][9] = 20030291
tAreaBoxInfo[nMapId]["GenId"][10] = 20030292


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
