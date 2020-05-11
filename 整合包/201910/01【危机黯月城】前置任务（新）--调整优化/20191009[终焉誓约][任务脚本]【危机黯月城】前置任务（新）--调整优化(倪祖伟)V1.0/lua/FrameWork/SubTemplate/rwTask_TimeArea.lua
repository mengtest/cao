--region rwTask_TimeArea.lua
--Purpose:		时间区域子任务模板
--Creator: 		倪祖伟
--Created:		2019-10-10
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2019-10-10 $
--RCS-ID:		$Revision: 1 $
--endregion

rwTask_TimeArea = class("rwTask_TimeArea",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.TimeArea] = rwTask_TimeArea

function rwTask_TimeArea:AcceptTask_Interface()
    if not rwTask_TimeArea_IsGetTime(self._TaskInfo) then
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

    if not rwChkTable(Info["ActivityTime"]) then
        return false
    end
    local tTime = rwComGetCurrentTimebyTable()

    for _,v in ipairs(Info["ActivityTime"]) do
        if not v["Type"] then
            return false
        end

        if v["StartTime"] > v["EndTime"]then
            return false
        elseif v["StartTime"] > tTime[v["Type"]] or tTime[v["Type"]] > v["EndTime"] then
            return false
        elseif v["StartTime"] < tTime[v["Type"]] and tTime[v["Type"]] < v["EndTime"] then
            return true
        end
        --如果当前时间=start或者end，进行下一type比较
    end
    return true
end
