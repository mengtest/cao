--region rwLoadFunC.lua
--Purpose:		加载函数
--Creator: 		余锦鑫
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-10-31 $
--RCS-ID:		$Revision: 8 $
--endregion

isTest = false

math.randomseed(os.time())
--math.randomseed(tonumber(tostring(os.time()):reverse():sub(1, 6)))

function rwLoadFunC()
    for i,v in pairs(rwtTask) do
        --NPC:Task模板映射
        if v["StartNpc"] and v["StartNpc"] ~= 0 then
			local nStartNpc = v["StartNpc"]
            rwtTaskNpcInfo[nStartNpc] = rwtTaskNpcInfo[nStartNpc] or {}
            if(not rwComElementIsExit(rwtTaskNpcInfo[nStartNpc],i)) then
				table.insert(rwtTaskNpcInfo[nStartNpc],i)
			end
        end
        --交任务NPC
        if v["EndNpc"] and v["EndNpc"] ~= 0 then
			local nEndNpc = v["EndNpc"]
            rwtTaskEndNpcInfo[nEndNpc] = rwtTaskEndNpcInfo[nEndNpc] or {}
            if(not rwComElementIsExit(rwtTaskEndNpcInfo[nEndNpc],i)) then
				table.insert(rwtTaskEndNpcInfo[nEndNpc],i)
			end
        end
        if v["TaskNpc"] and v["TaskNpc"] ~= 0 then
			local nTaskNpc = v["TaskNpc"]
            rwtTaskNpcInfo[nTaskNpc] = rwtTaskNpcInfo[nTaskNpc] or {}
            if(not rwComElementIsExit(rwtTaskNpcInfo[nTaskNpc],i)) then
				table.insert(rwtTaskNpcInfo[nTaskNpc],i)
			end
        end
        if v["TaskNpcTable"] then
            for k,j in pairs(v["TaskNpcTable"]) do
                local nTaskNpc = j
                rwtTaskNpcInfo[nTaskNpc] = rwtTaskNpcInfo[nTaskNpc] or {}
                if(not rwComElementIsExit(rwtTaskNpcInfo[nTaskNpc],i)) then
				    table.insert(rwtTaskNpcInfo[nTaskNpc],i)
			    end
            end
        end

        --Monster:Task模板映射
        local nIndex = 1
        while v["KillMonster"..nIndex] do
            local nMonsterType = v["KillMonster"..nIndex]
            rwtTaskMonsterInfo[nMonsterType] = rwtTaskMonsterInfo[nMonsterType] or {}
            rwtTaskMonsterInfo[nMonsterType][i] = {nIndex,v["KillMonsterCount"..nIndex]}
            nIndex = nIndex + 1
        end
        --怪物组:Task模板映射
        local nIndex = 1
        while v["KillMonsterGroup"..nIndex] do
            local nMonsterGroupId = v["KillMonsterGroup"..nIndex]
            rwtTaskMonsterGroupInfo[nMonsterGroupId] = rwtTaskMonsterGroupInfo[nMonsterGroupId] or {}
            rwtTaskMonsterGroupInfo[nMonsterGroupId][i] = {nIndex,v["KillMonsterGroupCount"..nIndex]}
            nIndex = nIndex + 1
        end
        
        --陷阱trap:Task模板映射
        local nIndex = 1
        while v["ReqTrap"..nIndex] do
            local nTrapId = v["ReqTrap"..nIndex]
            rwtTaskTrapInfo[nTrapId] = rwtTaskTrapInfo[nTrapId] or {}
            rwtTaskTrapInfo[nTrapId][i] = nIndex
            nIndex = nIndex + 1
        end
        --副本CopyMap:Task模板映射
        local nIndex = 1
        while v["PassCopyMap" ..nIndex] do
            if type(v["PassCopyMap" ..nIndex]) == "number" then
                local nCopyMapId = v["PassCopyMap"..nIndex]
                rwtTaskCopyMapInfo[nCopyMapId] = rwtTaskCopyMapInfo[nCopyMapId] or {}
                rwtTaskCopyMapInfo[nCopyMapId][i] = {nIndex,v["PassCopyMapCount"..nIndex]}
            elseif type(v["PassCopyMap" ..nIndex]) == "table" and table.getn(v["PassCopyMap" ..nIndex]) ~= 0 then
                for _,Id in ipairs(v["PassCopyMap" ..nIndex]) do
                    local nCopyMapId = Id
                    rwtTaskCopyMapInfo[nCopyMapId] = rwtTaskCopyMapInfo[nCopyMapId] or {}
                    rwtTaskCopyMapInfo[nCopyMapId][i] = {nIndex,v["PassCopyMapCount"..nIndex]}
                end                  
            end
            nIndex = nIndex + 1
        end    
        --动态创建NPC组的地图：:Task模板映射
        if v["DynaNpcGroupMapId"] and v["DynaNpcGroupMapId"] ~= 0 then
			local nMapId = v["DynaNpcGroupMapId"]
            rwtTaskMapInfo[nMapId] = rwtTaskMapInfo[nMapId] or {}
            if(not rwComElementIsExit(rwtTaskMapInfo[nMapId],i)) then
				table.insert(rwtTaskMapInfo[nMapId],i)
			end
        end
        --采集怪:Task模板映射
        local nIndex = 1
        while v["ReqCollectId"..nIndex] do
            local nColletGroupId = v["ReqCollectId"..nIndex]
            rwtTaskCollectInfo[nColletGroupId] = rwtTaskCollectInfo[nColletGroupId] or {}
            rwtTaskCollectInfo[nColletGroupId][i] = {nIndex,v["ReqCollectCount"..nIndex]}
            nIndex = nIndex + 1
        end     
        --开箱:Task模板映射
        if v["ReqTreasureBox"] and  v["ReqTreasureBox"] ~= 0 then
            local nTreasureBoxGroupId = v["ReqTreasureBox"]
            rwtTaskTreasureBoxInfo[nTreasureBoxGroupId] = rwtTaskTreasureBoxInfo[nTreasureBoxGroupId] or {} 
            table.insert(rwtTaskTreasureBoxInfo[nTreasureBoxGroupId],i)
        end 
        --佣兵任务：映射
        if v["MercenaryTownId"] and  v["MercenaryTownId"] ~= 0 then
            local nTownId = v["MercenaryTownId"]
            local nQuality = v["TaskQuality"]
            if nTownId and nQuality then
                rwtMercenaryTaskListByTownId[nTownId] = rwtMercenaryTaskListByTownId[nTownId] or {}
                rwtMercenaryTaskListByTownId[nTownId][nQuality] = rwtMercenaryTaskListByTownId[nTownId][nQuality] or {}
                if(not rwComElementIsExit(rwtMercenaryTaskListByTownId[nTownId][nQuality],i)) then
                    table.insert(rwtMercenaryTaskListByTownId[nTownId][nQuality],i)
                end
            end
        end
--        --佣兵日常：映射
--        if v["TaskType"] == CONST_TASK_TYPE.MERCENARY_DAILY then
--            table.insert(rwtMercenaryDailyTaskListInfo,i)
--        end 
		if v["TaskType"] == CONST_TASK_TYPE.QUICKSEND then
			if (not v["isExceptTask"]) or v["isExceptTask"] ~=1 then
				table.insert(rwtQuickSendTaskListInfo,i)
				if v["QuickSendAreaId"] and v["QuickSendTownId"] then
					rwtQuickSendMapTownInfo[v["QuickSendAreaId"]] = rwtQuickSendMapTownInfo[v["QuickSendAreaId"]] or {}
					if (not rwComElementIsExit(rwtQuickSendMapTownInfo[v["QuickSendAreaId"]],v["QuickSendTownId"])) then
						table.insert(rwtQuickSendMapTownInfo[v["QuickSendAreaId"]],v["QuickSendTownId"])
					end
				end
			end			
		end
		
        --巡查任务：首个任务（到达巡查点的任务）映射
        if (v["TaskType"] == CONST_TASK_TYPE.PATROL) and (v["PatrolFirstTask"] and v["PatrolFirstTask"] == 1)  then
            table.insert(rwtPatrolTaskListInfo,i)
        end 

        --自律联盟美食支线任务：任务映射
        if (v["TaskType"] == CONST_TASK_TYPE.FOOD) then
            local nFoodTaskWeek = v["FoodTaskWeek"]
            local nFoodTaskTime = v["FoodTaskTime"]
            local nFoodTaskLevel = v["FoodTaskLevel"] or 1 --默认自律联盟1级可接
            local nFoodTaskEgg = v["FoodTaskEgg"] or CONST_FOOD_EGG.NoEgg  --默认非彩蛋任务
            if nFoodTaskWeek and nFoodTaskTime and nFoodTaskLevel and nFoodTaskEgg then
                rwtFoodTaskListInfo[nFoodTaskWeek] = rwtFoodTaskListInfo[nFoodTaskWeek] or {}
                rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime] = rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime] or {}
                for level=nFoodTaskLevel,10 do   --目前自律联盟佣兵等级最高10级
                    rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime][level] = rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime][level] or {}
                    rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime][level][nFoodTaskEgg] = rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime][level][nFoodTaskEgg] or {}
                    table.insert(rwtFoodTaskListInfo[nFoodTaskWeek][nFoodTaskTime][level][nFoodTaskEgg],i)
                end
            end
        end 
        --奖励映射
        --if v["AwardId"] then
        --    v["Awards"] = {}
        --    v["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
        --    v["Awards"]["AwardId"] = v["AwardId"]
        --end
        if v["OpenCopyMap"] then
            local nCopyMapId = v["OpenCopyMap"]
            rwtTaskEnterCopyMapInfo[nCopyMapId] = rwtTaskEnterCopyMapInfo[nCopyMapId] or {}
            table.insert(rwtTaskEnterCopyMapInfo[nCopyMapId],i)
        end
        local nIndex = 1
        while v["UnlockCopyMap"..nIndex] do 
            local nCopyMapId = v["UnlockCopyMap"..nIndex]
            rwtTaskUnlockCopyMapInfo[nCopyMapId] = rwtTaskUnlockCopyMapInfo[nCopyMapId] or {}
            rwtTaskUnlockCopyMapInfo[nCopyMapId]["TaskId"] = i
            nIndex = nIndex +1
        end
        --解谜映射
        if v["ReqPuzzleId"] and v["ReqPuzzleId"] ~= 0 then
			local nPuzzleId = v["ReqPuzzleId"]
            rwtTaskPuzzleIdInfo[nPuzzleId] = rwtTaskPuzzleIdInfo[nPuzzleId] or {}
            if(not rwComElementIsExit(rwtTaskPuzzleIdInfo[nPuzzleId],i)) then
				table.insert(rwtTaskPuzzleIdInfo[nPuzzleId],i)
			end
        end
        if v["ReqPuzzleObj"] and v["ReqPuzzleObj"] ~= 0 then
			local nPuzzleObj = v["ReqPuzzleObj"]
            rwtTaskPuzzleObjInfo[nPuzzleObj] = rwtTaskPuzzleObjInfo[nPuzzleObj] or {}
            if(not rwComElementIsExit(rwtTaskPuzzleObjInfo[nPuzzleObj],i)) then
				table.insert(rwtTaskPuzzleObjInfo[nPuzzleObj],i)
			end
        end
        
        --传送阵:Task模板映射
        if v["TranFerId"] and v["TranFerId"] ~= 0 then
			local nTranFerId = v["TranFerId"]
            rwtTaskTransFerInfo[nTranFerId] = rwtTaskTransFerInfo[nTranFerId] or {}
            if(not rwComElementIsExit(rwtTaskTransFerInfo[nTranFerId],i)) then
				table.insert(rwtTaskTransFerInfo[nTranFerId],i)
			end
        end

        --切屏点:Task模板映射
        if v["ChangeMapPointId"] and v["ChangeMapPointId"] ~= 0 then
			local nChangeMapPointId = v["ChangeMapPointId"]
            rwtTaskChangeMapInfo[nChangeMapPointId] = rwtTaskChangeMapInfo[nChangeMapPointId] or {}
            if(not rwComElementIsExit(rwtTaskChangeMapInfo[nChangeMapPointId],i)) then
				table.insert(rwtTaskChangeMapInfo[nChangeMapPointId],i)
			end
        end
        if v["NeedLevel"] and v["NeedLevel"] ~= 0 then
            table.insert(rwtTaskUpLevelInfo,i)
        end
		if v["NeedLeagueLevel"] and v["NeedLeagueLevel"] ~= 0 then
            table.insert(rwtTaskdLeagueUpLevelInfo,i)
        end

        --倒计时加速任务所需通关主要副本映射
        if v["DropCopyMapId"] and rwChkTable(v["DropCopyMapId"]) then
            for _,nMapId in pairs(v["DropCopyMapId"]) do
                rwtTaskSpeedCopyInfo[nMapId] = rwtTaskSpeedCopyInfo[nMapId] or {}
                table.insert(rwtTaskSpeedCopyInfo[nMapId],i)
            end
        end
        --倒计时加速任务所需通关次要副本映射
        if v["SecDropCopyMapId"] and rwChkTable(v["SecDropCopyMapId"]) then
            for _,nMapId in pairs(v["SecDropCopyMapId"]) do
                rwtTaskSpeedSecCopyInfo[nMapId] = rwtTaskSpeedSecCopyInfo[nMapId] or {}
                table.insert(rwtTaskSpeedSecCopyInfo[nMapId],i)
            end
        end
    end

    for i,v in pairs(rwtTarget) do
        --杀怪
        if v["KillMonsterGroup"] and v["KillMonsterGroup"] ~= 0 then
			local nMonsterGroupId = v["KillMonsterGroup"]
			if rwChkTable(nMonsterGroupId) then
				for j,k in pairs(nMonsterGroupId) do
					rwtTargetMonsterGroupInfo[k] = rwtTargetMonsterGroupInfo[k] or {}
					if(not rwComElementIsExit(rwtTargetMonsterGroupInfo[k],i)) then
						table.insert(rwtTargetMonsterGroupInfo[k],i)					
					end
				end
			elseif rwChkInt(nMonsterGroupId) then
				rwtTargetMonsterGroupInfo[nMonsterGroupId] = rwtTargetMonsterGroupInfo[nMonsterGroupId] or {}
				if(not rwComElementIsExit(rwtTargetMonsterGroupInfo[nMonsterGroupId],i)) then
					table.insert(rwtTargetMonsterGroupInfo[nMonsterGroupId],i)
				end
			end	 
        end
        --必输
        if v["ReqMonsterGroupBattleFail"] and v["ReqMonsterGroupBattleFail"] ~= 0 then
			local nMonsterGroupId = v["ReqMonsterGroupBattleFail"]
            rwtTargetMonsterGroupBattleFailInfo[nMonsterGroupId] = rwtTargetMonsterGroupBattleFailInfo[nMonsterGroupId] or {}
            if(not rwComElementIsExit(rwtTargetMonsterGroupBattleFailInfo[nMonsterGroupId],i)) then
				table.insert(rwtTargetMonsterGroupBattleFailInfo[nMonsterGroupId],i)
			end
        end
        
        --宝箱
        if v["ReqTreasureBox"] and  v["ReqTreasureBox"] ~= 0 then
            local nTreasureBoxGroupId = v["ReqTreasureBox"]
            rwtTargetTreasureBoxInfo[nTreasureBoxGroupId] = rwtTargetTreasureBoxInfo[nTreasureBoxGroupId] or {}
            if(not rwComElementIsExit(rwtTargetTreasureBoxInfo[nTreasureBoxGroupId],i)) then
				table.insert(rwtTargetTreasureBoxInfo[nTreasureBoxGroupId],i)
			end
        end
        --陷阱
        if v["ReqTrap"] and v["ReqTrap"] ~= 0 then
			local nTrapId = v["ReqTrap"]
            rwtTargetTrapInfo[nTrapId] = rwtTargetTrapInfo[nTrapId] or {}
            if(not rwComElementIsExit(rwtTargetTrapInfo[nTrapId],i)) then
				table.insert(rwtTargetTrapInfo[nTrapId],i)
			end
        end    
        --采集
        if v["ReqCollectId"] and v["ReqCollectId"] ~= 0 then 
        	local nCollectId = v["ReqCollectId"]
            if rwChkTable (nCollectId) then
				for j,k in pairs(nCollectId) do
					rwtTargetCollectInfo[k] = rwtTargetCollectInfo[k] or {}
					if(not rwComElementIsExit(rwtTargetCollectInfo[k],i)) then
						table.insert(rwtTargetCollectInfo[k],i)						
					end
				end
			elseif rwChkInt(nCollectId) then
				rwtTargetCollectInfo[nCollectId] = rwtTargetCollectInfo[nCollectId] or {}
				if(not rwComElementIsExit(rwtTargetCollectInfo[nCollectId],i)) then
					table.insert(rwtTargetCollectInfo[nCollectId],i)
				end
            end
            
        end   
        --对白结束
        if v["ReqDialogId"] and v["ReqDialogId"] ~= 0 then 
        	local nDialogId = v["ReqDialogId"]            
			if rwChkTable (nDialogId) then
				for j,k in pairs(nDialogId) do
					rwtTargetDialogEndInfo[k] = rwtTargetDialogEndInfo[k] or {}
					if(not rwComElementIsExit(rwtTargetDialogEndInfo[k],i)) then
						table.insert(rwtTargetDialogEndInfo[k],i)						
					end
				end
			elseif rwChkInt(nDialogId) then
				rwtTargetDialogEndInfo[nDialogId] = rwtTargetDialogEndInfo[nDialogId] or {}
				if(not rwComElementIsExit(rwtTargetDialogEndInfo[nDialogId],i)) then
					table.insert(rwtTargetDialogEndInfo[nDialogId],i)
				end
			end
			
        end
    end
    for i,v in pairs(rwtCopyMapMission) do 
        local nEnterNpcMap = v["EnterNpcMap"] -- 副本入口NPC所在地图
        if nEnterNpcMap and rwChkInt(nEnterNpcMap) then
            rwtCopyMapEnterNpcInfo[nEnterNpcMap] = rwtCopyMapEnterNpcInfo[nEnterNpcMap] or {}
            table.insert(rwtCopyMapEnterNpcInfo[nEnterNpcMap],i)   --在该rwtCopyMapEnterNpcInfo的地图如2001中的插入副本对应的ID
        end

        if v.Type == CONST_COPYMAP_TYPE.MULTI then
            --多人本数据
            rwtCopyMapDynInitInfo[i] = {}
        else 
            --单人本副本数据
            rwtCopyMapUserInitInfo[i] = {}
        end

        if v.DailyType and (v.DailyType == CONST_DAILYCOPYMAP_TYPE.MONEY_MAP) then
            table.insert(rwtDailyCopyMapMoney,i)
        end
        if v.DailyType and (v.DailyType == CONST_DAILYCOPYMAP_TYPE.MATERIAL_MAP) then
            table.insert(rwtDailyCopyMapMaterial,i)
        end
		
        if v.CopyNpcType and v.CopyNpcType == CONST_COPYMAP_TASK_TYPE.SIDE then
            local nSideMap = v["EnterSideMap"]
			if rwChkInt(nSideMap) then
				rwtCopyMapSideEnterCopyMapInfo[nSideMap] = rwtCopyMapSideEnterCopyMapInfo[nSideMap] or {}
				table.insert(rwtCopyMapSideEnterCopyMapInfo[nSideMap],i)
			elseif rwChkTable(nSideMap) then
				for _,nTempCopyMapId in pairs(nSideMap) do
					rwtCopyMapSideEnterCopyMapInfo[nTempCopyMapId] = rwtCopyMapSideEnterCopyMapInfo[nTempCopyMapId] or {}
					table.insert(rwtCopyMapSideEnterCopyMapInfo[nTempCopyMapId],i)
				end
			end
		end
		
    end

	
	for i,v in pairs(rwtTimeCopyMapInfo) do
		for j,k in pairs(v) do 
			if rwChkInt(k["CopyMapId"]) then
				local nCopyMapId = k["CopyMapId"]
				rwtTimeCopyMap_CopymapId_Info[nCopyMapId] = rwtTimeCopyMap_CopymapId_Info[nCopyMapId] or {}
				rwtTimeCopyMap_CopymapId_Info[nCopyMapId][i] = rwtTimeCopyMap_CopymapId_Info[nCopyMapId][i] or {}
				table.insert(rwtTimeCopyMap_CopymapId_Info[nCopyMapId][i],j)
			end
		end		 
    end
    
    for i,v in pairs(rwtNpcGroup) do
        if v.Type == CONST_NPCGROUP_TYPE.ManyHeroes then
            --多英雄副本 怪物ID对应的NPCGroupID
            if v.GenIDMonster then
                rwtManyHeroMonsterInfo[v.GenIDMonster] = rwtManyHeroMonsterInfo[v.GenIDMonster] or {}
				rwtManyHeroMonsterInfo[v.GenIDMonster]["NPCGroupId"] = i
            end
            --多英雄副本 用于找到对白时传入的nId对应的NPC
            if v.GenIdNPCGroup then
                rwtManyHeroNPCGenIDInfo[v.GenIdNPCGroup] = rwtManyHeroNPCGenIDInfo[v.GenIdNPCGroup] or {}
				rwtManyHeroNPCGenIDInfo[v.GenIdNPCGroup]["NPCGroupId"] = i
            end
        end
--		if rwChkTable(v["BubbleGen"]) then
--			for j,k in pairs(v["BubbleGen"]) do
--				rwtBubbleGenInfo[k] = rwtBubbleGenInfo[k] or {}
--				rwtBubbleGenInfo[k]["EventId"] = i
--				rwtBubbleGenInfo[k]["Type"] = CONST_GEN_EVENTTYPE.NPCGROUP
--			end			
--		end
    end
--	for i,v in pairs (rwtMonsterGroup) do
--		if rwChkTable(v["BubbleGen"]) then
--			for j,k in pairs(v["BubbleGen"]) do
--				rwtBubbleGenInfo[k] = rwtBubbleGenInfo[k] or {}
--				rwtBubbleGenInfo[k]["EventId"] = i
--				rwtBubbleGenInfo[k]["Type"] = CONST_GEN_EVENTTYPE.MONSTERGROUP
--			end			
--		end
--	end
	for i,v in pairs(tPuzzleEvent) do
		for j,k in pairs(v) do
			if j == "PuzzleInit" then
				table.insert(rwtPuzzleInitInfo,i)
				break
			end
		end		
	end
end

rwLoadFunC()
