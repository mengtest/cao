--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--经验副本（噩梦）

--endregion

-------------------------------------------- 数据定义 ----------------------------------------------
--副本ID
local nCopyMapId = 3062
local nTempDataId = 1121

--采集
local nBox_Pass = 40115
local nBox_Pass_Gen = 3062001
local nBox_Hide = 40116
local nBox_Hide_Gen = 3062002

local nBox_1 = 40237
local nBox_1_Gen = 3062019   		--随机事件4
local nBox_2 = 40238
local nBox_2_Gen = 3062020			--随机事件5

local nCollect_1 = 60155
local nCollect_2 = 60156

local nCollect_1_Gen = 3062003
local nCollect_2_Gen = 3062004
local nCollect_3_Gen = 3062005
local nCollect_4_Gen = 3062006
local nCollect_6_Gen = 3062018
local nCollect_5_Gen = 3062007				--怪物的

--NPC
local nNpc_JingLing_1 = 3346  --男
local nNpc_JingLing_2 = 3467  --女

local nNpcGroup_JingLing_1 = 20375
local nNpcGroup_JingLing_2 = 20458

local nNpcGroup_JingLing1_Gen = 3062008
local nNpcGroup_JingLing2_Gen = 3062009
local nNpcGroup_JingLing3_Gen = 3062010
local nNpcGroup_JingLing4_Gen = 3062011
local nNpcGroup_JingLing5_Gen = 3062012				--女


--机关  Value： 1047    GEN：3062016

--开宝箱逻辑验证
local tAwardGenId = {3062002,3062003,3062004,3062005,3062006,3062007,3062008,3062009,3062010,3062011,3062012,3062013,3062015,3062018,3062019,3062020,3062021}

--怪物

local nMonster_1 = 1000333							--气泡：100142  绿林花妖
local nMonsterGroup_1 = 200316
local nMonsterGroup_1_Gen = 3062013

local nMonster_2 = 1000499						     --气泡 100172  石像鬼塔比瑟
local nMonsterGroup_2 = 200344
local nMonsterGroup_2_Gen = 3062014

local nMonster_3 = 1000807						     --气泡 100262  女巫孤魂  10057   
local nMonsterGroup_3 = 200485
local nMonsterGroup_3_Gen = 3062021

--陷阱
local nTrap = 30485
local nTrap_Gen = 3062015
local nTrap_GuanXiao = 60157
local nTrap_Gen_GuanXiao = 3062017

--对白*9
local tDialog_1 = {5337,5740,5741,5742,5786} 	--进副本
-- local nDialog_2 = {5338,5787,5788,5789,5790} 	--战前对白（绿林花妖）
-- local nDialog_3 = {5339} 	--战后对白（绿林花妖） 5791,5792,5793,5794
local tDialog4 = {5340,5693,5694,5695,5696}		--宝箱判断
local tDialog5 = {5341,5697,5698,5699,5700}	 	--精灵对话
local tDialog6 = {5342,5701,5702,5703,5704,5706,5707}	 	--通关对白
local tDialog7 = {5705}	 	--随机事件3采集怪物 5706,5707,5708,5709
local tDialog8 = {5710,5711,5712,5713,5714}		--随机事件3-2战斗后触发
local tDialog9 = {5715,5716,5717}		--随机事件2有兰奇  ,5718,5719
local tDialog10 = {5720,5721,5722}	--随机事件2没有兰奇 ,5723,5724
local tDialog11 = {5725,5726,5727,5728,5729}	--随机事件3陷阱触发
local tDialog12 = {5730,5731,5732}	--随机事件3开宝箱触发：没有精灵公主 ,5733,5734
local tDialog13 = {5735,5736,5737}	--随机事件3开宝箱触发：有精灵公主 ,5738,5739
 

------------------------奖励
--宝箱 通关 隐藏
local nAward_Box_1 = 1000154
local nAward_Box_2 = 1000155 				--无精灵公主
local nAward_Box_3 = 1000158 				--有精灵公主
local nAward_Box_ShouHu_1 = 1000450			--随机事件4
local nAward_Box_ShouHu_2 = 1000451			--随机事件5


--经验球 
local nAward_Collect_1 = 1000156
local nAward_Collect_2 = 1000157


--精灵对话
local nAward_NPC_1 = 1000160  	--男精灵
local nAward_NPC_2 = 1000161	--女精灵 有兰奇
local nAward_NPC_3 = 1000162	--女精灵 没兰奇


-------------------------------------------- 配置 ----------------------------------------------

--------------------固定事件

--通关宝箱
rwtNpcGroup[nBox_Pass] = rwtNpcGroup[nBox_Pass] or {}  
rwtNpcGroup[nBox_Pass]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_Pass]["NotDel"] = 1
rwtNpcGroup[nBox_Pass]["Awards"] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tAwardGenId
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}  --失败对白
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog4
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog6
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["DynDelete"] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["DynDelete"][1] = nBox_Pass_Gen
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Pass
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_1
rwtNpcGroup[nBox_Pass]["ChooseAwards"] = {}  --强制打开通关宝箱奖励
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog6
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["DynDelete"][1] = nBox_Pass_Gen
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Pass
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_1

rwtDialog[tDialog4[1]] = rwtDialog[tDialog4[1]] or {}
rwtDialog[tDialog4[1]]["OptionFunc2"] = function()
    LinkTreasureBoxOpenSucc(nBox_Pass,nBox_Pass_Gen,1)
end

rwtDialog[tDialog4[2]] = rwtDialog[tDialog4[1]]
rwtDialog[tDialog4[3]] = rwtDialog[tDialog4[1]]
rwtDialog[tDialog4[4]] = rwtDialog[tDialog4[1]]
rwtDialog[tDialog4[5]] = rwtDialog[tDialog4[1]]

--采集物
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}    
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["CollectTime"] = 1
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Collect_1
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_1
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS


--男精灵对话的奖励
rwtNpcGroup[nNpcGroup_JingLing_1] = rwtNpcGroup[nNpcGroup_JingLing_1] or {}
rwtNpcGroup[nNpcGroup_JingLing_1]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNpcGroup_JingLing_1]["Awards"] = {}
rwtNpcGroup[nNpcGroup_JingLing_1]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_JingLing_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_JingLing_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_JingLing_1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog5


rwtDialog[tDialog5[1]] = rwtDialog[tDialog5[1]] or {}
rwtDialog[tDialog5[1]]["DialogEndInit"] = {}
rwtDialog[tDialog5[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog5[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog5[1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialog5[1]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[tDialog5[1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog5[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog5[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_NPC_1
rwtDialog[tDialog5[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialog5[2]] = rwtDialog[tDialog5[1]]
rwtDialog[tDialog5[3]] = rwtDialog[tDialog5[1]]
rwtDialog[tDialog5[4]] = rwtDialog[tDialog5[1]]
rwtDialog[tDialog5[5]] = rwtDialog[tDialog5[1]]


--------------------随机事件1

--采集物
rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}
rwtNpcGroup[nCollect_2]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_2]["CollectTime"] = 1
rwtNpcGroup[nCollect_2]["NotDel"] = 1
rwtNpcGroup[nCollect_2]["Awards"] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog7

--对话后战斗
rwtDialog[tDialog7[1]] = rwtDialog[tDialog7[1]] or {}
rwtDialog[tDialog7[1]]["DialogEndInit"] = {}
rwtDialog[tDialog7[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog7[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog7[1]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog7[1]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGroup_2_Gen


--战斗后对白
function DailyCopyMap_Material_Crazy_CaiJi()
	local nIndex = math.random(1,5)
	rwOpenNpcChatDialog(tDialog8[nIndex])
	if rwHasGenEvent(nCollect_5_Gen) then
		rwDelGenEvent(nCollect_5_Gen)
    end
end

rwtMonsterGroup_Func[nMonsterGroup_2] = rwtMonsterGroup_Func[nMonsterGroup_2] or {} 
table.insert(rwtMonsterGroup_Func[nMonsterGroup_2],DailyCopyMap_Material_Crazy_CaiJi)


--------------------随机事件2

--与NPC对话
rwtNpcGroup[nNpcGroup_JingLing_2] = rwtNpcGroup[nNpcGroup_JingLing_2] or {}
rwtNpcGroup[nNpcGroup_JingLing_2]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNpcGroup_JingLing_2]["Awards"] = {}
rwtNpcGroup[nNpcGroup_JingLing_2]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_JingLing_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_JingLing_2]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {103}
rwtNpcGroup[nNpcGroup_JingLing_2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_JingLing_2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog9
rwtNpcGroup[nNpcGroup_JingLing_2]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[nNpcGroup_JingLing_2]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_JingLing_2]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog10


rwtDialog[tDialog9[1]] = rwtDialog[tDialog9[1]] or {}
rwtDialog[tDialog9[1]]["DialogEndInit"] = {}
rwtDialog[tDialog9[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog9[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog9[1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialog9[1]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[tDialog9[1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog9[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog9[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_NPC_2
rwtDialog[tDialog9[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialog9[2]] = rwtDialog[tDialog9[1]]
rwtDialog[tDialog9[3]] = rwtDialog[tDialog9[1]]

rwtDialog[tDialog10[1]] = rwtDialog[tDialog10[1]] or {}
rwtDialog[tDialog10[1]]["DialogEndInit"] = {}
rwtDialog[tDialog10[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog10[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog10[1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialog10[1]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[tDialog10[1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog10[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog10[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_NPC_3
rwtDialog[tDialog10[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialog10[2]] = rwtDialog[tDialog10[1]]
rwtDialog[tDialog10[3]] = rwtDialog[tDialog10[1]]



--------------------随机事件3

--陷阱
rwtNpcGroup[nTrap] = rwtNpcGroup[nTrap] or {}
rwtNpcGroup[nTrap]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap]["DelTrap"] = 1
rwtNpcGroup[nTrap]["Awards"] = {}  
rwtNpcGroup[nTrap]["Awards"]["Events"] = {}    
rwtNpcGroup[nTrap]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["DynCreate"] = {nBox_Hide_Gen} 
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog11
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["DynDelete"] = {nTrap_Gen_GuanXiao} 
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["AddEffect"] = {}  
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["AddEffect"][1] = {}  
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["AddEffect"][1]["TargetId"] = 0 
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["AddEffect"][1]["EffectId"] = 2054 
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["AddEffect"][1]["Pos"] = "705,12.71,197.8"
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["AddEffect"][1]["Angle"] = 0

--随机宝箱
rwtNpcGroup[nBox_Hide] = rwtNpcGroup[nBox_Hide] or {} 
rwtNpcGroup[nBox_Hide]["InterfaceFunc"]= function(nGroupTypeId,nNpcTypeId,nGenEventId)
	local nIndex = math.random(1,5)
	local nIsHero = false
	local tHeroTable = rwHeroGetAllInFight()
	for var=1,#tHeroTable do
		if tHeroTable[var] == 105 then
			nIsHero = true
		end
	end
	
	if nIsHero then
		rwOpenNpcChatDialog(tDialog13[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
	else
		rwOpenNpcChatDialog(tDialog12[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
	end
end

rwtDialog[tDialog13[1]] = rwtDialog[tDialog13[1]] or {}
rwtDialog[tDialog13[1]]["DialogEndInit"] = {}
rwtDialog[tDialog13[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog13[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog13[1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {nBox_Hide_Gen}
rwtDialog[tDialog13[1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog13[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog13[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_3
rwtDialog[tDialog13[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX

rwtDialog[tDialog13[2]] = rwtDialog[tDialog13[1]]
rwtDialog[tDialog13[3]] = rwtDialog[tDialog13[1]]


rwtDialog[tDialog12[1]] = rwtDialog[tDialog12[1]] or {}
rwtDialog[tDialog12[1]]["DialogEndInit"] = {}
rwtDialog[tDialog12[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog12[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog12[1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {nBox_Hide_Gen}
rwtDialog[tDialog12[1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog12[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog12[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_2
rwtDialog[tDialog12[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX

rwtDialog[tDialog12[2]] = rwtDialog[tDialog12[1]]
rwtDialog[tDialog12[3]] = rwtDialog[tDialog12[1]]


--------------------随机事件4

rwtNpcGroup[nBox_1] = rwtNpcGroup[nBox_1] or {} 
rwtNpcGroup[nBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_1]["Awards"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_1
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_ShouHu_1   


--------------------随机事件5

rwtNpcGroup[nBox_2] = rwtNpcGroup[nBox_2] or {} 
rwtNpcGroup[nBox_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_2]["Awards"] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_2
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_ShouHu_2   


--------------------------------------- 副本初始化 ---------------------------------------

rwtTarget[60097] = {}
rwtTarget[60097]["Title"] = tLuaText[LANGUAGE_CONFIG][20003]
rwtTarget[60097]["ReqTreasureBox"] = 40115
rwtTarget[60097]["ReqCount"] = 1

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Exp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10043]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60097}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

--副本固定配置

rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["DataIndex"] = CONST_TEMP_DATA.Data2

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_1

--副本随机事件配置
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = {1,2,3}

--随机事件事件1：4采集经验球+1个怪物
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = nCollect_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["Pos"] = "702.84,13.81,188.79"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = nCollect_2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["Pos"] = "741.08,13.21,182.68"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["GenId"] = nCollect_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["Pos"] = "754.17,11.64,175.25"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["GenId"] = nCollect_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["Pos"] = "741.525,11.4,172.46"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][5]["GenId"] = nCollect_6_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][5]["Pos"] = "734.18,12.07,186.19"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][5]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = nCollect_5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = nNpcGroup_JingLing1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = nNpcGroup_JingLing2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["GenId"] = nNpcGroup_JingLing3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["GenId"] = nNpcGroup_JingLing4_Gen


--事件2：随机NPC 5个点3男 1女 1空
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["GenId"] = nNpcGroup_JingLing1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["Pos"] = "747,12.21,179.32"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["RotationY"] = 150
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["GenId"] = nNpcGroup_JingLing2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["Pos"] = "748.45,10.79,195.94"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["RotationY"] = 200
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["GenId"] = nNpcGroup_JingLing3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["Pos"] = "708.70,12.71,182.67"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["RotationY"] = 110
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["GenId"] = nNpcGroup_JingLing4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["Pos"] = "740,10.79,193.91"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["RotationY"] = 170
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tOtherGenId"][1]["GenId"] = nNpcGroup_JingLing5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1]["GenId"] = nCollect_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2]["GenId"] = nCollect_2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3]["GenId"] = nCollect_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][4]["GenId"] = nCollect_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][5]["GenId"] = nCollect_6_Gen


--事件3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][1]["GenId"] = nTrap_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][2]["GenId"] = nTrap_Gen_GuanXiao

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][1]["GenId"] = nNpcGroup_JingLing1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][2]["GenId"] = nNpcGroup_JingLing2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][3]["GenId"] = nNpcGroup_JingLing3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][4]["GenId"] = nNpcGroup_JingLing4_Gen


rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["tGenId"][1]["GenId"] = nCollect_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["tGenId"][2]["GenId"] = nCollect_2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["tGenId"][3]["GenId"] = nCollect_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["tGenId"][4]["GenId"] = nCollect_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["tGenId"][5]["GenId"] = nCollect_6_Gen

--事件4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = {1,2,3}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MinRate"] =  0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MaxRate"] =  3500
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["FixGen"] = {nBox_1_Gen,nMonsterGroup_1_Gen}


--事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MinRate"] =  3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MaxRate"] =  5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["FixGen"] = {nBox_2_Gen,nMonsterGroup_3_Gen}

--事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MinRate"] =  5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MaxRate"] =  10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2



--事件1：4采集经验球+1个怪物
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["GenId"] = nCollect_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["Pos"] = "702.84,13.81,188.79"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["GenId"] = nCollect_2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["Pos"] = "741.08,13.21,182.68"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["GenId"] = nCollect_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["Pos"] = "754.17,11.64,175.25"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["GenId"] = nCollect_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["Pos"] = "741.525,11.4,172.46"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][5]["GenId"] = nCollect_6_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][5]["Pos"] = "734.18,12.07,186.19"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][5]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1]["GenId"] = nCollect_5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["GenId"] = nNpcGroup_JingLing1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["GenId"] = nNpcGroup_JingLing2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["GenId"] = nNpcGroup_JingLing3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["GenId"] = nNpcGroup_JingLing4_Gen
--事件2：随机NPC 5个点3男 1女 1空

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["GenId"] = nNpcGroup_JingLing1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["Pos"] = "747,12.21,179.32"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["RotationY"] = 150
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["GenId"] = nNpcGroup_JingLing2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["Pos"] = "748.45,10.79,195.94"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["RotationY"] = 200
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["GenId"] = nNpcGroup_JingLing3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["Pos"] = "708.70,12.71,182.67"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["RotationY"] = 110
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["GenId"] = nNpcGroup_JingLing4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["Pos"] = "740,10.79,193.91"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["RotationY"] = 170
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tOtherGenId"][1]["GenId"] = nNpcGroup_JingLing5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1]["GenId"] = nCollect_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2]["GenId"] = nCollect_2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3]["GenId"] = nCollect_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][4]["GenId"] = nCollect_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][5]["GenId"] = nCollect_6_Gen

--事件3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1]["GenId"] = nTrap_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2]["GenId"] = nTrap_Gen_GuanXiao

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][1]["GenId"] = nNpcGroup_JingLing1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][2]["GenId"] = nNpcGroup_JingLing2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][3]["GenId"] = nNpcGroup_JingLing3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][4]["GenId"] = nNpcGroup_JingLing4_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["tGenId"][1]["GenId"] = nCollect_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["tGenId"][2]["GenId"] = nCollect_2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["tGenId"][3]["GenId"] = nCollect_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["tGenId"][4]["GenId"] = nCollect_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["tGenId"][5]["GenId"] = nCollect_6_Gen

--事件4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["FixGen"] = {nBox_1_Gen,nMonsterGroup_1_Gen}

--事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["FixGen"] = {nBox_2_Gen,nMonsterGroup_3_Gen}	

--事件6
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["Value"] = 3			




-------------------------------------------- 废弃 ----------------------------------------------

-- rwtTarget[60096] = {}
-- rwtTarget[60096]["Title"] =tLuaText[LANGUAGE_CONFIG][20002]
-- rwtTarget[60096]["KillMonsterGroup"] = 200316
-- rwtTarget[60096]["ReqCount"] = 1

--判断NPC对话
-- rwtNpcGroup[nNpcGroup_JingLing_2]["InterfaceFunc"]= function(nGroupTypeId,nNpcTypeId,nGenEventId)
-- 	local nIndex = math.random(1,5)
-- 	local nIsHero = false
-- 	local tHeroTable = rwHeroGetAllInFight()
-- 	for var=1,#tHeroTable do
-- 		if tHeroTable[var] == 103 then
-- 			nIsHero = true
-- 		end
-- 	end
	
-- 	if nIsHero then
-- 		rwOpenNpcChatDialog(tDialog9[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 	else
-- 		rwOpenNpcChatDialog(tDialog10[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 	end
-- end

--战斗事件对白: 100084 100085

--精灵
-- local tNPC_Gen = {}
-- tNPC_Gen[20375] = 3062007
-- tNPC_Gen[20376] = 3062008
-- tNPC_Gen[20377] = 3062009

-- local tDialogs = {5341,5421,5422}


-- local nCollect_3 = 60157
-- local nCollect_4 = 60158
-- local nCollect_5 = 60251

--3489 绿林花妖

-- local nNpcGroup_JingLing_3 = 20377
-- local nNpcGroup_JingLing_4 = 20458

-- local nNpcGroup_JingLing1_Gen = 3062008      150
-- local nNpcGroup_JingLing2_Gen = 3062009		200
-- local nNpcGroup_JingLing3_Gen = 3062010		110
-- local nNpcGroup_JingLing4_Gen = 3062011		170
-- local nNpcGroup_JingLing5_Gen = 3062012		150			--女


-- local nAward_Collect_3 = 1000158
-- local nAward_Collect_4 = 1000159

