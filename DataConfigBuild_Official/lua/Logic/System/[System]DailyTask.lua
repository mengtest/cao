--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion
local nMaxDailyTime = 10
local nUserData = 1014 --玩家掩码
local nCompleteDialog = 11046
local tMercenaryDailyAward = {3003000,3003001,3003002,3003003,3003004,3003005,3003006,3003007,3003008,3003009,3003010,3003011,3003012,3003013,3003014,3003015,3003016,3003017,3003018,3003019,3003020,3003021,3003022,3003023,3003024,3003025,3003026,3003027,3003028,3003029,3003030,3003031,3003032,3003033,3003034,3003035,3003036,3003037,3003038,3003039,3003040,3003041,3003042,3003043,3003044,3003045,3003046,3003047,3003048,3003049,3003050,3003051,3003052,3003053,3003054,3003055,3003056,3003057,3003058,3003059,3003060,3003061,3003062,3003063,3003064,3003065,3003066,3003067,3003068,3003069,3003070,3003071,3003072,3003073,3003074,3003075,3003076,3003077,3003078,3003079,3003080,3003081,3003082,3003083,3003084,3003085,3003086,3003087,3003088,3003089,3003090,3003091,3003092,3003093,3003094,3003095,3003096,3003097,3003098,3003099,3003100,3003101,3003102,3003103,3003104,3003105,3003106,3003107,3003108,3003109,3003110,3003111,3003112,3003113,3003114,3003115,3003116,3003117,3003118,3003119}

--随机一个佣兵日常
function MercenaryDailyTask_Random()
    local nCurrentTime
        nCurrentTime = nMaxDailyTime -rwUserGetTimesLeft(CONST_USER_TIMESTYPE.MercenaryDaily) 
    nCurrentTime =nCurrentTime+1
    if nCurrentTime <=0 then 
       nCurrentTime = 1 
    end
    local tRandomTable = {}
    for i,v in pairs(rwtMercenaryDailyTaskListInfo) do
        if rwtTask[v]["TaskTimes"] == nCurrentTime then          
            if rwSysGetTaskLockMask(rwtTask[v]["DailyTaskAreaId"],rwtTask[v]["DailyTaskTownId"]) then
               table.insert (tRandomTable,v)
            end
        end
    end
    local nLen = table.getn(tRandomTable)
    if nLen < 1 then
        return 0
    end
    local nRandom = math.random(1,nLen)
    return tRandomTable[nRandom] or 0
end

--接受任务
function MercenaryDailyTask_Accept(nTaskId)
    local nVal = nMaxDailyTime -rwUserGetTimesLeft(CONST_USER_TIMESTYPE.MercenaryDaily)
    nVal = nVal + 1
    rwUserTempDataSet(nUserData,nVal)
    
    rwTaskSetData(nTaskId, CONST_TASK_INFO_INDEX.TASK_DATA6, nVal)
    rwTaskSetData(nTaskId, CONST_TASK_INFO_INDEX.TASK_DATA7, nMaxDailyTime)
end

--单个日常任务完成
function MercenaryDailyTask_Finish(nTaskId)
    if not rwtTask[nTaskId] then
        return 
    end
     --数据埋点 --佣兵日常---------------
       local nLeftTimes = rwUserGetTimesLeft(CONST_USER_TIMESTYPE.MercenaryDaily)
       local nAllTimes = rwGetUserTimesLimit(CONST_USER_TIMESTYPE.MercenaryDaily)
       local nDoTimes = nAllTimes-nLeftTimes
       rwSetTaskFinishNum(CONST_TASK_TYPE.MERCENARY_DAILY,nDoTimes)
    --------------------------------------
    local nVal = rwTempDataGetValue(nUserData)
    if nVal >= nMaxDailyTime then
        rwUserTempDataSet(nUserData,0)
    end
    local nCurrentTime = nMaxDailyTime -rwUserGetTimesLeft(CONST_USER_TIMESTYPE.MercenaryDaily) 
    rwTaskSetData(nTaskId, CONST_TASK_INFO_INDEX.TASK_DATA6, nCurrentTime)
    --奖励
    local nUserLev = rwUserGetLevel()
    local nAwardId =tMercenaryDailyAward[nUserLev]
    local tAwardInfo = {}
    tAwardInfo["Awards"] = {}
	tAwardInfo["Awards"]["Events"] = {}
	tAwardInfo["Awards"]["Events"][1] = {}
	tAwardInfo["Awards"]["Events"][1]["GetServerAward"] = {}
    tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
    tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId
	tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
	tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId
	rwBaseAward:create(tAwardInfo["Awards"]):Process() 
    -- local awardCode = rwBaseAward:create(CONST_ACTION_TYPE.TASK,nTaskId,tAwardInfo["Awards"]):Process() 
    -- if awardCode ~= CONST_CODE.OK then
        -- rwPrintErrorLog("nTaskId:"..nTaskId.."award error")
    -- end
--    rwAddLeagueExp(10)   --添加自律联盟经验
    if rwUserGetTimesLeft(CONST_USER_TIMESTYPE.MercenaryDaily) < 1 then   
--        rwSendSystemMessage("今天的佣兵日常已全部做完")
		rwSysIncreaseUserTimes(CONST_USER_TIMESTYPE.MercenaryPaotui)
        MercenaryDailyTask_AllFinish(nTaskId)  
    else
        --随机下个任务
        local nNextTaskId = MercenaryDailyTask_Random()
        if nNextTaskId and nNextTaskId ~= 0 then
            local nTaskDetailType = rwtTask[nNextTaskId]["TaskDetailType"]
            ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nNextTaskId):AcceptTask()
        end   
    end
end

         
--全部日常完成
function MercenaryDailyTask_AllFinish(nTaskId)
    local tAwardInfo = {}
    tAwardInfo["Awards"] = {}
	tAwardInfo["Awards"]["Events"] = {}
	tAwardInfo["Awards"]["Events"][1] = {}
	tAwardInfo["Awards"]["Events"][1]["GetServerAward"] = {}
    tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
    tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000064
	tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
	rwBaseAward:create(tAwardInfo["Awards"]):Process() 
    --local awardCode = rwBaseAward:create(CONST_ACTION_TYPE.GIFT,tAwardInfo["Awards"]["AwardId"],tAwardInfo["Awards"]):Process() 
end

--第十环任务完成弹对话
function MercenaryDailyTask_CompleteDialog(nTaskId)
    if rwtTask[nTaskId]["TaskType"] then
        if rwtTask[nTaskId]["TaskType"] == CONST_TASK_TYPE.MERCENARY_DAILY  and rwtTask[nTaskId]["TaskTimes"] == 10 then
            rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10003],1)
        end
    end       
end

