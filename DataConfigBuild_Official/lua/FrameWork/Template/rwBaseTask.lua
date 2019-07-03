--region rwBaseTask.lua
--Date
--此文件由[BabeLua]插件自动生成
--任务基类
--YJX


--endregion

rwBaseTask = class("rwBaseTask")

--===============================================================================--
--=========						  构造模块      						=========--
--===============================================================================--
function rwBaseTask:ctor(nTaskId)
    self._TaskId = nTaskId
    self._TaskInfo = rwtTask[self._TaskId] or {}
    self._TaskType = self._TaskInfo["TaskType"] or CONST_TASK_TYPE.MAIN
	self._TaskQuality = self._TaskInfo["TaskQuality"] or 0    --任务品质 针对委托任务，用于监听
end

--===============================================================================--
--=========						条件查询模块							=========--
--===============================================================================--
--是否符合任务可接受的条件
function rwBaseTask:IsCanAccept()
    if not self._TaskInfo then  --任务配置不存在
        return false
    end

	if self._TaskInfo.PreTaskId and self._TaskInfo.PreTaskId ~= 0 then   --前置任务是否已经完成 
        if not self:TaskIsFinish(self._TaskInfo.PreTaskId) then       
            --rwPrintWarnLog("rwBaseTask:IsCanAccept -1")
            return false
        end
	end

    if self:IsSameTypeTaskExist() then  --特定类型,同类型任务不可同时存在
        --rwPrintWarnLog("rwBaseTask:IsCanAccept -2")
        return false
    end

    if self:UserIsInTask() then   --玩家已有该任务
        --rwPrintWarnLog("rwBaseTask:IsCanAccept -3")
        return false
    end

    if self:TaskIsFinish(self._TaskId) then  --已移到完成表中的任务不可再接
        --rwPrintWarnLog("rwBaseTask:IsCanAccept -4")
        return false
    end

    return true
end

--任务是否已接(flag == 1)
function rwBaseTask:TaskIsAccept()
    return rwTaskIsAccept(self._TaskId)
end

--玩家是否已经在任务中(已接且未完成)
function rwBaseTask:UserIsInTask()
    return rwTaskChkUserInTask(self._TaskId)
end

--是否已拥有同类型任务
function rwBaseTask:IsSameTypeTaskExist()

end

--判断任务是否已达成条件
function rwBaseTask:TaskIsComplete()
    if rwTaskGetData(self._TaskId, CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG) == 2 then
        return true
    end
    return false
end

--判断任务是否已完成（已领取奖励）
function rwBaseTask:TaskIsFinish(nTaskId)
    --rwPrintWarnLog("rwBaseTask:TaskIsFinish -1")
    if rwTaskGetFinishMask(nTaskId) == 1 then
        --rwPrintWarnLog("rwBaseTask:TaskIsFinish -2")
        return true
    end
    --rwPrintWarnLog("rwBaseTask:TaskIsFinish -3-" ..rwTaskGetFinishMask(nTaskId))
    --rwPrintWarnLog("rwBaseTask:TaskIsFinish -3")
    return false
end

--===============================================================================--
--=========					  接受任务流程模块							=========--
--===============================================================================--
--添加任务记录(未接受，flag为0)
function rwBaseTask:AddTaskRecord()
    --rwPrintWarnLog("rwBaseTask:AddTaskRecord" .. self._TaskId)
    if self:IsCanAccept() then
		if self._TaskType == CONST_TASK_TYPE.MERCENARY then --委托任务
			--rwPrintErrorLog("222接受了委托任务"..self._TaskId.."品质："..self._TaskQuality)
			return rwTaskAdd(self._TaskId,self._TaskType,0,0,self._TaskQuality)		
		end
		return rwTaskAdd(self._TaskId,self._TaskType,0)
        
    end
    return false
end

--接受任务
function rwBaseTask:AcceptTask()
    --rwPrintWarnLog("rwBaseTask:AcceptTask" .. self._TaskId)
    if self:IsCanAccept() then
        self:AcceptTask_CommonProcess()        
        self:CreateDynaObj()
        self:AcceptTask_Dialog()        
        self:AcceptTask_Battle()
		self:AcceptTask_TaskDialog()
		self:AcceptTask_OpenTransfer()
		self:AcceptTask_WorldMapLock()
        self:AutoWay("Start")
        self:AcceptTask_StartGuide()
        self:AcceptTask_Interface()
    else
        return false
    end
    return true
end

--接受任务掩码处理
function rwBaseTask:AcceptTask_CommonProcess()
    --rwPrintWarnLog("rwBaseTask:AcceptTask_CommonProcess" .. self._TaskId)    
    if rwTaskIsExist(self._TaskId) then
        self:SetTaskAcceptFlag()
    else
		if self._TaskType == CONST_TASK_TYPE.MERCENARY then --委托任务
			-- rwPrintErrorLog("333接受了委托任务"..self._TaskId.."品质："..self._TaskQuality)
			 rwTaskAdd(self._TaskId,self._TaskType,1,0,self._TaskQuality)	
		else
			 rwTaskAdd(self._TaskId,self._TaskType,1)
		end
       
    end
    if self._TaskType == CONST_TASK_TYPE.QUICKSEND then  --佣兵日常处理
        QuickSendTask_AcceptTask(self._TaskId)
    end
end

--接受任务对白
function rwBaseTask:AcceptTask_Dialog()
    --rwPrintWarnLog("rwBaseTask:AcceptTask_Dialog" .. self._TaskId)
    if self._TaskInfo["AcceptDialogId"] then
        rwOpenNpcChatDialog(self._TaskInfo["AcceptDialogId"],CONST_NPCCHAT_TYPE.TASK, self._TaskId)
    end
end
--接受任务 自动任务对白
function rwBaseTask:AcceptTask_TaskDialog()
    --rwPrintWarnLog("rwBaseTask:AcceptTask_TaskDialog" .. self._TaskId)
    if self._TaskInfo["AutoTaskDialog"] then
        rwOpenNpcChatDialog(self._TaskInfo["AutoTaskDialog"],CONST_NPCCHAT_TYPE.TASK, self._TaskId)
    end
end

--接受任务战斗
function rwBaseTask:AcceptTask_Battle()
    --rwPrintWarnLog("rwBaseTask:AcceptTask_Battle" .. self._TaskId)
    if self._TaskInfo["AcceptBattleGenId"] then
    	if not rwHasGenEvent(self._TaskInfo["AcceptBattleGenId"]) then
		rwAddGenEvent(self._TaskInfo["AcceptBattleGenId"])
	end
        rwAutoBattle(self._TaskInfo["AcceptBattleGenId"])
    end
end
--设置接受标识
function rwBaseTask:SetTaskAcceptFlag()
    --rwPrintWarnLog("rwBaseTask:SetTaskAcceptFlag" .. self._TaskId)
    self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG,1)
end

--解锁传送阵
function rwBaseTask:AcceptTask_OpenTransfer()
    --rwPrintWarnLog("rwBaseTask:AcceptTask_OpenTransfer" .. self._TaskId)
    if self._TaskInfo.OpenTransfer then
		local bLock = rwMapGetTransferMask(self._TaskInfo.OpenTransfer)
		if bLock == false then
			--rwPrintWarnLog("OpenTransfer" .. self._TaskInfo.OpenTransfer)
			rwSetTransferMask(self._TaskInfo.OpenTransfer)
			if self._TaskInfo.OpenTransferTip then
				rwSendSystemMessage(self._TaskInfo.OpenTransferTip,2)
			end
		end
		
    end
	
end

--解锁世界地图
function rwBaseTask:AcceptTask_WorldMapLock()
    --rwPrintWarnLog("rwBaseTask:AcceptTask_WorldMapLock" .. self._TaskId)
    if self._TaskInfo.WorldMapLock then
		--rwPrintWarnLog("WorldMapLock" .. self._TaskInfo.WorldMapLock)
		if rwChkTable(self._TaskInfo.WorldMapLock) then
			for k,v in pairs(self._TaskInfo.WorldMapLock) do	
				rwSysSetWorldMapLockMask(self._TaskInfo.WorldMapLock[k])
			end
		else
			rwSysSetWorldMapLockMask(self._TaskInfo.WorldMapLock)
		end		
    end	
end

--接受任务时执行引导
function rwBaseTask:AcceptTask_StartGuide()
    --rwPrintWarnLog("rwBaseTask:AcceptTask_StartGuide" .. self._TaskId)
    if self._TaskInfo["StartGuide"] then
        rwStartGuide(self._TaskInfo["StartGuide"],self._TaskInfo["StartGuideType"])
    end
end

--接受任务后的额外接口（为兼容目前模板先配置）
function rwBaseTask:AcceptTask_Interface()
    --rwPrintWarnLog("rwBaseTask:AcceptTask_Interface" .. self._TaskId)
    if rwChkFunc(self._TaskInfo["AcceptFunc"]) then
        self._TaskInfo["AcceptFunc"]()
    end
end

--===============================================================================--
--=========					    任务流程模块							=========--
--===============================================================================--
--更新任务对应的data位的值
function rwBaseTask:UpdateTaskData(nIndex, nVal)
    rwTaskSetData(self._TaskId, nIndex, nVal)
end

--创建任务相关的动态对象
function rwBaseTask:CreateDynaObj()
    --rwPrintWarnLog("rwBaseTask:CreateDynaObj" .. self._TaskId)
--    local nCreateMapId = self._TaskInfo["DynaNpcGroupMapId"]
    local nUserMapId = rwUserGetCurMapId()
    local bComplete = rwTaskIsComplete(self._TaskId)
    if rwChkTable(self._TaskInfo["DynaNpcGroupGen"]) then
        for _,v in pairs(self._TaskInfo["DynaNpcGroupGen"]) do
            local nDelType = v.DelType or CONST_TASK_INFO_DELTYPE.Complete
            local nCreateMapId = v.MapId or 0
            if (nCreateMapId == nUserMapId) and not(bComplete and (nDelType == CONST_TASK_INFO_DELTYPE.Complete)) then
                if v.GenId and (not rwHasGenEvent(v.GenId)) then
                   rwAddGenEvent(v.GenId)
                end
            end
        end
    end
end

--删除任务相关的动态对象
function rwBaseTask:DelDynaObj(nDelType)
    --rwPrintWarnLog("rwBaseTask:DelDynaObj" .. self._TaskId)
    nDelType = nDelType or CONST_TASK_INFO_DELTYPE.Complete
    if rwChkTable(self._TaskInfo["DynaNpcGroupGen"]) then
        for k,v in pairs(self._TaskInfo["DynaNpcGroupGen"]) do
            local nDelTypeCurrent = v["DelType"] or CONST_TASK_INFO_DELTYPE.Complete 
            if nDelTypeCurrent == nDelType then
                local nGenId = v.GenId
                if nGenId and rwHasGenEvent(nGenId) then
                    rwDelGenEvent(nGenId)
                end
            end
        end
    end 
end

--自动寻路  TODO
function rwBaseTask:AutoWay(sMark)
    --rwPrintWarnLog("rwBaseTask:AutoWay" .. self._TaskId)
    local tAutoWayInfo = self._TaskInfo[sMark.."AutoWay"]
    if tAutoWayInfo and tAutoWayInfo.MapId and tAutoWayInfo.Pos then
        rwFindPath(tAutoWayInfo.MapId,tAutoWayInfo.Pos)
    end
	if tAutoWayInfo then
		local sFindWayData
		if tAutoWayInfo.FindWayTypeId ~= 0 and tAutoWayInfo.FindWayMapId and tAutoWayInfo.FindWayGroupId and tAutoWayInfo.FindWayGenId 	then 
			sFindWayData = tAutoWayInfo.FindWayTypeId..' '..tAutoWayInfo.FindWayMapId..' '..tAutoWayInfo.FindWayGroupId..' '..tAutoWayInfo.FindWayGenId
			rwFindWay(sFindWayData)
		elseif tAutoWayInfo.FindWayTypeId == 0 and tAutoWayInfo.FindWayMapId and tAutoWayInfo.FindWayPos then
			sFindWayData = tAutoWayInfo.FindWayTypeId..' '..tAutoWayInfo.FindWayMapId..' '..tAutoWayInfo.FindWayPos
			rwFindWay(sFindWayData)
		end
	end
end


--===============================================================================--
--=========					  完成任务流程模块							=========--
--===============================================================================--
--任务条件达成未交任务
function rwBaseTask:CompleteTask()
    --rwPrintWarnLog("rwBaseTask:CompleteTask" .. self._TaskId)
    if not self:UserIsInTask() then
        return
    end
    self:SetTaskCompleteFlag()
    self:AutoWay("End")
    self:CompleteTask_StartGuide()
	--删除动态创建
    self:DelDynaObj(CONST_TASK_INFO_DELTYPE.Complete)
    MercenaryDailyTask_CompleteDialog(self._TaskId)
    if self:TaskIsAutoFinish() then
        self:FinishTask()
    end
end


--设置完成标识
function rwBaseTask:SetTaskCompleteFlag()
    --rwPrintWarnLog("rwBaseTask:SetTaskCompleteFlag" .. self._TaskId)
    self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG,2)
end

--是否自动完成任务
function rwBaseTask:TaskIsAutoFinish()
    if self._TaskInfo["IsClickComplete"] and self._TaskInfo["IsClickComplete"] == 1 then
        return false
    end
    return true
end

--完成任务
function rwBaseTask:FinishTask()
    --rwPrintWarnLog("rwBaseTask:FinishTask" .. self._TaskId)
    --流程：1、判断是否条件达成 2、置相关掩码 3、删除任务相关道具\NPC\怪物  4、给奖励 5、接后续
    if not self:TaskIsComplete() then
        return
    end

    if self._TaskInfo["TaskQuality"] then        
        local nAwardId = TaskGetDynamicAwardId(self._TaskInfo["AwardGroupId"],self._TaskInfo["TaskQuality"])
        local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
        tAwardInfo["Awards"]["Events"] = {}
        tAwardInfo["Awards"]["Events"][1] = {}
        tAwardInfo["Awards"]["Events"][1]["GetServerAward"] = {}
        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId
        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = self._TaskId
        if not rwBaseAward:create(tAwardInfo["Awards"]):ChkCondition() then
            --rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10001],2,1)
            return   
        end
    elseif rwChkTable(self._TaskInfo["Awards"]) then
        if not rwBaseAward:create(self._TaskInfo["Awards"]):ChkCondition() then      
            --rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10001],2,1)
            return            
        end
    end
        
    if self:FinishTask_CommonProcess() then
        --完成任务删除动态创建NPC(除了不删除的全部删掉)
        self:DelDynaObj(CONST_TASK_INFO_DELTYPE.Complete)
        self:DelDynaObj(CONST_TASK_INFO_DELTYPE.Success)

        self:FinishTask_GetAward()
        self:FinishTask_Interface()
        self:FinishTask_OpenMercenaryTask()
        --self:AutoWay("End")
        self:FinishTask_OpenMercenaryMenu() 
        self:FinishTask_OpenAwardMenu() 
        self:FinishTask_UnLockSysButton()
        self:FinishTask_UpdateArrestProgress()
        self:FinishTask_RefreshAreaBox() 
		self:FinishTask_UnlockHeadIcon()
        self:FinishTask_AcceptNextTask()
    end
end

--完成任务操作（表操作、掩码操作）
function rwBaseTask:FinishTask_CommonProcess() 
    --rwPrintWarnLog("rwBaseTask:FinishTask_CommonProcess" .. self._TaskId)
    if self._TaskType == CONST_TASK_TYPE.MERCENARY then
        if not rwSysIncreaseUserTimes(CONST_USER_TIMESTYPE.Mercenary) then  --扣除次数
            return false
        end 
--    elseif self._TaskType == CONST_TASK_TYPE.QUICKSEND then
--        if not rwSysIncreaseUserTimes(CONST_USER_TIMESTYPE.MercenaryDaily) then  --扣除次数
--            return false
--        end  
    end
    if rwTaskSetFinish(self._TaskId) then  --设完成
        return true
    end
    return false
end

--完成任务的奖励  //TODO 待优化
function rwBaseTask:FinishTask_GetAward()
    if self._TaskInfo["TaskQuality"] then        
        local nAwardId = TaskGetDynamicAwardId(self._TaskInfo["AwardGroupId"],self._TaskInfo["TaskQuality"])
        local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
        tAwardInfo["Awards"]["Events"] = {}
        tAwardInfo["Awards"]["Events"][1] = {}
        tAwardInfo["Awards"]["Events"][1]["GetServerAward"] = {}
        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId
        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = self._TaskId

		rwBaseAward:create(tAwardInfo["Awards"]):Process()
        -- local awardCode = rwBaseAward:create(CONST_ACTION_TYPE.TASK,self._TaskId,tAwardInfo):Process()
        -- if awardCode ~= CONST_CODE.OK then        
            -- rwPrintErrorLog("taskId:" .. self._TaskId .. "dynamic award error!")            
        -- end
    elseif rwChkTable(self._TaskInfo["Awards"]) then
		rwBaseAward:create(self._TaskInfo["Awards"]):Process() 
        -- local awardCode = rwBaseAward:create(CONST_ACTION_TYPE.TASK,self._TaskId,self._TaskInfo["Awards"]):Process() 
        -- if awardCode ~= CONST_CODE.OK then        
            -- rwPrintErrorLog("taskId:" .. self._TaskId .. "award error!")            
        -- end
    end

    if self._TaskType == CONST_TASK_TYPE.CHANGE_CLASS then
        if self._TaskInfo["HeroId"] then
            rwHeroChangeClass(self._TaskInfo["HeroId"])
        end

    elseif self._TaskType == CONST_TASK_TYPE.MERCENARY then
        local nTownId = self._TaskInfo["MercenaryTownId"]
        rwFinishMercenaryTask(self._TaskId)
        rwMercenaryRandomTaskToAdd(nTownId)

    elseif self._TaskType == CONST_TASK_TYPE.QUICKSEND then
        QuickSendTask_FinishTask(self._TaskId)

    elseif self._TaskType == CONST_TASK_TYPE.PATROL then
        PatrolTask_Finish(self._TaskId)

    elseif self._TaskType == CONST_TASK_TYPE.REWARD then
        RweardTask_Finish(self._TaskId)
    end
end

--完成任务后的额外接口（为兼容目前模板先配置）
function rwBaseTask:FinishTask_Interface()
    --rwPrintWarnLog("rwBaseTask:FinishTask_Interface" .. self._TaskId)
    if rwChkTable(self._TaskInfo["AwardCreateGen"]) then
        for i,v in pairs(self._TaskInfo["AwardCreateGen"]) do
            if not rwHasGenEvent(v) then
                rwAddGenEvent(v)
            end
        end
    end
    if rwChkTable(self._TaskInfo["AwardDeleteGen"]) then
        for i,v in pairs(self._TaskInfo["AwardDeleteGen"]) do
            if  rwHasGenEvent(v) then
                rwDelGenEvent(v)
            end
        end
    end
    if rwChkFunc(self._TaskInfo["AwardFunc"]) then
        self._TaskInfo["AwardFunc"]()
    end
end

--后续任务
function rwBaseTask:FinishTask_AcceptNextTask()
    --rwPrintWarnLog("rwBaseTask:FinishTask_AcceptNextTask" .. self._TaskId)
    if self._TaskInfo.NextTaskId and self._TaskInfo.NextTaskId ~= 0 then
        rwLinkTaskAccept(self._TaskInfo.NextTaskId)
    end
	
	if self._TaskInfo.AcceptExtraTaskId and rwChkInt(self._TaskInfo.AcceptExtraTaskId) then
		rwLinkTaskAccept(self._TaskInfo.AcceptExtraTaskId)
		
		if not self._TaskInfo.AcceptExtraTaskNotMsg then
			local sMessage = rwtTask[self._TaskInfo.AcceptExtraTaskId]["Title"] or "新的支线任务"
			rwSendSystemMessage("接受了<color=#fcf633>"..sMessage.."</color>",2,2)
		end
	elseif self._TaskInfo.AcceptExtraTaskId and rwChkTable(self._TaskInfo.AcceptExtraTaskId) then
		for i,v in pairs(self._TaskInfo.AcceptExtraTaskId) do
			rwLinkTaskAccept(v)
			
			if not self._TaskInfo.AcceptExtraTaskNotMsg then
				local sMessage = rwtTask[v]["Title"] or "新的支线任务"
				rwSendSystemMessage("接受了<color=#fcf633>"..sMessage.."</color>",2,2)
			end
		end
	end
end

--失败时的后续任务
function rwBaseTask:TaskFail_AcceptNextTask()
    --rwPrintWarnLog("rwBaseTask:TaskFail_AcceptNextTask" .. self._TaskId)
    if self._TaskInfo.FailNextTaskId and self._TaskInfo.FailNextTaskId ~= 0 then
        rwLinkTaskAccept(self._TaskInfo.FailNextTaskId)
    end
end

--解锁片区佣兵任务
function rwBaseTask:FinishTask_OpenMercenaryTask()
    --rwPrintWarnLog("rwBaseTask:FinishTask_OpenMercenaryTask" .. self._TaskId)
    if self._TaskInfo.OpenMercenaryTask then
        local nAreaId = self._TaskInfo.OpenMercenaryTask.AreaId
        local nTownId = self._TaskInfo.OpenMercenaryTask.TownId
        if nAreaId and nTownId then
            if rwSysSetTaskLockMask(nAreaId, nTownId) then
                rwMercenaryRandomTaskToAdd(nTownId)  --解锁后就刷新一个该城镇的任务
            else                    
                --rwPrintWarnLog("片区" ..nAreaId.. "," .. nTownId .."解锁失败")
            end
        end
    end
end

--佣兵委托任务完成后自动打开佣兵委托界面
function rwBaseTask:FinishTask_OpenMercenaryMenu()
    --rwPrintWarnLog("rwBaseTask:FinishTask_OpenMercenaryMenu" .. self._TaskId)
    if self._TaskType == CONST_TASK_TYPE.MERCENARY then
        rwOpenLocalWnd(CONST_MENUTYPE.Mercenary)
    end
end

--悬赏任务完成后自动打开悬赏界面
function rwBaseTask:FinishTask_OpenAwardMenu()
    if self._TaskType == CONST_TASK_TYPE.REWARD then
        if (not self._TaskInfo.NextTaskId) and (not self._TaskInfo.FinalReward) then
            rwOpenLocalWnd(CONST_MENUTYPE.Reward)
        end
    end
end

--解锁系统功能按钮
function rwBaseTask:FinishTask_UnLockSysButton()
    --rwPrintWarnLog("rwBaseTask:FinishTask_UnLockSysButton" .. self._TaskId)
    if self._TaskInfo["UnLockSysId"] then
        for i,v in pairs(self._TaskInfo["UnLockSysId"]) do
            rwAddUserRecordData_System_Unlock(v)
        end
    end
end

--更新悬赏进度
function rwBaseTask:FinishTask_UpdateArrestProgress()
    if self._TaskInfo["ArrestId"] and self._TaskInfo["ArrestId"] ~= 0 then
        rwUpdataArrestTaskData(self._TaskInfo["ArrestId"],2)
    end
end

--刷出片区宝箱
function rwBaseTask:FinishTask_RefreshAreaBox()
    if self._TaskInfo["OpenAreaBox"] and self._TaskInfo["OpenAreaBox"] ~= 0 then
        rwAreaBox_EnterMapInit(self._TaskInfo["OpenAreaBox"])
    end
end

        
--===============================================================================--
--=========					       玩法模块			     				=========--
--===============================================================================--
--对白回调
function rwBaseTask:DialogEndCallBack(nDialogId)
    --rwPrintWarnLog("rwBaseTask:DialogEndCallBack" .. self._TaskId)
    if self._TaskInfo["CloseDialog"] and self._TaskInfo["CloseDialog"] == 0 then
        --配置0不关闭
    else
        --不配置默认关闭对话框
        rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,nDialogId)
    end
    if self:UserIsInTask() then
        self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,1)
        
        if rwChkFunc(self._TaskInfo["DialogueEndFunc"]) then
            self._TaskInfo["DialogueEndFunc"]()            
        end 
        
        self:CompleteTask()
    end
end

--完成任务时对白回调
function rwBaseTask:FinishDialogCallBack(nDialogId)
    self:FinishTask()
end

--任务相关陷阱触发
function rwBaseTask:TrapOnTask()
    --rwPrintWarnLog("rwBaseTask:TrapOnTask" .. self._TaskId)
end

--怪物组死亡触发
function rwBaseTask:MonsterGroupBeKilled()
    --rwPrintWarnLog("rwBaseTask:MonsterGroupBeKilled" .. self._TaskId)
end

--副本通关触发
function rwBaseTask:OnPassCopyMap()
    --rwPrintWarnLog("rwBaseTask:OnPassCopyMap" .. self._TaskId)
end

--采集点击
function rwBaseTask:OnCollectClick()
    --rwPrintWarnLog("rwBaseTask:OnCollectClick" .. self._TaskId)
end

--采集结束回调
function rwBaseTask:OnCollectEndCallBack()
    --rwPrintWarnLog("rwBaseTask:OnCollectEndCallBack" .. self._TaskId)
end

--任务面板点击
function rwBaseTask:OnTaskPanelClick()
    --rwPrintWarnLog("rwBaseTask:OnTaskPanelClick" .. self._TaskId)
    if not self:TaskIsComplete() then
        if self._TaskInfo["TaskTips"]  then
            rwSendSystemMessage(self._TaskInfo["TaskTips"])
        end
        return
    end

    if self._TaskInfo["EndNpc"] and self._TaskInfo["EndNpc"] ~= 0 then
        --寻路到完成任务NPC
        self:AutoWay("End")
    else
        self:FinishTask()
    end
end

--任务中对白选项点击
function rwBaseTask:OnTaskDialogClick()
     --rwPrintWarnLog("rwBaseTask:OnTaskDialogClick" .. self._TaskId)
end

--解谜屋物件点击
function rwBaseTask:OnTaskPuzzleObjClick()
    --rwPrintWarnLog("rwBaseTask:OnTaskPuzzleObjClick" .. self._TaskId)
end

--开宝箱触发
function rwBaseTask:OnOpenTreasureBox()
    --rwPrintWarnLog("rwBaseTask:OnOpenTreasureBox" .. self._TaskId)
end

--完成任务触发引导
function rwBaseTask:CompleteTask_StartGuide()
    --rwPrintWarnLog("rwBaseTask:CompleteTask_StartGuide" .. self._TaskId)
    if self._TaskInfo["CompleteGuide"] then
        rwStartGuide(self._TaskInfo["CompleteGuide"],self._TaskInfo["CompleteGuideType"])
    end
end
--完成任务解锁头像
function rwBaseTask:FinishTask_UnlockHeadIcon()
    --rwPrintWarnLog("rwBaseTask:CompleteTask_UnlockHeadIcon" .. self._TaskId)
    if rwChkTable(self._TaskInfo["UnlockHeadIcon"])  then
		for i,v in pairs(self._TaskInfo["UnlockHeadIcon"]) do 
			if v["HeadIconId"] then
				local nRecordId = v["RecordId"] or 11
				rwAddUserRecordData(v["RecordId"],v["HeadIconId"])
			end
		end		
    end
end