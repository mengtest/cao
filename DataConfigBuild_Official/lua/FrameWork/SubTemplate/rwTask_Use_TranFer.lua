--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--使用传送阵
--YJX


--endregion

rwTask_Use_TranFer = class("rwTask_Use_TranFer",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.USE_TRANFER] = rwTask_Use_TranFer

function rwTask_Use_TranFer:UseTranFer(nTranFerId)
    if self._TaskInfo["TranFerId"] and nTranFerId == self._TaskInfo["TranFerId"] then
        self:SetTaskCompleteFlag()
        self:FinishTask()
    end
end