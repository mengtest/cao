--region rwTask_ChooseOption.lua
--Purpose:		选项任务模板
--Creator: 		余锦鑫
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-03-10 $
--RCS-ID:		$Revision: 4 $
--endregion

rwTask_ChooseOption = class("rwTask_ChooseOption",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION] = rwTask_ChooseOption


function rwTask_ChooseOption:ctor(nTaskId)
    self.super:ctor(nTaskId)
end


function rwTask_ChooseOption:OnTaskDialogClick(nOptionIndex,nDialog)
    --rwPrintWarnLog("rwTask_ChooseOption:OnTaskDialogClick" .. self._TaskId)
    if self:UserIsInTask() then
        if self._TaskInfo["OptionTask"..nOptionIndex] then
           rwTaskSetFinish(self._TaskId)
           self:DelDynaObj(CONST_TASK_INFO_DELTYPE.Complete)
           self:DelDynaObj(CONST_TASK_INFO_DELTYPE.Success)
           self:FinishTask_GetAward()
           if self._TaskInfo["OptionFunc"..nOptionIndex] and rwChkFunc(self._TaskInfo["OptionFunc"..nOptionIndex]) then
              self._TaskInfo["OptionFunc"..nOptionIndex]()
           end
           self:FinishTask_AcceptNextTask(nOptionIndex)
        end    

        if self._TaskInfo["DialogOption"] then
            if self._TaskInfo["DialogOption"][nDialog] then
                if self._TaskInfo["DialogOption"][nDialog][nOptionIndex] then
                    if self._TaskInfo["DialogOption"][nDialog][nOptionIndex]["type"] then
                        --选项后续结对白
                        if self._TaskInfo["DialogOption"][nDialog][nOptionIndex]["type"] == CONST_TASK_DIALOG_OPTION_TYPE.Dialog then
                            if self._TaskInfo["DialogOption"][nDialog][nOptionIndex]["DialogId"] then
                                rwOpenNpcChatDialog(self._TaskInfo["DialogOption"][nDialog][nOptionIndex]["DialogId"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
                            end
                        elseif self._TaskInfo["DialogOption"][nDialog][nOptionIndex]["type"] == CONST_TASK_DIALOG_OPTION_TYPE.KillMonster then
                            if self:UserIsInTask() then
                                self:CreateMonsterAndBattle()
                            end                        
                        end
                    end
                end
            end
        end
    end
end

function rwTask_ChooseOption:FinishTask_AcceptNextTask(nOptionIndex)
    --rwPrintWarnLog("rwTask_ChooseOption:FinishTask_AcceptNextTask" .. self._TaskId)
	if rwChkInt(nOptionIndex) then
		if self._TaskInfo["OptionTask"..nOptionIndex] and self._TaskInfo["OptionTask"..nOptionIndex] ~= 0 then
			rwLinkTaskAccept(self._TaskInfo["OptionTask"..nOptionIndex])
            		return
		end
	end
    self.super:FinishTask_AcceptNextTask()
end

--陷阱触发
function rwTask_ChooseOption:TrapOnTask()
    if self._TaskInfo["DialogId"] then
        rwOpenNpcChatDialog(self._TaskInfo["DialogId"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
    end
end

--采集触发
function rwTask_ChooseOption:OnCollectEndCallBack()
    if self._TaskInfo["DialogId"] then
        rwOpenNpcChatDialog(self._TaskInfo["DialogId"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
    end
end

--点击面板触发
function rwTask_ChooseOption:OnTaskPanelClick()
	if self._TaskInfo["PanelTalk"] and self._TaskInfo["DialogId"] and not self:TaskIsComplete() then
        rwOpenNpcChatDialog(self._TaskInfo["DialogId"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
	end
end

--完成任务时的对白回调
function rwTask_ChooseOption:FinishDialogCallBack(nDialogId)
    self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,1)
    if rwChkFunc(self._TaskInfo["DialogueEndFunc"]) then
        self._TaskInfo["DialogueEndFunc"]()
    end 
    self:CompleteTask()
end

--创建怪物并进入战斗
function rwTask_ChooseOption:CreateMonsterAndBattle()
    local nGenId = self._TaskInfo["MonsterGroupGenId"]
    if nGenId then    
        if not rwHasGenEvent(nGenId) then
            rwAddGenEvent(nGenId)
        end
        rwAutoBattle(nGenId)
    end
end

--怪物组死亡
function rwTask_ChooseOption:MonsterGroupBeKilled()
    if self:UserIsInTask() then
        local nOldNum = rwTaskGetData(self._TaskId,CONST_TASK_INFO_INDEX.TASK_DATA1)
        local nNeedNum = self._TaskInfo.KillMonsterGroupCount1 or 1
        local nCurNum = nOldNum + 1
        nCurNum = ((nCurNum > nNeedNum) and {nNeedNum} or {nCurNum})[1]  --防止数值溢出
        self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,nCurNum)       
        if nCurNum >= nNeedNum then
            self:CompleteTask() 
            
            if rwChkInt(self._TaskInfo["IsMercenaryBattleDialog"]) and not self._TaskInfo["ChkOpenDialog"] then
                rwOpenNpcChatDialog(self._TaskInfo["IsMercenaryBattleDialog"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
            end
        end
    end
end
--在佣兵任务时，且有战后对白，跳过打开佣兵面板逻辑
function rwTask_ChooseOption:FinishTask_OpenMercenaryMenu()
    if self._TaskType == CONST_TASK_TYPE.MERCENARY and not rwChkInt(self._TaskInfo["IsMercenaryBattleDialog"]) then
        rwOpenLocalWnd(CONST_MENUTYPE.Mercenary)
    end
end
