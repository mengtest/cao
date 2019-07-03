---
--- 奇遇NPC组

rwNpcGroup_Adventure = class("rwNpcGroup_Adventure",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.Adventure] = rwNpcGroup_Adventure

function rwNpcGroup_Adventure:EventProcess()
    rwNpcGroup_AdventureProcess(self._NpcGroupType,self._NpcGroupId,self._GenEventId)
end

function rwNpcGroup_Adventure:DialogEventProcess(nDialogId,nTaskId)
    rwNpcGroup_AdventureProcess_Dialog(nDialogId,nTaskId)
end

--陷阱类
function rwNpcGroup_AdventureProcess(nNpcGroupType,nNpcGroupId,nGenEventId)
  
	if not rwtNpcGroup[nNpcGroupType] then
        return
    end
		
	-- 接受任务
	if rwChkInt(rwtNpcGroup[nNpcGroupType]["TrapAcceptTask"]) then		
        local nAdTask = rwtNpcGroup[nNpcGroupType]["TrapAcceptTask"]
        local nTaskDetailType = rwtTask[nAdTask]["TaskDetailType"]
        local nTaskType = rwtTask[nAdTask]["TaskType"]	
        if nTaskType == CONST_TASK_TYPE.ADVENTURE then
			if not rwTaskIsAccept(nAdTask) and (rwTaskGetFinishMask(nAdTask) ~= 1) then
				if not rwAdventureTemplate:create():Adventure_Judge(nNpcGroupType) then
					return
				end
				if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
					rwPlayLocalEffect("qiyutexiao")
					ENUM_TASK_TEMPLATE[nTaskDetailType]:create(rwtNpcGroup[nNpcGroupType]["TrapAcceptTask"]):AcceptTask()
				end
			end
        end
    end
	
	--奖励模板
	if rwChkTable(rwtNpcGroup[nNpcGroupType]["Awards"]) then
		local awardCode = rwBaseAward:create(rwtNpcGroup[nNpcGroupType]["Awards"]):Process()
	end
	
	if type(rwtNpcGroup[nNpcGroupType]["TrapFunc"]) == "function" then   --自定义奇遇陷阱函数
		rwtNpcGroup[nNpcGroupType]["TrapFunc"](nNpcGroupType,nNpcGroupId,nGenEventId)	
	end
	
end


--对白类
 function rwNpcGroup_AdventureProcess_Dialog(nDialogId,nTaskId)
    if not rwTaskIsAccept(nTaskId) and (rwTaskGetFinishMask(nTaskId) ~= 1) then
		if not rwAdventureTemplate:create():Adventure_Judge_Dialog(nDialogId) then
			return
		end
		rwPlayLocalEffect("qiyutexiao")
		ENUM_TASK_TEMPLATE[CONST_TASK_TYPE.ADVENTURE]:create(nTaskId):AcceptTask()
				
	end
 end



























