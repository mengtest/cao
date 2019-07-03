--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--解谜任务
--YJX


--endregion

--[[
--相关字段
ReqPuzzleId = 0   --关联的解谜ID
ReqPuzzleObj = 0        --关联的解谜物件
ReqPuzzleEnterDialog =0 --进入解谜屋后的对话ID
ReqPuzzleEndDialog = 0  --找到解谜物体的对话ID

DynaNpcGroupMapId = 0  任务地图ID
DynaNpcGroupGen = {}    动态列表

IsClickComplete =1表示需要点面板才能完成
--]]

rwTask_Puzzle = class("rwTask_Puzzle",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.PUZZLE] = rwTask_Puzzle

--解谜屋物件点击
function rwTask_Puzzle:OnTaskPuzzleObjClick()
    if self:UserIsInTask() then
        if self._TaskInfo["ReqPuzzleEndDialog"] then
            --rwPrintWarnLog("OnTaskPuzzleObjClick ReqPuzzleEndDialog")
            rwOpenNpcChatDialog(self._TaskInfo["ReqPuzzleEndDialog"])
        end
        self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,1)
        self:CompleteTask()
    end
end

--对白回调
function rwTask_Puzzle:DialogEndCallBack(nDialogId)

    if self._TaskInfo["CloseDialog"] and self._TaskInfo["CloseDialog"] == 0 then
        --配置0不关闭
    else
        --不配置默认关闭对话框
        rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,nDialogId)
    end
	
    if self:UserIsInTask() then
		if rwChkFunc(self._TaskInfo["PuzzleInitFunc"]) then
			self._TaskInfo["PuzzleInitFunc"]()   
			return
		end
		
		self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,1)     
        if rwChkFunc(self._TaskInfo["DialogueEndFunc"]) then
            self._TaskInfo["DialogueEndFunc"]()            
        end      
        self:CompleteTask()
    end
end

--完成任务时对白回调
function rwTask_Puzzle:FinishDialogCallBack(nDialogId)
	if self._TaskInfo["ReqFinishDialogPuzzleEnd"] then
		self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,1)
		self:CompleteTask()
	else
		self:FinishTask()
	end
end