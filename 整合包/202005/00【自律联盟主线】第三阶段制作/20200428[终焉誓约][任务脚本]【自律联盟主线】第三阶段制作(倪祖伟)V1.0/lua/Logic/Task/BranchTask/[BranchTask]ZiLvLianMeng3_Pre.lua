--region [BranchTask]ZiLvLianMeng_Pre3
--Purpose:		自律联盟前置任务
--Creator: 		倪祖伟
--Created:		2020-04-29
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-04-29 $
--RCS-ID:		$Revision: 1 $
--endregion

--地图ID
local nMapId = 2001


--------------------------------------------------------------------------------
local tTask = {}
tTask.nZiLvLianMeng_Pre1 = 70562
tTask.nZiLvLianMeng_Pre2 = 70563
tTask.nZiLvLianMeng_Pre3 = 70564
tTask.nZiLvLianMeng_Pre4 = 70565
tTask.nZiLvLianMeng_Pre5 = 70566
tTask.nZiLvLianMeng_Pre6 = 70567
tTask.nZiLvLianMeng_Pre7 = 70568
tTask.nZiLvLianMeng_Pre8 = 70569
tTask.nZiLvLianMeng_Pre9 = 70599


--对话ID
local tDialog = {}
tDialog.nTask1 =  13553
tDialog.nTask2 =  13554
tDialog.nTask3 =  13555
tDialog.nTask4 =  13556
tDialog.nTask5 =  13557
tDialog.nTask6 =  13592--13558
tDialog.nTask7 =  13559
tDialog.nTask8 =  13560
tDialog.nTask9 =  13589

local tSingleNpc = {}

tSingleNpc.nNpc_AnDaoFu = 3005
tSingleNpc.nNpcGroup_AnDaoFu = 20112
tSingleNpc.nNpcGroup_GenId_AnDaoFu = 2001655

tSingleNpc.nNpc_MiLei = 4239
tSingleNpc.nNpcGroup_MiLei = 21379
tSingleNpc.nNpcGroup_GenId_MiLei = 1000301

tSingleNpc.nNpc_GeBuLinShangFanMaiKen = 3269
tSingleNpc.nNpcGroup_GeBuLinShangFanMaiKen = 20150
tSingleNpc.nNpcGroup_GenId_GeBuLinShangFanMaiKen = 1000016

tSingleNpc.nNpc_JiuGuan = 3968
tSingleNpc.nNpcGroup_JiuGuan = 21069
tSingleNpc.nNpcGroup_GenId_JiuGuan = 1000266

tSingleNpc.nNpcGroup_GenId_72hao = 1000302
tSingleNpc.nNpcGroup_GenId_72hao2= 1000303
tSingleNpc.nNpcGroup_GenId_72haoDie = 20010361
tSingleNpc.nNpcGroup_GenId_72haoDie2= 20010362
tSingleNpc.nNpcGroup_GenId_XiaoHei = 1000053 --酒馆门前，兔族小黑

local nGneidMonster = 1000304
local nMonsterGroup = 900615

tSingleNpc.nTrap1 = 30764
tSingleNpc.nTrap2 = 30765
tSingleNpc.nTrap1GenId = 1000299
tSingleNpc.nTrap2GenId = 1000300

rwtNpcGroup[tSingleNpc.nTrap1] = rwtNpcGroup[tSingleNpc.nTrap1] or {}
rwtNpcGroup[tSingleNpc.nTrap1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tSingleNpc.nTrap2] = rwtNpcGroup[tSingleNpc.nTrap2] or {}
rwtNpcGroup[tSingleNpc.nTrap2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tSingleNpc.nNpcGroup_MiLei] = rwtNpcGroup[tSingleNpc.nNpcGroup_MiLei] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_MiLei]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_MiLei]["NpcId"] = tSingleNpc.nNpc_MiLei
rwtNpc[tSingleNpc.nNpc_MiLei] = rwtNpc[tSingleNpc.nNpc_MiLei] or {}

--奖励
--2000220  2000239 
local tZiLvLianMengAwardId = {}
tZiLvLianMengAwardId[1]  =	2000679


-----------------------------------------------自律联盟万事通-------------------------------------------
rwtTask[tTask.nZiLvLianMeng_Pre1] = {}
rwtTask[tTask.nZiLvLianMeng_Pre1]["Title"] = tLuaText[LANGUAGE_CONFIG][22015]
rwtTask[tTask.nZiLvLianMeng_Pre1]["TaskType"] = CONST_TASK_TYPE.SIDE
-- rwtTask[tTask.nZiLvLianMeng_Pre1]["PreTaskId"] = start
rwtTask[tTask.nZiLvLianMeng_Pre1]["NextTaskId"] = tTask.nZiLvLianMeng_Pre2
rwtTask[tTask.nZiLvLianMeng_Pre1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nZiLvLianMeng_Pre1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng_Pre1]["DialogId"] = tDialog.nTask1


rwtTask[tTask.nZiLvLianMeng_Pre2] = {}
rwtTask[tTask.nZiLvLianMeng_Pre2]["Title"] = tLuaText[LANGUAGE_CONFIG][22015]
rwtTask[tTask.nZiLvLianMeng_Pre2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng_Pre2]["PreTaskId"] = tTask.nZiLvLianMeng_Pre1
rwtTask[tTask.nZiLvLianMeng_Pre2]["NextTaskId"] = tTask.nZiLvLianMeng_Pre3
rwtTask[tTask.nZiLvLianMeng_Pre2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng_Pre2]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng_Pre2]["DialogId"] = tDialog.nTask2
rwtTask[tTask.nZiLvLianMeng_Pre2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng_Pre2]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTask.nZiLvLianMeng_Pre2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng_Pre2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu


rwtTask[tTask.nZiLvLianMeng_Pre3] = {}
rwtTask[tTask.nZiLvLianMeng_Pre3]["Title"] = tLuaText[LANGUAGE_CONFIG][22015]
rwtTask[tTask.nZiLvLianMeng_Pre3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng_Pre3]["PreTaskId"] = tTask.nZiLvLianMeng_Pre2
rwtTask[tTask.nZiLvLianMeng_Pre3]["NextTaskId"] = tTask.nZiLvLianMeng_Pre4
rwtTask[tTask.nZiLvLianMeng_Pre3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng_Pre3]["ReqTrap1"] = tSingleNpc.nTrap1
rwtTask[tTask.nZiLvLianMeng_Pre3]["DialogId"] = tDialog.nTask3
rwtTask[tTask.nZiLvLianMeng_Pre3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng_Pre3]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nTrap1GenId
rwtTask[tTask.nZiLvLianMeng_Pre3]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tTask.nZiLvLianMeng_Pre3]["AcceptDelDynaObj"] = tSingleNpc.nNpcGroup_GenId_XiaoHei
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nTrap1
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nTrap1GenId

rwtTask[tTask.nZiLvLianMeng_Pre4] = {}
rwtTask[tTask.nZiLvLianMeng_Pre4]["Title"] = tLuaText[LANGUAGE_CONFIG][22015]
rwtTask[tTask.nZiLvLianMeng_Pre4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng_Pre4]["PreTaskId"] = tTask.nZiLvLianMeng_Pre3
rwtTask[tTask.nZiLvLianMeng_Pre4]["NextTaskId"] = tTask.nZiLvLianMeng_Pre5
rwtTask[tTask.nZiLvLianMeng_Pre4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng_Pre4]["TaskNpc"] = tSingleNpc.nNpc_JiuGuan
rwtTask[tTask.nZiLvLianMeng_Pre4]["DialogId"] = tDialog.nTask4
rwtTask[tTask.nZiLvLianMeng_Pre4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng_Pre4]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTask.nZiLvLianMeng_Pre4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiuGuan
rwtTask[tTask.nZiLvLianMeng_Pre4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiuGuan


rwtTask[tTask.nZiLvLianMeng_Pre5] = {}
rwtTask[tTask.nZiLvLianMeng_Pre5]["Title"] = tLuaText[LANGUAGE_CONFIG][22015]
rwtTask[tTask.nZiLvLianMeng_Pre5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng_Pre5]["PreTaskId"] = tTask.nZiLvLianMeng_Pre4
rwtTask[tTask.nZiLvLianMeng_Pre5]["NextTaskId"] = tTask.nZiLvLianMeng_Pre6
rwtTask[tTask.nZiLvLianMeng_Pre5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
-- rwtTask[tTask.nZiLvLianMeng_Pre5]["TaskNpc"] = tSingleNpc.nNpc_GeBuLinShangFanMaiKen
rwtTask[tTask.nZiLvLianMeng_Pre5]["DialogId"] = tDialog.nTask5
rwtTask[tTask.nZiLvLianMeng_Pre5]["AutoTaskDialog"] = tDialog.nTask5


rwtTask[tTask.nZiLvLianMeng_Pre6] = {}
rwtTask[tTask.nZiLvLianMeng_Pre6]["Title"] = tLuaText[LANGUAGE_CONFIG][20374]
rwtTask[tTask.nZiLvLianMeng_Pre6]["PreTaskId"] = tTask.nZiLvLianMeng_Pre5
rwtTask[tTask.nZiLvLianMeng_Pre6]["NextTaskId"] = tTask.nZiLvLianMeng_Pre7
rwtTask[tTask.nZiLvLianMeng_Pre6]["DialogId"] = tDialog.nTask6
rwtTask[tTask.nZiLvLianMeng_Pre6]["ReqTrap1"] = tSingleNpc.nTrap2
rwtTask[tTask.nZiLvLianMeng_Pre6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nTrap2GenId
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_MiLei
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_72hao
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][4] = {}
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][4]["GenId"] = tSingleNpc.nNpcGroup_GenId_72hao2
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][4]["MapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre6]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng_Pre6]["KillMonsterGroup1"]= nMonsterGroup
rwtTask[tTask.nZiLvLianMeng_Pre6]["MonsterGroupGenId"] = nGneidMonster
rwtTask[tTask.nZiLvLianMeng_Pre6]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng_Pre6]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre6]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nTrap2
rwtTask[tTask.nZiLvLianMeng_Pre6]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nTrap2GenId

rwtTask[tTask.nZiLvLianMeng_Pre7] = {}
rwtTask[tTask.nZiLvLianMeng_Pre7]["Title"] = tLuaText[LANGUAGE_CONFIG][22015]
rwtTask[tTask.nZiLvLianMeng_Pre7]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng_Pre7]["PreTaskId"] = tTask.nZiLvLianMeng_Pre6
rwtTask[tTask.nZiLvLianMeng_Pre7]["NextTaskId"] = tTask.nZiLvLianMeng_Pre8
rwtTask[tTask.nZiLvLianMeng_Pre7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng_Pre7]["TaskNpc"] = tSingleNpc.nNpc_MiLei
rwtTask[tTask.nZiLvLianMeng_Pre7]["DialogId"] = tDialog.nTask7
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_72haoDie
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_72haoDie2
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_MiLei
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre7]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng_Pre7]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng_Pre7]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre7]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_MiLei
rwtTask[tTask.nZiLvLianMeng_Pre7]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_MiLei


rwtTask[tTask.nZiLvLianMeng_Pre8] = {}
rwtTask[tTask.nZiLvLianMeng_Pre8]["Title"] = tLuaText[LANGUAGE_CONFIG][22015]
rwtTask[tTask.nZiLvLianMeng_Pre8]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng_Pre8]["PreTaskId"] = tTask.nZiLvLianMeng_Pre7
rwtTask[tTask.nZiLvLianMeng_Pre8]["NextTaskId"] = tTask.nZiLvLianMeng_Pre9
rwtTask[tTask.nZiLvLianMeng_Pre8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng_Pre8]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng_Pre8]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng_Pre8]["DialogId"] = tDialog.nTask8
rwtTask[tTask.nZiLvLianMeng_Pre8]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng_Pre8]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTask.nZiLvLianMeng_Pre8]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng_Pre8]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu

rwtTask[tTask.nZiLvLianMeng_Pre9] = {}
rwtTask[tTask.nZiLvLianMeng_Pre9]["Title"] = tLuaText[LANGUAGE_CONFIG][22015]
rwtTask[tTask.nZiLvLianMeng_Pre9]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng_Pre9]["PreTaskId"] = tTask.nZiLvLianMeng_Pre8
-- rwtTask[tTask.nZiLvLianMeng_Pre9]["NextTaskId"] = nil
rwtTask[tTask.nZiLvLianMeng_Pre9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng_Pre9]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng_Pre9]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng_Pre9]["DialogId"] = tDialog.nTask9
rwtTask[tTask.nZiLvLianMeng_Pre9]["AutoTaskDialog"] = tDialog.nTask9
rwtTask[tTask.nZiLvLianMeng_Pre9]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre9]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre9]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng_Pre9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng_Pre9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[1]
rwtTask[tTask.nZiLvLianMeng_Pre9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng_Pre9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng_Pre9
