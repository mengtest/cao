--[英雄传说][测试脚本]物品系统测试 *.lua
--Date
--物品系统测试



--endregion

--测试物品ID
local TestItem10 = 8000022 --测试交易币礼包(10000交易币)
local TestItem1 = 8000042 --测试经验药水礼包(50000经验)

--好友宝箱功能测试礼包
local TestItem_FriendBox_Gold = 8000103        --金钱礼包（测试）
local TestItem_FriendBox_Pet = 8000104        --幻兽礼包（测试）
local TestItem_FriendBox_Hero = 8000105        --英雄礼包（测试）
local TestItem_FriendBox_Fashion = 8000106        --时装礼包（测试）
local TestItem_FriendBox_TestBox = 8000101          --好友宝箱测试礼包


--奖励接口测试
local nAwardTestItem_1 = 8000111    --任务
local nAwardTestItem_2 = 8000112    --宝箱
local nAwardTestItem_3 = 8000113    --礼包
local nAwardTestItem_4 = 8000114    --提示（飘字）
local nAwardTestItem_5 = 8000115    --弹窗提示

rwtItem[TestItem1] = rwtItem[TestItem1] or {}
rwtItem[TestItem1]["Awards"] = {}
rwtItem[TestItem1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[TestItem1]["Awards"]["AwardId"] = 4000000

rwtItem[TestItem10] = rwtItem[TestItem10] or {}
rwtItem[TestItem10]["Awards"] = {}
rwtItem[TestItem10]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[TestItem10]["Awards"]["AwardId"] = 4000004

local tTest = {}
tTest[nAwardTestItem_1] = {}
tTest[nAwardTestItem_1]["Awards"] = {}
tTest[nAwardTestItem_1]["Awards"]["EventType"] = CONST_ACTION_TYPE.TASK
tTest[nAwardTestItem_1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
tTest[nAwardTestItem_1]["Awards"]["EventId"] = 10206
tTest[nAwardTestItem_1]["Awards"]["AwardId"] = 1000029
tTest[nAwardTestItem_1]["Awards"]["AwardNum"] = 1

tTest[nAwardTestItem_2] = {}
tTest[nAwardTestItem_2]["Awards"] = {}
tTest[nAwardTestItem_2]["Awards"]["EventType"] = CONST_ACTION_TYPE.TREASURE_BOX
tTest[nAwardTestItem_2]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
tTest[nAwardTestItem_2]["Awards"]["EventId"] = 10206
tTest[nAwardTestItem_2]["Awards"]["AwardId"] = 1000029
tTest[nAwardTestItem_2]["Awards"]["AwardNum"] = 1

tTest[nAwardTestItem_3] = {}
tTest[nAwardTestItem_3]["Awards"] = {}
tTest[nAwardTestItem_3]["Awards"]["EventType"] = CONST_ACTION_TYPE.GIFT
tTest[nAwardTestItem_3]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
tTest[nAwardTestItem_3]["Awards"]["EventId"] = 10206
tTest[nAwardTestItem_3]["Awards"]["AwardId"] = 1000029
tTest[nAwardTestItem_3]["Awards"]["AwardNum"] = 1

tTest[nAwardTestItem_4] = {}
tTest[nAwardTestItem_4]["Awards"] = {}
tTest[nAwardTestItem_4]["Awards"]["EventType"] = CONST_ACTION_TYPE.TIPS
tTest[nAwardTestItem_4]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
tTest[nAwardTestItem_4]["Awards"]["AwardId"] = 1000029
tTest[nAwardTestItem_4]["Awards"]["AwardNum"] = 2

tTest[nAwardTestItem_5] = {}
tTest[nAwardTestItem_5]["Awards"] = {}
tTest[nAwardTestItem_5]["Awards"]["EventType"] = CONST_ACTION_TYPE.WINDOWS
tTest[nAwardTestItem_5]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
tTest[nAwardTestItem_5]["Awards"]["AwardId"] = 1000029
tTest[nAwardTestItem_5]["Awards"]["AwardNum"] = 2

rwtItem[nAwardTestItem_1] = rwtItem[nAwardTestItem_1] or {}
rwtItem[nAwardTestItem_1]["Function"] = function(nItemType)
    if rwUserGetItemCount(nItemType) >= 1 then
        if rwItemDel(nItemType) then
            local awardCode = rwBaseAward:create(tTest[nItemType]["Awards"]["EventType"],
            tTest[nItemType]["Awards"]["EventId"] or 0,
            tTest[nItemType]["Awards"],
            tTest[nItemType]["Awards"]["AwardNum"] or 1):Process() 
            rwPrintWarnLog("xxxxx"..awardCode)
            if awardCode == CONST_CODE.OK then        
                return true            
            end            
        end
    end
    return false
end

rwtItem[nAwardTestItem_2] = rwtItem[nAwardTestItem_2] or {}
rwtItem[nAwardTestItem_2]["Function"] = rwtItem[nAwardTestItem_1]["Function"]

rwtItem[nAwardTestItem_3] = rwtItem[nAwardTestItem_3] or {}
rwtItem[nAwardTestItem_3]["Function"] = rwtItem[nAwardTestItem_1]["Function"]

rwtItem[nAwardTestItem_4] = rwtItem[nAwardTestItem_4] or {}
rwtItem[nAwardTestItem_4]["Function"] = rwtItem[nAwardTestItem_1]["Function"]

rwtItem[nAwardTestItem_5] = rwtItem[nAwardTestItem_5] or {}
rwtItem[nAwardTestItem_5]["Function"] = rwtItem[nAwardTestItem_1]["Function"]


--好友宝箱功能测试礼包
local TestItem_FriendBox_Gold = 8000103        --金钱礼包（测试）
local TestItem_FriendBox_Pet = 8000104        --幻兽礼包（测试）
local TestItem_FriendBox_Hero = 8000105        --英雄礼包（测试）
local TestItem_FriendBox_Fashion = 8000106        --时装礼包（测试）
--金钱礼包（测试）
rwtItem[TestItem_FriendBox_Gold] = rwtItem[TestItem_FriendBox_Gold] or {}
rwtItem[TestItem_FriendBox_Gold]["Awards"] = {}
rwtItem[TestItem_FriendBox_Gold]["Awards"]["Events"] = {}
rwtItem[TestItem_FriendBox_Gold]["Awards"]["Events"][1] = {}
rwtItem[TestItem_FriendBox_Gold]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[TestItem_FriendBox_Gold]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[TestItem_FriendBox_Gold]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = TestItem_FriendBox_Gold
rwtItem[TestItem_FriendBox_Gold]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[TestItem_FriendBox_Gold]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 6000086
--幻兽礼包（测试）
rwtItem[TestItem_FriendBox_Pet] = rwtItem[TestItem_FriendBox_Pet] or {}
rwtItem[TestItem_FriendBox_Pet]["Awards"] = {}
rwtItem[TestItem_FriendBox_Pet]["Awards"]["Events"] = {}
rwtItem[TestItem_FriendBox_Pet]["Awards"]["Events"][1] = {}
rwtItem[TestItem_FriendBox_Pet]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[TestItem_FriendBox_Pet]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[TestItem_FriendBox_Pet]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = TestItem_FriendBox_Pet
rwtItem[TestItem_FriendBox_Pet]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[TestItem_FriendBox_Pet]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 6000087
--英雄礼包（测试）
rwtItem[TestItem_FriendBox_Hero] = rwtItem[TestItem_FriendBox_Hero] or {}
rwtItem[TestItem_FriendBox_Hero]["Awards"] = {}
rwtItem[TestItem_FriendBox_Hero]["Awards"]["Events"] = {}
rwtItem[TestItem_FriendBox_Hero]["Awards"]["Events"][1] = {}
rwtItem[TestItem_FriendBox_Hero]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[TestItem_FriendBox_Hero]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[TestItem_FriendBox_Hero]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = TestItem_FriendBox_Hero
rwtItem[TestItem_FriendBox_Hero]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[TestItem_FriendBox_Hero]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 6000088
--时装礼包（测试）
rwtItem[TestItem_FriendBox_Fashion] = rwtItem[TestItem_FriendBox_Fashion] or {}
rwtItem[TestItem_FriendBox_Fashion]["Awards"] = {}
rwtItem[TestItem_FriendBox_Fashion]["Awards"]["Events"] = {}
rwtItem[TestItem_FriendBox_Fashion]["Awards"]["Events"][1] = {}
rwtItem[TestItem_FriendBox_Fashion]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[TestItem_FriendBox_Fashion]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[TestItem_FriendBox_Fashion]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = TestItem_FriendBox_Fashion
rwtItem[TestItem_FriendBox_Fashion]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[TestItem_FriendBox_Fashion]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 6000089
--好友宝箱测试礼包（测试）
rwtItem[TestItem_FriendBox_TestBox] = rwtItem[TestItem_FriendBox_TestBox] or {}
rwtItem[TestItem_FriendBox_TestBox]["Awards"] = {}
rwtItem[TestItem_FriendBox_TestBox]["Awards"]["Events"] = {}
rwtItem[TestItem_FriendBox_TestBox]["Awards"]["Events"][1] = {}
rwtItem[TestItem_FriendBox_TestBox]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[TestItem_FriendBox_TestBox]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[TestItem_FriendBox_TestBox]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = TestItem_FriendBox_TestBox
rwtItem[TestItem_FriendBox_TestBox]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[TestItem_FriendBox_TestBox]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 6000090

