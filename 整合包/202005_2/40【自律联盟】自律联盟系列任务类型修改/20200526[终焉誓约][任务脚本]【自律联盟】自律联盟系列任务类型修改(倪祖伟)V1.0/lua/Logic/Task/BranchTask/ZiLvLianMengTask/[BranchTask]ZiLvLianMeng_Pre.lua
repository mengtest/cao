--region [BranchTask]ZiLvLianMeng_Pre.lua
--Purpose:		自律联盟前置任务
--Creator: 		倪祖伟
--Created:		2020-03-16
--Modifier:		$Author:倪祖伟	$
--Modified:		$Date:2020-05-26	$
--RCS-ID:		$Revision:10	$
--endregion

--地图ID
local nMapId = 1000


--------------------------------------------------------------------------------
local tTask = {}
tTask.nZiLvLianMeng_Pre0 = 70518    --赏金猎人集会所,与爱琳娜对话,,
tTask.nZiLvLianMeng_Pre1 = 70515    --赏金猎人集会所,与安道夫对话,,
tTask.nZiLvLianMeng_Pre3 = 70517    --初次悬赏,和吉拉对话,,
tTask.nZiLvLianMeng_Pre4 = 70516    --初次悬赏,和吉拉对话,,
tTask.nZiLvLianMeng_Pre5 = 70519    --安道夫的鼓舞,与安道夫对话,,

--主线任务，完成该支线后达成主线任务条件
tTask.nFengCheZhenMainTask = 10428

--对话ID
local tDialog = {}
tDialog.nTask0 =  13486
tDialog.nTask1 =  13494
tDialog.nTask3 =  13492
tDialog.nTask4 =  13509
tDialog.nTask5 =  13500

--NPCID Npc (3564  3573)  (3577  3588)  NpcGroup 20518  20527 
local tSingleNpc = {}

tSingleNpc.nNpc_AnDaoFu = 3005
tSingleNpc.nNpcGroup_AnDaoFu = 20112
tSingleNpc.nNpcGroup_GenId_AnDaoFu = 2001655

tSingleNpc.nNpc_JiLa = 3042
tSingleNpc.nNpcGroup_JiLa = 20114
tSingleNpc.nNpcGroup_GenId_JiLa = 2001657

-- tSingleNpc.nNpc_XuanShang = 3460    --悬赏公告版
-- tSingleNpc.nNpcGroup_XuanShang = 70011
-- tSingleNpc.nNpcGroup_GenId_XuanShang = 1000151

tSingleNpc.nTrap_XuanShang = 30744
tSingleNpc.nTrapGenId_XuanShang = 1000297

rwtNpcGroup[tSingleNpc.nTrap_XuanShang] = rwtNpcGroup[tSingleNpc.nTrap_XuanShang] or {}
rwtNpcGroup[tSingleNpc.nTrap_XuanShang]["Type"] = CONST_NPCGROUP_TYPE.Trap

--奖励
--2000220  2000239 
local tZiLvLianMengAwardId = {}
tZiLvLianMengAwardId[1]  =	2000679


-----------------------------------------------自律联盟万事通-------------------------------------------
rwtTask[tTask.nZiLvLianMeng_Pre0] = {}
rwtTask[tTask.nZiLvLianMeng_Pre0]["Title"] = tLuaText[LANGUAGE_CONFIG][21979]
rwtTask[tTask.nZiLvLianMeng_Pre0]["TaskType"] = CONST_TASK_TYPE.LIANMENG
-- rwtTask[tTask.nZiLvLianMeng_Pre0]["PreTaskId"] = start
rwtTask[tTask.nZiLvLianMeng_Pre0]["NextTaskId"] = tTask.nZiLvLianMeng_Pre1
rwtTask[tTask.nZiLvLianMeng_Pre0]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nZiLvLianMeng_Pre0]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng_Pre0]["DialogId"] = tDialog.nTask0

rwtTask[tTask.nZiLvLianMeng_Pre1] = {}
rwtTask[tTask.nZiLvLianMeng_Pre1]["Title"] = tLuaText[LANGUAGE_CONFIG][21979]
rwtTask[tTask.nZiLvLianMeng_Pre1]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask.nZiLvLianMeng_Pre1]["PreTaskId"] = tTask.nZiLvLianMeng_Pre0
rwtTask[tTask.nZiLvLianMeng_Pre1]["NextTaskId"] = tTask.nZiLvLianMeng_Pre3
rwtTask[tTask.nZiLvLianMeng_Pre1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng_Pre1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng_Pre1]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng_Pre1]["DialogId"] = tDialog.nTask1
rwtTask[tTask.nZiLvLianMeng_Pre1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng_Pre1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng_Pre1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu


rwtTask[tTask.nZiLvLianMeng_Pre3] = {}
rwtTask[tTask.nZiLvLianMeng_Pre3]["Title"] = tLuaText[LANGUAGE_CONFIG][21979]
rwtTask[tTask.nZiLvLianMeng_Pre3]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask.nZiLvLianMeng_Pre3]["PreTaskId"] = tTask.nZiLvLianMeng_Pre1
rwtTask[tTask.nZiLvLianMeng_Pre3]["NextTaskId"] = tTask.nZiLvLianMeng_Pre4
rwtTask[tTask.nZiLvLianMeng_Pre3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng_Pre3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng_Pre3]["TaskNpc"] = tSingleNpc.nNpc_JiLa
rwtTask[tTask.nZiLvLianMeng_Pre3]["DialogId"] = tDialog.nTask3
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiLa
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiLa
rwtTask[tTask.nZiLvLianMeng_Pre3]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.RwardTask,CONST_SYSTEM_FUNCTION.DAILY_TASK}--自律联盟
-- rwtTask[tTask.nZiLvLianMeng_Pre3]["Awards"] = {}
-- rwtTask[tTask.nZiLvLianMeng_Pre3]["Awards"]["Events"] = {}
-- rwtTask[tTask.nZiLvLianMeng_Pre3]["Awards"]["Events"][1] = {}
-- rwtTask[tTask.nZiLvLianMeng_Pre3]["Awards"]["Events"][1]["OpenGuide"] = {}
-- rwtTask[tTask.nZiLvLianMeng_Pre3]["Awards"]["Events"][1]["OpenGuide"]["Id"] = 206
-- rwtTask[tTask.nZiLvLianMeng_Pre3]["Awards"]["Events"][1]["OpenGuide"]["Type"] = 1

rwtTask[tTask.nZiLvLianMeng_Pre4] = {}
rwtTask[tTask.nZiLvLianMeng_Pre4]["Title"] = tLuaText[LANGUAGE_CONFIG][21979]
rwtTask[tTask.nZiLvLianMeng_Pre4]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask.nZiLvLianMeng_Pre4]["PreTaskId"] = tTask.nZiLvLianMeng_Pre3
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["NextTaskId"] = nTaskXuanShang--tTask.nZiLvLianMeng_Pre5
rwtTask[tTask.nZiLvLianMeng_Pre4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng_Pre4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng_Pre4]["ReqTrap1"] = tSingleNpc.nTrap_XuanShang
rwtTask[tTask.nZiLvLianMeng_Pre4]["DialogId"] = tDialog.nTask4
rwtTask[tTask.nZiLvLianMeng_Pre4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng_Pre4]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nTrapGenId_XuanShang
rwtTask[tTask.nZiLvLianMeng_Pre4]["DynaNpcGroupGen"][1]["MapId"] = 1000
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["StartAutoWay"] = {}
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["StartAutoWay"]["FindWayMapId"] = nMapId
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiLa
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiLa
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["Awards"] = {}
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["Awards"]["Events"] = {}
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["Awards"]["Events"][1] = {}
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["Awards"]["Events"][1]["OpenWnd"] = {}
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["Awards"]["Events"][1]["OpenWnd"]["WndId"] = CONST_MENUTYPE.Reward
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["Awards"]["Events"][2] = {}
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["Awards"]["Events"][2]["OpenGuide"] = {}
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["Awards"]["Events"][2]["OpenGuide"]["Id"] = 205
-- rwtTask[tTask.nZiLvLianMeng_Pre4]["Awards"]["Events"][2]["OpenGuide"]["Type"] = 1


rwtTask[tTask.nZiLvLianMeng_Pre5] = {}
rwtTask[tTask.nZiLvLianMeng_Pre5]["Title"] = tLuaText[LANGUAGE_CONFIG][21979]
rwtTask[tTask.nZiLvLianMeng_Pre5]["TaskType"] = CONST_TASK_TYPE.LIANMENG
-- rwtTask[tTask.nZiLvLianMeng_Pre5]["PreTaskId"] = nTaskXuanShang--tTask.nZiLvLianMeng_Pre3
-- rwtTask[tTask.nZiLvLianMeng_Pre5]["NextTaskId"] = nil
rwtTask[tTask.nZiLvLianMeng_Pre5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng_Pre5]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng_Pre5]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng_Pre5]["DialogId"] = tDialog.nTask5
rwtTask[tTask.nZiLvLianMeng_Pre5]["AcceptExtraTaskId"] = 70421
rwtTask[tTask.nZiLvLianMeng_Pre5]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng_Pre5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng_Pre5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu
rwtTask[tTask.nZiLvLianMeng_Pre5]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre5]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre5]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng_Pre5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng_Pre5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[1]
rwtTask[tTask.nZiLvLianMeng_Pre5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng_Pre5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng_Pre5
rwtTask[tTask.nZiLvLianMeng_Pre5]["Awards"]["Events"][1]["CompleteTask"] = {tTask.nFengCheZhenMainTask}
rwtTask[tTask.nZiLvLianMeng_Pre5]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.MercenaryTask,CONST_SYSTEM_FUNCTION.SYNDICATE} --解锁委托任务，解锁公会
rwtTask[tTask.nZiLvLianMeng_Pre5]["IsOpenRandomPool"] = 1
rwtTask[tTask.nZiLvLianMeng_Pre5]["AwardFunc"] = function ()
      rwRefreshAllMercenaryTask(1) --强制刷新一次面板 
end