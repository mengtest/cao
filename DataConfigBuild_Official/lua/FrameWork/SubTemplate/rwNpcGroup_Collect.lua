---
--- Created by YJX.
--- DateTime: 2018/6/20 0020 14:51
--- 采集NPC组

rwNpcGroup_Collect = class("rwNpcGroup_Collect",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.Collect] = rwNpcGroup_Collect

function rwNpcGroup_Collect:EventProcess()
    rwNpcGroup_CollectProcess(self._NpcGroupType,self._NpcGroupId,self._GenEventId)
end

--采集
function rwNpcGroup_CollectProcess(nNpcGroupType, nNpcGroupId, nGenEventId)
    if not rwtNpcGroup[nNpcGroupType] then
        return
    end
    local tInfo = rwtNpcGroup[nNpcGroupType] or {}
    local nDelayTime = tInfo["CollectTime"] or 3  --TODO
    local nDialogId = tInfo["DialogId"] or 0
    local tRandomDialog = tInfo["tRandomDialog"] or 0
	local tBeforeCollect = tInfo["BeforeCollect"] or 0

	if not rwBaseAward:create(tInfo["Awards"]):ChkCondition() then
		--物品判断失败提示
	    return false
	end
	
	if tBeforeCollect ~= 0 then
		local bool = rwBaseAward:ChkEventCond(tBeforeCollect)
		
		if bool == true and tBeforeCollect["ChkFightHeroSuccDialogList"] then 
		
			local nRandom = math.random(1,#tBeforeCollect["ChkFightHeroSuccDialogList"])
			local tChkRandomDialog = tBeforeCollect["ChkFightHeroSuccDialogList"][nRandom] 		
			rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId.."</N>" .. nRandom, nGenEventId, tChkRandomDialog)
		elseif bool == false and tBeforeCollect["ChkFightHeroFailDialogList"] then 
		
			local nRandom = math.random(1,#tBeforeCollect["ChkFightHeroFailDialogList"]) 
			local tChkRandomDialog = tBeforeCollect["ChkFightHeroFailDialogList"][nRandom] 
			rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId.."</N>" .. nRandom, nGenEventId, tChkRandomDialog)
		else
		
			rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, nDialogId)
		end	
		
	elseif tRandomDialog ~= 0 then 
	
		local nRandom = math.random(1,#tRandomDialog)
		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId.."</N>" .. nRandom, nGenEventId, tRandomDialog[nRandom])
	else
	
		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, nDialogId)
	end
end


function rwCollectEnd(nNpcGroupType,nGenEventId,nRandom)  --采集完成时调用
    if not rwtNpcGroup[nNpcGroupType] then
        return
    end
    --删除采集物
    if not rwtNpcGroup[nNpcGroupType]["NotDel"] or rwtNpcGroup[nNpcGroupType]["NotDel"] ~= 1 then  
        if not rwDelGenEvent(nGenEventId) then
            rwPrintWarnLog("采集物删除失败")
            return
        end
    end
    --给奖励
    if rwChkTable(rwtNpcGroup[nNpcGroupType]["Awards"]) then
		
		local awardCode = rwBaseAward:create(rwtNpcGroup[nNpcGroupType]["Awards"]):Process()
		if awardCode == CONST_CODE.Error_ChkItemNum then
             if rwtNpcGroup[nNpcGroupType]["ItemNumErrorEvents"] then
				rwBaseAward:create(rwtNpcGroup[nNpcGroupType]["ItemNumErrorEvents"]):Process()
				return false
			 end
         end
        -- local awardCode = rwBaseAward:create(CONST_ACTION_TYPE.TIPS,nNpcGroupType,rwtNpcGroup[nNpcGroupType]["Awards"]):Process()
        -- if awardCode ~= CONST_CODE.OK then
            -- rwPrintErrorLog("NpcGroupId:" .. nNpcGroupType .. "award error!")
        -- end
    end  
	--随机奖励
	local tRandomInfo = rwtNpcGroup[nNpcGroupType]["RandomAwards"]
	if rwChkTable(tRandomInfo) then
		rwBaseAward:create(tRandomInfo):Process()
	end
			
    --更新客户端面板
    if rwtTargetCollectInfo[nNpcGroupType] then    
        for _, TaskId in pairs(rwtTargetCollectInfo[nNpcGroupType]) do
            rwBaseTarget:create(TaskId):EventOnTargetUpdate()
        end
    end
    --模板额外逻辑
    if rwtNpcGroup[nNpcGroupType]["Func"] and type(rwtNpcGroup[nNpcGroupType]["Func"]) == "function" then
        rwtNpcGroup[nNpcGroupType]["Func"](nGenEventId,nRandom)
    end
	
    --任务采集模板
    if rwtTaskCollectInfo[nNpcGroupType] then    
        for TaskId, v in pairs(rwtTaskCollectInfo[nNpcGroupType]) do
            if rwTaskChkUserInTask(TaskId) then           
                local nTaskDetailType = rwtTask[TaskId]["TaskDetailType"]
                if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                    ENUM_TASK_TEMPLATE[nTaskDetailType]:create(TaskId):OnCollectEndCallBack()
                end
            end
        end
    end
	
end