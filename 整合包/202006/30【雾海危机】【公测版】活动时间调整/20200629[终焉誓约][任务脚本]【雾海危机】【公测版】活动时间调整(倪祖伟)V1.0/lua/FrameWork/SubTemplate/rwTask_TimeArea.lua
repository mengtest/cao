--region rwTask_TimeArea.lua
--Purpose:		时间区域子任务模板
--Creator: 		倪祖伟
--Created:		2019-10-10
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-06-29 $
--RCS-ID:		$Revision: 4 $
--endregion

rwTask_TimeArea = class("rwTask_TimeArea",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.TimeArea] = rwTask_TimeArea

function rwTask_TimeArea:AcceptTask_Interface()
    if not rwTask_TimeArea_IsGetTime(self._TaskInfo["Activitime"]) then
        if self._TaskInfo["NoTimeDialogId"] then
            rwOpenNpcChatDialog(self._TaskInfo["NoTimeDialogId"])
        end
    -- elseif self._TaskInfo["AutoWay"] then
    else
        self:AutoWay("TimeArea")
    end
end

--任务面板点击
function rwTask_TimeArea:OnTaskPanelClick()
    if not self:TaskIsComplete() then
        self:AcceptTask_Interface()
        return
    end

    if self._TaskInfo["EndNpc"] and self._TaskInfo["EndNpc"] ~= 0 then
        --寻路到完成任务NPC
        self:AutoWay("End")
    else
        self:FinishTask()
    end
end

function rwTask_TimeArea_IsGetTime(Info)
    if rwChkTable(Info["Events"]) and rwChkTable(Info["Events"][1]) then
        return rwBaseAward:create(Info):ChkEventCond(Info["Events"][1])
    end
    return false
end
