---
--- Created by YJX.
--- DateTime: 2018/6/20 0020 15:02
--- 宝箱NPC组


rwNpcGroup_TreasureBox = class("rwNpcGroup_TreasureBox",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.TreasureBox] = rwNpcGroup_TreasureBox

function rwNpcGroup_TreasureBox:EventProcess()
    rwNpcGroup_TreasureBoxProcess(self._NpcGroupType,self._NpcGroupId,self._GenEventId)
	rwMaiDianLog_box(self._NpcGroupType)
end

--成功开启宝箱回调
function LinkTreasureBoxOpenSucc(nNpcGroupType,nGenEventId,nMask)
	
	local tInfo = rwNpcGroup_TreasureBoxCheck(nNpcGroupType,nGenEventId)
	--检查失败
	if not tInfo then
		return 
	end

	--rwPrintErrorLog("宝箱前置判断成功"..nNpcGroupType)

	--删除宝箱
    if not tInfo["NotDel"] or tInfo["NotDel"] ~= 1 then  
        if not rwDelGenEvent(nGenEventId) then
            rwPrintWarnLog("宝箱删除失败")
            return
        end
    end

--	--宝箱开出怪物
--	if tInfo["BoxMonster"] then
--		if not rwHasGenEvent(tInfo["BoxMonster"])	then
--			rwAddGenEvent(tInfo["BoxMonster"])
--			rwPrintLog("生成宝箱怪genid："..tInfo["BoxMonster"])
--		end
--	end
	
	--开宝箱任务
    if rwtTaskTreasureBoxInfo[nNpcGroupType] then
        for _, TaskId in pairs(rwtTaskTreasureBoxInfo[nNpcGroupType]) do
            if rwTaskChkUserInTask(TaskId) then
                local nTaskDetailType = rwtTask[TaskId]["TaskDetailType"]
                if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                    ENUM_TASK_TEMPLATE[nTaskDetailType]:create(TaskId):OnOpenTreasureBox()
                end
            end
        end
    end
	
    --片区宝箱监听次数
    if rwtNpcGroup[nNpcGroupType]["AreaBoxType"] then
        rwRecordMonitorEvent(15,1,rwtNpcGroup[nNpcGroupType]["AreaBoxType"])
		rwRecordActiveEvent(1,1)
		
		--14日循环
		rwRecordLoopActivityEvent(2,1)
    end

--	--成功开启宝箱对白
--	if tInfo["Dialog"] then
--        rwOpenNpcChatDialog(tInfo["Dialog"],CONST_NPCCHAT_TYPE.TREASUREBOX,nGenEventId)
--    end
	if  rwChkInt(nMask) and  nMask == 1 	 then		  --对白选择奖励
		if rwChkTable(tInfo["ChooseAwards"]) then
			rwBaseAward:create(tInfo["ChooseAwards"]):Process()
		end
	else
	--获取奖励
		if rwChkTable(tInfo["Awards"]) then
			local awardCode = rwBaseAward:create(tInfo["Awards"]):Process()
			-- local awardCode = rwBaseAward:create(CONST_ACTION_TYPE.TREASURE_BOX,nNpcGroupType,tInfo["Awards"]):Process()
			-- if awardCode ~= CONST_CODE.OK then
				-- rwPrintErrorLog("NpcGroupId:" .. nNpcGroupType .. "award error!")
			-- end
			
			if awardCode ~= CONST_CODE.OK then
				return 
			end
		end
	end
	
	--更新任务目标
    if rwtTargetTreasureBoxInfo[nNpcGroupType] then
        for _, TaskId in pairs(rwtTargetTreasureBoxInfo[nNpcGroupType]) do
            rwBaseTarget:create(TaskId):EventOnTargetUpdate()
        end
    end 
	

end

--宝箱开启条件判断
function rwNpcGroup_TreasureBoxCheck(nNpcGroupType,nGenEventId)
	if not rwHasGenEvent(nGenEventId) then
        rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10000],2)
        return false
    end

    local tInfo = rwtNpcGroup[nNpcGroupType] or {}

	if not rwBaseAward:create(tInfo["Awards"]):ChkCondition() then
		--物品判断失败提示
	    return false
	end
	
	--物品判断
    -- local objAward = rwBaseAward:create(CONST_ACTION_TYPE.TREASURE_BOX,nNpcGroupType,tInfo["Awards"])
	-- if not objAward:ChkCondition() then
		--物品判断失败提示
	    -- return false
	-- end
	return tInfo
end

--宝箱NPC组
function rwNpcGroup_TreasureBoxProcess(nNpcGroupType,nNpcGroupId,nGenEventId)

	local tInfo = rwNpcGroup_TreasureBoxCheck(nNpcGroupType,nGenEventId)


	--检查失败
	if not tInfo then
		return 
	end


	--成功开启宝箱回调
	LinkTreasureBoxOpenSucc(nNpcGroupType,nGenEventId,nMask)

	--自定义逻辑
    if rwChkFunc(tInfo["Function"]) then
        tInfo["Function"](nNpcGroupType,nGenEventId)
    end


end