--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion

----***************************数据定义***************************----
-------------------任务ID-----------------

local nYongLianJie_1 = 35004   --永恋节？那是什么？
local nYongLianJie_2 = 35005   --收集三色堇（0/3）  
local nYongLianJie_3 = 35006   --永恒的爱意

--NPC
local nNpcId_Bannie = 3082		--邦妮


--采集物
local nCollect_GroupId = 60122 
local tCollect_Gen = {2001910,2001911,2001912,2001913}

rwtNpcGroup[nCollect_GroupId] = rwtNpcGroup[nCollect_GroupId] or {}	   
rwtNpcGroup[nCollect_GroupId]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[nCollect_GroupId]["Func"] = function()

--end

--奇遇触发

rwtNpcGroup[30391] = rwtNpcGroup[30391] or {}
rwtNpcGroup[30391]["Type"] = CONST_NPCGROUP_TYPE.Adventure
rwtNpcGroup[30391]["TrapAcceptTask"] = 35004
rwtNpcGroup[30391]["AdventureJudgeType"] = {}
rwtNpcGroup[30391]["AdventureJudgeType"][1] = {}
rwtNpcGroup[30391]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.PROBABILITY
rwtNpcGroup[30391]["AdventureJudgeType"][1]["Value"] = -1
--[[
rwtNpcGroup[30391]["AdventureJudgeType"][1] = {}
rwtNpcGroup[30391]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.TIME
rwtNpcGroup[30391]["AdventureJudgeType"][1]["wday"] = 2
rwtNpcGroup[30391]["AdventureJudgeType"][2] = {}
rwtNpcGroup[30391]["AdventureJudgeType"][2]["Type"] = CONST_ADVENTURE_TYPE.PROBABILITY
rwtNpcGroup[30391]["AdventureJudgeType"][2]["Value"] = 0.2
--]]

rwtTask[nYongLianJie_1] = {}
rwtTask[nYongLianJie_1]["Title"]= tLuaText[LANGUAGE_CONFIG][20106]
rwtTask[nYongLianJie_1]["NextTaskId"]= nYongLianJie_2
rwtTask[nYongLianJie_1]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nYongLianJie_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nYongLianJie_1]["DialogId"]= 10806
rwtTask[nYongLianJie_1]["TaskNpc"] = nNpcId_Bannie


rwtTask[nYongLianJie_2] = {}
rwtTask[nYongLianJie_2]["Title"]= tLuaText[LANGUAGE_CONFIG][20107]
rwtTask[nYongLianJie_2]["PreTaskId"] = nYongLianJie_1
rwtTask[nYongLianJie_2]["NextTaskId"]= nYongLianJie_3
rwtTask[nYongLianJie_2]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nYongLianJie_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"] = {}
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][1] = {}
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][1]["GenId"] = tCollect_Gen[1]
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][2] = {}
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][2]["GenId"] = tCollect_Gen[2]
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][3] = {}
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][3]["GenId"] = tCollect_Gen[3]
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][3]["MapId"] = 2001
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][4] = {}
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][4]["GenId"] = tCollect_Gen[4]
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][4]["MapId"] = 2001
rwtTask[nYongLianJie_2]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYongLianJie_2]["ReqCollectId1"] = nCollect_GroupId
rwtTask[nYongLianJie_2]["ReqCollectCount1"] = 3
rwtTask[nYongLianJie_2]["CollectEndMsgType"] = 2
rwtTask[nYongLianJie_2]["CollectEndMsgText"] = tLuaText[LANGUAGE_CONFIG][10036]
rwtTask[nYongLianJie_2]["StartAutoWay"] = {}
rwtTask[nYongLianJie_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYongLianJie_2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nYongLianJie_2]["StartAutoWay"]["FindWayGroupId"] = nCollect_GroupId
rwtTask[nYongLianJie_2]["StartAutoWay"]["FindWayGenId"] = 2001910


rwtTask[nYongLianJie_3] = {}
rwtTask[nYongLianJie_3]["Title"]= tLuaText[LANGUAGE_CONFIG][20108]
rwtTask[nYongLianJie_3]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nYongLianJie_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nYongLianJie_3]["DialogId"]= 10807
rwtTask[nYongLianJie_3]["TaskNpc"] = nNpcId_Bannie
rwtTask[nYongLianJie_3]["StartAutoWay"] = {}
rwtTask[nYongLianJie_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYongLianJie_3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nYongLianJie_3]["StartAutoWay"]["FindWayGroupId"] = 20126
rwtTask[nYongLianJie_3]["StartAutoWay"]["FindWayGenId"] = 2001335

rwtTask[nYongLianJie_3]["Awards"] = {}
rwtTask[nYongLianJie_3]["Awards"]["Events"] = {}
rwtTask[nYongLianJie_3]["Awards"]["Events"][1] = {}
rwtTask[nYongLianJie_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[nYongLianJie_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[nYongLianJie_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000371
rwtTask[nYongLianJie_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[nYongLianJie_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nYongLianJie_3
															