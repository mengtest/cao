--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--开服七日任务第5天
--by:mzy
--date:2018-12-20

--endregion


------***************************数据定义***************************----
-------任务id-------
local tTaskId = {}

------最后的旅程
--最后一站！
tTaskId.Task1 = 70196
--纹章石历史
tTaskId.Task2 = 70197

--纹章石
--鬼鬼祟祟的导游卡卡
tTaskId.Task3 = 70198
--那就帮帮他吧
tTaskId.Task4 = 70199
--有魔族！
tTaskId.Task5 = 70200

------返程
--导游卡卡仅存的良心
tTaskId.Task6 = 70201
--真的没想到
tTaskId.Task7 = 70202

-------对白id-------
local tDialog = {}
tDialog.Task1 = 11884
tDialog.Task2 = 11885
tDialog.Task3 = 11886
tDialog.Task4 = 11887
tDialog.Task5 = 11888
tDialog.Task6 = 11890
tDialog.Task7 = 11891

-------NPCGroup-------
--陷阱


--npc
--导游卡卡
local nNpc_Group1 = 20569
local nNpc_GenId_1 = 20010192

--塞罗(删除七日第一天创建的npc)
local nNpc_Group2 = 20528
local nNpc_GenId_2 = 1000169


-------npcid-------
--导游卡卡
local nNpcId_1 = 3591

--塞罗
local nNpcId_2 = 3574

-------MonsterGroup-------
--乔斯朗--乌萨
local nMonsterGroup_1 = 900401
local nMonsterGroup_GenId_1 = 20010194


-------monster-------
--乔斯朗
local nMonster_1 = 9000321

--乌萨
local nMonster_2 = 9000322
-----------奖励id------------------
local tAward_Id = {2000252,2000253,2000254}

---------陷阱---------
local nTrap_1 = 30569
local nTrapGen_1 = 20010190

local nTrap_2 = 30570
local nTrapGen_2 = 20010191

local nTrap_3 = 30571
local nTrapGen_3 = 20010195

---------采集--------
local nCollect_1 = 60316
local nCollectGen_1 = 20010193

--掩码
local nTimeData = 1146 --七日任务掩码

------***************************逻辑***************************----

-----------------------------------NPC组-----------
--陷阱
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {} 
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {} 
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {} 
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
--NPC
--导游卡卡
rwtNpcGroup[nNpc_Group1] = rwtNpcGroup[nNpc_Group1] or {} 
rwtNpcGroup[nNpc_Group1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpc_Group1]["NpcId"] = nNpcId_1

--塞罗
rwtNpcGroup[nNpc_Group2] = rwtNpcGroup[nNpc_Group2] or {}  
rwtNpcGroup[nNpc_Group2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpc_Group2]["NpcId"]= nNpcId_2

--采集
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {} 
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect 
rwtNpcGroup[nCollect_1]["DialogId"] = tDialog.Task4
------***************************任务***************************----
-----------------------------风车镇魔力石-----------------------------
--最后一站！
rwtTask[tTaskId.Task1] = {}
rwtTask[tTaskId.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][21455]
rwtTask[tTaskId.Task1]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task1]["NextTaskId"] = tTaskId.Task2
rwtTask[tTaskId.Task1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTaskId.Task1]["DialogId"] = tDialog.Task1
rwtTask[tTaskId.Task1]["AutoTaskDialog"] = tDialog.Task1

--纹章石历史
rwtTask[tTaskId.Task2] = {}
rwtTask[tTaskId.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][21455]
rwtTask[tTaskId.Task2]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task2]["PreTaskId"] = tTaskId.Task1
rwtTask[tTaskId.Task2]["NextTaskId"] = tTaskId.Task3
rwtTask[tTaskId.Task2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTaskId.Task2]["DialogId"] = tDialog.Task2
rwtTask[tTaskId.Task2]["ReqTrap1"] = nTrap_1
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1]["GenId"] = nTrapGen_1
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTaskId.Task2]["StartAutoWay"] = {}
rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayGenId"] = nTrapGen_1
rwtTask[tTaskId.Task2]["Awards"] = {}
rwtTask[tTaskId.Task2]["Awards"]["Events"] = {}
rwtTask[tTaskId.Task2]["Awards"]["Events"][1] = {}
rwtTask[tTaskId.Task2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTaskId.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTaskId.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Id[1]
rwtTask[tTaskId.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTaskId.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTaskId.Task2

--鬼鬼祟祟的导游卡卡
rwtTask[tTaskId.Task3] = {}
rwtTask[tTaskId.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][21455]
rwtTask[tTaskId.Task3]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task3]["PreTaskId"] = tTaskId.Task2
rwtTask[tTaskId.Task3]["NextTaskId"] = tTaskId.Task4
rwtTask[tTaskId.Task3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTaskId.Task3]["DialogId"] = tDialog.Task3
rwtTask[tTaskId.Task3]["ReqTrap1"] = nTrap_2
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_1
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][2]["GenId"] = nTrapGen_2
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTaskId.Task3]["StartAutoWay"] = {}
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayGenId"] = nTrapGen_2


--那就帮帮他吧
rwtTask[tTaskId.Task4] = {}
rwtTask[tTaskId.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][21455]
rwtTask[tTaskId.Task4]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task4]["PreTaskId"] = tTaskId.Task3
rwtTask[tTaskId.Task4]["NextTaskId"] = tTaskId.Task5
rwtTask[tTaskId.Task4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tTaskId.Task4]["ReqCollectId1"] = nCollect_1                                                  
rwtTask[tTaskId.Task4]["ReqCollectCount1"] = 1 
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1]["GenId"] = nCollectGen_1
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTaskId.Task4]["StartAutoWay"] = {}
rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayGenId"] = nCollectGen_1

--有魔族！
rwtTask[tTaskId.Task5] = {}
rwtTask[tTaskId.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][21455]
rwtTask[tTaskId.Task5]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task5]["PreTaskId"] = tTaskId.Task4
rwtTask[tTaskId.Task5]["NextTaskId"] = tTaskId.Task6
rwtTask[tTaskId.Task5]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTaskId.Task5]["ReqTrap1"] = nTrap_3
rwtTask[tTaskId.Task5]["DialogId"] = tDialog.Task5
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_1
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["GenId"] = nTrapGen_3
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTaskId.Task5]["MonsterGroupGenId"] = nMonsterGroup_GenId_1
rwtTask[tTaskId.Task5]["KillMonsterGroup1" ]= nMonsterGroup_1

rwtTask[tTaskId.Task5]["StartAutoWay"] = {}
rwtTask[tTaskId.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task5]["StartAutoWay"]["FindWayGroupId"] = nTrap_3
rwtTask[tTaskId.Task5]["StartAutoWay"]["FindWayGenId"] = nTrapGen_3
rwtTask[tTaskId.Task5]["Awards"] = {}
rwtTask[tTaskId.Task5]["Awards"]["Events"] = {}
rwtTask[tTaskId.Task5]["Awards"]["Events"][1] = {}
rwtTask[tTaskId.Task5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTaskId.Task5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTaskId.Task5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Id[2]
rwtTask[tTaskId.Task5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTaskId.Task5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTaskId.Task5

--导游卡卡仅存的良心
rwtTask[tTaskId.Task6] = {}
rwtTask[tTaskId.Task6]["Title"] = tLuaText[LANGUAGE_CONFIG][21455]
rwtTask[tTaskId.Task6]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task6]["PreTaskId"] = tTaskId.Task5
rwtTask[tTaskId.Task6]["NextTaskId"] = tTaskId.Task7
rwtTask[tTaskId.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId.Task6]["DialogId"] = tDialog.Task6
rwtTask[tTaskId.Task6]["TaskNpc"] = nNpcId_1
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_1
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTaskId.Task6]["StartAutoWay"] = {}
rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayGroupId"] = nNpc_Group1
rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayGenId"] = nNpc_GenId_1




--------------------------------------风波停息-----------------------------
--真的没想到
rwtTask[tTaskId.Task7] = {}
rwtTask[tTaskId.Task7]["Title"] = tLuaText[LANGUAGE_CONFIG][21456]
rwtTask[tTaskId.Task7]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task7]["PreTaskId"] = tTaskId.Task6
rwtTask[tTaskId.Task7]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId.Task7]["DialogId"] = tDialog.Task7
rwtTask[tTaskId.Task7]["TaskNpc"] = nNpcId_2

rwtTask[tTaskId.Task7]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_2
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTaskId.Task7]["StartAutoWay"] = {}
rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayGroupId"] = nNpc_Group2
rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayGenId"] = nNpc_GenId_2

rwtTask[tTaskId.Task7]["Awards"] = {}
rwtTask[tTaskId.Task7]["Awards"]["Events"] = {}
rwtTask[tTaskId.Task7]["Awards"]["Events"][1] = {}
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Id[3]
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTaskId.Task7
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTimeData
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data7
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["SetUserTempData"][1]["SetRecordTime"] = true
rwtTask[tTaskId.Task7]["AwardFunc"] = function ()
	if not rwHasUserRecordData(7,7) then
		rwAddUserRecordData(7,7)
	end 
end
