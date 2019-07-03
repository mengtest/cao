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
local nTimeData = 1146 --七日任务掩码
------风车镇魔力石
--神奇的风车镇
tTaskId.Task1 = 70059
--特色步行街
tTaskId.Task2 = 70060
--风车镇特产店
tTaskId.Task3 = 70061
--魔力石大甩卖
tTaskId.Task4 = 70062
--大骗子导游
tTaskId.Task5 = 70063
--奸商找茬
tTaskId.Task6 = 70064

------风波停息
--笨蛋游客
tTaskId.Task7 = 70065

-------对白id-------
local tDialog = {}

--神奇的风车镇
tDialog.Task1 = 11857
--特色步行街
tDialog.Task2 = 11858
--风车镇特产店
tDialog.Task3 = 11859
--魔力石大甩卖
tDialog.Task4 = 11860
--大骗子导游
tDialog.Task5 = 11861
--奸商找茬
tDialog.Task6 = 11862
--怪物战后对白
tDialog.AfterBattle = 11863
--笨蛋游客
tDialog.Task7 = 11864

-------NPCGroup-------
--陷阱
--任务3陷阱
local nTrap_1 = 30563
local nTrap_GenId_1 = 20010178
--任务6陷阱
local nTrap_2 = 30564
local nTrap_GenId_2 = 20010179

--npc
--导游卡卡
local nSingleNpc_1 = 20566
local nSingleNpc_GenId_1 = 20010180
--售货员阿诺
local nSingleNpc_2 = 20567
local nSingleNpc_GenId_2 = 20010181
--乔斯朗
local nSingleNpc_3 = 20568
local nSingleNpc_GenId_3 = 20010182



-------npcid-------
--导游卡卡
local nNpcId_1 = 3591

--售货员阿诺(新增)
local nNpcId_2 = 3633

--乔斯朗
local nNpcId_3 = 3592

--对白NPC
--奸商穆萨
local nNpcId_5 = 3635


-------MonsterGroup-------
--奸商穆萨
local nMonsterGroup_1 = 900399
local nMonsterGroup_GenId_1 = 20010183


-------monster-------
--奸商穆萨
local nMonster_1 = 9000319

-----------奖励id------------------
local tAward_Id = {}
tAward_Id[1] = 2000245      --风车镇魔力石
tAward_Id[2] = 2000246      --风波停息


------***************************逻辑***************************----

-----------------------------------NPC组-----------
--陷阱
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

--NPC
--导游卡卡
rwtNpcGroup[nSingleNpc_1] = {}    
rwtNpcGroup[nSingleNpc_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nSingleNpc_1]["NpcId"]= nNpcId_1

--售货员布朗克(新增)
rwtNpcGroup[nSingleNpc_2] = {}    
rwtNpcGroup[nSingleNpc_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nSingleNpc_2]["NpcId"]= nNpcId_2

--乔斯朗
rwtNpcGroup[nSingleNpc_3] = {}    
rwtNpcGroup[nSingleNpc_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nSingleNpc_3]["NpcId"]= nNpcId_3

-----------------------------------NPC-----------

--售货员布朗克(新增)
rwtNpc[nNpcId_2] = rwtNpc[nNpcId_2] or {}


------***************************任务***************************----
--------------------------------------风车镇魔力石-----------------------------
--继续出发！
rwtTask[tTaskId.Task1] = {}
rwtTask[tTaskId.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][21455]
rwtTask[tTaskId.Task1]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task1]["NextTaskId"] = tTaskId.Task2
rwtTask[tTaskId.Task1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTaskId.Task1]["DialogId"] = tDialog.Task1
rwtTask[tTaskId.Task1]["AutoTaskDialog"] = tDialog.Task1

--特色步行街
rwtTask[tTaskId.Task2] = {}
rwtTask[tTaskId.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][21455]
rwtTask[tTaskId.Task2]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task2]["PreTaskId"] = tTaskId.Task1
rwtTask[tTaskId.Task2]["NextTaskId"] = tTaskId.Task3
rwtTask[tTaskId.Task2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId.Task2]["DialogId"] = tDialog.Task2
rwtTask[tTaskId.Task2]["TaskNpc"] = nNpcId_1

rwtTask[tTaskId.Task2]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1]["GenId"] = nSingleNpc_GenId_1
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][2]["GenId"] = nSingleNpc_GenId_2
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTaskId.Task2]["StartAutoWay"] = {}
rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_1
rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_GenId_1


--风车镇特产店
rwtTask[tTaskId.Task3] = {}
rwtTask[tTaskId.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][21455]
rwtTask[tTaskId.Task3]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task3]["PreTaskId"] = tTaskId.Task2
rwtTask[tTaskId.Task3]["NextTaskId"] = tTaskId.Task4
rwtTask[tTaskId.Task3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTaskId.Task3]["DialogId"] = tDialog.Task3
rwtTask[tTaskId.Task3]["ReqTrap1"] = nTrap_1

rwtTask[tTaskId.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
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

rwtTask[tTaskId.Task3]["StartAutoWay"] = {}
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_1

--魔力石大甩卖
rwtTask[tTaskId.Task4] = {}
rwtTask[tTaskId.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][21455]
rwtTask[tTaskId.Task4]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task4]["PreTaskId"] = tTaskId.Task3
rwtTask[tTaskId.Task4]["NextTaskId"] = tTaskId.Task5
rwtTask[tTaskId.Task4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId.Task4]["DialogId"] = tDialog.Task4
rwtTask[tTaskId.Task4]["TaskNpc"] = nNpcId_2

rwtTask[tTaskId.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1]["GenId"] = nSingleNpc_GenId_1
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][2]["GenId"] = nSingleNpc_GenId_2
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTaskId.Task4]["StartAutoWay"] = {}
rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_2
rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_GenId_2

--大骗子导游
rwtTask[tTaskId.Task5] = {}
rwtTask[tTaskId.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][21455]
rwtTask[tTaskId.Task5]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task5]["PreTaskId"] = tTaskId.Task4
rwtTask[tTaskId.Task5]["NextTaskId"] = tTaskId.Task6
rwtTask[tTaskId.Task5]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId.Task5]["DialogId"] = tDialog.Task5
rwtTask[tTaskId.Task5]["TaskNpc"] = nNpcId_1

rwtTask[tTaskId.Task5]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1]["GenId"] = nSingleNpc_GenId_1
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["GenId"] = nSingleNpc_GenId_2
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTaskId.Task5]["StartAutoWay"] = {}
rwtTask[tTaskId.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task5]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_1
rwtTask[tTaskId.Task5]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_GenId_1

--奸商找茬
rwtTask[tTaskId.Task6] = {}
rwtTask[tTaskId.Task6]["Title"] = tLuaText[LANGUAGE_CONFIG][21455]
rwtTask[tTaskId.Task6]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task6]["PreTaskId"] = tTaskId.Task5
rwtTask[tTaskId.Task6]["NextTaskId"] = tTaskId.Task7
rwtTask[tTaskId.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTaskId.Task6]["DialogId"] = tDialog.Task6
rwtTask[tTaskId.Task6]["ReqTrap1"] = nTrap_2
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_2
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_1
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][3] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][3]["GenId"] = nSingleNpc_GenId_2
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][3]["MapId"] = 2001
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTaskId.Task6]["MonsterGroupGenId"] = nMonsterGroup_GenId_1

rwtTask[tTaskId.Task6]["KillMonsterGroup1" ]= nMonsterGroup_1

rwtTask[tTaskId.Task6]["StartAutoWay"] = {}
rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_2


rwtTask[tTaskId.Task6]["Awards"] = {}
rwtTask[tTaskId.Task6]["Awards"]["Events"] = {}
rwtTask[tTaskId.Task6]["Awards"]["Events"][1] = {}
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Id[1]
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTaskId.Task6

--------------------------------------风波停息-----------------------------
--笨蛋游客
rwtTask[tTaskId.Task7] = {}
rwtTask[tTaskId.Task7]["Title"] = tLuaText[LANGUAGE_CONFIG][21456]
rwtTask[tTaskId.Task7]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTaskId.Task7]["PreTaskId"] = tTaskId.Task6
rwtTask[tTaskId.Task7]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId.Task7]["DialogId"] = tDialog.Task7
rwtTask[tTaskId.Task7]["TaskNpc"] = nNpcId_3

rwtTask[tTaskId.Task7]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1]["GenId"] = nSingleNpc_GenId_3
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["GenId"] = nSingleNpc_GenId_2
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTaskId.Task7]["StartAutoWay"] = {}
rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_3
rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_GenId_3

rwtTask[tTaskId.Task7]["Awards"] = {}
rwtTask[tTaskId.Task7]["Awards"]["Events"] = {}
rwtTask[tTaskId.Task7]["Awards"]["Events"][1] = {}
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Id[2]
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTaskId.Task7
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTimeData
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data5
rwtTask[tTaskId.Task7]["Awards"]["Events"][1]["SetUserTempData"][1]["SetRecordTime"] = true
rwtTask[tTaskId.Task7]["AwardFunc"] = function ()
	if not rwHasUserRecordData(7,5) then
		rwAddUserRecordData(7,5)
	end 
end
