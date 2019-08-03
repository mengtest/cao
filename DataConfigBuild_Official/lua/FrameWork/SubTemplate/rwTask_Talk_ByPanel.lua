--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--点击任务面板对白
--YJX


--endregion

--[[
--相关字段
DialogId = 0  剧情对白ID
DynaNpcGroupMapId = 0  任务地图ID
DynaNpcGroupGen = {}    动态列表

IsClickComplete =1表示需要点面板才能完成

--]]

rwTask_Talk_ByPanel = class("rwTask_Talk_ByPanel",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL] = rwTask_Talk_ByPanel

function rwTask_Talk_ByPanel:OnTaskPanelClick()
    --rwPrintWarnLog("rwTask_Talk_ByPanel:OnTaskPanelClick" .. self._TaskId)  
--    if self._TaskInfo["NeedLevel"] and (not self:TaskIsComplete())then
--        local nLevel = rwUserGetLevel()
--        if self._TaskInfo["NeedLevel"] > nLevel then
--            if self._TaskInfo["LackDialogId"]  then
--                rwOpenNpcChatDialog(self._TaskInfo["LackDialogId"],CONST_NPCCHAT_TYPE.TASK,self._TaskId)
--                return
--            end
--            if self._TaskInfo["LackTips"]  then
--                rwSendSystemMessage(self._TaskInfo["LackTips"])
--                return
--            end
--        else 
--            self:SetTaskCompleteFlag()
--            self:FinishTask()
--            return
--        end

--    end
	if self._TaskInfo["LockTask"] then
		if not rwTaskIsSuccess(self._TaskInfo["LockTask"]) then
			if self._TaskInfo["LackDialogId"] then
				rwOpenNpcChatDialog(self._TaskInfo["LackDialogId"])
			end
			return
		end
	end

    if self._TaskInfo["DialogId"] and not self:TaskIsComplete() then
        rwOpenNpcChatDialog(self._TaskInfo["DialogId"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
    else
        self:FinishTask()
    end
end


--对白回调
function rwTask_Talk_ByPanel:DialogEndCallBack(nDialogId)
    if self._TaskInfo["CloseDialog"] and self._TaskInfo["CloseDialog"] == 0 then
        --配置0不关闭
    else
        --不配置默认关闭对话框
        rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,nDialogId)
    end
    if self:UserIsInTask() then
		if self._TaskInfo["PanelChooseEnd"] then
			if rwChkFunc(self._TaskInfo["DialogueEndFunc"]) then
				self._TaskInfo["DialogueEndFunc"]()            
			end
			return
		end
        self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,1)    
        if rwChkFunc(self._TaskInfo["DialogueEndFunc"]) then
            self._TaskInfo["DialogueEndFunc"]()            
        end 
        self:CompleteTask()
    end
end
