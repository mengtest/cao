--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--护送任务测试


--endregion

--任务ID
local nTestTask = 99991

--NPCID
local nNpc = 9991

--陷阱
local nTrap_1 = 99991--怪物陷阱
local nTrap_GenId_1 = 9999011
local sPos_1 = "-7.175586,0.06709957,-117.3301"

local nTrap_2 = 99992--完成任务陷阱
local nTrap_GenId_2 = 9999012
local sPos_2 = "-5.707922,0.33627,-128.129"

--怪物
local nMonsterId = 999991
local nMonster_GenId = 9999001

---------------------陷阱--------------
--触发战斗
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_1]["TrapFunc"] = function ()
    rwPrintLog("进入陷阱")
    rwDelGenEvent(nTrap_GenId_1)
    if not rwHasGenEvent(nMonster_GenId) then
        rwAddGenEvent(nMonster_GenId)
    end
    rwAutoBattle(nMonster_GenId)
end
--完成任务
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[nTrap_2]["TrapFunc"] = function ()
--    if rwTaskChkUserInTask(nTestTask) then
--        rwTaskSetFinish(nTestTask)
--    end
--end

----------------------任务----------------------
rwtTask[nTestTask] = {}
rwtTask[nTestTask]["Title"] = "护送测试"
rwtTask[nTestTask]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
--rwtTask[nTestTask]["CompleteTrap"] = nTrap_2
--rwtTask[nTestTask]["DynaNpcGroupGen"] = {nTrap_GenId_1,nTrap_GenId_2}
rwtTask[nTestTask]["DynaNpcGroupGen"] = {nTrap_GenId_2}
rwtTask[nTestTask]["DynaNpcGroupMapId"] = 2001
rwtTask[nTestTask]["DialogId" ]= 5015
--rwtTask[nTestTask]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK
rwtTask[nTestTask]["ReqTrap1" ]= nTrap_2

--rwtTask[nTestTask] = {}
--rwtTask[nTestTask]["Title" ]= "护送测试"
--rwtTask[nTestTask]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK
--rwtTask[nTestTask]["DynaNpcGroupGen"] = {nTrap_GenId_1,nTrap_GenId_2}
--rwtTask[nTestTask]["DynaNpcGroupMapId"] = 2001