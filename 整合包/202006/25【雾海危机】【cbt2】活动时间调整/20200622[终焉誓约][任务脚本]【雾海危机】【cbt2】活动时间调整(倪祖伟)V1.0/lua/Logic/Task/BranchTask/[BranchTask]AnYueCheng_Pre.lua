--region 		[BranchTask]AnYueCheng_Pre.lua
--Purpose:		暗月城前置
--Creator: 		倪祖伟
--Created:		2019-09-11
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-06-22 $
--RCS-ID:		$Revision: 9 $

--endregion

-------------------------------------------- 数据定义 ----------------------------------------------

-- local nTempdata = 1234
local nTaskPre = 10248
--任务ID
local tTask = {}
tTask.nAnYueChengPre_1 = 70219 --来自远方的信息,意外的要求
tTask.nAnYueChengPre_2 = 70220 --来自远方的信息,意外的要求
tTask.nAnYueChengPre_3 = 70221 --来自远方的信息,意外的要求
tTask.nAnYueChengPre_4 = 70222 --亲，报团吗？,出发海地司城
-- tTask.nAnYueChengPre_5 = 70223 --后续的考验         拜访特罗德        
-- tTask.nAnYueChengPre_6 = 70224 --神秘试炼场         寻找泰雷        
-- tTask.nAnYueChengPre_7 = 70225 --神秘试炼场         寻找泰雷        
-- tTask.nAnYueChengPre_8 = 70226 --黯月城             通关黯月城        
-- tTask.nAnYueChengPre_9 = 70227 --体验报告           汇报特罗德        


--对话ID
local tDialog = {}
tDialog.nTask1 = 12862
tDialog.nTask2 = 12863
tDialog.nTask3 = 12864
tDialog.nTask4 = 12865
tDialog.nTask4_notimeSB = 12866
tDialog.nTask4_notimeAi = 12867
-- tDialog.nTask6_1 = 12869
-- tDialog.nTask7 = 12868
-- tDialog.nTask8 = 12963
-- tDialog.nTask9 = 12870

-- --怪物：
-- local nMonsterGroup_WZlang = 900585
-- local nMonsterGroup_WZxion = 900586
-- local nMonsterGroup_DZluja = 900587
-- local nMonsterGroup_AHhunn = 900588
-- local nMonsterGroup_KHapup = 900589

--Npc
local nNPCGroup_SaLind = 20949
-- local nNPCGroup_TaiLie = 20949
-- local nNPCGroup_TeLuo1 = 20228
-- local nNPCGroup_TeLuo2 = 20948
-- local nNPCGroup_TrapMa = 30658

local nNPC_SaLind = 3818
-- local nNPC_TaiLie = 3818
-- local nNPC_TeLuo1 = 3028
-- local nNPC_TeLuo2 = 3817

-- local tGenId = {}
-- tGenId.Monster_WZlang = 2002036
-- tGenId.Monster_WZxion = 2002037
-- tGenId.Monster_DZluja = 2002038
-- tGenId.Monster_AHhunn = 2002039
-- tGenId.Monster_KHapup = 2002040

-- tGenId.NPCGroup_SaLind = 2002035
-- tGenId.NPCGroup_TaiLie = 20010252
-- tGenId.NPCGroup_TeLuo1 = 1000047
-- tGenId.NPCGroup_TeLuo2 = 20010251
-- tGenId.NPCGroup_TrapMa = 2002041

local tGenId_NPCGroup_SaLind = 20010252


-------------------------------------------- 配置 ----------------------------------------------

rwtNpcGroup[nNPCGroup_SaLind] = rwtNpcGroup[nNPCGroup_SaLind] or {} 
rwtNpcGroup[nNPCGroup_SaLind]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNPCGroup_SaLind]["NpcId"] = nNPC_SaLind
rwtNpc[nNPC_SaLind] = rwtNpc[nNPC_SaLind] or {}
rwtNpc[nNPC_SaLind]["TimeAreaChk"] = {}
-- rwtNpc[nNPC_SaLind]["TimeAreaChk"]["ActivityTime"] = {}
-- rwtNpc[nNPC_SaLind]["TimeAreaChk"]["ActivityTime"][1] = {}
-- rwtNpc[nNPC_SaLind]["TimeAreaChk"]["ActivityTime"][1]["Type"] = "wday"
-- rwtNpc[nNPC_SaLind]["TimeAreaChk"]["ActivityTime"][1]["StartTime"] = 4
-- rwtNpc[nNPC_SaLind]["TimeAreaChk"]["ActivityTime"][1]["EndTime"] = 7

rwtNpc[nNPC_SaLind]["TimeAreaChk"]["ActivityTime"] = {}
rwtNpc[nNPC_SaLind]["TimeAreaChk"]["ActivityTime"][1] = {}
rwtNpc[nNPC_SaLind]["TimeAreaChk"]["ActivityTime"][1]["Type"] = "KaiFuDays"
rwtNpc[nNPC_SaLind]["TimeAreaChk"]["ActivityTime"][1]["start"] = 4
rwtNpc[nNPC_SaLind]["TimeAreaChk"]["ActivityTime"][1]["ChiXu"] = 8
rwtNpc[nNPC_SaLind]["TimeAreaChk"]["ActivityTime"][1]["JianGe"] = 7


rwtNpc[nNPC_SaLind]["OutTimeDialog"] = {2149,2150,2151}
rwtNpc[nNPC_SaLind]["InTimeDialog"] = 2152

rwtDialog[2152] = rwtDialog[2152] or {}
rwtDialog[2152]["OptionFunc1"] = function ()
    rwOpenLocalWnd(CONST_MENUTYPE.Darkdairy)     
end
-- rwtNpcGroup[nNPCGroup_TaiLie] = rwtNpcGroup[nNPCGroup_TaiLie] or {} 
-- rwtNpcGroup[nNPCGroup_TaiLie]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
-- rwtNpcGroup[nNPCGroup_TaiLie]["NpcId"] = nNPC_TaiLie
-- rwtNpc[nNPC_TaiLie] = rwtNpc[nNPC_TaiLie] or {}

-- rwtNpcGroup[nNPCGroup_TeLuo2] = rwtNpcGroup[nNPCGroup_TeLuo2] or {} 
-- rwtNpcGroup[nNPCGroup_TeLuo2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
-- rwtNpcGroup[nNPCGroup_TeLuo2]["NpcId"] = nNPC_TeLuo2
-- rwtNpc[nNPC_TeLuo2] = rwtNpc[nNPC_TeLuo2] or {}

-- rwtNpcGroup[nNPCGroup_TrapMa] = rwtNpcGroup[nNPCGroup_TrapMa] or {} 
-- rwtNpcGroup[nNPCGroup_TrapMa]["Type"] = CONST_NPCGROUP_TYPE.Trap


--================================================================
--来自远方的信息,意外的要求
rwtTask[tTask.nAnYueChengPre_1] = {}
rwtTask[tTask.nAnYueChengPre_1]["Title"]= tLuaText[LANGUAGE_CONFIG][21864]
rwtTask[tTask.nAnYueChengPre_1]["PreTaskId"] = nTaskPre
rwtTask[tTask.nAnYueChengPre_1]["NextTaskId"] = tTask.nAnYueChengPre_2
rwtTask[tTask.nAnYueChengPre_1]["TaskType"] = CONST_TASK_TYPE.WuHaiWeiJi
rwtTask[tTask.nAnYueChengPre_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tTask.nAnYueChengPre_1]["PanelTalk"] = true
rwtTask[tTask.nAnYueChengPre_1]["DialogId"]= tDialog.nTask1
rwtTask[tTask.nAnYueChengPre_1]["OptionTask1"] = tTask.nAnYueChengPre_2
rwtTask[tTask.nAnYueChengPre_1]["OptionTask2"] = tTask.nAnYueChengPre_3


--来自远方的信息,意外的要求
rwtTask[tTask.nAnYueChengPre_2] = {}
rwtTask[tTask.nAnYueChengPre_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21864]
rwtTask[tTask.nAnYueChengPre_2]["TaskType"] = CONST_TASK_TYPE.WuHaiWeiJi
rwtTask[tTask.nAnYueChengPre_2]["PreTaskId"] = tTask.nAnYueChengPre_1
rwtTask[tTask.nAnYueChengPre_2]["NextTaskId"] = tTask.nAnYueChengPre_4
rwtTask[tTask.nAnYueChengPre_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nAnYueChengPre_2]["DialogId"] = tDialog.nTask2
rwtTask[tTask.nAnYueChengPre_2]["AutoTaskDialog"] = tDialog.nTask2



--来自远方的信息,意外的要求
rwtTask[tTask.nAnYueChengPre_3] = {}
rwtTask[tTask.nAnYueChengPre_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21864]
rwtTask[tTask.nAnYueChengPre_3]["PreTaskId" ]= tTask.nAnYueChengPre_1
rwtTask[tTask.nAnYueChengPre_3]["NextTaskId" ]= tTask.nAnYueChengPre_4
rwtTask[tTask.nAnYueChengPre_3]["TaskType"] = CONST_TASK_TYPE.WuHaiWeiJi
rwtTask[tTask.nAnYueChengPre_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nAnYueChengPre_3]["DialogId"] = tDialog.nTask3
rwtTask[tTask.nAnYueChengPre_3]["AutoTaskDialog"] = tDialog.nTask3


-- --亲，报团吗？,出发海地司城   
-- rwtTask[tTask.nAnYueChengPre_4] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21865]
-- rwtTask[tTask.nAnYueChengPre_4]["TaskType"] = CONST_TASK_TYPE.WuHaiWeiJi
-- -- rwtTask[tTask.nAnYueChengPre_4]["PreTaskId"] = tTask.nAnYueChengPre_3
-- rwtTask[tTask.nAnYueChengPre_4]["NextTaskId"] = nil
-- rwtTask[tTask.nAnYueChengPre_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TimeArea
-- rwtTask[tTask.nAnYueChengPre_4]["ActivityTime"] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["ActivityTime"][1] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["ActivityTime"][1]["Type"] = "wday"
-- rwtTask[tTask.nAnYueChengPre_4]["ActivityTime"][1]["StartTime"] = 4
-- rwtTask[tTask.nAnYueChengPre_4]["ActivityTime"][1]["EndTime"] = 7
-- rwtTask[tTask.nAnYueChengPre_4]["DialogId"] = tDialog.nTask4
-- rwtTask[tTask.nAnYueChengPre_4]["FinishDialogId"] = tDialog.nTask4_notimeAi
-- rwtTask[tTask.nAnYueChengPre_4]["NoTimeDialogId"] = tDialog.nTask4_notimeAi
-- rwtTask[tTask.nAnYueChengPre_4]["TaskNpc"] = nNPC_SaLind
-- rwtTask[tTask.nAnYueChengPre_4]["TimeAreaAutoWay"] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["TimeAreaAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tTask.nAnYueChengPre_4]["TimeAreaAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tTask.nAnYueChengPre_4]["TimeAreaAutoWay"]["FindWayGroupId"] = nNPCGroup_SaLind
-- rwtTask[tTask.nAnYueChengPre_4]["TimeAreaAutoWay"]["FindWayGenId"] = tGenId_NPCGroup_SaLind
-- rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"][1]["GenId"] = tGenId_NPCGroup_SaLind
-- rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTask.nAnYueChengPre_4]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.MULTI_HERO_COPYMAP}   --多英雄解锁
-- rwtTask[tTask.nAnYueChengPre_4]["Awards"] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000633
-- rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nAnYueChengPre_4

--亲，报团吗？,出发海地司城   
rwtTask[tTask.nAnYueChengPre_4] = {}
rwtTask[tTask.nAnYueChengPre_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21864]
rwtTask[tTask.nAnYueChengPre_4]["TaskType"] = CONST_TASK_TYPE.WuHaiWeiJi
-- rwtTask[tTask.nAnYueChengPre_4]["PreTaskId"] = tTask.nAnYueChengPre_3
rwtTask[tTask.nAnYueChengPre_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
-- rwtTask[tTask.nAnYueChengPre_4]["DialogId"] = tDialog.nTask4

rwtTask[tTask.nAnYueChengPre_4]["FinishDialogId"] = {tDialog.nTask4,tDialog.nTask4_notimeSB}

-- rwtTask[tTask.nAnYueChengPre_4]["ActivityTime"] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["ActivityTime"][1] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["ActivityTime"][1]["Type"] = "wday"
-- rwtTask[tTask.nAnYueChengPre_4]["ActivityTime"][1]["StartTime"] = 4
-- rwtTask[tTask.nAnYueChengPre_4]["ActivityTime"][1]["EndTime"] = 7

rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1]["StartTime"] = {Wday = CONST_WDAY_TYPE.Thursday}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1]["EndTime"] = {Wday = CONST_WDAY_TYPE.Thursday}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][2] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][2]["StartTime"] = {Wday = CONST_WDAY_TYPE.Friday}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][2]["EndTime"] = {Wday = CONST_WDAY_TYPE.Friday}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][3] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][3]["StartTime"] = {Wday = CONST_WDAY_TYPE.Saturday}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][3]["EndTime"] = {Wday = CONST_WDAY_TYPE.Saturday}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][4] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][4]["StartTime"] = {Wday = CONST_WDAY_TYPE.Sunday}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][4]["EndTime"] = {Wday = CONST_WDAY_TYPE.Sunday}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1]["StartTime"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1]["EndTime"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1]["KaiFuDays"] = {start = 4,ChiXu = 8,JianGe = 7}

rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["OpenDialog"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.nTask4
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["OpenDialog"]["nId"] = tTask.nAnYueChengPre_4
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["FailEvents"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogId"] = tDialog.nTask4_notimeSB
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["FailEvents"]["OpenDialog"]["nId"] = tTask.nAnYueChengPre_4

--rwtTask[tTask.nAnYueChengPre_4]["NoTimeDialogId"] = tDialog.nTask4_notimeSB
--rwtTask[tTask.nAnYueChengPre_4]["DialogId"] = {tDialog.nTask4,tDialog.nTask4_notimeSB}
rwtTask[tTask.nAnYueChengPre_4]["TaskNpc"] = nNPC_SaLind
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"] = {}
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"]["FindWayGroupId"] = nNPCGroup_SaLind
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"]["FindWayGenId"] = tGenId_NPCGroup_SaLind
-- rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"][1]["GenId"] = tGenId_NPCGroup_SaLind
-- rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nAnYueChengPre_4]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.WuHaiWeiJi_Liget}   --多英雄解锁
rwtTask[tTask.nAnYueChengPre_4]["Awards"] = {}
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"] = {}
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1] = {}
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000633
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nAnYueChengPre_4