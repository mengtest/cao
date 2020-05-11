--region 		WangPaiTongJi_Pre.lua
--Purpose:		王牌通缉前置任务
--Creator: 		苏亚玲
--Created:		2019-08-03
--Modifier:		$Author: 苏亚玲 $
--Modified:		$Date: 2020-03-23 $
--RCS-ID:		$Revision: 5 $
--endregion

-------------------------------------------- 数据定义 ----------------------------------------------

--地图ID
local nMapId_KNSC = 1000

--任务ID
local tTask = {}
tTask.nWangPaiTongJiPre_1 = 70234 		--紧急呼叫 	    出大事了
tTask.nWangPaiTongJiPre_1Add = 70263 	--追缉逃犯		帮手？
tTask.nWangPaiTongJiPre_2 = 70235 		--扑克牌追踪    追踪魔法
tTask.nWangPaiTongJiPre_3 = 70236 		--扑克牌追踪    继续追踪
tTask.nWangPaiTongJiPre_4 = 70237 		--扑克牌追踪    位置锁定
tTask.nWangPaiTongJiPre_5 = 70238 		--逃犯别跑！    落网
tTask.nWangPaiTongJiPre_6 = 70239		--复命          向安道夫复命
tTask.nWangPaiTongJiPre_7 = 70240 		--纳塔娜参上    欢迎纳塔娜


--对话ID
local tDialog = {}
tDialog.nTask1 = 12704
tDialog.nTask1Add = 12783
tDialog.nTask2 = 12705
tDialog.nTask3 = 12706
tDialog.nTask4 = 12707
tDialog.nTask5 = 12708 
tDialog.nTask6_1 = 12709
tDialog.nTask6_2 = 12920
--tDialog.nTask7_2 = 12921

--怪物：
local nMonster_1 = 9000660			 --10012  	食人魔·哈蒙   战前战后			 
local nMonsterGroup_1 = 900591
local nMonsterGroup_1_Gen = 1000207

local nMonster_2 = 9000661			 --10022  	纳塔娜			    100311
local nMonsterGroup_2 = 900592
local nMonsterGroup_2_Gen = 1000225

--Npc
local nNpc_NaTaNa = 113    	 --纳塔娜         2053
-- local nNpc_JinWeiDuJun = 3835 	 --禁卫督军萨林   2011   GuardwarlordSalin  禁卫督军塔拉
local nNpc_ShiRenMo = 3836 	 --哈魔领主   黑山领主
local nNPC_AnDaoFu = 3005 	     --铁臂安道夫
local nNPC_XiaLi = 3834 	     --夏利



local nNpcGroup_NaTaNa = 20952
-- local nNpcGroup_JinWeiDuJun = 20960
-- local nNpcGroup_AnDaoFu = 20112
-- local nNpcGroup_ShiRenMo = 20966
-- local nNpcGroup_BuLuoJingYing = 20956      --赏金猎人尹布
-- local nNpcGroup_GanRanMaoXianZhe = 20958   --赏金猎人卡劳
local nNpcGroup_LSAnDaoFu = 21038   --临时安道夫

-- local nNpcGroup_NaTaNa_Gen = 1000208 
local nNpcGroup_NaTaNa_Gen1 = 1000209 
-- local nNpcGroup_JinWeiDuJun_Gen = 1000216
-- local nNpcGroup_AnDaoFu_Gen = 2001655
-- local nNpcGroup_ShiRenMo_Gen = 1000224
-- local nNpcGroup_BuLuoJingYing_Gen = 1000212
-- local nNpcGroup_GanRanMaoXianZhe_Gen = 1000214
local nNpcGroup_LSAnDaoFu_Gen = 1000253 --临时安道夫

--陷阱
local nTrap_1 = 30677		
local nTrap_2 = 30678		
local nTrap_3 = 30679		
local nTrap_4 = 30666		
local nTrap_5 = 30719		

local nTrap_1_Gen = 1000234 
local nTrap_2_Gen = 1000235
local nTrap_3_Gen = 1000236
local nTrap_4_Gen = 1000222
local nTrap_5_Gen = 1000210



-------------------------------------------- 配置 ----------------------------------------------

rwtNpcGroup[nNpcGroup_NaTaNa] = rwtNpcGroup[nNpcGroup_NaTaNa] or {} 
rwtNpcGroup[nNpcGroup_NaTaNa]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_NaTaNa]["NpcId"] = nNpc_NaTaNa

rwtNpc[nNpc_NaTaNa] = rwtNpc[nNpc_NaTaNa] or {}

-- rwtNpcGroup[nNpcGroup_JinWeiDuJun] = rwtNpcGroup[nNpcGroup_JinWeiDuJun] or {} 
-- rwtNpcGroup[nNpcGroup_JinWeiDuJun]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
-- rwtNpcGroup[nNpcGroup_JinWeiDuJun]["NpcId"] = nNpc_JinWeiDuJun

-- rwtNpc[nNpc_JinWeiDuJun] = rwtNpc[nNpc_JinWeiDuJun] or {}

rwtNpcGroup[nNpcGroup_LSAnDaoFu] = rwtNpcGroup[nNpcGroup_LSAnDaoFu] or {} 
rwtNpcGroup[nNpcGroup_LSAnDaoFu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_LSAnDaoFu]["NpcId"] = nNPC_AnDaoFu

-- rwtNpcGroup[nNpcGroup_ShiRenMo] = rwtNpcGroup[nNpcGroup_ShiRenMo] or {} 
-- rwtNpcGroup[nNpcGroup_ShiRenMo]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
-- rwtNpcGroup[nNpcGroup_ShiRenMo]["NpcId"] = nNpc_ShiRenMo

-- rwtNpc[nNpc_ShiRenMo] = rwtNpc[nNpc_ShiRenMo] or {}


rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {} 
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {} 
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {} 
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_4] = rwtNpcGroup[nTrap_4] or {} 
rwtNpcGroup[nTrap_4]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_5] = rwtNpcGroup[nTrap_5] or {} 
rwtNpcGroup[nTrap_5]["Type"] = CONST_NPCGROUP_TYPE.Trap

--出大事了
rwtTask[tTask.nWangPaiTongJiPre_1] = {}
rwtTask[tTask.nWangPaiTongJiPre_1]["Title"]= tLuaText[LANGUAGE_CONFIG][21830]
rwtTask[tTask.nWangPaiTongJiPre_1]["PreTaskId"]= 10222
rwtTask[tTask.nWangPaiTongJiPre_1]["NextTaskId"] = tTask.nWangPaiTongJiPre_1Add
rwtTask[tTask.nWangPaiTongJiPre_1]["TaskType"] = CONST_TASK_TYPE.POKER
rwtTask[tTask.nWangPaiTongJiPre_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nWangPaiTongJiPre_1]["DialogId"]= tDialog.nTask1

--帮手？
rwtTask[tTask.nWangPaiTongJiPre_1Add] = {}
rwtTask[tTask.nWangPaiTongJiPre_1Add]["Title"]= tLuaText[LANGUAGE_CONFIG][21830]
rwtTask[tTask.nWangPaiTongJiPre_1Add]["TaskType"] = CONST_TASK_TYPE.POKER
rwtTask[tTask.nWangPaiTongJiPre_1Add]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nWangPaiTongJiPre_1Add]["PreTaskId"]= tTask.nWangPaiTongJiPre_1
rwtTask[tTask.nWangPaiTongJiPre_1Add]["NextTaskId"]= tTask.nWangPaiTongJiPre_2
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DialogId"]= tDialog.nTask1Add
rwtTask[tTask.nWangPaiTongJiPre_1Add]["ReqTrap1"]= nTrap_1
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"][1]["GenId"] = nTrap_1_Gen
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"][1]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_LSAnDaoFu_Gen
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"][2]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"][3]["GenId"] = nNpcGroup_NaTaNa_Gen1
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"][3]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_1Add]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nWangPaiTongJiPre_1Add]["StartAutoWay"] = {}
rwtTask[tTask.nWangPaiTongJiPre_1Add]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nWangPaiTongJiPre_1Add]["StartAutoWay"]["FindWayMapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_1Add]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[tTask.nWangPaiTongJiPre_1Add]["StartAutoWay"]["FindWayGenId"] = nTrap_1_Gen

--追踪魔法
rwtTask[tTask.nWangPaiTongJiPre_2] = {}
rwtTask[tTask.nWangPaiTongJiPre_2]["Title"]= tLuaText[LANGUAGE_CONFIG][21830]
rwtTask[tTask.nWangPaiTongJiPre_2]["TaskType"] = CONST_TASK_TYPE.POKER
rwtTask[tTask.nWangPaiTongJiPre_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nWangPaiTongJiPre_2]["PreTaskId"]= tTask.nWangPaiTongJiPre_1Add
rwtTask[tTask.nWangPaiTongJiPre_2]["NextTaskId"]= tTask.nWangPaiTongJiPre_3
rwtTask[tTask.nWangPaiTongJiPre_2]["DialogId"]= tDialog.nTask2
rwtTask[tTask.nWangPaiTongJiPre_2]["ReqTrap1"]= nTrap_2
rwtTask[tTask.nWangPaiTongJiPre_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nWangPaiTongJiPre_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_2_Gen
rwtTask[tTask.nWangPaiTongJiPre_2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask.nWangPaiTongJiPre_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tTask.nWangPaiTongJiPre_2]["StartAutoWay"] = {}
rwtTask[tTask.nWangPaiTongJiPre_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nWangPaiTongJiPre_2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask.nWangPaiTongJiPre_2]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
rwtTask[tTask.nWangPaiTongJiPre_2]["StartAutoWay"]["FindWayGenId"] = nTrap_2_Gen

--继续追踪
rwtTask[tTask.nWangPaiTongJiPre_3] = {}
rwtTask[tTask.nWangPaiTongJiPre_3]["Title"]= tLuaText[LANGUAGE_CONFIG][21830]
rwtTask[tTask.nWangPaiTongJiPre_3]["TaskType"] = CONST_TASK_TYPE.POKER
rwtTask[tTask.nWangPaiTongJiPre_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nWangPaiTongJiPre_3]["PreTaskId"]= tTask.nWangPaiTongJiPre_2
rwtTask[tTask.nWangPaiTongJiPre_3]["NextTaskId"]= tTask.nWangPaiTongJiPre_4
rwtTask[tTask.nWangPaiTongJiPre_3]["DialogId"]= tDialog.nTask3
rwtTask[tTask.nWangPaiTongJiPre_3]["ReqTrap1"]= nTrap_3
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_3_Gen
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tTask.nWangPaiTongJiPre_3]["StartAutoWay"] = {}
rwtTask[tTask.nWangPaiTongJiPre_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nWangPaiTongJiPre_3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask.nWangPaiTongJiPre_3]["StartAutoWay"]["FindWayGroupId"] = nTrap_3
rwtTask[tTask.nWangPaiTongJiPre_3]["StartAutoWay"]["FindWayGenId"] = nTrap_3_Gen

--位置锁定
rwtTask[tTask.nWangPaiTongJiPre_4] = {}
rwtTask[tTask.nWangPaiTongJiPre_4]["Title"]= tLuaText[LANGUAGE_CONFIG][21830]
rwtTask[tTask.nWangPaiTongJiPre_4]["TaskType"] = CONST_TASK_TYPE.POKER
rwtTask[tTask.nWangPaiTongJiPre_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nWangPaiTongJiPre_4]["PreTaskId"]= tTask.nWangPaiTongJiPre_3
rwtTask[tTask.nWangPaiTongJiPre_4]["NextTaskId"]= tTask.nWangPaiTongJiPre_5
rwtTask[tTask.nWangPaiTongJiPre_4]["DialogId"]= tDialog.nTask4
rwtTask[tTask.nWangPaiTongJiPre_4]["ReqTrap1"]= nTrap_4
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"][1]["GenId"] = nTrap_4_Gen
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tTask.nWangPaiTongJiPre_4]["StartAutoWay"] = {}
rwtTask[tTask.nWangPaiTongJiPre_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nWangPaiTongJiPre_4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask.nWangPaiTongJiPre_4]["StartAutoWay"]["FindWayGroupId"] = nTrap_4
rwtTask[tTask.nWangPaiTongJiPre_4]["StartAutoWay"]["FindWayGenId"] = nTrap_4_Gen


--落网
rwtTask[tTask.nWangPaiTongJiPre_5] = {}
rwtTask[tTask.nWangPaiTongJiPre_5]["Title"]= tLuaText[LANGUAGE_CONFIG][21830]
rwtTask[tTask.nWangPaiTongJiPre_5]["TaskType"] = CONST_TASK_TYPE.POKER
rwtTask[tTask.nWangPaiTongJiPre_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nWangPaiTongJiPre_5]["PreTaskId"]= tTask.nWangPaiTongJiPre_4
rwtTask[tTask.nWangPaiTongJiPre_5]["NextTaskId"]= tTask.nWangPaiTongJiPre_6
rwtTask[tTask.nWangPaiTongJiPre_5]["DialogId"]= tDialog.nTask5
rwtTask[tTask.nWangPaiTongJiPre_5]["ReqTrap1"]= nTrap_5
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"][1]["GenId"] = nTrap_5_Gen
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tTask.nWangPaiTongJiPre_5]["StartAutoWay"] = {}
rwtTask[tTask.nWangPaiTongJiPre_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nWangPaiTongJiPre_5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask.nWangPaiTongJiPre_5]["StartAutoWay"]["FindWayGroupId"] = nTrap_5
rwtTask[tTask.nWangPaiTongJiPre_5]["StartAutoWay"]["FindWayGenId"] = nTrap_5_Gen


--向安道夫复命

rwtTask[tTask.nWangPaiTongJiPre_6] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["Title"]= tLuaText[LANGUAGE_CONFIG][21830]
rwtTask[tTask.nWangPaiTongJiPre_6]["TaskType"] = CONST_TASK_TYPE.POKER
rwtTask[tTask.nWangPaiTongJiPre_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nWangPaiTongJiPre_6]["PreTaskId"]= tTask.nWangPaiTongJiPre_5
rwtTask[tTask.nWangPaiTongJiPre_6]["NextTaskId"]= tTask.nWangPaiTongJiPre_7
--rwtTask[tTask.nWangPaiTongJiPre_6]["DialogId"]= tDialog.nTask6
rwtTask[tTask.nWangPaiTongJiPre_6]["ReqTrap1"]= nTrap_1
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"][1]["GenId"] = nTrap_1_Gen
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_LSAnDaoFu_Gen
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"][2]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nWangPaiTongJiPre_6]["StartAutoWay"] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nWangPaiTongJiPre_6]["StartAutoWay"]["FindWayMapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_6]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[tTask.nWangPaiTongJiPre_6]["StartAutoWay"]["FindWayGenId"] = nTrap_1_Gen
rwtTask[tTask.nWangPaiTongJiPre_6]["UnLockSysId"] = {52} 
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["CondTime"] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["CondTime"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["CondTime"][1]["StartTime"] = {Wday = CONST_WDAY_TYPE.Monday}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["CondTime"][1]["EndTime"] = {Wday = CONST_WDAY_TYPE.Monday}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["CondTime"][2] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["CondTime"][2]["StartTime"] = {Wday = CONST_WDAY_TYPE.Tuesday}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["CondTime"][2]["EndTime"] = {Wday = CONST_WDAY_TYPE.Tuesday}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["CondTime"][3] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["CondTime"][3]["StartTime"] = {Wday = CONST_WDAY_TYPE.Wednesday}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["CondTime"][3]["EndTime"] = {Wday = CONST_WDAY_TYPE.Wednesday}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["OpenDialog"] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.nTask6_1
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["OpenDialog"]["nId"] = tTask.nWangPaiTongJiPre_6
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["FailEvents"] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogId"] = tDialog.nTask6_2
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[tTask.nWangPaiTongJiPre_6]["TrapEndAward"]["Events"][1]["FailEvents"]["OpenDialog"]["nId"] = tTask.nWangPaiTongJiPre_6
rwtTask[tTask.nWangPaiTongJiPre_6]["FinishDialogId"] = {tDialog.nTask6_1,tDialog.nTask6_2}


--欢迎纳塔娜
--rwtTask[tTask.nWangPaiTongJiPre_7] = {}
--rwtTask[tTask.nWangPaiTongJiPre_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21830]
--rwtTask[tTask.nWangPaiTongJiPre_7]["PreTaskId"] = tTask.nWangPaiTongJiPre_6
--rwtTask[tTask.nWangPaiTongJiPre_7]["TaskType"] = CONST_TASK_TYPE.POKER
--rwtTask[tTask.nWangPaiTongJiPre_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COUNTDOWN
--rwtTask[tTask.nWangPaiTongJiPre_7]["TaskDayFinishTime"] = 86400
--rwtTask[tTask.nWangPaiTongJiPre_7]["LackDialogId"] = tDialog.nTask7_1
--rwtTask[tTask.nWangPaiTongJiPre_7]["DialogId"] = tDialog.nTask7_2
--rwtTask[tTask.nWangPaiTongJiPre_7]["Awards"] = {}
--rwtTask[tTask.nWangPaiTongJiPre_7]["Awards"]["Events"] = {}
--rwtTask[tTask.nWangPaiTongJiPre_7]["Awards"]["Events"][1] = {}
--rwtTask[tTask.nWangPaiTongJiPre_7]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtTask[tTask.nWangPaiTongJiPre_7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtTask[tTask.nWangPaiTongJiPre_7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000591
--rwtTask[tTask.nWangPaiTongJiPre_7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
--rwtTask[tTask.nWangPaiTongJiPre_7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nWangPaiTongJiPre_7


-------------------------------------------- 废除 ----------------------------------------------
-- tDialog.nTask1CG = 12784
-- tDialog.nAcceptTask3 = 12714
-- tDialog.nAcceptTask4 = 12715

-- 12713 场景动画   12712 战后对白
--12715

-- gen :1000210   - 1000222
-- 1000224 - 1000225
-- 1000234 -1000236  
-- 1000253 - 1000253