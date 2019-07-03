--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--罗兰币副本



--endregion

----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3052

--采集物
local nCollectId_1 = 60124  --尸体
local nCollectId_2 = 60125  --机关棺材1
local nCollectId_3 = 60126  --奖励棺材
local nCollectId_4 = 60129  --机关棺材2	
local nCollectId_5 = 60137  --尸体   --开出宝箱

--宝箱
local nTreasyreBoxId_1 = 40090 --通关宝箱
local nTreasyreBoxId_2 = 40091 --隐藏宝箱
local nTreasyreBoxId_3 = 40092 --彩蛋宝箱

--陷阱
local nTrapId_1 =  30372

--机关
local nValve_1 = 1037

--怪物
local nMonsterGroupId_1 = 200303

--对话id
local nDialogId_1 = 5286	--进副本对话
local nDialogId_2 = 5287	--战前对白
local nDialogId_3 = 5288	--战后对白
local nDialogId_4 = 5289	--奖励未全领取对白
local nDialogId_5 = 5290	--通关对白
local nDialogId_6 = 5291	--机关全开启对白
local nDialogId_7 = 5292	--只开启一个机关对白
local nDialogId_8 = 5293	--陷阱对白

--副本中所以宝箱和采集物的genid
local tAwardGenId = {3052002,3052003,3052004,3052005,3052006,3052007,3052008,3052009,3052010,3052011,3052012,3052013,3052014,3052015,3052016,3052017,3052018,3052019,3052021,3052023}


--进入副本NPC
rwtNpcGroup[50031] = {}
rwtNpcGroup[50031]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50031]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 20
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2
rwtCopyMapMission[nCopyMapId]["Target1"] = {60073}
rwtCopyMapMission[nCopyMapId]["Target2"] = {60074}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function()
   CopyMap_LuoLanBi_InitMap()
end

rwtTarget[60073] = {}
rwtTarget[60073]["Title"] = "击败失心丧尸"
rwtTarget[60073]["KillMonsterGroup"] = nMonsterGroupId_1
rwtTarget[60073]["KillMonsterGroupCount"] = 1

rwtTarget[60074] = {}
rwtTarget[60074]["ReqTreasureBox"] = nTreasyreBoxId_1
rwtTarget[60074]["ReqCount"] = 1

--选项对白
local nDialogOption = 0

----***************************逻辑***************************----

--采集物

rwtNpcGroup[nCollectId_1] = rwtNpcGroup[nCollectId_1] or {}  --尸体
rwtNpcGroup[nCollectId_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_1]["Awards"] = {}
rwtNpcGroup[nCollectId_1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectId_1]["Awards"]["AwardId"] = 1000113
rwtNpcGroup[nCollectId_1]["CollectTime"] = 1

rwtNpcGroup[nCollectId_5] = rwtNpcGroup[nCollectId_5] or {}  --尸体   开出宝箱的
rwtNpcGroup[nCollectId_5]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_5]["AddGen"] = {3052023}
rwtNpcGroup[nCollectId_5]["Awards"] = {}
rwtNpcGroup[nCollectId_5]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectId_5]["Awards"]["AwardId"] = 1000113
rwtNpcGroup[nCollectId_5]["CollectTime"] = 1
																		 
rwtNpcGroup[nCollectId_2] = rwtNpcGroup[nCollectId_2] or {}  --机关棺材1
rwtNpcGroup[nCollectId_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_2]["CollectTime"] = 3
rwtNpcGroup[nCollectId_2]["Func"] = function ()
	if rwHasGenEvent(3052003) then	--机关2未开启
		rwOpenNpcChatDialog(nDialogId_7)
	else								  --2个机关棺材全开 删除机关和陷阱
		rwOpenNpcChatDialog(nDialogId_6)
		if rwHasGenEvent(3052022)  then
			 rwDelGenEvent(3052022)
		end
		rwUpdateValveData(3052018, 1)   --关闭机关
	end 

end
rwtNpcGroup[nCollectId_4] = rwtNpcGroup[nCollectId_4] or {}  --机关棺材2
rwtNpcGroup[nCollectId_4]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_4]["CollectTime"] = 3
rwtNpcGroup[nCollectId_4]["Func"] = function ()

	if rwHasGenEvent(3052002) then	--机关1未开启
		rwOpenNpcChatDialog(nDialogId_7)
	else								  --2个机关棺材全开 删除机关和陷阱
		rwOpenNpcChatDialog(nDialogId_6)
		if rwHasGenEvent(3052022)  then
			 rwDelGenEvent(3052022)
		end
		rwUpdateValveData(3052018, 1)   --关闭机关
	end 

end


rwtNpcGroup[nCollectId_3] = rwtNpcGroup[nCollectId_3] or {}  --奖励棺材
rwtNpcGroup[nCollectId_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_3]["Awards"] = {}
rwtNpcGroup[nCollectId_3]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectId_3]["Awards"]["AwardId"] = 1000114
rwtNpcGroup[nCollectId_3]["CollectTime"] = 1


--宝箱
rwtNpcGroup[nTreasyreBoxId_1] = rwtNpcGroup[nTreasyreBoxId_1] or {}  --通关宝箱
rwtNpcGroup[nTreasyreBoxId_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasyreBoxId_1]["Awards"] = {}
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasyreBoxId_1]["Awards"]["AwardId"] = 1000110
rwtNpcGroup[nTreasyreBoxId_1]["FailDialog"] = nDialogId_4				--条件判断失败对白 传参为groupID
rwtNpcGroup[nTreasyreBoxId_1]["Dialog"] = nDialogId_5			 --成功开启宝箱对白
rwtNpcGroup[nTreasyreBoxId_1]["ChkFunc"] = function(nGenEventId,nNpcGroupType)	 
	for k,v in pairs(tAwardGenId)  do						--检查其他奖励物品是否全部领取
		if rwHasGenEvent(tAwardGenId[k]) then
			--rwOpenNpcChatDialog(nDialogId_4,CONST_NPCCHAT_TYPE.TREASUREBOX,nNpcGroupType)
			return false
		end 
	end
	return true

end

rwtNpcGroup[nTreasyreBoxId_2] = rwtNpcGroup[nTreasyreBoxId_2] or {}  --隐藏宝箱
rwtNpcGroup[nTreasyreBoxId_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasyreBoxId_2]["Awards"] = {}
rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasyreBoxId_2]["Awards"]["AwardId"] = 1000111

rwtNpcGroup[nTreasyreBoxId_3] = rwtNpcGroup[nTreasyreBoxId_3] or {}  --彩蛋宝箱
rwtNpcGroup[nTreasyreBoxId_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasyreBoxId_3]["Awards"] = {}
rwtNpcGroup[nTreasyreBoxId_3]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasyreBoxId_3]["Awards"]["AwardId"] = 1000112


--陷阱
rwtNpcGroup[nTrapId_1] = rwtNpcGroup[nTrapId_1] or {}
rwtNpcGroup[nTrapId_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapId_1]["TrapFunc"] = function ()
    rwOpenNpcChatDialog(nDialogId_8)  
end

--对白
rwtDialog[nDialogId_4] = rwtDialog[nDialogId_4] or {}
rwtDialog[nDialogId_4]["OptionFunc1"] = function ()
	return false
end
rwtDialog[nDialogId_4]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	
	LinkTreasureBoxOpenSucc(nId,3052020)
end


-------初始化
function CopyMap_LuoLanBi_InitMap()--初始化函数
   rwPrintLog("进入罗兰币副本，开始执行初始化函数")
   rwOpenNpcChatDialog(nDialogId_1)             --进入副本打开对话
   rwAddGenEvent(3052018) --机关
   rwAddGenEvent(3052022) --陷阱
   rwPrintLog("罗兰币副本初始化函数执行完毕")
end



					