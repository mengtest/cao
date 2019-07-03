--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--银母矿洞

--endregion

------------=========数据========-------------
--	副本ID
local  nCopyMapId = 3023

--切换剧情、普通本任务
local nChangeNpcTaskID = 10340

--副本传送NPC的GENID
local nNpcGroup_GenId_CopyMap = 20030122 

--怪物宝箱对白
local nDialogId_1 = 6323

--进入副本NPC
rwtNpcGroup[50012] = {}   --副本入口NPC组
rwtNpcGroup[50012]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50012]["UnlockDialog"] = 5231
rwtNpcGroup[50012]["Dialog"] = 5232
rwtNpcGroup[50012]["CopyMapList"] = {nCopyMapId}


--副本目标
rwtTarget[60028] = {}
rwtTarget[60028]["Title"] = tLuaText[LANGUAGE_CONFIG][21447]
rwtTarget[60028]["KillMonsterGroup"] = 200179
rwtTarget[60028]["ReqCount"] = 1
rwtTarget[60029] = {}
rwtTarget[60029]["Title"] = tLuaText[LANGUAGE_CONFIG][21448]
rwtTarget[60029]["KillMonsterGroup"] = 200182
rwtTarget[60029]["ReqCount"] = 1


--陷阱
local nTrapId = 30191
local nTrapId_Gen = 3023004

--采集物
local nCollectId_1 = 60078
local nCollectId_2 = 60119
local nCollectId_3 = 60120
local nCollectId_Gen_1 = 3023001
local nCollectId_Gen_2 = 3023002
local nCollectId_Gen_3 = 3023003

--宝箱
local nTreasure_1 = 40059
local nTreasure_2 = 40060
local nTreasure_3 = 40195

--怪物
local nMonsterGroupId_1 = 200176   -- 采矿工兵1
local nMonsterGroupId_2 = 200177   -- 采矿工兵2
local nMonsterGroupId_3 = 200178   -- 采矿工兵3
local nMonsterGroupId_4 = 200179   -- 矮巨人指挥
local nMonsterGroupId_5 = 200180   -- 矮巨人矿工				
--local nMonsterGroupId_6 = 200181   -- 矮巨人矿工
--local nMonsterGroupId_7 = 200182   -- 檐鬼
local nMonsterGroupId_8 = 200424   -- 怪物宝箱怪

--怪物逃跑相关
local tMonster_Kuanggong1_Gen = 3023005
local tMonster_Kuanggong2_Gen =	3023006
local tMonster_Kuanggong3_Gen = 3023007
local nMonster_Flag = 1
local nMonster_SpeedRate = 100
local sMonster_EscapePos = '25.17,0.35,1.26'
--------==========逻辑=========-------
--采集物
rwtNpcGroup[nCollectId_1] = rwtNpcGroup[nCollectId_1] or {} 
rwtNpcGroup[nCollectId_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_1]["Awards"] = {}  
rwtNpcGroup[nCollectId_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000075
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollectId_2] = rwtNpcGroup[nCollectId_2] or {} 
rwtNpcGroup[nCollectId_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_2]["Awards"] = {}  
rwtNpcGroup[nCollectId_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000076
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectId_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollectId_3] = rwtNpcGroup[nCollectId_3] or {} 
rwtNpcGroup[nCollectId_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId_3]["Awards"] = {}  
rwtNpcGroup[nCollectId_3]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollectId_3]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollectId_3]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollectId_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000077
rwtNpcGroup[nCollectId_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectId_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

--陷阱
rwtNpcGroup[nTrapId] = rwtNpcGroup[nTrap_Hide_Boss] or {}
rwtNpcGroup[nTrapId]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapId]["DelTrap"] = 1
rwtNpcGroup[nTrapId]["Awards"] = {}  
rwtNpcGroup[nTrapId]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrapId]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrapId]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrapId]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= 15801
rwtNpcGroup[nTrapId]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nTrapId]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0

--宝箱
rwtNpcGroup[nTreasure_1] = rwtNpcGroup[nTreasure_1] or {}  --宝盒
rwtNpcGroup[nTreasure_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasure_1]["Awards"] = {}
rwtNpcGroup[nTreasure_1]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasure_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasure_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasure_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasure_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasure_1
rwtNpcGroup[nTreasure_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasure_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000073 

rwtNpcGroup[nTreasure_2] = rwtNpcGroup[nTreasure_2] or {}  --宝盒
rwtNpcGroup[nTreasure_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasure_2]["Awards"] = {}
rwtNpcGroup[nTreasure_2]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasure_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasure_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasure_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasure_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasure_2
rwtNpcGroup[nTreasure_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasure_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000074

--怪物宝箱
--杀死怪物后领奖；否则宝箱不消失
rwtNpcGroup[nTreasure_3] = rwtNpcGroup[nTreasure_3] or {}  --宝盒
rwtNpcGroup[nTreasure_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nTreasure_3]["NotDel"] = 1 
rwtNpcGroup[nTreasure_3]["Awards"] = {}
rwtNpcGroup[nTreasure_3]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1] = {}
--rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["ChkUserTempData"] = {}
--rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
--rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = 1168
--rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
--rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 1
--rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["OpenDialog"] = {}	  
--rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] =  nDialogId_1
--rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["FailEvents"]["AutoBattle"] = {}
--rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["FailEvents"]["AutoBattle"]["GenId"] = 3023015
rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["DynCreate"] = {} 
rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["DynCreate"][1] = 3023015
rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasure_3
rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasure_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000080


--指挥官死后矿工逃跑
rwtMonsterGroup[nMonsterGroupId_4] = rwtMonsterGroup[nMonsterGroupId_4] or {}
rwtMonsterGroup[nMonsterGroupId_4]["BattleWin"] = function()
	rwChangeMonsterRounds(tMonster_Kuanggong1_Gen,nMonster_Flag,-1,-1,-1,-1,-1,-1,-1,nMonster_SpeedRate,sMonster_EscapePos)	 
	rwChangeMonsterRounds(tMonster_Kuanggong2_Gen,nMonster_Flag,-1,-1,-1,-1,-1,-1,-1,nMonster_SpeedRate,sMonster_EscapePos)	 
	rwChangeMonsterRounds(tMonster_Kuanggong3_Gen,nMonster_Flag,-1,-1,-1,-1,-1,-1,-1,nMonster_SpeedRate,sMonster_EscapePos)	
end

----宝箱怪物死后 --删宝箱
--rwtMonsterGroup[nMonsterGroupId_8] = rwtMonsterGroup[nMonsterGroupId_8] or {}
--rwtMonsterGroup[nMonsterGroupId_8]["BattleWin"] = function()
--	rwTempDataSet(1168,1,CONST_TEMP_DATA.Data1)
--end

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2003 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_GenId_CopyMap --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60028}
rwtCopyMapMission[nCopyMapId]["Target2"] = {60029}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5107	
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = 1168 
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1