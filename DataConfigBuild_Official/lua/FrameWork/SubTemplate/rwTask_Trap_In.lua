--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--到达陷阱完成任务
--YJX


--endregion

rwTask_Trap_In = class("rwTask_Trap_In",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.TRAP_IN] = rwTask_Trap_In

function rwTask_Trap_In:TrapOnTask()
    if self:UserIsInTask() then
        self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,1)
        self:CompleteTask()
    end
end