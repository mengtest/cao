--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion
rwTask_UpLevel = class("rwTask_UpLevel",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.UPLEVEL] = rwTask_UpLevel

function rwTask_UpLevel:AcceptTask_Interface()
    --rwPrintWarnLog("rwTask_UpLevel:AcceptTask_Interface" .. self._TaskId)
    local nLevel = rwUserGetLevel()
    if self._TaskInfo["NeedLevel"] <= nLevel then
        rwTaskSetData(self._TaskId,CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG,2)
        rwOpenNpcChatDialog(self._TaskInfo["DialogId"],CONST_NPCCHAT_TYPE.TASK,self._TaskId)
    end
end


function rwTask_UpLevel:OnTaskPanelClick()
    local nLevel = rwUserGetLevel()
    if self._TaskInfo["NeedLevel"] > nLevel then
        if self._TaskInfo["LackDialogId"]  then
            rwOpenNpcChatDialog(self._TaskInfo["LackDialogId"],CONST_NPCCHAT_TYPE.TASK,self._TaskId)
            return
        end
        if self._TaskInfo["LackTips"]  then
            rwSendSystemMessage(self._TaskInfo["LackTips"])
            return
        end
    else 
        self:SetTaskCompleteFlag()
        self:FinishTask()
        return
    end
end