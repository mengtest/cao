--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--采集任务
--YJX


--endregion
--[[
--相关字段
ReqCollectId1 = 0 采集的NPC组ID
ReqCollectCount1 = 0 需要采集个数
ReqCollectOnceNum = 0 采集一次增加的个数（特殊时用）

CollectEndMsgType = 0  提示类型 1弹窗 2飘字
CollectEndMsgText = ""  采集后提示文字

IsClickComplete =1 表示需要点面板才能完成
--]]

rwTask_Collect = class("rwTask_Collect",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.COLLECT] = rwTask_Collect

function rwTask_Collect:OnCollectEndCallBack()
    if self:UserIsInTask() then
        local nOldNum = rwTaskGetData(self._TaskId,CONST_TASK_INFO_INDEX.TASK_DATA1)
        local nNeedNum = self._TaskInfo.ReqCollectCount1 or 1
        local nOnceNum = self._TaskInfo.ReqCollectOnceNum or 1
        local nCurNum = nOldNum + nOnceNum
        nCurNum = ((nCurNum > nNeedNum) and {nNeedNum} or {nCurNum})[1]  --防止数值溢出
        self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,nCurNum)       
        if nCurNum >= nNeedNum then
            self:CompleteTask() 
        end

        --提示部分
        if self._TaskInfo.CollectSuccessMsgType and self._TaskInfo.CollectSuccessMsgText and nCurNum >= nNeedNum then
            rwSendSystemMessage(self._TaskInfo.CollectSuccessMsgText,self._TaskInfo.CollectSuccessMsgType)
        elseif self._TaskInfo.CollectEndMsgType and self._TaskInfo.CollectEndMsgText then
            rwSendSystemMessage(self._TaskInfo.CollectEndMsgText,self._TaskInfo.CollectEndMsgType)
        end
    end
end