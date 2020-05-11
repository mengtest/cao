--region  [System]LeagueChat
--Purpose:		自律联盟闲聊
--Creator: 		张圆
--Created:		2020-02-29
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-4-21 $
--RCS-ID:		$Revision: 3 $
--endregion


function LeagueChatEffectFilter ()    
    local tInfo = SysCopyTable(rwtLeagueEggNpcGenInfo)
    local tTaskList = rwTaskGetListByType(0)
    local nCurLeagueLevel = rwUserGetLeagueLevel()
    local nCurTime = os.time()
    for i,v in pairs(tInfo) do
        repeat
            local tNpc = rwtNpc[rwtNpcGenRelationInfo[v]]
            --过滤等级不足的
            if rwChkTable(tNpc["EggLeagueDialog"]) then
                local bRemove = true
                for j,k in pairs (tNpc["EggLeagueDialog"]) do 
                    local nLevel = k["Level"] or 0
			        if nCurLeagueLevel >= nLevel  then
				        bRemove = false 
                        break			
			        end
                end
                if bRemove then
--                     table.remove(tInfo,i)
                     tInfo[i] = nil
                     break
                end
            end
            --过滤NPC不存在的
            if not rwHasGenEvent(v) then
--                table.remove(tInfo,i)
                tInfo[i] = nil
                break
            end
            --过滤不超过24小时的
            local nTempDataId =  tNpc["LeagueChatTempDataId"] or 0
            if nTempDataId ~= 0 and  not rwTempDataIsExist(nTempDataId) then
		        rwTempDataAdd(nTempDataId)
	        end
            local nDataTime = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.RecordTime)
            local nTempIndex = tNpc["LeagueChatTempIndex"] or CONST_TEMP_DATA.Data1
            local nFirstEggChat = rwTempDataGetValue(nTempDataId,nTempIndex) --用来记录是否第一次对白
            if math.abs(nCurTime - nDataTime) < 86400 and nFirstEggChat ~= 0 then
--                table.remove(tInfo,i)
                tInfo[i] = nil 
                break
            end
            
            --过滤身上有任务的 不显示光效
            for n =1, #tTaskList do 
                local nTaskNpc = rwtTask[tTaskList[n]]["TaskNpc"]
                if rwChkInt(nTaskNpc) then
                    if nTaskNpc == rwtNpcGenRelationInfo[v] then
--                        table.remove(tInfo,i)
                        tInfo[i] = nil
                        break
                    end
                end
            end
        break
        until true
    end

    return tInfo
end

function LeagueChatAddEffect ()
    local nEffectId = 2001
    local tInfo = LeagueChatEffectFilter()
    for i,v in pairs(rwtLeagueEggNpcGenInfo) do 
        local nNpcId = rwtNpcGenRelationInfo[v]
        local nType = rwtNpc[nNpcId]["LeagueEffectType"] or 4
        rwSpecialStatus_RemoveEffect(nType,v,nEffectId)        
    end    
    for i,v in pairs(tInfo) do 
        local nNpcId = rwtNpcGenRelationInfo[v]
        local nType = rwtNpc[nNpcId]["LeagueEffectType"] or 4   
        local sPos = rwtNpc[nNpcId]["LeagueEffectPos"] or ""
        rwSpecialStatus_AddEffect(nType,v,nEffectId,sPos)
    end
end

function LeagueChatRemoveEffect(nNpcTypeId)
    local nEffectId = 2001
    local nNpcTypeId = nNpcTypeId or 0
    local tGenId = rwtNpc[nNpcTypeId]["GenId"]
    local nType = rwtNpc[nNpcTypeId]["LeagueEffectType"] or 4   
    local sPos = rwtNpc[nNpcTypeId]["LeagueEffectPos"] or ""
    for i,v in pairs(tGenId) do 
        rwSpecialStatus_RemoveEffect(nType,v,nEffectId,sPos)
    end
end


function LeagueChatGetDialogId (nNpcTypeId)
    local tLeagueChatDialog = {}
    local tNpc = rwtNpc[nNpcTypeId]
    local nCurTime = os.time()
	local tCurTime = os.date("*t",nCurTime)  
    local nLeagueLevel = rwUserGetLeagueLevel()
    if rwChkTable(tNpc["EggLeagueDialog"]) then
        local nTempDataId =  tNpc["LeagueChatTempDataId"] or 0
        local nTempIndex = tNpc["LeagueChatTempIndex"] or CONST_TEMP_DATA.Data1
        local nDataTime = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.RecordTime)
        local nFirstEggChat = rwTempDataGetValue(nTempDataId,nTempIndex) --用来记录是否第一次对白
        if math.abs(nCurTime - nDataTime) > 86400 or nFirstEggChat == 0 then
            local nLevel = 0
            local nIndex = 0
            for i,v in pairs (tNpc["EggLeagueDialog"]) do 
                local nMax = v["Level"] or 0
			    if nLeagueLevel >= nMax and nMax >= nLevel then
				    nLevel = nMax	
                    nIndex = i			
			    end
            end
            if nIndex ~= 0 and tNpc["EggLeagueDialog"][nIndex]["DialogId"]  then
                rwTempDataSet(nTempDataId,1,nTempIndex,0,true)
                LeagueChatRemoveEffect(nNpcTypeId)
                return tNpc["EggLeagueDialog"][nIndex]["DialogId"] --彩蛋闲聊最为优先
            end
        end
    end
    if rwChkTable(tNpc["LeagueDialog"]) then
--		local nDistanceTime = tCurTime["hour"]*3600 + tCurTime["min"]*60 + tCurTime["sec"]
		local tDialogInfo 
		local nLevel = 0
		for i,v in pairs (tNpc["LeagueDialog"]) do
			local nMax = v["Level"] or 0
			if nLeagueLevel >= nMax and nMax >= nLevel then
				tDialogInfo = v
				nLevel = nMax				
			end
		end
        if rwChkTable(tDialogInfo["AllDayDialog"]) then
            tLeagueChatDialog = SysCopyTable(tDialogInfo["AllDayDialog"])
        end
		
	end
    --美食相关闲聊
    if rwChkTable(tNpc["FoodDialog"]) then
        if nLeagueLevel< 2 then
            return tLeagueChatDialog
        end        
        local nFoodTaskWeek
        local nFoodTaskTime = 0
        -- 一直在的美食对白
        if rwChkTable(tNpc["FoodDialog"]["AlwaysDialog"]) then
            for nIndex,nValue in pairs (tNpc["FoodDialog"]["AlwaysDialog"]) do --全天
                table.insert(tLeagueChatDialog,nValue)
            end
        end
        nFoodTaskWeek,nFoodTaskTime = rwFoodTask_GetNowTimePart() --获取对应星期 和 餐点
        for i,v in pairs (tNpc["FoodDialog"]) do
            if (nFoodTaskWeek == v["WeekDay"]) then
                if rwChkTable(v["AllDayDialog"]) then
                    for nIndex,nValue in pairs (v["AllDayDialog"]) do --全天
                        table.insert(tLeagueChatDialog,nValue)
                    end
                end
                if nFoodTaskTime == CONST_FOOD_TIME.Breakfast then --早餐
                    if rwChkTable(v["BreakfastDialog"]) then
                        for nIndex,nValue in pairs (v["BreakfastDialog"]) do
                            table.insert(tLeagueChatDialog,nValue)
                        end
                    end
                elseif nFoodTaskTime == CONST_FOOD_TIME.Lunch then --午餐
                    if rwChkTable(v["LunchDialog"]) then
                        for nIndex,nValue in pairs (v["LunchDialog"]) do
                            table.insert(tLeagueChatDialog,nValue)
                        end
                    end
                elseif nFoodTaskTime == CONST_FOOD_TIME.Dinner then --晚餐
                    if rwChkTable(v["DinnerDialog"]) then
                        for nIndex,nValue in pairs (v["DinnerDialog"]) do
                            table.insert(tLeagueChatDialog,nValue)
                        end
                    end
                end
            end
		end
    end
    return tLeagueChatDialog
end



-- rwtSceneLoad_Func[1000] = rwtSceneLoad_Func[1000] or {}
-- table.insert(rwtSceneLoad_Func[1000],LeagueChatAddEffect)