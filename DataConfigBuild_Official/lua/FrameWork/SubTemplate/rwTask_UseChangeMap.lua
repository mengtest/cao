--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--使用传送阵
--mzy


--endregion

rwTask_UseChangeMap = class("rwTask_UseChangeMap",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.USE_CHANGEMAP] = rwTask_UseChangeMap

function rwTask_UseChangeMap:UseChangeMapPoint(nChangeMapPoint)
    if self._TaskInfo["ChangeMapPointId"] and nChangeMapPoint == self._TaskInfo["ChangeMapPointId"] then
--        self:SetTaskCompleteFlag()
        self:CompleteTask()
    end
end