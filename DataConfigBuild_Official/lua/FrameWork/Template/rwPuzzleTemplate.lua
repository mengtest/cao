--region rwPuzzleTemplate.lua
--Date
--解谜模板封装
--LHW


--endregion

---------
local m_optionText = "optionText"  --选项文字
local m_optionState = "optionState"  --选项状态
local m_optionFunc = "optionFunc"  --回调函数


rwPuzzleTemplate = class("rwPuzzleTemplate")

--[Comment]
--_GroupTypeId:组ID
--_PuzzleTaskList:解谜任务列表
function rwPuzzleTemplate:ctor(nGroupTypeId)
    self._GroupTypeId = nGroupTypeId
	self._tInfo = rwtNpcGroup[self._GroupTypeId] or {}
	self._PuzzleTaskList = {}
end

--[Comment]
--解谜NPC流程
function rwPuzzleTemplate:Process()
    local PuzzleId = self._tInfo["PuzzleId"]
	
	if not self._tInfo["DialogPuzzleNpc"] then
		self:MapNpc_Puzzle(PuzzleId)
	else
		self:DialogNpc_Puzzle(PuzzleId)
	end
	
end

--[Comment]
--区域触发
function rwPuzzleTemplate:MapNpc_Puzzle(nPuzzleId)
	local bShowFlag = true
	local nTaskIdNum = 0
	local nPuzzleTitleNum = 0
	
	if rwChkInt(nPuzzleId) then
		if not tPuzzleEvent[nPuzzleId] then
			return
		end
		
		if rwtTaskPuzzleIdInfo[nPuzzleId] then
		    for _, TaskId in pairs(rwtTaskPuzzleIdInfo[nPuzzleId]) do
		        if rwTaskChkUserInTask(TaskId) then
					table.insert(self._PuzzleTaskList,{["nTaskId"] = TaskId, ["nPuzzleId"] = nPuzzleId})
					nTaskIdNum = nTaskIdNum + 1
					if rwtTask[TaskId]["PuzzleTitle"] then
						nPuzzleTitleNum = nPuzzleTitleNum + 1
					end
		        end
		    end
		end
		
		rwPuzzle_Show(nPuzzleId)
		
		if nTaskIdNum == 0 then
			bShowFlag = false
			return
		elseif nTaskIdNum == 1 then
			bShowFlag = false
			self:NpcTaskDialogue()
			return
		end
		
		if nPuzzleTitleNum == 0 then
			bShowFlag = false
			return
		end
		
		if bShowFlag then
        self:NpcDialogue()
        self:NpcDialogOption()
		end
	end
	
end

--[Comment]
--NPC对话后触发
function rwPuzzleTemplate:DialogNpc_Puzzle(tPuzzleId)
	local bShowFlag = true
	local nTaskIdNum = 0

	if rwChkTable(tPuzzleId) then
		for nIndex = 1,#tPuzzleId do
			if not tPuzzleEvent[tPuzzleId[nIndex]] then
				return
			end
			
			if rwtTaskPuzzleIdInfo[tPuzzleId[nIndex]] then
				for _, TaskId in pairs(rwtTaskPuzzleIdInfo[tPuzzleId[nIndex]]) do
					if rwTaskChkUserInTask(TaskId) then
						table.insert(self._PuzzleTaskList, {["nTaskId"] = TaskId, ["nPuzzleId"] = tPuzzleId[nIndex]})
						nTaskIdNum = nTaskIdNum + 1
					end
				end
			end
		end
	end
	
	if nTaskIdNum == 1 then
		bShowFlag = false
		self:NpcTaskDialogue()
		return
	end
		
	if bShowFlag then
        self:NpcDialogue()
        self:NpcDialogOption()
	end
	
end

--[Comment]
--使用物品触发
function rwPuzzleTemplate:UseItem_Puzzle()

end

--[Comment]
--选项逻辑
function rwPuzzleTemplate:NpcDialogOption()
  
    local tOptionInfo = {}
    tOptionInfo["data"] = {}
    local nNpcOptionIndex = 1
	
	--解谜选项
	for i,PuzzleTask in pairs(self._PuzzleTaskList) do
		local nTaskId = PuzzleTask["nTaskId"]
		if nTaskId and rwtTask[nTaskId] and rwtTask[nTaskId]["ReqPuzzleEnterDialog"] then
			table.insert(tOptionInfo["data"],{["index"] = nNpcOptionIndex,
			[m_optionText] = rwtTask[nTaskId]["PuzzleTitle"] or rwtTask[nTaskId]["Title"] or "",
			[m_optionState] = 1,
			[m_optionFunc] = "</F>rwLinkTaskNpcPuzzle</N>" .. nTaskId .."</N>".. PuzzleTask["nPuzzleId"]
			})
			nNpcOptionIndex = nNpcOptionIndex + 1
		end
    end

    
    if #tOptionInfo["data"] > 0 then
        local sOptionStr = rwTable2Json(tOptionInfo)
        rwPrintWarnLog("rwPuzzleTemplate Process"..sOptionStr)
        rwAddDlgOption(sOptionStr)
    end
end

--任务对白
function rwPuzzleTemplate:NpcTaskDialogue()
	local nTaskId = self._PuzzleTaskList[1]["nTaskId"]
	local nPuzzleId = self._PuzzleTaskList[1]["nPuzzleId"]

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


--普通对白
function rwPuzzleTemplate:NpcDialogue()
    local sMark = "DialogId"

    if self._tInfo[sMark] then
        if rwChkInt(self._tInfo[sMark]) then
            rwOpenNpcChatDialog(self._tInfo[sMark],CONST_NPCCHAT_TYPE.NPC)
        elseif rwChkTable(self._tInfo[sMark]) then
            local nRandom = math.random(1,#self._tInfo[sMark])
            rwOpenNpcChatDialog(self._tInfo[sMark][nRandom],CONST_NPCCHAT_TYPE.NPC)
        end
    end
end
