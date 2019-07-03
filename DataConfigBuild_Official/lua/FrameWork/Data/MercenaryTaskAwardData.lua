--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--佣兵任务奖励配置表

--tMercenaryTaskAward = {} 单种奖励
--tMercenaryTaskAward[奖励类型][任务品质][战队等级]
--tMercenaryTaskAwardGroup = {}  奖励组
--endregion

--奖励ID从3000000 ~ 3002999 一共是 120(等级)*5(品质)*5(类型) = 3000个id

--local nStartID = 2999999
----返回对应奖励id
--function TaskGetDynamicAwardId(nAwardGroupId,nQuality)
--    local nAwardId = 0
--    local nUserLev = rwUserGetLevel()    
--    nAwardId = nStartID+((nQuality-1)*600)+((nAwardGroupId-1)*120)+nUserLev
--    return nAwardId
--end

--腾讯版使用
--奖励ID从3003280 ~ 3006279 一共是 100(等级)*5(品质)*6(类型) = 3000个id
local nStartID = 3003279
function TaskGetDynamicAwardId(nAwardGroupId,nQuality)
    local nAwardId = 0
    local nUserLev = rwUserGetLevel()    
    nAwardId = nStartID+((nQuality-1)*600)+ ((nAwardGroupId-1)*100) + nUserLev
    return nAwardId
end

----奖励ID从3000000 ~ 3000499 一共是 100(等级)*5(品质) = 500
--local nStartID = 2999999
----返回对应奖励id
--function TaskGetDynamicAwardId(nQuality)
--    local nAwardId = 0
--    local nUserLev = rwUserGetLevel()    
--    nAwardId = nStartID+((nQuality-1)*100) + nUserLev
--    return nAwardId
--end