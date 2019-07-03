--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--开服七日任务第4天
--by:mzy
--date:2018-12-13


--endregion


------***************************数据定义***************************----
-------任务id-------
local tTaskId = {}
local nTimeData = 1146 --七日任务掩码

--继续出发！
tTaskId.Task1 = 70051
--咦咦咦？走错啦
tTaskId.Task2 = 70052
--罗兰大帝雕像
tTaskId.Task3 = 70053
--魔族无罪论？！
tTaskId.Task4 = 70054
--拳头说话
tTaskId.Task5 = 70055
--祸及无辜
tTaskId.Task6 = 70056
--寻找血霜草
tTaskId.Task7 = 70057
--希望明日顺利
tTaskId.Task8 = 70058

-------对白id-------
local tDialog = {}

--继续出发！
tDialog.Task1 = 11834
--咦咦咦？走错啦
tDialog.Task2 = 11835
--罗兰大帝雕像
tDialog.Task3 = 11836
--魔族无罪论？！
tDialog.Task4 = 11837
--拳头说话
tDialog.Task5 = 11838
--祸及无辜
tDialog.Task6 = 11839
--寻找血霜草
tDialog.Task7 = 11840
--希望明日顺利
tDialog.Task8 = 11841

--怪物战后对白
tDialog.AfterBattle = 11842
-------NPCGroup-------
--陷阱
--任务2陷阱
local nTrap_1 = 30555
local nTrap_GenId_1 = 20010170
--任务3陷阱
local nTrap_2 = 30556
local nTrap_GenId_2 = 20010171

--npc
--乔斯朗
local nSingleNpc_1 = 20544
local nSingleNpc_GenId_1 = 20010172
--导游卡卡
local nSingleNpc_2 = 20545
local nSingleNpc_GenId_2 = 20010173
--乌萨
local nSingleNpc_3 = 20546
local nSingleNpc_GenId_3 = 20010174

--采集物
--血霜草
local nCollect_1 = 60314
local nCollect_GenId_1 = 20010175


-------npcid-------
--导游卡卡
local nNpcId_1 = 3591
--游客哈吉
local nNpcId_2 = 3603
--游客萨尔玛
local nNpcId_3 = 3604
--游客凯尔
local nNpcId_4 = 3598
--乔斯朗
local nNpcId_5 = 3592
--乌萨
local nNpcId_6 = 3593


-------MonsterGroup-------
--乔斯朗+乌萨
local nMonsterGroup_1 = 900398
local nMonsterGroup_GenId = 20010176


-------monster-------
--乔斯朗
local nMonster_1 = 9000317
--乌萨
local nMonster_2 = 9000318

-----------奖励id------------------
local tAward_Id = {}
tAward_Id[1] = 2000243      --罗兰大帝雕像
tAward_Id[2] = 2000244      --战争与和平

------***************************逻辑***************************----

-----------------------------------NPC组-----------
--陷阱
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

--采集物
--血霜草
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}     
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["DialogId"] = tDialog.Task7

--NPC
--乔斯朗
rwtNpcGroup[nSingleNpc_1] = {}    
rwtNpcGroup[nSingleNpc_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nSingleNpc_1]["NpcId"]= nNpcId_5

--导游卡卡
rwtNpcGroup[nSingleNpc_2] = {}    
rwtNpcGroup[nSingleNpc_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nSingleNpc_2]["NpcId"]= nNpcId_1

--乌萨
rwtNpcGroup[nSingleNpc_3] = {}    
rwtNpcGroup[nSingleNpc_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nSingleNpc_3]["NpcId"]= nNpcId_6



------***************************任务***************************----
--------------------------------------罗兰大帝雕像-----------------------------
--继续出发！
rwtTask[tTaskId.Task1] = {}
rwtTask[tTaskId.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][21438]
rwtTask[tTaskId.Task1]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task1]["NextTaskId"] = tTaskId.Task2
rwtTask[tTaskId.Task1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTaskId.Task1]["DialogId"] = tDialog.Task1
rwtTask[tTaskId.Task1]["AutoTaskDialog"] = tDialog.Task1

--咦咦咦？走错啦
rwtTask[tTaskId.Task2] = {}
rwtTask[tTaskId.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][21439]
rwtTask[tTaskId.Task2]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task2]["PreTaskId"] = tTaskId.Task1
rwtTask[tTaskId.Task2]["NextTaskId"] = tTaskId.Task3
rwtTask[tTaskId.Task2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTaskId.Task2]["DialogId"] = tDialog.Task2
rwtTask[tTaskId.Task2]["ReqTrap1"] = nTrap_1

rwtTask[tTaskId.Task2]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTaskId.Task2]["StartAutoWay"] = {}
rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_1


--罗兰大帝雕像
rwtTask[tTaskId.Task3] = {}
rwtTask[tTaskId.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][21440]
rwtTask[tTaskId.Task3]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task3]["PreTaskId"] = tTaskId.Task2
rwtTask[tTaskId.Task3]["NextTaskId"] = tTaskId.Task4
rwtTask[tTaskId.Task3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTaskId.Task3]["DialogId"] = tDialog.Task3
rwtTask[tTaskId.Task3]["ReqTrap1"] = nTrap_2

rwtTask[tTaskId.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_2
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][2]["GenId"] = nSingleNpc_GenId_1
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][3] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][3]["GenId"] = nSingleNpc_GenId_2
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][3]["MapId"] = 2001
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][4] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][4]["GenId"] = nSingleNpc_GenId_3
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][4]["MapId"] = 2001
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTaskId.Task3]["StartAutoWay"] = {}
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_2

rwtTask[tTaskId.Task3]["Awards"] = {}
rwtTask[tTaskId.Task3]["Awards"]["Events"] = {}
rwtTask[tTaskId.Task3]["Awards"]["Events"][1] = {}
rwtTask[tTaskId.Task3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTaskId.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTaskId.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Id[1]
rwtTask[tTaskId.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTaskId.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTaskId.Task3



--------------------------------------战争与和平-----------------------------
--魔族无罪论？！
rwtTask[tTaskId.Task4] = {}
rwtTask[tTaskId.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][21441]
rwtTask[tTaskId.Task4]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task4]["PreTaskId"] = tTaskId.Task3
rwtTask[tTaskId.Task4]["NextTaskId"] = tTaskId.Task5
rwtTask[tTaskId.Task4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId.Task4]["DialogId"] = tDialog.Task4
rwtTask[tTaskId.Task4]["TaskNpc"] = nNpcId_5

rwtTask[tTaskId.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1]["GenId"] = nSingleNpc_GenId_1
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][2]["GenId"] = nSingleNpc_GenId_2
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][3] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][3]["GenId"] = nSingleNpc_GenId_3
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][3]["MapId"] = 2001
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTaskId.Task4]["StartAutoWay"] = {}
rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_1
rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_GenId_1

--拳头说话
rwtTask[tTaskId.Task5] = {}
rwtTask[tTaskId.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][21442]
rwtTask[tTaskId.Task5]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task5]["PreTaskId"] = tTaskId.Task4
rwtTask[tTaskId.Task5]["NextTaskId"] = tTaskId.Task6
rwtTask[tTaskId.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTaskId.Task5]["DialogId"] = tDialog.Task5
rwtTask[tTaskId.Task5]["TaskNpc"] = nNpcId_6
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1]["GenId"] = nSingleNpc_GenId_3
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][3] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][3]["GenId"] = nSingleNpc_GenId_1
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][3]["MapId"] = 2001
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][4] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][4]["GenId"] = nSingleNpc_GenId_2
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][4]["MapId"] = 2001
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][5] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][5]["GenId"] = nSingleNpc_GenId_3
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][5]["MapId"] = 2001
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTaskId.Task5]["MonsterGroupGenId"] = nMonsterGroup_GenId

rwtTask[tTaskId.Task5]["KillMonsterGroup1" ]= nMonsterGroup_1

rwtTask[tTaskId.Task5]["StartAutoWay"] = {}
rwtTask[tTaskId.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task5]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_3
rwtTask[tTaskId.Task5]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_GenId_3


--祸及无辜
rwtTask[tTaskId.Task6] = {}
rwtTask[tTaskId.Task6]["Title"] = tLuaText[LANGUAGE_CONFIG][21443]
rwtTask[tTaskId.Task6]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task6]["PreTaskId"] = tTaskId.Task5
rwtTask[tTaskId.Task6]["NextTaskId"] = tTaskId.Task7
rwtTask[tTaskId.Task6]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId.Task6]["DialogId"] = tDialog.Task6
rwtTask[tTaskId.Task6]["TaskNpc"] = nNpcId_1

rwtTask[tTaskId.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1]["GenId"] = nSingleNpc_GenId_2
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTaskId.Task6]["StartAutoWay"] = {}
rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_2
rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_GenId_2


--寻找血霜草
rwtTask[tTaskId.Task7] = {}
rwtTask[tTaskId.Task7]["Title"] = tLuaText[LANGUAGE_CONFIG][21444]
rwtTask[tTaskId.Task7]["PreTaskId"] = tTaskId.Task6
rwtTask[tTaskId.Task7]["NextTaskId"] = tTaskId.Task8
rwtTask[tTaskId.Task7]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT

rwtTask[tTaskId.Task7]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_1
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][2]["GenId"] = nSingleNpc_GenId_2
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTaskId.Task7]["ReqCollectId1"] = nCollect_1
rwtTask[tTaskId.Task7]["ReqCollectCount1"] = 1

rwtTask[tTaskId.Task7]["StartAutoWay"] = {}
rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_1


--希望明日顺利
rwtTask[tTaskId.Task8] = {}
rwtTask[tTaskId.Task8]["Title"] = tLuaText[LANGUAGE_CONFIG][21445]
rwtTask[tTaskId.Task8]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task8]["PreTaskId"] = tTaskId.Task7
rwtTask[tTaskId.Task8]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId.Task8]["DialogId"] = tDialog.Task8
rwtTask[tTaskId.Task8]["TaskNpc"] = nNpcId_1

rwtTask[tTaskId.Task8]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][1]["GenId"] = nSingleNpc_GenId_2
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTaskId.Task8]["AwardFunc"] = function ()
	if not rwHasUserRecordData(7,4) then
		rwAddUserRecordData(7,4)
	end 
end

rwtTask[tTaskId.Task8]["StartAutoWay"] = {}
rwtTask[tTaskId.Task8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task8]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task8]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_2
rwtTask[tTaskId.Task8]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_GenId_2

rwtTask[tTaskId.Task8]["Awards"] = {}
rwtTask[tTaskId.Task8]["Awards"]["Events"] = {}
rwtTask[tTaskId.Task8]["Awards"]["Events"][1] = {}
rwtTask[tTaskId.Task8]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTaskId.Task8]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTaskId.Task8]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Id[2]
rwtTask[tTaskId.Task8]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTaskId.Task8]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTaskId.Task8
rwtTask[tTaskId.Task8]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtTask[tTaskId.Task8]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtTask[tTaskId.Task8]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTimeData
rwtTask[tTaskId.Task8]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtTask[tTaskId.Task8]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtTask[tTaskId.Task8]["Awards"]["Events"][1]["SetUserTempData"][1]["SetRecordTime"] = true