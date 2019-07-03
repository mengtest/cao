--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--NPC对白任务
--YJX

--endregion

--[[
--相关字段
DialogId = 0  剧情对白ID
DynaNpcGroupMapId = 0  任务地图ID
DynaNpcGroupGen = {}    动态列表

TaskNpc = 0   关联的NPC ID

IsClickComplete =1表示需要点面板才能完成

--]]

rwTask_Talk_ByNpc = class("rwTask_Talk_ByNpc",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.TALK_BY_NPC] = rwTask_Talk_ByNpc