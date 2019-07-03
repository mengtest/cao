--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--endregion

rwTask_ChooseOption = class("rwTask_ChooseOption",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION] = rwTask_ChooseOption



function rwTask_ChooseOption:OnTaskDialogClick(nOptionIndex)
    --rwPrintWarnLog("rwTask_ChooseOption:OnTaskDialogClick" .. self._TaskId)
    if self:UserIsInTask() then
        if self._TaskInfo["OptionTask"..nOptionIndex] then
           rwTaskSetFinish(self._TaskId)
           self:DelDynaObj(CONST_TASK_INFO_DELTYPE.Complete)
           self:DelDynaObj(CONST_TASK_INFO_DELTYPE.Success)
           self:FinishTask_GetAward()
           if self._TaskInfo["OptionFunc"..nOptionIndex] and rwChkFunc(self._TaskInfo["OptionFunc"..nOptionIndex]) then
              self._TaskInfo["OptionFunc"..nOptionIndex]()
           end
           self:FinishTask_AcceptNextTask(nOptionIndex)
        end        
    end
end

function rwTask_ChooseOption:FinishTask_AcceptNextTask(nOptionIndex)
    --rwPrintWarnLog("rwTask_ChooseOption:FinishTask_AcceptNextTask" .. self._TaskId)
	if rwChkInt(nOptionIndex) then
		if self._TaskInfo["OptionTask"..nOptionIndex] and self._TaskInfo["OptionTask"..nOptionIndex] ~= 0 then
			rwLinkTaskAccept(self._TaskInfo["OptionTask"..nOptionIndex])
		end
	end
    
end

--陷阱触发
function rwTask_ChooseOption:TrapOnTask()
    if self._TaskInfo["DialogId"] then
        rwOpenNpcChatDialog(self._TaskInfo["DialogId"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
    end
end

--采集触发
function rwTask_ChooseOption:OnCollectEndCallBack()
    if self._TaskInfo["DialogId"] then
        rwOpenNpcChatDialog(self._TaskInfo["DialogId"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
    end
end