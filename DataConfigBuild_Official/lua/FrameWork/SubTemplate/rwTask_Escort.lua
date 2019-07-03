--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--护送任务
--YJX


--endregion

--[[
--相关字段
ReqTrap1 = 0  触发的陷阱ID
DynaNpcGroupMapId = 0  任务地图ID
DynaNpcGroupGen = {}    动态列表

IsClickComplete =1表示需要点面板才能完成
--]]

rwTask_Escort = class("rwTask_Escort",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.ESCORT] = rwTask_Escort

--陷阱触发
function rwTask_Escort:TrapOnTask()
    if self:UserIsInTask() then
        if self._TaskInfo["DialogId"] then
            rwOpenNpcChatDialog(self._TaskInfo["DialogId"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
        else
            self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,1)
            self:CompleteTask()
        end
        
    end
end

--对白回调
function rwTask_Escort:DialogEndCallBack(nDialogId)
    --rwPrintWarnLog("rwBaseTask:DialogEndCallBack" .. self._TaskId)
    if self._TaskInfo["CloseDialog"] and self._TaskInfo["CloseDialog"] == 0 then
        --配置0不关闭
    else
        --不配置默认关闭对话框
        rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,nDialogId)
    end
    if self:UserIsInTask() then
        self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,1)
        
        if rwChkFunc(self._TaskInfo["DialogueEndFunc"]) then
            self._TaskInfo["DialogueEndFunc"]()            
        end 
        
        self:CompleteTask()
    end
end