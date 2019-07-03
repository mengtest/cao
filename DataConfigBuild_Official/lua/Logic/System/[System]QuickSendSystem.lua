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
local nTempDataId_Time = 1222
local nMaxWeekTimes = 200
local nMaxDayTimes = 50
local nCDTime = 300
local nCDTaskId = 90089
local nEndTaskId = 90117
local tAward_Normal = {3006280}
local tAward_Super = {}
local nExtraTaskNum = 10
tAward_Super[50] = 3006281
tAward_Super[100] = 3006282
tAward_Super[150] = 3006283
tAward_Super[200] = 3006284

function QuickSendTask_GetTask()
    if not rwTempDataIsExist(nTempDataId) then
        rwTempDataAdd(nTempDataId)
    end
	local nData1 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data1)   --掩码data1 记录当前每轮环数（共10环）
	local nData2 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data2)   --掩码data2 记录当日共做多少轮次数（共50次，周六周日不计次数）
	local nData3 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data3)   --掩码data3 记录每周共做多少次（共200环）
	local nData4 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data4)   --掩码data4 记录选项任务接受次数（1或2）
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
	if not QuickSendChkDailyTimes() then
		rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10174],1)
		return 0
	end
	local tOnlyNormalRandomTable = {}
	local tOptionRandomTable = {}
	local tPreOptionRandomTable = {}
	local tLandRandom = {}
	for i,v in pairs(rwtQuickSendMapTownInfo) do 
		for j,k in pairs(v) do
			if rwSysGetTaskLockMask(i,k) then -- 如果城镇解锁，则把该片区id插入到表里
				table.insert(tLandRandom,k)
				break
			end
		end
	end
	if nData1 == 0 or nData1 == 5 then 
		if #tLandRandom and #tLandRandom > 0 then --每五环随机一次任务
			table.insert(tLandRandom,1000)
			local nLandRandom = math.random(1,#tLandRandom) --表里有数据时，随机，没有数据时 默认为只有1000地图
			while (tLandRandom[nLandRandom] == nData6) do
				nLandRandom = math.random(1,#tLandRandom)
			end
			nData6 = tLandRandom[nLandRandom]
			rwUserTempDataSet(nTempDataId, nData6, CONST_TEMP_DATA.Data6) 
		else 
			rwUserTempDataSet(nTempDataId, 1000, CONST_TEMP_DATA.Data6)
			nData6 = 1000
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
				tPreOptionRandomTable[rwtTask[v]["QuickSendTownId"]] = tPreOptionRandomTable[rwtTask[v]["QuickSendTownId"]] or {} 
			end			
			if rwChkInt(rwtTask[v]["isPreOption"]) then
				table.insert(tPreOptionRandomTable[rwtTask[v]["QuickSendTownId"]],v)
			end
			if not (rwChkInt(rwtTask[v]["isOptionTask"]) and rwtTask[v]["isOptionTask"] == 1) then
				table.insert(tOnlyNormalRandomTable[rwtTask[v]["QuickSendTownId"]],v)
			end
		end        
    end
	if nData4 < 1 then
		if nData1 == 3 or nData1 == 8 then  --第四、九环如果没有做过选项任务塞一个选项任务前置任务
			local nRandom = math.random(1,#tPreOptionRandomTable[nData6])
			local nTask_Result = tPreOptionRandomTable[nData6][nRandom] or 0
			while (rwComElementIsExit(rwtQuickSendUserTaskInfo[nUserId],nTask_Result)  and #tPreOptionRandomTable[nData6] > 1) do
				nRandom = math.random(1,#tPreOptionRandomTable[nData6]) --如果已经做过这个任务了重新随
				nTask_Result = tPreOptionRandomTable[nData6][nRandom]	
			end
			return tPreOptionRandomTable[nData6][nRandom] or 0 
		end
		if nData1 == 4 or nData1 == 9 then --第5、10环如果还没有做过选项任务，塞一个
			if  rwComElementIsExit(tPreOptionRandomTable[nData6],nData5) then
				return rwtTask[nData5]["NextOptionTask"] or 0   
			end
		end
		if rwComElementIsExit(tPreOptionRandomTable[nData6],nData5) then
			local nRandomRate = math.random(1,10000)
			if nRandomRate <= 8000 then
				return rwtTask[nData5]["NextOptionTask"] or 0   
			end
		end 
	end	
	local nRandom = math.random(1,#tOnlyNormalRandomTable[nData6]) 
	local nTask_Result = tOnlyNormalRandomTable[nData6][nRandom] or 0
	while (rwComElementIsExit(rwtQuickSendUserTaskInfo[nUserId],nTask_Result) and #tOnlyNormalRandomTable[nData6] > 1) do
		nRandom = math.random(1,#tOnlyNormalRandomTable[nData6]) --如果已经做过这个任务了重新随
		nTask_Result = tOnlyNormalRandomTable[nData6][nRandom]		
	end
	return nTask_Result 	
end

function QuickSendTask_AcceptTask(nTaskId)
	local nData1 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data1) 
	local nData2 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data2)
	local nData3 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data3) 
	local nData7 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data7)	
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
		nData3 = nData3 + 1
		nData7 = nData7 + 1
	end
	if nData1 == 1 then
		rwUserTempDataSet(nTempDataId, nData1, CONST_TEMP_DATA.Data1, 0,true) --第一环任务时记录时间戳
	else
		rwUserTempDataSet(nTempDataId, nData1, CONST_TEMP_DATA.Data1) --否则只记录环数
	end
	rwUserTempDataSet(nTempDataId, nData2, CONST_TEMP_DATA.Data2) 
	rwUserTempDataSet(nTempDataId, nData3, CONST_TEMP_DATA.Data3)
	rwUserTempDataSet(nTempDataId, nData7, CONST_TEMP_DATA.Data7) 
	if not rwtQuickSendUserTaskInfo[nUserId] then
		 rwtQuickSendUserTaskInfo[nUserId] = {}
	end
	table.insert(rwtQuickSendUserTaskInfo[nUserId],nTaskId) 
	if bSet then
		rwUserTempDataSet(nTempDataId, nTaskId, CONST_TEMP_DATA.Data5) --记录当前是哪个任务
	end	
    
--    rwTaskSetData(nTaskId, CONST_TASK_INFO_INDEX.TASK_DATA6, nData3) --标记周任务当前环数
--    rwTaskSetData(nTaskId, CONST_TASK_INFO_INDEX.TASK_DATA7, nMaxWeekTimes)
end

function QuickSendTask_FinishTask(nTaskId)
	if not rwtTask[nTaskId] then
        return 
    end
	if nTaskId == nCDTaskId then
		return 
	end
	local nData1 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data1)  --掩码data1 记录当前每轮环数（共10环）
	local nData2 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data2)  --掩码data1 记录当前每日环数（共50环）
	local nData3 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data3)  --掩码data3 记录每周共做多少次（共200环）
	local nData4 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data4)  --掩码data4 记录选项任务接受次数（1或2）
	local nData5 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data5)  --掩码data5 记录上次任务
	local nData7 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data7)  --掩码data7 记录做到一组中的第几环
	local nDataTime = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.RecordTime) --掩码recordtime 记录掩码时的时间戳
    local nCurTime = os.time()
--	local nCurWeekDay = tonumber(os.date("%w",os.time())) 
	local nIsOptionTask = rwtTask[nTaskId]["isOptionTask"] or 0
	local nIsFinalOptionTask = rwtTask[nTaskId]["isFinalOptionTask"] or 0
	local nisExceptTask = rwtTask[nTaskId]["isExceptTask"] or 0
	local bCleanData1 = false
	local nAwardId = 0
	if nisExceptTask == 1 then
		return
	end
	if nIsOptionTask == 1 then --是否选项任务
		if nIsFinalOptionTask == 1 then --是否选项任务的最后一环  
			rwUserTempDataSet(nTempDataId, nData4 + 1, CONST_TEMP_DATA.Data4) --完成选项任务记录+1
		else
			local nNextOptionTask = rwtTask[nTaskId]["NextTaskId"]
			if nNextOptionTask then
				local nTaskDetailType = rwtTask[nNextOptionTask]["TaskDetailType"]
				ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nNextOptionTask):AcceptTask() --不是选项任务的最后一环 继续做任务 且不走后面流程
			end			
			return 
		end		
	end
	if nData3 % 50 == 0 then
		nAwardId = tAward_Super[nData3]
	else 
		nAwardId = tAward_Normal[1]
	end	
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
	--		rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data4)
			rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data5)
			if nData3 > nMaxWeekTimes then
				local nData8 = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data8)
				if nData8 == 0 then
					if nData7 == nExtraTaskNum or nData7 == nMaxDayTimes then
						local nTaskDetailType = rwtTask[nEndTaskId]["TaskDetailType"]
						ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nEndTaskId):AcceptTask()
						rwUserTempDataSet(nTempDataId, 0 , CONST_TEMP_DATA.Data7)
						return 
					end
				end		
			else
				if nData7 == nMaxDayTimes then
					local nTaskDetailType = rwtTask[nEndTaskId]["TaskDetailType"]
					ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nEndTaskId):AcceptTask()
					rwUserTempDataSet(nTempDataId, 0 , CONST_TEMP_DATA.Data7)
					return
				end	
			end
			if not QuickSendChkDailyTimes() then
				if nData3 >= nMaxWeekTimes and nData2 >= nExtraTaskNum then
					rwUserTempDataSet(nTempDataId, 1 , CONST_TEMP_DATA.Data8)
				end
				rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10174],1)
				return
			end	
			if nCurTime - nDataTime < nCDTime then
				local nTaskDetailType = rwtTask[nCDTaskId]["TaskDetailType"]
				ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nCDTaskId):AcceptTask()
				return 
			end	
		end		
	end

	
	
	
--	local nUserLev = rwUserGetLevel()
	

	if not QuickSendChkDailyTimes() then
		if nData3 >= nMaxWeekTimes and nData2 >= nExtraTaskNum then
			rwUserTempDataSet(nTempDataId, 1 , CONST_TEMP_DATA.Data8)
		end
		rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10174],1)
		return
	end		
	if nData1 == 5 or nData1 == 10 then
		local nUserId = rwUserGetId()
		rwtQuickSendUserTaskInfo[nUserId] = nil
		rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data4)
		QuickSendGoToNextTown()
		return 
	end
	QuickSendAcceptQuick()
end

function QuickSendTask_CleanTempData()
	local nCurTime = os.time()
	local nDataTime = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.RecordTime)--掩码recordtime 记录掩码时的时间戳 
	local tDataTime = os.date("*t",nDataTime)  
	local nLastMonDayZeroTime = nDataTime - (tDataTime["wday"]-1)*86400 -tDataTime["hour"]*3600 - tDataTime["min"]*60 - tDataTime["sec"] --wday 本来就多1 因此-2
	local nLastDayZeroTime = nDataTime -tDataTime["hour"]*3600 - tDataTime["min"]*60 - tDataTime["sec"] 
	if math.abs(nCurTime - nLastDayZeroTime) > 86400 then  --每天清50次上限		
		rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data2)
	end
	if math.abs(nCurTime - nLastMonDayZeroTime) > 86400*7 then  --周一0点清空掩码数据
		rwTempDataReset(nTempDataId)
		return false
	end
	return true
end
function QuickSendTask_CleanDailyTempData()
	local nCurTime = os.time()
	local nDataTime = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.RecordTime)--掩码recordtime 记录掩码时的时间戳 
	local tDataTime = os.date("*t",nDataTime)  
	local nLastDayZeroTime = nDataTime -tDataTime["hour"]*3600 - tDataTime["min"]*60 - tDataTime["sec"] 
	if math.abs(nCurTime - nLastDayZeroTime) > 86400 then  --每天清50次上限		
		rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data2)
		rwUserTempDataSet(nTempDataId, 0, CONST_TEMP_DATA.Data8, 0,true)
	end
	return true
end

rwtTask[nCDTaskId] = {}
rwtTask[nCDTaskId]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[nCDTaskId]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[nCDTaskId]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COUNTDOWN
rwtTask[nCDTaskId]["isExceptTask"] = 1
rwtTask[nCDTaskId]["LackTips"] = tLuaText[LANGUAGE_CONFIG][10176]
rwtTask[nCDTaskId]["AwardFunc"] = function ()
	QuickSendTask_CleanDailyTempData()
	local nData2 = rwTempDataGetValue(1210,CONST_TEMP_DATA.Data2)   --掩码data2 记录当日共做多少轮次数（共50次，周六周日不计次数）
    local nData3 = rwTempDataGetValue(1210,CONST_TEMP_DATA.Data3)   --掩码data3 记录每周共做多少次（共200环）
    if not QuickSendChkDailyTimes() then
		return
	end
	QuickSendAcceptQuick()
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
	QuickSendTask_CleanTempData()
	QuickSendAcceptTaskFromNpc()
	local nData3 = rwTempDataGetValue(1210,CONST_TEMP_DATA.Data3)
	if nData3 >200 then
		rwUserTempDataSet(nTempDataId, 1, CONST_TEMP_DATA.Data8)
	end
end
function QuickSendAcceptTaskFromNpc(nData2,nData3)	
	local nData2 = nData2 or rwTempDataGetValue(1210,CONST_TEMP_DATA.Data2)   --掩码data2 记录当日共做多少轮次数（共50次，周六周日不计次数）
    local nData3 = nData3 or rwTempDataGetValue(1210,CONST_TEMP_DATA.Data3)   --掩码data3 记录每周共做多少次（共200环）
	if not QuickSendChkDailyTimes() then
		return
	end
	local nRemainTaskNum 
	if nData3 >= nMaxWeekTimes then
		nRemainTaskNum = nExtraTaskNum - nData2
	else 
		nRemainTaskNum = nMaxDayTimes - nData2
	end
	if nRemainTaskNum >0 then
		local sMessage = ""
		if nRemainTaskNum >= 25 then
			sMessage = sMessage.."告诉你一个大大的好消息：今天业务量满满有<color=#bd1011>".. nRemainTaskNum .. "</color>个速递呢！<br>喵酱相信你可以的！干巴爹，换上喵酱专属速递服出发吧！"
		else 
			sMessage = sMessage.. "今天的速递单有点少呢，才<color=#bd1011>" .. nRemainTaskNum .. "</color>个！以你的效率，应该很快就<br>能结束吧！去吧，换上喵酱专属速递服，然后开始速递！"
		end
		local tDialogOption = {}
		tDialogOption["Text"] = {}
		tDialogOption["Text"]["Content"] = sMessage
		tDialogOption["Text"]["TalkId"] = 3774
		tDialogOption["Text"]["Midid"] = 3774
		tDialogOption["Text"]["midFace"] = 0
		tDialogOption["Text"]["HideContine"] = 0
		rwNpcDialogText(tDialogOption["Text"],"</F>QuickSendOpenAddTaskDialog")
	end	
end
function QuickSendOpenAddTaskDialog()
	rwOpenNpcChatDialog(12449,CONST_NPCCHAT_TYPE.NPC)
end
function QuickSendAcceptQuick()
	local nTaskId = QuickSendTask_GetTask()
    if nTaskId and nTaskId ~= 0 then
		local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):AcceptTask()
    end
end
function QuickSendGoToNextTown(nData2,nData3)
	local sMessage = ""
	local nRemainTaskNum = 0
	local nData2 = nData2 or rwTempDataGetValue(1210,CONST_TEMP_DATA.Data2)   --掩码data2 记录当日共做多少轮次数（共50次，周六周日不计次数）
    local nData3 = nData3 or rwTempDataGetValue(1210,CONST_TEMP_DATA.Data3)   --掩码data3 记录每周共做多少次（共200环）
	local nData7 = rwTempDataGetValue(1210,CONST_TEMP_DATA.Data7)   --掩码data7 记录一组已经做了几次
	if not QuickSendChkDailyTimes() then
		return
	end
	local nCompare 
	if nData2 > nData7 then
		nCompare = nData2
	else
		nCompare = nData7
	end
	if nData3 >= nMaxWeekTimes then
		if nData7 < nExtraTaskNum then
			nRemainTaskNum = nExtraTaskNum - nData7
		else
			nRemainTaskNum = nExtraTaskNum
		end		
	else 
		nRemainTaskNum = nMaxDayTimes - nCompare
	end
	if nRemainTaskNum == 0 then
		local nTaskDetailType = rwtTask[nEndTaskId]["TaskDetailType"]
		ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nEndTaskId):AcceptTask()
		return
	end
	sMessage = sMessage.. "呼，终于把这里的速递都送完了！唔……还有<color=#bd1011>" .. nRemainTaskNum .."</color>件速递没<br>有送。要加快脚步，赶紧去派送下个城镇的速递了！"
	local tDialogOption = {}
	tDialogOption["Text"] = {}
	tDialogOption["Text"]["Content"] = sMessage
	tDialogOption["Text"]["TalkId"] = 101
	tDialogOption["Text"]["LeftId"] = 101
	tDialogOption["Text"]["LeftFace"] = 0
	tDialogOption["Text"]["HideContine"] = 0
	rwNpcDialogText(tDialogOption["Text"],"</F>QuickSendAcceptQuick")
end

function QuickSendChkDailyTimes(nData2,nData3)
--	local nCurWeekDay = tonumber(os.date("%w",os.time())) 
	local nData2 = nData2 or rwTempDataGetValue(1210,CONST_TEMP_DATA.Data2)   --掩码data2 记录当日共做多少轮次数（共50次，周六周日不计次数）
    local nData3 = nData3 or rwTempDataGetValue(1210,CONST_TEMP_DATA.Data3)   --掩码data3 记录每周共做多少次（共200环）
	if nData3 >= nMaxWeekTimes then		
		if nData2 >= nExtraTaskNum then
			return false
		end		 
	end
--	if nCurWeekDay > 0 and nCurWeekDay < 6 then
	if nData2 >= nMaxDayTimes then			
		return false
	end
--    end
	return true
end

--function QuickSendChangeToNolmalLook()
--	local nFishionId = rwGetShowFashion()
--	if nFishionId ~= 0 then
--		rwSpecialStatus_ChangeLookFace(1,0,0,nFishionId)
--	else
--		rwSpecialStatus_ChangeLookFace(1,0,0,rwUserGetHeroID())
--	end
--end