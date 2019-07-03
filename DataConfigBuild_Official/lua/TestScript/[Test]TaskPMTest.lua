---
--- Created by YJX.
--- DateTime: 2018/7/24 0024 16:41
--- 玩家便捷测试任务

local PMFirstTaskId = 10206
local tCopyMapRewardId = {}
tCopyMapRewardId[3011] = 1000016
tCopyMapRewardId[3021] = 1000012
tCopyMapRewardId[3022] = 1000085
tCopyMapRewardId[3023] = 1000079
tCopyMapRewardId[3024] = 1000088
tCopyMapRewardId[3027] = 1000103
tCopyMapRewardId[3031] = 1000017
tCopyMapRewardId[3032] = 1000018
tCopyMapRewardId[3034] = 1000019
tCopyMapRewardId[3035] = 1000010
tCopyMapRewardId[3044] = 1000166
tCopyMapRewardId[3054] = 1000126
tCopyMapRewardId[3071] = 1000286
tCopyMapRewardId[3084] = 1000097

function TaskPM_SetMainTaskFinish()
    local taskList = rwTaskGetListByType(CONST_TASK_TYPE.MAIN)
    if taskList then
        TaskPM_FinishTask(taskList[1])
    end
end

--设置玩家当前主线任务到指定的任务
--nTaskId
function TaskPM_SetMainTaskTo(nTaskId)
    if not rwChkInt(nTaskId) then
        rwSendSystemMessage("参数错误--1")
        return
    end

    --local nStartTaskId = TaskPM_SearchUnFinishMainTaskId(nTaskId)
    --if not rwChkInt(nStartTaskId) then
    --    rwSendSystemMessage("参数错误--11")
    --    return
    --end

    local nStartTaskId = PMFirstTaskId
    TaskPM_StartSetTask(nStartTaskId,nTaskId)
end

--从当前进度逆向遍历到未完成的任务
--nCurTaskId
function TaskPM_SearchUnFinishMainTaskId(nCurTaskId)
    if not rwChkInt(nCurTaskId) or not rwtTask[nCurTaskId] then
        rwSendSystemMessage("参数错误--2")
        return
    end
    local nTargetTaskId = 0
    local nTaskId = nCurTaskId
    while(true) do
        local nPreTaskId = rwtTask[nTaskId]["PreTaskId"]
        if rwChkInt(nPreTaskId) then
            if rwTaskIsSuccess(nPreTaskId) then
                nTargetTaskId = nTaskId      --遍历到已完成的任务中断，返回下一个任务ID
                break
            end
        else
            nTargetTaskId = nTaskId  --遍历到没有前置任务的时候，返回下一个任务ID
            break
        end
        nTaskId = nPreTaskId
    end

    return nTargetTaskId
end

--从当前任务正向遍历到指定的任务设置完成给予奖励
--nStartTaskId
function TaskPM_StartSetTask(nStartTaskId,nEndTaskId)
    if not rwChkInt(nStartTaskId) or not rwtTask[nEndTaskId] then
        rwSendSystemMessage("参数错误--3")
        return
    end
    local nNextTaskId = nStartTaskId
    while(nNextTaskId) do
        TaskPM_AddTask(nNextTaskId)
        TaskPM_FinishTask(nNextTaskId)
		TaskPM_GetCopyMapAward(nNextTaskId)
        if not rwtTask[nNextTaskId] or not rwtTask[nNextTaskId]["NextTaskId"] then
            break
        end
        nNextTaskId = rwtTask[nNextTaskId]["NextTaskId"]
        if nNextTaskId == nEndTaskId then
            break
        end
    end
end
function TaskPM_GetCopyMapAward(nTaskId)
	if not rwChkInt(nTaskId) or not rwtTask[nTaskId] then
        rwSendSystemMessage("参数错误--4")
        return
    end
	local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
	if nTaskDetailType and nTaskDetailType == CONST_TASK_DETAIL_TYPE.PASS_COPYMAP then
		local tCopymapId = rwtTask[nTaskId]["PassCopyMap1"]
		if rwChkTable(tCopymapId) then
			for i,v in pairs(tCopymapId) do
				if v == 3011 then
					rwAddUserRecordData_System_Unlock(16)
				end
				if tCopyMapRewardId[v] then
					rwAddAward(CONST_AWARD_TYPE.AWARD,tCopyMapRewardId[v],1,nTaskId)
				end
			end
		end
	end
end
function TaskPM_AddTask(nTaskId)
    if not rwChkInt(nTaskId) or not rwtTask[nTaskId] then
        rwSendSystemMessage("参数错误--4")
        return
    end
    if not rwTaskChkUserInTask(nTaskId) then
        local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):AcceptTask()
    end
end

function TaskPM_FinishTask(nTaskId)
    if not rwChkInt(nTaskId) or not rwtTask[nTaskId] then
        rwSendSystemMessage("参数错误--4")
        return
    end
    if not rwTaskIsSuccess(nTaskId) then
        rwTaskSetData(nTaskId,CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG,2)
        local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):FinishTask()
    end
end

function TaskPM_GetTaskInfo()
    rwPrintErrorLog("----------------------主线任务信息开始--------------------------")
    local nCurTaskId = 10206
    while(true) do
        local sTitle = rwtTask[nCurTaskId]["Title"] or ""
        local nMonsterGroupId = rwtTask[nCurTaskId]["KillMonsterGroup1"] or 0
        local nAwardId = 0
        if rwtTask[nCurTaskId]["Awards"] and
            rwtTask[nCurTaskId]["Awards"]["Events"] and
            rwtTask[nCurTaskId]["Awards"]["Events"][1] and
            rwtTask[nCurTaskId]["Awards"]["Events"][1]["GetServerAward"] then
            nAwardId = rwtTask[nCurTaskId]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] or 0
        end
        rwPrintErrorLog("任务ID=" .. nCurTaskId .. ";任务名称=" .. sTitle .. ";任务怪物组=" .. nMonsterGroupId .. ";任务奖励ID=" .. nAwardId)
        local nNextTaskId = rwtTask[nCurTaskId]["NextTaskId"] or 0
        if not rwtTask[nNextTaskId] or not rwtTask[nNextTaskId]["NextTaskId"] then
            break
        end
        nCurTaskId = nNextTaskId
    end
    rwPrintErrorLog("----------------------主线任务信息结束--------------------------")
end