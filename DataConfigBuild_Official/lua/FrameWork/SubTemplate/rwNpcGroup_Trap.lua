---
--- Created by YJX.
--- DateTime: 2018/6/20 0020 14:57
--- 陷阱NPC组

rwNpcGroup_Trap = class("rwNpcGroup_Trap",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.Trap] = rwNpcGroup_Trap

function rwNpcGroup_Trap:EventProcess()
    rwNpcGroup_TrapProcess(self._NpcGroupType,self._NpcGroupId,self._GenEventId)
	rwMaiDianLog_Trap(self._NpcGroupType)
end

--陷阱类
function rwNpcGroup_TrapProcess(nNpcGroupType,nNpcGroupId,nGenEventId)
  
	if not rwtNpcGroup[nNpcGroupType] then
        return
    end
	
	if rwtNpcGroup[nNpcGroupType]["DelTrap"] and rwtNpcGroup[nNpcGroupType]["DelTrap"] ==1 then  
       if rwHasGenEvent(nGenEventId) then 
			rwDelGenEvent(nGenEventId)
		end
	end
	
	if rwtTargetTrapInfo[nNpcGroupType] then
		for _, TaskId in pairs(rwtTargetTrapInfo[nNpcGroupType]) do
            rwBaseTarget:create(TaskId):EventOnTargetUpdate()
        end
    end
	
	--瞬移
	if rwtNpcGroup[nNpcGroupType]["TrapChangeScene"] then    
		local tChangeScene = rwtNpcGroup[nNpcGroupType]["TrapChangeScene"]
		rwChangeScene(tChangeScene["MapId"],tChangeScene["Pos"])
	end

    --本图瞬移
	if rwtNpcGroup[nNpcGroupType]["TrapTeleport"] then    
		local tTeleportInfo = rwtNpcGroup[nNpcGroupType]["TrapTeleport"]
		rwUserTeleport(tTeleportInfo["Pos"],tTeleportInfo["Rot"])
	end
			
    --护送陷阱触发对白后战斗
	if rwChkInt(rwtNpcGroup[nNpcGroupType]["EscortDialog"]) then  
        --触发护送陷阱后删除	
        if rwHasGenEvent(nGenEventId) then
            rwDelGenEvent(nGenEventId)
        end
		if rwChkInt(rwtNpcGroup[nNpcGroupType]["EscortMonsterGroupGen"]) then  
			local nDialogId = rwtNpcGroup[nNpcGroupType]["EscortDialog"]
			local nGenId = rwtNpcGroup[nNpcGroupType]["EscortMonsterGroupGen"]
			rwOpenNpcChatDialog(nDialogId,CONST_NPCCHAT_TYPE.ESCORTTRAP,nGenId)
		end
	end
    
	--奖励模板
	if rwChkTable(rwtNpcGroup[nNpcGroupType]["Awards"]) then
		local awardCode = rwBaseAward:create(rwtNpcGroup[nNpcGroupType]["Awards"]):Process()
	end
	
	if type(rwtNpcGroup[nNpcGroupType]["TrapFunc"]) == "function" then   --自定义陷阱函数
		rwtNpcGroup[nNpcGroupType]["TrapFunc"](nNpcGroupType,nNpcGroupId,nGenEventId)	
	end
	
    if not rwtTaskTrapInfo[nNpcGroupType] then
        return
    end
 
    for taskId, v in pairs(rwtTaskTrapInfo[nNpcGroupType]) do
        if rwTaskChkUserInTask(taskId) then
            local nTaskDetailType = rwtTask[taskId]["TaskDetailType"]
            if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                ENUM_TASK_TEMPLATE[nTaskDetailType]:create(taskId):TrapOnTask()
            end
        end
    end 
end



























