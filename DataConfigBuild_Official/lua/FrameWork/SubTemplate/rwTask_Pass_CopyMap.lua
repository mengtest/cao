--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--通关副本
--YJX


--endregion
--[[
--相关字段
PassCopyMap1 通关的副本ID，支持数值和表
PassCopyMapCount1 需要通关次数

IsClickComplete =1表示需要点面板才能完成
--]]


rwTask_Pass_CopyMap = class("rwTask_Pass_CopyMap",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.PASS_COPYMAP] = rwTask_Pass_CopyMap

--副本通关
function rwTask_Pass_CopyMap:OnPassCopyMap()
    if self:UserIsInTask() then
        local nOldNum = rwTaskGetData(self._TaskId,CONST_TASK_INFO_INDEX.TASK_DATA1)
        local nNeedNum = self._TaskInfo.PassCopyMapCount1 or 1
        local nCurNum = nOldNum + 1
        nCurNum = ((nCurNum > nNeedNum) and {nNeedNum} or {nCurNum})[1]  --防止数值溢出
        self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,nCurNum)       
        if nCurNum >= nNeedNum then
            self:CompleteTask() 
        end
    end
end

function rwTask_Pass_CopyMap:FinishTask_Interface()
    --rwPrintWarnLog("rwTask_Pass_CopyMap:FinishTask_Interface" .. self._TaskId)
    local nMapId = rwUserGetCurMapId()
    rwLinkCopyMapCreateEnterNpc(nMapId)
    if rwChkFunc(self._TaskInfo["AwardFunc"]) then
        self._TaskInfo["AwardFunc"]()
    end

end