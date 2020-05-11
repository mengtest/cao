--region [BranchTask]XiMeng_
--Purpose:		
--Creator: 		
--Created:		
--Modifier:		$Author:  $
--Modified:		$Date: $
--RCS-ID:		$Revision: 1 $
--endregion


----***************************数据定义***************************----
-------------------任务ID-----------------
local tTaskId = {}

tTaskId.Task1 = 70423       --理性的化身,前往公告栏
-- tTaskId.Task2 = 70424       --理性的化身,打人？去看看
tTaskId.Task3 = 70425       --理性的化身,了解情况
tTaskId.Task4 = 70426       --理性的化身,教训禁卫军
tTaskId.Task5 = 70427       --理性的化身,警告禁卫军
tTaskId.Task6 = 70428       --理性的化身,理性，不存在的
tTaskId.Task7 = 70429       --理性的化身,冷静，先了解情况
tTaskId.Task8 = 70430       --理性的化身,同伴的肯定
tTaskId.Task9 = 70433       --理性的化身,同伴的肯定


-------------------对白ID-----------------
local tDialogId = {}

tDialogId.Task1 = 13165     --理性的化身,前往公告栏
-- tDialogId.Task2 = 13173     --理性的化身,打人？去看看
tDialogId.Task3 = 13167     --理性的化身,了解情况
tDialogId.Task4 = 13168     --理性的化身,教训禁卫军
tDialogId.Task5 = 13169     --理性的化身,警告禁卫军
tDialogId.Task6 = 13170     --理性的化身,理性，不存在的
tDialogId.Task7 = 13171     --理性的化身,冷静，先了解情况
tDialogId.Task8 = 13172     --理性的化身,同伴的肯定
tDialogId.Task9 = 13177     --理性的化身,同伴的肯定

-- local cgId = 1025
-------------NPC群组------------


local tGenID = {}
tGenID.savGirl = 1000278
tGenID.shibin1 = 1000280
tGenID.shibin2 = 1000279
tGenID.shibin3 = 1000281
tGenID.nTrapId = 1000282
tGenID.Monnvha = 1000283
tGenID.Monshib = 1000284

--陷阱
local nTrapId = 30721
local nSingleNpc_ShiBin = 21086   --士兵
local nSingleNpc_Girl = 21085 --女孩

-------------NPC------------
local nNpcShiBin = 3993
rwtNpc[nNpcShiBin] =rwtNpc[nNpcShiBin] or {}

rwtNpcGroup[nSingleNpc_ShiBin] = rwtNpcGroup[nSingleNpc_ShiBin] or {} 
rwtNpcGroup[nSingleNpc_ShiBin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nSingleNpc_ShiBin]["NpcId"] = nNpcShiBin

local nNpcNvHai = 3997
rwtNpc[nNpcNvHai] =rwtNpc[nNpcNvHai] or {}

rwtNpcGroup[nSingleNpc_Girl] = rwtNpcGroup[nSingleNpc_Girl] or {} 
rwtNpcGroup[nSingleNpc_Girl]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nSingleNpc_Girl]["NpcId"] = nNpcNvHai

rwtNpcGroup[nTrapId] = rwtNpcGroup[nTrapId] or {} 
rwtNpcGroup[nTrapId]["Type"] = CONST_NPCGROUP_TYPE.Trap
-- rwtNpcGroup[nTrapId]["Awards"] = {}
-- rwtNpcGroup[nTrapId]["Awards"]["Events"] = {}
-- rwtNpcGroup[nTrapId]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[nTrapId]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}
-- rwtNpcGroup[nTrapId]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = cgId
-- rwtNpcGroup[nTrapId]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
-- rwtNpcGroup[nTrapId]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0

-- function rwTaskXiMengXinShang_OverCg()
--     --rwSendSystemMessage("===================")
--     rwDelGenEvent(tGenID.nTrapId)
--     --rwOpenNpcChatDialog(tDialogId.Task2,CONST_NPCCHAT_TYPE.TASK,tTaskId.Task2)
-- end

-- rwtCGFinish[cgId] = rwtCGFinish[cgId] or {}
-- table.insert(rwtCGFinish[cgId],rwTaskXiMengXinShang_OverCg)

-------------monster--------
local tMonsterGroup = {}
tMonsterGroup.MonNvhai = 900603
tMonsterGroup.MonShiBi = 900604
-------------奖励id---------
local tAward_Id = {}

tAward_Id.End_1 = 2000636
tAward_Id.End_2 = 2000637
--*****************************逻辑****************************


----***************************任务***************************----
rwtTask[tTaskId.Task1] = {}
rwtTask[tTaskId.Task1]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21919]
rwtTask[tTaskId.Task1]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
rwtTask[tTaskId.Task1]["NextTaskId"] = tTaskId.Task3
rwtTask[tTaskId.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTaskId.Task1]["DialogId"] = tDialogId.Task1
rwtTask[tTaskId.Task1]["AutoTaskDialog"] = tDialogId.Task1


-- rwtTask[tTaskId.Task2] = {}
-- rwtTask[tTaskId.Task2]["Title"]= tLuaText[LANGUAGE_CONFIG][21920]
-- rwtTask[tTaskId.Task2]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
-- rwtTask[tTaskId.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
-- rwtTask[tTaskId.Task2]["NextTaskId"] = tTaskId.Task3
-- rwtTask[tTaskId.Task2]["DialogId"] = tDialogId.Task2
-- rwtTask[tTaskId.Task2]["ReqTrap1"] = nTrapId
-- rwtTask[tTaskId.Task2]["StartAutoWay"] = {}
-- rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayMapId"] = 1000
-- rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayGroupId"] = nTrapId
-- rwtTask[tTaskId.Task2]["StartAutoWay"]["FindWayGenId"] = tGenID.nTrapId
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"] = {}
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1]["GenId"] = tGenID.nTrapId
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1]["MapId"] = 1000
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][2] = {}
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][2]["GenId"] = tGenID.savGirl
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][2]["MapId"] = 1000
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][3] = {}
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][3]["GenId"] = tGenID.shibin1
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][3]["MapId"] = 1000
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][4] = {}
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][4]["GenId"] = tGenID.shibin2
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][4]["MapId"] = 1000
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][5] = {}
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][5]["GenId"] = tGenID.shibin3
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][5]["MapId"] = 1000
-- rwtTask[tTaskId.Task2]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel



rwtTask[tTaskId.Task3] = {}
rwtTask[tTaskId.Task3]["Title"]= tLuaText[LANGUAGE_CONFIG][21920]
rwtTask[tTaskId.Task3]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
rwtTask[tTaskId.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tTaskId.Task3]["OptionTask1"] = tTaskId.Task4
rwtTask[tTaskId.Task3]["OptionTask2"] = tTaskId.Task7
-- rwtTask[tTaskId.Task3]["TaskNpc"] = nNpcShiBin
rwtTask[tTaskId.Task3]["ReqTrap1"] = nTrapId
rwtTask[tTaskId.Task3]["DialogId"]= tDialogId.Task3
-- rwtTask[tTaskId.Task3]["AutoTaskDialog"]= tDialogId.Task3
rwtTask[tTaskId.Task3]["StartAutoWay"] = {}
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayGroupId"] = nTrapId
rwtTask[tTaskId.Task3]["StartAutoWay"]["FindWayGenId"] = tGenID.nTrapId
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1]["GenId"] = tGenID.savGirl
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][2]["GenId"] = tGenID.shibin1
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][3] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][3]["GenId"] = tGenID.shibin2
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][3]["MapId"] = 1000
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][4] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][4]["GenId"] = tGenID.shibin3
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][4]["MapId"] = 1000
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][5] = {}
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][5]["GenId"] = tGenID.nTrapId
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][5]["MapId"] = 1000
rwtTask[tTaskId.Task3]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--教训禁卫军
rwtTask[tTaskId.Task4] = {}
rwtTask[tTaskId.Task4]["Title"]= tLuaText[LANGUAGE_CONFIG][21921]
rwtTask[tTaskId.Task4]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
rwtTask[tTaskId.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTaskId.Task4]["NextTaskId"] = tTaskId.Task5
rwtTask[tTaskId.Task4]["DialogId"]= tDialogId.Task4
rwtTask[tTaskId.Task4]["AutoTaskDialog"] = tDialogId.Task4
rwtTask[tTaskId.Task4]["ReqTrap1"] = nTrapId
-- rwtTask[tTaskId.Task4]["TaskNpc"] = nNpcShiBin
rwtTask[tTaskId.Task4]["KillMonsterGroup1"] = tMonsterGroup.MonShiBi
rwtTask[tTaskId.Task4]["MonsterGroupGenId"] = tGenID.Monshib
-- rwtTask[tTaskId.Task4]["StartAutoWay"] = {}
-- rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayMapId"] = 1000
-- rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_ShiBin
-- rwtTask[tTaskId.Task4]["StartAutoWay"]["FindWayGenId"] = tGenID.shibin1
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1]["GenId"] = tGenID.savGirl
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][2]["GenId"] = tGenID.shibin1
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][3] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][3]["GenId"] = tGenID.shibin2
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][3]["MapId"] = 1000
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][4] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][4]["GenId"] = tGenID.shibin3
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][4]["MapId"] = 1000
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][5] = {}
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][5]["GenId"] = tGenID.nTrapId
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][5]["MapId"] = 1000
rwtTask[tTaskId.Task4]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--警告禁卫军
rwtTask[tTaskId.Task5] = {}
rwtTask[tTaskId.Task5]["Title"]= tLuaText[LANGUAGE_CONFIG][21929]
rwtTask[tTaskId.Task5]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
rwtTask[tTaskId.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId.Task5]["NextTaskId"] = tTaskId.Task6
rwtTask[tTaskId.Task5]["DialogId"]= tDialogId.Task5
rwtTask[tTaskId.Task5]["AutoTaskDialog"] = tDialogId.Task5
rwtTask[tTaskId.Task5]["ReqTrap1"] = nTrapId
-- rwtTask[tTaskId.Task5]["TaskNpc"] = nNpcShiBin
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1]["GenId"] = tGenID.savGirl
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["GenId"] = tGenID.shibin1
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][3] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][3]["GenId"] = tGenID.shibin2
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][3]["MapId"] = 1000
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][4] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][4]["GenId"] = tGenID.shibin3
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][4]["MapId"] = 1000
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][5] = {}
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][5]["GenId"] = tGenID.nTrapId
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][5]["MapId"] = 1000
rwtTask[tTaskId.Task5]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--理性，不存在的
rwtTask[tTaskId.Task6] = {}
rwtTask[tTaskId.Task6]["Title"]= tLuaText[LANGUAGE_CONFIG][21929]
rwtTask[tTaskId.Task6]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
rwtTask[tTaskId.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId.Task6]["DialogId"]= tDialogId.Task6
rwtTask[tTaskId.Task6]["AutoTaskDialog"] = tDialogId.Task6
rwtTask[tTaskId.Task6]["ReqTrap1"] = nTrapId
-- rwtTask[tTaskId.Task6]["TaskNpc"] = nNpcNvHai
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1]["GenId"] = tGenID.savGirl
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][2]["GenId"] = tGenID.nTrapId
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][2] = {}
-- rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][2]["GenId"] = tGenID.shibin1
-- rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][2]["MapId"] = 1000
-- rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][3] = {}
-- rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][3]["GenId"] = tGenID.shibin2
-- rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][3]["MapId"] = 1000
-- rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][4] = {}
-- rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][4]["GenId"] = tGenID.shibin3
-- rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][4]["MapId"] = 1000
-- rwtTask[tTaskId.Task6]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTaskId.Task6]["StartAutoWay"] = {}
-- rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayMapId"] = 1000
-- rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_Girl
-- rwtTask[tTaskId.Task6]["StartAutoWay"]["FindWayGenId"] = tGenID.savGirl

rwtTask[tTaskId.Task6]["Awards"] = {}
rwtTask[tTaskId.Task6]["Awards"]["Events"] = {}
rwtTask[tTaskId.Task6]["Awards"]["Events"][1] = {}
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["ImpressionChk"] = {}  --亲密度任务检查
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["ImpressionChk"][1] = {}
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["ImpressionChk"][1]["HeroId"] = 101  --英雄id
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["ImpressionChk"][1]["TaskIndex"] = 3 --任务序号（impression_task表对应）
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["ImpressionChk"][1]["EndIndex"] = 1 --结局序号（结局1,2.. ）
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["ImpressionChk"][1]["NeedHeroImpressionLevel"] = 12 --需求英雄亲密度等级
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["ImpressionSet"] = {}  --亲密度掩码设置
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["ImpressionSet"][1] = {}
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["ImpressionSet"][1]["HeroId"] = 101
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["ImpressionSet"][1]["TaskIndex"] = 3
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["ImpressionSet"][1]["EndIndex"] = 1
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Id.End_1
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTaskId.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTaskId.Task6

--===============================================
--冷静，先了解情况
rwtTask[tTaskId.Task7] = {}
rwtTask[tTaskId.Task7]["Title"]= tLuaText[LANGUAGE_CONFIG][21921]
rwtTask[tTaskId.Task7]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
rwtTask[tTaskId.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTaskId.Task7]["NextTaskId"] = tTaskId.Task8
rwtTask[tTaskId.Task7]["DialogId"]= tDialogId.Task7
rwtTask[tTaskId.Task7]["AutoTaskDialog"] = tDialogId.Task7
rwtTask[tTaskId.Task7]["ReqTrap1"] = nTrapId
-- rwtTask[tTaskId.Task7]["TaskNpc"] = nNpcShiBin
rwtTask[tTaskId.Task7]["KillMonsterGroup1"] = tMonsterGroup.MonNvhai
rwtTask[tTaskId.Task7]["MonsterGroupGenId"] = tGenID.Monnvha
-- rwtTask[tTaskId.Task7]["StartAutoWay"] = {}
-- rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayMapId"] = 1000
-- rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_ShiBin
-- rwtTask[tTaskId.Task7]["StartAutoWay"]["FindWayGenId"] = tGenID.shibin1
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1]["GenId"] = tGenID.savGirl
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][2]["GenId"] = tGenID.shibin1
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][3] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][3]["GenId"] = tGenID.shibin2
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][3]["MapId"] = 1000
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][4] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][4]["GenId"] = tGenID.shibin3
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][4]["MapId"] = 1000
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][5] = {}
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][5]["GenId"] = tGenID.nTrapId
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][5]["MapId"] = 1000
rwtTask[tTaskId.Task7]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--同伴的肯定
rwtTask[tTaskId.Task8] = {}
rwtTask[tTaskId.Task8]["Title"]= tLuaText[LANGUAGE_CONFIG][21929]
rwtTask[tTaskId.Task8]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
rwtTask[tTaskId.Task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId.Task8]["NextTaskId"] = tTaskId.Task9
rwtTask[tTaskId.Task8]["DialogId"]= tDialogId.Task8
rwtTask[tTaskId.Task8]["AutoTaskDialog"] = tDialogId.Task8
rwtTask[tTaskId.Task8]["ReqTrap1"] = nTrapId
-- rwtTask[tTaskId.Task8]["TaskNpc"] = nNpcShiBin
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][1]["GenId"] = tGenID.savGirl
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][2] = {}
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][2]["GenId"] = tGenID.shibin1
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][3] = {}
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][3]["GenId"] = tGenID.shibin2
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][3]["MapId"] = 1000
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][4] = {}
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][4]["GenId"] = tGenID.shibin3
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][4]["MapId"] = 1000
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][5] = {}
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][5]["GenId"] = tGenID.nTrapId
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][5]["MapId"] = 1000
rwtTask[tTaskId.Task8]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--同伴的肯定
rwtTask[tTaskId.Task9] = {}
rwtTask[tTaskId.Task9]["Title"]= tLuaText[LANGUAGE_CONFIG][21929]
rwtTask[tTaskId.Task9]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
rwtTask[tTaskId.Task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTaskId.Task9]["DialogId"]= tDialogId.Task9
rwtTask[tTaskId.Task9]["AutoTaskDialog"] = tDialogId.Task9
rwtTask[tTaskId.Task9]["Awards"] = {}
rwtTask[tTaskId.Task9]["Awards"]["Events"] = {}
rwtTask[tTaskId.Task9]["Awards"]["Events"][1] = {}
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["ImpressionChk"] = {}  --亲密度任务检查
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["ImpressionChk"][1] = {}
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["ImpressionChk"][1]["HeroId"] = 101  --英雄id
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["ImpressionChk"][1]["TaskIndex"] = 3 --任务序号（impression_task表对应）
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["ImpressionChk"][1]["EndIndex"] = 2 --结局序号（结局1,2.. ）
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["ImpressionChk"][1]["NeedHeroImpressionLevel"] = 12 --需求英雄亲密度等级
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["ImpressionSet"] = {}  --亲密度掩码设置
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["ImpressionSet"][1] = {}
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["ImpressionSet"][1]["HeroId"] = 101
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["ImpressionSet"][1]["TaskIndex"] = 3
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["ImpressionSet"][1]["EndIndex"] = 2
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Id.End_2
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTaskId.Task9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTaskId.Task8