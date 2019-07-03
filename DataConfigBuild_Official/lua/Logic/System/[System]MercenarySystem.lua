--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--佣兵系统


--endregion


local Mercenary_Temp_Data = 1000  --记录玩家身上当前的佣兵任务

---刷新任务品质的概率
local tMercenaryQualityRandom = {}
    tMercenaryQualityRandom[1] = 35  ---白
    tMercenaryQualityRandom[2] = 30  ---绿
    tMercenaryQualityRandom[3] = 20  ---蓝
    tMercenaryQualityRandom[4] = 12  ---紫
    tMercenaryQualityRandom[5] = 3   ---橙

---委托任务各城镇掩码配置
local tMercenaryOpenInfo = {}
    tMercenaryOpenInfo[200101] = {}
    tMercenaryOpenInfo[200101]["AreaId"] = 2001
    tMercenaryOpenInfo[200101]["UserTempData"] = 1006  --记录随机到的佣兵任务

    tMercenaryOpenInfo[200102] = {}
    tMercenaryOpenInfo[200102]["AreaId"] = 2001
    tMercenaryOpenInfo[200102]["UserTempData"] = 1007

    tMercenaryOpenInfo[200103] = {}
    tMercenaryOpenInfo[200103]["AreaId"] = 2001
    tMercenaryOpenInfo[200103]["UserTempData"] = 1008

    tMercenaryOpenInfo[200104] = {}
    tMercenaryOpenInfo[200104]["AreaId"] = 2001
    tMercenaryOpenInfo[200104]["UserTempData"] = 1009

    tMercenaryOpenInfo[200105] = {}
    tMercenaryOpenInfo[200105]["AreaId"] = 2001
    tMercenaryOpenInfo[200105]["UserTempData"] = 1010

    tMercenaryOpenInfo[200301] = {}
    tMercenaryOpenInfo[200301]["AreaId"] = 2003
    tMercenaryOpenInfo[200301]["UserTempData"] = 1106  

    tMercenaryOpenInfo[200302] = {}
    tMercenaryOpenInfo[200302]["AreaId"] = 2003
    tMercenaryOpenInfo[200302]["UserTempData"] = 1107

    tMercenaryOpenInfo[200303] = {}
    tMercenaryOpenInfo[200303]["AreaId"] = 2003
    tMercenaryOpenInfo[200303]["UserTempData"] = 1108

    tMercenaryOpenInfo[200304] = {}
    tMercenaryOpenInfo[200304]["AreaId"] = 2003
    tMercenaryOpenInfo[200304]["UserTempData"] = 1109

    tMercenaryOpenInfo[200305] = {}
    tMercenaryOpenInfo[200305]["AreaId"] = 2003
    tMercenaryOpenInfo[200305]["UserTempData"] = 1110

    tMercenaryOpenInfo[200501] = {}
    tMercenaryOpenInfo[200501]["AreaId"] = 2005
    tMercenaryOpenInfo[200501]["UserTempData"] = 1162

    tMercenaryOpenInfo[200502] = {}
    tMercenaryOpenInfo[200502]["AreaId"] = 2005
    tMercenaryOpenInfo[200502]["UserTempData"] = 1163

    tMercenaryOpenInfo[200503] = {}
    tMercenaryOpenInfo[200503]["AreaId"] = 2005
    tMercenaryOpenInfo[200503]["UserTempData"] = 1164

    tMercenaryOpenInfo[200504] = {}
    tMercenaryOpenInfo[200504]["AreaId"] = 2005
    tMercenaryOpenInfo[200504]["UserTempData"] = 1165

    tMercenaryOpenInfo[200505] = {}
    tMercenaryOpenInfo[200505]["AreaId"] = 2005
    tMercenaryOpenInfo[200505]["UserTempData"] = 1166



--local tDailyTaskOpenInfo = {}
--    tDailyTaskOpenInfo[200101] = {}
--    tDailyTaskOpenInfo[200101]["AreaId"] = 2001
--    tDailyTaskOpenInfo[200101]["UserTempData"] = 1014

--    tDailyTaskOpenInfo[200102] = {}
--    tDailyTaskOpenInfo[200102]["AreaId"] = 2001
--    tDailyTaskOpenInfo[200102]["UserTempData"] = 1014

--    tDailyTaskOpenInfo[200103] = {}
--    tDailyTaskOpenInfo[200103]["AreaId"] = 2001
--    tDailyTaskOpenInfo[200103]["UserTempData"] = 1014

--    tDailyTaskOpenInfo[200104] = {}
--    tDailyTaskOpenInfo[200104]["AreaId"] = 2001
--    tDailyTaskOpenInfo[200104]["UserTempData"] = 1014

--    tDailyTaskOpenInfo[200105] = {}
--    tDailyTaskOpenInfo[200105]["AreaId"] = 2001
--    tDailyTaskOpenInfo[200105]["UserTempData"] = 1014
--=======================================================================================================--
--=========					     		 数据和逻辑分割线               						=========--
--=======================================================================================================--
--返回随机出的佣兵任务ID
function rwMercenaryRandomTaskToAdd(nTownId)
    ---判断对应城镇的佣兵任务映射表是否存在
    if not nTownId or not rwtMercenaryTaskListByTownId[nTownId] then
        return false
    end
    ---判断掩码是否有配置
    local nUserTempData = tMercenaryOpenInfo[nTownId]["UserTempData"]
    if not tMercenaryOpenInfo[nTownId] or not nUserTempData then
        return false
    end

    ---随机任务品质
    local nRandomQuality = rwMercenaryRandomQuality()
    if not rwtMercenaryTaskListByTownId[nTownId][nRandomQuality] then
        return
    end

    local nOldTaskId = rwTempDataGetValue(nUserTempData)
    local nNewTaskId = 0

    local tInfo = SysCopyTable(rwtMercenaryTaskListByTownId[nTownId][nRandomQuality])  ---临时存储表

    if nOldTaskId and nOldTaskId > 0 then
        local bRet,nRet = rwComElementIsExit(tInfo,nOldTaskId)
        if bRet then
           table.remove(tInfo,nRet)
        end
    end

    local nLen = #tInfo
    local nRandom = math.random(1,nLen)
    nNewTaskId = tInfo[nRandom] or 0    

    if nNewTaskId and nNewTaskId ~= 0 then
        local nTaskDetailType = rwtTask[nNewTaskId]["TaskDetailType"]
        if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
            if ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nNewTaskId):AddTaskRecord() then
                rwUserTempDataSet(nUserTempData,nNewTaskId)
                return true
            end
        end  
    end
    return false
end

---根据概率随机任务品质
function rwMercenaryRandomQuality()
    local nRandom = math.random(1,100)
    local nMin = 1
    local nMax = 0
    for quality,v in ipairs(tMercenaryQualityRandom) do
        nMax = nMax + v
        if nRandom >= nMin and nRandom <= nMax then
            return quality
        end
        nMin = nMin + v
    end
end

--function Test_rwMercenaryRandomQuality()
--    local t = {}
--    local nNum = 100000
--    for i=1,nNum do
--        local nIndex = rwMercenaryRandomQuality() or 0
--        t[nIndex] = t[nIndex] or 0
--        t[nIndex] = t[nIndex] + 1
--        i = i + 1
--    end
--    rwPrintWarnLog("baise" .. t[1]/nNum * 100 .."%")
--    rwPrintWarnLog("lvse" .. t[2]/nNum * 100 .."%")
--    rwPrintWarnLog("lanse" .. t[3]/nNum * 100 .."%")
--    rwPrintWarnLog("zise" .. t[4]/nNum * 100 .."%")
--    rwPrintWarnLog("chengse" .. t[5]/nNum * 100 .."%")
--end

--佣兵任务面板刷新按钮
function rwRefreshAllMercenaryTask(nFreshType)  
    local nFirstAreaId = 2001
    local nFirstTownId = 200101
    --是否有解锁至少一个城镇
    if not rwSysGetTaskLockMask(nFirstAreaId, nFirstTownId)  then
        rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10004])
        return false
    end

    if rwUserGetTimesLeft(CONST_USER_TIMESTYPE.MercenaryRefreshAll) < 1 and nFreshType == 0 then
        rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10005])
        return false 
    end

    --免费刷新，脚本扣除次数；付费刷新，服务端扣除次数，脚本直接刷新
    if (nFreshType == 0 and rwSysIncreaseUserTimes(CONST_USER_TIMESTYPE.MercenaryRefreshAll)) or nFreshType == 1 then

        local taskList = rwTaskGetListByType(CONST_TASK_TYPE.MERCENARY)
        if taskList then

            for i = 1,#taskList do
                local nOldTaskId = taskList[i]
                local nTownId = rwtTask[nOldTaskId]["MercenaryTownId"]

                if nOldTaskId and nTownId and nTownId ~= 0 then                
                    local nState = rwTaskGetData(nOldTaskId, CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG)
                    if nState == 0 then --未接

                        rwTaskDelete(nOldTaskId)  --删除旧的任务
                        rwMercenaryRandomTaskToAdd(nTownId)
                    elseif nState == 2 then --已接不刷新
  
                    end   
                end         
            end
            return true
        end
    end
    return false
end

--接受佣兵任务
function rwAcceptMercenaryTask(nTaskId)
    if rwMercenaryTaskIsExist(nTaskId) then
        rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10006])
        return
    end    

    if rwUserGetTimesLeft(CONST_USER_TIMESTYPE.Mercenary) < 1 then
        --次数不足提示
        rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10007])
        return false 
    end

    --扣除次数后接受任务
    --if rwSysIncreaseUserTimes(CONST_USER_TIMESTYPE.Mercenary) then
        rwCloseLocalDialog(CONST_MENUTYPE.Mercenary)
        local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):AcceptTask()
        rwUserTempDataSet(Mercenary_Temp_Data,nTaskId)
    --end
end

--停止佣兵任务
function rwStopMercenaryTask(nTaskId)
    rwTaskSetData(nTaskId, CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG, 0)  --置回0
    rwUserTempDataSet(Mercenary_Temp_Data,0)
    local nUserCurMap = rwUserGetCurMapId()
    local tTaskInfo = rwtTask[nTaskId]
    if rwChkTable(tTaskInfo["DynaNpcGroupGen"]) then
        for k,v in pairs(tTaskInfo["DynaNpcGroupGen"]) do
            if v.MapId == nUserCurMap then
                local nGenId = v.GenId
                if nGenId and rwHasGenEvent(nGenId) then
                    rwDelGenEvent(nGenId)
                end
            end
        end
    end 
end

--委托佣兵任务
function rwDelegateMercenaryTask(nTaskId)
    
end

--完成佣兵任务
function rwFinishMercenaryTask(nTaskId)
    if not rwtTask[nTaskId] then
        return 
    end
     -----------------数据埋点 --佣兵
       local nLeftTimes = rwUserGetTimesLeft(CONST_USER_TIMESTYPE.Mercenary)
       local nAllTimes = rwGetUserTimesLimit(CONST_USER_TIMESTYPE.Mercenary)
       local nDoTimes = nAllTimes-nLeftTimes
       rwSetTaskFinishNum(CONST_TASK_TYPE.MERCENARY,nDoTimes)
    ----------------------------------
    local nTownId = rwtTask[nTaskId]["MercenaryTownId"] or 0
    if nTownId and nTownId ~= 0 then
        if tMercenaryOpenInfo[nTownId] and tMercenaryOpenInfo[nTownId]["UserTempData"] then
            rwUserTempDataSet(tMercenaryOpenInfo[nTownId]["UserTempData"],0)
        end
    end
    rwUserTempDataSet(Mercenary_Temp_Data,0)
end

--判断身上有在进行的佣兵任务
function rwMercenaryTaskIsExist(nTaskId)
    if rwTempDataIsExist(Mercenary_Temp_Data) then
        local nRet = rwTempDataGetValue(Mercenary_Temp_Data)
        if nRet and nRet > 0 then
            return true
        end
    end
    return false
end   

