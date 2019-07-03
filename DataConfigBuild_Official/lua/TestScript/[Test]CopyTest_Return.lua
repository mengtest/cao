--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--重进副本表现测试
--by:mzy
--date:2018/08/16

--endregion

local nCopyMapId = 9006

local sReturnPos = "38.10,0.02,92.43"
local nReturnRot = 39

local nEffect_Return = 2042

--***************************逻辑******************************
------------------------副本-----------------------
--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function()
    rwSpecialStatus_AddEffect(1,0,nEffect_Return)
end