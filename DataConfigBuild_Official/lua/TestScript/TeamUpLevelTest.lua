--[英雄传说][测试脚本]战队升级回调接口测试 *.lua
--Date
--传送系统测试



--endregion
--当战队升级，弹出提示框
-- function Test_TeamUpLevel(nUserId)
--     rwPrintLog("战队升级测试")
--     local str = nUserId.."升级成功"
--     rwSendSystemMessage(str,1,2,nUserId)
-- end

-- table.insert(rwtTeamUpLevel, Test_TeamUpLevel)

-- --若领取了任务10100，改变10100的状态
-- function Test_TeamUpLevel_FinishTask(nUserId)
--     if rwTaskIsAccept(10100) and not rwTaskIsSuccess(10100) then
--         rwTaskSetData(10100,2,2)
--     end
-- end
-- table.insert(rwtTeamUpLevel, Test_TeamUpLevel_FinishTask)