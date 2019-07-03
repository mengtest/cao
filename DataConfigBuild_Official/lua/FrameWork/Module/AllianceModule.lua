--region MercenaryModule.lua
--Date
--自律联盟模块



--endregion

--===================================================================
--===========================取值函数================================
--===================================================================




--===================================================================
--==============================功能函数=============================
--===================================================================
---
-- 添加自律联盟经验
-- @param nVal 经验值
-- @return 布尔值
function rwAddLeagueExp(nVal)
    rwPrintNormalLog({Func = "rwAddLeagueExp",nVal = nVal})
    return AddLeagueExp(nVal) 
end

-- 设置玩家当日当类任务完成次数(需要带入次数参数)
-- @param nType 索引CONST_TASK_TYPE
-- @param nNum  当日完成次数（次数上限减去剩余次数）
-- @usage 当nType = 3时，表示悬赏任务
-- @usage 当nType = 5时，表示佣兵委托
-- @usage 当nType = 6时，表示佣兵日常
-- @usage 当nType = 8时，表示巡查任务
 function rwSetTaskFinishNum(nType,nNum)  
    rwPrintNormalLog({Func = "rwSetTaskFinishNum",nType = nType,nNum = nNum})
    return SetTaskFinishNum(nType,nNum)
 end

-- 更新悬赏状态掩码
-- @param nData1 悬赏id
-- @param nData2  这只怪的状态，1：接取任务中（杀怪+复命），2：任务完成
 function rwUpdataArrestTaskData(nArrestId,nState)  
    return UpdataUserArrestTaskData(nArrestId, nState) 
 end

--===================================================================
--===============================回调================================
--===================================================================
---
-- [回调]佣兵面板刷新按钮点击触发
-- @param nFreshType 刷新类型
-- @return 布尔值
-- @usage 当nFreshType = 0时，表示免费刷新
-- @usage 当nFreshType = 1时，表示付费刷新
function mercenarytask_refresh_all(nFreshType)
    return rwLinkRefreshAllMercenaryTask(nFreshType)
end

---
-- [回调]佣兵面板接受按钮点击触发
-- @param nTaskId 任务ID
function mercenarytask_accept(nTaskId)
    rwLinkAcceptMercenaryTask(nTaskId)
end

---
-- [回调]佣兵面板放弃按钮点击触发
-- @param nTaskId 任务ID
function mercenarytask_stop(nTaskId)
    rwLinkStopMercenaryTask(nTaskId)
end

---
-- [回调]佣兵面板委托按钮点击触发（目前无此功能）
-- @param nTaskId 任务ID
function mercenarytask_delegate(nTaskId)
    rwLinkDelegateMercenaryTask(nTaskId)
end   

---
-- [回调]悬赏面板接受按钮点击触发
-- @param nTaskId 任务ID
function arresttask_accept(nTaskId,nArrestId)
    rwLinkAcceptArrestTask(nTaskId,nArrestId)
end   

--===================================================================
--==============================回调封装=============================
--===================================================================

--佣兵任务面板刷新按钮
function rwLinkRefreshAllMercenaryTask(nFreshType)
    rwPrintNormalLog({Func = "rwLinkRefreshAllMercenaryTask",nFreshType = nFreshType})
    return rwRefreshAllMercenaryTask(nFreshType)
end

--接受佣兵任务
function rwLinkAcceptMercenaryTask(nTaskId)
    rwPrintNormalLog({Func = "rwLinkAcceptMercenaryTask",nTaskId = nTaskId})
    rwAcceptMercenaryTask(nTaskId)
end

--停止佣兵任务
function rwLinkStopMercenaryTask(nTaskId)
    rwPrintNormalLog({Func = "rwLinkStopMercenaryTask",nTaskId = nTaskId})
    rwStopMercenaryTask(nTaskId)
end

--委托佣兵任务
function rwLinkDelegateMercenaryTask(nTaskId)
    rwPrintNormalLog({Func = "rwLinkDelegateMercenaryTask",nTaskId = nTaskId})
    rwDelegateMercenaryTask(nTaskId)
end


--接受悬赏任务
function rwLinkAcceptArrestTask(nTaskId,nArrestId)    
    local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]

    if ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):AcceptTask() then
        rwUpdataArrestTaskData(nArrestId,1)
    else
        rwSendSystemMessage("无法接受任务")
    end
end