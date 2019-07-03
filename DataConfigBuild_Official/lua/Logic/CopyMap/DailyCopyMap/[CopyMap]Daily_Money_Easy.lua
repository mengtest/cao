                                    --region *.lua
--Date
--此文件由[BabeLua]插件自动生成


--endregion

----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3060
--随机事件掩码
local nTempDataId = 1122
local nTempDataId_2 = 1177

--随机棺材位置标记
local nCoffin_Mask = 1135


--尸体
local tCollectId_Corpse = {}
tCollectId_Corpse[1] = 60153
tCollectId_Corpse[2] = 60159
tCollectId_Corpse[3] = 60160

local tGenId_Corps = {}
tGenId_Corps[1]  =  3060002
tGenId_Corps[2]  =  3060003
tGenId_Corps[3]  =  3060004

local nCollectId_Random_Corpse = 60269  --随机尸体gen
local tGenId_Random_Corpse = {}
tGenId_Random_Corpse[1]  =  3060027
tGenId_Random_Corpse[2]  =  3060028
tGenId_Random_Corpse[3]  =  3060029

--棺材
local nCollectId_Coffin= 60154   
local tGenId_Coffin = {}
tGenId_Coffin[1] = 3060005
tGenId_Coffin[2] = 3060006
tGenId_Coffin[3] = 3060007                             
tGenId_Coffin[4] = 3060008

local tPos_Coffin = {}
tPos_Coffin[1] = "29.94,-0.37,-1.45"
tPos_Coffin[2] = "39.44,-2.19,15.05"
tPos_Coffin[3] = "46.34,-1.728,18.6"                             
tPos_Coffin[4] = "46.21,-1.75,24.08"

local tRotY_Coffin = {}
tRotY_Coffin[1] = -90
tRotY_Coffin[2] = -97
tRotY_Coffin[3] = 180                             
tRotY_Coffin[4] = 165

-- 随机金钱
local tCollectId_Coin = {}
tCollectId_Coin[1] = 60267
tCollectId_Coin[2] = 60273
tCollectId_Coin[3] = 60274                             
tCollectId_Coin[4] = 60275
tCollectId_Coin[5] = 60276

local tGenId_Coin_1 = {}
tGenId_Coin_1[1] = 3060016
tGenId_Coin_1[2] = 3060017
tGenId_Coin_1[3] = 3060018                             
tGenId_Coin_1[4] = 3060019
tGenId_Coin_1[5] = 3060020

local tGenId_Coin_2 = {}
tGenId_Coin_2[1] = 3060021
tGenId_Coin_2[2] = 3060022
tGenId_Coin_2[3] = 3060023                            
tGenId_Coin_2[4] = 3060024
tGenId_Coin_2[5] = 3060025

--local tPos_Coin_1 = {}
--tPos_Coin_1[1] = "33.19,-0.83,-5.55"
--tPos_Coin_1[2] = "37.33,-0.83-7.83"
--tPos_Coin_1[3] = "37.07,-0.83,2.77"                             
--tPos_Coin_1[4] = "30.41,-0.83,-4.63"
--tPos_Coin_1[5] = "34.10,-0.79,1.687"

--local tPos_Coin_2 = {}
--tPos_Coin_2[1] = "38.76,-2.33,18.51"
--tPos_Coin_2[2] = "35.06,-2.31,16.56"
--tPos_Coin_2[3] = "42.13,-2.33,19.07"                             
--tPos_Coin_2[4] = "43.06,-2.31,21.67"
--tPos_Coin_2[5] = "35.37,-2.33,22.31"

local  tGenId_Monster = {}
 tGenId_Monster[1]  =  3060032
 tGenId_Monster[2]  =  3060033

 local tGenId_TreasureBox = {}
 tGenId_TreasureBox[1] = 3060030
 tGenId_TreasureBox[2] = 3060031



local  nCollectId_Random_Coffin = 60249  --随机棺材
local  nGenId_Random_Coffin = 3060015

--宝箱
local nTreasyreBoxId_TongGuan = 40112 --通关宝箱
local nGenId_TongGuanBox_1 = 3060013

local nTreasyreBoxId_YinCang = 40113 --隐藏宝箱
local nGenId_YinCangBox_1 = 3060014

local nTreasyreBoxId_Random_1 = 40212 --随机宝箱1
local nGenId_RandomBox_1 = 3060030

local nTreasyreBoxId_Random_2 = 40212 --随机宝箱2
local nGenId_RandomBox_2 = 3060031



--机关
local nValve_1 = 1045
local nGenId_nValve1 = 3060009

--怪物
local nMonsterGroupId_1 = 200315
local nGenId_nMonster_1  =  3060001

local nRandom_MonsterGroup =  200341 --随机怪物
local nGenId_Random_MonsterGroup = 3060026

--随机npc
local nNpcId_1 = 3548
rwtNpc[nNpcId_1] = rwtNpc[nNpcId_1] or {}
local nRandom_NpcGroup =  20457
local tGenId_NpcGroup = {}
tGenId_NpcGroup[1] = 3060010
tGenId_NpcGroup[2] = 3060011
tGenId_NpcGroup[3] = 3060012

--对话id
local tDialog_EnterCopy     =	{5537,5538,5539,5540,5541}		                --进入副本5句对白
local tDialog_Bef_FixedMon  =	{5542,5543,5544,5545,5546}		                --和固定怪战斗前
local tDialog_Aft_FixedMon  =	{5547,5548,5549,5550,5551}		                --和固定怪战斗后
local tDialog_TransureBox   =	{5552,5553,5554,5555,5556,5557}		            --通关宝箱对白											   
local tDialog_PassCopy      =	{5558,5559,5560,5561,5562,5563,5564}		    --通关对白
local tDialog_Bef_RanMon    =	{5565,5566,5567}		                --采集尸体触发怪物对白
local tDialog_WithHero      =	{5570,5571,5572}		                        --有艾琳娜对白
local tDialog_WithoutHero   =	{5573,5574,5575}		                        --无艾琳娜对白
local tDialog_Coffin        =	{5576,5577,5578,5579,5580}		                --采集棺材后触发对白
local tDialog_Aft_RanMon	=	5568 --和随机怪战斗后

--副本入口
local nCopyMapGroupId =  50041

--副本目标
--local nTarget1 = 60094
local nTarget1 = 60095

--奖励id
local nRewardId_TongGuang = 1000149
local nRewardId_YinCang = 1000150
local nRewardId_ShiTi =	1000152
local nRewardId_GuanCai = 1000153

local tRewardId_RandomGuanCai = {}          --特殊棺材金币采集物
tRewardId_RandomGuanCai[1] = 1000327
tRewardId_RandomGuanCai[2] = 1000328
tRewardId_RandomGuanCai[3] = 1000329
tRewardId_RandomGuanCai[4] = 1000330
tRewardId_RandomGuanCai[5] = 1000331

local tRewardId_RandomNpc = {}              --随机npc对白奖励
tRewardId_RandomNpc[1] = 1000333      --无艾琳娜
tRewardId_RandomNpc[2] = 1000332      --有艾琳娜

local nRewardId_RandomMonster = 1000334     --随机怪物战胜奖励

local tAwardGenId = {3060002,3060003,3060004,3060005,3060006,3060007,3060008,3060010,
                        3060011,3060012,3060015,3060016,3060017,3060018,3060019,3060020,
                        3060021,3060022,3060023,3060024,3060025,3060026,3060027,3060028,3060029,3060030,3060031}
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
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

--rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
--rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = nTempDataId
--rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = 0
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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_EnterCopy
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {nGenId_nValve1}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = {1,2,3}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1] = {} ----------------------随机怪物 (生成三个固定棺材)
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 3000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["Pos"] = tPos_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["RotationY"] = tRotY_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGenId_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["Pos"] = tPos_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["RotationY"] = tRotY_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["GenId"] = tGenId_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["Pos"] = tPos_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["RotationY"] = tRotY_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["GenId"] = tGenId_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["Pos"] = tPos_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["RotationY"] = tRotY_Coffin[4]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2] = {} ----------------------随机怪物 （随机一个采集点）
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 3000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["FixGen"] = {nGenId_Random_MonsterGroup}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = tGenId_Random_Corpse[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = tGenId_Random_Corpse[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["GenId"] = tGenId_Random_Corpse[3]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3] = {} --------------------------------随机npc  (生成三个固定棺材)
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MinRate"] = 3001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 6000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["GenId"] = tGenId_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["Pos"] = tPos_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["RotationY"] = tRotY_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["GenId"] = tGenId_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["Pos"] = tPos_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["RotationY"] = tRotY_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["GenId"] = tGenId_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["Pos"] = tPos_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["RotationY"] = tRotY_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["GenId"] = tGenId_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["Pos"] = tPos_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["RotationY"] = tRotY_Coffin[4]


rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4] = {} --------------------------------随机npc  （生成一个随机npc）
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["MinRate"] = 3001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["MaxRate"] = 6000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1]["GenId"] = tGenId_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2]["GenId"] = tGenId_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3]["GenId"] = tGenId_NpcGroup[3]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5] = {} ----------------------随机棺材
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["MinRate"] = 6001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][1]["GenId"] = tGenId_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][1]["Pos"] = tPos_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][1]["RotationY"] = tRotY_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][2]["GenId"] = tGenId_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][2]["Pos"] = tPos_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][2]["RotationY"] = tRotY_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][3]["GenId"] = tGenId_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][3]["Pos"] = tPos_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][3]["RotationY"] = tRotY_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][4]["GenId"] = tGenId_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][4]["Pos"] = tPos_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][4]["RotationY"] = tRotY_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["RemainRandomNum"] = 1                
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tOtherGenId"][1]["GenId"] = nGenId_Random_Coffin	

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = {1,2,3}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1] = {} ----------------------随机怪物生成宝箱
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 3500
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId_Monster[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGenId_TreasureBox[1]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2] = {} ----------------------随机怪物生成宝箱
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MinRate"] = 3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = tGenId_Monster[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = tGenId_TreasureBox[2]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3] = {} ----------------------随机怪物生成宝箱
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1] = {} ----------------------随机怪物 (生成三个固定棺材)
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["GenId"] = tGenId_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["Pos"] = tPos_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["RotationY"] = tRotY_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["GenId"] = tGenId_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["Pos"] = tPos_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["RotationY"] = tRotY_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["GenId"] = tGenId_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["Pos"] = tPos_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["RotationY"] = tRotY_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["GenId"] = tGenId_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["Pos"] = tPos_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["RotationY"] = tRotY_Coffin[4]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2] = {} ----------------------随机怪物 (生成三个固定棺材)
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["FixGen"] = {nGenId_Random_MonsterGroup}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["GenId"] = tGenId_Random_Corpse[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["GenId"] = tGenId_Random_Corpse[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["GenId"] = tGenId_Random_Corpse[3]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3] = {} --------------------------------随机npc  (生成三个固定棺材)
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["GenId"] = tGenId_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["Pos"] = tPos_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["RotationY"] = tRotY_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["GenId"] = tGenId_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["Pos"] = tPos_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["RotationY"] = tRotY_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["GenId"] = tGenId_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["Pos"] = tPos_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["RotationY"] = tRotY_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["GenId"] = tGenId_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["Pos"] = tPos_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["RotationY"] = tRotY_Coffin[4]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4] = {} --------------------------------随机npc  （生成一个随机npc）
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1]["GenId"] = tGenId_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2]["GenId"] = tGenId_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3]["GenId"] = tGenId_NpcGroup[3]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5] = {} --------------------------------随机棺材
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1]["GenId"] = tGenId_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1]["Pos"] = tPos_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1]["RotationY"] = tRotY_Coffin[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2]["GenId"] = tGenId_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2]["Pos"] = tPos_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2]["RotationY"] = tRotY_Coffin[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][3]["GenId"] = tGenId_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][3]["Pos"] = tPos_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][3]["RotationY"] = tRotY_Coffin[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][4]["GenId"] = tGenId_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][4]["Pos"] = tPos_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][4]["RotationY"] = tRotY_Coffin[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tOtherGenId"][1]["GenId"] = nGenId_Random_Coffin

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1] = {} --------------------------------随机怪物(对应宝箱)
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"][1]["GenId"] = tGenId_Monster[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"][2]["GenId"] = tGenId_TreasureBox[1]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2] = {} --------------------------------随机怪物（对应宝箱）
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"][1]["GenId"] = tGenId_Monster[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"][2]["GenId"] = tGenId_TreasureBox[2]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3] = {} --------------------------------随机怪物（对应宝箱）
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["Value"] = 3



--副本目标
--rwtTarget[nTarget1] = {}
--rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20018]
--rwtTarget[nTarget1]["KillMonsterGroup"] = nMonsterGroupId_1
--rwtTarget[nTarget1]["ReqCount"] = 1

rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20019]
rwtTarget[nTarget1]["ReqTreasureBox"] = nTreasyreBoxId_TongGuan
rwtTarget[nTarget1]["ReqCount"] = 1


--采集物

rwtNpcGroup[nCollectId_Coffin] = rwtNpcGroup[nCollectId_Coffin] or {}  --棺材
rwtNpcGroup[nCollectId_Coffin]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_Coffin]["Awards"] = {}  
rwtNpcGroup[nCollectId_Coffin]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollectId_Coffin]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollectId_Coffin]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollectId_Coffin]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_GuanCai
rwtNpcGroup[nCollectId_Coffin]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectId_Coffin]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[nCollectId_Coffin]["CollectTime"] = 1 

rwtNpcGroup[nCollectId_Random_Coffin] = rwtNpcGroup[nCollectId_Random_Coffin] or {}  --特殊棺材
rwtNpcGroup[nCollectId_Random_Coffin]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[nCollectId_Random_Coffin]["tRandomDialog"] = tDialog_Coffin
rwtNpcGroup[nCollectId_Random_Coffin]["Awards"] = {}  
rwtNpcGroup[nCollectId_Random_Coffin]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollectId_Random_Coffin]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollectId_Random_Coffin]["Awards"]["Events"][1]["OpenDialog"] = {}		 
rwtNpcGroup[nCollectId_Random_Coffin]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_Coffin--5581
rwtNpcGroup[nCollectId_Random_Coffin]["CollectTime"] = 1
rwtNpcGroup[nCollectId_Random_Coffin]["Func"] = function( )  
    local nVal = rwTempDataGetValue(nCoffin_Mask,CONST_TEMP_DATA.Data2,rwUserGetId())
    local nRandom = math.random(3,5)
    if  nVal == 1 then 
        for k,v in ipairs(tGenId_Coin_1) do 
            if k > nRandom  then 
                break
            end
            rwAddGenEvent(v)
        end 
    else
        for k,v in ipairs(tGenId_Coin_2) do 
            if k > nRandom  then 
                break
            end
            rwAddGenEvent(v)
        end 
    end

end
  
--随机金钱
rwtNpcGroup[tCollectId_Coin[1]] = rwtNpcGroup[tCollectId_Coin[1]] or {}  
rwtNpcGroup[tCollectId_Coin[1]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollectId_Coin[1]]["CollectTime"] = 1   
rwtNpcGroup[tCollectId_Coin[1]]["Awards"] = {}  
rwtNpcGroup[tCollectId_Coin[1]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollectId_Coin[1]]["Awards"]["Events"][1] = {}   
rwtNpcGroup[tCollectId_Coin[1]]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[tCollectId_Coin[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tRewardId_RandomGuanCai[1]
rwtNpcGroup[tCollectId_Coin[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollectId_Coin[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollectId_Coin[2]] = rwtNpcGroup[tCollectId_Coin[2]] or {}  
rwtNpcGroup[tCollectId_Coin[2]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollectId_Coin[2]]["CollectTime"] = 1   
rwtNpcGroup[tCollectId_Coin[2]]["Awards"] = {}  
rwtNpcGroup[tCollectId_Coin[2]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollectId_Coin[2]]["Awards"]["Events"][1] = {}   
rwtNpcGroup[tCollectId_Coin[2]]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[tCollectId_Coin[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tRewardId_RandomGuanCai[1]
rwtNpcGroup[tCollectId_Coin[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollectId_Coin[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollectId_Coin[3]] = rwtNpcGroup[tCollectId_Coin[3]] or {}  
rwtNpcGroup[tCollectId_Coin[3]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollectId_Coin[3]]["CollectTime"] = 1   
rwtNpcGroup[tCollectId_Coin[3]]["Awards"] = {}  
rwtNpcGroup[tCollectId_Coin[3]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollectId_Coin[3]]["Awards"]["Events"][1] = {}   
rwtNpcGroup[tCollectId_Coin[3]]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[tCollectId_Coin[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tRewardId_RandomGuanCai[1]
rwtNpcGroup[tCollectId_Coin[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollectId_Coin[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollectId_Coin[4]] = rwtNpcGroup[tCollectId_Coin[4]] or {}  
rwtNpcGroup[tCollectId_Coin[4]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollectId_Coin[4]]["CollectTime"] = 1   
rwtNpcGroup[tCollectId_Coin[4]]["Awards"] = {}  
rwtNpcGroup[tCollectId_Coin[4]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollectId_Coin[4]]["Awards"]["Events"][1] = {}   
rwtNpcGroup[tCollectId_Coin[4]]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[tCollectId_Coin[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tRewardId_RandomGuanCai[1]
rwtNpcGroup[tCollectId_Coin[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollectId_Coin[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollectId_Coin[5]] = rwtNpcGroup[tCollectId_Coin[5]] or {}  
rwtNpcGroup[tCollectId_Coin[5]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollectId_Coin[5]]["CollectTime"] = 1   
rwtNpcGroup[tCollectId_Coin[5]]["Awards"] = {}  
rwtNpcGroup[tCollectId_Coin[5]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollectId_Coin[5]]["Awards"]["Events"][1] = {}   
rwtNpcGroup[tCollectId_Coin[5]]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[tCollectId_Coin[5]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tRewardId_RandomGuanCai[1]
rwtNpcGroup[tCollectId_Coin[5]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollectId_Coin[5]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollectId_Corpse[1]] = rwtNpcGroup[tCollectId_Corpse[1]] or {}  --尸体
rwtNpcGroup[tCollectId_Corpse[1]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollectId_Corpse[1]]["CollectTime"] = 1   
rwtNpcGroup[tCollectId_Corpse[1]]["Awards"] = {}  
rwtNpcGroup[tCollectId_Corpse[1]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollectId_Corpse[1]]["Awards"]["Events"][1] = {}   
rwtNpcGroup[tCollectId_Corpse[1]]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[tCollectId_Corpse[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_ShiTi
rwtNpcGroup[tCollectId_Corpse[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollectId_Corpse[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS


rwtNpcGroup[tCollectId_Corpse[2]] = rwtNpcGroup[tCollectId_Corpse[2]] or {}  --尸体
rwtNpcGroup[tCollectId_Corpse[2]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollectId_Corpse[2]]["CollectTime"] = 1   
rwtNpcGroup[tCollectId_Corpse[2]]["Awards"] = {}  
rwtNpcGroup[tCollectId_Corpse[2]]["Awards"]["Events"] = {} 
rwtNpcGroup[tCollectId_Corpse[2]]["Awards"]["Events"][1] = {}    
rwtNpcGroup[tCollectId_Corpse[2]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollectId_Corpse[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_ShiTi
rwtNpcGroup[tCollectId_Corpse[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollectId_Corpse[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS


rwtNpcGroup[tCollectId_Corpse[3]] = rwtNpcGroup[tCollectId_Corpse[3]] or {}  --尸体
rwtNpcGroup[tCollectId_Corpse[3]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollectId_Corpse[3]]["CollectTime"] = 1   
rwtNpcGroup[tCollectId_Corpse[3]]["Awards"] = {}  
rwtNpcGroup[tCollectId_Corpse[3]]["Awards"]["Events"] = {}  
rwtNpcGroup[tCollectId_Corpse[3]]["Awards"]["Events"][1] = {}   
rwtNpcGroup[tCollectId_Corpse[3]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollectId_Corpse[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_ShiTi
rwtNpcGroup[tCollectId_Corpse[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollectId_Corpse[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollectId_Random_Corpse] = rwtNpcGroup[nCollectId_Random_Corpse] or {}  --随机尸体
rwtNpcGroup[nCollectId_Random_Corpse]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_Random_Corpse]["CollectTime"] = 1
rwtNpcGroup[nCollectId_Random_Corpse]["NotDel"] = 1   
rwtNpcGroup[nCollectId_Random_Corpse]["Awards"] = {}  
rwtNpcGroup[nCollectId_Random_Corpse]["Awards"]["Events"] = {}  
rwtNpcGroup[nCollectId_Random_Corpse]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollectId_Random_Corpse]["Awards"]["Events"][1]["OpenDialog"] = {}		 
rwtNpcGroup[nCollectId_Random_Corpse]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_Bef_RanMon

--宝箱
rwtNpcGroup[nTreasyreBoxId_TongGuan] = rwtNpcGroup[nTreasyreBoxId_TongGuan] or {}  --通关宝箱
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasyreBoxId_TongGuan]["NotDel"] = 1
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"] = {}
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tAwardGenId
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}	   --失败对白
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] =  tDialog_TransureBox
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialog_PassCopy
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["DynDelete"][1] = nGenId_TongGuanBox_1
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasyreBoxId_TongGuan
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasyreBoxId_TongGuan]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_TongGuang  
rwtNpcGroup[nTreasyreBoxId_TongGuan]["ChooseAwards"] = {}		  --强制打开通关宝箱奖励
rwtNpcGroup[nTreasyreBoxId_TongGuan]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[nTreasyreBoxId_TongGuan]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[nTreasyreBoxId_TongGuan]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[nTreasyreBoxId_TongGuan]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialog_PassCopy
rwtNpcGroup[nTreasyreBoxId_TongGuan]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTreasyreBoxId_TongGuan]["ChooseAwards"]["Events"][1]["DynDelete"][1] = nGenId_TongGuanBox_1
rwtNpcGroup[nTreasyreBoxId_TongGuan]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasyreBoxId_TongGuan]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasyreBoxId_TongGuan]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasyreBoxId_TongGuan
rwtNpcGroup[nTreasyreBoxId_TongGuan]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasyreBoxId_TongGuan]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_TongGuang   


rwtNpcGroup[nTreasyreBoxId_YinCang] = rwtNpcGroup[nTreasyreBoxId_YinCang] or {}  --隐藏宝箱
rwtNpcGroup[nTreasyreBoxId_YinCang]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasyreBoxId_YinCang]["Awards"] = {}
rwtNpcGroup[nTreasyreBoxId_YinCang]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasyreBoxId_YinCang]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasyreBoxId_YinCang]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasyreBoxId_YinCang]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasyreBoxId_YinCang]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasyreBoxId_YinCang
rwtNpcGroup[nTreasyreBoxId_YinCang]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasyreBoxId_YinCang]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_YinCang 

rwtNpcGroup[40212] = rwtNpcGroup[40212] or {}  --隐藏宝箱
rwtNpcGroup[40212]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40212]["Awards"] = {}
rwtNpcGroup[40212]["Awards"]["Events"] = {}
rwtNpcGroup[40212]["Awards"]["Events"][1] = {}
rwtNpcGroup[40212]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40212]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40212]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40212
rwtNpcGroup[40212]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40212]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000422 

rwtNpcGroup[40213] = rwtNpcGroup[40213] or {}  --隐藏宝箱
rwtNpcGroup[40213]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40213]["Awards"] = {}
rwtNpcGroup[40213]["Awards"]["Events"] = {}
rwtNpcGroup[40213]["Awards"]["Events"][1] = {}
rwtNpcGroup[40213]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40213]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40213]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40213
rwtNpcGroup[40213]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40213]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000423


--随机npc
rwtNpcGroup[nRandom_NpcGroup] = rwtNpcGroup[nRandom_NpcGroup] or {} 
rwtNpcGroup[nRandom_NpcGroup]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nRandom_NpcGroup]["Awards"] = {}
rwtNpcGroup[nRandom_NpcGroup]["Awards"]["Events"] = {}
rwtNpcGroup[nRandom_NpcGroup]["Awards"]["Events"][1] = {}
rwtNpcGroup[nRandom_NpcGroup]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {301}
rwtNpcGroup[nRandom_NpcGroup]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nRandom_NpcGroup]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_WithHero
rwtNpcGroup[nRandom_NpcGroup]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[nRandom_NpcGroup]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[nRandom_NpcGroup]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog_WithoutHero 
-- rwtNpcGroup[nRandom_NpcGroup]["InterfaceFunc"]= function(nGroupTypeId,nNpcTypeId,nGenEventId)
-- local tHeroTable = rwHeroGetAllInFight()
-- 	local nMask = 0
-- 	for i=1,#tHeroTable do
-- 		if tHeroTable[i] == 301 then
-- 			nMask = 1
-- 		end	
-- 	end
-- 	if nMask == 1 then 
-- 		local nIndex = math.random(1,#tDialog_WithHero)
-- 		rwOpenNpcChatDialog(tDialog_WithHero[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 	else
-- 		local nIndex = math.random(1,#tDialog_WithoutHero)
-- 		rwOpenNpcChatDialog(tDialog_WithoutHero[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 	end 	

-- end
--通关宝箱对白
for k,v in ipairs(tDialog_TransureBox) do
	rwtDialog[v] = rwtDialog[v] or {}
	rwtDialog[v]["OptionFunc1"] = function ()
		return false
	end
	rwtDialog[v]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
		LinkTreasureBoxOpenSucc(nTreasyreBoxId_TongGuan,nGenId_TongGuanBox_1,1)
	end
end

--进入副本对白
for k,v in ipairs(tDialog_EnterCopy) do
    rwtDialog[v] = rwtDialog[v] or {}
    rwtDialog[v]["DialogEnd"] = function ()
    --检查是否是特殊棺材事件
        local nGetVal = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data1, rwUserGetId())
        if  nGetVal == 3 then 
            if rwHasGenEvent(tGenId_Coffin[2]) and rwHasGenEvent(tGenId_Coffin[3])and rwHasGenEvent(tGenId_Coffin[4]) then 
                rwUserTempDataSet(nCoffin_Mask,1,CONST_TEMP_DATA.Data2)
           else 
                rwUserTempDataSet(nCoffin_Mask,0,CONST_TEMP_DATA.Data2)
           end
        end	
    end 
end  

--对白奖励  无艾琳娜
for k,v in ipairs(tDialog_WithoutHero) do
    rwtDialog[v] = rwtDialog[v] or {}
    rwtDialog[v]["DialogEndInit"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] =  tRewardId_RandomNpc[1]
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

--对白奖励  有艾琳娜
for k,v in ipairs(tDialog_WithHero) do 
    rwtDialog[v] = rwtDialog[v] or {}
    rwtDialog[v]["DialogEndInit"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = tRewardId_RandomNpc[2]
    rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

--采集尸体触发战斗
for k,v in ipairs(tDialog_Bef_RanMon) do 
    rwtDialog[v] = rwtDialog[v] or {}
    rwtDialog[v]["DialogEndInit"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["DynCreate"] = {nGenId_Random_MonsterGroup} 
    rwtDialog[v]["DialogEndInit"]["Events"][1]["AutoBattle"]= {}
    rwtDialog[v]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nGenId_Random_MonsterGroup
end

--function CopyMap_Daily_Money_Easy_MonsterGroup_BattleWin()
----检查是否是特殊棺材事件
--    local nGetVal = rwTempDataGetValue(nTempDataId,CONST_TEMP_DATA.Data1, rwUserGetId())
--    if  nGetVal == 3 then 
--        if rwHasGenEvent(tGenId_Coffin[2]) and rwHasGenEvent(tGenId_Coffin[3])and rwHasGenEvent(tGenId_Coffin[4]) then 
--            rwUserTempDataSet(nCoffin_Mask,1,CONST_TEMP_DATA.Data2)
--       else 
--            rwUserTempDataSet(nCoffin_Mask,0,CONST_TEMP_DATA.Data2)
--       end
--    end  
----随机战斗对白
--    local nRandom = math.random(1,#tDialog_Aft_FixedMon)
--    rwOpenNpcChatDialog(tDialog_Aft_FixedMon[nRandom])
--    
--end
--rwtMonsterGroup_Func[nMonsterGroupId_1] = rwtMonsterGroup_Func[nMonsterGroupId_1] or {}
--table.insert(rwtMonsterGroup_Func[nMonsterGroupId_1],CopyMap_Daily_Money_Easy_MonsterGroup_BattleWin)		

function CopyMap_Daily_Money_Easy_Random_MonsterGroup_BattleWin()
    for k,v in ipairs(tGenId_Random_Corpse)do 
        if rwHasGenEvent(v) then
		    rwDelGenEvent(v)
            return 
	    end
    end	
end
rwtMonsterGroup_Func[nRandom_MonsterGroup] = rwtMonsterGroup_Func[nRandom_MonsterGroup] or {}
table.insert(rwtMonsterGroup_Func[nRandom_MonsterGroup],CopyMap_Daily_Money_Easy_Random_MonsterGroup_BattleWin)	