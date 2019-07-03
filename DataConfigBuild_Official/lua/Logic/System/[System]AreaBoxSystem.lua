--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--片区宝箱系统
--By:mzy

--endregion

--function rwAreaBox_Init(nMapId)
--    --前置任务未完成则不进行刷新
--    local nPreTask = tAreaBoxInfo[nMapId]["PreTaskId"]
--    if nPreTask and not rwTaskIsSuccess(nPreTask) then
--        return
--    end
--    --时间掩码
--    local nTimeData = tAreaBoxInfo[nMapId]["TimeData"]
--    --刷新掩码
--    local nRefreshData = tAreaBoxInfo[nMapId]["RefreshData"]
--    --当前时间，只记录小时即可
--    local nLocalHour = tonumber(os.date("%H"))
--    --隔天重置掩码
--    if rwTempDataDayJudgment(nTimeData) then
--        rwTempDataReset(nTimeData)
--        --改变刷新方式
--        rwAreaBox_LoopRefresh(nMapId)
--        --超过12点，将刷新掩码data1置为1，表示已经12点后随机过
--        if nLocalHour >= 12 then
--            rwUserTempDataSet(nRefreshData,1,CONST_TEMP_DATA.Data1)
--        else
--            --未超过12点，将刷新掩码data1置为0，表示12点后还没有随机没有
--            rwUserTempDataSet(nRefreshData,0,CONST_TEMP_DATA.Data1)
--        end
--        rwAreaBox_RandomBox(nMapId)
--    else
--        --未隔天
--        --超过12点，且刷新掩码data1为1，表示12点后未随机过，未超过12点不做改变
--        if nLocalHour >= 12 then
--            local nRefreshFlag = rwTempDataGetValue(nRefreshData, CONST_TEMP_DATA.Data1)
--            if nRefreshFlag == 0 then
--                --改变刷新方式
--                rwAreaBox_LoopRefresh(nMapId)
--                --将刷新掩码data1置为1，表示已经12点后随机过
--                rwUserTempDataSet(nRefreshData,1,CONST_TEMP_DATA.Data1)
--                rwAreaBox_RandomBox(nMapId)
--            end
--        end
--    end

--    --刷出宝箱
--    for k,v in pairs(tAreaBoxInfo[nMapId]["BoxTempData"]) do
--        local tPos = tAreaBoxInfo[nMapId]["PosInfo"]
--        local nBoxType = tonumber(rwTempDataGetValue(v, CONST_TEMP_DATA.Data1))
--        local nPosIndex = tonumber(rwTempDataGetValue(v, CONST_TEMP_DATA.Data2))
--        local sPos = tPos[nPosIndex]["sPos"]
--        local nRoation = tPos[nPosIndex]["nRot"]
--        local nGenId = tAreaBoxInfo[nMapId]["GenId"][k]
--        local nIsOpen = tonumber(rwTempDataGetValue(v, CONST_TEMP_DATA.Data3))
--        if (nIsOpen == 0) and not rwHasGenEvent(nGenId) then
--            rwAddGenEvent(nGenId, sPos, nBoxType, nRoation)
--        end
--    end
--end

----进入地图宝箱初始化
--function rwAreaBox_Init(nMapId)
--    local nRefreshTimeStage = rwAreaBox_TimeJudge(nMapId)
--    rwAreaBox_RefreshBox(nMapId,nRefreshTimeStage)
--end

----进入地图时间判断
--function rwAreaBox_TimeJudge(nMapId)
--    --时间掩码
--    local nTimeData = tAreaBoxInfo[nMapId]["TimeData"]
--    --刷新掩码
--    local nRefreshData = tAreaBoxInfo[nMapId]["RefreshData"]
--    --数据库中记录的刷新时间段
--    local nRefreshTimeStage = tonumber(rwTempDataGetValue(nRefreshData, CONST_TEMP_DATA.Data1))

--    local tRefreshTime = tAreaBoxInfo[nMapId]["RefreshTime"]
--    --当前时间
--    local tCurTime = os.date("*t")
--    local nCurHour = tCurTime.hour
--    local nCurMin = tCurTime.min
--    --计算当前时间在配置的哪个时间段内
--    local nResult = 0
--	for i = 1,#tRefreshTime do
--		if nCurHour < tRefreshTime[i]["Hour"] then
--			nResult = (i - 1) == 0 and #tRefreshTime or (i - 1)
--			break
--		elseif nCurHour == tRefreshTime[i]["Hour"] then
--			if nCurMin < tRefreshTime[i]["Min"] then
--				nResult = (i - 1) == 0 and #tRefreshTime or (i - 1)
--				break
--			end
--		end
--		nResult = i
--	end
--    if rwTempDataDayJudgment(nTimeData) then
--        --如果隔天，且是最后一个时间段，进行甄别是否需要重新随机宝箱
--        if nResult == #tRefreshTime then
--            --当天0点时间戳
--            local nZeroTime = os.time({year=tCurTime.year, month=tCurTime.month, day=tCurTime.day, hour=0,min=0,sec=0})
--            --前一天最后刷新时间点时间戳
--            local tYesterDayLastStageTime = nZeroTime - (86400 - (tRefreshTime[#tRefreshTime].Hour * 3600 + tRefreshTime[#tRefreshTime].Min * 60))
--            --上次刷新时间
--            local nLastRefreshTime = tonumber(rwTempDataGetValue(nRefreshData, CONST_TEMP_DATA.RecordTime))
--            if nLastRefreshTime < tYesterDayLastStageTime then
--                --在前一天最后时间点之前，则重新随机
--                rwAreaBox_RandomBox(nMapId)
--                return nResult
--            end
--            --在当天第一个刷新时间点之前，不重新随机
--            return -1
--        end
--        rwAreaBox_RandomBox(nMapId)
--        return nResult
--    end
--    --未隔天，重新随机
--    if nResult == nRefreshTimeStage then
--        return -1
--    else
--        rwAreaBox_RandomBox(nMapId)
--        return nResult
--    end
--end



----刷新宝箱逻辑
----nMapId：地图id
----nRefreshTimeStage：时间段
--function rwAreaBox_RefreshBox(nMapId,nRefreshTimeStage)
--    --地图判断
--    if not nMapId then
--        local nCurMap = rwUserGetCurMapId()
--        for mapid,v in pairs(tAreaBoxInfo) do
--            if mapid == nCurMap then
--                nMapId = nCurMap
--                break
--            end
--        end
--        --不在片区地图（可能在副本、主城等其他地图）,不进行刷新
--        return
--    end

--    --重置时间掩码
--    rwTempDataReset(nTimeData)
--    --记录刷新时间段
--    rwUserTempDataSet(nRefreshData,nRefreshTimeStage,CONST_TEMP_DATA.Data1)

--    --刷出宝箱
--    for k,v in pairs(tAreaBoxInfo[nMapId]["BoxTempData"]) do
--        local tPos = tAreaBoxInfo[nMapId]["PosInfo"]
--        local nBoxType = tonumber(rwTempDataGetValue(v, CONST_TEMP_DATA.Data1))
--        local nPosIndex = tonumber(rwTempDataGetValue(v, CONST_TEMP_DATA.Data2))
--        local sPos = tPos[nPosIndex]["sPos"]
--        local nRoation = tPos[nPosIndex]["nRot"]
--        local nGenId = tAreaBoxInfo[nMapId]["GenId"][k]
--        local nIsOpen = tonumber(rwTempDataGetValue(v, CONST_TEMP_DATA.Data3))
--        if (nIsOpen == 0) and not rwHasGenEvent(nGenId) then
--            rwAddGenEvent(nGenId, sPos, nBoxType, nRoation)
--        end
--    end
--end





----循环刷新方式
----刷新掩码["RefreshData"]，data1存储刷新时段；data2存储刷新方式，1-["LoopModeNum"]
--function rwAreaBox_LoopRefresh(nMapId)
--    --获取刷新方式数量
--    local nModeNum = tAreaBoxInfo[nMapId]["LoopModeNum"]
--    local nRefreshData = tAreaBoxInfo[nMapId]["RefreshData"]
--    --没有掩码创建掩码
--    if not rwTempDataIsExist(nRefreshData) then
--        rwTempDataAdd(nRefreshData)
--    end
--    --获取当前刷新方式
--    local nLocalMode = rwTempDataGetValue(nRefreshData, CONST_TEMP_DATA.Data2)
--    if nLocalMode >= nModeNum then
--        rwUserTempDataSet(nRefreshData,1,CONST_TEMP_DATA.Data2)
--    else
--        rwUserTempDataSet(nRefreshData,nLocalMode + 1,CONST_TEMP_DATA.Data2)
--    end
--end







----随机宝箱
----
--function rwAreaBox_RandomBox(nMapId)
--    local tPosIndex = {}         
--    --坐标映射，根据类型保存坐标索引，刷新时按索引顺序刷新
--    for i,v in pairs(tAreaBoxInfo[nMapId]["PosInfo"]) do
--        local nType = v["PosType"]
--        tPosIndex[nType] = tPosIndex[nType] or {}
--        table.insert(tPosIndex[nType],i)
--    end
--    local nRefreshData = tAreaBoxInfo[nMapId]["RefreshData"]
--    --剩余要刷新的宝箱数量
--    local nRestNum = tAreaBoxInfo[nMapId]["RefreshNum"]
--    --获取当前刷新方式
--    local nLocalMode = rwTempDataGetValue(nRefreshData, CONST_TEMP_DATA.Data2)
--    local tModeType = tAreaBoxInfo[nMapId]["LoopMode"..nLocalMode]
--    --当前可随机的坐标索引集合
--    local tPosRandom = {}
--    local nTempdataFlag = 1
--    local nIndex = 1
--    while (tModeType["BoxType"..nIndex]) do
--        local tBoxTypeInfo = tModeType["BoxType"..nIndex]
--        --如果当前要随机的宝箱和前面几种宝箱坐标不一样，将坐标索引插入可随机列表
--        if tBoxTypeInfo.PosType and tPosIndex[tBoxTypeInfo.PosType] then
--            for _,v in pairs(tPosIndex[tBoxTypeInfo.PosType]) do
--                table.insert(tPosRandom,v)
--            end
--        end
--        --当前类型宝箱要刷新的数量
--        local nLocalNum = 0
--        if tBoxTypeInfo.FinalType and tBoxTypeInfo.FinalType == 1 then
--            nLocalNum = nRestNum
--        else 
--            if tBoxTypeInfo.MinNum and tBoxTypeInfo.MaxNum then
--                nLocalNum = rwGetRandInt(tBoxTypeInfo.MinNum,tBoxTypeInfo.MaxNum)
--                nRestNum = nRestNum - nLocalNum
--            end
--        end
--        --设置掩码
--        for i = 1,nLocalNum do
--            local nTempData = tAreaBoxInfo[nMapId]["BoxTempData"][nTempdataFlag]
--            --没有掩码创建掩码
--            if not rwTempDataIsExist(nTempData) then
--                rwTempDataAdd(nTempData)
--            end
--            rwUserTempDataSet(nTempData,tBoxTypeInfo.TypeId,CONST_TEMP_DATA.Data1)     --data1设置为宝箱id
--            local nPosIndex = rwAreaBox_RandomPos(tPosRandom)   --在当前随机坐标列表中随机坐标索引
--            rwUserTempDataSet(nTempData,nPosIndex,CONST_TEMP_DATA.Data2)    --data2设置为坐标索引
--            rwUserTempDataSet(nTempData,0,CONST_TEMP_DATA.Data3)            --data3设置为未开启
--            nTempdataFlag = nTempdataFlag + 1
--        end
--        nIndex = nIndex + 1
--    end


--end

--=====================================================重制版============================================================

--前置任务判断函数
function rwAreaBox_CheckTask(nMapId)
    local nPreTask = tAreaBoxInfo[nMapId]["PreTaskId"]
    if nPreTask and not rwTaskIsSuccess(nPreTask) then
        return false
    end
    return true
end


--计算当前时间在配置的哪个时间段内
function rwAreaBox_CurTimeStage(nMapId)
    --计算当前时间在配置的哪个时间段内
    local nResult = 0
    local tCurTime = os.date("*t")
    local nCurHour = tCurTime.hour
    local nCurMin = tCurTime.min
    local tTimeConfigInfo = tAreaBoxInfo[nMapId]["TimeConfig"]
    for i = 1,#tTimeConfigInfo do
		if nCurHour < tTimeConfigInfo[i]["Hour"] then
			nResult = (i - 1) == 0 and #tTimeConfigInfo or (i - 1)
			break
		elseif nCurHour == tTimeConfigInfo[i]["Hour"] then
			if nCurMin < tTimeConfigInfo[i]["Min"] then
				nResult = (i - 1) == 0 and #tTimeConfigInfo or (i - 1)
				break
			end
		end
		nResult = i
    end
    return nResult
end

--判断当前时间与掩码记录的时间差异
function rwAreaBox_CheckTime(nMapId)
    local nTimeData = tAreaBoxInfo[nMapId]["RefreshData"]

    local tTimeConfigInfo = tAreaBoxInfo[nMapId]["TimeConfig"]
    local tCurTime = os.date("*t")
    local nCurHour = tCurTime.hour
    local nCurMin = tCurTime.min
    --掩码记录的时间段
    local nTempTimeStage = rwTempDataGetValue(nTimeData, CONST_TEMP_DATA.Data1)

    --掩码重置时间（每天第一个时间结点）
    local tResetTime = tAreaBoxInfo[nMapId]["TimeConfig"][1]
    --计算当前时间在配置的哪个时间段内
    local nResult = rwAreaBox_CurTimeStage(nMapId)
    if rwTempDataDayJudgment(nTimeData,tResetTime) then
        --如果隔天，则重新随机
        return nResult
    end
    --未隔天，且不同时间段则重新随机
    if nResult == nTempTimeStage then
        return -1
    else
        return nResult
    end

end

----更新时间掩码
--function rwAreaBox_UpdateTimeData(nMapId)
--    local nTimeData = tAreaBoxInfo[nMapId]["TimeData"]
--    rwTempDataReset(nTimeData)
--end

--循环刷新方式
--刷新掩码["RefreshData"]，data1存储刷新时段；data2存储刷新方式，1-["LoopModeNum"]
--并更新时间
function rwAreaBox_LoopRefresh(nMapId,nRefreshTimeStage)
    --获取刷新方式数量
    local nModeNum = tAreaBoxInfo[nMapId]["LoopModeNum"]
    local nRefreshData = tAreaBoxInfo[nMapId]["RefreshData"]
    --没有掩码创建掩码
    if not rwTempDataIsExist(nRefreshData) then
        rwTempDataAdd(nRefreshData)
    end
    --更新刷新时间段
    rwUserTempDataSet(nRefreshData,nRefreshTimeStage,CONST_TEMP_DATA.Data1,0,true)
    --获取当前刷新方式
    local nLocalMode = rwTempDataGetValue(nRefreshData, CONST_TEMP_DATA.Data2,0,true)
    if nLocalMode >= nModeNum then
        rwUserTempDataSet(nRefreshData,1,CONST_TEMP_DATA.Data2)
    else
        rwUserTempDataSet(nRefreshData,nLocalMode + 1,CONST_TEMP_DATA.Data2,0,true)
    end
end


--随机宝箱
--
function rwAreaBox_RandomBox(nMapId)
    local tPosIndex = {}         
    --坐标映射，根据类型保存坐标索引，刷新时按索引顺序刷新
    for i,v in pairs(tAreaBoxInfo[nMapId]["PosInfo"]) do
        local nType = v["PosType"]
        tPosIndex[nType] = tPosIndex[nType] or {}
        table.insert(tPosIndex[nType],i)
    end
    local nRefreshData = tAreaBoxInfo[nMapId]["RefreshData"]
    --剩余要刷新的宝箱数量
    local nRestNum = tAreaBoxInfo[nMapId]["RefreshNum"]
    --获取当前刷新方式
    local nLocalMode = rwTempDataGetValue(nRefreshData, CONST_TEMP_DATA.Data2)
    local tModeType = tAreaBoxInfo[nMapId]["LoopMode"..nLocalMode]
    --当前可随机的坐标索引集合
    local tPosRandom = {}
    local nTempdataFlag = 1
    local nIndex = 1
    while (tModeType["BoxType"..nIndex]) do
        local tBoxTypeInfo = tModeType["BoxType"..nIndex]
        --如果当前要随机的宝箱和前面几种宝箱坐标不一样，将坐标索引插入可随机列表
        if tBoxTypeInfo.PosType and tPosIndex[tBoxTypeInfo.PosType] then
            for _,v in pairs(tPosIndex[tBoxTypeInfo.PosType]) do
                table.insert(tPosRandom,v)
            end
        end
        --当前类型宝箱要刷新的数量
        local nLocalNum = 0
        if tBoxTypeInfo.FinalType and tBoxTypeInfo.FinalType == 1 then
            nLocalNum = nRestNum
        else 
            if tBoxTypeInfo.MinNum and tBoxTypeInfo.MaxNum then
                nLocalNum = rwGetRandInt(tBoxTypeInfo.MinNum,tBoxTypeInfo.MaxNum)
                nRestNum = nRestNum - nLocalNum
            end
        end
        --设置掩码
        for i = 1,nLocalNum do
            local nTempData = tAreaBoxInfo[nMapId]["BoxTempData"][nTempdataFlag]
            --没有掩码创建掩码
            if not rwTempDataIsExist(nTempData) then
                rwTempDataAdd(nTempData)
            end
            rwUserTempDataSet(nTempData,tBoxTypeInfo.TypeId,CONST_TEMP_DATA.Data1)     --data1设置为宝箱id
            local nPosIndex = rwAreaBox_RandomPos(tPosRandom)   --在当前随机坐标列表中随机坐标索引
            rwUserTempDataSet(nTempData,nPosIndex,CONST_TEMP_DATA.Data2)    --data2设置为坐标索引
            rwUserTempDataSet(nTempData,0,CONST_TEMP_DATA.Data3)            --data3设置为未开启
            nTempdataFlag = nTempdataFlag + 1
        end
        nIndex = nIndex + 1
    end


end

--随机坐标
function rwAreaBox_RandomPos(tPosIndex)
    if #tPosIndex > 1 then
        local nRandom = math.random(1,#tPosIndex)
        local nIndex = tPosIndex[nRandom]
        table.remove(tPosIndex,nRandom)
        return nIndex
    else
        local nIndex = tPosIndex[1]
        table.remove(tPosIndex,1)
        return nIndex
    end

end

function rwAreaBox_AddBox(nMapId)
    --删除原来的宝箱
    for k,v in pairs(tAreaBoxInfo[nMapId]["GenId"]) do
        if rwHasGenEvent(v) then
            rwDelGenEvent(v)
        end
    end

    --刷出宝箱
    for k,v in pairs(tAreaBoxInfo[nMapId]["BoxTempData"]) do
        local tPos = tAreaBoxInfo[nMapId]["PosInfo"]
        local nBoxType = tonumber(rwTempDataGetValue(v, CONST_TEMP_DATA.Data1))
        local nPosIndex = tonumber(rwTempDataGetValue(v, CONST_TEMP_DATA.Data2))
        local sPos = tPos[nPosIndex]["sPos"]
        local nRoation = tPos[nPosIndex]["nRot"]
        local nGenId = tAreaBoxInfo[nMapId]["GenId"][k]
        local nIsOpen = tonumber(rwTempDataGetValue(v, CONST_TEMP_DATA.Data3))
        if (nIsOpen == 0) and not rwHasGenEvent(nGenId) then
            rwAddGenEvent(nGenId, sPos, nBoxType, nRoation)
        end
    end
end


--进入地图触发
function  rwAreaBox_EnterMapInit(nMapId)
    --前置任务判断
    if not rwAreaBox_CheckTask(nMapId) then
        return
    end
    --根据掩码判断是否为新时间段
    local nRefreshTimeStage = rwAreaBox_CheckTime(nMapId)
    if nRefreshTimeStage == -1 then
        --根据掩码记录刷新宝箱
        rwAreaBox_AddBox(nMapId)
        return
    end
--    --更新时间掩码
--    rwAreaBox_UpdateTimeData(nMapId)
    --更新刷新方式及掩码
    rwAreaBox_LoopRefresh(nMapId,nRefreshTimeStage)
    --重新随机宝箱
    rwAreaBox_RandomBox(nMapId)
    --根据掩码记录刷新宝箱
    rwAreaBox_AddBox(nMapId)

end


--判断当前地图是否配置了该时间点
function rwAreaBox_CheckTimeConfig(nMapId,nHour,nMin)
    local tTimeConfig = tAreaBoxInfo[nMapId]["TimeConfig"]
    --如果定时器触发的时间点，在当前地图有配置，则进行刷新
    for index,tTime in pairs(tTimeConfig) do
        if tTime.Hour == nHour and tTime.Min == nMin then
            return true
        end
    end
    return false
end

--定时器触发
--nHour,nMin:定时器触发时间
function rwAreaBox_TimerTigger(nHour,nMin)
    --地图判断，当前地图是否需要刷新宝箱
    local nMapId = rwUserGetCurMapId()
    if not tAreaBoxInfo[nMapId] then
        return
    end
    --判断当前地图是否配置了该时间点
    if not rwAreaBox_CheckTimeConfig(nMapId,nHour,nMin) then
        return
    end
        
    --根据掩码判断是否为新时间段
    local nRefreshTimeStage = rwAreaBox_CheckTime(nMapId)
    if nRefreshTimeStage == -1 then
        --不是新时段，不进行刷新
        return
    end
    
    --前置任务判断
    if not rwAreaBox_CheckTask(nMapId) then
        return
    end
    
--    --更新时间掩码
--    rwAreaBox_UpdateTimeData(nMapId)
    
    --计算当前时间在配置的哪个时间段内
    local nRefreshTimeStage = rwAreaBox_CurTimeStage(nMapId)
    --更新刷新方式及掩码
    rwAreaBox_LoopRefresh(nMapId,nRefreshTimeStage)
    --重新随机宝箱
    rwAreaBox_RandomBox(nMapId)
    --根据掩码记录刷新宝箱
    rwAreaBox_AddBox(nMapId)

end

--将刷新时间点加入定时器
local tTimeNode = {}
for k,v in pairs(tAreaBoxInfo) do
    for index,tTime in pairs(v.TimeConfig) do
        local sHour = tTime.Hour >= 10 and tTime.Hour or "0" .. tTime.Hour
        local sMin = tTime.Min >= 10 and tTime.Min or "0" .. tTime.Min

        local nTime = tonumber(sHour .. sMin)
        --去重后加入时间段
        if not rwComElementIsExit(tTimeNode,nTime) then
            table.insert(tTimeNode,nTime)
            tUserOntimerFunc_HM[nTime] = tUserOntimerFunc_HM[nTime] or {}
            table.insert(tUserOntimerFunc_HM[nTime],rwAreaBox_TimerTigger)
        end
    end
end



