--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--开宝箱任务
--HYQ


rwTask_OpenTreasureBox = class("rwTask_OpenTreasureBox",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX] = rwTask_OpenTreasureBox

function rwTask_OpenTreasureBox:OnOpenTreasureBox()
    if self._TaskInfo["DialogId"] then
        rwOpenNpcChatDialog(self._TaskInfo["DialogId"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
    end
    self:CompleteTask() 
end
