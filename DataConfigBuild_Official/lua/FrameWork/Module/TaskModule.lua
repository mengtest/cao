--region TaskModule.lua
--Date
--任务模块



--endregion

--===================================================================
--==============================取值函数=============================
--===================================================================

---
-- 获取任务参数
-- @param nTaskId 任务ID
-- @param nIndex 对应CONST_TASK_INFO_INDEX
-- @return 任务不存在时，返回-1
function rwTaskGetData(nTaskId, nIndex)
    return GetTaskData(nTaskId, nIndex)
end

---
-- 获取任务完成掩码
-- @param nTaskId 任务ID
-- @return 0未完成， 1已完成，-1配置数据不存在
function rwTaskGetFinishMask(nTaskId)
    return GetTaskFinishMask(nTaskId)
end

---
-- 获取某种任务类型的任务列表
-- @param nTaskType 0表示返回玩家当前身上所有已接任务，其他对应CONST_TASK_TYPE
-- @return 返回一个列表
function rwTaskGetListByType(nTaskType)
    return GetTaskByType(nTaskType)
end

--===================================================================
--==============================功能函数=============================
--===================================================================
---
-- 添加任务
-- @param nTaskId 任务ID
-- @param nTaskType 任务
-- @param nFinishFlag 完成标记  0可接 1已接 2完成未领奖
-- @param nFinishTime 倒计时类任务完成时间
-- @param nTaskQuality 任务品质
-- @return 布尔值
function rwTaskAdd(nTaskId, nTaskType, nFinishFlag, nFinishTime,nTaskQuality)
--function rwTaskAdd(nTaskId, nTaskType, nFinishFlag, nAwardType, nTaskQuality)
    nTaskType = nTaskType or 1
    nFinishFlag = nFinishFlag or 1
    nFinishTime = nFinishTime or 0
	nTaskQuality = nTaskQuality or 0
    --nAwardType = nAwardType or 0
    rwPrintNormalLog({Func = "rwTaskAdd",nTaskId = nTaskId,nTaskType = nTaskType, nFinishFlag = nFinishFlag, nFinishTime = nFinishTime,nTaskQuality = nTaskQuality})
    --return AddTask(nTaskId, nTaskType, nFinishFlag, nAwardType, nTaskQuality)
    return AddTask(nTaskId, nTaskType, nFinishFlag, nFinishTime, nTaskQuality)
end

---
-- 判断数据库中是否有任务记录，包含0和1等情况
-- @param nTaskId 任务ID
-- @return 布尔值
function rwTaskIsExist(nTaskId)
    rwPrintNormalLog({Func = "rwTaskIsExist",nTaskId = nTaskId})
    return HasTask(nTaskId)
end

---
-- [脚本封装]判断任务是否已接
-- @param nTaskId 任务ID
-- @return 布尔值
function rwTaskIsAccept(nTaskId)
    rwPrintNormalLog({Func = "rwTaskIsExist",nTaskId = nTaskId})
    if rwTaskIsExist(nTaskId) then
        local nState = rwTaskGetData(nTaskId, CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG)
        if nState >= 1 then
            return true
        end
    end    
    return false
end

---
-- [脚本封装]判断任务是否已达成条件
-- @param nTaskId 任务ID
-- @return 布尔值
function rwTaskIsComplete(nTaskId)
    if not nTaskId then
        rwPrintNormalLog({Func = "rwTaskIsComplete false",nTaskId = nTaskId})
        return false
    end
    if rwTaskGetData(nTaskId,CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG) == 2 then
        rwPrintNormalLog({Func = "rwTaskIsComplete true",nTaskId = nTaskId})
        return true
    end
    rwPrintNormalLog({Func = "rwTaskIsComplete false",nTaskId = nTaskId})
    return false
end

---
-- [脚本封装]判断任务是否完成并领取奖励
-- @param nTaskId 任务ID
-- @return 布尔值
function rwTaskIsSuccess(nTaskId)
    if rwTaskGetFinishMask(nTaskId) == 1 then
        rwPrintNormalLog({Func = "rwTaskIsSuccess true",nTaskId = nTaskId})
        return true
    end
    rwPrintNormalLog({Func = "rwTaskIsSuccess false",nTaskId = nTaskId})
    return false
end

---
-- 删除任务
-- @param nTaskId 任务ID
-- @return 布尔值
function rwTaskDelete(nTaskId)
    rwPrintNormalLog({Func = "rwTaskDelete",nTaskId = nTaskId})
    return DeleteTask(nTaskId)
end

---
-- [脚本封装]判断玩家是否在任务中：有任务记录，且未完成
-- @param nTaskId 任务ID
-- @return 布尔值
function rwTaskChkUserInTask(nTaskId)
    if rwTaskIsAccept(nTaskId) and not rwTaskIsSuccess(nTaskId) and not rwTaskIsComplete(nTaskId) then
        return true
    end
    return false
end

---
-- 设置任务参数
-- @param nTaskId 任务ID
-- @param nIndex 对应CONST_TASK_INFO_INDEX
-- @param nVal 值
-- @return 布尔值
function rwTaskSetData(nTaskId, nIndex, nVal)
    rwPrintNormalLog({Func = "rwTaskSetData",nTaskId = nTaskId,nIndex = nIndex,nVal = nVal})
    return SetTaskData(nTaskId, nIndex, nVal)
end

---
-- 完成任务，服务端将任务从任务信息表删除，移到任务完成表
-- @param nTaskId 任务ID
-- @return 布尔值
function rwTaskSetFinish(nTaskId)
    rwPrintNormalLog({Func = "rwTaskSetFinish",nTaskId = nTaskId})
    return FinishTask(nTaskId)
end

---
-- 寻路接口
-- @param data 信息字符串
-- @usage 坐标：   '0 1000 10，10，10'
-- @usage NPC组：  '1 1000 20087 2001001'
-- @usage 怪物组：  '2 2001 900111 2001002'
-- @return 布尔值
function rwFindWay(data)
    rwPrintNormalLog({Func = "rwFindWay",data = data})
    return FindWay(data)
end

--===================================================================
--===============================回调================================
--===================================================================

---
-- [回调]点击任务面板
-- @param nTaskId 任务ID
function task_click(nTaskId)
    rwLinkTaskGetAward(nTaskId)
end


---
-- [回调]七日任務
-- @param nTaskId 任务ID
-- @param nId 任务当前进行天数
function sevendayacttask_accept(nTaskId,nId)
    rwLinkSevenDayTaskAccept(nTaskId,nId)
end

--===================================================================
--==============================回调封装=============================
--===================================================================
--面板上点击任务
function rwLinkTaskGetAward(nTaskId)
    rwPrintNormalLog({Func = "rwLinkTaskGetAward",nTaskId = nTaskId})
    if not nTaskId then
        return
    end

    local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
    if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):OnTaskPanelClick()
    end
end

--接受任务
function rwLinkTaskAccept(nTaskId)
    --rwTaskTemplate:create(nTaskId):Accept()
    if not nTaskId or not rwtTask[nTaskId] then
        return
    end
    local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
    if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):AcceptTask()
    end
end

--七日任务
function rwLinkSevenDayTaskAccept(nTaskId,nId)
	rwPrintNormalLog({Func = "rwLinkSevenDayTaskAccept",nTaskId = nTaskId,nId = nId})
	local nTimeData = 1146 --七日任务掩码

	--参数大于7的不可接
	if nId > 7 then
		return
	end
	if nId < 1 then
		return
	end
	--当前和之前任务是否已完成
	if rwHasUserRecordData(7,nId) then
		return
	end
	--前置任务未完成，不可接受
	for i = 1, nId-1 do
		if not rwHasUserRecordData(7,i) then
			--rwSendSystemMessage("前置任务未完成，不可接受")
			return
		end
	end
	--任务不存在
	if not nTaskId or not nId then
        return
    end

	--当前任务是否已完成
	if rwTempDataGetValue(nTimeData,nId+1)==1 then
		return
	end

	--前置任务未完成，不可接受
	if nId ~=1 then --第一天不判断前置
		for i = 1, nId do
			if rwTempDataGetValue(nTimeData,nId)~=1 then
				--rwSendSystemMessage("前置任务未完成，不可接受")
				return
			end
		end
		--前置掩码未隔天，不可接受
		if not rwTempDataDayJudgment(nTimeData) then
			--rwSendSystemMessage("前置掩码未隔天，不可接受，不可接受")
			return
		end
	end
	local nTaskType = rwtTask[nTaskId]["TaskType"]
	if nTaskType ~= CONST_TASK_TYPE.SEVENTDAY then	
		return
	end
	local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
	if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
		ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):AcceptTask()
	end	
	return true
end 
