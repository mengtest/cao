                                    --region *.lua
--Date
--此文件由[BabeLua]插件自动生成


--endregion

-------------------------------------------- 数据定义 ----------------------------------------------
--副本ID
local nCopyMapId = 3131

local nTarget1 = 60298
--宝箱
local nCollect_1 = 60435 
local nCollect_2 = 60436
local nCollect_3 = 60437
local nCollect_4 = 60438
local nCollect_5 = 60439
local nCollect_Pass = 60440

local nCollect_1_Gen = 3131001
local nCollect_2_Gen = 3131002
local nCollect_3_Gen = 3131003
local nCollect_4_Gen = 3131004
local nCollect_5_Gen = 3131005
local nCollect_Pass_Gen = 3131006


--怪物
local nMonster_1 = 1000945							--气泡： 100292  
local nMonsterGroup_1 = 200654
local nMonsterGroup_1_Gen = 3131007

local nMonster_2 = 1000946						     --气泡  100293  
local nMonsterGroup_2 = 200655
local nMonsterGroup_2_Gen = 3131008

local nMonster_3 = 1000947						     --气泡  100294       
local nMonsterGroup_3 = 200656
local nMonsterGroup_3_Gen = 3131009

local nMonster_4 = 1000948							--气泡： 100295  
local nMonsterGroup_4 = 200657
local nMonsterGroup_4_Gen = 3131010

local nMonster_5 = 1000949						     --气泡  100296  
local nMonsterGroup_5 = 200658
local nMonsterGroup_5_Gen = 3131011

local nMonster_6 = 1000950						     --气泡  100297       
local nMonsterGroup_6 = 200659
local nMonsterGroup_6_Gen = 3131012

local nMonster_7 = 1000951							--气泡： 100298  
local nMonsterGroup_7 = 200660
local nMonsterGroup_7_Gen = 3131013

local nMonster_8 = 1000952						     --气泡  100299  
local nMonsterGroup_8 = 200661
local nMonsterGroup_8_Gen = 3131014

local nMonster_9 = 1000953						     --气泡  100300       
local nMonsterGroup_9 = 200662
local nMonsterGroup_9_Gen = 3131015


--value :  1115   Gen:  3131016

--奖励
local nAward_Box_1 = 1000546
local nAward_Box_2 = 1000547 				
local nAward_Box_3 = 1000548 	
local nAward_Box_4 = 1000549 	
local nAward_Box_5 = 1000550 	

local nAward_Box_Pass = 1000551 


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
rwtNpcGroup[nCollect_Pass]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6883


rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][21810]
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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6882
