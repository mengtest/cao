--region rwAdventureTemplate.lua
--Date
--奇遇类



--endregion

rwAdventureTemplate = class("rwAdventureTemplate")

function rwAdventureTemplate:ctor()

end

--时间结点检测( 如9:00 - 9:59     为一个时间单位：1天 1小时等 )
function Adventure_TimeJudge(TypeTable)
	local nTemp_Table = TypeTable
	local nTime = rwComGetCurrentTimebyTable()
	
	for _,nRecTime in ipairs(CONST_TIME_TYPE) do
		if nTemp_Table[nRecTime] and nTemp_Table[nRecTime] ~= nTime[nRecTime] then
			--rwPrintNormalLog({Func = "Adventure_TimeJudge",Value = nTime[nRecTime],Time = nRecTime})
			return false
		end
	end
	
	return true
end

--获取玩家属性进行检测 ( 有检测函数 )
function Adventure_UserJudge(TypeTable)
	local nTemp_Table = TypeTable
	
	for sDataIndex,Judge in pairs(nTemp_Table) do
		if sDataIndex ~= "Type" then
			local nUserGetData = rwUserGetInt(CONST_USER_ATTR[sDataIndex])
			if not rwChkFunc(Judge) then
				if nUserGetData ~= Judge then
					return false
				end
			else
				if not Judge(nUserGetData) then
					return false
				end
			end	
		end
	end
	
	return true
end

--获取玩家英雄属性进行检测 ( 有检测函数 )
function Adventure_HeroJudge(TypeTable)
	local nTemp_Table = TypeTable
	
	for sDataIndex,Judge in pairs(nTemp_Table) do
		if rwChkTable(Judge) and sDataIndex ~= "Type" then
			local nHeroGetData = rwHeroGetInt(Judge["HeroType"] or Judge[1],CONST_HERO_ATTR[sDataIndex])
			local nTempAttr = Judge["AttrType"] or Judge[2]
			
			if rwChkFunc(nTempAttr) then
				if not nTempAttr(nHeroGetData) then
					return false
				end
			else
				if nHeroGetData ~= nTempAttr then
					return false
				end
			end
		end
	end
	
	return true
end

--随机概率 ( 随机范围 0-1 )
function Adventure_ProbabilityJudge(TypeTable)
	local nTemp_Table = TypeTable
	local nIndex = math.random()

	if nTemp_Table["Value"] >= nIndex then
		return true
	else
		return false
	end
end

--时间范围判断(配置从sec开始 没有配置取当前时间对应值)
function Adventure_TimeRangeJudge(TypeTable)
	local nTemp_Table = TypeTable
	
	if not rwChkTable(nTemp_Table["MaxTime"]) or not rwChkTable(nTemp_Table["MinTime"]) then
		return false
	end
	
	local nTime = rwComGetCurrentTimebyTable()
	local nCurrentTime = rwComGetCurrentTime()
	
	for _,v in ipairs(CONST_TIMERANGE_TYPE) do
		if not nTemp_Table["MaxTime"][v] then
			nTemp_Table["MaxTime"][v] = nTime[v]
		end
		
		if not nTemp_Table["MinTime"][v] then
			nTemp_Table["MinTime"][v] = nTime[v]
		end
	end
	
	if os.time(nTemp_Table["MaxTime"]) >= nCurrentTime and os.time(nTemp_Table["MinTime"]) <= nCurrentTime then
		return true
	else
		return false
	end
	
end

-- 玩家其他选项 (目前有： 时装检查 )
function Adventure_UserOtherJudge(TypeTable)
	local nTemp_Table = TypeTable
	local FId = rwGetShowFashion()
	
	if nTemp_Table["ShowFashionId"] and FId ~= nTemp_Table["ShowFashionId"] then
		return false
	end
	
	return true
end

-- 英雄其他选项 (目前有： 出战英雄检查 )
function Adventure_HeroOtherJudge(TypeTable)
	local nTemp_Table = TypeTable
	
	if nTemp_Table["AllFightHero"] and rwChkTable(nTemp_Table["AllFightHero"]) then
		local tHeroTable = rwHeroGetAllInFight()
		local nOwnHero = 0
		for var=1,FIGHT_HERO_COUNT do
			if nTemp_Table["AllFightHero"][var] then
				for i = 1,#tHeroTable do 
					if tHeroTable[i] == nTemp_Table["AllFightHero"][var] then
						nOwnHero = nOwnHero + 1
					end
				end
			end
		end
		
		if nOwnHero ~= #nTemp_Table["AllFightHero"] then
			return false
		end
	end
	
	return true
end

--任务完成检查
function Adventure_TaskFinishJudge(TypeTable)
	local nTemp_Table = TypeTable
	
	if nTemp_Table["TaskFinish"] and rwChkTable(nTemp_Table["TaskFinish"]) then
		for _,v in pairs(nTemp_Table["TaskFinish"]) do
			if rwTaskGetFinishMask(v) ~= 1 then
				return false
			end
		end
	end
	
	return true
end

--玩家掩码检查
function Adventure_UserDataJudge(TypeTable)
	local nTemp_Table = TypeTable
	
	if nTemp_Table["Func"] and rwChkFunc(nTemp_Table["Func"]) then
		return nTemp_Table["Func"]()
	end
	
	if nTemp_Table["UserData"] and rwChkTable(nTemp_Table["UserData"]) then
		for _,v in pairs(nTemp_Table["UserData"]) do
			if v["DataId"] and v["Index"] and v["Value"] then
				local nTempValue = rwTempDataGetValue(v["DataId"], v["Index"])
				if v["Compare"] == "equal" and nTempValue ~= v["Value"] then
					return false
				end
				
				if v["Compare"] == "noequal" and nTempValue == v["Value"] then
					return false
				end
				
				if v["Compare"] == "greater" and nTempValue < v["Value"] then
					return false
				end
				
				if v["Compare"] == "less" and nTempValue > v["Value"] then
					return false
				end
			end
		end
	return true
	end
	
end

rwt_Adventure_AllBegin[CONST_ADVENTURE_TYPE.TIME] = Adventure_TimeJudge
rwt_Adventure_AllBegin[CONST_ADVENTURE_TYPE.USER] = Adventure_UserJudge
rwt_Adventure_AllBegin[CONST_ADVENTURE_TYPE.HERO] = Adventure_HeroJudge
rwt_Adventure_AllBegin[CONST_ADVENTURE_TYPE.PROBABILITY] = Adventure_ProbabilityJudge
rwt_Adventure_AllBegin[CONST_ADVENTURE_TYPE.TIMERANGE] = Adventure_TimeRangeJudge
rwt_Adventure_AllBegin[CONST_ADVENTURE_TYPE.USEROTHER] = Adventure_UserOtherJudge
rwt_Adventure_AllBegin[CONST_ADVENTURE_TYPE.HEROOTHER] = Adventure_HeroOtherJudge
rwt_Adventure_AllBegin[CONST_ADVENTURE_TYPE.TASKFINISH] = Adventure_TaskFinishJudge
rwt_Adventure_AllBegin[CONST_ADVENTURE_TYPE.USERDATA] = Adventure_UserDataJudge

function rwAdventureTemplate:Adventure_Judge(nTrapType)
	local nTable = rwtNpcGroup[nTrapType]["AdventureJudgeType"]
	
	if rwChkTable(nTable) then
		for _,v in pairs(nTable) do
			if not v["Type"] or not rwt_Adventure_AllBegin[v["Type"]] or not rwt_Adventure_AllBegin[v["Type"]](v) then
				return false
			end
		end
		return true
	end
end


function rwAdventureTemplate:Adventure_Judge_Dialog(nDialogId)
    local nTable = rwtDialog[nDialogId]["AdventureJudgeType"]

	if rwChkTable(nTable) then
		for _,v in pairs(nTable) do
			if not v["Type"] or ( not rwt_Adventure_AllBegin[v["Type"]] ) or (not rwt_Adventure_AllBegin[v["Type"]](v)) then
				return false
			end
		end
		return true
       
	end
end
