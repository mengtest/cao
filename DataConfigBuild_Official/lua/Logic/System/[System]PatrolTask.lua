--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion


--巡查任务奖励
local nStartID = 3003159

function PatrolTaskGetDynamicAwardId()
    local nAwardId = 0
    local nUserLev = rwUserGetLevel()    
    nAwardId = nStartID+nUserLev
    return nAwardId
end



--跟比多猫对白时调用随机到各个小镇的巡查函数
function PatrolTask_First_Random()
    if rwUserGetTimesLeft(CONST_USER_TIMESTYPE.Patrol) < 1 then   
        rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10008])
        return
    end

    local tRandomTable = {}
    for i,v in pairs(rwtPatrolTaskListInfo) do
--        if rwtTask[v]["TaskTimes"] == nCurrentTime then         
            if rwSysGetTaskLockMask(rwtTask[v]["PatrolTaskAreaId"],rwtTask[v]["PatrolTaskTownId"]) then
               table.insert (tRandomTable,v)
            end
--        end
    end
    local nLen = table.getn(tRandomTable)
    if nLen < 1 then
        return 0
    end
    local nRandom = math.random(1,nLen)
    return tRandomTable[nRandom] or 0
end

--随机一个巡查第二个任务(第一个任务都是到对应巡查点)
function PatrolTask_Random(nTaskId)
    local tRandomTable = {}
    for i,v in pairs(rwtTask[nTaskId]["PatrolAfterTask"]) do         
        table.insert (tRandomTable,v)
    end
    local nLen = table.getn(tRandomTable)
    local nRandom = math.random(1,nLen)
    return tRandomTable[nRandom] or 0
end

--单个巡查任务完成
function PatrolTask_Finish(nTaskId)
    if not rwtTask[nTaskId] then
        return 
    end
     --随机下个任务  
    if rwtTask[nTaskId]["PatrolFirstTask"] and rwtTask[nTaskId]["PatrolFirstTask"] == 1 then
        if rwtTask[nTaskId]["PatrolAfterTask"] ~= nil and type(rwtTask[nTaskId]["PatrolAfterTask"]) == "table" then
          --首个任务随机下个任务
            local nNextTaskId = PatrolTask_Random(nTaskId)
            --接任务
            if nNextTaskId and nNextTaskId ~= 0 then
                local nTaskDetailType = rwtTask[nNextTaskId]["TaskDetailType"]
                ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nNextTaskId):AcceptTask()
            end   
       end
   end
    if rwtTask[nTaskId]["PatrolLastTask"] and rwtTask[nTaskId]["PatrolLastTask"] == 1 then
    --累加巡查任务次数
      rwSysIncreaseUserTimes(CONST_USER_TIMESTYPE.Patrol)
    --数据埋点 --巡查----------------
       local nLeftTimes = rwUserGetTimesLeft(CONST_USER_TIMESTYPE.Patrol)
       local nAllTimes = rwGetUserTimesLimit(CONST_USER_TIMESTYPE.Patrol)
       local nDoTimes = nAllTimes-nLeftTimes
       rwSetTaskFinishNum(CONST_TASK_TYPE.PATROL,nDoTimes)
    ---------------------------------
    --给回报联盟的奖励  
        local nAwardId = PatrolTaskGetDynamicAwardId()
        local tAwardInfo = {}
		tAwardInfo["Events"] = {}
		tAwardInfo["Events"][1] = {}
		tAwardInfo["Events"][1]["GetServerAward"] = {}
        tAwardInfo["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
        tAwardInfo["Events"][1]["GetServerAward"]["AwardId"] = nAwardId
		tAwardInfo["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
		tAwardInfo["Events"][1]["GetServerAward"]["ActionId"] = nTaskId
		rwBaseAward:create(tAwardInfo):Process()
        -- local awardCode = rwBaseAward:create(CONST_ACTION_TYPE.TASK,nTaskId,tAwardInfo):Process()
        -- if awardCode ~= CONST_CODE.OK then        
            -- rwPrintErrorLog("taskId:" .. self._TaskId .. "PatrolTask dynamic award error!")            
        -- end
        --假如还剩巡查次数自动打开跟比多猫的对话
        if rwUserGetTimesLeft(CONST_USER_TIMESTYPE.Patrol) >= 1 then
          --打开跟比多猫的对话
            rwNpcTemplate:create(20115,3080):Process()
        end
    end
end
