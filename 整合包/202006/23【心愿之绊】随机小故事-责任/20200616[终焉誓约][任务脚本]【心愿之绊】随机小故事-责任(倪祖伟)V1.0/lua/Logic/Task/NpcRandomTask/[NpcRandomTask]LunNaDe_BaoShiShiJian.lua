--region [NpcRandomTask]LunNaDe_BaoShiShiJian.lua
--Purpose:		NPC随机事件 - 伦纳德宝石引发的风波
--Creator: 		倪祖伟
--Created:		2020-06-16
--Modifier:		$Author:倪祖伟	$
--Modified:		$Date:2020-06-16	$
--RCS-ID:		$Revision:1	$
--endregion

--任务Id
local tTask_BaoShiShiJian = {}
tTask_BaoShiShiJian.Task1 = 70626
tTask_BaoShiShiJian.Task2 = 70627
tTask_BaoShiShiJian.Task3 = 70628
tTask_BaoShiShiJian.Task4 = 70629
tTask_BaoShiShiJian.Task5 = 70630
tTask_BaoShiShiJian.Task6 = 70631

local tDialogs = {}
tDialogs.Task1 = 13687
tDialogs.Task2 = 13688
tDialogs.Task3 = 13689
tDialogs.Task4 = 13690
tDialogs.Task5 = 13691
tDialogs.Task6 = 13692

local tNpcId = {}
tNpcId.LunNaDe = 3043
tNpcId.SangNi = 2035
-- tNpcId.FuShang = 4478
tNpcId.Kuangg = 4479
tNpcId.LaiYi = 4480

rwtNpc[tNpcId.Kuangg] = {}
rwtNpc[tNpcId.Kuangg]["DialogId"] = {2627}
rwtNpc[tNpcId.LaiYi] = {}

local tNpcGroup={}
tNpcGroup.LunNaDe = 20113
tNpcGroup.SangNi_Build = 10004
tNpcGroup.FuShang_trap = 30790
tNpcGroup.Kuangg = 21457
tNpcGroup.LaiYi_Build = 10046

local tGenId = {}
tGenId.LunNaDe = 2001656
tGenId.SangNi_Build = 2001112
tGenId.FuShang_trap = 20010371
tGenId.Kuangg = 20010370
tGenId.LaiYi_Build = 20010369

local nAwardId = 2000814

rwtNpcGroup[tNpcGroup.FuShang_trap] = rwtNpcGroup[tNpcGroup.FuShang_trap] or {}
rwtNpcGroup[tNpcGroup.FuShang_trap]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tNpcGroup.LaiYi_Build] = rwtNpcGroup[tNpcGroup.LaiYi_Build] or {}
rwtNpcGroup[tNpcGroup.LaiYi_Build]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.LaiYi_Build]["NpcId"]= tNpcId.LaiYi

rwtNpcGroup[tNpcGroup.Kuangg] = rwtNpcGroup[tNpcGroup.Kuangg] or {}
rwtNpcGroup[tNpcGroup.Kuangg]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Kuangg]["NpcId"]= tNpcId.Kuangg

--伦纳德
rwtTask[tTask_BaoShiShiJian.Task1] = {}
rwtTask[tTask_BaoShiShiJian.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][22048]
rwtTask[tTask_BaoShiShiJian.Task1]["TaskType"] = CONST_TASK_TYPE.NPC_RANDOMEVENT
rwtTask[tTask_BaoShiShiJian.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_BaoShiShiJian.Task1]["NextTaskId"] = tTask_BaoShiShiJian.Task2
rwtTask[tTask_BaoShiShiJian.Task1]["TaskNpc"] = tNpcId.LunNaDe
rwtTask[tTask_BaoShiShiJian.Task1]["AutoTaskDialog"] = tDialogs.Task1
rwtTask[tTask_BaoShiShiJian.Task1]["DialogId"] = tDialogs.Task1

rwtTask[tTask_BaoShiShiJian.Task2] = {}
rwtTask[tTask_BaoShiShiJian.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][22048]
rwtTask[tTask_BaoShiShiJian.Task2]["TaskType"] = CONST_TASK_TYPE.NPC_RANDOMEVENT
rwtTask[tTask_BaoShiShiJian.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_BaoShiShiJian.Task2]["NextTaskId"] = tTask_BaoShiShiJian.Task3
rwtTask[tTask_BaoShiShiJian.Task2]["TaskNpc"] = tNpcId.SangNi
rwtTask[tTask_BaoShiShiJian.Task2]["DialogId"] = tDialogs.Task2
rwtTask[tTask_BaoShiShiJian.Task2]["StartAutoWay"] = {}
rwtTask[tTask_BaoShiShiJian.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_BaoShiShiJian.Task2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_BaoShiShiJian.Task2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.SangNi_Build
rwtTask[tTask_BaoShiShiJian.Task2]["StartAutoWay"]["FindWayGenId"] = tGenId.SangNi_Build

rwtTask[tTask_BaoShiShiJian.Task3] = {}
rwtTask[tTask_BaoShiShiJian.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][22048]
rwtTask[tTask_BaoShiShiJian.Task3]["TaskType"] = CONST_TASK_TYPE.NPC_RANDOMEVENT
rwtTask[tTask_BaoShiShiJian.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_BaoShiShiJian.Task3]["NextTaskId"] = tTask_BaoShiShiJian.Task4
rwtTask[tTask_BaoShiShiJian.Task3]["ReqTrap1"] = tNpcGroup.FuShang_trap
rwtTask[tTask_BaoShiShiJian.Task3]["DialogId"] = tDialogs.Task3
rwtTask[tTask_BaoShiShiJian.Task3]["StartAutoWay"] = {}
rwtTask[tTask_BaoShiShiJian.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_BaoShiShiJian.Task3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_BaoShiShiJian.Task3]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.FuShang_trap
rwtTask[tTask_BaoShiShiJian.Task3]["StartAutoWay"]["FindWayGenId"] = tGenId.FuShang_trap
rwtTask[tTask_BaoShiShiJian.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tTask_BaoShiShiJian.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_BaoShiShiJian.Task3]["DynaNpcGroupGen"][1]["GenId"] = tGenId.FuShang_trap
rwtTask[tTask_BaoShiShiJian.Task3]["DynaNpcGroupGen"][1]["MapId"] = 2001

rwtTask[tTask_BaoShiShiJian.Task4] = {}
rwtTask[tTask_BaoShiShiJian.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][22048]
rwtTask[tTask_BaoShiShiJian.Task4]["TaskType"] = CONST_TASK_TYPE.NPC_RANDOMEVENT
rwtTask[tTask_BaoShiShiJian.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_BaoShiShiJian.Task4]["NextTaskId"] = tTask_BaoShiShiJian.Task5
rwtTask[tTask_BaoShiShiJian.Task4]["TaskNpc"] = tNpcId.Kuangg
rwtTask[tTask_BaoShiShiJian.Task4]["DialogId"] = tDialogs.Task4
rwtTask[tTask_BaoShiShiJian.Task4]["StartAutoWay"] = {}
rwtTask[tTask_BaoShiShiJian.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_BaoShiShiJian.Task4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_BaoShiShiJian.Task4]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Kuangg
rwtTask[tTask_BaoShiShiJian.Task4]["StartAutoWay"]["FindWayGenId"] = tGenId.Kuangg
rwtTask[tTask_BaoShiShiJian.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tTask_BaoShiShiJian.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_BaoShiShiJian.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask_BaoShiShiJian.Task4]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Kuangg
rwtTask[tTask_BaoShiShiJian.Task4]["DynaNpcGroupGen"][1]["MapId"] = 2001

rwtTask[tTask_BaoShiShiJian.Task5] = {}
rwtTask[tTask_BaoShiShiJian.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][22048]
rwtTask[tTask_BaoShiShiJian.Task5]["TaskType"] = CONST_TASK_TYPE.NPC_RANDOMEVENT
rwtTask[tTask_BaoShiShiJian.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_BaoShiShiJian.Task5]["NextTaskId"] = tTask_BaoShiShiJian.Task6
rwtTask[tTask_BaoShiShiJian.Task5]["TaskNpc"] = tNpcId.LaiYi
rwtTask[tTask_BaoShiShiJian.Task5]["DialogId"] = tDialogs.Task5
rwtTask[tTask_BaoShiShiJian.Task5]["CloseDialog"] = 0
rwtTask[tTask_BaoShiShiJian.Task5]["StartAutoWay"] = {}
rwtTask[tTask_BaoShiShiJian.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_BaoShiShiJian.Task5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_BaoShiShiJian.Task5]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.LaiYi_Build
rwtTask[tTask_BaoShiShiJian.Task5]["StartAutoWay"]["FindWayGenId"] = tGenId.LaiYi_Build
rwtTask[tTask_BaoShiShiJian.Task5]["DynaNpcGroupGen"] = {}
rwtTask[tTask_BaoShiShiJian.Task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_BaoShiShiJian.Task5]["DynaNpcGroupGen"][1]["GenId"] = tGenId.LaiYi_Build
rwtTask[tTask_BaoShiShiJian.Task5]["DynaNpcGroupGen"][1]["MapId"] = 2001

rwtTask[tTask_BaoShiShiJian.Task6] = {}
rwtTask[tTask_BaoShiShiJian.Task6]["Title"] = tLuaText[LANGUAGE_CONFIG][22048] 
rwtTask[tTask_BaoShiShiJian.Task6]["TaskType"] = CONST_TASK_TYPE.NPC_RANDOMEVENT
rwtTask[tTask_BaoShiShiJian.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_BaoShiShiJian.Task6]["DialogId"] = tDialogs.Task6
rwtTask[tTask_BaoShiShiJian.Task6]["TaskNpc"] = tNpcId.LaiYi
rwtTask[tTask_BaoShiShiJian.Task6]["AutoTaskDialog"] = tDialogs.Task6
rwtTask[tTask_BaoShiShiJian.Task6]["IsNpcRELastTask"] = 1
rwtTask[tTask_BaoShiShiJian.Task6]["Awards"] = {}
rwtTask[tTask_BaoShiShiJian.Task6]["Awards"]["Events"] = {}
rwtTask[tTask_BaoShiShiJian.Task6]["Awards"]["Events"][1] = {}
rwtTask[tTask_BaoShiShiJian.Task6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_BaoShiShiJian.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_BaoShiShiJian.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId
rwtTask[tTask_BaoShiShiJian.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_BaoShiShiJian.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_BaoShiShiJian.Task6

