--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--解谜系统
--YJX


--endregion


--[Comment]
--解谜场景物件显示
function rwPuzzle_Show(nPuzzleId)
    rwPuzzleOpen(nPuzzleId)   --先打开界面  然后隐藏一次性物体
    local tInfo = {}
    local nUserId = rwUserGetId()
	if rwComElementIsExit(rwtPuzzleInitInfo,nPuzzleId) then
		if rwChkTable(tPuzzleEvent[nPuzzleId]["PuzzleInit"]) then
			rwBaseAward:create(tPuzzleEvent[nPuzzleId]["PuzzleInit"]):Process()
		end
	end	
    tUserPuzzleInfo[nUserId] = tUserPuzzleInfo[nUserId] or {}       
    --rwPrintErrorLog("进入解谜屋，解谜屋id："..nPuzzleId)
    tUserPuzzleInfo[nUserId][nPuzzleId] = {}             --初始化玩家当前解谜屋信息
    for i,v in pairs(tPuzzleEvent[nPuzzleId]) do
        if rwChkTable(v) then
            if v["ClearTempDayJudgment"] then
                if rwTempDataDayJudgment(v["ClearTempDayJudgment"]) then
                    rwTempDataReset(v["ClearTempDayJudgment"])
                end
            end
            if v["OnceFlag"] then
                if rwTempDataGetValue(v["OnceFlag"],v["OnceIndex"]) == 1 then
                    if v["RemoveSelf"] then
                        table.insert(tInfo,v["RemoveSelf"])
                    end
					if v["RemoveEffect"] then
                        table.insert(tInfo,v["RemoveEffect"])
                    end
                    if v["RemoveOutLineEffect"] then
                        table.insert(tInfo,v["RemoveOutLineEffect"])
                    end
                end
            end

            if v["OnceFlagNoAward"] then
                if rwTempDataGetValue(v["OnceFlagNoAward"],v["OnceFlagNoAwardIndex"]) == 1 then
                    if v["InTask"] and rwTaskChkUserInTask(v["InTask"]) then

                    else
                        if v["RemoveSelf"] then
                            table.insert(tInfo,v["RemoveSelf"])
                        end
                        if v["RemoveEffect"] then
                            table.insert(tInfo,v["RemoveEffect"])
                        end
                        if v["RemoveOutLineEffect"] then
                            table.insert(tInfo,v["RemoveOutLineEffect"])
						end
                    end
                end
            end

            if v["InTask"] and not v["OnceFlagNoAward"] then
                local bisInTask=false
                if rwChkTable(v["InTask"]) then
                    for _,task in ipairs(v["InTask"]) do
                        if rwTaskChkUserInTask(task) then
                            bisInTask = true
                        end
                    end
                end
                if rwChkInt(v["InTask"]) and rwTaskChkUserInTask(v["InTask"]) then
                    bisInTask = true
                end
                if not bisInTask then
                    if v["RemoveSelf"] then
                        table.insert(tInfo,v["RemoveSelf"])
                    end
                    if v["RemoveOutLineEffect"] then
                        table.insert(tInfo,v["RemoveOutLineEffect"])
                    end
                end
            end
			if v["TotalRecord"] then
				if not rwTempDataIsExist (v["TotalRecord"]) then
					rwTempDataAdd(v["TotalRecord"])
				else
					if not v["NotResetRecord"] then
						rwTempDataReset(v["TotalRecord"])
					end
				end
			end			
            if v["InitClickState"] and v["InitClickState"] == 0 then
                tUserPuzzleInfo[nUserId][nPuzzleId]["ClickState"] = tUserPuzzleInfo[nUserId][nPuzzleId]["ClickState"] or {}
                tUserPuzzleInfo[nUserId][nPuzzleId]["ClickState"][i] = 0
            end
        end

    end
    if #tInfo >= 1 then
        rwPuzzleRespond(tInfo)
    end 
--    if tPuzzleEvent[nPuzzleId]["OpenDialog"] then
--        rwOpenNpcChatDialog(tPuzzleEvent[nPuzzleId]["OpenDialog"],CONST_NPCCHAT_TYPE.PUZZLE,nPuzzleId)
--    end
end

--[Comment]
--解谜场景物件点击
function rwPuzzle_ObjClick(nPuzzleId,nEventId)
    --rwPrintWarnLog("rwPuzzle_ObjClick" ..nPuzzleId.."  ".. nEventId)
    local nUserId = rwUserGetId()
    --rwPrintErrorLog("点击物体，解谜屋id："..nPuzzleId.."物件id："..nEventId)
	--rwPrintWarnLog("sssss..00")
    if not tPuzzleEvent[nPuzzleId] or not tPuzzleEvent[nPuzzleId][nEventId] then
        return
    end
	--rwPrintWarnLog("sssss..01")
    if tUserPuzzleInfo[nUserId][nPuzzleId]["ClickState"] and tUserPuzzleInfo[nUserId][nPuzzleId]["ClickState"][nEventId] then
        if tUserPuzzleInfo[nUserId][nPuzzleId]["ClickState"][nEventId] == 0 then
            return
        end
    end
	--rwPrintWarnLog("sssss..1")
    local tInfo = {}
	local nDialog 
	local nDialogType = CONST_NPCCHAT_TYPE.PUZZLE
	local nId = 0
    local ReqObj = tPuzzleEvent[nPuzzleId][nEventId]["ReqObj"]
    if rwChkTable(ReqObj) then
        for i,v in pairs(ReqObj) do
            if tPuzzleEvent[nPuzzleId][v] and tPuzzleEvent[nPuzzleId][v]["AwardFlag"] then
                local nFlag = rwTempDataGetValue(tPuzzleEvent[nPuzzleId][v]["AwardFlag"])
                if nFlag ~= 1 then
                    if tPuzzleEvent[nPuzzleId][nEventId]["ReqObjDialog"] then
                        rwOpenNpcChatDialog(tPuzzleEvent[nPuzzleId][nEventId]["ReqObjDialog"],CONST_NPCCHAT_TYPE.PUZZLE,nPuzzleId)
                    elseif tPuzzleEvent[nPuzzleId][nEventId]["ReqObjMsg"] then
                        table.insert(tInfo,tPuzzleEvent[nPuzzleId][nEventId]["ReqObjMsg"])
                        rwPuzzleRespond(tInfo)
                    end
                    return
                end
            else
                return
            end
        end    
    elseif rwChkInt(ReqObj) then
        if tPuzzleEvent[nPuzzleId][ReqObj] and tPuzzleEvent[nPuzzleId][ReqObj]["AwardFlag"] then
            if rwTempDataGetValue(tPuzzleEvent[nPuzzleId][ReqObj]["AwardFlag"]) ~= 1 then
                if tPuzzleEvent[nPuzzleId][nEventId]["ReqObjDialog"] then
                    rwOpenNpcChatDialog(tPuzzleEvent[nPuzzleId][nEventId]["ReqObjDialog"],CONST_NPCCHAT_TYPE.PUZZLE,nPuzzleId)
                elseif tPuzzleEvent[nPuzzleId][nEventId]["ReqObjMsg"] then
                    table.insert(tInfo,tPuzzleEvent[nPuzzleId][nEventId]["ReqObjMsg"])
                    rwPuzzleRespond(tInfo)
                end
                return
            end
        else
            return
        end
    end
    --点击判断掩码触发解谜事件
	if rwChkTable(tPuzzleEvent[nPuzzleId][nEventId]["TempCordChk"]) then
--		local nChkCount = #tPuzzleEvent[nPuzzleId][nEventId]["TempCordChk"]
		for i,v in pairs(tPuzzleEvent[nPuzzleId][nEventId]["TempCordChk"]) do  --需要按优先级来写掩码
			local nChkType = v["ChkType"] or CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP
			local bChkResult = true
			if nChkType == CONST_PUZZLE_CHKTEMP_TYPE.CHKSUNDRYTEMP then   --多前置掩码判断
				if rwChkTable (v["SundryTempChk"]) then					
					for j,k in pairs(v["SundryTempChk"]) do
						local nRecord = k["TempDataID"] or 0    --遍历判断SundryTempChk表的掩码
						local nDataIndex = k["DataIndex"] or CONST_TEMP_DATA.Data1
						local nValue = k["Value"] or 0
						if not rwTempDataIsExist(nRecord, nUserId) then
							rwTempDataAdd(nRecord, nUserId)
						end
						if  rwTempDataGetValue(nRecord,nDataIndex) ~= nValue then  --掩码不符直接退出循环
							bChkResult = false
							break
						end
					end
				end
			elseif nChkType == CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP then  --单掩码判断
				local nRecord = v["TempDataID"] or 0 
				local nDataIndex = v["DataIndex"] or CONST_TEMP_DATA.Data1
				local nValue = v["Value"] or 0
				if not rwTempDataIsExist(nRecord, nUserId) then
					rwTempDataAdd(nRecord, nUserId)
				end
				if  rwTempDataGetValue(nRecord,nDataIndex) ~= nValue then  --掩码不符直接退出循环
					bChkResult = false
				end
			end
			if bChkResult then  --掩码正确则执行功能 执行完退出掩码遍历的总遍历
				if rwChkTable(v["SetUserTempData"]) then   --新设掩码
					for j,k in ipairs(v["SetUserTempData"]) do
						local nTempDataID = k.TempDataID or 0
						local nDataIndex = k.DataIndex or CONST_TEMP_DATA.Data1
						local bResetValue = k.ResetValue
						local nSetValue = k.SetValue
						local nAddValue = k.AddValue
						if bResetValue == true then
							rwTempDataReset(nTempDataID,nUserId)
						elseif rwChkInt(nAddValue) then
							if not rwTempDataIsExist(nTempDataID, nUserId) then
								rwTempDataAdd(nTempDataID, nUserId)
							end
							local nVal = rwTempDataGetValue(nTempDataID,nDataIndex, nUserId)
								nVal = nVal + nAddValue
								rwTempDataSet(nTempDataID,nVal,nDataIndex, nUserId)
						elseif rwChkInt(nSetValue) then
							rwUserTempDataSet(nTempDataID,nSetValue,nDataIndex, nUserId)
						end
					end
				end
				if rwChkInt(v["DialogId"]) then
					nDialog = v["DialogId"]
					nDialogType = v["DialogType"] or CONST_NPCCHAT_TYPE.PUZZLE
					nId = v["nId"] or 0
				elseif rwChkTable(v["DialogId"]) then
					local nRandom = math.random(1,#v["DialogId"])
					nDialog = v["DialogId"][nRandom]
					if v["DialogType"] then
						nDialogType = v["DialogType"][nRandom] or CONST_NPCCHAT_TYPE.PUZZLE 
					else
						nDialogType = CONST_NPCCHAT_TYPE.PUZZLE 
					end
					if v["nId"] then
						nId = v["nId"][nRandom] or 0
					else
						nId = 0
					end
				end
				if rwChkTable(v["PuzzleEvent"]) then
					for j,k in pairs(v["PuzzleEvent"]) do
						table.insert(tInfo,k)
					end
				elseif rwChkInt(v["PuzzleEvent"]) then
					table.insert(tInfo,v["PuzzleEvent"])
				elseif rwChkFunc(v["Func"]) then
					v["Func"]()
				end		
				break						
			end
		end
	end 

    --点击删除解谜事件
    if tPuzzleEvent[nPuzzleId][nEventId]["RemoveSelf"] then
        table.insert(tInfo,tPuzzleEvent[nPuzzleId][nEventId]["RemoveSelf"])
    end
    if tPuzzleEvent[nPuzzleId][nEventId]["RemoveOutLineEffect"] then
        table.insert(tInfo,tPuzzleEvent[nPuzzleId][nEventId]["RemoveOutLineEffect"])
    end
    if tPuzzleEvent[nPuzzleId][nEventId]["RemoveEffect"] then
        table.insert(tInfo,tPuzzleEvent[nPuzzleId][nEventId]["RemoveEffect"])
    end    

    --解谜事件添加     
    if tPuzzleEvent[nPuzzleId][nEventId]["AddPicture"] then
        table.insert(tInfo,tPuzzleEvent[nPuzzleId][nEventId]["AddPicture"])
    end
    if tPuzzleEvent[nPuzzleId][nEventId]["AddEffect"] then
        table.insert(tInfo,tPuzzleEvent[nPuzzleId][nEventId]["AddEffect"])
    end
    
    if tPuzzleEvent[nPuzzleId][nEventId]["ExitPuzzle"] then
        table.insert(tInfo,tPuzzleEvent[nPuzzleId][nEventId]["ExitPuzzle"])
    end
    --rwPrintWarnLog("sssss..2")

    if tPuzzleEvent[nPuzzleId][nEventId]["OnceFlagNoAward"] then
        rwUserTempDataSet(tPuzzleEvent[nPuzzleId][nEventId]["OnceFlagNoAward"],1)
    end

    if tPuzzleEvent[nPuzzleId][nEventId]["AwardFlag"] then
        rwUserTempDataSet(tPuzzleEvent[nPuzzleId][nEventId]["AwardFlag"],1)

        if tPuzzleEvent[nPuzzleId][nEventId]["OnceFlag"] then
            rwUserTempDataSet(tPuzzleEvent[nPuzzleId][nEventId]["OnceFlag"],1)
        end

        local bIsAward = true
        
        if tPuzzleEvent[nPuzzleId][nEventId]["AwardTempdata"] then
            local AwardTempData = tPuzzleEvent[nPuzzleId][nEventId]["AwardTempdata"]
            local AwardTempIndex = tPuzzleEvent[nPuzzleId][nEventId]["AwardTempIndex"] or CONST_TEMP_DATA.Data1
            if rwTempDataIsExist(AwardTempData,nUserId) and rwTempDataGetValue(AwardTempData,AwardTempIndex,nUserId) == 1 then
                bIsAward = false
                if tPuzzleEvent[nPuzzleId][nEventId]["AwardFailMsg"] then
                    table.insert(tInfo,tPuzzleEvent[nPuzzleId][nEventId]["AwardFailMsg"])
                end
            end
        end
        if bIsAward then
            if tPuzzleEvent[nPuzzleId][nEventId]["AwardId"] then
                local tAwardInfo = {}
		    	tAwardInfo["Events"] = {}
		    	tAwardInfo["Events"][1] = {}
		    	tAwardInfo["Events"][1]["GetServerAward"] = {}
                tAwardInfo["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
                tAwardInfo["Events"][1]["GetServerAward"]["AwardId"] = tPuzzleEvent[nPuzzleId][nEventId]["AwardId"]
		    	tAwardInfo["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
                rwBaseAward:create(tAwardInfo):Process() 
            end
            if tPuzzleEvent[nPuzzleId][nEventId]["AwardMsg"] then
                table.insert(tInfo,tPuzzleEvent[nPuzzleId][nEventId]["AwardMsg"])
            end
            if tPuzzleEvent[nPuzzleId][nEventId]["AwardTempdata"] then
                rwUserTempDataSet(tPuzzleEvent[nPuzzleId][nEventId]["AwardTempdata"],1)
            end
        end
    else
        --任务和普通
        local bIsInTask = false
        if rwtTaskPuzzleObjInfo[nEventId] then
            for _, TaskId in pairs(rwtTaskPuzzleObjInfo[nEventId]) do
                if rwTaskChkUserInTask(TaskId) and rwtTask[TaskId] then
                    bIsInTask= true
                    local nTaskDetailType = rwtTask[TaskId]["TaskDetailType"]
                    if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                        --rwPrintWarnLog("rwPuzzle_ObjClick" .. 5)
                        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(TaskId):OnTaskPuzzleObjClick()
                        break
                    end
                end
            end
        end
        if not bIsInTask then
        --rwPrintErrorLog("点击非任务物体，id："..nEventId)
            if tPuzzleEvent[nPuzzleId][nEventId]["SuccMsg"] then
                table.insert(tInfo,tPuzzleEvent[nPuzzleId][nEventId]["SuccMsg"])
            end
        end
        
    end
	for i,v in pairs(tInfo) do 
		--rwPrintWarnLog("sssss.."..v)
	end
    rwPuzzleRespond(tInfo)
	if rwChkInt(nDialog) then
		rwOpenNpcChatDialog(nDialog,nDialogType,nId)
	elseif tPuzzleEvent[nPuzzleId][nEventId]["ClickDialog"] then
		rwOpenNpcChatDialog(tPuzzleEvent[nPuzzleId][nEventId]["ClickDialog"],nDialogType,nId)
	end
    if tPuzzleEvent[nPuzzleId][nEventId]["OpenPuzzle"] then
        rwPuzzle_Show(tPuzzleEvent[nPuzzleId][nEventId]["OpenPuzzle"])
    end
    if tPuzzleEvent[nPuzzleId][nEventId]["EnterCopyMap"] then
        local nCopyMapId = tPuzzleEvent[nPuzzleId][nEventId]["EnterCopyMap"]
        rwCopyMapTemplate:create(nCopyMapId):Process()
    end
    if tPuzzleEvent[nPuzzleId][nEventId]["EnterBattle"] then
        local nMonsterGroupGenId = tPuzzleEvent[nPuzzleId][nEventId]["EnterBattle"]
        if not rwHasGenEvent(nMonsterGroupGenId) then
            rwAddGenEvent(nMonsterGroupGenId)
        end
        rwAutoBattle(nMonsterGroupGenId)
    end
    if tPuzzleEvent[nPuzzleId][nEventId]["TurnClickable"] then
        for k,v in pairs(tPuzzleEvent[nPuzzleId][nEventId]["TurnClickable"]) do
            tUserPuzzleInfo[nUserId][nPuzzleId]["ClickState"] = tUserPuzzleInfo[nUserId][nPuzzleId]["ClickState"] or {}
            tUserPuzzleInfo[nUserId][nPuzzleId]["ClickState"][v] = 1
        end
    end
    if tPuzzleEvent[nPuzzleId][nEventId]["TurnUnClickable"] then
        for k,v in pairs(tPuzzleEvent[nPuzzleId][nEventId]["TurnUnClickable"]) do
            tUserPuzzleInfo[nUserId][nPuzzleId]["ClickState"] = tUserPuzzleInfo[nUserId][nPuzzleId]["ClickState"] or {}
            tUserPuzzleInfo[nUserId][nPuzzleId]["ClickState"][v] = 0
        end
    end
end

--玩家登陆时销毁玩家解谜信息
function rwPuzzle_DestoryUserInfo()
    local nUserId = rwUserGetId()
    if tUserPuzzleInfo[nUserId] then
        tUserPuzzleInfo[nUserId] = nil
    end
end
table.insert(tUserLoginAction,rwPuzzle_DestoryUserInfo)

--清除解密屋用掩码
function PMTestPuzzleTempCordClean(nId)
	rwTempDataReset(nId)
end
--添加解密屋事件
function PMTestPuzzlePuzzleRespond(nId)
	local tInfo = {nId}
	rwPuzzleRespond(tInfo)
end