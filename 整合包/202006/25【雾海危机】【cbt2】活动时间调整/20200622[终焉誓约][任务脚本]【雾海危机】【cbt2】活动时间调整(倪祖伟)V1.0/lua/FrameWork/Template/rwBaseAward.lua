--region rwBaseAward *.lua
--Purpose:		奖励模板
--Creator: 		余锦鑫
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-06-22 $
--RCS-ID:		$Revision:23	$
--endregion

rwBaseAward = class("rwBaseAward")

---[Comment]
---构造模块
---tInfo
---nUserId  玩家Id，0默认自己
---nIdForDialog  对白回调传入的Id，0默认为无
function rwBaseAward:ctor(tInfo,nUserId,nIdForDialog,nNum)
    self._info = tInfo or {}
    self._userId = nUserId or 0
	self._Idfordialog = nIdForDialog or 0
    self._num = nNum or 1 --奖励次数  使用物品时 一次可使用多个物品
    self._code = CONST_CODE.OK   --错误码
end

---模块流程
function rwBaseAward:Process()
    if not self:ChkCondition() then
        return self._code
    end
    if not self:Consume() then
        return self._code
    end
    self:AwardEventHandle()
    return self._code
end

function rwBaseAward:ErrorMsg()
    if rwChkTable(self._info["ErrorMsg"]) then
        if rwChkTable(self._info["ErrorMsg"][self._code]) then
            local nMsgType = self._info["ErrorMsg"][self._code]["MsgType"] or CONST_MSG_SHOW.Msg_ShowTip
            local Param = self._info["ErrorMsg"][self._code]["Param"] or ""
            local nShowType = self._info["ErrorMsg"][self._code]["ShowType"]
            if nMsgType == CONST_MSG_SHOW.Msg_ShowLocalDialog then
                if rwChkTable(Param) then
                    local nIndex = math.random(1,#Param)
                    rwOpenNpcChatDialog(Param[nIndex])
                else
                    rwOpenNpcChatDialog(Param)
                end
            elseif nMsgType == CONST_MSG_SHOW.Msg_ShowTip then
                if rwChkTable(Param) then
                    local nIndex = math.random(1,#Param)
                    rwSendSystemMessage(Param[nIndex],nMsgType,nShowType)
                else
                    rwSendSystemMessage(Param,nMsgType,nShowType)
                end
            elseif nMsgType == CONST_MSG_SHOW.Msg_ShowBox then
                if rwChkTable(Param) then
                    local nIndex = math.random(1,#Param)
                    rwSendSystemMessage(Param[nIndex],nMsgType,nShowType)
                else
                    rwSendSystemMessage(Param,nMsgType,nShowType)
                end
            end

        end

    else
        if CONST_CODE_MSG[self._code] and tLuaText[LANGUAGE_CONFIG][CONST_CODE_MSG[self._code]] then
            rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][CONST_CODE_MSG[self._code]])
        end
    end
end

---===============================================================================--
---=========						条件判断模块							 =========--
---===============================================================================--
---[Comment]
---条件判断
function rwBaseAward:ChkCondition()
    if not self:ChkPackSpace() then
		self:ErrorMsg()
        return false
    end
    if not self:ChkPetPackSpace() then
		self:ErrorMsg()
        return false
    end
    if not self:ChkFriendBoxSpace() then
		self:ErrorMsg()
        return false
    end
    if not self:ChkCostItem() then
		self:ErrorMsg()
        return false
    end
    if not self:ChkUserAttr() then
		self:ErrorMsg()
        return false
    end

    if not self:CheckTime() then
        self:ErrorMsg()
        return false
    end

    if not self:CheckTimeType2() then
        self:ErrorMsg()
        return false
    end

    ---临时
    --if self._info.GenEventNoExist then
    --    for _,v in pairs(self._info.GenEventNoExist) do
    --        if rwHasGenEvent(v) then
    --            self._code = Error_ChkGenEventListNoExistFail
    --            return false
    --        end
    --    end
    --end

    return true
end

---事件条件判断
function rwBaseAward:ChkEventCond(tEventInfo)
    --概率判断 百分
    if rwChkInt(tEventInfo.ChkRandom) and rwGetRandInt(1,100) > tEventInfo.ChkRandom then
        return false
    end

    --前置GenId检测
    if rwChkTable(tEventInfo.ChkGenEventNoExist) then
        for _,v in pairs(tEventInfo.ChkGenEventNoExist) do
            if rwHasGenEvent(v) then
				self._code = CONST_CODE.Error_ChkGenEventListNoExistFail
                return false
            end
        end
    end
	
	if rwChkTable(tEventInfo.ChkGenEventIsExist) then
        for _,v in pairs(tEventInfo.ChkGenEventIsExist) do
		   local GenId = v
		   if GenId == "IdForDialog" then
		       GenId = self._Idfordialog
		   end
            if not rwHasGenEvent(GenId) then
				self._code = CONST_CODE.Error_ChkGenEventListIsExistFail
                return false
            end
        end
    end
     if rwChkTable(tEventInfo.ChkCopyMapTable) then
        local nCopyMapId = rwUserGetCurMapId()
        local bResult = true
        for i,v in pairs (tEventInfo.ChkCopyMapTable) do 
            local nValue = v["Value"]
            local sValueRes = v["ValueRes"]
            local nDynMapId = rwUserGetDynMapId()

            if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][sValueRes] ~= nValue then
                bResult = false
            end           
        end
        if not bResult then
            self._code = CONST_CODE.Error_ChkGenEventListIsExistFail
            return false 
        end
    end
    --玩家掩码值检查
	if  rwChkTable(tEventInfo.ChkUserTempData) then 
		for i,v in pairs(tEventInfo.ChkUserTempData) do
			local nRecord = v["Record"]
			local nDataValue = v["DataValue"] or CONST_TEMP_DATA.Data1
			local nValue = v["Value"]
			if not rwTempDataIsExist(nRecord, self._userId) then
                rwTempDataAdd(nRecord, self._userId)
            end
			local nGetVal = rwTempDataGetValue(nRecord,nDataValue,self._userId)
			if rwChkTable (nValue) then
                local bResult = false 
				for j,k in pairs(nValue) do 
					if nGetVal == k then
						bResult = true
					end
				end
                if not bResult then
                    self._code = CONST_CODE.Error_ChkGenEventListIsExistFail
				    return false
                end				
			elseif rwChkInt(nValue) then
				if nGetVal ~= nValue then
					self._code = CONST_CODE.Error_ChkGenEventListIsExistFail
					return false
				end
			end
		end
	end
   
	--亲密度 (2进制掩码及亲密度等级检查)
	if rwChkTable(tEventInfo.ImpressionChk) then
		for i,v in pairs(tEventInfo.ImpressionChk) do
			local nHeroId = v["HeroId"]  --英雄id
			local nTaskIndex = v["TaskIndex"] --任务序号 （1,2,3...)
			local nEndIndex = v["EndIndex"] --结局序号（结局1，结局2，结局3）
			local nNeedHeroImpressionLevel = v["NeedHeroImpressionLevel"]
			local nNowHeroImpressionLevel =rwHeroGetImpressLevel(nHeroId)
			--亲密度等级不够
			if nNowHeroImpressionLevel < nNeedHeroImpressionLevel then
				return false
			end	
			local nImpressionMask = rwGetHeroImpressionTaskMask(nHeroId,nTaskIndex)
			if nImpressionMask and nImpressionMask == 0 then
				return true
			end
			local tImpressionTaskMask =  rwLua10to2 (nImpressionMask)
			
			if tImpressionTaskMask and rwChkTable(tImpressionTaskMask)  then
			else
				return false
			end					
			if tImpressionTaskMask[nEndIndex] and  tImpressionTaskMask[nEndIndex] >0  then
				return false
			end
		end
	end
	
	--隔天掩码判断
	if rwChkInt(tEventInfo.ChkDataDayJudgment) then
		if rwTempDataDayJudgment(tEventInfo.ChkDataDayJudgment) then
			return true
		end 
		self._code = CONST_CODE.Error_ChkTempDataDayJudgment
		return false
	end
	
	--队伍英雄检查
	if rwChkTable(tEventInfo.ChkUserAllFightHero) then
		-- local tHeroTable = rwHeroGetAllInFight()
		-- local nChkNum = #tEventInfo["ChkUserAllFightHero"]
		-- local nOwnHero = 0
		-- for var=1,FIGHT_HERO_COUNT do
		-- 	if tEventInfo["ChkUserAllFightHero"][var] then
		-- 		for i = 1,#tHeroTable do 
		-- 			if tHeroTable[i] == tEventInfo["ChkUserAllFightHero"][var] then
		-- 				nOwnHero = nOwnHero + 1
		-- 			end
		-- 		end
		-- 	end
		-- end
        local bResult = true

        for i,v in pairs(tEventInfo["ChkUserAllFightHero"]) do
            if not rwIsHeroFight(v) then
                bResult = false
            end
        end

		if not bResult then
			self._code = CONST_CODE.Error_ChkAllFightHeroIsFail
			return false
		end
    end
    
    if rwChkTable(tEventInfo.CondTask) and tEventInfo.CondTask.TaskId then
        if tEventInfo.CondTask.IsFinish and not rwTaskIsSuccess(tEventInfo.CondTask.TaskId) then
            return false
        end
        if tEventInfo.CondTask.NoFinish and rwTaskIsSuccess(tEventInfo.CondTask.TaskId) then
            return false
        end
    end

    if rwChkTable(tEventInfo.CondTime) then
        if not self:ChkCondTime(tEventInfo.CondTime) then
            return false
        end
    end

    return true
end

function rwBaseAward:ChkCondTime(tCondInfo)
    if rwChkTable(tCondInfo) then
        local nTime = rwComGetCurrentTime()
        for k, v in pairs(tCondInfo) do
            local bWdayCheckFlag = true  --周几检测结果
            if v.StartTime.Wday and v.EndTime.Wday then
                local nNow_Wday = os.date("%w")
                if v.StartTime.Wday == tonumber(nNow_Wday) and v.EndTime.Wday == tonumber(nNow_Wday) then
                    bWdayCheckFlag = true   --特殊：判断周几  需每天独立配置
                else
                    bWdayCheckFlag = false
                end
            end
            if rwChkTable(v.KaiFuDays) then
                local nowdays = rwGetServerOpenDays()
                if nowdays < v.KaiFuDays.start then
                    return false
                end

                local allDay = v.KaiFuDays.ChiXu+v.KaiFuDays.JianGe
                local mod = math.fmod(nowdays-v.KaiFuDays.start,allDay)

                if mod >= v.KaiFuDays.ChiXu then

                    return false
                end
            end
            if bWdayCheckFlag then             
                local tStartTime = rwComGetCurrentTimebyTable()
                local tEndTime = rwComGetCurrentTimebyTable()

                tStartTime.year = v.StartTime.Year or tStartTime.year
                tStartTime.month = v.StartTime.Month or tStartTime.month
                tStartTime.day = v.StartTime.Day or tStartTime.day
                tStartTime.hour = v.StartTime.Hour or tStartTime.hour
                tStartTime.min = v.StartTime.Min or tStartTime.min
                tStartTime.sec = v.StartTime.Sec or tStartTime.sec
                tStartTime.wday = v.StartTime.Wday or tStartTime.wday

                tEndTime.year = v.EndTime.Year or tEndTime.year
                tEndTime.month = v.EndTime.Month or tEndTime.month
                tEndTime.day = v.EndTime.Day or tEndTime.day
                tEndTime.hour = v.EndTime.Hour or tEndTime.hour
                tEndTime.min = v.EndTime.Min or tEndTime.min
                tEndTime.sec = v.EndTime.Sec or tEndTime.sec
                tEndTime.wday = v.EndTime.Wday or tEndTime.wday

                if os.time(tStartTime) <= nTime and os.time(tEndTime) >= nTime then
                    return k
                end
            end
        end
        return false
    end
    return true
end

---[Comment]
---物品背包空间检查
function rwBaseAward:ChkPackSpace()
    ---目前项目不需要检查背包
    if rwChkInt(self._info.PackSpace) then
        if rwUserGetPackSpace() < self._info.PackSpace * self._num then
            self._code = CONST_CODE.Error_ChkPackSpace
            return false
        end
    end
    return true
end

---[Comment]
---幻兽背包空间检查
---幻兽背包有警戒值和上限值，未满警戒值可添加但不可超过上限值
function rwBaseAward:ChkPetPackSpace()
    if rwChkInt(self._info.PetPackSpace) then
        if rwGetPetPackageLeft(false) < 1 then   --真实
            self._code = CONST_CODE.Error_ChkPetPackSpace
            return false
        end
        if rwGetPetPackageLeft(true) < self._info.PetPackSpace * self._num then  --虚拟
            self._code = CONST_CODE.Error_ChkPetPackSpace
            return false
        end
    end
    return true
end

---[Comment]
---好友宝箱空间检查
---好友宝箱有警戒值和上限值，未满警戒值可添加但不可超过上限值
function rwBaseAward:ChkFriendBoxSpace()
    if rwChkInt(self._info.FriendBoxSpace) then
        if rwFriendBoxSpaceLeft() < self._info.FriendBoxSpace then   --真实
            self._code = CONST_CODE.Error_ChkFriendBoxSpace
            
            return false
        end
    end
    return true
end


---[Comment]
---消耗品检查
function rwBaseAward:ChkCostItem()
    if rwChkTable(self._info.CostItems) then
        for i,v in pairs(self._info.CostItems) do
            if rwUserGetItemCount(v.id) < v.num * self._num then
                self._code = CONST_CODE.Error_ChkItemNum

                return false
            end
        end
    end
    return true
end

---[Comment]
---玩家属性检查
function rwBaseAward:ChkUserAttr()
    ---等级
    if rwChkInt(self._info.MinLev) then
        if not rwChkUserReqMinLevel(self._info.MinLev) then
            self._code = CONST_CODE.Error_ChkMixLevel
            return false
        end
    end
    if rwChkInt(self._info.MaxLev) then
        if not rwChkUserReqMaxLevel(self._info.MaxLev) then
            self._code = CONST_CODE.Error_ChkMaxLevel
            return false
        end
    end

    ---货币相关
    if rwChkInt(self._info.CostMoney) then
        if not rwChkUserMoney(self._info.CostMoney) then
            self._code = CONST_CODE.Error_ChkMoney
            return false
        end
    end
    if rwChkInt(self._info.CostEmoney) then
        if not rwChkUserEmoney(self._info.CostEmoney) then
            self._code = CONST_CODE.Error_ChkEmoney
            return false
        end
    end

    --功能解锁
    if rwChkInt(self._info.CostSysFuncUnlock) then
        if not rwHasUserRecordData_System_Unlock(self._info.CostSysFuncUnlock) then
            self._code = CONST_CODE.Error_ChkSysFuncUnlock
            return false
        end
    end
    return true
end

--时间检查
function rwBaseAward:CheckTime()
    if rwChkTable(self._info.TimeConfig) then
        for k, v in pairs(self._info.TimeConfig) do
            local nTime = rwComGetCurrentTime()
            local tStartTime = rwComGetCurrentTimebyTable()
            local tEndTime = rwComGetCurrentTimebyTable()

            tStartTime.year = v.StartTime.Year or tStartTime.year
            tStartTime.month = v.StartTime.Month or tStartTime.month
            tStartTime.day = v.StartTime.Day or tStartTime.day
            tStartTime.hour = v.StartTime.Hour or tStartTime.hour
            tStartTime.min = v.StartTime.Min or tStartTime.min
            tStartTime.sec = v.StartTime.Sec or tStartTime.sec

            tEndTime.year = v.EndTime.Year or tEndTime.year
            tEndTime.month = v.EndTime.Month or tEndTime.month
            tEndTime.day = v.EndTime.Day or tEndTime.day
            tEndTime.hour = v.EndTime.Hour or tEndTime.hour
            tEndTime.min = v.EndTime.Min or tEndTime.min
            tEndTime.sec = v.EndTime.Sec or tEndTime.sec
            if os.time(tStartTime) <= nTime and os.time(tEndTime) >= nTime then
                return k
            end
        end
        self._code = CONST_CODE.Error_ChkTime
        return false
    end
    return true
end

--时间检查类型2
function rwBaseAward:CheckTimeType2()
    if rwChkTable(self._info.TimeChk) then
        local nTime = rwComGetCurrentTime()
        for k, v in pairs(self._info.TimeChk) do
            local bWdayCheckFlag = true  --周几检测结果
            if v.StartTime.Wday and v.EndTime.Wday then
                local nNow_Wday = os.date("%w")
                if v.StartTime.Wday == tonumber(nNow_Wday) and v.EndTime.Wday == tonumber(nNow_Wday) then
                    bWdayCheckFlag = true   --特殊：判断周几  需每天独立配置
                else
                    bWdayCheckFlag = false
                end
            end
            if bWdayCheckFlag then             
                local tStartTime = rwComGetCurrentTimebyTable()
                local tEndTime = rwComGetCurrentTimebyTable()

                tStartTime.year = v.StartTime.Year or tStartTime.year
                tStartTime.month = v.StartTime.Month or tStartTime.month
                tStartTime.day = v.StartTime.Day or tStartTime.day
                tStartTime.hour = v.StartTime.Hour or tStartTime.hour
                tStartTime.min = v.StartTime.Min or tStartTime.min
                tStartTime.sec = v.StartTime.Sec or tStartTime.sec
                tStartTime.wday = v.StartTime.Wday or tStartTime.wday

                tEndTime.year = v.EndTime.Year or tEndTime.year
                tEndTime.month = v.EndTime.Month or tEndTime.month
                tEndTime.day = v.EndTime.Day or tEndTime.day
                tEndTime.hour = v.EndTime.Hour or tEndTime.hour
                tEndTime.min = v.EndTime.Min or tEndTime.min
                tEndTime.sec = v.EndTime.Sec or tEndTime.sec
                tEndTime.wday = v.EndTime.Wday or tEndTime.wday

                if os.time(tStartTime) <= nTime and os.time(tEndTime) >= nTime then
                    return k
                end
            end
        end
        self._code = CONST_CODE.Error_ChkTime
        return false
    end
    return true
end

---===============================================================================--
---=========						   消耗模块							 =========--
---===============================================================================--
---[Comment]
---扣除消耗品
function rwBaseAward:Consume()
    if not self._info.CostItems then
        return true
    end
    if type(self._info.CostItems) == "table" then
        for i,v in pairs(self._info.CostItems) do
            if not rwItemDel(v.id,v.num * self._num) then
                self._code = CONST_CODE.Error_DelItem
                return false
            end
        end
        return true
    end
    return false
end

---===============================================================================--
---=========					         奖励事件						 =========--
---===============================================================================--
---自动寻路
function rwBaseAward:AutoWay(tEventInfo)
    if rwChkTable(tEventInfo.AutoWay) then
        local tAutoWayInfo = tEventInfo.AutoWay
        local sFindWayData
        if tAutoWayInfo.FindWayTypeId ~= 0 and tAutoWayInfo.FindWayMapId and tAutoWayInfo.FindWayGroupId and tAutoWayInfo.FindWayGenId 	then 
	        sFindWayData = tAutoWayInfo.FindWayTypeId..' '..tAutoWayInfo.FindWayMapId..' '..tAutoWayInfo.FindWayGroupId..' '..tAutoWayInfo.FindWayGenId
	        rwFindWay(sFindWayData)
        elseif tAutoWayInfo.FindWayTypeId == 0 and tAutoWayInfo.FindWayMapId and tAutoWayInfo.FindWayPos then
	        sFindWayData = tAutoWayInfo.FindWayTypeId..' '..tAutoWayInfo.FindWayMapId..' '..tAutoWayInfo.FindWayPos
	        rwFindWay(sFindWayData)
        end
    end
end

---切屏
function rwBaseAward:ChangeMap(tEventInfo)
    if not tEventInfo.ChgMapId then
        return
    end    
    rwEnterMap(tEventInfo.ChgMapId,tEventInfo.ChgMapPosInfo)
end

---播放对白
function rwBaseAward:OpenDialog(tEventInfo)
    if rwChkTable(tEventInfo.OpenDialog) then
        local nId = tEventInfo.OpenDialog.nId or self._Idfordialog
		local nType = tEventInfo.OpenDialog.DialogType or 0

		local nDialogId = nil
		if rwChkTable(tEventInfo.OpenDialog.tDialog) then
			local tDialog = tEventInfo.OpenDialog.tDialog
			local nRandom = math.random(1,#tDialog)
			for j=1,#tDialog do
				if j == nRandom then
					nDialogId = tDialog[nRandom]
				end
			end
		else
			nDialogId = tEventInfo.OpenDialog.DialogId
		end
        local nAwardTarget = tEventInfo.OpenDialog.nAwardTarget
        if nAwardTarget == CONST_AWARD_TARGET.TEAM then
            local tUserList = rwGetCurMapUserList()
            if tUserList then
                for i=1,#tUserList do
                    rwOpenNpcChatDialog(nDialogId,nType,nId,tUserList[i])
                end
            end
        else
            rwOpenNpcChatDialog(nDialogId,nType,nId)
        end
    end
end

--服务端下发对白
function rwBaseAward:OpenServerDialog(tEventInfo)
    if rwChkTable(tEventInfo.OpenServerDialog) then
        local nDialogId = tEventInfo.OpenServerDialog.DialogId or 0
		rwServerDialogText(nDialogId)
    end
end

---服务端奖励
function rwBaseAward:GetServerAward(tEventInfo)
    if rwChkTable(tEventInfo.GetServerAward) then
        local nActionType = tEventInfo.GetServerAward.ActionType
        local nAwardId = tEventInfo.GetServerAward.AwardId
        local nAwardNum = self._num
        local nActionId = tEventInfo.GetServerAward.ActionId
        local nAwardType = tEventInfo.GetServerAward.AwardType or CONST_AWARD_TYPE.AWARD
        local nAwardTarget = tEventInfo.GetServerAward.AwardTarget
		local isAwardByLevel = tEventInfo.GetServerAward.isAwardByLevel
		local isAwardByGoldMonster = tEventInfo.GetServerAward.isAwardByGoldMonster
		local tAwardByLevel = tEventInfo.GetServerAward.LevelAward
		local tAwardEachLevel = tEventInfo.GetServerAward.AwardEachLevel
        local nAwardMode = tEventInfo.GetServerAward.AwardMode or CONST_AWARD_MODE_TYPE.NORMAL_AWARD
        
        if isAwardByLevel and rwChkTable(tAwardEachLevel) then
			local nUserLevel = rwUserGetLevel()
            nAwardId = tAwardEachLevel[nUserLevel]
		end

		if isAwardByLevel and rwChkTable(tAwardByLevel) then
			local nUserLevel = rwUserGetLevel()
			for i,v in pairs(tAwardByLevel) do
				if nUserLevel >= v["MinLevel"] and nUserLevel <= v["MaxLevel"] then
					nAwardId = v["AwardId"] 
					break
				end
			end	
		end

		if isAwardByGoldMonster and isAwardByGoldMonster == true then
				nAwardId = rwtActivity_GoldMonsterInfo["AwardId"]
		end
        if nAwardType == CONST_AWARD_TYPE.AWARD then  --直接添加
            if nAwardMode == CONST_AWARD_MODE_TYPE.NORMAL_AWARD then 
                 rwAddAward(nActionType,nAwardId,nAwardNum,nActionId)
            elseif nAwardMode == CONST_AWARD_MODE_TYPE.LEVELADAPT_AWARD then
                 rwAddLevAdaptAward(nActionType,nAwardId,nAwardNum,nActionId)
            end           
        elseif nAwardType == CONST_AWARD_TYPE.MEMORY_AWARD then  --添加到内存
            if nAwardTarget == CONST_AWARD_TARGET.TEAM then
                local tUserList = rwGetCurMapUserList()
                if tUserList then
                    if nAwardMode == CONST_AWARD_MODE_TYPE.NORMAL_AWARD then 
                         for i=1,#tUserList do
                            rwCopyMapAddAward(nActionType,nAwardId,nActionId,tUserList[i])
                         end
                    elseif nAwardMode == CONST_AWARD_MODE_TYPE.LEVELADAPT_AWARD then
                         for i=1,#tUserList do
                            rwAddCopyMapLevAdaptAward(nActionType,nAwardId,nActionId,tUserList[i])
                         end
                    end                    
                end
            else
                if nAwardMode == CONST_AWARD_MODE_TYPE.NORMAL_AWARD then 
                     rwCopyMapAddAward(nActionType,nAwardId,nActionId,self._userId)
                elseif nAwardMode == CONST_AWARD_MODE_TYPE.LEVELADAPT_AWARD then
                     rwAddCopyMapLevAdaptAward(nActionType,nAwardId,nActionId,self._userId)
                end                 
            end
        end
    end
end

---添加状态
function rwBaseAward:AddState(tEventInfo)
    if rwChkTable(tEventInfo.AddState) then
        local nSpecialState = tEventInfo.AddState.SpecialState
        local nSpecialStateParam = tEventInfo.AddState.SpecialStateParam
        local nStateID = tEventInfo.AddState.StateID
        if nSpecialState then
            if nSpecialState == CONST_USER_SPECIAL_STATE.HIDE then
                rwStatusAddHide(nSpecialStateParam)
            end
        else
            local nTimes = tEventInfo.AddState.Times
            local nTargetType = tEventInfo.AddState.TargetType or 1
            rwStatusAdd(nStateID,nTimes,nTargetType)
        end
    end
end

---删除状态
function rwBaseAward:RemoveState(tEventInfo)
    if rwChkTable(tEventInfo.RemoveState) then
        local nStateID = tEventInfo.RemoveState.StateID
        local nTargetType = tEventInfo.RemoveState.TargetType or 1
        rwStatusRemove(nStateID,nTargetType)
    end
end

--怪物添加buff
function rwBaseAward:MonAddStatus(tEventInfo)
    if rwChkTable(tEventInfo.MonAddStatus) then
		for _,v in pairs(tEventInfo.MonAddStatus) do
			rwMonsterAddStatus(v.MonGenId, v.MonsterId, v.StatusType)
		end
    end
end

--怪物添加特性
function rwBaseAward:MonAddTalent(tEventInfo)
    if rwChkTable(tEventInfo.MonAddTalent) then
		for _,v in pairs(tEventInfo.MonAddTalent) do
			rwAddMonsterTalent(v.MonGenId, v.MonsterId, v.TalentType)
		end
    end
end

--添加墙纸
function rwBaseAward:AddWallPaper(tEventInfo)
    if rwChkTable(tEventInfo.AddWallPaper) then
		for _,v in pairs(tEventInfo.AddWallPaper) do
			rwAddUserWallpaper(v.WallPaperId)
		end
    end
end


---玩家提示
function rwBaseAward:UserMsg(tEventInfo)
    if rwChkTable(tEventInfo.UserMsg) then
        local nMsgType = tEventInfo.UserMsg.MsgType
        local sContent = tEventInfo.UserMsg.Content
        local nShowType = tEventInfo.UserMsg.ShowType
        local nAwardTarget = tEventInfo.UserMsg.AwardTarget

        if nAwardTarget == CONST_AWARD_TARGET.TEAM then
            local tUserList = rwGetCurMapUserList()
            if tUserList then
                for i=1,#tUserList do
                    rwSendSystemMessage(sContent,nMsgType,nShowType,tUserList[i])
                end
            end
        else
            rwSendSystemMessage(sContent,nMsgType,nShowType,self._userId)
        end
    end
end

---玩家瞬移
function rwBaseAward:UserTeleport(tEventInfo)
    if rwChkTable(tEventInfo.UserTeleport) then
		local sPos = tEventInfo.UserTeleport.Pos
		local nRotationY = tEventInfo.UserTeleport.RotationY
		rwUserTeleport(sPos,nRotationY)
	end
end

---改变外形
function rwBaseAward:ChangeLook(tEventInfo)
    if rwChkTable(tEventInfo.ChangeLook) then
        local nTargetType = tEventInfo.ChangeLook.TargetType
        local nTargetId = tEventInfo.ChangeLook.TargetId or rwUserGetId()
        local nLifeTime = tEventInfo.ChangeLook.LifeTime
        local nLookFace = tEventInfo.ChangeLook.LookFace
        local nSpeed = tEventInfo.ChangeLook.Speed
        local nSize = tEventInfo.ChangeLook.Size
        rwSpecialStatus_ChangeLookFace(nTargetType,nTargetId,nLifeTime,nLookFace,nSpeed,nSize)
    end
end

---移除外形
function rwBaseAward:RemoveChangeLook(tEventInfo)
    if rwChkTable(tEventInfo.RemoveChangeLook) then
        local nTargetType = tEventInfo.RemoveChangeLook.TargetType
        local nTargetId = tEventInfo.RemoveChangeLook.TargetId or rwUserGetId()
        local nLookFace = tEventInfo.RemoveChangeLook.LookFace
        rwSpecialStatus_RemoveLookFace(nTargetType,nTargetId,nLookFace)
    end
end

---怪物巡逻逃跑
function rwBaseAward:ChangeMonsterRounds(tEventInfo)
	local tInfo = tEventInfo.ChangeMonsterRounds
    if rwChkTable(tInfo) then
		local nMonster_GenId = tInfo.Monster_GenId or 0
		local nEscapeFlag = tInfo.EscapeFlag or 0
		local nSpeedRate = tInfo.SpeedRate or -1
		local nFightRadiu = tInfo.FightRadiu or -1
		local nTriggerRadiu = tInfo.TriggerRadiu or -1
		local nTriggerAngle = tInfo.TriggerAngle or -1
		local nBacktabRadiu = tInfo.BacktabRadiu or -1
		local nStayMinTime = tInfo.StayMinTime or -1
		local nStayMaxTime = tInfo.StayMaxTime or -1
		local nEscapeSpeedRate = tInfo.EscapeSpeedRate or -1
		local sEscapePos = tInfo.EscapePos or ""
		local tToJsonTable = {}
		tToJsonTable = {["escapeFlag"] = nEscapeFlag,["speedRate"] = nSpeedRate,["fightRadiu"] = nFightRadiu,["triggerRadiu"] = nFightRadiu,["triggerAngle"] = nTriggerAngle,["backtabRadiu"] = nBacktabRadiu,["stayMinTime"] = nStayMinTime,["stayMaxTime"] = nStayMaxTime,["escapeSpeedRate"] = nEscapeSpeedRate,["escapePos"] = sEscapePos}
		local sStr = rwTable2Json(tToJsonTable)
		ChangeMonsterRounds(nMonster_GenId,sStr)        
    end
end
---动态创建
function rwBaseAward:DynCreate(tEventInfo)
    if rwChkTable(tEventInfo.DynCreate) then
        for _,v in pairs(tEventInfo.DynCreate) do
            if not rwHasGenEvent(v) then
                rwAddGenEvent(v)
            end
        end
    end
end

---动态删除
function rwBaseAward:DynDelete(tEventInfo)
    if rwChkTable(tEventInfo.DynDelete) then
	
        if tEventInfo.DynDelete.GenIdBynId then
            if self._Idfordialog ~= 0 and rwHasGenEvent(self._Idfordialog) then
                rwDelGenEvent(self._Idfordialog)
            end
		else
			for _,v in pairs(tEventInfo.DynDelete) do
				if rwHasGenEvent(v) then
					rwDelGenEvent(v)
				end
			end
        end
		
    end
end

--删除物品
function rwBaseAward:DeleteItem(tEventInfo)
    if rwChkTable(tEventInfo.DeleteItem) then
	    local nItemtypeId = tEventInfo.DeleteItem.ItemId
	    local nDelNum = tEventInfo.DeleteItem.DelNum or 1
        if nItemtypeId and nItemtypeId ~= 0 then
            if tEventInfo.DeleteItem.DeleteAll and tEventInfo.DeleteItem.DeleteAll == 1 then
                nDelNum = rwUserGetItemCount(nItemtypeId)
            end
            rwItemDel(nItemtypeId,nDelNum)
        end
		
    end
end

---播放剧情
--function rwBaseAward:PlayStory(tEventInfo)
--
--end

---播放引导
function rwBaseAward:OpenGuide(tEventInfo)

end

---播放过场动画
function rwBaseAward:PlaySceneAnimation(tEventInfo)
    if rwChkTable(tEventInfo.PlaySceneAnimation) then
        local nId = tEventInfo.PlaySceneAnimation.Id
        local nType = tEventInfo.PlaySceneAnimation.Type
        local bIsChgScenePlay = tEventInfo.PlaySceneAnimation.IsChgScenePlay
        local nAwardTarget = tEventInfo.PlaySceneAnimation.AwardTarget
		if nAwardTarget == CONST_AWARD_TARGET.TEAM then
			local tUserList = rwGetCurMapUserList()
			if tUserList then
				for i=1,#tUserList do
					rwStoryTrigger(nId,nType,bIsChgScenePlay,tUserList[i])
				end
			end
		else
			rwStoryTrigger(nId,nType,bIsChgScenePlay,self._userId)
		end        
    end
end

---关闭界面
function rwBaseAward:CloseWnd(tEventInfo)
    if rwChkTable(tEventInfo.CloseWnd) then
        local nWndId = tEventInfo.CloseWnd.WndId
        rwCloseLocalDialog(nWndId)
    end
end

---打开界面
function rwBaseAward:OpenWnd(tEventInfo)
    if rwChkTable(tEventInfo.OpenWnd) then
        local nWndId = tEventInfo.OpenWnd.WndId
		local nData1 = tEventInfo.OpenWnd.Data1 or 0
		local nData2 = tEventInfo.OpenWnd.Data2	or 0
		local nData3 = tEventInfo.OpenWnd.Data3	or 0
        rwOpenLocalWnd(nWndId,nData1,nData2,nData3)
    end
end

---自动战斗
function rwBaseAward:AutoBattle(tEventInfo)
    if rwChkTable(tEventInfo.AutoBattle) then
        local nGenId = tEventInfo.AutoBattle.GenId
		if not nGenId and tEventInfo.AutoBattle.GenIdBynId and self._Idfordialog ~= 0 then
			nGenId = self._Idfordialog
		end
        if not rwHasGenEvent(nGenId) then
            if not tEventInfo.AutoBattle.IsMustExist then
                rwAddGenEvent(nGenId)
                rwAutoBattle(nGenId)
            end
        else
            rwAutoBattle(nGenId)
        end        
    end
end

---添加光效
function rwBaseAward:AddEffect(tEventInfo)
    if rwChkTable(tEventInfo.AddEffect) then
        for _,v in ipairs(tEventInfo.AddEffect) do
            rwSpecialStatus_AddEffect(v.TargetType,v.TargetId, v.EffectId, v.Pos, v.Angle,v.Scale,v.isOneTime)
        end
    end
end

---移除光效
function rwBaseAward:RemoveEffect(tEventInfo)
    if rwChkTable(tEventInfo.RemoveEffect) then
        for _,v in ipairs(tEventInfo.RemoveEffect) do
            rwSpecialStatus_RemoveEffect(v.TargetType,v.TargetId, v.EffectId)
        end
    end
end

---操作机关相关
function rwBaseAward:OpenVavle(tEventInfo)
    if rwChkTable(tEventInfo.OpenVavle) then
        for _,v in ipairs(tEventInfo.OpenVavle) do
            rwUpdateValveData(v["nGenId"],v["nStatus"],v["nData1"],v["nData2"])
        end
    end
end

---设置玩家掩码
function rwBaseAward:SetUserTempData(tEventInfo)
    if rwChkTable(tEventInfo.SetUserTempData) then
        for _,v in ipairs(tEventInfo.SetUserTempData) do
           local nTempDataID = v.TempDataID
           local nDataIndex = v.DataIndex or CONST_TEMP_DATA.Data1
           local bResetValue = v.ResetValue
           local nSetValue = v.SetValue
           local nAddValue = v.AddValue
		   local bSetRecordTime = v.SetRecordTime or false
           if not rwChkInt(nTempDataID) then
               return
           end
           if bResetValue == true then
               rwTempDataReset(nTempDataID,self._userId)
           elseif rwChkInt(nAddValue) then
               if not rwTempDataIsExist(nTempDataID, self._userId) then
                   rwTempDataAdd(nTempDataID, self._userId)
               end
               local nVal = rwTempDataGetValue(nTempDataID,nDataIndex, self._userId)
               nVal = nVal + nAddValue
               rwTempDataSet(nTempDataID,nVal,nDataIndex, self._userId,bSetRecordTime)
           elseif rwChkInt(nSetValue) then
               rwUserTempDataSet(nTempDataID,nSetValue,nDataIndex, self._userId,bSetRecordTime)
           end
        end
    end
end
--设置亲密度任务掩码
function rwBaseAward:ImpressionSet(tEventInfo)
    if rwChkTable(tEventInfo.ImpressionSet) then
        for _,v in ipairs(tEventInfo.ImpressionSet) do
			local nHeroId = v["HeroId"]  --英雄id
			local nTaskIndex = v["TaskIndex"] --任务序号 （1,2,3...)
			local nEndIndex = v["EndIndex"] --结局序号（结局1，结局2，结局3）
			local tSetEndingMask = {1,2,4}	
			rwSetHeroImpressionTaskMask(nHeroId,nTaskIndex,tSetEndingMask[nEndIndex])			
        end
    end
end
-- 初始化表
function rwBaseAward:CopyMapTableSetValue(tEventInfo)
    if rwChkTable(tEventInfo.CopyMapTableSetValue) then
        local nCopyMapId = rwUserGetCurMapId()
        local nDynMapId = rwUserGetDynMapId()
        local nUserId = rwUserGetId()  
 
        for i,v in pairs(tEventInfo.CopyMapTableSetValue) do
            local tSetValue
            if rwChkTable(v["SetValue"]) then
                tSetValue = SysCopyTable(v["SetValue"]) or {}
            else
                tSetValue = v["SetValue"]
            end
            local sValueRes = v["ValueRes"]
            if not rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId] then
                rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId] = {}
            end
            if sValueRes then
                if sValueRes then
                    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][sValueRes] = tSetValue
                end                    
            end          
        end        
    end
end
--副本表修改
function rwBaseAward:CopyMapTableUpdateValue(tEventInfo)
    if rwChkTable(tEventInfo.CopyMapTableUpdateValue) then
        local nCopyMapId = rwUserGetCurMapId()
        local nDynMapId = rwUserGetDynMapId()
        local nUserId = rwUserGetId() 
        for i,v in pairs(tEventInfo.CopyMapTableUpdateValue) do
            local tSetValue
			local tInsertValue = v["InsertValue"]
            if rwChkTable(v["SetValue"]) then
                tSetValue = SysCopyTable(v["SetValue"]) or {}
            else
                tSetValue = v["SetValue"]
            end
            local sValueRes = v["ValueRes"]
            local sInsertValRes = v["InsertValRes"]
            
            rwtCopyMapDynInitInfo[nCopyMapId] = rwtCopyMapDynInitInfo[nCopyMapId] or {}
            rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId] = rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId] or {}
            if sValueRes or sInsertValRes then
                if sValueRes then
                    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][sValueRes] = tSetValue
                end                    
                if tInsertValue and sInsertValRes then
                    table.insert(rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][sInsertValRes],tInsertValue)
                end
            end          
        end        
    end
end
-- 解密事件
function rwBaseAward:SetPuzzleEvent(tEventInfo)
    if rwChkTable(tEventInfo.PuzzleEvent) then
		rwPuzzleRespond(tEventInfo.PuzzleEvent)
    end
end

-- 打开解谜屋
function rwBaseAward:OpenPuzzle(tEventInfo)
    if rwChkTable(tEventInfo.OpenPuzzle) then
		local nPuzzleId = tEventInfo.OpenPuzzle.PuzzleId
		rwPuzzle_Show(nPuzzleId)
    end
end

-- 播放音频
function rwBaseAward:PlaySynAudio(tEventInfo)
    if rwChkTable(tEventInfo.PlaySynAudio) then
        local nAudioId = tEventInfo.PlaySynAudio.AudioId
        local nControlType = tEventInfo.PlaySynAudio.ControlType
        local nFadeInTime = tEventInfo.PlaySynAudio.FadeInTime
        local nFadeOutTime = tEventInfo.PlaySynAudio.FadeOutTime
        rwSynAudioInfo(nAudioId,nControlType,nFadeInTime,nFadeOutTime)
    end
end

--完成任务
function rwBaseAward:CompleteTask(tEventInfo)
    if rwChkTable(tEventInfo.CompleteTask) then
        for i,nTaskId in pairs(tEventInfo.CompleteTask) do
            if rwtTask[nTaskId] and rwtTask[nTaskId]["TaskDetailType"] then
                local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
	            if rwTaskIsExist (nTaskId) then
		            ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):CompleteTask()
	            end
            end
        end
    elseif rwChkInt(tEventInfo.CompleteTask) then
        local nTaskId = tEventInfo.CompleteTask
        if rwtTask[nTaskId] and rwtTask[nTaskId]["TaskDetailType"] then
            local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
	        if rwTaskIsExist (nTaskId) then
		        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):CompleteTask()
	        end
        end
    end
end

--添加自律联盟经验
function rwBaseAward:AddLeagueExp(tEventInfo)
    if rwChkInt(tEventInfo.LeagueExp) then
		rwAddLeagueExp(tEventInfo.LeagueExp)
	end
end

---===============================================================================--
---=========					  奖励事件处理							 =========--
---===============================================================================--
---奖励事件列表处理
function rwBaseAward:AwardEventHandle(tEventInfo)
    self:FixedAwardEventHandle(tEventInfo)
    self:RandomAwardEventHandle(tEventInfo)
    self:RandomAwardEventGroup(tEventInfo)
end

---单个奖励配置处理
function rwBaseAward:GetAward(tEventInfo)
    if not self:ChkEventCond(tEventInfo) then
        if tEventInfo.FailEvents then
            self:GetAward(tEventInfo.FailEvents)
        end
        return
    end
	self:DynDelete(tEventInfo)
	self:DeleteItem(tEventInfo)
    self:SetUserTempData(tEventInfo)
	self:ImpressionSet(tEventInfo)
    self:CloseWnd(tEventInfo)
    self:AutoWay(tEventInfo)
    self:ChangeMap(tEventInfo)
    self:OpenDialog(tEventInfo)
    self:OpenServerDialog(tEventInfo)
    self:GetServerAward(tEventInfo)
    self:AddState(tEventInfo)
    self:RemoveState(tEventInfo)
    self:AddWallPaper(tEventInfo)
    self:UserMsg(tEventInfo)
	self:UserTeleport(tEventInfo)
    self:ChangeLook(tEventInfo)
	self:RemoveChangeLook(tEventInfo)
    self:DynCreate(tEventInfo)
	self:ChangeMonsterRounds(tEventInfo)
    --self:PlayStory(tEventInfo)
    self:OpenGuide(tEventInfo)
    self:PlaySceneAnimation(tEventInfo)
    self:OpenWnd(tEventInfo)
    self:AutoBattle(tEventInfo)
    self:MonAddStatus(tEventInfo)
    self:MonAddTalent(tEventInfo)
    self:AddEffect(tEventInfo)
    self:RemoveEffect(tEventInfo)
    self:OpenVavle(tEventInfo)
    self:CopyMapTableSetValue(tEventInfo)
	self:CopyMapTableUpdateValue(tEventInfo)
	self:SetPuzzleEvent(tEventInfo)
    self:OpenPuzzle(tEventInfo)
    self:PlaySynAudio(tEventInfo)
    self:CompleteTask(tEventInfo)
    self:AddLeagueExp(tEventInfo)
    self:LoopActivityRecord(tEventInfo)
    self:AddScriptLog(tEventInfo)
end

---固定奖励事件
function rwBaseAward:FixedAwardEventHandle()
    if rwChkTable(self._info.Events) then
        for _,tEventInfo in ipairs(self._info.Events) do
            self:GetAward(tEventInfo)
        end
    end
end
--随机组合函数
function rwBaseAward:RandomCreateInComBination(tRandomCreate)
	local nRandomNum = tRandomCreate["RandomNum"] or 0
	local tGenId = tRandomCreate["tGenId"] or {}
	local tCopyGenId = SysCopyTable(tGenId)
	local tFixGen = tRandomCreate["FixGen"]
	local nTempDataID = tRandomCreate["TempDataID"]
	local nDataIndex = tRandomCreate["DataIndex"] or CONST_TEMP_DATA.Data1
	local nVal = tRandomCreate["SetValue"]
	if nTempDataID and nVal then  --判断随机到该事件后是否需要设掩码
		if not rwTempDataIsExist(nTempDataID, self._userId) then
			rwTempDataAdd(nTempDataID, self._userId)
		end
		rwTempDataSet(nTempDataID,nVal,nDataIndex, self._userId)
	end	
	if rwChkTable(tFixGen) then   --创建随机到该事件后必定生成的事件
		for i,v in pairs(tFixGen) do 
			if not rwHasGenEvent(v) then
				rwAddGenEvent(v)
			end
		end
	elseif rwChkInt(tFixGen) then
		if not rwHasGenEvent(tFixGen) then
			rwAddGenEvent(tFixGen)
		end
	end
	for i=1,nRandomNum do	--第一层随机 从表中抽取创建事件并将已创建事件移除该复制表
		local nRandomCombination = math.random(1,#tCopyGenId)
		for j=1,#tCopyGenId do
			if j == nRandomCombination and (not rwHasGenEvent(tCopyGenId[nRandomCombination]["GenId"])) then
                local bCreate = true
                if tRandomCreate["tGenId"][j]["MaxRate"] and tRandomCreate["tGenId"][j]["MinRate"] then
                    local nExtraRandom = math.random (1,10000)
                    if nExtraRandom > tRandomCreate["tGenId"][j]["MaxRate"] or nExtraRandom < tRandomCreate["tGenId"][j]["MinRate"] then
                        bCreate = false
                    end
                end
                if bCreate then
                    rwAddGenEvent(tCopyGenId[nRandomCombination]["GenId"])
                end				
    	    	table.remove(tCopyGenId,nRandomCombination)
			end
		end
	end
	if tRandomCreate["RemainRandomNum"] and tRandomCreate["RemainRandomNum"] > 0 then    --对复制表剩余元素进行第二次组合随机
		local nRemainRandomNum = math.min(tRandomCreate["RemainRandomNum"],#tCopyGenId)  --需要随机抽出的个数 取表剩余元素个数与配置个数的最小值
		local tOtherGenId = tRandomCreate["tOtherGenId"] or {}
		local tCopyOtherGenId = SysCopyTable(tOtherGenId)
		for i=1,nRemainRandomNum do 
			local nRandomCombination = math.random(1,#tCopyOtherGenId)
			local nRandomCombination2 = math.random(1,#tCopyGenId)
			for j=1,#tCopyOtherGenId do													 --生成新配置表事件，并使用原复制表中的POS/ROATTIONY值
				if j == nRandomCombination and (not rwHasGenEvent(tCopyOtherGenId[nRandomCombination]["GenId"])) then
					local bCreate = true
                    if tRandomCreate["tOtherGenId"][j]["MaxRate"] and tRandomCreate["tOtherGenId"][j]["MinRate"] then
                        local nExtraRandom = math.random (1,10000)
                        if nExtraRandom > tCopyOtherGenId[nRandomCombination]["MaxRate"] or nExtraRandom < tCopyOtherGenId[nRandomCombination]["MinRate"] then
                            bCreate = false
                        end
                    end
                    if bCreate then
                        rwAddGenEvent(tCopyOtherGenId[nRandomCombination]["GenId"],tCopyGenId[nRandomCombination2]["Pos"] or "",0,tCopyGenId[nRandomCombination2]["RotationY"] or 0)
                        table.remove(tCopyGenId,nRandomCombination2) 
                        if tCopyOtherGenId[nRandomCombination]["SetValue"] then
                             local nTempDataID = tCopyOtherGenId[nRandomCombination]["TempDataID"]
                             local nDataIndex = tCopyOtherGenId[nRandomCombination]["DataIndex"] or CONST_TEMP_DATA.Data1
                             local nVal = tCopyOtherGenId[nRandomCombination]["SetValue"]
                             rwTempDataSet(nTempDataID,nVal,nDataIndex, self._userId)
                        end 
                       
	
	
                    end                
                    table.remove(tCopyOtherGenId,nRandomCombination)
				end
			end
		end
	end
end

--固定随机函数
function rwBaseAward:RandomCreateInFixed(tEventInfo,nParam,nParamType)
	local nGenid = tEventInfo["GenId"]
	local sPos = tEventInfo["Pos"] or ""
	local nGroupId = tEventInfo["GroupId"] or 0
	local bCreateFail = tEventInfo["CreateFail"] or false
	local nTempDataID = tEventInfo["TempDataID"]
	local nDataIndex = tEventInfo["DataIndex"] or CONST_TEMP_DATA.Data1
	local nVal = tEventInfo["SetValue"]
	if nTempDataID and nVal then  --需要设掩码则设掩码
		if not rwTempDataIsExist(nTempDataID, self._userId) then
			rwTempDataAdd(nTempDataID, self._userId)
		end
		rwTempDataSet(nTempDataID,nVal,nDataIndex, self._userId)
	end	    
	if nParamType == CONST_RANDOM_CONDITION_TYPE.TEMP then	--掩码创建事件判断
		local nTempVal = tEventInfo["Value"]
		if nTempVal == nParam then			
			if not rwHasGenEvent(nGenid) then
				rwAddGenEvent(nGenid,sPos,nGroupId)
			end
			bCreateFail = false
		end
	elseif nParamType == CONST_RANDOM_CONDITION_TYPE.RATE then	--随机数范围创建事件判断
		local nMin = tEventInfo["MinRate"] or 0
		local nMax = tEventInfo["MaxRate"] or 10000
		if nParam >= nMin and nParam <= nMax then
			if rwChkTable (nGenid) then
				for i,v in pairs (nGenid) do
					if not rwHasGenEvent(v) then
						rwAddGenEvent(v)
					end
				end
			elseif rwChkInt (nGenid) then
				if not rwHasGenEvent(nGenid) then
					rwAddGenEvent(nGenid,sPos,nGroupId)
				end
			end			
			bCreateFail = false
		end
	end
	if bCreateFail then			--创建失败时是否创建失败事件
		local nFailPos = tEventInfo["FailPos"] or ""
		local nFailGroupId = tEventInfo["FailGroupId"] or 0
		local nFailRotationY = tEventInfo["FailRotationY"] or 0
		if not rwHasGenEvent(nGenid) then
			rwAddGenEvent(nGenid,nFailPos,nFailGroupId,nFailRotationY)
		end  
	end
end
--随机类型判断
function rwBaseAward:RandomTypeJudge(tEventInfo,nParam,nParamType)
	local nParamTypeTemp = nParamType or CONST_RANDOM_CONDITION_TYPE.RATE
	local nRandomType = tEventInfo["RandomType"] or CONST_RANDOM_EVENT_TYPE.FIXED            
	if nRandomType == CONST_RANDOM_EVENT_TYPE.FIXED then				--固定随机事件
		local nMin = tEventInfo["MinRate"] or 0
		local nMax = tEventInfo["MaxRate"] or 10000
		if nParam >= nMin and nParam <= nMax then
			self:RandomCreateInFixed(tEventInfo,nParam,nParamTypeTemp)
		end
	elseif nRandomType == CONST_RANDOM_EVENT_TYPE.COMBINATION then		--组合随机事件
		if nParamTypeTemp == CONST_RANDOM_CONDITION_TYPE.RATE then
			local nMin = tEventInfo["MinRate"] or 0
			local nMax = tEventInfo["MaxRate"] or 10000
			if nParam >= nMin and nParam <= nMax then
				self:RandomCreateInComBination(tEventInfo)
			end
		elseif nParamTypeTemp == CONST_RANDOM_CONDITION_TYPE.TEMP then
			local nTempVal = tEventInfo["Value"]
			if nTempVal == nParam then
				self:RandomCreateInComBination(tEventInfo)
			end
		end
	end                   
end
function rwBaseAward:RandomCreare(tEventInfo) 
    if rwChkTable(tEventInfo.RandomCreare) then        
		local nRandom = math.random(1,10000)
        for index,v in pairs(tEventInfo.RandomCreare) do
			self:RandomTypeJudge(v,nRandom)  --进入事件类型的判断
        end
    end
end


--随机创建流程事件(可加
function rwBaseAward:RandomBuildEvent(tEventInfo)  
	if rwChkTable(tEventInfo.RandomBuildEvent) then 
		local nRandom = math.random(1,10000)
        for _,v in pairs(tEventInfo.RandomBuildEvent) do
			local nMin = v["MinRate"] or 0
			local nMax = v["MaxRate"] or 10000
			if nRandom >= nMin and nRandom <= nMax then
				if v["Type"] == CONST_RANDOM_BUILDEVENT_TYPE.GETAWARD then    --获得奖励
					local nActionType = v["ActionType"]
					local nAwardId = v["AwardId"]
					local nAwardNum = v["Num"] or 1
					local nActionId = v["ActionId"]
					local nAwardType = v["AwardType"] or CONST_AWARD_TYPE.AWARD
					local nAwardTarget = v["AwardTarget"]
					if nAwardType == CONST_AWARD_TYPE.AWARD then  --直接添加
						rwAddAward(nActionType,nAwardId,nAwardNum,nActionId)
					elseif nAwardType == CONST_AWARD_TYPE.MEMORY_AWARD then  --添加到内存
						if nAwardTarget == CONST_AWARD_TARGET.TEAM then
							local tUserList = rwGetCurMapUserList()
							if tUserList then
								for i=1,#tUserList do
									rwCopyMapAddAward(nActionType,nAwardId,nActionId,tUserList[i])
								end
							end
						else
							rwCopyMapAddAward(nActionType,nAwardId,nActionId,self._userId)
						end
					end
				elseif v["Type"] == CONST_RANDOM_BUILDEVENT_TYPE.TREASURECAVE then   --进入藏宝副本
					local nTreasureCaveId = v["TreasureCaveId"] 
					rwEnterMap(nTreasureCaveId)
				end
			end
		end
	end	
end
--根据掩码创建随机事件
function rwBaseAward:RandomCreateByTemp(tEventInfo)   
	if rwChkTable(tEventInfo.RandomCreateByTemp) then 
		for index,v in pairs(tEventInfo.RandomCreateByTemp) do
			local nTempDataID = v["TempDataID"] or 0
			local nDataIndex = v["DataIndex"] or CONST_TEMP_DATA.Data1
			local nGetVal = rwTempDataGetValue(nTempDataID,nDataIndex, self._userId) 
			self:RandomTypeJudge(v,nGetVal,CONST_RANDOM_CONDITION_TYPE.TEMP)
		end
	end
end
--概率事件
function rwBaseAward:RandomToNormalEvents(tEventInfo)
	if rwChkTable(tEventInfo.RandomToNormalEvents) then 
		local nRandom = math.random(1,10000)
        for _,v in pairs(tEventInfo.RandomToNormalEvents) do
			local nMin = v["MinRate"] or 0
			local nMax = v["MaxRate"] or 10000
			if nRandom <= nMax and nRandom >= nMin  then
				if rwChkTable(v["Events"]) then
					self:GetAward(v["Events"])
				end				
			end
		end		
	end
end
--片区宝箱随机创建逻辑
function rwBaseAward:RandomWithFloatRule(tEventInfo) 
	if rwChkTable(tEventInfo.RandomWithFloatRule) then 
		for i,v in pairs(tEventInfo.RandomWithFloatRule) do
			local nTotalNum = v["TotalNum"] or 0
			local tPosGroupData = {}
			local tRotGroupData = {}
			if rwChkTable (v["PosGroupData"]) then
				tPosGroupData = SysCopyTable(v["PosGroupData"]) 
			end
			if rwChkTable (v["RotGroupData"]) then
				tRotGroupData = SysCopyTable(v["RotGroupData"])
			end
			local nFlagTemp = v["FlagTemp"] or 0
			local nFlagData = v["FlagData"] or CONST_TEMP_DATA.Data1
			local nCurNum = 0
			local isSetFlag = false
			if rwChkTable(v["GenGroupData"]) then
				local nTypeNum = #v["GenGroupData"]
				for j,k in pairs(v["GenGroupData"]) do
					local nMinNum = k["MinNum"]
					local nMaxNum = k["MaxNum"]
					local nRate = k["Rate"] -- 万分概率
					local nTempDataID = k["TempDataID"] or 0
					local nDataIndex = k["DataIndex"] or CONST_TEMP_DATA.Data1
					local tGen
					local nPosRandom = nil
					if rwChkTable(k["GenId"]) then
					    tGen= SysCopyTable(k["GenId"])
					else
--						rwPrintErrorLog("RandomCreate_WithFloatRule:GenId配置非table")
						return
					end
					--最小值 小等于 总数-当前已创建数量时 创建该次数gen，否则创建 差值的非负数次数
					local nMinCreate = nMinNum < (nTotalNum - nCurNum) and nMinNum or (nTotalNum - nCurNum)>0 and (nTotalNum - nCurNum) or 0 
					for times = 1,nMinCreate do
						if tGen ~= nil and #tGen >0 then
							local nRandom = math.random(1,#tGen)
							nPosRandom = #tPosGroupData > 0 and math.random(1,#tPosGroupData) or 0
							if not rwHasGenEvent (tGen[nRandom]) then
								nCurNum = nCurNum + 1
								if nPosRandom > 0 then
									rwAddGenEvent(tGen[nRandom],tPosGroupData[nPosRandom],0,tRotGroupData[nPosRandom])
									table.remove(tPosGroupData,nPosRandom)
									table.remove(tRotGroupData,nPosRandom)
								else
									rwAddGenEvent(tGen[nRandom])
								end								
								table.remove(tGen,nRandom)
							end
						end	
					end	
					local nMaxCreate	
					local nCount = 0
					--如果获取到掩码大于0 就直接创建。不然判断正常次数 且判断是否随机
					if nTempDataID then  --需要设掩码则设掩码
						if not rwTempDataIsExist(nTempDataID, self._userId) then
							rwTempDataAdd(nTempDataID, self._userId)
						end
					end	 
					local nFlag = rwTempDataGetValue(nFlagTemp,nFlagData)
					if nFlag > 0 then
						local nVal = rwTempDataGetValue(nTempDataID,nDataIndex)
						nMaxCreate = nVal
					else
						nMaxCreate = (nMaxNum - nMinNum ) <= (nTotalNum - nCurNum) and (nMaxNum - nMinNum ) or (nTotalNum - nCurNum)>0 and (nTotalNum - nCurNum) or 0
					end					
					for times = 1,nMaxCreate do 
						if tGen ~= nil and #tGen >0 then
							local nJudgeRandom = math.random(1,10000)
							nPosRandom = #tPosGroupData > 0 and math.random(1,#tPosGroupData) or 0
							local isCreate = false
							if nFlag > 0 then
								isCreate = true
							elseif nJudgeRandom < nRate then
								isCreate = true
							end			
							if isCreate then
								if nCount < nTotalNum then
									nCount = nCount + 1
								end								
								local nRandom = math.random(1,#tGen)
--								rwPrintErrorLog("nCount"..nCount..","..tGen[nRandom])
								if not rwHasGenEvent (tGen[nRandom]) then
									nCurNum = nCurNum + 1
									if nPosRandom > 0 then
										rwAddGenEvent(tGen[nRandom],tPosGroupData[nPosRandom],0,tRotGroupData[nPosRandom])
										table.remove(tPosGroupData,nPosRandom)
										table.remove(tRotGroupData,nPosRandom)
									else
										rwAddGenEvent(tGen[nRandom])
									end								
									table.remove(tGen,nRandom)
								end
							end					
						end	
					end
					rwTempDataSet(nTempDataID,nCount,nDataIndex)
					isSetFlag = true							
				end
			end
			if isSetFlag then
				rwTempDataSet(nFlagTemp,1,nFlagData)	
			end
		end		
	end
end


function rwBaseAward:GetRandomAward(tEventInfo) 
	if not self:ChkEventCond(tEventInfo) then
        if tEventInfo.FailEvents then
            self:GetRandomAward(tEventInfo.FailEvents)
        end
        return
    end
--	self:SetUserTempData(tEventInfo)
	self:RandomToNormalEvents(tEventInfo)
    self:RandomCreare(tEventInfo)
	self:RandomBuildEvent(tEventInfo)
	self:RandomCreateByTemp(tEventInfo)
	self:RandomWithFloatRule(tEventInfo)
end
---随机奖励事件
function rwBaseAward:RandomAwardEventHandle()
    if rwChkTable(self._info.RandomEvents) then
        for _,tEventInfo in pairs(self._info.RandomEvents) do
            self:GetRandomAward(tEventInfo)
        end
    end
end

--分组随机奖励事件
function rwBaseAward:RandomAwardEventGroup()
    if rwChkTable(self._info.RandomGroupEvents) then
        local nRandom = math.random(1,10000)
        for index,v in pairs(self._info.RandomGroupEvents) do
--            rwPrintErrorLog("index:"..index)
	        local nMin = v["MinRate"] or 0
	        local nMax = v["MaxRate"] or 10000
            if nRandom <= nMax and nRandom >= nMin  then
--                if not self:ChkEventCond(v) then
--                    if v.FailEventsGroup then
--                        self:RandomAwardEventGroup(v.FailEventsGroup)
--                    end
--                    return
--                end	
                self:GetRandomAward(v)
            end
        end
    end
end
--设置循环活动监听
function rwBaseAward:LoopActivityRecord(tEventInfo)
    if rwChkTable(tEventInfo.LoopActivityRecord) then
        for _,v in ipairs(tEventInfo.LoopActivityRecord) do
			local nType = v["Type"] --CONST_LOOP_ACTIVITY_EVENT_TYPE
			local nNum = v["Num"] or 1  --次数
			rwRecordLoopActivityEvent(nType,nNum)	
        end
    end
end
--埋点 格式：[活动名称]玩家id[玩家战斗力][玩家等级],行为类型,行为结果
function rwBaseAward:AddScriptLog(tEventInfo)
    local tAddScriptLog = tEventInfo.AddScriptLog
    if rwChkTable(tAddScriptLog) then
        local sScriptName = tAddScriptLog["ScriptName"] or ""
        local nActionType = tAddScriptLog["ScriptType"]
        local nActionResult = tAddScriptLog["ScriptResult"]
        local nUserId = rwUserGetId()
        local nUserFight = rwGetHeroFight(0)
        local nUserLevel = rwUserGetLevel()
        local sLogUserMsg = "["..sScriptName.."]"..nUserId.."["..nUserFight.."]["..nUserLevel.."]"
        if nActionType == nil then
            return false
        end
        local sDataStr = sLogUserMsg..","..nActionType
        if nActionResult ~= nil then
            sDataStr =  sDataStr..","..nActionResult
        end
        rwAddScriptLog(sDataStr)
    end
end