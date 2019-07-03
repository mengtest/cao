--region *.lua
--Date  20180625
--NPC彩蛋


--endregion

--***************************数据定义***************************----
--***************************函数***************************----


-- NPC彩蛋逻辑
-- 输出彩蛋对白类型
-- Param:sMark:rwNpcTemplate传入的普通对白类型
-- data1 记录总次数
-- ‘EachCount’ 为每对话n次触发彩蛋的 次数n，
-- 'TotalCount' 为累计对话n次触发彩蛋的 次数n，
function NPCGroupCaiDan_Process(nNpcTypeId,sMark)
    sMark = sMark or "DialogId"
    -- 根据nNpcid,寻找到配置中的彩蛋掩码
    local nNpcGroupId = 0
    for k,v in pairs(rwtNPCCaiDan) do

        if nNpcTypeId == v["NpcId"] and rwUserGetCurMapId() == v["MapId"] then
            nNpcGroupId = k
            break
        else
        end
    end
    
    if nNpcGroupId == 0 then
        return sMark
    end

    local nMask = rwtNPCCaiDan[nNpcGroupId]["Mask"]
    if not rwChkInt(rwtNPCCaiDan[nNpcGroupId]["Mask"]) then
        return
    end

    --判断掩码是否已存在
    local nMask = rwtNPCCaiDan[nNpcGroupId]["Mask"]
    if rwTempDataIsExist(nMask) then
    else
        rwTempDataAdd(nMask)
    end
    ---------------
    --对白总次数处理
    local nData1 = rwTempDataGetValue(nMask,CONST_TEMP_DATA.Data1)
    nData1 = nData1 + 1     --至此已满足条件，次数加1
    rwUserTempDataSet(nMask,nData1,CONST_TEMP_DATA.Data1)

    local nEachCount = rwtNPCCaiDan[nNpcGroupId]["EachCount"]
    local nTotalCount = rwtNPCCaiDan[nNpcGroupId]["TotalCount"]

    -- 累计对话n次触发，只有次数相等时才触发，之后不再触发
    if nTotalCount then
        if nData1 == nTotalCount then
            return "CDDialogIdTypeTotal"
        end
    end
    
    -- 每对白n次触发彩蛋，
    if nEachCount then        
        if nData1 % nEachCount == 0 then
            return "CDDialogIdTypeEach"
        end
    end

    --如果无彩蛋触发，返回“DialogId”
    return sMark
end
    



-- Test
function NPCGroupCaiDan_test(mask,num)
    local nData = 2
    -- -1清除所有掩码
    if mask == -1 then
        for _,v in pairs(rwtNPCCaiDan) do
            local nMask = v["Mask"]
            rwTempDataReset(nMask)
        end
        return
    end

    if num then
        rwUserTempDataSet(mask,num,nData)
        return
    
    else
        local str1 = rwTempDataGetValue(mask,CONST_TEMP_DATA.Data1)
        rwSendSystemMessage(str1,1,1)
    end
end