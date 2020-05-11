--region 		[System]ActivityTab.lua
--Purpose:		活动面板自定义逻辑
--Creator: 		苏亚玲
--Created:		2019-10-31
--Modifier:		$Author: 苏亚玲 $
--Modified:		$Date: 2020-04-13 $
--RCS-ID:		$Revision: 7 $
--endregion

--===================================================================
--======================== 活动面板自定义逻辑 =======================
--===================================================================


--============================== 奥兹家族 ==========================

Dailyact_ActivityTab_Activity[10040] = {}
Dailyact_ActivityTab_Activity[10040]["Func"] = function()
    local tOzzyTaskList = rwTaskGetListByType(CONST_TASK_TYPE.FAMILY_OZZY)
    local nFinalTaskId = 70339
    rwOpenLocalWnd(CONST_MENUTYPE.MainPanel)
    if tOzzyTaskList ~= nil and #tOzzyTaskList > 0 then
        local nTaskId = tOzzyTaskList[1]
        if nTaskId and nTaskId ~= 0 then
            rwLinkTaskGetAward(nTaskId)
        end
    elseif rwTaskGetFinishMask(nFinalTaskId) == 1 then
        rwOpenNpcChatDialog(13274)
    end
end

--============================== 王牌家族 ==========================

--Dailyact_ActivityTab_Activity[10054] = {}
--Dailyact_ActivityTab_Activity[10054]["Func"] = function()
--   rwOpenNpcChatDialog(13498)
--end

--rwtDialog[13498] = {}
--rwtDialog[13498]["OptionFunc1"] = function()
--    rwOpenLocalWnd(CONST_MENUTYPE.MainPanel)
--	local tWPTJTaskList = rwTaskGetListByType(CONST_TASK_TYPE.POKER)
--    if tWPTJTaskList ~= nil and #tWPTJTaskList > 0 then
--        local nTaskId = tWPTJTaskList[1]
--        if nTaskId and nTaskId ~= 0 then
--            rwLinkTaskGetAward(nTaskId)
--        end
--    end
--end

Dailyact_ActivityTab_Activity[10026] = {}
Dailyact_ActivityTab_Activity[10026]["Func"] = function()

    if rwTaskIsSuccess(70239) then

        rwOpenLocalWnd(CONST_MENUTYPE.Poker)

    else
       rwOpenNpcChatDialog(13498)
    end

end

rwtDialog[13498] = {}
rwtDialog[13498]["OptionFunc1"] = function()
    rwOpenLocalWnd(CONST_MENUTYPE.MainPanel)
	local tWPTJTaskList = rwTaskGetListByType(CONST_TASK_TYPE.POKER)
    if tWPTJTaskList ~= nil and #tWPTJTaskList > 0 then
        local nTaskId = tWPTJTaskList[1]
        if nTaskId and nTaskId ~= 0 then
            rwLinkTaskGetAward(nTaskId)
        end
    end
end



--============================== 秘宝合约 ==========================


Dailyact_ActivityTab_Activity[10053] = {}
Dailyact_ActivityTab_Activity[10053]["Func"] = function()
   if not rwTaskIsSuccess(70528) then 
        local nTaskDetailType = rwtTask[70528]["TaskDetailType"]
	    ENUM_TASK_TEMPLATE[nTaskDetailType]:create(70528):AcceptTask()
    else 
        rwOpenLocalWnd(CONST_MENUTYPE.Lottery)
    end

end

