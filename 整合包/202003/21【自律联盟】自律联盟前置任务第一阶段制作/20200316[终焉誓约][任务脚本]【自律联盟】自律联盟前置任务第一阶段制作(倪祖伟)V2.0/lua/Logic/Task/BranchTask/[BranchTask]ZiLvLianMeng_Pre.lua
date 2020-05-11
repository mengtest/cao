--region [BranchTask]ZiLvLianMeng_Pre.lua
--Purpose:		自律联盟前置任务
--Creator: 		倪祖伟
--Created:		2020-03-16
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-03-16 $
--RCS-ID:		$Revision: 1 $
--endregion

--地图ID
local nMapId = 1000


--------------------------------------------------------------------------------
local tTask = {}
tTask.nZiLvLianMeng_Pre0 = 70518    --赏金猎人集会所,与爱琳娜对话,,
tTask.nZiLvLianMeng_Pre1 = 70515    --赏金猎人集会所,与安道夫对话,,
tTask.nZiLvLianMeng_Pre3 = 70517    --初次悬赏,审问哥布林,,
tTask.nZiLvLianMeng_Pre5 = 70519    --安道夫的鼓舞,与安道夫对话,,

--对话ID
local tDialog = {}
tDialog.nTask0 =  13486
tDialog.nTask1 =  13494
tDialog.nTask3 =  13492
tDialog.nTask5 =  13500

--NPCID Npc (3564  3573)  (3577  3588)  NpcGroup 20518  20527 
local tSingleNpc = {}

tSingleNpc.nNpc_AnDaoFu = 3005
tSingleNpc.nNpcGroup_AnDaoFu = 21037
tSingleNpc.nNpcGroup_GenId_AnDaoFu = 1000252

tSingleNpc.nNpc_JiLa = 3042
tSingleNpc.nNpcGroup_JiLa = 20114
tSingleNpc.nNpcGroup_GenId_JiLa = 2001657

local nMonsterGroupId = 900613
local nMonsterGenId = 1000297
--奖励
--2000220  2000239 
local tZiLvLianMengAwardId = {}
tZiLvLianMengAwardId[1]  =	2000679


-----------------------------------------------自律联盟万事通-------------------------------------------
rwtTask[tTask.nZiLvLianMeng_Pre0] = {}
rwtTask[tTask.nZiLvLianMeng_Pre0]["Title"] = tLuaText[LANGUAGE_CONFIG][21979]
rwtTask[tTask.nZiLvLianMeng_Pre0]["TaskType"] = CONST_TASK_TYPE.SIDE
-- rwtTask[tTask.nZiLvLianMeng_Pre0]["PreTaskId"] = start
rwtTask[tTask.nZiLvLianMeng_Pre0]["NextTaskId"] = tTask.nZiLvLianMeng_Pre1
rwtTask[tTask.nZiLvLianMeng_Pre0]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nZiLvLianMeng_Pre0]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng_Pre0]["DialogId"] = tDialog.nTask0

rwtTask[tTask.nZiLvLianMeng_Pre1] = {}
rwtTask[tTask.nZiLvLianMeng_Pre1]["Title"] = tLuaText[LANGUAGE_CONFIG][21979]
rwtTask[tTask.nZiLvLianMeng_Pre1]["TaskType"] = CONST_TASK_TYPE.SIDE
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
rwtTask[tTask.nZiLvLianMeng_Pre3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng_Pre3]["PreTaskId"] = tTask.nZiLvLianMeng_Pre1
rwtTask[tTask.nZiLvLianMeng_Pre3]["NextTaskId"] = tTask.nZiLvLianMeng_Pre5
rwtTask[tTask.nZiLvLianMeng_Pre3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nZiLvLianMeng_Pre3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng_Pre3]["TaskNpc"] = tSingleNpc.nNpc_JiLa
rwtTask[tTask.nZiLvLianMeng_Pre3]["DialogId"] = tDialog.nTask3
rwtTask[tTask.nZiLvLianMeng_Pre3]["KillMonsterGroup1"] = nMonsterGroupId
rwtTask[tTask.nZiLvLianMeng_Pre3]["MonsterGroupGenId"] = nMonsterGenId
rwtTask[tTask.nZiLvLianMeng_Pre3]["KillMonsterGroupCount1"] = 1
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiLa
rwtTask[tTask.nZiLvLianMeng_Pre3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiLa

rwtTask[tTask.nZiLvLianMeng_Pre5] = {}
rwtTask[tTask.nZiLvLianMeng_Pre5]["Title"] = tLuaText[LANGUAGE_CONFIG][21979]
rwtTask[tTask.nZiLvLianMeng_Pre5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng_Pre5]["PreTaskId"] = tTask.nZiLvLianMeng_Pre3
-- rwtTask[tTask.nZiLvLianMeng_Pre5]["NextTaskId"] = nil
rwtTask[tTask.nZiLvLianMeng_Pre5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng_Pre5]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng_Pre5]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng_Pre5]["DialogId"] = tDialog.nTask5
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
