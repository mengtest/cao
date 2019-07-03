--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--宝箱玩法测试
--

--endregion


--***************************数据定义***************************----
--测试地图
local nMapId = 9001
--进入进入地图需要创建的宝箱及怪物列表
local tTreasureBoxTestGenId = {}

------NPC---------
--宝箱类型1（开启后获得钥匙）
local nTreasureBox_1 = 40008
local nTreasureBox_1_GenId = 9001800   
table.insert(tTreasureBoxTestGenId,nTreasureBox_1_GenId)

--宝箱类型2（50%战斗50%金币）
local nTreasureBox_2 = 40009
local nTreasureBox_2_GenId = 9001801
table.insert(tTreasureBoxTestGenId,nTreasureBox_2_GenId)

--宝箱类型3（开启后获得金币）
local nTreasureBox_3 = 40010
--local nTreasureBox_3_GenId = 9001802
--table.insert(tTreasureBoxTestGenId,nTreasureBox_3_GenId)

--宝箱类型4（选择战斗）
local nTreasureBox_4 = 40011
local nTreasureBox_4_GenId = 9001803
table.insert(tTreasureBoxTestGenId,nTreasureBox_4_GenId)
--宝箱类型5（钥匙开启）
local nTreasureBox_5 = 40012
local nTreasureBox_5_GenId = 9001804
table.insert(tTreasureBoxTestGenId,nTreasureBox_5_GenId)

--玩法6（击杀后刷出宝箱,开钥匙）类型1
local nTreasureBox_6_GenId = 9001805

--玩法7（NPC对白后刷出，开钥匙）类型1
local nTreasureBox_7_GenId = 9001806

--玩法8（3个点随机刷出，开钥匙）类型1
local tTreasureBox_8_GenId = {}
tTreasureBox_8_GenId[1] = 9001811
tTreasureBox_8_GenId[2] = 9001812
tTreasureBox_8_GenId[3] = 9001813


--玩法9（固定时间进入刷出且每小时一次，开金币）类型9
local nTreasureBox_9 = 40013
local nTreasureBox_9_GenId = 9001808

--玩法10（固定时间进入刷出无限制次数，开金币）类型3
local nTreasureBox_10_GenId = 9001809

--测试NPC(组)
local nNpcId = 20056
local nNpc_GenId = 9001815
table.insert(tTreasureBoxTestGenId,nNpc_GenId)

--宝箱玩法测试NPC
local nNpc = 3039

--怪物-------
--宝箱类型2对应的怪物
local nMonster_2 = 300061
local nMonster_GenId_2 = 9001820

--宝箱类型4对应的怪物
local nMonster_4 = 300062
local nMonster_GenId_4 = 9001821
table.insert(tTreasureBoxTestGenId,nMonster_GenId_4)

--玩法6对应的怪物
local nMonster_6 = 300063
local nMonster_GenId_6 = 9001822
table.insert(tTreasureBoxTestGenId,nMonster_GenId_6)

--------对白ID
--钥匙宝箱对白
local nDialog_1 = 10175
--NPC对白
local nDialog_2 = 10176

----物品
--钥匙
local nItem_Key = 9000001

--掩码（12-20时每时段是否开启了宝箱）
--1003:12-15时，1004：16-20时
local nUserTempData_1 = 1003
local nUserTempData_2 = 1004
local nUserTempData_3 = 1005

--****************************************逻辑*******************************
------宝箱---------
--宝箱类型1（开启后获得钥匙）
rwtNpcGroup[nTreasureBox_1] = rwtNpcGroup[nTreasureBox_1] or {}  
rwtNpcGroup[nTreasureBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBox_1]["Function"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    --开启后获得钥匙
    TreasureBoxTest_OpenBox_Key()
end
--宝箱类型2（50%战斗50%金币）
rwtNpcGroup[nTreasureBox_2] = rwtNpcGroup[nTreasureBox_2] or {}  
rwtNpcGroup[nTreasureBox_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBox_2]["Function"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    local nRandom = rwGetRandInt(1,2)
    if nRandom <= 1 then
--        local nMonster_Gen = nMonster_GenId_2
--        if not rwHasGenEvent(nMonster_Gen) then
--            rwAddGenEvent(nMonster_Gen)
--        end
--        rwAutoBattle(nMonster_Gen)
        return 1
    else
--        TreasureBoxTest_OpenBox_Gold()
        return 2
    end
end

--宝箱类型3（开启后获得金币）
rwtNpcGroup[nTreasureBox_3] = rwtNpcGroup[nTreasureBox_3] or {}  
rwtNpcGroup[nTreasureBox_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBox_3]["Function"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    TreasureBoxTest_OpenBox_Gold()
end

--宝箱类型4（击败怪物后开启）
rwtNpcGroup[nTreasureBox_4] = rwtNpcGroup[nTreasureBox_4] or {}  
rwtNpcGroup[nTreasureBox_4]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBox_4]["ChkFunc"] = function(nGenEventId)
    local nGroupId = nMonster_4
    local nMonster_Gen = nMonster_GenId_4
    if rwHasGenEvent(nMonster_Gen) or not tTreasureBoxUserInfo or not tTreasureBoxUserInfo["MonsterDead"] or not tTreasureBoxUserInfo["MonsterDead"][nGroupId] then
        rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10015],2)
        return false
    else       
        return true
    end
end
rwtNpcGroup[nTreasureBox_4]["Function"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    local nGroupId = nMonster_4
    if tTreasureBoxUserInfo["MonsterDead"][nMonster_4] then
        tTreasureBoxUserInfo["MonsterDead"][nMonster_4] = false
        TreasureBoxTest_OpenBox_Gold()
    end
end

--宝箱类型5（钥匙开启）
rwtNpcGroup[nTreasureBox_5] = rwtNpcGroup[nTreasureBox_5] or {}  
rwtNpcGroup[nTreasureBox_5]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBox_5]["Dialog"] = nDialog_1
rwtNpcGroup[nTreasureBox_5]["ChkFunc"] = function()
--    return TreasureBoxTest_OpenBoxDialog()
--    return tTreasureBoxUserInfo["TreasureKey"]
    return false
end
rwtNpcGroup[nTreasureBox_5]["Function"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    if rwItemDel(nItem_Key,1) then
        TreasureBoxTest_OpenBox_Gold()
    end
end

--function TreasureBoxTest_OpenBoxDialog()
--    rwOpenNpcChatDialog(nDialog_1,CONST_NPCCHAT_TYPE.TREASUREBOX,nTreasureBox_5)
--    return false
--end

rwtDialog[nDialog_1] = {}
rwtDialog[nDialog_1]["CloseDialog"] = 1
--rwtDialog[nDialog_1]["DialogEnd"] = function ()
--   tTreasureBoxUserInfo = tTreasureBoxUserInfo or {}
--   rwtNpcGroup[nTreasureBox_5]["ChkFunc"]()
--   if rwUserGetItemCount(nItem_Key) >= 1 then
----        tTreasureBoxUserInfo["TreasureKey"] = true
--        if rwHasGenEvent(nTreasureBox_5_GenId) then
--            if rwDelGenEvent(nTreasureBox_5_GenId) then
--                rwtNpcGroup[nTreasureBox_5]["Function"]()
--            end
--        end       
--        return true
--   else      
--        rwSendSystemMessage("没有钥匙！",2)
----        tTreasureBoxUserInfo["TreasureKey"] = false
--        return false
--   end   
--end 
rwtDialog[nDialog_1]["DialogEnd"] = function (nGenId)
   tTreasureBoxUserInfo = tTreasureBoxUserInfo or {}
   rwtNpcGroup[nTreasureBox_5]["ChkFunc"]()
   if rwUserGetItemCount(nItem_Key) >= 1 then
--        tTreasureBoxUserInfo["TreasureKey"] = true
        if rwHasGenEvent(nGenId) then
            if rwDelGenEvent(nGenId) then
                rwtNpcGroup[nTreasureBox_5]["Function"]()
            end
        end       
        return true
   else      
        rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10016],2)
--        tTreasureBoxUserInfo["TreasureKey"] = false
        return false
   end   
end 

--npc
rwtNpcGroup[nNpcId] = rwtNpcGroup[nNpcId] or {}
rwtNpcGroup[nNpcId]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[nNpcId]["NpcId1"]= nNpc

--玩法7：NPC对话后刷出宝箱
rwtNpc[nNpc] = {}
rwtNpc[nNpc]["DialogId"] = nDialog_2

rwtDialog[nDialog_2] = {}
rwtDialog[nDialog_2]["CloseDialog"] = 1
rwtDialog[nDialog_2]["DialogEnd"] = function ()
    --删除NPC后刷出宝箱
    if rwHasGenEvent(nNpc_GenId) then
        if rwDelGenEvent(nNpc_GenId) then
            if not rwHasGenEvent(nTreasureBox_7_GenId) then
                rwAddGenEvent(nTreasureBox_7_GenId)
            end
        end
    end
end 

--宝箱类型9（定时刷新且每时段只能开启一次）
rwtNpcGroup[nTreasureBox_9] = rwtNpcGroup[nTreasureBox_9] or {}  
rwtNpcGroup[nTreasureBox_9]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBox_9]["ChkFunc"] = function()
    local nYear = rwTempDataGetValue(nUserTempData_1,2)
    local nMonth = rwTempDataGetValue(nUserTempData_1,3)
    local nDay = rwTempDataGetValue(nUserTempData_1,4)
    local nHour = rwTempDataGetValue(nUserTempData_1,5)
    local nCurrentYear = tonumber(os.date('%Y'))
    local nCurrentMonth = tonumber(os.date('%m'))
    local nCurrentDay = tonumber(os.date('%d'))
    local nCurrentHour = tonumber(os.date('%H'))
    if (nYear ~= nCurrentYear) or (nMonth ~= nCurrentMonth) or (nDay ~= nCurrentDay) or (nHour ~= nCurrentHour) then        
        rwUserTempDataSet(nUserTempData_1,nCurrentYear,2)
        rwUserTempDataSet(nUserTempData_1,nCurrentMonth,3)
        rwUserTempDataSet(nUserTempData_1,nCurrentDay,4)
        rwUserTempDataSet(nUserTempData_1,nCurrentHour,5)      
        return true
    end
    return false
end
rwtNpcGroup[nTreasureBox_9]["Function"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
        TreasureBoxTest_OpenBox_Gold()
end
--*************************************函数*****************************
--宝箱给金币
function TreasureBoxTest_OpenBox_Gold()
   rwItemAdd(CONST_SPECIALITEM_ID.MONEY, 1000)
   rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10017],2)
end
--宝箱给钥匙
function TreasureBoxTest_OpenBox_Key()
   rwItemAdd(nItem_Key,1)
   rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10018],2)
end

--宝箱玩法4:怪物死亡可以开启宝箱(无法获取怪物组的genid，需要服务端增加参数)
function TreasureBoxTest_Monster_Dead(nGroupId)
    tTreasureBoxUserInfo = tTreasureBoxUserInfo or {}
    tTreasureBoxUserInfo["MonsterDead"] = tTreasureBoxUserInfo["MonsterDead"] or {}
    if not tTreasureBoxUserInfo["MonsterDead"][nGroupId] then
        tTreasureBoxUserInfo["MonsterDead"][nGroupId] = true
    end
end

rwtMonsterGroup_Func[nMonster_4] = rwtMonsterGroup_Func[nMonster_4] or {}
table.insert(rwtMonsterGroup_Func[nMonster_4],TreasureBoxTest_Monster_Dead)

--怪物死亡刷出宝箱(无法获取怪物组的genid，需要服务端增加参数)
function TreasureBoxTest_Monster_DeadCreateBox(nGroupId)
    tTreasureBoxUserInfo = tTreasureBoxUserInfo or {}
    tTreasureBoxUserInfo["MonsterDead"] = tTreasureBoxUserInfo["MonsterDead"] or {}
    if not tTreasureBoxUserInfo["MonsterDead"][nGroupId] then
        tTreasureBoxUserInfo["MonsterDead"][nGroupId] = true
    end
    if not rwHasGenEvent(nTreasureBox_6_GenId) then
        rwAddGenEvent(nTreasureBox_6_GenId)
    end
end

rwtMonsterGroup_Func[nMonster_6] = rwtMonsterGroup_Func[nMonster_6] or {}
table.insert(rwtMonsterGroup_Func[nMonster_6],TreasureBoxTest_Monster_DeadCreateBox)

--玩法8随机3点刷出一个宝箱 
function TreasureBoxTest_CreatBox_Play8()
   local nRandom = rwGetRandInt(1,3)
   if not rwHasGenEvent(tTreasureBox_8_GenId[nRandom]) then
        rwAddGenEvent(tTreasureBox_8_GenId[nRandom])
   end
end

--12点-20点刷新的宝箱（只能开启一次）
function TreasureBoxTest_CreatBox_Once()
    local nYear = rwTempDataGetValue(nUserTempData_1,2)
    local nMonth = rwTempDataGetValue(nUserTempData_1,3)
    local nDay = rwTempDataGetValue(nUserTempData_1,4)
    local nHour = rwTempDataGetValue(nUserTempData_1,5)
    local nCurrentYear = tonumber(os.date('%Y'))
    local nCurrentMonth = tonumber(os.date('%m'))
    local nCurrentDay = tonumber(os.date('%d'))
    local nCurrentHour = tonumber(os.date('%H'))
--    rwPrintLog("数据库中：")
--    rwPrintLog("年："..nYear.."月："..nMonth.."日："..nDay.."小时："..nHour)
--    rwPrintLog("当前时间：")
--    rwPrintLog("年："..nCurrentYear.."月："..nCurrentMonth.."日："..nCurrentDay.."小时："..nCurrentHour)
    if not (nCurrentHour >= 11 and nCurrentHour <= 20) then
        return
    end
    if (nYear ~= nCurrentYear) or (nMonth ~= nCurrentMonth) or (nDay ~= nCurrentDay) or (nHour ~= nCurrentHour) then
         --刷出宝箱
        if not rwHasGenEvent(nTreasureBox_9_GenId) then
            rwAddGenEvent(nTreasureBox_9_GenId)
        end
    else 
        return
    end
end

--10点-11点刷新的宝箱(无开启次数限制)
function TreasureBoxTest_CreatBox_EveryTime()
    --当前时间处理：
    local tNowTime = os.date("*t")
    local nNowHour = tNowTime.hour
    if nNowHour >= 17 and nNowHour <= 18 then
        --刷出宝箱
        if not rwHasGenEvent(nTreasureBox_10_GenId) then
            rwAddGenEvent(nTreasureBox_10_GenId)
        end
    end

end

--概率测试
function TreasureBoxTest_RandomTest()
   local nNum = 10000
   local nLuaTest = 0
   local nLuaTest2 = 0
   local nLuaTest3 = 0
   local nServerTest = 0
   local nServerTest2 = 0
   local nServerTest3 = 0
   for i = 1,nNum do
        local nLuaRandom = math.random(1,3)
        local nServerRandom = rwGetRandInt(1,3)
        if nLuaRandom == 1 then
            nLuaTest = nLuaTest + 1
        elseif nLuaRandom == 2 then
            nLuaTest2 = nLuaTest2 + 1
        elseif nLuaRandom == 3 then
            nLuaTest3 = nLuaTest3 + 1
        end
        if nServerRandom == 1 then
            nServerTest = nServerTest + 1
        elseif nServerRandom == 2 then
            nServerTest2 = nServerTest2 + 1
        elseif nServerRandom == 3 then
            nServerTest3 = nServerTest3 + 1
        end
   end
   rwPrintLog("Lua随机：1的数量为："..nLuaTest..",2的数量："..nLuaTest2..",3的数量："..nLuaTest3..",总的数量："..nLuaTest+nLuaTest2+nLuaTest3)
   rwPrintLog("Server随机：1的数量为："..nServerTest..",2的数量："..nServerTest2..",3的数量："..nServerTest3..",总的数量："..nServerTest+nServerTest2+nServerTest3)
end

--宝箱2概率测试
function TreasureBoxTest_RandomTest2()
   local nNum = 10000
   local nRandomTest = 0
   local nRandomTest2 = 0
   for i = 1,nNum do
        local nRamdom = rwtNpcGroup[nTreasureBox_2]["Function"]()
        if nRamdom == 1 then
            nRandomTest = nRandomTest + 1
        elseif nRamdom == 2 then
            nRandomTest2 = nRandomTest2 + 1
        end
   end
   rwPrintLog("宝箱随机：战斗的次数："..nRandomTest2..",金币的次数："..nRandomTest..",总的次数："..nRandomTest+nRandomTest2)
end

--进入地图初始化刷新宝箱
function TestMap_InitTreasureBox()
    rwPrintLog("进入测试场景，开始执行初始化刷新宝箱函数")  
    tTreasureBoxUserInfo = tTreasureBoxUserInfo or {}
    --隔天判断
    local nYear = rwTempDataGetValue(nUserTempData_3,3)
    local nMonth = rwTempDataGetValue(nUserTempData_3,4)
    local nDay = rwTempDataGetValue(nUserTempData_3,5)
    local nCurrentYear = tonumber(os.date('%Y'))
    local nCurrentMonth = tonumber(os.date('%m'))
    local nCurrentDay = tonumber(os.date('%d'))
    if (nYear ~= nCurrentYear) or (nMonth ~= nCurrentMonth) or (nDay ~= nCurrentDay) then
	    rwPrintLog("重置掩码状态，年："..nCurrentYear.."月："..nCurrentMonth.."日："..nCurrentDay)
        --重置隔天掩码
        rwUserTempDataSet(nUserTempData_3,nCurrentYear,3)
        rwUserTempDataSet(nUserTempData_3,nCurrentMonth,4)
        rwUserTempDataSet(nUserTempData_3,nCurrentDay,5)
	    --重置玩法9掩码状态
        for i = 1,8 do
            rwUserTempDataSet(nUserTempData_1,0,i)
            rwUserTempDataSet(nUserTempData_2,0,i)
        end
    end
    --进入地图后立即刷新的gen：
    for _,v in pairs(tTreasureBoxTestGenId) do
        if not rwHasGenEvent(v) then
            rwAddGenEvent(v)
        end
    end
    --5分钟后刷新的宝箱（定时器接口暂无）

    --3个点随机刷出宝箱
    rwPrintLog("玩法8宝箱")  
    TreasureBoxTest_CreatBox_Play8()
--    --12点-20点刷新的宝箱（只能开启一次）（没有定时功能，无法实现）
--    rwPrintLog("玩法9宝箱")  
--    TreasureBoxTest_CreatBox_Once()
    --10点-11点刷新的宝箱(无开启次数限制)
    rwPrintLog("玩法10宝箱")  
    TreasureBoxTest_CreatBox_EveryTime()
    rwPrintLog("测试场景初始化刷新宝箱完毕")

end
----切图后触发
--rwtSceneLoad_Func[nMapId] = rwtSceneLoad_Func[nMapId] or {}
--table.insert(rwtSceneLoad_Func[nMapId],TestMap_InitTreasureBox)

rwtMap[nMapId] = rwtMap[nMapId] or {}
rwtMap[nMapId]["Func"] = function(nMapId)
    rwPrintLog("进入测试场景")
    TestMap_InitTreasureBox()
end


function TreasureBoxTest_RandomTest(nMin,nMax)
    local nRusult = rwGetRandInt(nMin,nMax) 
    rwPrintLog("最小值："..nMin.."，最大值："..nMax.."，随机结果："..nRusult)
end