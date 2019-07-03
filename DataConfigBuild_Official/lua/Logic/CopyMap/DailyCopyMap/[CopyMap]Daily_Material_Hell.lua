--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--每日材料副本_地狱
--By:Syl


--endregion

-------------------------------------------- 数据定义 ----------------------------------------------
--副本ID
local nCopyMapId = 3094
local nTempDataId = 1173

--宝箱
local nBox_Pass = 40207
local nBox_Pass_Gen = 3094001

local nBox_1 = 40208
local nBox_1_Gen = 3094002
local nBox_3_Gen = 3094004
local nBox_4_Gen = 3094005
local nBox_5_Gen = 3094006

local nBox_2 = 40233
local nBox_2_Gen = 3094003   		--随机事件4
local nBox_6 = 40234
local nBox_6_Gen = 3094020			--随机事件5

--采集
local nCollect_1 = 60348 					--战艇
local nCollect_2 = 60349 				--生成怪物

local nCollect_1_Gen = 3094007
local nCollect_2_Gen = 3094008
local nCollect_3_Gen = 3094009 
local nCollect_4_Gen = 3094010 
local nCollect_5_Gen = 3094011 
local nCollect_6_Gen = 3094017 

--陷阱
local nNpcGroup_Trap1 = 30607						
local nNpcGroup_GenId_Trap1 = 3094018

local tAwardGenId = {3094002,3094003,3094004,3094005,3094007,3094008,3094009,3094010,3094011,3094017,3094012,3094018,3094013,3094014,3094015,3094016,3094006,3094020,3094021,3094022}

--怪物
local nMonster_1 = 1000753					 --摩尼耶  52013  冒泡：100236
local nMonsterGroup_1 = 200449
local nMonsterGroup_1_Gen = 3094013

   
local nMonster_2 = 1000754					 --枭鹰：陷阱怪物  52012
local nMonsterGroup_2 = 200450
local nMonsterGroup_2_Gen = 3094014


local nMonster_3 = 1000755 					--黑龙舰兵：采集怪物  52015
local nMonsterGroup_3 = 200451
local nMonsterGroup_3_Gen = 3094015

local nMonster_4 = 1000754 					--场景动画 
local nMonsterGroup_4 = 200450
local nMonsterGroup_4_Gen = 3094021

local nMonster_5 = 1000785 					--随机事件5 冒泡：100244    52022   战舰守卫者
local nMonsterGroup_5 = 200482
local nMonsterGroup_5_Gen = 3094022

--NPC
local nNpc_FuLaiTe = 3383 --弗莱特
local nNpc_MiLanDa = 3386 --米兰达
-- local nNpc_MoNiYe = 3688 --摩尼耶
local nNpc_XiaoYingNiTan = 3689 --枭鹰妮妲


local nNpcGroup_NPC1 = 20608
local nNpcGroup_NPC1_Gen = 3094016

--机关
local nValue = 1084
local nValue_Gen = 3094019

--对白
local tDialog_1 = {6532,6533,6534,6535,6536}    --进副本对白
-- local tDialog_2 = {6537,6538,6539,6540,6541}    --战前对白 必然事件:战前： 100225
-- local tDialog_3 = {6542,6543,6544,6545,6546}    --战后对白 必然事件
local tDialog_4 = {6547,6548,6549,6550,6551}    --开启宝箱失败对白
local tDialog_5 = {6552,6553,6554,6555,6556,6557,6558}    --通关对白
local tDialog_6 = {6559,6560,6561,6562,6563}    --进陷阱对白：随机事件1
local tDialog_7 = {6564,6565,6566,6567,6568}    --采集对白：随机事件2
local tDialog_8 = {6569,6570,6571}    --有米兰达时：随机事件3
local tDialog_9 = {6572,6573,6574}    --无米兰达时：随机事件3


----奖励

--宝箱
local nAward_Box_Pass = 1000405  			--通关宝箱
local nAward_Box_1 = 1000406				--普通宝箱
local nAward_Box_ShouHu_1 = 1000442				--精英怪宝箱
local nAward_Box_ShouHu_2 = 1000443				--首领怪宝箱


--采集物
local nAward_Collect_1 = 1000407			--普通采集
local nAward_monster_2 = 1000444			--随机事件2

--NPC奖励
local nAward_NPC_1 = 1000408			--有米兰达
local nAward_NPC_2 = 1000409			--没有米兰达

--随机事件1：怪物
local nAward_monster_1 = 1000445


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
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog_4
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_5
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["DynDelete"] = {nBox_Pass_Gen}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Pass
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_Pass
rwtNpcGroup[nBox_Pass]["ChooseAwards"] = {}  --强制打开通关宝箱奖励
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_5
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["DynDelete"] = {nBox_Pass_Gen} 
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Pass
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_Pass

rwtDialog[tDialog_4[1]] = rwtDialog[tDialog_4[1]] or {}
rwtDialog[tDialog_4[1]]["OptionFunc2"] = function()
    LinkTreasureBoxOpenSucc(nBox_Pass,nBox_Pass_Gen,1)
end

rwtDialog[tDialog_4[2]] = rwtDialog[tDialog_4[1]]
rwtDialog[tDialog_4[3]] = rwtDialog[tDialog_4[1]]
rwtDialog[tDialog_4[4]] = rwtDialog[tDialog_4[1]]
rwtDialog[tDialog_4[5]] = rwtDialog[tDialog_4[1]]


--宝箱
rwtNpcGroup[nBox_1] = rwtNpcGroup[nBox_1] or {} 
rwtNpcGroup[nBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_1]["Awards"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_1
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_1   

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

--------------------随机事件1
 
rwtNpcGroup[nNpcGroup_Trap1] = rwtNpcGroup[nNpcGroup_Trap1] or {}
rwtNpcGroup[nNpcGroup_Trap1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nNpcGroup_Trap1]["DelTrap"] = 1
rwtNpcGroup[nNpcGroup_Trap1]["Awards"] = {}  
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"] = {}    
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 17008
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
-- rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["DynDelete"] = {nNpcGroup_GenId_Trap1}

function DailyCopyMap_Material_Hell_CGEnd()
	local nIndex = math.random(1, 5)
	rwOpenNpcChatDialog(tDialog_6[nIndex])
end
rwtCGFinish[17008] = rwtCGFinish[17008] or {}
table.insert(rwtCGFinish[17008],DailyCopyMap_Material_Hell_CGEnd)


rwtDialog[tDialog_6[1]] = rwtDialog[tDialog_6[1]] or {}
rwtDialog[tDialog_6[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_6[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_6[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_6[1]]["DialogEndInit"]["Events"][1]["DynCreate"] = {nMonsterGroup_2_Gen}
rwtDialog[tDialog_6[1]]["DialogEndInit"]["Events"][2] = {}
rwtDialog[tDialog_6[1]]["DialogEndInit"]["Events"][2]["AutoBattle"] = {}
rwtDialog[tDialog_6[1]]["DialogEndInit"]["Events"][2]["AutoBattle"]["GenId"] = nMonsterGroup_2_Gen

rwtDialog[tDialog_6[2]] = rwtDialog[tDialog_6[1]]
rwtDialog[tDialog_6[3]] = rwtDialog[tDialog_6[1]]
rwtDialog[tDialog_6[4]] = rwtDialog[tDialog_6[1]]
rwtDialog[tDialog_6[5]] = rwtDialog[tDialog_6[1]]

rwtMonsterGroup[nMonsterGroup_2] = rwtMonsterGroup[nMonsterGroup_2] or {}
rwtMonsterGroup[nMonsterGroup_2]["BattleLose"] = function (nMonsterGroupId,nMonsterGroupType,nGenId)
	if not rwHasGenEvent(nMonsterGroup_4_Gen) then
		rwAddGenEvent(nMonsterGroup_4_Gen)
	end
	if rwHasGenEvent(nMonsterGroup_2_Gen) then
		rwDelGenEvent(nMonsterGroup_2_Gen)
	end
end

rwtMonsterGroup[nMonsterGroup_2]["BattleEscape"] = function (nMonsterGroupId,nMonsterGroupType,nGenId)
	if not rwHasGenEvent(nMonsterGroup_4_Gen) then
		rwAddGenEvent(nMonsterGroup_4_Gen)
	end
	if rwHasGenEvent(nMonsterGroup_2_Gen) then
		rwDelGenEvent(nMonsterGroup_2_Gen)
	end
end

--------------------随机事件2

rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}    
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_2]["NotDel"] = 1
rwtNpcGroup[nCollect_2]["CollectTime"] = 1
rwtNpcGroup[nCollect_2]["Awards"] = {}  
rwtNpcGroup[nCollect_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_7

rwtDialog[tDialog_7[1]] = rwtDialog[tDialog_7[1]] or {}
rwtDialog[tDialog_7[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_7[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_7[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_7[1]]["DialogEndInit"]["Events"][1]["DynCreate"] = {nMonsterGroup_3_Gen}
rwtDialog[tDialog_7[1]]["DialogEndInit"]["Events"][2] = {}
rwtDialog[tDialog_7[1]]["DialogEndInit"]["Events"][2]["AutoBattle"] = {}
rwtDialog[tDialog_7[1]]["DialogEndInit"]["Events"][2]["AutoBattle"]["GenId"] = nMonsterGroup_3_Gen

rwtDialog[tDialog_7[2]] = rwtDialog[tDialog_7[1]]
rwtDialog[tDialog_7[3]] = rwtDialog[tDialog_7[1]]
rwtDialog[tDialog_7[4]] = rwtDialog[tDialog_7[1]]
rwtDialog[tDialog_7[5]] = rwtDialog[tDialog_7[1]]

function DailyCopyMap_Material_Hell_CaiJi()
	if rwHasGenEvent(nCollect_6_Gen) then
		rwDelGenEvent(nCollect_6_Gen)
	end
end

rwtMonsterGroup_Func[nMonsterGroup_3] = rwtMonsterGroup_Func[nMonsterGroup_3] or {} 
table.insert(rwtMonsterGroup_Func[nMonsterGroup_3],DailyCopyMap_Material_Hell_CaiJi)


--------------------随机事件3

--NPC对话
rwtNpcGroup[nNpcGroup_NPC1] = rwtNpcGroup[nNpcGroup_NPC1] or {}
rwtNpcGroup[nNpcGroup_NPC1]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNpcGroup_NPC1]["Awards"] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {112}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_8
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog_9
--有米兰达
rwtDialog[tDialog_8[1]] = rwtDialog[tDialog_8[1]] or {}
rwtDialog[tDialog_8[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_8[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_8[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_8[1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {nNpcGroup_NPC1_Gen}
rwtDialog[tDialog_8[1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog_8[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog_8[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_NPC_1
rwtDialog[tDialog_8[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialog_8[2]] = rwtDialog[tDialog_8[1]]
rwtDialog[tDialog_8[3]] = rwtDialog[tDialog_8[1]]
--没有米兰达
rwtDialog[tDialog_9[1]] = rwtDialog[tDialog_9[1]] or {}
rwtDialog[tDialog_9[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {nNpcGroup_NPC1_Gen}
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_NPC_2
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialog_9[2]] = rwtDialog[tDialog_9[1]]
rwtDialog[tDialog_9[3]] = rwtDialog[tDialog_9[1]]


--------------------随机事件4
rwtNpcGroup[nBox_2] = rwtNpcGroup[nBox_2] or {} 
rwtNpcGroup[nBox_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_2]["Awards"] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_2
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_ShouHu_1   


--------------------随机事件5
rwtNpcGroup[nBox_6] = rwtNpcGroup[nBox_6] or {} 
rwtNpcGroup[nBox_6]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_6]["Awards"] = {}
rwtNpcGroup[nBox_6]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_6]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_6
rwtNpcGroup[nBox_6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_ShouHu_2   


--------------------------------------- 副本初始化 ---------------------------------------
-- rwtTarget[60174] = {}
-- rwtTarget[60174]["Title"] = tLuaText[LANGUAGE_CONFIG][21586]
-- rwtTarget[60174]["KillMonsterGroup"] = nMonsterGroup_1
-- rwtTarget[60174]["ReqCount"] = 1
           
rwtTarget[60175] = {}
rwtTarget[60175]["Title"] = tLuaText[LANGUAGE_CONFIG][21586]
rwtTarget[60175]["ReqTreasureBox"] = nBox_Pass
rwtTarget[60175]["ReqCount"] = 1

--副本固定配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_PetExp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][21586]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60175}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
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

--随机事件1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MinRate"] =  0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MaxRate"] =  4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = nBox_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = nBox_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["GenId"] = nBox_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["GenId"] = nBox_5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MinRate"] =  0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MaxRate"] =  4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = nCollect_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = nCollect_2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["GenId"] = nCollect_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["GenId"] = nCollect_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][5]["GenId"] = nCollect_5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MinRate"] =  0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MaxRate"] =  4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["FixGen"] = {nNpcGroup_GenId_Trap1}


--随机事件2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["MinRate"] =  4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["MaxRate"] =  7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1]["GenId"] = nBox_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2]["GenId"] = nBox_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3]["GenId"] = nBox_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][4]["GenId"] = nBox_5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][1]["GenId"] = nCollect_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][1]["Pos"] = "-16.6,2.34,-9.4"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][1]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][2]["GenId"] = nCollect_2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][2]["Pos"] = "-16.86,1.5,10.01"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][2]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][3]["GenId"] = nCollect_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][3]["Pos"] = "-0.96,1.79,-9.11"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][3]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][4]["GenId"] = nCollect_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][4]["Pos"] = "-1.36,2.06,8.34"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][4]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][5]["GenId"] = nCollect_5_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][5]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][5]["Pos"] = "11.71,2.01,-0.1"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tOtherGenId"][1]["GenId"] = nCollect_6_Gen


--随机事件3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["MinRate"] =  7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["MaxRate"] =  10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][1]["GenId"] = nBox_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][2]["GenId"] = nBox_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][3]["GenId"] = nBox_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][6]["tGenId"][4]["GenId"] = nBox_5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["MinRate"] =  7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["MaxRate"] =  10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["RandomNum"] = 4
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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][7]["tGenId"][5]["GenId"] = nCollect_5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][8] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][8]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][8]["MinRate"] =  7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][8]["MaxRate"] =  10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][8]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][8]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][8]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][8]["FixGen"] = {nNpcGroup_NPC1_Gen}

--随机事件4

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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["FixGen"] = {nBox_2_Gen,nMonsterGroup_1_Gen}

--随机事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MinRate"] =  3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MaxRate"] =  5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["FixGen"] = {nBox_6_Gen,nMonsterGroup_5_Gen}

--随机事件6
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MinRate"] =  5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MaxRate"] =  10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2


--进入副本配置
--随机事件1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["GenId"] = nBox_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["GenId"] = nBox_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["GenId"] = nBox_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["GenId"] = nBox_5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["GenId"] = nCollect_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["GenId"] = nCollect_2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["GenId"] = nCollect_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["GenId"] = nCollect_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][5]["GenId"] = nCollect_5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["FixGen"] = {nNpcGroup_GenId_Trap1}


--随机事件2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1]["GenId"] = nBox_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2]["GenId"] = nBox_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3]["GenId"] = nBox_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][4]["GenId"] = nBox_5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1]["GenId"] = nCollect_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1]["Pos"] = "-16.6,2.34,-9.4"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2]["GenId"] = nCollect_2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2]["Pos"] = "-16.86,1.5,10.01"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][3]["GenId"] = nCollect_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][3]["Pos"] = "-0.96,1.79,-9.11"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][3]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][4]["GenId"] = nCollect_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][4]["Pos"] = "-1.36,2.06,8.34"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][4]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][5]["GenId"] = nCollect_5_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][5]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][5]["Pos"] = "11.71,2.01,-0.1"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tOtherGenId"][1]["GenId"] = nCollect_6_Gen

--随机事件3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][1]["GenId"] = nBox_1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][2]["GenId"] = nBox_3_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][3]["GenId"] = nBox_4_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][6]["tGenId"][4]["GenId"] = nBox_5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["RandomNum"] = 4
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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][7]["tGenId"][5]["GenId"] = nCollect_5_Gen

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][8] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][8]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][8]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][8]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][8]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][8]["FixGen"] = {nNpcGroup_NPC1_Gen}

--随机事件4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["FixGen"] = {nBox_2_Gen,nMonsterGroup_1_Gen}

--随机事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["FixGen"] = {nBox_6_Gen,nMonsterGroup_5_Gen}

--随机事件6
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["Value"] = 3


-------------------------------------------- 废弃 ----------------------------------------------
-- local nNpcGroup_Trap2 = 30608						
-- local nNpcGroup_GenId_Trap1 = 3094012



