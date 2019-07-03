--region ItemModule.lua
--Date
--物品模块



--endregion

--===================================================================
--==============================取值函数=============================
--===================================================================




--===================================================================
--==============================功能函数=============================
--===================================================================
---
-- 添加物品
-- @param nItemType 物品类型
-- @param nCount 物品数量
-- @param nFlag 暂无用，服务端要求先传0
-- @return 布尔值
function rwItemAdd(nItemType,nCount,nFlag)
    rwPrintNormalLog({Func = "rwItemAdd",nItemType = nItemType,nCount = nCount,nFlag = nFlag})
    nCount = nCount or 1
    nFlag = nFlag or 0
    return AddItem(nItemType,nCount,nFlag)
end

---
-- 扣除物品
-- @param nItemtypeId 物品类型
-- @param nCount 物品数量
-- @return 布尔值
function rwItemDel(nItemtypeId,nCount)
    nCount = nCount or 1
    rwPrintNormalLog({Func = "rwItemDel",nItemtypeId = nItemtypeId,nCount = nCount})
    return DelItem(nItemtypeId,nCount)
end

---
-- 添加奖励接口
-- @param nActionType 奖励触发类型，见CONST_ACTION_TYPE
-- @param nActionId 对应类型具体id（提示、飘字提示不需要）
-- @param nAwardId 奖励id
-- @param nNum 数量
-- @return 布尔值 成功返回true，失败返回false
function rwAddAward(nActionType,nAwardId,nNum,nActionId)
    nActionType = nActionType or 0
    nActionId = nActionId or 0
    nAwardId = nAwardId or 0
    nNum = nNum or 1
    rwPrintNormalLog({Func = "rwAddAward",nActionType = nActionType,nAwardId = nAwardId,nNum = nNum,nActionId = nActionId})
    return AddAward(nActionType,nActionId,nAwardId,nNum)
end

--===================================================================
--===============================回调================================
--===================================================================
---
-- [回调]使用物品触发
-- @param nItemtypeId 物品类型
-- @param nCount 物品数量
-- @param nUseType 使用类型，暂无用
-- @return 布尔值
function use_item(nItemTypeId,nCount,nUseType)
	return rwLinkUseItem(nItemTypeId,nCount,nUseType)
end

--===================================================================
--==============================回调封装=============================
--===================================================================

--使用物品触发入口
function rwLinkUseItem(nItemTypeId,nCount,nUseType)
    rwMaiDianLog_item(nItemTypeId)
    if rwtItem[nItemTypeId] == nil then
        rwPrintWarnLog("物品ID：" .. nItemTypeId .. "未配置")
        return false
    end
    return rwBaseItem:create(nItemTypeId,nCount):Process()
end
