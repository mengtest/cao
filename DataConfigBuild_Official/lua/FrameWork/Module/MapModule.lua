--region MapModule.lua
--Date
--地图模块


--endregion

--===================================================================
--==============================取值函数=============================
--===================================================================
---
-- 获取传送点信息
-- @param nIndex 传送点信息以2进制形式存储，取值为1-63
-- @return false 未解锁， ture 已解锁
function rwMapGetTransferMask(nIndex)
    --return GetTransferMask(nIndex)
    return rwHasUserRecordData(2,nIndex)
end

--===================================================================
--==============================功能函数=============================
--===================================================================
---
-- 切屏
-- @param nMapId 地图ID
-- @param sPos x,y,z坐标字符串，空字符为默认点
-- @return 布尔值
function rwEnterMap(nMapId,sPos)
    sPos = sPos or "" --
    rwPrintNormalLog({Func = "rwEnterMap",nMapId = nMapId,sPos = sPos})
    if not nMapId then
        rwPrintWarnLog("地图ID错误")
        return
    end
    return EnterMap(nMapId,sPos)    
end

---
-- 设置传送点
-- @param nIndex 传送点信息以2进制形式存储，取值为1-63
-- @return 布尔值
function rwSetTransferMask(nIndex)
    rwPrintNormalLog({Func = "rwSetTransferMask",nIndex = nIndex})
    --return SetTransferMask(nIndex)
    return rwAddUserRecordData(2,nIndex)
end

---
-- 自动寻路
-- @param nMapId 地图ID
-- @param sPos x,y,z坐标字符串
function rwFindPath(nMapId,sPos)
    rwPrintNormalLog({Func = "rwFindPath",nMapId = nMapId,sPos = sPos})
    FindPath(nMapId, sPos)
end

---
-- 副本内子场景切换
-- @param nMapId 地图ID
-- @param sPos x,y,z坐标字符串
function rwChangeScene(nMapId,sPos)
    rwPrintNormalLog({Func = "rwChangeScene",nMapId = nMapId,sPos = sPos})
    sPos = sPos or ""
    ChangeScene(nMapId, sPos)
end

---
-- 瞬移功能
-- @param nTeleportType:需要改变位置的对象类型（0：NPC，1：玩家）
-- @param nTargetId：对象id（玩家为玩家id，NPC为genid）
-- @param sPos 瞬移位置
-- @param nRotationY 瞬移后朝向
-- @return 布尔值
function rwTeleport(nTeleportType,nTargetId,sPos,nRotationY)
    nTeleportType = nTeleportType or 1
    nTargetId = nTargetId or 0
    sPos = sPos or ""
    nRotationY = nRotationY or 0
    rwPrintNormalLog({Func = "rwTeleport",nTeleportType = nTeleportType,nTargetId = nTargetId,sPos = sPos,nRotationY = nRotationY})
    return Teleport(nTeleportType, nTargetId, sPos, nRotationY)
end

---
-- [脚本封装]玩家瞬移
-- @param sPos 瞬移位置
-- @param nRotationY 瞬移后朝向
-- @return 布尔值
function rwUserTeleport(sPos,nRotationY)
    sPos = sPos or ""
    nRotationY = nRotationY or 0
    rwPrintNormalLog({Func = "rwUserTeleport",sPos = sPos,nRotationY = nRotationY})
    local nUserId = rwUserGetId()
    return rwTeleport(1, nUserId, sPos, nRotationY)
end

--===================================================================
--===============================回调================================
--===================================================================
---
-- [回调]玩家切图成功触发
-- @param nMapId 地图ID
function enter_map_complete(nMapId)
    rwLinkMapChangeComplete(nMapId)
end

---
-- [回调]玩家切图且客户端Loading结束触发
-- @param nMapId 地图ID
function load_scene_succ(nMapId)
    rwLinkLoadMapComplete(nMapId)
end

---
-- [回调]玩家切换传送点
-- @param nIndex 传送点信息以2进制形式存储，取值为1-63
function change_transfer(nIndex)
    rwLinkChangeTransfer(nIndex)
end

---
-- [回调]玩家副本内切换场景成功触发
-- @param levelId 地图ID
function load_child_scene_succ(levelId)
    rwLinkChangeSceneSuccess(levelId)
end
--===================================================================
--==============================回调封装=============================
--===================================================================

--玩家切地图后触发
function rwLinkMapChangeComplete(nMapId)
    if rwtMap[nMapId] and type(rwtMap[nMapId]["Func"]) == "function" then
        rwtMap[nMapId]["Func"](nMapId)
    end 
    rwActivity_GoldMonster_Login() --判断黄金怪物刷新
	rwActivity_GoldMonster_TimeLimit_Login()--判断限时黄金怪物刷新
end

--玩家切图且客户端Loading结束触发
function rwLinkLoadMapComplete(nMapId)
    if not nMapId then
        return
    end
	local nUserId =  rwUserGetId() 
    --切屏后检测玩家身上任务
    local taskList = rwTaskGetListByType(0)
    --rwPrintWarnLog("rwLinkLoadMapComplete -1")
    if taskList then
        for i = 1,#taskList do
            --rwPrintWarnLog("rwLinkLoadMapComplete 任务" ..taskList[i])
            if rwTaskIsAccept(taskList[i]) and not rwTaskIsSuccess(taskList[i]) then
                if rwtTask[taskList[i]] and rwtTask[taskList[i]]["TaskDetailType"] then
                    --动态创建逻辑
                    local nTaskDetailType = rwtTask[taskList[i]]["TaskDetailType"]
                    if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(taskList[i]):CreateDynaObj()
                    end
                end
            end
        end
    end

    --切屏后副本初始化
    if rwtCopyMapMission[nMapId] then
         rwCopyMapTemplate:create(nMapId):EnterInit()
    end
    --副本NPC切屏创建
    if rwtCopyMapEnterNpcInfo[nMapId] then
        rwLinkCopyMapCreateEnterNpc(nMapId)
    end
	--限时副本事件
	if rwtTimeCopyMap_CopymapId_Info[nMapId] then
		for i,v in pairs(rwtTimeCopyMap_CopymapId_Info[nMapId])do 
			for j,k in pairs(v)do 
				if rwtTimeCopyMapInfo[i][k]["CopyMapId"] == nMapId then				
					rwtCopyMapUserInitInfo[nMapId] = rwtCopyMapUserInitInfo[nMapId] or {}
					rwtCopyMapUserInitInfo[nMapId][nUserId] = rwtCopyMapUserInitInfo[nMapId][nUserId] or {}
					rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"] = rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"] or {}
					if rwChkTable(rwtTimeCopyMapInfo[i][k]["TimeCopyInit"]) then
						local tInfo = rwtTimeCopyMapInfo[i][k]["TimeCopyInit"]						
						rwBaseAward:create(tInfo):Process()
					end
					if rwChkFunc(rwtTimeCopyMapInfo[i][k]["Func"]) then
						rwtTimeCopyMapInfo[i][k]["Func"]()
					end
				end				
			end
		end
	end
    --刷新片区宝箱
    if tAreaBoxInfo[nMapId] then
        rwAreaBox_EnterMapInit(nMapId)
    end
    

    --切屏后处理其他逻辑
    if rwtSceneLoad_Func[nMapId] then
        for _,func in pairs (rwtSceneLoad_Func[nMapId]) do
            if type(func) == "function" then
                func(nMapId)
            end
        end
    end
--	QuickSendTask_CleanDailyTempData()
	if rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) ~= nil and #rwTaskGetListByType(CONST_TASK_TYPE.QUICKSEND) > 0 then
--		local nCurrent = os.time()
--		local nDataTime = rwTempDataGetValue(1222,CONST_TEMP_DATA.RecordTime)
--		local nChaneTime = nDataTime +1200 - nCurrent		
--		if nChaneTime > 0 then
--			rwSpecialStatus_ChangeLookFace(1,0,nChaneTime,90801)
--		end
	else 
		if rwTaskIsSuccess(10270) then
			local nData2 = rwTempDataGetValue(1210,CONST_TEMP_DATA.Data2)
			if nData2 >0 then
				local nData3 = rwTempDataGetValue(1210,CONST_TEMP_DATA.Data3)
				if nData2 < nData3 then
					local nTaskId = QuickSendTask_GetTask()
					rwTaskAdd(nTaskId)
					local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
					if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
						ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):CreateDynaObj()
					end
				end	
			end	
		end			
	end
end

--玩家切换传送点
function rwLinkChangeTransfer(nIndex)
    local tTransferInfo = rwGetTransferInfo(nIndex)
    local tPos = tTransferInfo.tPosInfo
    local nMapId = tPos.nMapId
    local sPos = tPos.sPos
    local bLock = rwMapGetTransferMask(nIndex)
    local bTransferFlag = nil   --传送标记
    if bLock == false then
        if tTransferInfo["ChkFuc"] ~= nil and type(tTransferInfo["ChkFuc"]) == "function" and tTransferInfo["ChkFuc"]() == true then     
            rwSetTransferMask(nIndex)
			if tTransferInfo["OpenTransferTip"]	 then
				 rwSendSystemMessage(tTransferInfo["OpenTransferTip"],2)
			end
            bTransferFlag = rwEnterMap(nMapId,sPos)
        else          
            return
        end

    elseif bLock == true then
        --已解锁
        bTransferFlag = rwEnterMap(nMapId,sPos)
    end
--    if bTransferFlag and rwtTaskTransFerInfo and rwtTaskTransFerInfo[nIndex] then
--        for _,v in ipairs(rwtTaskTransFerInfo[nIndex]) do
--            if v and type(v) == "number" then
--                if rwTaskChkUserInTask(v) then

--                end
--            end
--        end
--    end
    --切换完成后完成任务
    if bTransferFlag and rwtTaskTransFerInfo[nIndex] then
        for i,nTaskId in ipairs(rwtTaskTransFerInfo[nIndex]) do
            if rwTaskChkUserInTask(nTaskId) then
                local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
                if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                    ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):UseTranFer(nIndex)
                end
			end
        end
    end
end

--玩家副本内切换场景成功触发
function rwLinkChangeSceneSuccess(nLevelId)
    rwPrintNormalLog({Func = "rwLinkChangeSceneSuccess",nLevelId = nLevelId})
    if not nLevelId then
        return
    end
    --切场景后执行函数
    if rwtChangeSceneSucc_Func[nLevelId] then
        for _,func in pairs (rwtChangeSceneSucc_Func[nLevelId]) do
            if type(func) == "function" then
                func()
            end
        end
    end
end