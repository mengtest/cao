--region rwTrapTemplate.lua
--Date
--陷阱类



--endregion

rwTrapTemplate = class("rwTrapTemplate")

function rwTrapTemplate:ctor(nTrapType,nTrapId,nGenId)
    self._TrapType = nTrapType
	self._TrapId = nTrapId
    self._GenId = nGenId
end

function rwTrapTemplate:Process()
    if not rwtNpcGroup[self._TrapType] then
        return
    end

    if rwtTargetTrapInfo[self._TrapType] then
        for _, TaskId in pairs(rwtTargetTrapInfo[self._TrapType]) do
            rwBaseTarget:create(TaskId):EventOnTargetUpdate()
        end
    end
    if rwChkInt(rwtNpcGroup[self._TrapType]["TrapAcceptTask"]) then
        local nAdTask = rwtNpcGroup[self._TrapType]["TrapAcceptTask"]
        local nTaskDetailType = rwtTask[nAdTask]["TaskDetailType"]
        local nTaskType = rwtTask[nAdTask]["TaskType"]
        if nTaskType == CONST_TASK_TYPE.ADVENTURE then
			if not rwTaskIsAccept(nAdTask) and (rwTaskGetFinishMask(nAdTask) ~= 1) then
				if not rwAdventureTemplate:create():Adventure_Judge(self._TrapType) then
					return
				end
				if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
               ENUM_TASK_TEMPLATE[nTaskDetailType]:create(rwtNpcGroup[self._TrapType]["TrapAcceptTask"]):AcceptTask()
             end
			end
        end
    end
    if rwChkTable (rwtNpcGroup[self._TrapType]["TrapDeleteGen"]) then 
        for i,v in pairs (rwtNpcGroup[self._TrapType]["TrapDeleteGen"]) do
            if rwHasGenEvent (v) then 
                rwDelGenEvent(v)
            end
        end
    end
    if rwChkTable (rwtNpcGroup[self._TrapType]["TrapCreateGen"]) then 
        for i,v in pairs (rwtNpcGroup[self._TrapType]["TrapCreateGen"]) do
            if not rwHasGenEvent (v) then 
                rwAddGenEvent(v)
            end
        end
    end

    if type(rwtNpcGroup[self._TrapType]["TrapFunc"]) == "function" then   --自定义陷阱函数
        rwtNpcGroup[self._TrapType]["TrapFunc"](self._TrapType,self._TrapId,self._GenId)
        return
    end

    if not rwtTaskTrapInfo[self._TrapType] then
        return
    end
    for taskId, v in pairs(rwtTaskTrapInfo[self._TrapType]) do
        if rwTaskChkUserInTask(taskId) then
            local nTaskDetailType = rwtTask[taskId]["TaskDetailType"]
            if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                ENUM_TASK_TEMPLATE[nTaskDetailType]:create(taskId):TrapOnTask()
            end
        end
    end 


end

--陷阱:触发对话框
function rwTrap_ShowDialogue(nIndex,nType,nId)
    if not nIndex then
        return
    end
    if nType then
        rwOpenNpcChatDialog(nIndex,nType,nId)
    else
        rwOpenNpcChatDialog(nIndex)
    end
end

--陷阱：任务目标
function rwTrap_ReachedArea()
--    for i,v in pairs(rwtTaskTrapInfo[self._TrapId]) do
--        if rwTaskChkUserInTask(i) then
--            rwTaskTrapBeTiggered(i,v)
--        end
--    end
end

--陷阱：动态创建NPC组/怪物组
function rwTrap_AddGen()
--     local nIndex = 1
--     local tInfo = rwtNpcGroup[self._TrapId]
--     if not tInfo then
--        return
--     end
--     if tInfo["AddChkFunc"] and type(tInfo["AddChkFunc"]) == "table" then
--        if not tInfo["AddChkFunc"]() then
--            return
--        end
--     end

--     while tInfo["AddGen" .. nIndex] do
--        rwAddGenEvent(tInfo["AddGen" .. nIndex])
--        nIndex = nIndex + 1
--     end
end