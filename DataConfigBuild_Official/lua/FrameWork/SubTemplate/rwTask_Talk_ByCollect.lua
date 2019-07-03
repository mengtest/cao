--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion
rwTask_Talk_ByCollect = class("rwTask_Talk_ByCollect",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT] = rwTask_Talk_ByCollect


function rwTask_Talk_ByCollect:OnCollectEndCallBack()
     if self:UserIsInTask() then
        local nOldNum = rwTaskGetData(self._TaskId,CONST_TASK_INFO_INDEX.TASK_DATA1)
        local nNeedNum = self._TaskInfo.ReqCollectCount1 or 1
        local nOnceNum = self._TaskInfo.ReqCollectOnceNum or 1
        local nCurNum = nOldNum + nOnceNum
        nCurNum = ((nCurNum > nNeedNum) and {nNeedNum} or {nCurNum})[1]  --防止数值溢出
        --rwPrintWarnLog("HYQnCurNum：" .. nCurNum)
        --rwPrintWarnLog("HYQnNeedNum：" .. nNeedNum)
        self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,nCurNum)       
        if nCurNum >= nNeedNum then
             rwOpenNpcChatDialog(self._TaskInfo["DialogId"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
        end

         --提示部分
        if self._TaskInfo.CollectSuccessMsgType and self._TaskInfo.CollectSuccessMsgText and nCurNum >= nNeedNum then
            rwSendSystemMessage(self._TaskInfo.CollectSuccessMsgText,self._TaskInfo.CollectSuccessMsgType)
        elseif self._TaskInfo.CollectEndMsgType and self._TaskInfo.CollectEndMsgText then
            rwSendSystemMessage(self._TaskInfo.CollectEndMsgText,self._TaskInfo.CollectEndMsgType)
        end
    end
end

--对白回调
function rwTask_Talk_ByCollect:DialogEndCallBack(nDialogId)
    --rwPrintWarnLog("rwTask_Talk_ByCollect:DialogEndCallBack" .. self._TaskId)
    if self._TaskInfo["CloseDialog"] and self._TaskInfo["CloseDialog"] == 0 then
        --配置0不关闭
    else
        --不配置默认关闭对话框
        rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,nDialogId)
    end
    if rwChkFunc(self._TaskInfo["DialogueEndFunc"]) then
        self._TaskInfo["DialogueEndFunc"]()            
    end 
        
    self:CompleteTask()
end
