--rwCopyMapTemplate *.lua
--Date
--副本模板



--endregion

rwCopyMapTemplate = class("rwCopyMapTemplate")

function rwCopyMapTemplate:ctor(nMissionId, nMapId)
    self._MissionId = nMissionId
    self._MapId = nMapId
end

function rwCopyMapTemplate:Process()
    if not self:EnterChk() then        
        return
    end
    self:Enter()
end

--进入副本检查
function rwCopyMapTemplate:EnterChk()    
    --等级判断
    if rwtCopyMapMission[self._MissionId]["ReqLev"] then
        if not rwChkUserReqMinLevel(rwtCopyMapMission[self._MissionId]["ReqLev"]) then
            rwPrintWarnLog("等级不足")
            return false
        end
    end
    --次数判断
    local nTimes = rwtCopyMapMission[self._MissionId]["TimeLimit"]
    if nTimes and rwUserGetTimesLeft(nTimes) < 1 then
		if rwtCopyMapMission[self._MissionId]["TimeLimitMsg"]  then
			rwSendSystemMessage(rwtCopyMapMission[self._MissionId]["TimeLimitMsg"],1)
		else
			rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10002],1)
		end
        return false
    end
    --消耗品判断
    if rwtCopyMapMission[self._MissionId]["ReqItem"] then
        local nReqItemCount = rwtCopyMapMission[self._MissionId]["ReqItemCount"] or 1
        if rwUserGetItemCount(rwtCopyMapMission[self._MissionId]["ReqItem"]) < nReqItemCount then
            rwPrintWarnLog("消耗品数量不足")
            return false
        end
    end
    return true    
end

--进入副本
function rwCopyMapTemplate:Enter()
    --if rwtCopyMapMission[self._MissionId]["EnterToPos"] ~= nil and type(rwtCopyMapMission[self._MissionId]["EnterToPos"]) == "table" then
        if rwtCopyMapMission[self._MissionId]["ReqItem"] then
            if not rwItemDel(rwtCopyMapMission[self._MissionId]["ReqItem"], rwtCopyMapMission[self._MissionId]["ReqItemCount"] or 1) then
                rwPrintWarnLog("物品删除出错")
                return
            end
        end
        if rwUserGetCopyMapStatus() == 0 then
            local nProb = rwtCopyMapMission[self._MissionId]["HiddenCopyMapProb"] or 0
            if nProb ~= 0 then
                local nRandom = math.random(1,100)
                if nRandom <= nProb then                
                    local nHiddenCopyMapID = rwtCopyMapMission[self._MissionId]["HiddenCopyMapID"]
                    if nHiddenCopyMapID and rwtCopyMapMission[nHiddenCopyMapID] then
                        rwEnterMap(nHiddenCopyMapID)
                    end
                    return
                end 
            end           
        end        
       
        rwEnterMap(self._MissionId)
    --end
end








--进入副本初始化操作
function rwCopyMapTemplate:EnterInit()
    local tInfo = rwtCopyMapMission[self._MissionId]["CopyMapInit"]
    if rwChkTable(tInfo) then
		rwBaseAward:create(tInfo):Process()
    end  
    

    if rwtCopyMapMission[self._MissionId] and rwChkFunc(rwtCopyMapMission[self._MissionId]["MapInitFunc"]) then
        rwtCopyMapMission[self._MissionId]["MapInitFunc"](self._MissionId,self._MapId)
    end
end

--创建副本回调
function rwCopyMapTemplate:CopyMapCreate()
    local tInfo = rwtCopyMapMission[self._MissionId]["CreateCopyMap"]
    if rwChkTable(tInfo) then
		rwBaseAward:create(tInfo):Process()
    end  
	if rwtCopyMapMission[self._MissionId] and rwChkFunc(rwtCopyMapMission[self._MissionId]["CreateFunc"]) then
        rwtCopyMapMission[self._MissionId]["CreateFunc"](self._MissionId,self._MapId)
    end
    --进入副本字段接取第一级副本目标
    self:CopyMapAddTarget(1)
end

--副本添加目标
function rwCopyMapTemplate:CopyMapAddTarget(nStep)
    if rwChkTable(rwtCopyMapMission[self._MissionId]["Target" .. nStep]) then
        for _,v in pairs(rwtCopyMapMission[self._MissionId]["Target" .. nStep]) do
            rwBaseTarget:create(v):AddTarget()
        end
    end    
end

--获取目标所在级
function rwCopyMapTemplate:CopyMapGetTargetStep(nTaskId)
    local nIndex = 1
    local nStep
    while(rwtCopyMapMission[self._MissionId]["Target" .. nIndex]) do
        for _,v in pairs(rwtCopyMapMission[self._MissionId]["Target" .. nIndex]) do
            if v == nTaskId then
                nStep = nIndex
                return nStep     
            end
        end
        nIndex = nIndex + 1
    end
    return false
end


--副本某个目标完成处理
function rwCopyMapTemplate:CopyMapTargetFinished(nTaskId)
    local nStepTargetFinishNum = 0 --每个目标层级完成的任务数
    local bIsStepFinish = true
    local nStep = self:CopyMapGetTargetStep(nTaskId)
    if not nStep then
        return
    end

    if rwChkTable(rwtCopyMapMission[self._MissionId]["Target" .. nStep]) then
        for _,v in pairs(rwtCopyMapMission[self._MissionId]["Target" .. nStep]) do
            if not rwIsTargetFinished(v) then
                bIsStepFinish = false
                --break
            else
                nStepTargetFinishNum = nStepTargetFinishNum + 1
            end
        end
    else
        return
    end

    local nNeedFinishNum = rwtCopyMapMission[self._MissionId]["Target" .. nStep .. "_NeedFinishNum"]
    if rwChkInt(nNeedFinishNum) then
        if nNeedFinishNum > 0 and nNeedFinishNum <= #rwtCopyMapMission[self._MissionId]["Target" .. nStep] then
            if nStepTargetFinishNum >= nNeedFinishNum then
                bIsStepFinish = true
            end
        end
    end

    if bIsStepFinish then     
        if nStep == rwtCopyMapMission[self._MissionId]["TargetStepNum"] then  --通关级
			nNextStep = 99
            for _,v in pairs(rwtCopyMapMission[self._MissionId]["Target" .. nStep]) do --删除旧目标
				self:CopyMapTargetStepFinish(nStep)
				rwRemoveMapTaskData(v)
            end 
            if rwChkTable(rwtCopyMapMission[self._MissionId]["Target99"]) then
                self:CopyMapAddTarget(nNextStep)
            end
			self:FinishCopyMap()
        else
			nNextStep = nStep+1
            for _,v in pairs(rwtCopyMapMission[self._MissionId]["Target" .. nStep]) do --删除旧目标
				self:CopyMapTargetStepFinish(nStep)
                if not rwtCopyMapMission[self._MissionId]["Target" .. nStep .. "_IsNotDel"] then
                    rwRemoveMapTaskData(v)
                end
            end 
            if rwChkTable(rwtCopyMapMission[self._MissionId]["Target" .. nNextStep]) then
                self:CopyMapAddTarget(nNextStep)
            end
        end
    end        
end

--（临时）多人副本用
function rwCopyMapTemplate:MulTiCopyMapCreate()
    if rwtCopyMapMission[self._MissionId] and rwChkFunc(rwtCopyMapMission[self._MissionId]["MultiCreateFunc"]) then
        rwtCopyMapMission[self._MissionId]["MultiCreateFunc"](self._MissionId,self._MapId)
    end
end

function rwCopyMapTemplate:MulTiCopyMapDestroy()
    if rwtCopyMapMission[self._MissionId] and rwChkFunc(rwtCopyMapMission[self._MissionId]["MultiDestroyFunc"]) then
        rwtCopyMapMission[self._MissionId]["MultiDestroyFunc"](self._MissionId,self._MapId)
    end
end

--离开副本
--function rwCopyMapTemplate:Leave()
--    if rwtCopyMapMission[self._MissionId]["LeaveToPos"] ~= nil and type(rwtCopyMapMission[self._MissionId]["LeaveToPos"]) == "table" then
--        rwEnterMap(unpack(rwtCopyMapMission[self._MissionId]["LeaveToPos"]))
--    end
--end

--副本通关级奖励
function rwCopyMapTemplate:CopyMapTargetStepFinish(nStep)
	local tInfo = rwtCopyMapMission[self._MissionId]["TargetAward" .. nStep]
	if rwChkTable(tInfo) then
		rwBaseAward:create(tInfo):Process()
	end  
end

---副本通关操作
function rwCopyMapTemplate:FinishCopyMap()
    if not rwSetPassCopyMap() then --设置通关
        return
    end

    rwClearGenEvent(1) --清除剩余NPC
    rwClearGenEvent(2) --清除剩余怪物
	--限时副本相关
	if rwtTimeCopyMap_CopymapId_Info[self._MissionId] then
		local nUserId = rwUserGetId()
		if rwChkTable(rwtCopyMapUserInitInfo[self._MissionId][nUserId]["TimeTempRecord"]) then
			local tInfo = rwtCopyMapUserInitInfo[self._MissionId][nUserId]["TimeTempRecord"]
			for i,v in pairs(tInfo) do
				local nRecord =  v["Record"] or 0
				local nDataValue =  v["DataValue"] or CONST_TEMP_DATA.Data1
				local nValue =  v["Value"] or 0
				if nRecord and nValue then
					if not rwTempDataIsExist(nRecord, nUserId) then
						rwTempDataAdd(nRecord, nUserId)
					end
					rwTempDataSet(nRecord,nValue,nDataValue, nUserId)
				end
			end
		end		
	end
    ---通关任务相关
    if rwtTaskCopyMapInfo[self._MissionId] then
        for TaskId, v in pairs(rwtTaskCopyMapInfo[self._MissionId]) do
            if rwTaskChkUserInTask(TaskId) then
                local nTaskDetailType = rwtTask[TaskId]["TaskDetailType"]
                if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                    ENUM_TASK_TEMPLATE[nTaskDetailType]:create(TaskId):OnPassCopyMap()
                end
            end
        end
    end

    ---通关篝火相关
    if rwChkTable(rwtCopyMapMission[self._MissionId]["Fire"]) then
        local nGenId_BonFire = rwtCopyMapMission[self._MissionId]["Fire"]["GenId"] or 0
        local nLifeTime = rwtCopyMapMission[self._MissionId]["Fire"]["LifeTime"]  ---存在时间
        local nInterVal = rwtCopyMapMission[self._MissionId]["Fire"]["InterVal"]  ---生效间隔
        local nExpBall = rwtCopyMapMission[self._MissionId]["Fire"]["ExpBall"]    ---英雄经验球
		local tTelePos = rwtCopyMapMission[self._MissionId]["Fire"]["TeleportPos"] --玩家传送坐标组
		local tTeleRotation = rwtCopyMapMission[self._MissionId]["Fire"]["TeleportRotation"] --玩家传送的角度
        if nGenId_BonFire ~= 0 and not rwHasGenEvent(nGenId_BonFire) then
            rwAddGenEvent(nGenId_BonFire)   --篝火
        end
        rwAddBonFire(nLifeTime,nInterVal,nExpBall)		
		if rwChkTable(tTelePos)  then
			local tUserList = rwGetCurMapUserList()
            if tUserList then
                for i=1,#tUserList do
                    if tTelePos[i] then
						rwTeleport(1,tUserList[i],tTelePos[i],tTeleRotation[i] or 0)
					end
                end
            end
		end
    end

	--通关掩码相关
	if rwChkTable(rwtCopyMapMission[self._MissionId]["PassSetTemp"]) then
		local nUserId = rwUserGetId()
		local nTempDataID = rwtCopyMapMission[self._MissionId]["PassSetTemp"]["TempDataId"]  or 0
		local nDataIndex = rwtCopyMapMission[self._MissionId]["PassSetTemp"]["DataIndex"] or CONST_TEMP_DATA.Data1
		local nSetValue = rwtCopyMapMission[self._MissionId]["PassSetTemp"]["SetValue"] or 0
		if nTempDataID and nSetValue then
			if not rwTempDataIsExist(nTempDataID, nUserId) then
				rwTempDataAdd(nTempDataID, nUserId)
			end
			rwTempDataSet(nTempDataID,nSetValue,nDataIndex, nUserId)
		end
	end
	if  rwChkTable(rwtCopyMapMission[self._MissionId]["PassSetTempGroup"]) then 
		for i,v in pairs(rwtCopyMapMission[self._MissionId]["PassSetTempGroup"]) do
			
			local nTempDataID = v["TempDataId"]  or 0
			local nDataIndex = v["DataIndex"] or CONST_TEMP_DATA.Data1
			local nSetValue = v["SetValue"] or 0
			if nTempDataID and nSetValue then
				rwUserTempDataSet(nTempDataID,nSetValue,nDataIndex)
			end
		end
	end
	
end



