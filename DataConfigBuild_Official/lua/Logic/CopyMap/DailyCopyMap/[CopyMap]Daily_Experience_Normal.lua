--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--经验副本-普通



--endregion

----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3066

--随机事件掩码
local nTempDataId = 1123
local nTempDataId_2 = 1185

--采集物
local nCollectId_1 = 60171  --经验球
local nCollectId_2 = 60255	--随机经验球

--宝箱
local nTreasyreBoxId_1 = 40124 --通关宝箱
local nTreasyreBoxId_2 = 40125 --隐藏宝箱
local nGenId_TongGuangBox = 3066023
local nTreasyreBoxId_4 = 40239 --随机4宝箱
local nTreasyreBoxId_5 = 40240 --随机5宝箱

--机关
local nValve_1 = 1052

--怪物
local nMonsterGroupId_1 = 200320
local nMonsterGroupId_2 = 200348

--NPC
local nNpcId = 3374
rwtNpc[nNpcId] = rwtNpc[nNpcId] or {}
rwtNpc[3475] = rwtNpc[3475] or {}

--随机采集点个数
local nRandomCollect = math.random(5,8)

--NPC组
local nNpcGroupId_1 = 20402
--local nNpcGroupId_2 = 20403
--local nNpcGroupId_3 = 20404
local nNpcGroupId_4 = 20469  --锤子团首领 
local nNpcGroupId_5 = 20470 --食人魔教官

local nGenId_Npc_1 = 3066002 
local nGenId_Npc_2 = 3066003
local nGenId_Npc_3 = 3066004 


--npc对白奖励
local tNpcGetAward = {}
tNpcGetAward[1] = {nNpcGroupId_1,nGenId_Npc_1}
--tNpcGetAward[2] = {nNpcGroupId_2,nGenId_Npc_2}
--tNpcGetAward[3] = {nNpcGroupId_3,nGenId_Npc_3}

--对话id
--local nDialogId_1 = 5365	--进副本对话
--local nDialogId_2 = 5366	--战前对白
--local nDialogId_3 = 5367	--战后对白
--local nDialogId_4 = 5368	--奖励未全领取对白
--local nDialogId_5 = 5369	--通关对白
--local nDialogId_6 = {5370,5429,5430}	--和NPC对白

local tDialog_In =				{6015,6016,6017,6018,6019}		 --进入副本5句对白
--local tDialog_Bef_FixedMon =	{6020,6021,6022,6023,6024}		 --和固定怪战斗前
--local tDialog_Aft_FixedMon =	{6025,6026,6027,6028,6029}		 --和固定怪战斗后
local tDialog_TransureBox =		{6030,6031,6032,6033,6034}		 --通关宝箱对白											   
local tDialog_PassCopy =		{6035,6036,6037,6038,6039,6040,6041}		 --通关对白
local tDialog_NPC1 =            {6042,6043,6044,6045,6046}		 --要塞守卫对白
local tDialog_NPC2_RanMon =		{6047,6048,6049}		 --食人魔哈蒙对白
local tDialog_Win_RanMon =		{6052,6053,6054,6055,6056}		 --战胜食人魔哈蒙
local tDialog_WithQiaoYi =		{6057,6058,6059}		 --有乔伊对白
local tDialog_WithoutQiaoYi =	{6060,6061,6062}		 --无乔伊对白
local tDialog_Bef_Box =			{6063,6064,6065,6066,6067}		 --经验大宝箱开启前
local tDialog_Aft_Box = 		{6068}		 --经验大宝箱开启后


--副本中所以宝箱和采集物的genid
local tAwardGenId = {3066001,3066002,3066003,3066004,3066006,3066007,3066008,3066009,3066010,3066012,3066013,3066014,3066015,3066016,3066017,3066018,30660120,3066021,3066022,3066025,3066026,3066027}

--副本目标
--local nTarget1 = 60107
local nTarget2 = 60108

--奖励id
local nRewardId_JingYanQiu = 1000181
local nRewardId_NPC = 1000182
local nRewardId_TongGuang = 1000183

local nRewardId_JiaoGuan = 1000184
local nRewardId_Without = 1000310 --对白无乔伊
local nRewardId_With = 1000311   --对白有乔伊
local nRewardId_Suiji_Caiji = 1000312 --随机采集物
local nRewardId_Suiji4 = 1000313 --随机事件4奖励
local nRewardId_Suiji5 = 1000314

rwtNpcGroup[nNpcGroupId_1] = rwtNpcGroup[nNpcGroupId_1] or {}
rwtNpcGroup[nNpcGroupId_1]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNpcGroupId_1]["Awards"] = {}
rwtNpcGroup[nNpcGroupId_1]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroupId_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroupId_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroupId_1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_NPC1
-- rwtNpcGroup[nNpcGroupId_1]["InterfaceFunc"]= function(nGroupTypeId,nNpcTypeId,nGenEventId)
-- 	local nIndex = math.random(1,#tDialog_NPC1)
-- 	rwOpenNpcChatDialog(tDialog_NPC1[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- end

rwtNpcGroup[nNpcGroupId_4] = rwtNpcGroup[nNpcGroupId_4] or {}
rwtNpcGroup[nNpcGroupId_4]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNpcGroupId_4]["Awards"] = {}
rwtNpcGroup[nNpcGroupId_4]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroupId_4]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroupId_4]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {401}
rwtNpcGroup[nNpcGroupId_4]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroupId_4]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_WithQiaoYi
rwtNpcGroup[nNpcGroupId_4]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[nNpcGroupId_4]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroupId_4]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog_WithoutQiaoYi



rwtNpcGroup[nNpcGroupId_5] = rwtNpcGroup[nNpcGroupId_5] or {}
rwtNpcGroup[nNpcGroupId_5]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNpcGroupId_5]["Awards"] = {}
rwtNpcGroup[nNpcGroupId_5]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroupId_5]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroupId_5]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroupId_5]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_NPC2_RanMon



--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Exp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10043]
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget2}
--rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget2}
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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_In		
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = {1,2,3}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1] = {} ----------------------随机NPC
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 3000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = 3066015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["Pos"] = "-11.74,3.91,29.75"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 229 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = 3066016
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["Pos"] = "-16.37,3.37,16.32"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 12
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["GenId"] = 3066017
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["Pos"] = "-13.91,0.98,4.03"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 150
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["GenId"] = 3066018
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["Pos"] = "-17.20,3.37,21.91"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 68.77
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][5]["GenId"] = 3066019
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][5]["Pos"] = "-21.44,0.98,-6.47"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][5]["RotationY"] = 9.34
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = 3066020	
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2] = {} --------------------------------随机怪物
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MinRate"] = 3001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 6000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = 3066015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["Pos"] = "-11.74,3.91,29.75"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["RotationY"] = 260 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = 3066016
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["Pos"] = "-16.14,3.37,16.862"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["RotationY"] = 42
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["GenId"] = 3066017
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["Pos"] = "-13.91,0.98,4.03"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["RotationY"] = 220
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["GenId"] = 3066018
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["Pos"] = "-17.20,3.37,21.91"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["RotationY"] = 98.77
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][5]["GenId"] = 3066019
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][5]["Pos"] = "-21.44,0.98,-6.47"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][5]["RotationY"] = 39.34
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = 3066021
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3] = {} --------------------------------经验大宝箱
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MinRate"] = 6001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["FixGen"] = {3066022}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["GenId"] = 3066015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["Pos"] = "-11.74,3.91,29.75"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["RotationY"] = 229 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["GenId"] = 3066016
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["Pos"] = "-16.37,3.37,16.32"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["RotationY"] = 12
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["GenId"] = 3066017
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["Pos"] = "-13.91,0.98,4.03"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["RotationY"] = 150
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["GenId"] = 3066018
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["Pos"] = "-17.20,3.37,21.91"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["RotationY"] = 68.77
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][5]["GenId"] = 3066019
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][5]["Pos"] = "-21.44,0.98,-6.47"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][5]["RotationY"] = 9.34
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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["FixGen"] = {3066025,3066026}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2] = {} --------------------------------随机事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MinRate"] = 3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["FixGen"] = {3066001,3066027}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3] = {} --------------------------------随机事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3

------






rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1] = {} ----------------------随机NPC
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["GenId"] = 3066015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["Pos"] = "-11.74,3.91,29.75"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["RotationY"] = 229 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["GenId"] = 3066016
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["Pos"] = "-16.37,3.37,16.32"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["RotationY"] = 12
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["GenId"] = 3066017
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["Pos"] = "-13.91,0.98,4.03"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["RotationY"] = 150
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["GenId"] = 3066018
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["Pos"] = "-17.20,3.37,21.91"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["RotationY"] = 68.77
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][5]["GenId"] = 3066019
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][5]["Pos"] = "-21.44,0.98,-6.47"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][5]["RotationY"] = 9.34
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1]["GenId"] = 3066020	
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2] = {} --------------------------------随机怪物
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["GenId"] = 3066015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["Pos"] = "-11.74,3.91,29.75"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["RotationY"] = 260
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["GenId"] = 3066016
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["Pos"] = "-16.14,3.37,16.862"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["RotationY"] = 42
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["GenId"] = 3066017
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["Pos"] = "-13.91,0.98,4.03"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["RotationY"] = 220
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["GenId"] = 3066018
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["Pos"] = "-17.20,3.37,21.91"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][4]["RotationY"] = 98.77
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][5]["GenId"] = 3066019
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][5]["Pos"] = "-21.44,0.98,-6.47"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][5]["RotationY"] = 39.34
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"][1]["GenId"] = 3066021
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3] = {} --------------------------------经验大宝箱
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["FixGen"] = {3066022}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["GenId"] = 3066015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["Pos"] = "-11.74,3.91,29.75"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["RotationY"] = 229 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["GenId"] = 3066016
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["Pos"] = "-16.37,3.37,16.32"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["RotationY"] = 12
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["GenId"] = 3066017
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["Pos"] = "-13.91,0.98,4.03"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["RotationY"] = 150
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["GenId"] = 3066018
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["Pos"] = "-17.20,3.37,21.91"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["RotationY"] = 68.77
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][5]["GenId"] = 3066019
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][5]["Pos"] = "-21.44,0.98,-6.47"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][5]["RotationY"] = 9.34
--------------随机事件4，5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1] = {} ----------------------随机事件4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["FixGen"] = {3066025,3066026}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2] = {} --------------------------------随机事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["FixGen"] = {3066001,3066027}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3] = {} --------------------------------什么都不生成
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["Value"] = 3


--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function()
--   CopyMap_Daily_Experience_Normal_InitMap()
--end

--副本目标
--rwtTarget[nTarget1] = {}
--rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20008]
--rwtTarget[nTarget1]["KillMonsterGroup"] = nMonsterGroupId_1
--rwtTarget[nTarget1]["ReqCount"] = 1

rwtTarget[nTarget2] = {}
rwtTarget[nTarget2]["Title"] = tLuaText[LANGUAGE_CONFIG][20008]
rwtTarget[nTarget2]["ReqTreasureBox"] = nTreasyreBoxId_1
rwtTarget[nTarget2]["ReqCount"] = 1

--怪物逻辑
--function CopyMap_Daily_Experience_Normal_MonsterGroup1_BeKill()
--    local nRandom = math.random(1,#tDialog_Aft_FixedMon)
--    rwOpenNpcChatDialog(tDialog_Aft_FixedMon[nRandom])
--end
--rwtMonsterGroup_Func[nMonsterGroupId_1] = rwtMonsterGroup_Func[nMonsterGroupId_1] or {}
--table.insert(rwtMonsterGroup_Func[nMonsterGroupId_1],CopyMap_Daily_Experience_Normal_MonsterGroup1_BeKill)

function CopyMap_Experience_Normal_MonsterGroup2_BeKill()
    if rwHasGenEvent(3066021) then
		rwDelGenEvent(3066021)
	end
    local nRandom = math.random(1,#tDialog_Win_RanMon)
    rwOpenNpcChatDialog(tDialog_Win_RanMon[nRandom])
end
rwtMonsterGroup_Func[nMonsterGroupId_2] = rwtMonsterGroup_Func[nMonsterGroupId_2] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroupId_2],CopyMap_Experience_Normal_MonsterGroup2_BeKill)


--采集物
rwtNpcGroup[nCollectId_1] = rwtNpcGroup[nCollectId_1] or {}  --经验球
rwtNpcGroup[nCollectId_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_1]["CollectTime"] = 1
rwtNpcGroup[nCollectId_1]["Awards"] = {}  
rwtNpcGroup[nCollectId_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_JingYanQiu
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS


--采集物
rwtNpcGroup[nCollectId_2] = rwtNpcGroup[nCollectId_2] or {}  --经验球
rwtNpcGroup[nCollectId_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_2]["CollectTime"] = 1
rwtNpcGroup[nCollectId_2]["Awards"] = {}  
rwtNpcGroup[nCollectId_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000312
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS


--宝箱
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

rwtNpcGroup[nTreasyreBoxId_2] = rwtNpcGroup[nTreasyreBoxId_2] or {}  --经验大宝箱
--rwtNpcGroup[nTreasyreBoxId_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nTreasyreBoxId_2]["DialogId"] = 6063
rwtNpcGroup[nTreasyreBoxId_2]["InterfaceFunc"] = function (nGroupTypeId,nNpcTypeId,nGenEventId)
    local nRandom = math.random(1,#tDialog_Bef_Box)
    rwOpenNpcChatDialog(tDialog_Bef_Box[nRandom],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
end

--对白
for k,v in ipairs(tDialog_Bef_Box) do
rwtDialog[v] = rwtDialog[v] or {}
rwtDialog[v]["DialogEndInit"] = {}
rwtDialog[v]["DialogEndInit"]["Events"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[v]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialog_Aft_Box
rwtDialog[v]["DialogEndInit"]["RandomEvents"] = {}
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1] = {}
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1] = {} ----------------------随机NPC
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = nRandomCollect
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = 3066007
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = 3066008
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = 3066009
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["GenId"] = 3066010
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5] = {}
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["GenId"] = 3066011
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6] = {}
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6]["GenId"] = 3066012
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][7] = {}
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][7]["GenId"] = 3066013
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][8] = {}
rwtDialog[v]["DialogEndInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][8]["GenId"] = 3066014
end	





--rwtNpcGroup[nTreasyreBoxId_2]["Awards"] = {}



----rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["Events"] = {}
----rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["Events"][1] = {}
----rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["Events"][1]["OpenDialog"] = {}		  
----rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialog_Aft_Box


--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"] = {}
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1] = {}
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"] = {}
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1] = {} ----------------------随机NPC
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 5
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = 3066007
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = 3066008
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = 3066009
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["GenId"] = 3066010
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5] = {}
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["GenId"] = 3066011
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6] = {}
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6]["GenId"] = 3066012
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][7] = {}
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][7]["GenId"] = 3066013
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][8] = {}
--rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][8]["GenId"] = 3066014
	

--对白
for k,v in ipairs(tDialog_TransureBox) do
	rwtDialog[v] = rwtDialog[v] or {}
	rwtDialog[v]["OptionFunc1"] = function ()
		return false
	end
	rwtDialog[v]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
		LinkTreasureBoxOpenSucc(nTreasyreBoxId_1,nGenId_TongGuangBox,1)
	end

end


--对白奖励  有指定npc
for k,v in ipairs(tDialog_WithQiaoYi) do
rwtDialog[v] = rwtDialog[v] or {}
rwtDialog[v]["DialogEndInit"] = {}
rwtDialog[v]["DialogEndInit"]["Events"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 1000311
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end


--对白奖励  无指定npc
for k,v in ipairs(tDialog_WithoutQiaoYi) do
rwtDialog[v] = rwtDialog[v] or {}
rwtDialog[v]["DialogEndInit"] = {}
rwtDialog[v]["DialogEndInit"]["Events"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 1000310
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end



--对白触发战斗
for k,v in ipairs(tDialog_NPC2_RanMon) do 
rwtDialog[v] = rwtDialog[v] or {}
rwtDialog[v]["DialogEndInit"] = {}
rwtDialog[v]["DialogEndInit"]["Events"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynCreate"] = {3066002} 
rwtDialog[v]["DialogEndInit"]["Events"][1]["AutoBattle"]= {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = 3066002
end


--对白奖励  固定
for k,v in ipairs(tDialog_NPC1) do
rwtDialog[v] = rwtDialog[v] or {}
rwtDialog[v]["DialogEndInit"] = {}
rwtDialog[v]["DialogEndInit"]["Events"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_NPC
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end



-------初始化
--function CopyMap_Daily_Experience_Normal_InitMap()--初始化函数
--   rwPrintLog("进入经验副本（普通），开始执行初始化函数")
--   rwOpenNpcChatDialog(nDialogId_1)             --进入副本打开对话
--   rwPrintLog("经验副本（普通）初始化函数执行完毕")
--end




					