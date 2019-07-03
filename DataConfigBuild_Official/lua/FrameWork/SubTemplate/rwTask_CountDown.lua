--region rwTask_CountDown.lua
--Date
--此文件由[BabeLua]插件自动生成
--倒计时任务
--MZY


--endregion

rwTask_CountDown = class("rwTask_CountDown",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.COUNTDOWN] = rwTask_CountDown

--接受任务掩码处理
function rwTask_CountDown:AcceptTask_CommonProcess()
    --rwPrintWarnLog("rwTask_CountDown:AcceptTask_CommonProcess" .. self._TaskId)  
--    rwBaseTask:AcceptTask_CommonProcess()  
    if rwTaskIsExist(self._TaskId) then
        self:SetTaskAcceptFlag()
    else
        if self._TaskInfo["TaskFinishTime"] then
            local nTaskFinishTime = self._TaskInfo["TaskFinishTime"] + os.time()
            self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_FINISH_TIME,nTaskFinishTime)
            rwTaskAdd(self._TaskId,self._TaskType,1,nTaskFinishTime)
        elseif self._TaskInfo["ServerFinishTaskTime"] then
            --rwPrintErrorLog("设置开服"..self._TaskInfo["ServerFinishTaskTime"].."秒完成任务")
            --开服后X秒后完成任务
            local nTaskFinishTime = self._TaskInfo["ServerFinishTaskTime"] + rwGetStartServerTime()
            self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_FINISH_TIME,nTaskFinishTime)
            rwTaskAdd(self._TaskId,self._TaskType,1,nTaskFinishTime)
        end


        if self._TaskInfo["TaskDayFinishTime"] then
            local nTaskFinishTime = os.time() + self._TaskInfo["TaskDayFinishTime"] - os.date('%H',os.time())*3600 - os.date('%M',os.time())*60 - os.date('%S',os.time())
            self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_FINISH_TIME,nTaskFinishTime)
            rwTaskAdd(self._TaskId,self._TaskType,1,nTaskFinishTime)
        end
		if self._TaskType == CONST_TASK_TYPE.QUICKSEND then  
			local nQuickSendFinishTime = rwTempDataGetValue(1210,CONST_TEMP_DATA.RecordTime) + 300  --掩码recordtime 记录掩码时的时间戳 +5分钟
			local nData3 = rwTempDataGetValue(1210,CONST_TEMP_DATA.Data3)
			self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_FINISH_TIME,nQuickSendFinishTime)
			rwTaskAdd(self._TaskId,self._TaskType,1,nQuickSendFinishTime)
--			rwTaskSetData(self._TaskId, CONST_TASK_INFO_INDEX.TASK_DATA6, nData3) --标记周任务当前环数
--			rwTaskSetData(self._TaskId, CONST_TASK_INFO_INDEX.TASK_DATA7, 200)			
		end
    end   
end

--判断任务是否已达成条件
function rwTask_CountDown:TaskIsComplete()
    --rwPrintWarnLog("rwTask_CountDown:TaskIsComplete" .. self._TaskId)
    local nTaskFinishTime = rwTaskGetData(self._TaskId, CONST_TASK_INFO_INDEX.TASK_FINISH_TIME)
    local nCurrentTime = os.time()
    local nRestTime = nTaskFinishTime - nCurrentTime
    if nRestTime <= 0 then
        return true
    end
    return false
end

--任务面板点击
function rwTask_CountDown:OnTaskPanelClick()
    --rwPrintWarnLog("rwTask_CountDown:OnTaskPanelClick" .. self._TaskId)
    if not self:TaskIsComplete() then
		if self._TaskInfo["LackTips"]  then
            rwSendSystemMessage(self._TaskInfo["LackTips"])
            return
        end
        return
    else
        self:SetTaskCompleteFlag()
        self:FinishTask()
    end
end