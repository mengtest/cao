--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion
--gen ;2001923-2001927
--task 35011-35014
--npcgroup_20333
--monstr _group 900276
--monster 9000174

--taskinfo  = 35011 -35014

----***************************数据定义***************************----
-------------------任务ID-----------------
local nTaskId_1 = 35011    --乞丐的请求
local nTaskId_2 = 35012    --事实的真相
local nTaskId_3 = 35013    --将骗子抓获
local nTaskId_4 = 35014    --回告伊斯顿

--mapid
local nMapId = 2001

--groupId

local nMonsterGroup_1 = 900276  

local nNpcGroup_1 = 20333
local nNpcGroup_2 = 20334


--gen
local nGenId_Npc_1 = 2001923
local nGenId_Npc_2 = 2001924
local nGenId_Npc_3 = 2001925
local nGenId_Monster_1= 2001926


--dialog
local nDialogId_1    = 10863
local nDialogId_2    = 10864
local nDialogId_3    = 10865
local nDialogId_4    = 10866


--npc
local nNpc_QiGai = 3307
rwtNpc[nNpc_QiGai] = rwtNpc[nNpc_QiGai] or {}
local nNpc_YiSiNuo = 3308
rwtNpc[nNpc_YiSiNuo] = rwtNpc[nNpc_YiSiNuo] or {}
------------------------------------------NpcGroup
rwtNpcGroup[nNpcGroup_1] = rwtNpcGroup[nNpcGroup_1] or {}                                                
rwtNpcGroup[nNpcGroup_1]["NpcId"] = nNpc_QiGai
rwtNpcGroup[nNpcGroup_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc

rwtNpcGroup[nNpcGroup_2] = rwtNpcGroup[nNpcGroup_2] or {}  
rwtNpcGroup[nNpcGroup_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_2]["NpcId"] = nNpc_YiSiNuo


--奇遇触发

--rwtNpcGroup[30394] = rwtNpcGroup[30394] or {}
--rwtNpcGroup[30394]["Type"] = CONST_NPCGROUP_TYPE.Adventure
--rwtNpcGroup[30394]["TrapAcceptTask"] = 35011
--rwtNpcGroup[30394]["AdventureJudgeType"] = {}
--rwtNpcGroup[30394]["AdventureJudgeType"][1] = {}
--rwtNpcGroup[30394]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.USERDATA
--rwtNpcGroup[30394]["AdventureJudgeType"][1]["UserData"] = {}
--rwtNpcGroup[30394]["AdventureJudgeType"][1]["UserData"][1] = {}
--rwtNpcGroup[30394]["AdventureJudgeType"][1]["UserData"][1]["DataId"] = 1093
--rwtNpcGroup[30394]["AdventureJudgeType"][1]["UserData"][1]["Index"] = CONST_TEMP_DATA.Data1
--rwtNpcGroup[30394]["AdventureJudgeType"][1]["UserData"][1]["Compare"] = "greater"
--rwtNpcGroup[30394]["AdventureJudgeType"][1]["UserData"][1]["Value"] = 5
--rwtNpcGroup[30394]["AdventureJudgeType"][2] = {}
--rwtNpcGroup[30394]["AdventureJudgeType"][2]["Type"] = CONST_ADVENTURE_TYPE.TIMERANGE
--rwtNpcGroup[30394]["AdventureJudgeType"][2]["MaxTime"] = {}
--rwtNpcGroup[30394]["AdventureJudgeType"][2]["MaxTime"]["sec"] = 0
--rwtNpcGroup[30394]["AdventureJudgeType"][2]["MaxTime"]["min"] = 0
--rwtNpcGroup[30394]["AdventureJudgeType"][2]["MaxTime"]["hour"] = 19
--rwtNpcGroup[30394]["AdventureJudgeType"][2]["MinTime"] = {}
--rwtNpcGroup[30394]["AdventureJudgeType"][2]["MinTime"]["sec"] = 0
--rwtNpcGroup[30394]["AdventureJudgeType"][2]["MinTime"]["min"] = 0
--rwtNpcGroup[30394]["AdventureJudgeType"][2]["MinTime"]["hour"] = 14

------------------------------------------MainTaskList
--[NPC对白][任务面板寻路]
rwtTask[nTaskId_1] = {}
rwtTask[nTaskId_1]["Title" ]= tLuaText[LANGUAGE_CONFIG][20090]
rwtTask[nTaskId_1]["NextTaskId" ]= nTaskId_2
rwtTask[nTaskId_1]["DialogId" ]= nDialogId_1
rwtTask[nTaskId_1]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTaskId_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_1]["TaskNpc"] = nNpc_QiGai
rwtTask[nTaskId_1]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_1]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_1]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Npc_1
rwtTask[nTaskId_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nTaskId_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete


--[NPC对白][自动寻路]
rwtTask[nTaskId_2] = {}
rwtTask[nTaskId_2]["Title" ]= tLuaText[LANGUAGE_CONFIG][20091] 
rwtTask[nTaskId_2]["PreTaskId" ]= nTaskId_1
rwtTask[nTaskId_2]["NextTaskId" ]= nTaskId_3
rwtTask[nTaskId_2]["DialogId" ]= nDialogId_2
rwtTask[nTaskId_2]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTaskId_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_2]["TaskNpc"] = nNpc_YiSiNuo
rwtTask[nTaskId_2]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_2]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_2]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Npc_2
rwtTask[nTaskId_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nTaskId_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nTaskId_2]["StartAutoWay"] = {}
rwtTask[nTaskId_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nTaskId_2]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_2
rwtTask[nTaskId_2]["StartAutoWay"]["FindWayGenId"] = nGenId_Npc_2

--[对白选择杀怪][自动寻路]
rwtTask[nTaskId_3] = {}
rwtTask[nTaskId_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][20092]
rwtTask[nTaskId_3]["PreTaskId" ]= nTaskId_2
rwtTask[nTaskId_3]["NextTaskId" ]= nTaskId_4
rwtTask[nTaskId_3]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTaskId_3]["TaskNpc"] = nNpc_QiGai
rwtTask[nTaskId_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_3]["DialogId"]= nDialogId_3
rwtTask[nTaskId_3]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_3]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_3]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Npc_3
rwtTask[nTaskId_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nTaskId_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nTaskId_3]["DynaNpcGroupGen"][2] = {}
rwtTask[nTaskId_3]["DynaNpcGroupGen"][2]["GenId"] = nGenId_Monster_1
rwtTask[nTaskId_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[nTaskId_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nTaskId_3]["MonsterGroupGenId"] = nGenId_Monster_1
rwtTask[nTaskId_3]["KillMonsterGroup1" ]= nMonsterGroup_1
rwtTask[nTaskId_3]["KillMonsterGroupCount1"]= 1
rwtTask[nTaskId_3]["StartAutoWay"] = {}
rwtTask[nTaskId_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nTaskId_3]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_1
rwtTask[nTaskId_3]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_1

--[NPC对白][自动寻路]
rwtTask[nTaskId_4] = {}
rwtTask[nTaskId_4]["Title" ]= tLuaText[LANGUAGE_CONFIG][20093] 
rwtTask[nTaskId_4]["PreTaskId" ]= nTaskId_3
rwtTask[nTaskId_4]["DialogId" ]= nDialogId_4
rwtTask[nTaskId_4]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTaskId_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_4]["TaskNpc"] = nNpc_YiSiNuo
rwtTask[nTaskId_4]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_4]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_4]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Npc_2
rwtTask[nTaskId_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nTaskId_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nTaskId_4]["StartAutoWay"] = {}
rwtTask[nTaskId_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nTaskId_4]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_2
rwtTask[nTaskId_4]["StartAutoWay"]["FindWayGenId"] = nGenId_Npc_2
rwtTask[nTaskId_4]["Awards"] = {}
rwtTask[nTaskId_4]["Awards"]["Events"] = {}
rwtTask[nTaskId_4]["Awards"]["Events"][1] = {}
rwtTask[nTaskId_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[nTaskId_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[nTaskId_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000369
rwtTask[nTaskId_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[nTaskId_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_4