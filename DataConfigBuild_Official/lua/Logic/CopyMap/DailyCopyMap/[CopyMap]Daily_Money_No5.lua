                                    --region *.lua
--Date
--此文件由[BabeLua]插件自动生成


--endregion

-------------------------------------------- 数据定义 ----------------------------------------------
--副本ID
local nCopyMapId = 3136

local nTarget1 = 60300
--宝箱
local nCollect_1 = 60447 
local nCollect_2 = 60448
local nCollect_3 = 60449
local nCollect_4 = 60450
local nCollect_5 = 60451
local nCollect_Pass = 60452

local nCollect_1_Gen = 3136001
local nCollect_2_Gen = 3136002
local nCollect_3_Gen = 3136003
local nCollect_4_Gen = 3136004
local nCollect_5_Gen = 3136005
local nCollect_Pass_Gen = 3136006


--怪物
local nMonster_1 = 1000984							--气泡： 100301  
local nMonsterGroup_1 = 200667
local nMonsterGroup_1_Gen = 3136007

local nMonster_2 = 1000985						     --气泡  100302  
local nMonsterGroup_2 = 200668
local nMonsterGroup_2_Gen = 3136008

local nMonster_3 = 1000986						     --气泡  100303       
local nMonsterGroup_3 = 200669
local nMonsterGroup_3_Gen = 3136009

local nMonster_4 = 1000987							--气泡： 100304  
local nMonsterGroup_4 = 200670
local nMonsterGroup_4_Gen = 3136010

local nMonster_5 = 1000988						     --气泡  100305  
local nMonsterGroup_5 = 200671
local nMonsterGroup_5_Gen = 3136011

local nMonster_6 = 1000989						     --气泡  100306       
local nMonsterGroup_6 = 200672
local nMonsterGroup_6_Gen = 3136012

local nMonster_7 = 1000990							--气泡： 100307  
local nMonsterGroup_7 = 200673
local nMonsterGroup_7_Gen = 3136013

local nMonster_8 = 1000991						     --气泡  100308  
local nMonsterGroup_8 = 200674
local nMonsterGroup_8_Gen = 3136014

--奖励
local nAward_Box_1 = 1000554
local nAward_Box_2 = 1000555 				
local nAward_Box_3 = 1000556 	
local nAward_Box_4 = 1000557 	
local nAward_Box_5 = 1000558 	

local nAward_Box_Pass = 1000559 


-------------------------------------------- 数据定义 ----------------------------------------------

rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}    
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["CollectTime"] = 2
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_1
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_1
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}    
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_2]["CollectTime"] = 2
rwtNpcGroup[nCollect_2]["Awards"] = {}  
rwtNpcGroup[nCollect_2]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_2
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_2
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollect_3] = rwtNpcGroup[nCollect_3] or {}    
rwtNpcGroup[nCollect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_3]["CollectTime"] = 2
rwtNpcGroup[nCollect_3]["Awards"] = {}  
rwtNpcGroup[nCollect_3]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_3
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_3
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollect_4] = rwtNpcGroup[nCollect_4] or {}    
rwtNpcGroup[nCollect_4]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_4]["CollectTime"] = 2
rwtNpcGroup[nCollect_4]["Awards"] = {}  
rwtNpcGroup[nCollect_4]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_4
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_4
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollect_5] = rwtNpcGroup[nCollect_5] or {}    
rwtNpcGroup[nCollect_5]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_5]["CollectTime"] = 2
rwtNpcGroup[nCollect_5]["Awards"] = {}  
rwtNpcGroup[nCollect_5]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_5
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_5
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

--通关宝箱
rwtNpcGroup[nCollect_Pass] = rwtNpcGroup[nCollect_Pass] or {}    
rwtNpcGroup[nCollect_Pass]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_Pass]["CollectTime"] = 3
rwtNpcGroup[nCollect_Pass]["Awards"] = {}  
rwtNpcGroup[nCollect_Pass]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollect_Pass]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollect_Pass]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_Pass]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_Pass
rwtNpcGroup[nCollect_Pass]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCollect_Pass
rwtNpcGroup[nCollect_Pass]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_Pass]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[nCollect_Pass]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_Pass]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6878

rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][21809]
rwtTarget[nTarget1]["ReqCollectId"] = nCollect_Pass
rwtTarget[nTarget1]["ReqCount"] = 1

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6877