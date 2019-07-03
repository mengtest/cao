--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--陷阱触发对白任务
--YJX


--endregion

--[[
--相关字段
DialogId = 0  剧情对白ID
DynaNpcGroupMapId = 0  任务地图ID
DynaNpcGroupGen = {}    动态列表

ReqTrap1 = 0  触发的陷阱ID

IsClickComplete =1表示需要点面板才能完成

--]]

rwTask_Talk_ByTrap = class("rwTask_Talk_ByTrap",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP] = rwTask_Talk_ByTrap

--陷阱触发
function rwTask_Talk_ByTrap:TrapOnTask()
    if self._TaskInfo["DialogId"] then
        rwOpenNpcChatDialog(self._TaskInfo["DialogId"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
    end
end