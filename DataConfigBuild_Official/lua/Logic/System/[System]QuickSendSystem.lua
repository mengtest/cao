--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--zy
--掩码备注
--使用玩家掩码1210来记录风迹快递的任务信息
--掩码data1 记录当前每轮环数（共10环）
--掩码data2 记录当日共做多少轮次数（共50次，周六周日不计次数）
--掩码data3 记录每周共做多少次（共200环）
--掩码data4 记录选项任务接受次数（1或2）
--掩码data5 记录当前任务ID（防止连续接受到相同任务）
--掩码data6 记录当前任务属于哪个片区地图
--endregion

local nTempDataId = 1210
--local nTempDataId_Time = 1222
--local nMaxWeekTimes = 200
--local nMaxDayTimes = 50
local nRecoveryTime = 1800
local nRecoveryTaskNum = 10
local nFloorTaskNum = 10
local nTopTaskNum = 40
local nCDTime = 180
local nCDTaskId = 90089
local nMorningStart = 21600
local nMorningEnd = 64800
local nEndTaskId = 90117
local nExtraTaskNum = 10

local tAward_Normal = {3003000,3003001,3003002,3003003,3003004,3003005,3003006,3003007,3003008,3003009,3003010,3003011,3003012,3003013,3003014,3003015,3003016,3003017,3003018,3003019,3003020,3003021,3003022,3003023,3003024,3003025,3003026,3003027,3003028,3003029,3003030,3003031,3003032,3003033,3003034,3003035,3003036,3003037,3003038,3003039,3003040,3003041,3003042,3003043,3003044,3003045,3003046,3003047,3003048,3003049,3003050,3003051,3003052,3003053,3003054,3003055,3003056,3003057,3003058,3003059,3003060,3003061,3003062,3003063,3003064,3003065,3003066,3003067,3003068,3003069,3003070,3003071,3003072,3003073,3003074,3003075,3003076,3003077,3003078,3003079,3003080,3003081,3003082,3003083,3003084,3003085,3003086,3003087,3003088,3003089,3003090,3003091,3003092,3003093,3003094,3003095,3003096,3003097,3003098,3003099,3003100,3003101,3003102,3003103,3003104,3003105,3003106,3003107,3003108,3003109,3003110,3003111,3003112,3003113,3003114,3003115,3003116,3003117,3003118,3003119}
--local tAward_Super = {}
--tAward_Super[50] = 3006281
--tAward_Super[100] = 3006282
--tAward_Super[150] = 3006283
--tAward_Super[200] = 3006284

local tQuickSendTownName = {}
tQuickSendTownName[1000]   = tLuaText[LANGUAGE_CONFIG][10184]
tQuickSendTownName[200101] = tLuaText[LANGUAGE_CONFIG][10048]
tQuickSendTownName[200102] = tLuaText[LANGUAGE_CONFIG][10049]
tQuickSendTownName[200103] = tLuaText[LANGUAGE_CONFIG][10050]
tQuickSendTownName[200104] = tLuaText[LANGUAGE_CONFIG][10051]
tQuickSendTownName[200105] = tLuaText[LANGUAGE_CONFIG][10052]
tQuickSendTownName[200301] = tLuaText[LANGUAGE_CONFIG][10053]
tQuickSendTownName[200302] = tLuaText[LANGUAGE_CONFIG][10054]
tQuickSendTownName[200303] = tLuaText[LANGUAGE_CONFIG][10055]
tQuickSendTownName[200304] = tLuaText[LANGUAGE_CONFIG][10056]
tQuickSendTownName[200305] = tLuaText[LANGUAGE_CONFIG][10057]
tQuickSendTownName[200501] = tLuaText[LANGUAGE_CONFIG][10185]
tQuickSendTownName[200502] = tLuaText[LANGUAGE_CONFIG][10186]
tQuickSendTownName[200503] = tLuaText[LANGUAGE_CONFIG][10187]
tQuickSendTownName[200504] = tLuaText[LANGUAGE_CONFIG][10188]
tQuickSendTownName[200505] = tLuaText[LANGUAGE_CONFIG][10189]

function QuickSendTask_GetTask()
    if not rwTempDataIsExist(nTempDataId) then
        rwTempDataAdd(nTempDataId)
    end
	local nData1 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data1)   --掩码data1 记录当前每轮环数（共10环）
	local nData2 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data2)   --掩码data2 记录当日共做多少轮次数（共50次，周六周日不计次数）
	local nData3 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data3)   --掩码data3 记录每周共做多少次（共200环）
--	local nData4 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data4)   --掩码data4 记录选项任务接受次数（1或2）
	local nData5 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data5)   --掩码data5 记录当前任务ID（防止连续接受到相同任务）
	local nData6 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data6)   --掩码data6 记录当前任务属于哪个城镇
	local nUserId = rwUserGetId()
	if not rwtQuickSendUserTaskInfo[nUserId] then
		 rwtQuickSendUserTaskInfo[nUserId] = {}
	end
--	local nCurWeekDay = tonumber(os.date("%w",os.time())) 
	if  rwTaskIsExist(nCDTaskId) then
		rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10172],1)
		return 0                    
	end
	local tOnlyNormalRandomTable = {}
	local tOptionRandomTable = {}
--	local tPreOptionRandomTable = {}
	
	if nData1 == 0 or nData1 == 5 then 
		if nData6 == 0 then --data6无数据时才重新随机城镇，改到播放衔接对白前随机城镇
			nData6 = QuickSendGetTownId()
			rwUserTempDataSet(nTempDataId, nData6, CONST_TEMP_DATA.Data6)
		end		
	end
    for i,v in pairs(rwtQuickSendTaskListInfo) do 	
		local bInsert = false	        
        if rwtTask[v]["QuickSendTownId"] == 1000  then
			if nData6 == rwtTask[v]["QuickSendTownId"] then
				bInsert = true
			end			
		elseif rwSysGetTaskLockMask(rwtTask[v]["QuickSendAreaId"],rwtTask[v]["QuickSendTownId"]) then
			bInsert = true
		end
		if bInsert then
			if rwChkInt(rwtTask[v]["QuickSendTownId"]) then --每个城镇的任务隔离开来
				tOnlyNormalRandomTable[rwtTask[v]["QuickSendTownId"]] = tOnlyNormalRandomTable[rwtTask[v]["QuickSendTownId"]] or {} 
--				tPreOptionRandomTable[rwtTask[v]["QuickSendTownId"]] = tPreOptionRandomTable[rwtTask[v]["QuickSendTownId"]] or {} 
			end			
--			if rwChkInt(rwtTask[v]["isPreOption"]) then
--				local bInsertOption = true
--				if nData1 >= 7 then
--					local nNextOptionTask = rwtTask[v]["NextOptionTask"]
--					if rwtTask[nNextOptionTask] and rwChkTable(rwtTask[nNextOptionTask]["ChkCondition"]) then
--						if not QuickSendOptionTaskChkCondition(nNextOptionTask) then
--							bInsertOption = false
--						end
--					end					
--				end				
--				if bInsertOption then
--					table.insert(tPreOptionRandomTable[rwtTask[v]["QuickSendTownId"]],v)
--				end				
--			end
--			if not (rwChkInt(rwtTask[v]["isOptionTask"]) and rwtTask[v]["isOptionTask"] == 1) then
--				table.insert(tOnlyNormalRandomTable[rwtTask[v]["QuickSendTownId"]],v)
--			end
		end        
    end
--	if nData4 < 1 and nData1 >= 7 then
--		if  nData1 == 8 then  --八环如果没有做过选项任务塞一个选项任务前置任务
--			local nRandom = math.random(1,#tPreOptionRandomTable[nData6])
--			local nTask_Result = tPreOptionRandomTable[nData6][nRandom] or 0
--			while (rwComElementIsExit(rwtQuickSendUserTaskInfo[nUserId],nTask_Result)  and #tPreOptionRandomTable[nData6] > 1) do
--				nRandom = math.random(1,#tPreOptionRandomTable[nData6]) --如果已经做过这个任务了重新随
--				nTask_Result = tPreOptionRandomTable[nData6][nRandom]	
--			end
--			return tPreOptionRandomTable[nData6][nRandom] or 0 
--		end
--		if  nData1 == 9 then --9环如果还没有做过选项任务，塞一个
--			if  rwComElementIsExit(tPreOptionRandomTable[nData6],nData5) then
--				return rwtTask[nData5]["NextOptionTask"] or 0   
--			end
--		end
--		if rwComElementIsExit(tPreOptionRandomTable[nData6],nData5) then
--			local nRandomRate = math.random(1,10000)
--			if nRandomRate <= 8000 then
--				return rwtTask[nData5]["NextOptionTask"] or 0   
--			end
--		end 
--	end	
	local nRandom = math.random(1,#tOnlyNormalRandomTable[nData6]) 
	local nTask_Result = tOnlyNormalRandomTable[nData6][nRandom] or 0
	while (rwComElementIsExit(rwtQuickSendUserTaskInfo[nUserId],nTask_Result) and #tOnlyNormalRandomTable[nData6] > 1) do
		nRandom = math.random(1,#tOnlyNormalRandomTable[nData6]) --如果已经做过这个任务了重新随
		nTask_Result = tOnlyNormalRandomTable[nData6][nRandom]		
	end
	return nTask_Result 	
end

--function QuickSendOptionTaskChkCondition(nTaskId) --检查是否符合触发选项任务的条件 没配置chkcondition不检查
--	for j,k in pairs(rwtTask[nTaskId]["ChkCondition"]) do
--		if k["ChkType"] and k["ChkType"] == CONST_QUICKSEND_JUDGE_TYPE.TASK then
--			if not rwTaskIsSuccess(k["TaskId"]) then
--				return false
--			end
--		end
--	end
--	return true
--end

function QuickSendTask_AcceptTask(nTaskId)
	local nData1 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data1) 
	local nData2 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data2)
	local nUserId = rwUserGetId()
	local bSet = true
	if rwtTask[nTaskId]["isOptionTask"] then
		if not (rwtTask[nTaskId]["isFirstOptionTask"] and rwtTask[nTaskId]["isFirstOptionTask"] == 1) then
			bSet = false
		end
	elseif rwtTask[nTaskId]["isExceptTask"] then
		bSet = false	
	end
	if bSet then
		nData1 = nData1 + 1
		nData2 = nData2 + 1
	end
--	if nData1 == 1 then
--		rwUserTempDataSet(nTempDataId, nData1, CONST_TEMP_DATA.Data1, 0,true) --第一环任务时记录时间戳
--	else
	rwUserTempDataSet(nTempDataId, nData1, CONST_TEMP_DATA.Data1) --否则只记录环数
--	end
	rwUserTempDataSet(nTempDataId, nData2, CONST_TEMP_DATA.Data2) 
	if not rwtQuickSendUserTaskInfo[nUserId] then
		 rwtQuickSendUserTaskInfo[nUserId] = {}
	end
	table.insert(rwtQuickSendUserTaskInfo[nUserId],nTaskId) 
	if bSet then
		rwUserTempDataSet(nTempDataId, nTaskId, CONST_TEMP_DATA.Data5) --记录当前是哪个任务
	end	
    
end

function QuickSendTask_FinishTask(nTaskId)
	if not rwtTask[nTaskId] then
        return 
    end
	local nisExceptTask = rwtTask[nTaskId]["isExceptTask"] or 0
	if nisExceptTask == 1 then
		return
	end
	local nData1 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data1)  
	local nData2 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data2)  
	local nData3 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data3)  
--	local nData4 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data4)  
	local nData5 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data5)  
	local nDataTime = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.RecordTime) --掩码recordtime 记录掩码时的时间戳
    local nCurTime = os.time()
--	local nCurWeekDay = tonumber(os.date("%w",os.time())) 
	local nIsOptionTask = rwtTask[nTaskId]["isOptionTask"] or 0
	local nIsFinalOptionTask = rwtTask[nTaskId]["isFinalOptionTask"] or 0	
	local bCleanData1 = false
	
	
--	if nIsOptionTask == 1 then --是否选项任务
--		if nIsFinalOptionTask == 1 then --是否选项任务的最后一环  
--			rwUserTempDataSet(nTempDataId, nData4 + 1, CONST_TEMP_DATA.Data4) --完成选项任务记录+1
--		else
--			local nNextOptionTask = rwtTask[nTaskId]["NextTaskId"]
--			if nNextOptionTask then
--				local nTaskDetailType = rwtTask[nNextOptionTask]["TaskDetailType"]
--				ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nNextOptionTask):AcceptTask() --不是选项任务的最后一环 继续做任务 且不走后面流程
--			end			
--			return 
--		end		
--	end
--	if nData3 % 50 == 0 then
--		nAwardId = tAward_Super[nData3]
--	else 
--		nAwardId = tAward_Normal[1]
--	end	CONST_QUICKSEND_JUDGE_TYPE
	local nUserLev = rwUserGetLevel()
	local nAwardId = tAward_Normal[nUserLev]
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
	
	--数据埋点 --风迹快递---------------    
    rwSetTaskFinishNum(CONST_TASK_TYPE.QUICKSEND,nData2)
	------------------------------------
	local nRemainTaskNum = nData3 - nData2
	

	if nData1 >= 10 then
		if nIsOptionTask == 1 then
			if nIsFinalOptionTask ==1 then
				bCleanData1 = true
			end
		else
			bCleanData1 = true
		end	
		if bCleanData1 then
			rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data1) --清空当前轮环数
--			rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data4)
			rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data5)
			if nCurTime - nDataTime < nCDTime then
				local nTaskDetailType = rwtTask[nCDTaskId]["TaskDetailType"]
				ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nCDTaskId):AcceptTask()
				return 
			end	
		end		
	end

	if nRemainTaskNum == 0 then
		local nTaskDetailType = rwtTask[nEndTaskId]["TaskDetailType"]
		ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nEndTaskId):AcceptTask()
		return
	end

	if nData1 == 5 or nData1 == 10 then
		local nUserId = rwUserGetId()
		rwtQuickSendUserTaskInfo[nUserId] = nil
--		rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data4)
		QuickSendGoToNextTown()
		return 
	end
	QuickSendAcceptQuick()
end

--function QuickSendTask_CleanTempData()
--	local nCurTime = os.time()
--	local nDataTime = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.RecordTime)--掩码recordtime 记录掩码时的时间戳 
--	local tDataTime = os.date("*t",nDataTime)  
--	local nLastMonDayZeroTime = nDataTime - (tDataTime["wday"]-1)*86400 -tDataTime["hour"]*3600 - tDataTime["min"]*60 - tDataTime["sec"] --wday 本来就多1 因此-2
--	local nLastDayZeroTime = nDataTime -tDataTime["hour"]*3600 - tDataTime["min"]*60 - tDataTime["sec"] 
--	if math.abs(nCurTime - nLastDayZeroTime) > 86400 then  --每天清50次上限		
--		rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data2)
--	end
--	if math.abs(nCurTime - nLastMonDayZeroTime) > 86400*7 then  --周一0点清空掩码数据
--		rwTempDataReset(nTempDataId)
--		return false
--	end
--	return true
--end
--function QuickSendTask_CleanDailyTempData()
--	local nCurTime = os.time()
--	local nDataTime = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.RecordTime)--掩码recordtime 记录掩码时的时间戳 
--	local tDataTime = os.date("*t",nDataTime)  
--	local nLastDayZeroTime = nDataTime -tDataTime["hour"]*3600 - tDataTime["min"]*60 - tDataTime["sec"] 
--	if math.abs(nCurTime - nLastDayZeroTime) > 86400 then  --每天清50次上限		
--		rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data2)
--	end
--	return true
--end

rwtTask[nCDTaskId] = {}
rwtTask[nCDTaskId]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[nCDTaskId]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[nCDTaskId]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COUNTDOWN
rwtTask[nCDTaskId]["isExceptTask"] = 1
rwtTask[nCDTaskId]["LackTips"] = tLuaText[LANGUAGE_CONFIG][10176]
rwtTask[nCDTaskId]["AwardFunc"] = function ()
--	QuickSendTask_CleanDailyTempData()
	local nData2 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data2)  
	local nData3 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data3) 
	local nRemainTaskNum = nData3 - nData2
	if nRemainTaskNum > 0 then
		local nTownId = QuickSendGetTownId()
		rwUserTempDataSet(nTempDataId, nTownId, CONST_TEMP_DATA.Data6) --随到城镇的时候设掩码
		QuickSendAcceptQuick()
	end	
end
rwtTask[nEndTaskId] = {}
rwtTask[nEndTaskId]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[nEndTaskId]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[nEndTaskId]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nEndTaskId]["isExceptTask"] = 1
rwtTask[nEndTaskId]["TaskNpc"] = 3774  
rwtTask[nEndTaskId]["DialogId"] = 12644
rwtTask[nEndTaskId]["StartAutoWay"] = {}
rwtTask[nEndTaskId]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nEndTaskId]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nEndTaskId]["StartAutoWay"]["FindWayGroupId"] = 20874
rwtTask[nEndTaskId]["StartAutoWay"]["FindWayGenId"] = 1000183
rwtTask[nEndTaskId]["AwardFunc"] = function ()
--	QuickSendTask_CleanTempData()
	QuickSendAcceptTaskFromNpc()
end
function QuickSendGetRemainTaksNum()
	local nRemainTaskNum
	local nData3 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data3)
	local nDataTime = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.RecordTime)
	local nCurTime = os.time()
	local tDataTime = os.date("*t",nDataTime)  
	local nLastDayZeroTime = nDataTime -tDataTime["hour"]*3600 - tDataTime["min"]*60 - tDataTime["sec"]
	if nData3 == 0 then
		nRemainTaskNum = 40
	else
		nRemainTaskNum = math.floor( math.abs(nCurTime - nDataTime) / nRecoveryTime)
	end	
	if math.abs(nCurTime - nLastDayZeroTime) > 86400 then
		nRemainTaskNum = nRemainTaskNum + nRecoveryTaskNum
	end	
	if  nRemainTaskNum > nTopTaskNum then
		nRemainTaskNum = nTopTaskNum
	end
	return nRemainTaskNum
end

function QuickSendAcceptTaskFromNpc()	
	if rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) ~= nil and #rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) > 0 then
		return
	end	
	local sMessage = ""
	local tMessageLessDay = {}
	tMessageLessDay[1] = {}
	tMessageLessDay[1]["Left"] = tLuaText[LANGUAGE_CONFIG][10190]
	tMessageLessDay[1]["Right"] = tLuaText[LANGUAGE_CONFIG][10191]
	tMessageLessDay[1]["Type"] = 1
	tMessageLessDay[2] = {}
	tMessageLessDay[2]["Left"] = tLuaText[LANGUAGE_CONFIG][10192]
	tMessageLessDay[2]["Right"] = tLuaText[LANGUAGE_CONFIG][10193]
	tMessageLessDay[2]["Type"] = 1
	local tMessageLessNight = {}
	tMessageLessNight[1] = {}
	tMessageLessNight[1]["Left"] = tLuaText[LANGUAGE_CONFIG][10194]
	tMessageLessNight[1]["Right"] = tLuaText[LANGUAGE_CONFIG][10195]
	tMessageLessNight[1]["Type"] = 2
	tMessageLessNight[2] = {}
	tMessageLessNight[2]["Left"] = tLuaText[LANGUAGE_CONFIG][10205]
	tMessageLessNight[2]["Right"] = tLuaText[LANGUAGE_CONFIG][10206]
	tMessageLessNight[2]["Type"] = 2
	local tMessageMoreDay = {}
	tMessageMoreDay[1] = {}
	tMessageMoreDay[1]["Left"] = tLuaText[LANGUAGE_CONFIG][10196]
	tMessageMoreDay[1]["Right"] = tLuaText[LANGUAGE_CONFIG][10197]
	tMessageMoreDay[1]["Type"] = 3
	tMessageMoreDay[2] = {}
	tMessageMoreDay[2]["Left"] = tLuaText[LANGUAGE_CONFIG][10198]
	tMessageMoreDay[2]["Right"] = tLuaText[LANGUAGE_CONFIG][10199]
	tMessageMoreDay[2]["Type"] = 3
	local tMessageMoreNight = {}
	tMessageMoreNight[1] = {}
	tMessageMoreNight[1]["Left"] = tLuaText[LANGUAGE_CONFIG][10200]
	tMessageMoreNight[1]["Right"] = tLuaText[LANGUAGE_CONFIG][10201]
	tMessageMoreNight[1]["Type"] = 4
	tMessageMoreNight[2] = {}
	tMessageMoreNight[2]["Left"] = tLuaText[LANGUAGE_CONFIG][10207]
	tMessageMoreNight[2]["Right"] = tLuaText[LANGUAGE_CONFIG][10208]
	tMessageMoreNight[2]["Type"] = 4
	local nRandom = math.random(1,2)
	local bIsDay = QuickSendChkIsDay()
	local nType
	local nRemainTaskNum = QuickSendGetRemainTaksNum()
	if nRemainTaskNum >= 25 then
		if bIsDay then
			sMessage = sMessage..tMessageMoreDay[nRandom]["Left"] .. nRemainTaskNum ..tMessageMoreDay[nRandom]["Right"]
			nType = 3
		else
			sMessage = sMessage..tMessageMoreNight[nRandom]["Left"] .. nRemainTaskNum ..tMessageMoreNight[nRandom]["Right"]
			nType = 4
		end			
	else 
		if bIsDay then
			sMessage = sMessage..tMessageLessDay[nRandom]["Left"] .. nRemainTaskNum ..tMessageLessDay[nRandom]["Right"]
			nType = 1
		else
			sMessage = sMessage..tMessageLessNight[nRandom]["Left"] .. nRemainTaskNum ..tMessageLessNight[nRandom]["Right"]
			nType = 2
		end			
	end
	local tDialogOption = {}
	tDialogOption["Text"] = {}
    tDialogOption["Text"]["DialogId"] = 60895
	tDialogOption["Text"]["Content"] = sMessage
	tDialogOption["Text"]["TalkId"] = 3774
	tDialogOption["Text"]["Midid"] = 3774
	tDialogOption["Text"]["midFace"] = 0
	tDialogOption["Text"]["HideContine"] = 0
	rwNpcDialogText(tDialogOption["Text"],"</F>QuickSendDialogConnect</N>"..nType .."</N>" .. nRandom)
end
function QuickSendDialogConnect (nType,nIndex)
	local sMessage = ""
	local nTalkId 
	local nFaceId 
	local tMessageLessDay = {}
	tMessageLessDay[1] = {}
	tMessageLessDay[1]["Message"] = tLuaText[LANGUAGE_CONFIG][10209]
	tMessageLessDay[1]["TalkId"] = 101
	tMessageLessDay[1]["FaceId"] = 100106
	tMessageLessDay[2] = {}
	tMessageLessDay[2]["Message"] = tLuaText[LANGUAGE_CONFIG][10210]
	tMessageLessDay[2]["TalkId"] = 201
	tMessageLessDay[2]["FaceId"] = 100213
	local tMessageLessNight = {}
	tMessageLessNight[1] = {}
	tMessageLessNight[1]["Message"] = tLuaText[LANGUAGE_CONFIG][10211]
	tMessageLessNight[1]["TalkId"] = 101
	tMessageLessNight[1]["FaceId"] = 0
	tMessageLessNight[2] = {}
	tMessageLessNight[2]["Message"] = tLuaText[LANGUAGE_CONFIG][10212]
	tMessageLessNight[2]["TalkId"] = 101
	tMessageLessNight[2]["FaceId"] = 100104
	local tMessageMoreDay = {}
	tMessageMoreDay[1] = {}
	tMessageMoreDay[1]["Message"] = tLuaText[LANGUAGE_CONFIG][10213]
	tMessageMoreDay[1]["TalkId"] = 301
	tMessageMoreDay[1]["FaceId"] = 100306
	tMessageMoreDay[2]= {}
	tMessageMoreDay[2]["Message"] = tLuaText[LANGUAGE_CONFIG][10214]
	tMessageMoreDay[2]["TalkId"] = 101
	tMessageMoreDay[2]["FaceId"] = 100105
	local tMessageMoreNight = {}
	tMessageMoreNight[1] = {}
	tMessageMoreNight[1]["Message"] = tLuaText[LANGUAGE_CONFIG][10215]
	tMessageMoreNight[1]["TalkId"] = 201
	tMessageMoreNight[1]["FaceId"] = 100215
	tMessageMoreNight[2] = {}
	tMessageMoreNight[2]["Message"] = tLuaText[LANGUAGE_CONFIG][10216]
	tMessageMoreNight[2]["TalkId"] = 301
	tMessageMoreNight[2]["FaceId"] = 100303
	if nType == 1 then
		nTalkId = tMessageLessDay[nIndex]["TalkId"]
		nFaceId = tMessageLessDay[nIndex]["FaceId"]
		sMessage = sMessage .. tMessageLessDay[nIndex]["Message"]
	elseif nType == 2 then
		nTalkId = tMessageLessNight[nIndex]["TalkId"]
		nFaceId = tMessageLessNight[nIndex]["FaceId"]
		sMessage = sMessage .. tMessageLessNight[nIndex]["Message"]
	elseif nType == 3 then
		nTalkId = tMessageMoreDay[nIndex]["TalkId"]
		nFaceId = tMessageMoreDay[nIndex]["FaceId"]
		sMessage = sMessage .. tMessageMoreDay[nIndex]["Message"]
	elseif  nType == 4 then
		nTalkId = tMessageMoreNight[nIndex]["TalkId"]
		nFaceId = tMessageMoreNight[nIndex]["FaceId"]
		sMessage = sMessage .. tMessageMoreNight[nIndex]["Message"]
	end
	local tDialogOption = {}
		tDialogOption["Text"] = {}
        tDialogOption["Text"]["DialogId"] = 60902
		tDialogOption["Text"]["Content"] = sMessage
		tDialogOption["Text"]["TalkId"] = nTalkId
		tDialogOption["Text"]["LeftId"] = nTalkId
		tDialogOption["Text"]["LeftFace"] = nFaceId
		tDialogOption["Text"]["HideContine"] = 0
	rwNpcDialogText(tDialogOption["Text"],"</F>QuickSendConnectDialogEnd")
end
function QuickSendChkIsDay ()
	local nCurTime = os.time() 
	local tCurTime = os.date("*t",nCurTime)  
	local nDistanceTime = tCurTime["hour"]*3600 + tCurTime["min"]*60 + tCurTime["sec"]
	rwPrintErrorLog("QuickSendChkIsDay"..nDistanceTime)
	if nDistanceTime > nMorningStart and nDistanceTime < nMorningEnd then
		return true
	else
		return false
	end
end
function QuickSendConnectDialogEnd()
	local nTownId = QuickSendGetTownId()
	local nRemainTaskNum = QuickSendGetRemainTaksNum()
	rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data1)
	rwUserTempDataSet(nTempDataId, nRemainTaskNum, CONST_TEMP_DATA.Data3,0,true) --记录一共几个快递任务
	rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data2) --初始化次数
	rwUserTempDataSet(nTempDataId, nTownId, CONST_TEMP_DATA.Data6) --随到城镇的时候设掩码
	QuickSendAcceptQuick()
end
--function QuickSendOpenAddTaskDialog()
--	rwOpenNpcChatDialog(12449,CONST_NPCCHAT_TYPE.NPC)
--end
--rwtDialog[12449] = rwtDialog[12449] or {}
--rwtDialog[12449]["DialogEnd"] = function ()
--	local nTownId = QuickSendGetTownId()
--	local nRemainTaskNum = QuickSendGetRemainTaksNum()
--	rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data1)
--	rwUserTempDataSet(nTempDataId, nRemainTaskNum, CONST_TEMP_DATA.Data3,0,true) --记录一共几个快递任务
--	rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data2) --初始化次数
--	rwUserTempDataSet(nTempDataId, nTownId, CONST_TEMP_DATA.Data6) --随到城镇的时候设掩码
--	QuickSendAcceptQuick()
----	rwSpecialStatus_ChangeLookFace(1,0,1200,90801)
----	rwUserTempDataSet(1222,1,CONST_TEMP_DATA.Data1,0,true);
--end 
function QuickSendAcceptQuick()
	local nTaskId = QuickSendTask_GetTask()
    if nTaskId and nTaskId ~= 0 then
		local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):AcceptTask()
    end
end
function QuickSendGoToNextTown()
	local sMessage = ""
	
	local nData2 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data2)  
	local nData3 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data3) 
	local nRemainTaskNum = nData3 - nData2
	local nTownId = QuickSendGetTownId()
	rwUserTempDataSet(nTempDataId, nTownId, CONST_TEMP_DATA.Data6) --随到城镇的时候设掩码
	local sTownName = tQuickSendTownName[nTownId]
	local sMessage = ""
	local tMessage = {}
	tMessage[1] = {}
	tMessage[1]["Left"] = tLuaText[LANGUAGE_CONFIG][10202]
	tMessage[1]["Mid"] = tLuaText[LANGUAGE_CONFIG][10203]
	tMessage[1]["Right"] = tLuaText[LANGUAGE_CONFIG][10204]
	sMessage = sMessage.. tMessage[1]["Left"] .. nRemainTaskNum ..tMessage[1]["Mid"] ..sTownName .. tMessage[1]["Right"]
	local tDialogOption = {}
	tDialogOption["Text"] = {}
    tDialogOption["Text"]["DialogId"] = 60896
	tDialogOption["Text"]["Content"] = sMessage
	tDialogOption["Text"]["TalkId"] = 101
	tDialogOption["Text"]["LeftId"] = 101
	tDialogOption["Text"]["LeftFace"] = 0
	tDialogOption["Text"]["HideContine"] = 0
	rwNpcDialogText(tDialogOption["Text"],"</F>QuickSendAcceptQuick")
end

--function QuickSendChkDailyTimes(nData2,nData3)
----	local nCurWeekDay = tonumber(os.date("%w",os.time())) 
--	local nData2 = nData2 or rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data2)   --掩码data2 记录当日共做多少轮次数（共50次，周六周日不计次数）
--    local nData3 = nData3 or rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data3)   --掩码data3 记录每周共做多少次（共200环）
--	if nData3 >= nMaxWeekTimes then		
--		if nData2 >= nExtraTaskNum then
--			return false
--		end		 
--	end
----	if nCurWeekDay > 0 and nCurWeekDay < 6 then
--	if nData2 >= nMaxDayTimes then			
--		return false
--	end
----    end
--	return true
--end

function QuickSendGetTownId()
	local tLandRandom = {}
	local nData6 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data6) 
	for i,v in pairs(rwtQuickSendMapTownInfo) do 
		for j,k in pairs(v) do
			if rwSysGetTaskLockMask(i,k) then -- 如果城镇解锁，则把该片区id插入到表里
				table.insert(tLandRandom,k)
				break
			end
		end
	end
	if #tLandRandom and #tLandRandom > 0 then --每五环随机一次任务
		table.insert(tLandRandom,1000)
		local nLandRandom = math.random(1,#tLandRandom) --表里有数据时，随机，没有数据时 默认为只有1000地图
		while (tLandRandom[nLandRandom] == nData6) do
			nLandRandom = math.random(1,#tLandRandom)
		end
		nData6 = tLandRandom[nLandRandom]
	else 
		nData6 = 1000
	end		
	return nData6 
end
--function QuickSendChangeToNolmalLook()
--	local nFishionId = rwGetShowFashion()
--	if nFishionId ~= 0 then
--		rwSpecialStatus_ChangeLookFace(1,0,0,nFishionId)
--	else
--		rwSpecialStatus_ChangeLookFace(1,0,0,rwUserGetHeroID())
--	end
--end