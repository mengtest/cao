--region 		[System]ActivityTab.lua
--Purpose:		活动面板自定义逻辑
--Creator: 		苏亚玲
--Created:		2019-10-31
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-04-30 $
--RCS-ID:		$Revision: 9 $
--endregion

--===================================================================
--======================== 活动面板自定义逻辑 =======================
--===================================================================


--============================== 奥兹家族 ==========================
local tDialog_ActivityTab = {}
tDialog_ActivityTab.WLMJPre = 13534

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


Dailyact_ActivityTab_Activity[10002] = {}
Dailyact_ActivityTab_Activity[10002]["Func"] = function()
    local nTaskPre = 70471
    if rwTaskIsSuccess(nTaskPre) then
        rwOpenLocalWnd(CONST_MENUTYPE.WenlyDream)
    else
        rwOpenNpcChatDialog(tDialog_ActivityTab.WLMJPre,CONST_NPCCHAT_TYPE.NPC)
    end
end

rwtDialog[tDialog_ActivityTab.WLMJPre] = {}
rwtDialog[tDialog_ActivityTab.WLMJPre]["OptionFunc1"] = function()
    rwOpenLocalWnd(CONST_MENUTYPE.MainPanel)
	local tTaskList_WLMJ = rwTaskGetListByType(CONST_TASK_TYPE.DREAM_PRE)
    if tTaskList_WLMJ ~= nil and #tTaskList_WLMJ > 0 then
        local nTaskId = tTaskList_WLMJ[1]
        if nTaskId and nTaskId ~= 0 then
            rwLinkTaskGetAward(nTaskId)
        end
    end
end


Dailyact_ActivityTab_Activity[10037] = {}
Dailyact_ActivityTab_Activity[10037]["Func"] = function()
    rwOpenLocalWnd(CONST_MENUTYPE.Knight)
    if not rwHasUserRecordData_System_Unlock(52) then
        rwAddUserRecordData_System_Unlock(52)
    end
  
end


--============================== 秘宝合约 ==========================


Dailyact_ActivityTab_Activity[10057] = {}
Dailyact_ActivityTab_Activity[10057]["Func"] = function()
    if not rwTaskIsAccept(70528) and not rwTaskIsSuccess(70528) then
        local nTaskDetailType = rwtTask[70528]["TaskDetailType"]
	    ENUM_TASK_TEMPLATE[nTaskDetailType]:create(70528):AcceptTask()
    else 
        rwOpenLocalWnd(CONST_MENUTYPE.MiBaoHeYue)
    end

end


--============================== 王牌家族 ==========================

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

--============================== 雾海危机 ==========================


Dailyact_ActivityTab_Activity[10015] = {}
Dailyact_ActivityTab_Activity[10015]["Func"] = function()
    if rwTaskIsSuccess(70222) then
        rwOpenLocalWnd(CONST_MENUTYPE.Darkdairy)

    else
       rwOpenNpcChatDialog(12869)
    end
end

rwtDialog[12869] = {}
rwtDialog[12869]["OptionFunc1"] = function()
    rwOpenLocalWnd(CONST_MENUTYPE.MainPanel)
    local tWPTJTaskList = rwTaskGetListByType(CONST_TASK_TYPE.WuHaiWeiJi)
    if tWPTJTaskList ~= nil and #tWPTJTaskList > 0 then
        local nTaskId = tWPTJTaskList[1]
        if nTaskId and nTaskId ~= 0 then
            rwLinkTaskGetAward(nTaskId)
        end
    end
end
