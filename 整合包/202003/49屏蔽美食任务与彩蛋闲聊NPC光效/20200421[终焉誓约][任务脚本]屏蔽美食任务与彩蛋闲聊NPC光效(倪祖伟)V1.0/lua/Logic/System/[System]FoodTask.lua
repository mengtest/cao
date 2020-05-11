--region [System]FoodTask.lua
--Purpose:		自律联盟 美食任务
--Creator: 		黄业勤
--Created:		2019-09-09
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-4-21 $
--RCS-ID:		$Revision: 6 $
--endregion
--主线任务id（完成任务后解锁开启自律联盟，并开启所有佣兵任务，包含日常、委托等）
local nTaskId_LMDL_Final = 10270

--玩家掩码  1241 --掩码第一位记录任务ID 第二位记录随机的星期 第三位记录随机的时段早中晚 第四位记录任务NPC 第5位记录此任务对应的伦纳德闲聊
local nUserRecordId = 1241

tFoodTaskInfo["TimeConfig"] = {}
tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Breakfast] = {HourMin = 7 ,HourMax = 9}
tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Lunch]     = {HourMin = 11,HourMax = 13}
tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Dinner]    = {HourMin = 17,HourMax = 19}

--美食任务奖励
--美食任务奖励ID 	3006285	3006384
local nFoodTaskAwardStartID = 3006284

function rwFoodTaskGetDynamicAwardId()
    local nAwardId = 0
    local nUserLev = rwUserGetLevel()    
    nAwardId = nFoodTaskAwardStartID+nUserLev
    return nAwardId
end


----玩家的彩蛋任务表
--local tEggTask = {}


--任务中或者任务后 随机伦纳德对白 1846 1847 1848
function rwFoodTask_LunNaDe_Dialog_Random()
    local tDialog = {1846,1847,1848}
    local nRandom = math.random(1,#tDialog)
    rwOpenNpcChatDialog(tDialog[nRandom],CONST_NPCCHAT_TYPE.NPC)
end

--检索出对应的符合条件的彩蛋/非彩蛋任务
function rwFoodTask_NowTimeCanAccept_Task(nFoodTaskWeek,nFoodTaskTime,nUserLevel,nFoodTaskEgg)
    rwtFoodTaskListInfo[nFoodTaskWeek] = rwtFoodTaskListInfo[nFoodTaskWeek] or {}
    rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime] = rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime] or {}
    rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime][nUserLevel] = rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime][nUserLevel] or {}
    rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime][nUserLevel][nFoodTaskEgg] = rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime][nUserLevel][nFoodTaskEgg] or {}
    local tNowTimeTask = {}
    for _,v in pairs(rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime][nUserLevel][nFoodTaskEgg]) do
        if not rwTaskIsSuccess(v) then
            --加入筛选表
            table.insert(tNowTimeTask,v);
        end
    end
    return tNowTimeTask
end

--随机出一个当前时间点的彩蛋/非彩蛋任务
function rwFoodTask_NowTime_Task(tNowTimeTask)
    if tNowTimeTask and #tNowTimeTask >0 then
        local nNowTimeTaskIndex = math.random(1,#tNowTimeTask)
        return tNowTimeTask[nNowTimeTaskIndex]
    else
        return 0
    end
end


--将当前随机到的任务写入数据库
function rwFoodTask_WriteToDB(nNowTimeTask,nFoodTaskWeek,nFoodTaskTime)
--    if (not nNowTimeTask) or (nNowTimeTask == 0) then  
--        return
--    end
     --判断玩家是否存在掩码，如无则创建
    if not rwTempDataIsExist(nUserRecordId) then		--判断是否存在掩码(如果是早餐则nFoodTaskTime=1，掩码对应为1241)
		rwTempDataAdd(nUserRecordId)
	end
    --掩码第一位记录任务ID 第二位记录随机的星期 第三位记录随机的时段早中晚 第四位记录任务NPC 第5位记录此任务对应的伦纳德闲聊对白ID
    rwUserTempDataSet(nUserRecordId,nNowTimeTask ,CONST_TEMP_DATA.Data1,0,true)  --没有任务可以接时，写入的任务id为0
    rwUserTempDataSet(nUserRecordId,nFoodTaskWeek,CONST_TEMP_DATA.Data2,0,true)
    rwUserTempDataSet(nUserRecordId,nFoodTaskTime,CONST_TEMP_DATA.Data3,0,true)
    if nNowTimeTask and nNowTimeTask~=0 then
        if rwtTask[nNowTimeTask]["StartNpc"] then
            rwUserTempDataSet(nUserRecordId,rwtTask[nNowTimeTask]["StartNpc"],CONST_TEMP_DATA.Data4,0,true)
        end
        if rwtTask[nNowTimeTask]["FoodTaskLunNaDeDialog"] then
            rwUserTempDataSet(nUserRecordId,rwtTask[nNowTimeTask]["FoodTaskLunNaDeDialog"] ,CONST_TEMP_DATA.Data5,0,true)
        end
    end
    return
end

--根据玩家掩码处理判断按钮是否出现
function rwFoodTask_HandleByUserRecord(nNpcId)
    --判断玩家是否存在掩码，如无则创建
--    rwSendSystemMessage("rwFoodTask_HandleByUserRecord"..nNpcId,1,1)
    if not rwTempDataIsExist(nUserRecordId) then
		rwTempDataAdd(nUserRecordId)
	end
    local nFoodTask = rwTempDataGetValue(nUserRecordId,CONST_TEMP_DATA.Data1)
    if rwFoodTask_HandleAnNiu(nFoodTask,nNpcId) then
        return true
    end
    return false
end

--判断是否出按钮
function rwFoodTask_HandleAnNiu(nFoodTask,nNpcId)
    if nFoodTask and nFoodTask ~= 0 then
        --判断任务npc是否是当前npc
--        rwSendSystemMessage("rwFoodTask_HandleAnNiu"..rwtTask[nFoodTask]["StartNpc"] ,1,1)
--        rwSendSystemMessage("nNpcId:"..nNpcId ,1,1)
        if rwtTask[nFoodTask]["StartNpc"] and (rwtTask[nFoodTask]["StartNpc"] == nNpcId) then
        --rwSendSystemMessage("rwFoodTask_HandleAnNiu    "..nNpcId,1,1)
            return true
        end
    end
    return false
end


--【是否已做完当前时段任务】
function rwFoodTask_IF_FinshTask()
      --判断玩家是否存在掩码，如无则创建
    if not rwTempDataIsExist(nUserRecordId) then
		rwTempDataAdd(nUserRecordId)
	end
    local nFoodTask = rwTempDataGetValue(nUserRecordId,CONST_TEMP_DATA.Data1)
    local nFoodTaskTime = rwTempDataGetValue(nUserRecordId,CONST_TEMP_DATA.Data3)
    if (nFoodTask == 0) and (nFoodTaskTime ~= 0) then
        return true
    end
    return false
end

--根据信息判断是否换时段 如果时间段不在用餐内则掩码全置0 如果在用餐时间内则判断是否跨时段
function rwFoodTask_IfChangTask(nFoodTaskTime)
    --判断玩家是否存在掩码，如无则创建
    if not rwTempDataIsExist(nUserRecordId) then		--判断是否存在掩码(如果是早餐则nFoodTaskTime=1，掩码对应为1241)
		rwTempDataAdd(nUserRecordId)
	end
    local nResetFlag = false
    --是否跨天
    if rwTempDataDayJudgment(nUserRecordId) then
        nResetFlag = true
    end
    --是否当天跨时段
    local nLastFoodTaskTime = rwTempDataGetValue(nUserRecordId,CONST_TEMP_DATA.Data3)
    if (not nLastFoodTaskTime) or (nLastFoodTaskTime == 0) then   --刚创建掩码时间段为0
        return true
    end
    if (nFoodTaskTime == nLastFoodTaskTime) then
    else
        nResetFlag = true
    end
    --掩码全置0
        if nResetFlag == true then 
            rwUserTempDataSet(nUserRecordId,0,CONST_TEMP_DATA.Data1,0,true)
            rwUserTempDataSet(nUserRecordId,0,CONST_TEMP_DATA.Data2,0,true)
            rwUserTempDataSet(nUserRecordId,0,CONST_TEMP_DATA.Data3,0,true)
            rwUserTempDataSet(nUserRecordId,0,CONST_TEMP_DATA.Data4,0,true)
            rwUserTempDataSet(nUserRecordId,0,CONST_TEMP_DATA.Data5,0,true)
        end
      return nResetFlag
end

--根据玩家掩码接对应任务
function rwFoodTask_AcceptTaskByUserRecord()
    --判断玩家是否存在掩码，如无则创建
    if not rwTempDataIsExist(nUserRecordId) then
		rwTempDataAdd(nUserRecordId)
	end
    --读取出任务ID
    local nFoodTask = rwTempDataGetValue(nUserRecordId,CONST_TEMP_DATA.Data1)
    if nFoodTask and nFoodTask ~= 0 then
        local nTaskDetailType = rwtTask[nFoodTask]["TaskDetailType"]
        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nFoodTask):AcceptTask()
    end   
    return
end


--【伦纳德对白处理】根据玩家掩码处理出现对白
function rwFoodTask_LunNaDeDialog()
    --判断玩家是否存在掩码，如无则创建
    if not rwTempDataIsExist(nUserRecordId) then
		rwTempDataAdd(nUserRecordId)
	end
    local nFoodDialog = rwTempDataGetValue(nUserRecordId,CONST_TEMP_DATA.Data5)
    
    if nFoodDialog  and (nFoodDialog ~= 0) then
        rwOpenNpcChatDialog(nFoodDialog)
    else
        --播放通用对白
        rwFoodTask_LunNaDe_Dialog_Random()
    end
    return
end

--获取星期和当前时段
function rwFoodTask_GetNowTimePart()
    local nRet = rwComGetCurrentTimebyTable()
    local nFoodTaskWeek = nRet.wday
    local nFoodTaskTime = 0
    for index,v in pairs(tFoodTaskInfo["TimeConfig"]) do
        if (nRet.hour >= tFoodTaskInfo["TimeConfig"][index]["HourMin"]) and (nRet.hour <= tFoodTaskInfo["TimeConfig"][index]["HourMax"]) then
            nFoodTaskTime = index
        end
    end
    return nFoodTaskWeek,nFoodTaskTime  --返回星期；对应餐点，1早餐，2午餐，3晚餐
end

--根据时间段随机对应任务处理总函数
function rwFoodTask_Random(nNpcId)
--    rwPrintWarnLog("rwFoodTask_Random nNpcId:"..nNpcId)
--    rwSendSystemMessage("rwFoodTask_RandomnNpcId "..nNpcId,1,1)
    --#####################################暂时打印总任务 --#####################################
--    rwPrintWarnLog("beginbeginbeginbeginbeginbeginbegin" )
--  for a,foodtaskweek in pairs(rwtFoodTaskListInfo) do
--    if foodtaskweek then
--     for b,foodtasktime in pairs(foodtaskweek) do
--        if foodtasktime then
--        for c,level in pairs(foodtasktime) do
--            if level then
--            for d,foodtaskegg in pairs(level) do
--                    if foodtaskegg then
--                    for e,taskid in pairs(foodtaskegg) do
--                        rwPrintWarnLog("taskid"..taskid)
--                        rwPrintWarnLog("-----------week " ..a.." time "..b.." level "..c.." egg "..d.." taskid "..taskid)
--                    end
--                    end
--            end
--            end
--        end
--        end
--     end
--     end
--  end
   --##################################### --#####################################
    --【变量定义】
--    local nRet = rwComGetCurrentTimebyTable()
    local nFoodTaskWeek
    local nFoodTaskTime = 0
    local nChuAnNiu = false  --是否出按钮
    ---【判断是否玩家身上有任务】
    local tFoodTask = rwTaskGetListByType(CONST_TASK_TYPE.FOOD)
	--身上已有美食任务
	if tFoodTask and #tFoodTask > 0 then
--        rwPrintWarnLog("身上已有美食任务:")
		return false
    end

    --【检测时间是否对应】
    nFoodTaskWeek,nFoodTaskTime = rwFoodTask_GetNowTimePart()
    --判断是否在用餐时间（不在）
    if nFoodTaskTime == 0 then 
--        rwPrintWarnLog("判断是否在用餐时间（不在）")
        return false
    end
    --判断时段是否更改
    if not rwFoodTask_IfChangTask(nFoodTaskTime) then
--        rwPrintWarnLog("判断时段是否更改")
        --根据数据库掩码判断是否是该npc
        if rwFoodTask_HandleByUserRecord(nNpcId) then
            nChuAnNiu = true
--            rwPrintWarnLog("根据数据库掩码判断是否是该npc")
        end
        --时段没改变且不是该npc
        return  nChuAnNiu  --不用做接下去的随机任务逻辑
    end
    --【需要从池子重新随机任务】
    --获取玩家等级（佣兵等级）
    local nUserLevel = rwUserGetLeagueLevel()
    --检索出对应的符合条件的彩蛋任务
    local tNowTimeEggTask = rwFoodTask_NowTimeCanAccept_Task(nFoodTaskWeek,nFoodTaskTime,nUserLevel,CONST_FOOD_EGG.IsEgg)
    --随机出一个当前时间点的彩蛋任务
    local nNowTimeEggTask = rwFoodTask_NowTime_Task(tNowTimeEggTask)
    local nFinalyTask = 0
    --当前时段有彩蛋任务
    if nNowTimeEggTask and nNowTimeEggTask ~= 0 then 
        nFinalyTask = nNowTimeEggTask
        --写入数据库记录
        rwFoodTask_WriteToDB(nNowTimeEggTask,nFoodTaskWeek,nFoodTaskTime)
    else
        --检索出对应的符合条件的非彩蛋任务
        local tNowTimeNotEggTask = rwFoodTask_NowTimeCanAccept_Task(nFoodTaskWeek,nFoodTaskTime,nUserLevel,CONST_FOOD_EGG.NoEgg)
        --随机出一个当前时间点的非彩蛋任务
        local nNowTimeNotEggTask = rwFoodTask_NowTime_Task(tNowTimeNotEggTask)
        nFinalyTask = nNowTimeNotEggTask
        --写入数据库记录
        rwFoodTask_WriteToDB(nNowTimeNotEggTask,nFoodTaskWeek,nFoodTaskTime)
    end
    --【根据任务判断是否出NPC对白右边的（舌尖上的联盟）按钮】
     nChuAnNiu = rwFoodTask_HandleAnNiu(nFinalyTask,nNpcId)
--    --没接到任务播放伦纳德闲聊
--    rwFoodTask_LunNaDe_Dialog_Random()
    return nChuAnNiu
end


--单个美食任务完成
function FoodTask_Finish(nTaskId)
    --把任务掩码置为0
    rwUserTempDataSet(nUserRecordId,0 ,CONST_TEMP_DATA.Data1,0)

     local nAwardId = rwFoodTaskGetDynamicAwardId()
        local tAwardInfo = {}
		tAwardInfo["Events"] = {}
		tAwardInfo["Events"][1] = {}
		tAwardInfo["Events"][1]["GetServerAward"] = {}
        tAwardInfo["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
        tAwardInfo["Events"][1]["GetServerAward"]["AwardId"] = nAwardId
		tAwardInfo["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.WINDOWS
		tAwardInfo["Events"][1]["GetServerAward"]["ActionId"] = nTaskId
		rwBaseAward:create(tAwardInfo):Process()
end


--------------------伦纳德头顶光效--------------------

--检测玩家是否解锁美食任务且在地图1000
function rwFoodTask_CheckMapAndTask()
    local nMapId = rwUserGetCurMapId()
    if nMapId ~= 1000 then
        return false
    end
    if not rwTaskIsSuccess(nTaskId_LMDL_Final) then
        return false
    end
    return true
end

 --给伦纳德加buff
function rwFoodTask_AddEffect()
    local nLunnade_gen = 2001656
    local nEffectId = 2081
    local sPos = "-31.285,558.39,105.38"   --光效位置
    local sRot = "-4.324,124.453,17.177"   --光效位置
--   rwSpecialStatus_AddEffect(4,nLunnade_gen,nEffectId,sPos) 
   rwSpecialStatus_AddEffect(7,0,nEffectId,sPos,sRot,70) 
   return
end

 --给伦纳德去buff
function rwFoodTask_RemoveEffect()
    local nLunnade_gen = 2001656
    local nEffectId = 2081
--   rwSpecialStatus_RemoveEffect(4,nLunnade_gen, nEffectId)
   rwSpecialStatus_RemoveEffect(7,0,nEffectId) 
   return
end

--时间开始处理
function rwFoodTask_OnTimer_Start()
    if not rwFoodTask_CheckMapAndTask() then
        return false
    end
    -- rwFoodTask_AddEffect()
    return true
end

--时间结束处理
function rwFoodTask_OnTimer_End()
    if not rwFoodTask_CheckMapAndTask() then
        return false
    end
    rwFoodTask_RemoveEffect()
    return true
end

--活动开始
tUserOntimerFunc_HM[tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Breakfast]["HourMin"]*100] = tUserOntimerFunc_HM[tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Breakfast]["HourMin"]*100] or {}
table.insert(tUserOntimerFunc_HM[tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Breakfast]["HourMin"]*100],rwFoodTask_OnTimer_Start)

tUserOntimerFunc_HM[tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Lunch]["HourMin"]*100] = tUserOntimerFunc_HM[tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Lunch]["HourMin"]*100] or {}
table.insert(tUserOntimerFunc_HM[tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Lunch]["HourMin"]*100],rwFoodTask_OnTimer_Start)

tUserOntimerFunc_HM[tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Dinner]["HourMin"]*100] = tUserOntimerFunc_HM[tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Dinner]["HourMin"]*100] or {}
table.insert(tUserOntimerFunc_HM[tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Dinner]["HourMin"]*100],rwFoodTask_OnTimer_Start)

--活动结束
tUserOntimerFunc_HM[(tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Breakfast]["HourMax"]+1)*100] = tUserOntimerFunc_HM[(tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Breakfast]["HourMax"]+1)*100] or {}
table.insert(tUserOntimerFunc_HM[(tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Breakfast]["HourMax"]+1)*100],rwFoodTask_OnTimer_End)

tUserOntimerFunc_HM[(tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Lunch]["HourMax"]+1)*100] = tUserOntimerFunc_HM[(tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Lunch]["HourMax"]+1)*100] or {}
table.insert(tUserOntimerFunc_HM[(tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Lunch]["HourMax"]+1)*100],rwFoodTask_OnTimer_End)

tUserOntimerFunc_HM[(tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Dinner]["HourMax"]+1)*100] = tUserOntimerFunc_HM[(tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Dinner]["HourMax"]+1)*100] or {}
table.insert(tUserOntimerFunc_HM[(tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Dinner]["HourMax"]+1)*100],rwFoodTask_OnTimer_End)

--function rwFoodTask_Text()
--   rwPrintWarnLog((tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Breakfast]["HourMin"]*100).."/n"..
--                   (tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Lunch]["HourMin"]*100).."/n"..
--                   (tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Dinner]["HourMin"]*100).."/n"..
--                   ((tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Breakfast]["HourMax"]+1)*100).."/n"..
--                   ((tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Lunch]["HourMax"]+1)*100).."/n"..
--                   ((tFoodTaskInfo["TimeConfig"][CONST_FOOD_TIME.Dinner]["HourMax"]+1)*100))
--end