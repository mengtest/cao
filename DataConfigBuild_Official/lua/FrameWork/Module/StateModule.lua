--region StateModule.lua
--Date
--特殊状态模块



--endregion

--===================================================================
--==============================取值函数=============================
--===================================================================




--===================================================================
--==============================功能函数=============================
--===================================================================
---
-- 添加隐形状态
-- @param nSecs 秒数
-- @return 布尔值
function rwStatusAddHide(nSecs)
    nSecs = nSecs or 0
    rwPrintNormalLog({Func = "rwStatusAddHide",nSecs = nSecs})
    return AddHideStatus(nSecs)
end

---
-- 玩家添加状态效果
-- @param nStatus 状态类型
-- @param nTimes 状态次数
-- @param nTargetType 生效对象1=玩家自身，2=其他玩家，3=队伍内所有玩家
-- @return 布尔值
function rwStatusAdd(nStatus,nTimes,nTargetType)
    nStatus = nStatus or 0
    nTimes = nTimes or 1
    nTargetType = nTargetType or 1
    rwPrintNormalLog({Func = "rwStatusAdd",nStatus = nStatus,nTimes = nTimes,nTargetType = nTargetType})
    return AddStatus(nStatus,nTimes,nTargetType)
end

---
-- 删除玩家状态接口
-- @param nStatus 状态类型
-- @param nTargetType 生效对象 1=玩家自身，2=其他玩家，3=队伍内所有玩家
-- @return 布尔值
function rwStatusRemove(nStatus,nTargetType)
    nStatus = nStatus or 0
    nTargetType = nTargetType or 1
    rwPrintNormalLog({Func = "rwStatusRemove",nStatus = nStatus,nTimes = nTimes,nTargetType = nTargetType})
    return RemoveStatus(nStatus,nTargetType)
end

---
-- 状态改变接口
-- @param nTargetType 目标类型(1 玩家自身; 2  除玩家外其余队友; 3 整个队伍; 4 NPC; 5 怪物  6 机关  7 地图（固定地点）)
-- @param nTargetId 要改变形象的对象id
-- @param nStatusType 状态类型CONST_SPECICAL_STATUS
-- @param nLifeTime 持续时间，=0一直持续，例：持续30秒写30
-- @param nData1 参数1
-- @param nData2 参数2
-- @param nData3 参数3
-- @param nData4 参数4
-- @param sStrParam1 字符串参数1
-- @param sStrParam2 字符串参数2
-- @return 布尔值
function rwAddSpecialStatus(nTargetType, nTargetId, nStatusType, nLifeTime, nData1, nData2, nData3, nData4,sStrParam1, sStrParam2)
    nTargetType = nTargetType or 0
    nTargetId = nTargetId or 0
    nStatusType = nStatusType or 0
    nData1 = nData1 or 0
    nData2 = nData2 or 0
    nData3 = nData3 or 0
    nData4 = nData4 or 0
    nLifeTime = nLifeTime or 0
    sStrParam1 = sStrParam1 or ""
    sStrParam2 = sStrParam2 or ""
    rwPrintNormalLog({Func = "rwAddSpecialStatus",
                        nTargetType = nTargetType,
                        nTargetId = nTargetId,
                        nStatusType = nStatusType,
                        nData1 = nData1,
                        nData2 = nData2,
                        nData3 = nData3,
                        nData4 = nData4,
                        nLifeTime = nLifeTime,
                        sStrParam1 = sStrParam1,
                        sStrParam2 = sStrParam2,
                       })
    return AddSpecialStatus(nTargetType, nTargetId, nStatusType, nData1, nData2, nData3, nData4, sStrParam1, sStrParam2, nLifeTime)
end

---
-- [脚本封装]改变形象
-- @param nTargetType 目标类型(1 玩家自身; 2  除玩家外其余队友; 3 整个队伍; 4 NPC; 5 怪物)
-- @param nTargetId 要改变形象的对象id
-- @param nData1 改变后形象id
-- @param nData2 行走速率   百位进制  （输入123 等价 1.23）
-- @param nData3 模型放大倍数   百位进制  （123 等价 1.23）
-- @param nLifeTime 持续时间，=0一直持续，例：持续30秒写30
function rwSpecialStatus_ChangeLookFace(nTargetType, nTargetId, nLifeTime, nData1, nData2, nData3)    
    rwPrintNormalLog({Func = "rwSpecialStatus_ChangeLookFace"})
    nData3 = nData3 or 100
    nData2 = nData2 or 100
    rwAddSpecialStatus(nTargetType, nTargetId, CONST_SPECICAL_STATUS.LOOKFACE, nLifeTime, nData1, nData2, nData3, 0,"", "")
end

---
-- [脚本封装]添加光效
-- @param nTargetType 目标类型(1 玩家自身; 2  除玩家外其余队友; 3 整个队伍; 4 NPC; 5 怪物  6 机关  7 地图（固定地点）)
-- @param nTargetId 要改变形象的对象id
-- @param nData1 特效id
-- @param nData2 特效放大系数 百位进制  （123 等价 1.23）
-- @param strParam1 固定点坐标
-- @param strParam2 固定点角度
function rwSpecialStatus_AddEffect(nTargetType,nTargetId, nData1, sStrParam1, sStrParam2,nData2)
    rwPrintNormalLog({Func = "rwSpecialStatus_AddEffect"})
	local nScale = nData2 or 100
    rwAddSpecialStatus(nTargetType, nTargetId, CONST_SPECICAL_STATUS.EFFECT, 0, nData1, nScale, 0, 0, sStrParam1, sStrParam2)
end

---
-- [脚本封装]添加动作
-- @param nTargetType 目标类型(1 玩家自身; 2  除玩家外其余队友; 3 整个队伍; 4 NPC; 5 怪物  6 机关)
-- @param nTargetId 要改变形象的对象id
-- @param nData1 动作id
-- @param nData2 模型角度
function rwSpecialStatus_AddMotion(nTargetType,nTargetId, nData1, nData2)
    rwPrintNormalLog({Func = "rwSpecialStatus_AddMotion"})
    rwAddSpecialStatus(nTargetType, nTargetId, CONST_SPECICAL_STATUS.MOTION, 0, nData1, nData2, 0, 0, "", "")
end

---
-- 移除状态接口
-- @param nTargetType 目标类型(1 玩家自身; 2  除玩家外其余队友; 3 整个队伍; 4 NPC; 5 怪物  6 机关  7 地图（固定地点）)
-- @param nTargetId 对象id
-- @param nStatusType 状态类型CONST_SPECICAL_STATUS
-- @param nData1 具体类型ID
function rwRemoveSpecialStatus(nTargetType, nTargetId, nStatusType, nData1)
    nTargetType = nTargetType or 0
    nTargetId = nTargetId or 0
    nStatusType = nStatusType or 0
    nData1 = nData1 or 0
    rwPrintNormalLog({Func = "rwRemoveSpecialStatus", nTargetType = nTargetType,nTargetId = nTargetId,nStatusType = nStatusType,nData1 = nData1})
    RemoveSpecialStatus(nTargetType, nTargetId, nStatusType, nData1)
end

---
-- [脚本封装]移除形象
-- @param nTargetType 目标类型(1 玩家自身; 2  除玩家外其余队友; 3 整个队伍; 4 NPC; 5 怪物  6 机关  7 地图（固定地点）)
-- @param nTargetId 对象id
-- @param nData1 LookFaceID
function rwSpecialStatus_RemoveLookFace(nTargetType,nTargetId, nData1)
    rwPrintNormalLog({Func = "rwSpecialStatus_RemoveLookFace"})
    rwRemoveSpecialStatus(nTargetType, nTargetId, CONST_SPECICAL_STATUS.LOOKFACE, nData1)
end

---
-- [脚本封装]移除光效
-- @param nTargetType 目标类型(1 玩家自身; 2  除玩家外其余队友; 3 整个队伍; 4 NPC; 5 怪物  6 机关  7 地图（固定地点）)
-- @param nTargetId 对象id
-- @param nData1 光效ID
function rwSpecialStatus_RemoveEffect(nTargetType,nTargetId, nData1)
    rwPrintNormalLog({Func = "rwSpecialStatus_RemoveEffect"})
    rwRemoveSpecialStatus(nTargetType, nTargetId, CONST_SPECICAL_STATUS.EFFECT, nData1)
end

---
-- [脚本封装]移除动作
-- @param nTargetType 目标类型(1 玩家自身; 2  除玩家外其余队友; 3 整个队伍; 4 NPC; 5 怪物  6 机关  7 地图（固定地点）)
-- @param nTargetId 对象id
-- @param nData1 动作id
function rwSpecialStatus_RemoveMotion(nTargetType,nTargetId, nData1)
    rwPrintNormalLog({Func = "rwSpecialStatus_RemoveMotion"})
    rwRemoveSpecialStatus(nTargetType, nTargetId, CONST_SPECICAL_STATUS.MOTION, nData1)
end

---
-- 玩家采集功能
-- @param nTime 采集时间 秒
-- @param sCallBackFunc 采集结束回调函数（可自定义）  "</F></N>"
-- @param nGenEventId 刷怪GenId
-- @param nClientId 客户端资源ID
-- @param nDialogId 对白ID
function rwAddUserCollectFunc(nTime, sCallBackFunc, nGenEventId, nDialogId, nClientId)
    nTime = nTime or 3
    sCallBackFunc = sCallBackFunc or ""
    nGenEventId = nGenEventId or 0
    nClientId = nClientId or 0
    nDialogId = nDialogId or 0
    rwPrintNormalLog({Func = "rwAddUserCollectFunc",nTime = nTime,sCallBackFunc = sCallBackFunc,nGenEventId = nGenEventId, nClientId = nClientId, nDialogId = nDialogId})
    AddUserCollectFunc(nTime, sCallBackFunc, nGenEventId, nClientId,nDialogId)
end

---
-- 怪物添加状态
-- @param nGenEventId 刷怪GenId
-- @param nMonsterType 怪物类型
-- @param nStatusType 状态类型
-- @return 布尔值
function rwMonsterAddStatus(nGenEventId, nMonsterType, nStatusType)
    nGenEventId = nGenEventId or 0
    nMonsterType = nMonsterType or 0
    nStatusType = nStatusType or 0
    if not rwHasGenEvent(nGenEventId) then
        return false
    end
    rwPrintNormalLog({Func = "rwMonsterAddStatus",nGenEventId = nGenEventId,nMonsterType = nMonsterType,nStatusType = nStatusType})
    return AddMonsterStatus(nGenEventId, nMonsterType, nStatusType) 
end

---
-- 怪物删除状态
-- @param nGenEventId 刷怪GenId
-- @param nMonsterType 怪物类型
-- @param nStatusType 状态类型
-- @return 布尔值
function rwMonsterRemoveStatus(nGenEventId, nMonsterType, nStatusType)
    nGenEventId = nGenEventId or 0
    nMonsterType = nMonsterType or 0
    nStatusType = nStatusType or 0
    if not rwHasGenEvent(nGenEventId) then
        return false
    end
    rwPrintNormalLog({Func = "rwMonsterRemoveStatus",nGenEventId = nGenEventId,nMonsterType = nMonsterType,nStatusType = nStatusType})
    return RemoveMonsterStatus(nGenEventId, nMonsterType, nStatusType)
end

---
-- 播放光效
-- @param sEffectId 特效名字
-- @param bDirectly 是否即时播放特效表现(默认加入播放队列)
-- @return 布尔值
function rwPlayLocalEffect(sEffectId, bDirectly)
	rwPrintNormalLog({Func = "rwPlayLocalEffect",sEffectId = sEffectId,bDirectly = bDirectly})
	sEffectId = sEffectId or ""
	bDirectly = bDirectly or false
	return PlayLocalEffect(sEffectId, bDirectly)
end

--===================================================================
--===============================回调================================
--===================================================================




--===================================================================
--==============================回调封装=============================
--===================================================================
