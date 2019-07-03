--region CopyModule.lua
--Date
--副本模块



--endregion

--===================================================================
--==============================取值函数=============================
--===================================================================
---
-- 获取机关数据
-- @param nGenId GenId
-- @param nIndex 对应CONST_HERO_ATTR
-- @return 数值
function rwGetValveData(nGenId, nIndex)
    rwPrintNormalLog({Func = "rwGetValveData",nGenId = nGenId,nIndex = nIndex})
    nIndex = nIndex or CONST_VALVE_DATA_INDEX.STATUS
    return GetValveData(nGenId, nIndex) 
end

---
-- 获取副本目标信息
-- @param nTaskId 副本任务ID
-- @return 返回-2表示系统错误，-1表示taskId不存在
function rwGetMapTaskProgress(nTaskId)
    rwPrintNormalLog({Func = "rwGetMapTaskProgress",nTaskId = nTaskId})
    return GetMapTaskProgress(nTaskId)
end

--===================================================================
--==============================功能函数=============================
--===================================================================
---
-- 添加副本缓存奖励
-- @param nActionType 奖励触发类型，支持宝箱、提示、弹窗提示
-- @param nActionId 对应类型的具体id(提示、弹窗提示不需要)
-- @param nAwardId 奖励id
-- @param nUserId 玩家ID
-- @return 成功返回true，失败返回false
function rwCopyMapAddAward(nActionType,nAwardId,nActionId,nUserId)
    nActionType = nActionType or 0
    nAwardId = nAwardId or 0
    nActionId = nActionId or 0
    nUserId = nUserId or 0
    rwPrintNormalLog({Func = "rwCopyMapAddAward",nActionType = nActionType,nAwardId = nAwardId,nActionId = nActionId,nUserId = nUserId})
    return AddCopyMapAward(nActionType,nActionId,nAwardId,nUserId)
end

---
-- 更新机关数据
-- @param nGenId GenId
-- @param nStatus 状态值
-- @param nData1 参数1
-- @param nData2 参数2
-- @return 布尔值
function rwUpdateValveData(nGenId, nStatus, nData1, nData2)
    nStatus = nStatus or 0
    nData1 = nData1 or 0
    nData2 = nData2 or 0
    rwPrintNormalLog({Func = "rwUpdateValveData",nGenId = nGenId,nStatus = nStatus,nData1 = nData1,nData2 = nData2})
    return UpdateValveData(nGenId, nStatus, nData1, nData2)
end

---
-- 副本怪物NPC陷阱清除
-- @param nType 1为清除剩余怪物 2为清除剩余NPC 3为陷阱
-- @return 布尔值
function rwClearGenEvent(nType) 
    rwPrintNormalLog({Func = "rwClearGenEvent"})
    return ClearGenEvent(nType) 
end

---
-- 设置副本通关
-- @return 布尔值
function rwSetPassCopyMap()
    return SetPassCopyMap()
end

---
-- 篝火
-- @param nLifeTime 存在时间（秒）
-- @param nInterval 生效间隔时间（秒）
-- @param nExpball 获得英雄经验球数值
-- @return 布尔值
function rwAddBonFire(nLifeTime,nInterval,nExpball)
    nLifeTime = nLifeTime or 0
    nInterval = nInterval or 0
    nExpball = nExpball or 0
    rwPrintNormalLog({Func = "rwAddBonFire",nLifeTime = nLifeTime,nInterval = nInterval,nExpball = nExpball})
    return AddBonFire(nLifeTime,nInterval,nExpball)
end

---
-- 添加副本目标信息
-- @param nTaskId 副本任务ID
-- @param nProgress 进度
-- @return 布尔值
function rwAddMapTaskData(nTaskId,nProgress)
    nTaskId = nTaskId or 0
    nProgress = nProgress or 0
    rwPrintNormalLog({Func = "rwAddMapTaskData",nTaskId = nTaskId,nProgress = nProgress})
    return AddMapTaskData(nTaskId,nProgress)
end

---
-- 更新副本目标信息
-- @param nTaskId 副本任务ID
-- @param nProgress 进度
-- @return 布尔值
function rwUpdateMapTaskData(nTaskId,nProgress)
    nTaskId = nTaskId or 0
    nProgress = nProgress or 0
    rwPrintNormalLog({Func = "rwUpdateMapTaskData",nTaskId = nTaskId,nProgress = nProgress})
    return UpdateMapTaskData(nTaskId,nProgress)
end

---
-- 删除副本目标信息
-- @param nTaskId 副本任务ID
-- @param nProgress 进度
-- @return 布尔值
function rwRemoveMapTaskData(nTaskId)
    rwPrintNormalLog({Func = "rwRemoveMapTaskData",nTaskId = nTaskId})
    return RemoveMapTaskData(nTaskId)
end

---
-- 增加副本定时器接口
-- @param nTargetType 定时器类型 1 玩家定时器 2 地图定时器
-- @param nTargetId nTargetType为1时填玩家ID，nTargetType为2时填动态地图ID （rwUserGetDynMapId）
-- @param nTimerId 定时器编号
-- @param nTime 定时时长 单位秒
-- @param sFunc 定时时间到了服务器执行响应的事件  "</F></N>"
-- @return 布尔值
function rwAddTimer(nTargetType,nTargetId,nTimerId,nTime,sFunc)
	nTargetType = nTargetType or 0
	nTargetId = nTargetId or 0
	nTimerId = nTimerId or 0
	nTime = nTime or 0
	sFunc = sFunc or ""
	return AddTimer(nTargetType,nTargetId,nTimerId,nTime,sFunc)
end

---
-- 删除副本定时器接口
-- @param nTargetType 定时器类型 1 玩家定时器 2 地图定时器
-- @param nTargetId nTargetType为1时填玩家ID，nTargetType为2时填动态地图ID （rwUserGetDynMapId）
-- @param nTimerId 定时器编号
-- @return 布尔值
function rwRemoveTimer(nTargetType,nTargetId,nTimerId)
	nTargetType = nTargetType or 0
	nTargetId = nTargetId or 0
	nTimerId = nTimerId or 0
	return RemoveTimer(nTargetType,nTargetId,nTimerId)
end

---
-- 重置副本定时器接口
-- @param nTargetType 定时器类型 1 玩家定时器 2 地图定时器
-- @param nTargetId nTargetType为1时填玩家ID，nTargetType为2时填动态地图ID （rwUserGetDynMapId）
-- @param nTimerId 定时器编号
-- @param nTime 定时时长 单位秒
-- @return 布尔值
function rwResetTimer(nTargetType,nTargetId,nTimerId,nTime)
	nTargetType = nTargetType or 0
	nTargetId = nTargetId or 0
	nTimerId = nTimerId or 0
	nTime = nTime or 0
	return ResetTimer(nTargetType,nTargetId,nTimerId,nTime)
end

--===================================================================
--===============================回调================================
--===================================================================
---
-- [回调]点击机关触发
-- @param nValveId 机关动态ID
-- @param nValveType 机关类型ID
-- @param nGenId GenId
-- @param nUserCount 当前机关内玩家人数
-- @param nBehaviorType 该玩家针对当前机关的行为类型（1：点击，2：进入，3：离开）
function valve_click(nValveId, nValveType, nGenId,nUserCount,nBehaviorType)
    rwLinkValveClick(nValveType, nGenId, nValveId,nUserCount,nBehaviorType)
end

---
-- [回调]创建多人副本触发
-- @param nCopyMapId 副本ID
-- @param nDynMapId 动态ID
function create_multi_copymap(nCopyMapId,nDynMapId)
    rwLinkMultiCopyMapCreate(nCopyMapId,nDynMapId)    
end

---
-- [回调]创建副本触发
-- @param nCopyMapId 副本ID
-- @param nDynMapId 动态ID
function create_copymap(nCopyMapId,nDynMapId)
    rwLinkCopyMapCreate(nCopyMapId,nDynMapId)
end

---
-- [回调销毁多人副本触发
-- @param nCopyMapId 副本ID
-- @param nDynMapId 动态ID
function destroy_multi_copymap(nCopyMapId,nDynMapId)
    rwLinkMultiCopyMapDestroy(nCopyMapId,nDynMapId)    
end
--===================================================================
--==============================回调封装=============================
--===================================================================
--进入副本的模板入口
function rwLinkCopyMapMissionEnter(nMissionId)
    if not rwtCopyMapMission[nMissionId]then
        rwPrintWarnLog("副本ID：" .. nMissionId .. "未配置")
        return
    end
    rwCopyMapTemplate:create(nMissionId):Process()
end

--副本通关
function rwLinkPassCopyMap(nMapId)
    rwPrintNormalLog({Func = "rwLinkPassCopyMap",nMapId = nMapId})
    rwCopyMapTemplate:create(nMapId):FinishCopyMap()
end

--点击机关触发
function rwLinkValveClick(nValveType, nGenId, nValveId,nUserCount,nBehaviorType)
    rwPrintNormalLog({Func = "rwLinkValveClick",nValveType = nValveType,nGenId = nGenId,nValveId = nValveId})
    if tValve[nValveType] then
        if nBehaviorType ==  CONST_BEHAVIOR_TYPE.Click then
            if tValve[nValveType]["ValveClickFunc"] and type(tValve[nValveType]["ValveClickFunc"]) == "function" then
                tValve[nValveType]["ValveClickFunc"](nValveType, nGenId, nValveId)
            end
        elseif nBehaviorType == CONST_BEHAVIOR_TYPE.Enter then
            if tValve[nValveType]["ValveEnterFunc"] and type(tValve[nValveType]["ValveEnterFunc"]) == "function" then
                tValve[nValveType]["ValveEnterFunc"](nValveType, nGenId, nValveId,nUserCount)
            end
        elseif nBehaviorType == CONST_BEHAVIOR_TYPE.Leave then
            if tValve[nValveType]["ValveLeaveFunc"] and type(tValve[nValveType]["ValveLeaveFunc"]) == "function" then
                tValve[nValveType]["ValveLeaveFunc"](nValveType, nGenId, nValveId,nUserCount)
            end
        end
    end
end

--创建多人副本回调
function rwLinkMultiCopyMapCreate(nCopyMapId,nDynMapId)
    rwPrintNormalLog({Func = "rwLinkMultiCopyMapCreate",nDynMapId = nDynMapId,nCopyMapId = nCopyMapId})
    if rwtCopyMapMission[nCopyMapId] then
        rwCopyMapTemplate:create(nCopyMapId, nDynMapId):MulTiCopyMapCreate()
    end
end

--销毁多人副本回调
function rwLinkMultiCopyMapDestroy(nCopyMapId,nDynMapId)
    rwPrintNormalLog({Func = "rwLinkMultiCopyMapDestroy",nDynMapId = nDynMapId,nCopyMapId = nCopyMapId}) 
    if rwtCopyMapMission[nCopyMapId] then
        rwCopyMapTemplate:create(nCopyMapId, nDynMapId):MulTiCopyMapDestroy()
    end
end

--创建副本回调
function rwLinkCopyMapCreate(nCopyMapId,nDynMapId)
    rwPrintNormalLog({Func = "rwLinkCopyMapCreate",nCopyMapId = nCopyMapId,nDynMapId = nDynMapId})
    if rwtCopyMapMission[nCopyMapId] then
        rwCopyMapTemplate:create(nCopyMapId, nDynMapId):CopyMapCreate()
    end
end

--创建副本传送NPC（切屏用）
function rwLinkCopyMapCreateEnterNpc(nMapId)
    rwtCopyMapEnterNpcInfo[nMapId] = rwtCopyMapEnterNpcInfo[nMapId] or {}
    for i,v in pairs(rwtCopyMapEnterNpcInfo[nMapId]) do 
        local tInfo = rwtCopyMapMission[v]
        if tInfo["ChangeNpcTask"] and rwChkInt(tInfo["ChangeNpcTask"]) then
            if rwTaskGetFinishMask(tInfo["ChangeNpcTask"]) == 1 then
               if tInfo["CopyNpcType"] == CONST_COPYMAP_TASK_TYPE.PLOT and tInfo["EnterNpcGen"] ~= 0 then
                   if  rwHasGenEvent(tInfo["EnterNpcGen"]) then  
                       rwDelGenEvent(tInfo["EnterNpcGen"])
                   end
               elseif tInfo["CopyNpcType"] == CONST_COPYMAP_TASK_TYPE.NORMAL and tInfo["EnterNpcGen"] ~= 0 then
                   if tInfo["NotCreate"] and tInfo["NotCreate"] == 1 then
       
                   else
                       if not rwHasGenEvent(tInfo["EnterNpcGen"]) then              
                            rwAddGenEvent(tInfo["EnterNpcGen"])
                       end
                   end
               end
            else
                if tInfo["NotCreate"] and tInfo["NotCreate"] == 1 then
       
                else
                   if tInfo["CopyNpcType"] == CONST_COPYMAP_TASK_TYPE.PLOT and tInfo["EnterNpcGen"] ~= 0 then
                       if  not rwHasGenEvent(tInfo["EnterNpcGen"]) then  
                           rwAddGenEvent(tInfo["EnterNpcGen"])
                       end
                   end
                end
            end
        end
    end
end 
