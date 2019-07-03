--rwBaseItem *.lua
--Date
--物品模板封装



--endregion

--JSON中字段
--local m_menuType = "menuType"
--local m_data = "data"
--local m_type = "type"
--local m_id = "id"
--local m_num = "num"

rwBaseItem = class("rwBaseItem")

--[Comment]构造模块
--nItemTypeId：物品类型ID
--nCount：使用个数
function rwBaseItem:ctor(nItemTypeId,nCount)
    self._ItemTypeId = nItemTypeId
    self._Count = nCount or 1
end

--[Comment]物品使用流程，使用完需给服务端返回布尔值
function rwBaseItem:Process()
    if not self._ItemTypeId then    
        return false
    end
    if not rwtItem[self._ItemTypeId] then
		return false
    end

    --物品自定义逻辑
	if rwChkFunc(rwtItem[self._ItemTypeId]["Function"]) then        
        return rwtItem[self._ItemTypeId]["Function"](self._ItemTypeId,self._Count)
    end

    --奖励
    if rwChkTable(rwtItem[self._ItemTypeId]["Awards"]) then
        if rwUserGetItemCount(self._ItemTypeId) >= self._Count then
            local obj_award = rwBaseAward:create(rwtItem[self._ItemTypeId]["Awards"],0,0,self._Count)
            if obj_award:ChkCondition() then
                local bDelFlag = true
                if not rwtItem[self._ItemTypeId]["UseNotDel"] then
                    bDelFlag = rwItemDel(self._ItemTypeId,self._Count)
                end
                if bDelFlag then
                    local awardCode = obj_award:Process()
                    if awardCode == CONST_CODE.OK then
                        return true
                    else
                        rwPrintErrorLog("使用" .. self._ItemTypeId .. "失败，错误码" ..awardCode)
                    end
                end
            end
        end
    end
    return false
end