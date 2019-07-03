--region NpcGroupModule.lua
--Date
--NPC组模块



--endregion

--===================================================================
--==============================取值函数=============================
--===================================================================
---
-- 获取当前交互NPC组的动态ID
-- @return 返回动态ID
function rwNpcGroupGetCurId()
    return GetCurNpcGroupId()
end

---
-- 返回该类型NPC组的所有动态ID
-- @param nNpcGroupType NPC组类型
-- @return 返回列表
function rwGetNpcGroupIdByGroup(nNpcGroupType)
    return GetNpcGroupIdByGroup(nNpcGroupType)
end

--===================================================================
--==============================功能函数=============================
--===================================================================

--添加NPC群组对话框
function rwAddNpcGroupDlg(sStr)
    rwPrintNormalLog({Func = "rwAddNpcGroupDlg",sStr = sStr})
    return AddNpcGroupDlg(sStr)    
end

--添加NPC对话框
function rwAddNpcDlg(sStr)
    rwPrintNormalLog({Func = "rwAddNpcDlg",sStr = sStr})
    return AddNpcDlg(sStr)    
end


--打开NPC对白
--nIndex：索引客户端对白配置
--nType:对白类型  目前未用到
--nId:具体类型对应的ID
--nIdUser:玩家id，为0时，取触发玩家，只发给在线玩家
function rwOpenNpcChatDialog(nIndex,nType,nId,nIdUser)
    if ((not nIndex) or(nIndex==0)) then
        return
    end
    nType = nType or 0
    nId = nId or 0
	nIdUser = nIdUser or 0
    rwPrintNormalLog({Func = "rwOpenNpcChatDialog",nIndex = nIndex,nType = nType,nId = nId,nIdUser = nIdUser})
    OpenNpcChatDialog(nIndex,nType,nId,nIdUser)    
end

---
-- 根据动态ID删除NPC组
-- @param nNpcGroupId 动态NPC组ID
-- @return 布尔值
function rwNpcGroupDelById(nNpcGroupId)
    rwPrintNormalLog({Func = "rwNpcGroupDelById",nNpcGroupId = nNpcGroupId})
    return DelNpcGroupById(nNpcGroupId) 
end

--===================================================================
--===============================回调================================
--===================================================================
---
-- [回调]NPC组点击触发
-- @param nGroupId 动ID
-- @param nGroupTypeId NPC组类型
-- @param nGenEventId GenId
function npcgroup_click(nGroupId, nGroupTypeId, nGenEventId)
	rwLinkNpcGroup(nGroupId, nGroupTypeId, nGenEventId)
end

---
-- [回调]NPC点击触发
-- @param nGroupTypeId NPC组类型
-- @param nNpcTypeId NPC类型
function npc_click(nGroupTypeId, nNpcTypeId)
	rwLinkNpc(nGroupTypeId, nNpcTypeId)
end

---
-- [回调]NPC客户端对白结束触发
-- @param nIndex 对白ID
-- @param nType 对白类型
-- @param nId 参数
function npc_chat_end(nIndex,nType,nId)
    rwLinkNpcChatEnd(nIndex,nType,nId)    
end

---
-- [回调]对白中选项点击
-- @param nIndex 对白ID
-- @param nType 对白类型
-- @param nId 参数
-- @param nOptionIndex 选项索引
function dialog_option_click(nIndex,nType,nId,nOptionIndex)
    rwLinkDialogOptionClick(nIndex,nType,nId,nOptionIndex)
end

--===================================================================
--==============================回调封装=============================
--===================================================================

--NPC群的统一入口
--nGroupId：动态组ID
--nGroupTypeId：组类型ID
function rwLinkNpcGroup(nGroupId, nGroupTypeId, nGenEventId)
    rwPrintNormalLog({Func = "rwLinkNpcGroup",nGroupId = nGroupId,nGroupTypeId = nGroupTypeId,nGenEventId = nGenEventId})
    if rwtNpcGroup[nGroupTypeId] == nil then
        rwPrintWarnLog("NPC群ID：" .. nGroupTypeId .. "未配置")
        return
    end
    local nType = rwtNpcGroup[nGroupTypeId]["Type"]
    if nType and ENUM_NPCGROUP_TEMPLATE[nType] then
        ENUM_NPCGROUP_TEMPLATE[nType]:create(nGroupId, nGroupTypeId, nGenEventId):EventProcess()
    else
        rwBaseNpcGroup:create(nGroupId, nGroupTypeId, nGenEventId):EventProcess()
    end

end

--NPC点击接口函数
--nGroupTypeId：组类型ID
--nNpcTypeId：NPC类型ID
function rwLinkNpc(nGroupTypeId, nNpcTypeId)
    --rwPrintWarnLog("rwLinkNpc" .. nGroupTypeId .. "nNpcTypeId" ..nNpcTypeId)
	rwNpcTemplate:create(nGroupTypeId, nNpcTypeId):Process()
end

--[Comment]
--NPC任务对话
function rwLinkTaskNpcDialog(nTaskId)
    if not nTaskId or not rwtTask[nTaskId] or not rwtTask[nTaskId]["DialogId"] then
        return
    end
    -- rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk)
    rwOpenNpcChatDialog(rwtTask[nTaskId]["DialogId"],CONST_NPCCHAT_TYPE.TASK,nTaskId)
end

--[Comment]
--NPC任务解谜
function rwLinkTaskNpcPuzzle(nTaskId,nPuzzleId)
	-- rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk)
	
	if nTaskId and rwtTask[nTaskId] then
		if rwtTask[nTaskId]["ReqPuzzleEnterDialog"] then
			if rwtTask[nTaskId]["ReqPuzzleDialogOpen"] then
				rwOpenNpcChatDialog(rwtTask[nTaskId]["ReqPuzzleEnterDialog"],CONST_NPCCHAT_TYPE.PUZZLE,nPuzzleId)
			else
				rwOpenNpcChatDialog(rwtTask[nTaskId]["ReqPuzzleEnterDialog"],CONST_NPCCHAT_TYPE.TASK,nTaskId)
			end
		end
	end
end

--NPC客户端对白结束
--nIndex：索引客户端对白配置
--nType:对白类型  目前未用到
--nId:具体类型对应的ID
function rwLinkNpcChatEnd(nIndex,nType,nId)
	nIndex = nIndex or 0
	rwPrintNormalLog({Func = "rwLinkNpcChatEnd",nIndex = nIndex,nType = nType,nId = nId})
	if nType == CONST_NPCCHAT_TYPE.TASK then
		local nTaskDetailType = rwtTask[nId]["TaskDetailType"]
		if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] and rwtTask[nId] then
			if rwtTask[nId]["DialogId"] and nIndex == rwtTask[nId]["DialogId"] then
				ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nId):DialogEndCallBack(nIndex)
            elseif rwtTask[nId]["FinishDialogId"] and nIndex == rwtTask[nId]["FinishDialogId"] then
                ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nId):FinishDialogCallBack(nIndex)
			end
		end
	else
		if rwtDialog[nIndex] and rwtDialog[nIndex]["DialogEnd"] then
			rwtDialog[nIndex]["DialogEnd"](nId)
		end
		
		if rwtDialog[nIndex] and rwChkTable(rwtDialog[nIndex]["DialogEndInit"]) then
			rwBaseAward:create(rwtDialog[nIndex]["DialogEndInit"],0,nId):Process()
		end
		
		--关闭对话界面
        if rwtDialog[nIndex] and rwtDialog[nIndex]["CloseDialog"] then
            rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,nIndex)
        end 
	end
	
	--拓展
	
	--(1)副本目标
	if rwtTargetDialogEndInfo[nIndex] then
		for _, TaskId in pairs(rwtTargetDialogEndInfo[nIndex]) do
			rwBaseTarget:create(TaskId):EventOnTargetUpdate()
		end
	end
	
	--(2)对话后打开解谜
    -- if nType == CONST_NPCCHAT_TYPE.PUZZLE and nId and rwtTaskPuzzleIdInfo[nId] then
	-- 	rwPuzzle_Show(nId)
    -- end
    

    if nType == CONST_NPCCHAT_TYPE.MANYHEROCOPY and nId and rwtManyHeroNPCGenIDInfo[nId] then
        rwCopyMap_ManyHeroes_DialogCallBack(nId)
    end

	rwMaiDianLog_Dialog(nIndex)
end

--对白中选项点击
--nOptionIndex:选项索引
function rwLinkDialogOptionClick(nIndex,nType,nId,nOptionIndex)
    nIndex = nIndex or 0
    rwPrintNormalLog({Func = "rwLinkDialogOptionClick",nIndex = nIndex,nType = nType,nId = nId,nOptionIndex = nOptionIndex})    
    if nType == CONST_NPCCHAT_TYPE.TASK then
        -- 任务中必定关闭对白界面
        rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,nIndex)
        local nTaskDetailType = rwtTask[nId]["TaskDetailType"]
        if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
            ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nId):OnTaskDialogClick(nOptionIndex)
        end
    else
        if rwtDialog[nIndex] then
            if rwtDialog[nIndex]["CloseDialog" .. nOptionIndex] and rwtDialog[nIndex]["CloseDialog" .. nOptionIndex] == 0 then
                -- CloseDialog = 0时，不关闭对白界面
            else
                rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,nIndex)
            end
            if rwChkFunc(rwtDialog[nIndex]["OptionFunc" .. nOptionIndex]) then
                rwtDialog[nIndex]["OptionFunc" .. nOptionIndex](nIndex,nType,nId,nOptionIndex)
            end
             --奇遇任务选项
            if rwChkInt(rwtDialog[nIndex]["DialogAdventureTaskID"]) and rwtDialog[nIndex]["DialogAdventureOption"] == nOptionIndex then
                local nTaskId = rwtDialog[nIndex]["DialogAdventureTaskID"]
                ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.Adventure]:create(): DialogEventProcess(nIndex,nTaskId)
            end
            
        end
    end
end

--NPC选项点击
--nOptionIndex:选项索引
function rwLinkNpcOptionClick(nNpcId,nOptionIndex,nDialogId)
    nDialogId = nDialogId or 0
    rwPrintNormalLog({Func = "rwLinkNpcOptionClick",nNpcId = nNpcId,nOptionIndex = nOptionIndex,nDialogId = nDialogId})
    if not rwtNpc[nNpcId] or not rwtNpc[nNpcId]["Option"] or not rwtNpc[nNpcId]["Option"][nOptionIndex] then
        return
    end
    if rwtNpc[nNpcId]["Option"][nOptionIndex]["ClolseDialog"] and rwtNpc[nNpcId]["Option"][nOptionIndex]["ClolseDialog"] == 0 then
        --CloseDialog = 0时，不关闭对白界面
    else
        --默认关闭对白界面
        rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,nDialogId)
    end
    if rwChkFunc(rwtNpc[nNpcId]["Option"][nOptionIndex]["Func"]) then
        rwtNpc[nNpcId]["Option"][nOptionIndex]["Func"](nNpcId)
    end
end
