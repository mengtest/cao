--region *.lua
--Date
--每日新材料副本_2号
--nizw
--endregion
----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3123
local nTempData = 1221
local nItemId = 7000344
local nRandomBaoJi = 100
local nRandomLuckyMan = 100
local nTimesBaoJi = 3
local nCollectLiuShaEffect = 2071

local tEnterMapInit = {
    3123001,                                        --猎魔人
    -- 3123002,3123003,3123004,3123005,3123006,        --冒险者
    3123012,3123013,3123014,3123015,3123016,3123017,3123018,3123019,    -- 
    3123020,3123021,3123022,3123023,3123024,                            -- 虫卵
    3123025,3123026,3123027,3123028,3123029,                            -- 岩沙矿
}

local tGenId ={}

tGenId.tGenId_MaoXianZhe = {
    3123002,3123003,3123004,3123005,3123006,        --冒险者
}

tGenId.CollectLiuSha = {
    3123012,3123013,3123014,3123015,3123016,3123017,3123018,3123019,
}

tGenId.LuckyMan = {
    3123007,3123008,3123009,3123010,3123011
}

local nNPCGroup_ABD = 20885

local tDialog = {}
tDialog["Enter"] = 6740

tDialog["CollectNoItem"] = 6741
tDialog["CollectAftNoItem"] = 6742

tDialog["MaoXianZhe1"] = 6743
tDialog["MaoXianZhe2"] = 6744
tDialog["MaoXianZhe3"] = 6745
tDialog["MaoXianZhe4"] = 6746
tDialog["MaoXianZhe5"] = 6747

tDialog["LuckyMan1"] = 6748
tDialog["LuckyMan2"] = 6749
tDialog["LuckyMan3"] = 6750
tDialog["LuckyMan4"] = 6751
tDialog["LuckyMan5"] = 6752

tDialog["CollectBaoJi"] = 6753
tDialog["GetChuiZhi"] = 6754

tDialog["ABD"] = 6755
tDialog["ABD_XinDe"] = 6756
tDialog["ABD_Leave"] = 6757
tDialog["ABD_Pass"] = 6758

local tNpcGroup_MaoXianZhe = {
    20886,     --冒险者玛斯卡
    20887,     --冒险者马苏拉
    20888,     --冒险者哈克特
    20889,     --冒险者瑞可达
    20890,     --冒险者布里奈
}

local tNpcGroup_LuckyMan = {
    20891,     --幸存者科尔
    20892,     --幸存者艾布纳
    20893,     --幸存者希伯
    20894,     --幸存者安格斯
    20895,     --幸存者奥斯格
}

local tNpcGroup_Collect = {}
tNpcGroup_Collect["LiuSha1"] = 60393
tNpcGroup_Collect["LiuSha2"] = 60394
tNpcGroup_Collect["LiuSha3"] = 60395
tNpcGroup_Collect["LiuSha4"] = 60396
tNpcGroup_Collect["LiuSha5"] = 60397
tNpcGroup_Collect["LiuSha6"] = 60398
tNpcGroup_Collect["LiuSha7"] = 60399
tNpcGroup_Collect["LiuSha8"] = 60400
tNpcGroup_Collect["ChongRuan"] = 60401
tNpcGroup_Collect["KuangShi"] = 60402

local tAward ={}
tAward["One"] = 1000508
tAward["Two"] = 1000509
tAward["Three"] = 1000510
tAward["Lucky"] = 1000511
tAward["ChuiZhi"] = 1000512

local sPosCollectLiuSha = {
    "16.516,0.08,59.58",
    "28.56,0.08,46.779",
    "40.60,0.08,41.389",
    "48.239,0.08,37.194",
    "38.074,0.08,52.312",
    "52.463,0.08,73.275",
    "64.168,0.08,66.437",
    "76.321,0.08,55.315",
}

local tRotCollectLiuSha = {

}
--=========================================================
--ABD
rwtNpcGroup[nNPCGroup_ABD] = rwtNpcGroup[nNPCGroup_ABD] or {}
rwtNpcGroup[nNPCGroup_ABD]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNPCGroup_ABD]["Awards"] = {}
rwtNpcGroup[nNPCGroup_ABD]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroup_ABD]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroup_ABD]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNPCGroup_ABD]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["ABD"]

--ABD的对话逻辑
rwtDialog[tDialog["ABD"]] = rwtDialog[tDialog["ABD"]] or {}
rwtDialog[tDialog["ABD"]]["OptionFunc1"] = function()
    rwOpenNpcChatDialog(tDialog["ABD_XinDe"])
end
rwtDialog[tDialog["ABD"]]["OptionFunc2"] = function()
    if rwUserGetItemCount(nItemId) >= 1 then
        rwOpenNpcChatDialog(tDialog["ABD_Leave"])
    else
        rwOpenNpcChatDialog(tDialog["ABD_Pass"])
    end
end

--冒险者
rwtNpcGroup[tNpcGroup_MaoXianZhe[1]] = rwtNpcGroup[tNpcGroup_MaoXianZhe[1]] or {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[1]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup_MaoXianZhe[1]]["Awards"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[1]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[1]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[1]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["MaoXianZhe1"]
rwtNpcGroup[tNpcGroup_MaoXianZhe[2]] = rwtNpcGroup[tNpcGroup_MaoXianZhe[2]] or {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[2]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup_MaoXianZhe[2]]["Awards"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[2]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[2]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[2]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[2]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["MaoXianZhe2"]
rwtNpcGroup[tNpcGroup_MaoXianZhe[3]] = rwtNpcGroup[tNpcGroup_MaoXianZhe[3]] or {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[3]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup_MaoXianZhe[3]]["Awards"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[3]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[3]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[3]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[3]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["MaoXianZhe3"]
rwtNpcGroup[tNpcGroup_MaoXianZhe[4]] = rwtNpcGroup[tNpcGroup_MaoXianZhe[4]] or {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[4]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup_MaoXianZhe[4]]["Awards"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[4]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[4]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[4]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[4]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["MaoXianZhe4"]
rwtNpcGroup[tNpcGroup_MaoXianZhe[5]] = rwtNpcGroup[tNpcGroup_MaoXianZhe[5]] or {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[5]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup_MaoXianZhe[5]]["Awards"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[5]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[5]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[5]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup_MaoXianZhe[5]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["MaoXianZhe5"]

--矿石
rwtNpcGroup[tNpcGroup_Collect["KuangShi"]] = rwtNpcGroup[tNpcGroup_Collect["KuangShi"]] or {}
rwtNpcGroup[tNpcGroup_Collect["KuangShi"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup_Collect["KuangShi"]]["CollectTime"] = 3
rwtNpcGroup[tNpcGroup_Collect["KuangShi"]]["NotDel"] = 1
rwtNpcGroup[tNpcGroup_Collect["KuangShi"]]["BeforeCollect"] = {}
rwtNpcGroup[tNpcGroup_Collect["KuangShi"]]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
	else
		rwOpenNpcChatDialog(tDialog["CollectNoItem"])
	end
end

rwtNpcGroup[tNpcGroup_Collect["KuangShi"]]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwItemDel(nItemId,1)
		rwDelGenEvent(nGenEventId)
        local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
        tAwardInfo["Awards"]["RandomEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 5000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward["One"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 5001
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 8000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward["Two"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][3] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][3]["MinRate"] = 8001
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][3]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][3]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][3]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][3]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][3]["Events"]["GetServerAward"]["AwardId"] = tAward["Three"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][3]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][3]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        
        if rwTempDataGetValue(nTempData,CONST_TEMP_DATA.Data4)<3 and rwGetRandInt(1,100) < nRandomBaoJi then
            local n = rwGetRandInt(1,3)
            local tAward = {1000508,1000509,1000510}
            local nAward = tAward[n]

            local Info = {}
            Info["Events"] = {}
            Info["Events"][1] = {}
            Info["Events"][1]["GetServerAward"] = {}
            Info["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
            Info["Events"][1]["GetServerAward"]["AwardId"] = nAward
            Info["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
            Info["Events"][1]["GetServerAward"]["ActionId"] = nGenEventId
            local fAward = rwBaseAward:create(Info)
            local index = rwTempDataGetValue(nTempData,CONST_TEMP_DATA.Data4)
            rwTempDataSet(nTempData,index+1,CONST_TEMP_DATA.Data4)
            for i = 1,nTimesBaoJi do
                fAward:Process()
            end
            rwOpenNpcChatDialog(tDialog["CollectBaoJi"])
        else
            local fAward = rwBaseAward:create(tAwardInfo["Awards"])
            fAward:Process()
        end

        if rwUserGetItemCount(nItemId) == 0 then
			rwOpenNpcChatDialog(tDialog["CollectAftNoItem"])
		end
    end
end
-- 采集完无锤子逻辑
-- rwtDialog[tDialog["CollectAftNoItem"]] = rwtDialog[tDialog["CollectAftNoItem"]] or {}
-- rwtDialog[tDialog["CollectAftNoItem"]]["OptionFunc1"] = function()
--     rwOpenNpcChatDialog(tDialog["ABD_XinDe"])
-- end
-- rwtDialog[tDialog["ABD"]]["OptionFunc2"] = function()
--     if rwUserGetItemCount(nItemId) >= 1 then
--         rwOpenNpcChatDialog(tDialog["ABD_Leave"])
--     else
--         rwOpenNpcChatDialog(tDialog["ABD_Pass"])
--     end
-- end
        
--虫卵
rwtNpcGroup[tNpcGroup_Collect["ChongRuan"]] = rwtNpcGroup[tNpcGroup_Collect["ChongRuan"]] or {}
rwtNpcGroup[tNpcGroup_Collect["ChongRuan"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup_Collect["ChongRuan"]]["NotDel"] = 1
rwtNpcGroup[tNpcGroup_Collect["ChongRuan"]]["CollectTime"] = 1
rwtNpcGroup[tNpcGroup_Collect["ChongRuan"]]["BeforeCollect"] = {}
rwtNpcGroup[tNpcGroup_Collect["ChongRuan"]]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
	else
		rwOpenNpcChatDialog(tDialog["CollectNoItem"])
	end
end

rwtNpcGroup[tNpcGroup_Collect["ChongRuan"]]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwItemDel(nItemId,1)
		rwDelGenEvent(nGenEventId)
		local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
        tAwardInfo["Awards"]["RandomEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 7000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward["One"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
		tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 7001
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward["Two"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nGenEventId

        tAwardInfo["Awards"]["RandomEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = {0,1}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["OpenDialog"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["OpenDialog"]["DialogId"] = tDialog["GetChuiZhi"]
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ItemAdd"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ItemAdd"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ItemAdd"][1]["ItemId"] = nItemId
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ItemAdd"][1]["Count"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["AddValue"] = 1

        rwBaseAward:create(tAwardInfo["Awards"]):Process()
        if rwUserGetItemCount(nItemId) == 0 then
			rwOpenNpcChatDialog(tDialog["CollectAftNoItem"])
		end
    end
end

-- 流沙

local tLuckyOtherGenID = {}
tLuckyOtherGenID[1] = {}
tLuckyOtherGenID[1]["GenId"] = tGenId.LuckyMan[1]
tLuckyOtherGenID[2] = {}
tLuckyOtherGenID[2]["GenId"] = tGenId.LuckyMan[2]
tLuckyOtherGenID[3] = {}
tLuckyOtherGenID[3]["GenId"] = tGenId.LuckyMan[3]
tLuckyOtherGenID[4] = {}
tLuckyOtherGenID[4]["GenId"] = tGenId.LuckyMan[4]
tLuckyOtherGenID[5] = {}
tLuckyOtherGenID[5]["GenId"] = tGenId.LuckyMan[5]

rwtNpcGroup[tNpcGroup_Collect["LiuSha1"]] = rwtNpcGroup[tNpcGroup_Collect["LiuSha1"]] or {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha1"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup_Collect["LiuSha1"]]["NotDel"] = 1
rwtNpcGroup[tNpcGroup_Collect["LiuSha1"]]["CollectTime"] = 5
rwtNpcGroup[tNpcGroup_Collect["LiuSha1"]]["BeforeCollect"] = {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha1"]]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
	else
		rwOpenNpcChatDialog(tDialog["CollectNoItem"])
	end
end
rwtNpcGroup[tNpcGroup_Collect["LiuSha1"]]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwItemDel(nItemId,1)
		rwDelGenEvent(nGenEventId)
		local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
        tAwardInfo["Awards"]["RandomEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 7000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward["One"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 7001
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward["Two"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId.CollectLiuSha[1]
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["Pos"] = "16.516,0.08,59.58"
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RemainRandomNum"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"] = tLuckyOtherGenID
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["SetValue"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2

        -- tAwardInfo["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 120.65
        -- if rwGetRandInt(1,100) < nRandomLuckyMan then
        --     -- AddGenEvent()
        --     rwOpenNpcChatDialog(tDialog["CollectBaoJi"])
        -- else
        rwBaseAward:create(tAwardInfo["Awards"]):Process()
        if rwUserGetItemCount(nItemId) == 0 then
			rwOpenNpcChatDialog(tDialog["CollectAftNoItem"])
		end
    end
end

rwtNpcGroup[tNpcGroup_Collect["LiuSha2"]] = rwtNpcGroup[tNpcGroup_Collect["LiuSha2"]] or {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha2"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup_Collect["LiuSha2"]]["NotDel"] = 1
rwtNpcGroup[tNpcGroup_Collect["LiuSha2"]]["CollectTime"] = 5
rwtNpcGroup[tNpcGroup_Collect["LiuSha2"]]["BeforeCollect"] = {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha2"]]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
	else
		rwOpenNpcChatDialog(tDialog["CollectNoItem"])
	end
end
rwtNpcGroup[tNpcGroup_Collect["LiuSha2"]]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwItemDel(nItemId,1)
		rwDelGenEvent(nGenEventId)
		local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
        tAwardInfo["Awards"]["RandomEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 7000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward["One"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 7001
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward["Two"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId.CollectLiuSha[2]
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["Pos"] = "28.56,0.08,46.779"
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RemainRandomNum"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"] = tLuckyOtherGenID
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["SetValue"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2

        -- tAwardInfo["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 120.65
        -- if rwGetRandInt(1,100) < nRandomLuckyMan then
        --     -- AddGenEvent()
        --     rwOpenNpcChatDialog(tDialog["CollectBaoJi"])
        -- else
        rwBaseAward:create(tAwardInfo["Awards"]):Process()
        if rwUserGetItemCount(nItemId) == 0 then
			rwOpenNpcChatDialog(tDialog["CollectAftNoItem"])
		end
    end
end

rwtNpcGroup[tNpcGroup_Collect["LiuSha3"]] = rwtNpcGroup[tNpcGroup_Collect["LiuSha3"]] or {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha3"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup_Collect["LiuSha3"]]["NotDel"] = 1
rwtNpcGroup[tNpcGroup_Collect["LiuSha3"]]["CollectTime"] = 5
rwtNpcGroup[tNpcGroup_Collect["LiuSha3"]]["BeforeCollect"] = {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha3"]]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
	else
		rwOpenNpcChatDialog(tDialog["CollectNoItem"])
	end
end
rwtNpcGroup[tNpcGroup_Collect["LiuSha3"]]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwItemDel(nItemId,1)
		rwDelGenEvent(nGenEventId)
		local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
        tAwardInfo["Awards"]["RandomEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 7000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward["One"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 7001
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward["Two"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId.CollectLiuSha[3]
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["Pos"] = "40.60,0.08,41.389"
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RemainRandomNum"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"] = tLuckyOtherGenID
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["SetValue"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2

        -- tAwardInfo["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 120.65
        -- if rwGetRandInt(1,100) < nRandomLuckyMan then
        --     -- AddGenEvent()
        --     rwOpenNpcChatDialog(tDialog["CollectBaoJi"])
        -- else
        rwBaseAward:create(tAwardInfo["Awards"]):Process()
        if rwUserGetItemCount(nItemId) == 0 then
			rwOpenNpcChatDialog(tDialog["CollectAftNoItem"])
		end
    end
end

rwtNpcGroup[tNpcGroup_Collect["LiuSha4"]] = rwtNpcGroup[tNpcGroup_Collect["LiuSha4"]] or {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha4"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup_Collect["LiuSha4"]]["NotDel"] = 1
rwtNpcGroup[tNpcGroup_Collect["LiuSha4"]]["CollectTime"] = 5
rwtNpcGroup[tNpcGroup_Collect["LiuSha4"]]["BeforeCollect"] = {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha4"]]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
	else
		rwOpenNpcChatDialog(tDialog["CollectNoItem"])
	end
end
rwtNpcGroup[tNpcGroup_Collect["LiuSha4"]]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwItemDel(nItemId,1)
		rwDelGenEvent(nGenEventId)
		local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
        tAwardInfo["Awards"]["RandomEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 7000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward["One"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 7001
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward["Two"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId.CollectLiuSha[4]
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["Pos"] = "48.239,0.08,37.194"
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RemainRandomNum"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"] = tLuckyOtherGenID
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["SetValue"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2

        -- tAwardInfo["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 120.65
        -- if rwGetRandInt(1,100) < nRandomLuckyMan then
        --     -- AddGenEvent()
        --     rwOpenNpcChatDialog(tDialog["CollectBaoJi"])
        -- else
        rwBaseAward:create(tAwardInfo["Awards"]):Process()
        if rwUserGetItemCount(nItemId) == 0 then
			rwOpenNpcChatDialog(tDialog["CollectAftNoItem"])
		end
    end
end

rwtNpcGroup[tNpcGroup_Collect["LiuSha5"]] = rwtNpcGroup[tNpcGroup_Collect["LiuSha5"]] or {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha5"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup_Collect["LiuSha5"]]["NotDel"] = 1
rwtNpcGroup[tNpcGroup_Collect["LiuSha5"]]["CollectTime"] = 5
rwtNpcGroup[tNpcGroup_Collect["LiuSha5"]]["BeforeCollect"] = {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha5"]]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
	else
		rwOpenNpcChatDialog(tDialog["CollectNoItem"])
	end
end
rwtNpcGroup[tNpcGroup_Collect["LiuSha5"]]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwItemDel(nItemId,1)
		rwDelGenEvent(nGenEventId)
		local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
        tAwardInfo["Awards"]["RandomEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 7000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward["One"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 7001
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward["Two"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId.CollectLiuSha[5]
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["Pos"] = "38.074,0.08,52.312"
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RemainRandomNum"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"] = tLuckyOtherGenID
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["SetValue"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2

        -- tAwardInfo["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 120.65
        -- if rwGetRandInt(1,100) < nRandomLuckyMan then
        --     -- AddGenEvent()
        --     rwOpenNpcChatDialog(tDialog["CollectBaoJi"])
        -- else
        rwBaseAward:create(tAwardInfo["Awards"]):Process()
        if rwUserGetItemCount(nItemId) == 0 then
			rwOpenNpcChatDialog(tDialog["CollectAftNoItem"])
		end
    end
end

rwtNpcGroup[tNpcGroup_Collect["LiuSha6"]] = rwtNpcGroup[tNpcGroup_Collect["LiuSha6"]] or {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha6"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup_Collect["LiuSha6"]]["NotDel"] = 1
rwtNpcGroup[tNpcGroup_Collect["LiuSha6"]]["CollectTime"] = 5
rwtNpcGroup[tNpcGroup_Collect["LiuSha6"]]["BeforeCollect"] = {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha6"]]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
	else
		rwOpenNpcChatDialog(tDialog["CollectNoItem"])
	end
end
rwtNpcGroup[tNpcGroup_Collect["LiuSha6"]]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwItemDel(nItemId,1)
		rwDelGenEvent(nGenEventId)
		local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
        tAwardInfo["Awards"]["RandomEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 7000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward["One"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 7001
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward["Two"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId.CollectLiuSha[6]
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["Pos"] = "52.463,0.08,73.275"
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RemainRandomNum"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"] = tLuckyOtherGenID
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["SetValue"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2

        -- tAwardInfo["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 120.65
        -- if rwGetRandInt(1,100) < nRandomLuckyMan then
        --     -- AddGenEvent()
        --     rwOpenNpcChatDialog(tDialog["CollectBaoJi"])
        -- else
        rwBaseAward:create(tAwardInfo["Awards"]):Process()
        if rwUserGetItemCount(nItemId) == 0 then
			rwOpenNpcChatDialog(tDialog["CollectAftNoItem"])
		end
    end
end

rwtNpcGroup[tNpcGroup_Collect["LiuSha7"]] = rwtNpcGroup[tNpcGroup_Collect["LiuSha7"]] or {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha7"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup_Collect["LiuSha7"]]["NotDel"] = 1
rwtNpcGroup[tNpcGroup_Collect["LiuSha7"]]["CollectTime"] = 5
rwtNpcGroup[tNpcGroup_Collect["LiuSha7"]]["BeforeCollect"] = {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha7"]]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
	else
		rwOpenNpcChatDialog(tDialog["CollectNoItem"])
	end
end
rwtNpcGroup[tNpcGroup_Collect["LiuSha7"]]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwItemDel(nItemId,1)
		rwDelGenEvent(nGenEventId)
		local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
        tAwardInfo["Awards"]["RandomEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 7000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward["One"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 7001
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward["Two"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId.CollectLiuSha[7]
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["Pos"] = "64.168,0.08,66.437"
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RemainRandomNum"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"] = tLuckyOtherGenID
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["SetValue"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2

        -- tAwardInfo["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 120.65
        -- if rwGetRandInt(1,100) < nRandomLuckyMan then
        --     -- AddGenEvent()
        --     rwOpenNpcChatDialog(tDialog["CollectBaoJi"])
        -- else
        rwBaseAward:create(tAwardInfo["Awards"]):Process()
        if rwUserGetItemCount(nItemId) == 0 then
			rwOpenNpcChatDialog(tDialog["CollectAftNoItem"])
		end
    end
end

rwtNpcGroup[tNpcGroup_Collect["LiuSha8"]] = rwtNpcGroup[tNpcGroup_Collect["LiuSha8"]] or {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha8"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup_Collect["LiuSha8"]]["NotDel"] = 1
rwtNpcGroup[tNpcGroup_Collect["LiuSha8"]]["CollectTime"] = 5
rwtNpcGroup[tNpcGroup_Collect["LiuSha8"]]["BeforeCollect"] = {}
rwtNpcGroup[tNpcGroup_Collect["LiuSha8"]]["BeforeCollect"]["Func"] = function(nGenEventId,nRandom,nNpcGroupType,nDelayTime)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwAddUserCollectFunc(nDelayTime, "</F>rwCollectEnd</N>" .. nNpcGroupType .."</N>" .. nGenEventId, nGenEventId, 0)
	else
		rwOpenNpcChatDialog(tDialog["CollectNoItem"])
	end
end
rwtNpcGroup[tNpcGroup_Collect["LiuSha8"]]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItemId) >= 1 then
		rwItemDel(nItemId,1)
		rwDelGenEvent(nGenEventId)
		local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
        tAwardInfo["Awards"]["RandomEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 7000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward["One"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 7001
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward["Two"]
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwardInfo["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = nGenEventId
        tAwardInfo["Awards"]["RandomEvents"][2] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
        tAwardInfo["Awards"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MinRate"] = 0
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["MaxRate"] = 10000
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId.CollectLiuSha[8]
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["Pos"] = "76.321,0.08,55.315"
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["RemainRandomNum"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"] = tLuckyOtherGenID
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempData
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["SetValue"] = 1
        tAwardInfo["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2

        -- tAwardInfo["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 120.65
        -- if rwGetRandInt(1,100) < nRandomLuckyMan then
        --     -- AddGenEvent()
        --     rwOpenNpcChatDialog(tDialog["CollectBaoJi"])
        -- else
        rwBaseAward:create(tAwardInfo["Awards"]):Process()
        if rwUserGetItemCount(nItemId) == 0 then
			rwOpenNpcChatDialog(tDialog["CollectAftNoItem"])
		end
    end
end



--幸运冒险者
rwtNpcGroup[tNpcGroup_LuckyMan[1]] = rwtNpcGroup[tNpcGroup_LuckyMan[1]] or {}
rwtNpcGroup[tNpcGroup_LuckyMan[1]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup_LuckyMan[1]]["Awards"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[1]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[1]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[1]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["LuckyMan1"]

rwtNpcGroup[tNpcGroup_LuckyMan[2]] = rwtNpcGroup[tNpcGroup_LuckyMan[2]] or {}
rwtNpcGroup[tNpcGroup_LuckyMan[2]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup_LuckyMan[2]]["Awards"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[2]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[2]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[2]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[2]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["LuckyMan2"]

rwtNpcGroup[tNpcGroup_LuckyMan[3]] = rwtNpcGroup[tNpcGroup_LuckyMan[3]] or {}
rwtNpcGroup[tNpcGroup_LuckyMan[3]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup_LuckyMan[3]]["Awards"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[3]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[3]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[3]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[3]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["LuckyMan3"]

rwtNpcGroup[tNpcGroup_LuckyMan[4]] = rwtNpcGroup[tNpcGroup_LuckyMan[4]] or {}
rwtNpcGroup[tNpcGroup_LuckyMan[4]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup_LuckyMan[4]]["Awards"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[4]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[4]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[4]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[4]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["LuckyMan4"]

rwtNpcGroup[tNpcGroup_LuckyMan[5]] = rwtNpcGroup[tNpcGroup_LuckyMan[5]] or {}
rwtNpcGroup[tNpcGroup_LuckyMan[5]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup_LuckyMan[5]]["Awards"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[5]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[5]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[5]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup_LuckyMan[5]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["LuckyMan5"]

rwtDialog[tDialog["LuckyMan1"]] = rwtDialog[tDialog["LuckyMan1"]] or {}
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"] = {}
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2] ={}
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"] = {}
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = nTempData
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["GetServerAward"] = {}
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["AwardId"] = tAward["Lucky"]
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["ActionId"] = tGenId.LuckyMan[1]
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["SetUserTempData"] = {}
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1] = {}
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nTempData
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtDialog[tDialog["LuckyMan1"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["SetValue"] = 1

rwtDialog[tDialog["LuckyMan2"]] = rwtDialog[tDialog["LuckyMan2"]] or {}
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"] = {}
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2] ={}
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"] = {}
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = nTempData
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["GetServerAward"] = {}
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["AwardId"] = tAward["Lucky"]
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["ActionId"] = tGenId.LuckyMan[2]
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["SetUserTempData"] = {}
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1] = {}
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nTempData
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtDialog[tDialog["LuckyMan2"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["SetValue"] = 1

rwtDialog[tDialog["LuckyMan3"]] = rwtDialog[tDialog["LuckyMan3"]] or {}
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"] = {}
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2] ={}
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"] = {}
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = nTempData
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["GetServerAward"] = {}
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["AwardId"] = tAward["Lucky"]
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["ActionId"] = tGenId.LuckyMan[3]
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["SetUserTempData"] = {}
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1] = {}
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nTempData
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtDialog[tDialog["LuckyMan3"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["SetValue"] = 1

rwtDialog[tDialog["LuckyMan4"]] = rwtDialog[tDialog["LuckyMan4"]] or {}
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"] = {}
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2] ={}
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"] = {}
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = nTempData
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["GetServerAward"] = {}
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["AwardId"] = tAward["Lucky"]
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["ActionId"] = tGenId.LuckyMan[4]
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["SetUserTempData"] = {}
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1] = {}
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nTempData
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtDialog[tDialog["LuckyMan4"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["SetValue"] = 1

rwtDialog[tDialog["LuckyMan5"]] = rwtDialog[tDialog["LuckyMan5"]] or {}
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"] = {}
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2] ={}
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"] = {}
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = nTempData
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["GetServerAward"] = {}
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["AwardId"] = tAward["Lucky"]
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["GetServerAward"]["ActionId"] = tGenId.LuckyMan[5]
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["SetUserTempData"] = {}
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1] = {}
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nTempData
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtDialog[tDialog["LuckyMan5"]]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["SetValue"] = 1

--副本配置
--任务目标
rwtTarget[60292] = {}
rwtTarget[60292]["Title"] = nil--tLuaText[LANGUAGE_CONFIG][21574]
rwtTarget[60292]["ReqDialogId"] = {tDialog["ABD_Pass"],tDialog["CollectAftNoItem"]}
rwtTarget[60292]["ReqCount"] = 1

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_PetExp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10044]
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60292}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterMapInit
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["Enter"]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = tGenId.CollectLiuSha[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = nCollectLiuShaEffect
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["Scale"] = 50
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetType"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetId"] = tGenId.CollectLiuSha[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["EffectId"] = nCollectLiuShaEffect
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["Scale"] = 50
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetType"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetId"] = tGenId.CollectLiuSha[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["EffectId"] = nCollectLiuShaEffect
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["Scale"] = 50
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetType"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetId"] = tGenId.CollectLiuSha[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["EffectId"] = nCollectLiuShaEffect
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["Scale"] = 50
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetType"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetId"] = tGenId.CollectLiuSha[5]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["EffectId"] = nCollectLiuShaEffect
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["Scale"] = 50
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][6] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["TargetType"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["TargetId"] = tGenId.CollectLiuSha[6]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["EffectId"] = nCollectLiuShaEffect
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["Scale"] = 50
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][7] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][7]["TargetType"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][7]["TargetId"] = tGenId.CollectLiuSha[7]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][7]["EffectId"] = nCollectLiuShaEffect
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][7]["Scale"] = 50
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][8] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][8]["TargetType"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][8]["TargetId"] = tGenId.CollectLiuSha[8]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][8]["EffectId"] = nCollectLiuShaEffect
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][8]["Scale"] = 50

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = nTempData
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ItemAdd"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ItemAdd"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ItemAdd"][1]["ItemId"] = nItemId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ItemAdd"][1]["Count"] = 5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1]["ResetValue"] = true

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId.tGenId_MaoXianZhe[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "8.461,0.08,60.262"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 120.65
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGenId.tGenId_MaoXianZhe[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "35.81,0.08,45.274"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 66.93
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = tGenId.tGenId_MaoXianZhe[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = "48.96,0.08,69.849"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 141.26
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["GenId"] = tGenId.tGenId_MaoXianZhe[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["Pos"] = "75.5779,0.08,63.566"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 229.085
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["GenId"] = tGenId.tGenId_MaoXianZhe[5]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["Pos"] = "50.647,0.08,35.37"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["RotationY"] = 139.086
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tGenId.tGenId_MaoXianZhe[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = tGenId.tGenId_MaoXianZhe[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["GenId"] = tGenId.tGenId_MaoXianZhe[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][4]["GenId"] = tGenId.tGenId_MaoXianZhe[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][5]["GenId"] = tGenId.tGenId_MaoXianZhe[5]

--==============================
function cailiaomoqi()
    for i = 3123001,3123011 do
        rwAddGenEvent(i)
    end
end