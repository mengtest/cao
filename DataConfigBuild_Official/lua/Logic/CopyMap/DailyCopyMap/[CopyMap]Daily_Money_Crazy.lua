--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--罗兰币副本



--endregion

----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3057

--随机事件掩码
local nTempDataId = 1118
local nTempDataId_2 = 1176
--对话id


local tDialog_In =				{5482,5483,5484,5485,5486}		 --进入副本5句对白
--local tDialog_Bef_FixedMon =	{5487,5488,5489,5490,5491}		 --和固定怪战斗前
--local tDialog_Aft_FixedMon =	{5492,5493,5494,5495,5496,5497}		 --和固定怪战斗后
local tDialog_TransureBox =		{5498,5499,5500,5501,5502}		 --通关宝箱对白											   
local tDialog_PassCopy =		{5503,5504,5505,5506,5507,5508,5509}		 --通关对白
local tDialog_Valve =			{5515}		 --机关棺材开启对白
local tDialog_Trap =			{5516}		 --陷阱对白
local tDialog_Coll_RanMon =		{5510,5511,5512}		 --怪物棺材对白
local tDialog_WithWenli =		{5517,5518,5519}		 --有温丽对白
local tDialog_WithoutWenli =	{5520,5521,5522}		 --无温丽对白
local nDialog_Aft_RanMon =		5513 --和随机怪战斗后

--对话奖励

--采集物
local nCollectId_1 = 60140  --尸体
local nCollectId_2 = 60141  --棺材
local nCollectId_3 = 60142  --棺材
local nCollectId_4 = 60143  --棺材
local nCollectId_5 = 60144  --棺材
local nCollectId_6 = 60145  --棺材

--宝箱
local nTreasyreBoxId_1 = 40104 --通关宝箱
local nTreasyreBoxId_2 = 40105 --隐藏宝箱
local nTreasyreBoxId_3 = 40106 --彩蛋宝箱
local nGenId_TongGuangBox = 3057013
local nTreasyreBoxId_4 = 40151 --稀有宝箱1
local nTreasyreBoxId_5 = 40214 --稀有宝箱2

--陷阱
local nTrapId_1 =  30399
local nGenId_Trap1 = 3057015
 

--机关
local nValve_1 = 1041
local nValve_2 = 1042
local nGenId_nValve1 = 3057010

--怪物
local nMonsterGroupId_1 = 200139	--固定  改为随机4怪
local nMonsterGroupId_2 = 200340    --随机
local nMonsterGroupId_3 = 200649    --随机5怪

--NPC
local nNpcId = 3463
rwtNpc[nNpcId] = rwtNpc[nNpcId] or {}


--副本中所以宝箱和采集物的genid
local tAwardGenId = {3057001,3057002,3057003,3057004,3057005,3057006,3057007,3057008,3057009,3057012,3057014,3057015,3057016,3057017,3057018,3057019,3057022,3057023,3057024}

--副本入口
local nCopyMapGroupId =  50040

--副本目标
local nTarget1 = 60090
local nTarget2 = 60091

--奖励id
local nRewardId_ShiTi =	1000132			--尸体奖励
local nRewardId_GuanCai = 1000133		--普通棺材奖励
local nRewardId_TongGuang = 1000129		--通关宝箱奖励
local nRewardId_YinCang = 1000130		--隐藏宝箱奖励
local nRewardId_CaiDan = 1000131		--彩蛋宝箱奖励
local nRewardId_RanMon = 1000297		--随机怪物奖励
local nRewardId_WithOutWenli = 1000299	--无温丽奖励
local nRewardId_WithWenli = 1000300		--有温丽奖励	

local nRewardId_Suiji4 = 1000298		--随机事件4奖励
local nRewardId_Suiji5 = 1000301		--随机事件5奖励


--采集物
rwtNpcGroup[nCollectId_1] = rwtNpcGroup[nCollectId_1] or {}  --尸体
rwtNpcGroup[nCollectId_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_1]["CollectTime"] = 1
rwtNpcGroup[nCollectId_1]["Awards"] = {}  
rwtNpcGroup[nCollectId_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_ShiTi
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

--宝箱
rwtNpcGroup[nTreasyreBoxId_1] = rwtNpcGroup[nTreasyreBoxId_1] or {}  --通关宝箱
rwtNpcGroup[nTreasyreBoxId_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasyreBoxId_1]["NotDel"] = 1
rwtNpcGroup[nTreasyreBoxId_1]["Awards"] = {}
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["ChkGenEventNoExist"]	= tAwardGenId
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}	   --失败对白
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] =  tDialog_TransureBox
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialog_PassCopy
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["DynDelete"][1] = nGenId_TongGuangBox
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasyreBoxId_1
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_TongGuang  
rwtNpcGroup[nTreasyreBoxId_1]["ChooseAwards"] = {}		  --强制打开通关宝箱奖励
rwtNpcGroup[nTreasyreBoxId_1]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[nTreasyreBoxId_1]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[nTreasyreBoxId_1]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[nTreasyreBoxId_1]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialog_PassCopy
rwtNpcGroup[nTreasyreBoxId_1]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTreasyreBoxId_1]["ChooseAwards"]["Events"][1]["DynDelete"][1] = nGenId_TongGuangBox
rwtNpcGroup[nTreasyreBoxId_1]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasyreBoxId_1]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasyreBoxId_1]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasyreBoxId_1
rwtNpcGroup[nTreasyreBoxId_1]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasyreBoxId_1]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_TongGuang   

rwtNpcGroup[nTreasyreBoxId_2] = rwtNpcGroup[nTreasyreBoxId_2] or {}  --隐藏宝箱
rwtNpcGroup[nTreasyreBoxId_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasyreBoxId_2]["Awards"] = {}
rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasyreBoxId_2
rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_YinCang 


rwtNpcGroup[nTreasyreBoxId_3] = rwtNpcGroup[nTreasyreBoxId_3] or {}  --彩蛋宝箱
rwtNpcGroup[nTreasyreBoxId_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasyreBoxId_3]["Awards"] = {}
rwtNpcGroup[nTreasyreBoxId_3]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasyreBoxId_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasyreBoxId_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasyreBoxId_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasyreBoxId_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasyreBoxId_3
rwtNpcGroup[nTreasyreBoxId_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasyreBoxId_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_CaiDan 

rwtNpcGroup[nTreasyreBoxId_4] = rwtNpcGroup[nTreasyreBoxId_4] or {}  --随机4宝箱
rwtNpcGroup[nTreasyreBoxId_4]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasyreBoxId_4]["Awards"] = {}
rwtNpcGroup[nTreasyreBoxId_4]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasyreBoxId_4]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasyreBoxId_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasyreBoxId_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasyreBoxId_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasyreBoxId_4
rwtNpcGroup[nTreasyreBoxId_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasyreBoxId_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_Suiji4 

rwtNpcGroup[nTreasyreBoxId_5] = rwtNpcGroup[nTreasyreBoxId_5] or {}  --随机5宝箱
rwtNpcGroup[nTreasyreBoxId_5]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasyreBoxId_5]["Awards"] = {}
rwtNpcGroup[nTreasyreBoxId_5]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasyreBoxId_5]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasyreBoxId_5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasyreBoxId_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasyreBoxId_5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasyreBoxId_5
rwtNpcGroup[nTreasyreBoxId_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasyreBoxId_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_Suiji5

--棺材
rwtNpcGroup[nCollectId_2] =  {}  --机关棺材
rwtNpcGroup[nCollectId_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_2]["CollectTime"] = 3
rwtNpcGroup[nCollectId_2]["Awards"] = {}  
rwtNpcGroup[nCollectId_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialog_Valve
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][2] = {}
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][2]["DynDelete"] = {nGenId_Trap1}    
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][3] = {}      
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][3]["OpenVavle"] = {}
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][3]["OpenVavle"][1] ={}
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][3]["OpenVavle"][1]["nGenId"] = nGenId_nValve1
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][3]["OpenVavle"][1]["nStatus"] = 1

rwtNpcGroup[nCollectId_3] =  {}  --奖励棺材
rwtNpcGroup[nCollectId_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_3]["CollectTime"] = 1
rwtNpcGroup[nCollectId_3]["Awards"] = {}  
rwtNpcGroup[nCollectId_3]["Awards"]["Events"] = {} 
rwtNpcGroup[nCollectId_3]["Awards"]["Events"][1] = {}  
rwtNpcGroup[nCollectId_3]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollectId_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_GuanCai
rwtNpcGroup[nCollectId_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectId_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS


--棺材
rwtNpcGroup[nCollectId_4] =  {}  --怪物棺材
rwtNpcGroup[nCollectId_4]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_4]["CollectTime"] = 3
rwtNpcGroup[nCollectId_4]["NotDel"] = 1
rwtNpcGroup[nCollectId_4]["Awards"] = {}  
rwtNpcGroup[nCollectId_4]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollectId_4]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollectId_4]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nCollectId_4]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_Coll_RanMon 
--rwtNpcGroup[nCollectId_4]["Awards"]["Events"][1]["DynCreate"] = {3057018} 
--rwtNpcGroup[nCollectId_4]["Awards"]["Events"][1]["AutoBattle"]= {}
--rwtNpcGroup[nCollectId_4]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = 3057018

--陷阱
rwtNpcGroup[nTrapId_1] = rwtNpcGroup[nTrapId_1] or {}
rwtNpcGroup[nTrapId_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapId_1]["DelTrap"] = 1
rwtNpcGroup[nTrapId_1]["Awards"] = {}  
rwtNpcGroup[nTrapId_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrapId_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrapId_1]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrapId_1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_Trap 

--对白逻辑---------------------------------------------------------------------------------

--通关宝箱对白
for k,v in ipairs(tDialog_TransureBox) do
	rwtDialog[v] = rwtDialog[v] or {}
	rwtDialog[v] = rwtDialog[v] or {}
	rwtDialog[v]["OptionFunc1"] = function ()
		return false
	end
	rwtDialog[v]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
		LinkTreasureBoxOpenSucc(nTreasyreBoxId_1,nGenId_TongGuangBox,1)
	end
end

--对白奖励  无指定npc
for k,v in ipairs(tDialog_WithoutWenli) do
rwtDialog[v] = rwtDialog[v] or {}
rwtDialog[v]["DialogEndInit"] = {}
rwtDialog[v]["DialogEndInit"]["Events"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_WithOutWenli
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

--对白奖励  有指定npc
for k,v in ipairs(tDialog_WithWenli) do 
rwtDialog[v] = rwtDialog[v] or {}
rwtDialog[v]["DialogEndInit"] = {}
rwtDialog[v]["DialogEndInit"]["Events"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_WithWenli
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

--对白触发战斗
for k,v in ipairs(tDialog_Coll_RanMon) do 
rwtDialog[v] = rwtDialog[v] or {}
rwtDialog[v]["DialogEndInit"] = {}
rwtDialog[v]["DialogEndInit"]["Events"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynCreate"] = {3057018} 
rwtDialog[v]["DialogEndInit"]["Events"][1]["AutoBattle"]= {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = 3057018
end


--怪物逻辑--------------------------------------------------------------------------------------

--function CopyMap_Daily_Money_Crazy_MonsterGroup1_BeKill()
--    local nRandom = math.random(1,#tDialog_Aft_FixedMon)
--    rwOpenNpcChatDialog(tDialog_Aft_FixedMon[nRandom])
--end
--rwtMonsterGroup_Func[nMonsterGroupId_1] = rwtMonsterGroup_Func[nMonsterGroupId_1] or {}
--table.insert(rwtMonsterGroup_Func[nMonsterGroupId_1],CopyMap_Daily_Money_Crazy_MonsterGroup1_BeKill)


function CopyMap_Daily_Money_Crazy_MonsterGroup2_BeKill()
    if rwHasGenEvent(3057017) then
		rwDelGenEvent(3057017)
	end
end
rwtMonsterGroup_Func[nMonsterGroupId_2] = rwtMonsterGroup_Func[nMonsterGroupId_2] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroupId_2],CopyMap_Daily_Money_Crazy_MonsterGroup2_BeKill)


--NPC----------------------------------------------------------------------------------------------

rwtNpcGroup[20456] = rwtNpcGroup[20456] or {}
rwtNpcGroup[20456]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[20456]["Awards"] = {}
rwtNpcGroup[20456]["Awards"]["Events"] = {}
rwtNpcGroup[20456]["Awards"]["Events"][1] = {}
rwtNpcGroup[20456]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {201}
rwtNpcGroup[20456]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[20456]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_WithWenli
rwtNpcGroup[20456]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[20456]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[20456]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog_WithoutWenli

-- rwtNpcGroup[20456]["InterfaceFunc"]= function(nGroupTypeId,nNpcTypeId,nGenEventId)
-- 	local tHeroTable = rwHeroGetAllInFight()
-- 	local nMask = 0
-- 	for i=1,#tHeroTable do
-- 		if tHeroTable[i] == 201 then
-- 			nMask = 1
-- 		end	
-- 	end
-- 	if nMask == 1 then 
-- 		local nIndex = math.random(1,#tDialog_WithWenli)
-- 		rwOpenNpcChatDialog(tDialog_WithWenli[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 	else
-- 		local nIndex = math.random(1,#tDialog_WithoutWenli)
-- 		rwOpenNpcChatDialog(tDialog_WithoutWenli[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 	end 	
-- end


--进入副本NPC
rwtNpcGroup[nCopyMapGroupId] = {}
rwtNpcGroup[nCopyMapGroupId]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nCopyMapGroupId]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Money
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10045]
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget2}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_In			--事件1：进副本随机对白5选1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = {1,2,3}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1] = {} ----------------------随机怪物
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 3000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = 3057002
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["Pos"] = "13.80,-1.59,44.85"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 270
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = 3057003
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["Pos"] = "11.24,-3.83,60.6"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["GenId"] = 3057004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["Pos"] = "24.45,-3.83,60.37"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 145
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["GenId"] = 3057005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["Pos"] = "24.45,-3.83,66.64"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 190
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][5]["GenId"] = 3057006
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][5]["Pos"] = "24.45,-3.83,70.73"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][5]["RotationY"] = 190
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = 3057017	
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2] = {} --------------------------------隐藏宝箱
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MinRate"] = 3001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["FixGen"] = {3057012,3057015,3057010}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = 3057002
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["Pos"] = "13.80,-1.59,44.85"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["RotationY"] = 270
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = 3057003
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["Pos"] = "11.24,-3.83,60.6"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["RotationY"] = 180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["GenId"] = 3057004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["Pos"] = "24.45,-3.83,60.37"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["RotationY"] = 145
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["GenId"] = 3057005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["Pos"] = "24.45,-3.83,66.64"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["RotationY"] = 190
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][5]["GenId"] = 3057006
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][5]["Pos"] = "24.45,-3.83,70.73"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][5]["RotationY"] = 190
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = 3057016
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3] = {} --------------------------------随机NPC
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["GenId"] = 3057002
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["Pos"] = "13.80,-1.59,44.85"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["RotationY"] = 270
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["GenId"] = 3057003
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["Pos"] = "11.24,-3.83,60.6"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["RotationY"] = 180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["GenId"] = 3057004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["Pos"] = "24.45,-3.83,60.37"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["RotationY"] = 145
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["GenId"] = 3057005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["Pos"] = "24.45,-3.83,66.64"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["RotationY"] = 190
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][5]["GenId"] = 3057006
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][5]["Pos"] = "24.45,-3.83,70.73"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][5]["RotationY"] = 190
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4] = {} --------------------------------随机NPC
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1]["GenId"] = 3057019
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1]["Pos"] = "18.19,-3.56,53.57"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1]["RotationY"] = 319
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2]["GenId"] = 3057020
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2]["Pos"] = "9.33,-3.83,67.89"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2]["RotationY"] = 94
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3]["GenId"] = 3057021
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3]["Pos"] = "24.86,-3.39,76.51"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3]["RotationY"] = 200
--------------随机事件4，5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = {1,2,3}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1] = {} ----------------------随机事件4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 3500
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["FixGen"] = {3057001,3057023}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2] = {} --------------------------------随机事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MinRate"] = 3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["FixGen"] = {3057024,3057022}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3] = {} --------------------------------随机事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3

------

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1] = {} ----------------------随机怪物
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["GenId"] = 3057002
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["Pos"] = "13.80,-1.59,44.85"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["RotationY"] = 270
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["GenId"] = 3057003
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["Pos"] = "11.24,-3.83,60.6"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["RotationY"] = 180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["GenId"] = 3057004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["Pos"] = "24.45,-3.83,60.37"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["RotationY"] = 145
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["GenId"] = 3057005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["Pos"] = "24.45,-3.83,66.64"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["RotationY"] = 190
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][5]["GenId"] = 3057006
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][5]["Pos"] = "24.45,-3.83,70.73"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][5]["RotationY"] = 190
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1]["GenId"] = 3057017	
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2] = {} --------------------------------隐藏宝箱
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["FixGen"] = {3057012,3057015,3057010}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["GenId"] = 3057002
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["Pos"] = "13.80,-1.59,44.85"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["RotationY"] = 270
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["GenId"] = 3057003
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["Pos"] = "11.24,-3.83,60.6"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["RotationY"] = 180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["GenId"] = 3057004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["Pos"] = "24.45,-3.83,60.37"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["RotationY"] = 145
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["GenId"] = 3057005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["Pos"] = "24.45,-3.83,66.64"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["RotationY"] = 190
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][5]["GenId"] = 3057006
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][5]["Pos"] = "24.45,-3.83,70.73"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][5]["RotationY"] = 190
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"][1]["GenId"] = 3057016
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3] = {} --------------------------------随机NPC
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["GenId"] = 3057002
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["Pos"] = "13.80,-1.59,44.85"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["RotationY"] = 270
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["GenId"] = 3057003
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["Pos"] = "11.24,-3.83,60.6"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["RotationY"] = 180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["GenId"] = 3057004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["Pos"] = "24.45,-3.83,60.37"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["RotationY"] = 145
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["GenId"] = 3057005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["Pos"] = "24.45,-3.83,66.64"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["RotationY"] = 190
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][5]["GenId"] = 3057006
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][5]["Pos"] = "24.45,-3.83,70.73"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][5]["RotationY"] = 190
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4] = {} --------------------------------随机NPC
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1]["GenId"] = 3057019
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1]["Pos"] = "18.19,-3.56,53.57"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1]["RotationY"] = 319
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2]["GenId"] = 3057020
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2]["Pos"] = "9.33,-3.83,67.89"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2]["RotationY"] = 94
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3]["GenId"] = 3057021
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3]["Pos"] = "24.86,-3.39,76.51"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3]["RotationY"] = 0
--------------随机事件4，5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1] = {} ----------------------随机事件4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["FixGen"] = {3057001,3057023}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2] = {} --------------------------------随机事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["FixGen"] = {3057024,3057022}		
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3] = {} --------------------------------什么都不生成
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["Value"] = 3
																

--副本目标
--rwtTarget[nTarget1] = {}
--rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20017]
--rwtTarget[nTarget1]["KillMonsterGroup"] = nMonsterGroupId_1
--rwtTarget[nTarget1]["ReqCount"] = 1

rwtTarget[nTarget2] = {}
rwtTarget[nTarget2]["Title"] = tLuaText[LANGUAGE_CONFIG][20017]
rwtTarget[nTarget2]["ReqTreasureBox"] = nTreasyreBoxId_1
rwtTarget[nTarget2]["ReqCount"] = 1


