--阿诺特岛佣兵任务
local nMercenaryTownId = 200504


--数据


-------------新增佣兵委托任务
local tANuoTeDaoMercenaryTask = {}

local tTaskTitleId = {}

tTaskTitleId.Task1 = 21561
tTaskTitleId.Task2 = 21562
tTaskTitleId.Task3 = 21563
tTaskTitleId.Task4 = 21564
tTaskTitleId.Task5 = 21565
tTaskTitleId.Task6 = 21566
tTaskTitleId.Task7 = 21567
tTaskTitleId.Task8 = 21568
tTaskTitleId.Task9 = 21569
tTaskTitleId.Task10 = 21570

--紧急情报
tANuoTeDaoMercenaryTask.TaskId1_1 = 20872
tANuoTeDaoMercenaryTask.TaskId1_2 = 20873
tANuoTeDaoMercenaryTask.TaskId1_3 = 20874
tANuoTeDaoMercenaryTask.TaskId1_4 = 20875
tANuoTeDaoMercenaryTask.TaskId1_5 = 20876

--新能源材料
tANuoTeDaoMercenaryTask.TaskId2_1 = 20877
tANuoTeDaoMercenaryTask.TaskId2_2 = 20878
tANuoTeDaoMercenaryTask.TaskId2_3 = 20879
tANuoTeDaoMercenaryTask.TaskId2_4 = 20880
tANuoTeDaoMercenaryTask.TaskId2_5 = 20881

--阿诺特隐居者
tANuoTeDaoMercenaryTask.TaskId3_1 = 20882
tANuoTeDaoMercenaryTask.TaskId3_2 = 20883
tANuoTeDaoMercenaryTask.TaskId3_3 = 20884
tANuoTeDaoMercenaryTask.TaskId3_4 = 20885
tANuoTeDaoMercenaryTask.TaskId3_5 = 20886

--残垣之谜
tANuoTeDaoMercenaryTask.TaskId4_1 = 20887
tANuoTeDaoMercenaryTask.TaskId4_2 = 20888
tANuoTeDaoMercenaryTask.TaskId4_3 = 20889
tANuoTeDaoMercenaryTask.TaskId4_4 = 20890
tANuoTeDaoMercenaryTask.TaskId4_5 = 20891

--采集雪铁矿
tANuoTeDaoMercenaryTask.TaskId5_1 = 20892
tANuoTeDaoMercenaryTask.TaskId5_2 = 20893
tANuoTeDaoMercenaryTask.TaskId5_3 = 20894
tANuoTeDaoMercenaryTask.TaskId5_4 = 20895
tANuoTeDaoMercenaryTask.TaskId5_5 = 20896

--失踪的掠夺者
tANuoTeDaoMercenaryTask.TaskId6_1 = 20897
tANuoTeDaoMercenaryTask.TaskId6_2 = 20898
tANuoTeDaoMercenaryTask.TaskId6_3 = 20899
tANuoTeDaoMercenaryTask.TaskId6_4 = 20900
tANuoTeDaoMercenaryTask.TaskId6_5 = 20901

--掠夺者的恶行
tANuoTeDaoMercenaryTask.TaskId7_1 = 20902
tANuoTeDaoMercenaryTask.TaskId7_2 = 20903
tANuoTeDaoMercenaryTask.TaskId7_3 = 20904
tANuoTeDaoMercenaryTask.TaskId7_4 = 20905
tANuoTeDaoMercenaryTask.TaskId7_5 = 20906

--阿诺特阴暗面
tANuoTeDaoMercenaryTask.TaskId8_1 = 20907
tANuoTeDaoMercenaryTask.TaskId8_2 = 20908
tANuoTeDaoMercenaryTask.TaskId8_3 = 20909
tANuoTeDaoMercenaryTask.TaskId8_4 = 20910
tANuoTeDaoMercenaryTask.TaskId8_5 = 20911

--荒林猛兽
tANuoTeDaoMercenaryTask.TaskId9_1 = 20912
tANuoTeDaoMercenaryTask.TaskId9_2 = 20913
tANuoTeDaoMercenaryTask.TaskId9_3 = 20914
tANuoTeDaoMercenaryTask.TaskId9_4 = 20915
tANuoTeDaoMercenaryTask.TaskId9_5 = 20916


--联盟通缉令
tANuoTeDaoMercenaryTask.TaskId10_1 = 20917
tANuoTeDaoMercenaryTask.TaskId10_2 = 20918
tANuoTeDaoMercenaryTask.TaskId10_3 = 20919
tANuoTeDaoMercenaryTask.TaskId10_4 = 20920
tANuoTeDaoMercenaryTask.TaskId10_5 = 20921






-------------NPCGroup

local tNpcGroup = {}
local tNpcRes = {}

--阿诺特岛隐居者
tNpcRes.nNpc_Task3 = 3669
tNpcGroup.nNpc_Task3 = 20590
tNpcGroup.nNpc_Task3_GenId = 20050181

--残垣
tNpcGroup.nCol_Task4 = 60327
tNpcGroup.nCol_Task4_GenId = 20050182

--雪铁矿
tNpcGroup.nCol_Task5 = 60328
tNpcGroup.nCol_Task5_GenId = 20050183

--失踪的掠夺者
tNpcGroup.nCol_Task6 = 60329
tNpcGroup.nCol_Task6_GenId = 20050184



-------------怪物数据

local tMonGroup = {}

--掠夺者
--local nMonster_LueDuoZhe = 9000418
--local nMonster_LueDuoZhe_2 = 9000419
tMonGroup.nTask7 = 900450
tMonGroup.nTask7_GenId = 20050185

--暗黑士兵
--local nMonster_AnHeiWeiBing = 9000420
--local nMonster_AnHeiWeiBing_2 = 9000421
tMonGroup.nTask8 = 900451
tMonGroup.nTask8_GenId = 20050186

--寄居熊
--local nMonster_JiJuBear = 9000422
tMonGroup.nTask9 = 900452
tMonGroup.nTask9_GenId = 20050187

--机械怪杰
--local nMonster_GuaiJieX = 9000423
tMonGroup.nTask10 = 900453
tMonGroup.nTask10_GenId = 20050188




-------------对白Id

local tDialog = {}

tDialog.nAccept_Task1 = 12154
tDialog.nAccept_Task2 = 12155
tDialog.nAccept_Task3 = 12156
tDialog.nAccept_Task4 = 12157
tDialog.nAccept_Task5 = 12158
tDialog.nAccept_Task6 = 12159
tDialog.nAccept_Task7 = 12160
tDialog.nAccept_Task8 = 12161
tDialog.nAccept_Task9 = 12162
tDialog.nAccept_Task10 = 12163


tDialog.nBTalk_Task1 = 12164
tDialog.nBTalk_Task2 = 12165
tDialog.nBTalk_Task3 = 12166
tDialog.nBTalk_Task4 = 12168
tDialog.nBTalk_Task5 = 12169
tDialog.nBTalk_Task6 = 12170


tDialog.nBattle_Task7 = 12171
--tDialog.nBattle_Task8 =
tDialog.nBattle_Task9 = 12172
--tDialog.nBattle_Task10 = 

--tDialog.nBeforeCol_Task4 = 
--tDialog.nBeforeCol_Task5 =
--tDialog.nBeforeCol_Task6 =

-------------奖励组

local tAwardGroup = {}

tAwardGroup.nTask1 = 1
tAwardGroup.nTask2 = 2
tAwardGroup.nTask3 = 3
tAwardGroup.nTask4 = 4
tAwardGroup.nTask5 = 5
tAwardGroup.nTask6 = 1
tAwardGroup.nTask7 = 2
tAwardGroup.nTask8 = 3
tAwardGroup.nTask9 = 4
tAwardGroup.nTask10 = 6

-------------配置

rwtNpcGroup[tNpcGroup.nNpc_Task3] = rwtNpcGroup[tNpcGroup.nNpc_Task3] or {}
rwtNpcGroup[tNpcGroup.nNpc_Task3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.nNpc_Task3]["NpcId"] = tNpcRes.nNpc_Task3

rwtNpc[tNpcRes.nNpc_Task3] = rwtNpc[tNpcRes.nNpc_Task3] or {}

rwtNpcGroup[tNpcGroup.nCol_Task4] = rwtNpcGroup[tNpcGroup.nCol_Task4] or {}
rwtNpcGroup[tNpcGroup.nCol_Task4]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[tNpcGroup.nCol_Task5] = rwtNpcGroup[tNpcGroup.nCol_Task5] or {}
rwtNpcGroup[tNpcGroup.nCol_Task5]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[tNpcGroup.nCol_Task6] = rwtNpcGroup[tNpcGroup.nCol_Task6] or {}
rwtNpcGroup[tNpcGroup.nCol_Task6]["Type"] = CONST_NPCGROUP_TYPE.Collect


-------------任务

--紧急情报
--品质D
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task1]
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["AcceptDialogId"] = tDialog.nAccept_Task1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["DialogId"] = tDialog.nBTalk_Task1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["TaskNpc"] = 3529
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayGroupId"] = 20501
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayGenId"] = 20050092
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["TaskQuality"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_1]["AwardGroupId"] = tAwardGroup.nTask1
--品质C
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task1]
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["AcceptDialogId"] = tDialog.nAccept_Task1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["DialogId"] = tDialog.nBTalk_Task1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["TaskNpc"] = 3529
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayGroupId"] = 20501
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayGenId"] = 20050092
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["TaskQuality"] = 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_2]["AwardGroupId"] = tAwardGroup.nTask1
--品质B
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task1]
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["AcceptDialogId"] = tDialog.nAccept_Task1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["DialogId"] = tDialog.nBTalk_Task1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["TaskNpc"] = 3529
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayGroupId"] = 20501
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayGenId"] = 20050092
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["TaskQuality"] = 3
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_3]["AwardGroupId"] = tAwardGroup.nTask1
--品质A
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task1]
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["AcceptDialogId"] = tDialog.nAccept_Task1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["DialogId"] = tDialog.nBTalk_Task1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["TaskNpc"] = 3529
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayGroupId"] = 20501
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayGenId"] = 20050092
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["TaskQuality"] = 4
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_4]["AwardGroupId"] = tAwardGroup.nTask1
--品质S
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task1]
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["AcceptDialogId"] = tDialog.nAccept_Task1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["DialogId"] = tDialog.nBTalk_Task1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["TaskNpc"] = 3529
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayGroupId"] = 20501
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayGenId"] = 20050092
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["TaskQuality"] = 5
rwtTask[tANuoTeDaoMercenaryTask.TaskId1_5]["AwardGroupId"] = tAwardGroup.nTask1


--新能源材料
--品质D
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task2]
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["AcceptDialogId"] = tDialog.nAccept_Task2
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["DialogId"] = tDialog.nBTalk_Task2
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["TaskNpc"] = 3531
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayGroupId"] = 20503
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayGenId"] = 20050094
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["TaskQuality"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_1]["AwardGroupId"] = tAwardGroup.nTask2
--品质C
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task2]
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["AcceptDialogId"] = tDialog.nAccept_Task2
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["DialogId"] = tDialog.nBTalk_Task2
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["TaskNpc"] = 3531
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayGroupId"] = 20503
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayGenId"] = 20050094
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["TaskQuality"] = 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_2]["AwardGroupId"] = tAwardGroup.nTask2
--品质B
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task2]
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["AcceptDialogId"] = tDialog.nAccept_Task2
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["DialogId"] = tDialog.nBTalk_Task2
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["TaskNpc"] = 3531
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayGroupId"] = 20503
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayGenId"] = 20050094
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["TaskQuality"] = 3
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_3]["AwardGroupId"] = tAwardGroup.nTask2
--品质A
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task2]
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["AcceptDialogId"] = tDialog.nAccept_Task2
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["DialogId"] = tDialog.nBTalk_Task2
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["TaskNpc"] = 3531
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayGroupId"] = 20503
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayGenId"] = 20050094
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["TaskQuality"] = 4
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_4]["AwardGroupId"] = tAwardGroup.nTask2
--品质S
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task2]
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["AcceptDialogId"] = tDialog.nAccept_Task2
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["DialogId"] = tDialog.nBTalk_Task2
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["TaskNpc"] = 3531
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayGroupId"] = 20503
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayGenId"] = 20050094
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["TaskQuality"] = 5
rwtTask[tANuoTeDaoMercenaryTask.TaskId2_5]["AwardGroupId"] = tAwardGroup.nTask2

--阿诺特隐居者
--品质D
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task3]
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["AcceptDialogId"] = tDialog.nAccept_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["DialogId"] = tDialog.nBTalk_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["TaskNpc"] = tNpcRes.nNpc_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nNpc_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nNpc_Task3_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["TaskQuality"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_1]["AwardGroupId"] = tAwardGroup.nTask3
--品质C
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task3]
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["AcceptDialogId"] = tDialog.nAccept_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["DialogId"] = tDialog.nBTalk_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["TaskNpc"] = tNpcRes.nNpc_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nNpc_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nNpc_Task3_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["TaskQuality"] = 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_2]["AwardGroupId"] = tAwardGroup.nTask3
--品质B
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task3]
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["AcceptDialogId"] = tDialog.nAccept_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["DialogId"] = tDialog.nBTalk_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["TaskNpc"] = tNpcRes.nNpc_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nNpc_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nNpc_Task3_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["TaskQuality"] = 3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_3]["AwardGroupId"] = tAwardGroup.nTask3
--品质A
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task3]
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["AcceptDialogId"] = tDialog.nAccept_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["DialogId"] = tDialog.nBTalk_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["TaskNpc"] = tNpcRes.nNpc_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nNpc_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nNpc_Task3_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["TaskQuality"] = 4
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_4]["AwardGroupId"] = tAwardGroup.nTask3
--品质S
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task3]
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["AcceptDialogId"] = tDialog.nAccept_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["DialogId"] = tDialog.nBTalk_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["TaskNpc"] = tNpcRes.nNpc_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nNpc_Task3
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nNpc_Task3_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["TaskQuality"] = 5
rwtTask[tANuoTeDaoMercenaryTask.TaskId3_5]["AwardGroupId"] = tAwardGroup.nTask3

--残垣之谜
--品质D
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task4]
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["AcceptDialogId"] = tDialog.nAccept_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["ReqCollectId1"] = tNpcGroup.nCol_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task4_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task4_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["TaskQuality"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["AwardGroupId"] = tAwardGroup.nTask4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_1]["DialogId"] = tDialog.nBTalk_Task4
--品质C
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task4]
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["AcceptDialogId"] = tDialog.nAccept_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["ReqCollectId1"] = tNpcGroup.nCol_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task4_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task4_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["TaskQuality"] = 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["AwardGroupId"] = tAwardGroup.nTask4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_2]["DialogId"] = tDialog.nBTalk_Task4
--品质B
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task4]
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["AcceptDialogId"] = tDialog.nAccept_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["ReqCollectId1"] = tNpcGroup.nCol_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task4_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task4_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["TaskQuality"] = 3
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["AwardGroupId"] = tAwardGroup.nTask4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_3]["DialogId"] = tDialog.nBTalk_Task4
--品质A
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task4]
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["AcceptDialogId"] = tDialog.nAccept_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["ReqCollectId1"] = tNpcGroup.nCol_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task4_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task4_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["TaskQuality"] = 4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["AwardGroupId"] = tAwardGroup.nTask4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_4]["DialogId"] = tDialog.nBTalk_Task4
--品质S
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task4]
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["AcceptDialogId"] = tDialog.nAccept_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["ReqCollectId1"] = tNpcGroup.nCol_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task4_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task4_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["TaskQuality"] = 5
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["AwardGroupId"] = tAwardGroup.nTask4
rwtTask[tANuoTeDaoMercenaryTask.TaskId4_5]["DialogId"] = tDialog.nBTalk_Task4


--采集雪铁矿
--品质D
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task5]
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["AcceptDialogId"] = tDialog.nAccept_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["ReqCollectId1"] = tNpcGroup.nCol_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task5_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task5_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["TaskQuality"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["AwardGroupId"] = tAwardGroup.nTask5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_1]["DialogId"] = tDialog.nBTalk_Task5
--品质C
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task5]
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["AcceptDialogId"] = tDialog.nAccept_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["ReqCollectId1"] = tNpcGroup.nCol_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task5_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task5_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["TaskQuality"] = 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["AwardGroupId"] = tAwardGroup.nTask5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_2]["DialogId"] = tDialog.nBTalk_Task5
--品质B
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task5]
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["AcceptDialogId"] = tDialog.nAccept_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["ReqCollectId1"] = tNpcGroup.nCol_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task5_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task5_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["TaskQuality"] = 3
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["AwardGroupId"] = tAwardGroup.nTask5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_3]["DialogId"] = tDialog.nBTalk_Task5
--品质A
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task5]
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["AcceptDialogId"] = tDialog.nAccept_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["ReqCollectId1"] = tNpcGroup.nCol_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task5_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task5_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["TaskQuality"] = 4
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["AwardGroupId"] = tAwardGroup.nTask5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_4]["DialogId"] = tDialog.nBTalk_Task5
--品质S
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task5]
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["AcceptDialogId"] = tDialog.nAccept_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["ReqCollectId1"] = tNpcGroup.nCol_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task5_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task5_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["TaskQuality"] = 5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["AwardGroupId"] = tAwardGroup.nTask5
rwtTask[tANuoTeDaoMercenaryTask.TaskId5_5]["DialogId"] = tDialog.nBTalk_Task5


--失踪的掠夺者
--品质D
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task6]
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["AcceptDialogId"] = tDialog.nAccept_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["ReqCollectId1"] = tNpcGroup.nCol_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task6_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task6_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["TaskQuality"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["AwardGroupId"] = tAwardGroup.nTask6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_1]["DialogId"] = tDialog.nBTalk_Task6
--品质C
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task6]
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["AcceptDialogId"] = tDialog.nAccept_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["ReqCollectId1"] = tNpcGroup.nCol_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task6_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task6_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["TaskQuality"] = 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["AwardGroupId"] = tAwardGroup.nTask6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_2]["DialogId"] = tDialog.nBTalk_Task6
--品质B
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task6]
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["AcceptDialogId"] = tDialog.nAccept_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["ReqCollectId1"] = tNpcGroup.nCol_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task6_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task6_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["TaskQuality"] = 3
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["AwardGroupId"] = tAwardGroup.nTask6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_3]["DialogId"] = tDialog.nBTalk_Task6
--品质A
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task6]
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["AcceptDialogId"] = tDialog.nAccept_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["ReqCollectId1"] = tNpcGroup.nCol_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task6_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task6_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["TaskQuality"] = 4
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["AwardGroupId"] = tAwardGroup.nTask6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_4]["DialogId"] = tDialog.nBTalk_Task6
--品质S
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task6]
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["AcceptDialogId"] = tDialog.nAccept_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["ReqCollectId1"] = tNpcGroup.nCol_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["ReqCollectCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1]["GenId"] = tNpcGroup.nCol_Task6_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.nCol_Task6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayGenId"] = tNpcGroup.nCol_Task6_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["TaskQuality"] = 5
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["AwardGroupId"] = tAwardGroup.nTask6
rwtTask[tANuoTeDaoMercenaryTask.TaskId6_5]["DialogId"] = tDialog.nBTalk_Task6


--掠夺者的恶行
--品质D
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task7]
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["AcceptDialogId"] = tDialog.nAccept_Task7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["KillMonsterGroup1"] = tMonGroup.nTask7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask7_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask7_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["TaskQuality"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_1]["AwardGroupId"] = tAwardGroup.nTask7
--品质C
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task7]
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["AcceptDialogId"] = tDialog.nAccept_Task7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["KillMonsterGroup1"] = tMonGroup.nTask7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask7_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask7_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["TaskQuality"] = 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_2]["AwardGroupId"] = tAwardGroup.nTask7
--品质B
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task7]
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["AcceptDialogId"] = tDialog.nAccept_Task7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["KillMonsterGroup1"] = tMonGroup.nTask7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask7_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask7_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["TaskQuality"] = 3
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_3]["AwardGroupId"] = tAwardGroup.nTask7
--品质A
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task7]
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["AcceptDialogId"] = tDialog.nAccept_Task7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["KillMonsterGroup1"] = tMonGroup.nTask7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask7_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask7_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["TaskQuality"] = 4
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_4]["AwardGroupId"] = tAwardGroup.nTask7
--品质S
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task7]
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["AcceptDialogId"] = tDialog.nAccept_Task7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["KillMonsterGroup1"] = tMonGroup.nTask7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask7_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask7
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask7_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["TaskQuality"] = 5
rwtTask[tANuoTeDaoMercenaryTask.TaskId7_5]["AwardGroupId"] = tAwardGroup.nTask7




--掠夺者的恶行
--品质D
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task8]
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["AcceptDialogId"] = tDialog.nAccept_Task8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["KillMonsterGroup1"] = tMonGroup.nTask8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask8_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask8_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["TaskQuality"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_1]["AwardGroupId"] = tAwardGroup.nTask8
--品质C
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task8]
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["AcceptDialogId"] = tDialog.nAccept_Task8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["KillMonsterGroup1"] = tMonGroup.nTask8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask8_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask8_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["TaskQuality"] = 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_2]["AwardGroupId"] = tAwardGroup.nTask8
--品质B
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task8]
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["AcceptDialogId"] = tDialog.nAccept_Task8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["KillMonsterGroup1"] = tMonGroup.nTask8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask8_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask8_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["TaskQuality"] = 3
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_3]["AwardGroupId"] = tAwardGroup.nTask8
--品质A
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task8]
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["AcceptDialogId"] = tDialog.nAccept_Task8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["KillMonsterGroup1"] = tMonGroup.nTask8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask8_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask8_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["TaskQuality"] = 4
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_4]["AwardGroupId"] = tAwardGroup.nTask8
--品质S
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task8]
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["AcceptDialogId"] = tDialog.nAccept_Task8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["KillMonsterGroup1"] = tMonGroup.nTask8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask8_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask8
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask8_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["TaskQuality"] = 5
rwtTask[tANuoTeDaoMercenaryTask.TaskId8_5]["AwardGroupId"] = tAwardGroup.nTask8




--荒林猛兽
--品质D
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task9]
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["AcceptDialogId"] = tDialog.nAccept_Task9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["KillMonsterGroup1"] = tMonGroup.nTask9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask9_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask9_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["TaskQuality"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_1]["AwardGroupId"] = tAwardGroup.nTask9
--品质C
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task9]
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["AcceptDialogId"] = tDialog.nAccept_Task9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["KillMonsterGroup1"] = tMonGroup.nTask9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask9_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask9_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["TaskQuality"] = 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_2]["AwardGroupId"] = tAwardGroup.nTask9
--品质B
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task9]
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["AcceptDialogId"] = tDialog.nAccept_Task9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["KillMonsterGroup1"] = tMonGroup.nTask9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask9_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask9_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["TaskQuality"] = 3
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_3]["AwardGroupId"] = tAwardGroup.nTask9
--品质A
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task9]
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["AcceptDialogId"] = tDialog.nAccept_Task9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["KillMonsterGroup1"] = tMonGroup.nTask9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask9_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask9_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["TaskQuality"] = 4
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_4]["AwardGroupId"] = tAwardGroup.nTask9
--品质S
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task9]
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["AcceptDialogId"] = tDialog.nAccept_Task9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["KillMonsterGroup1"] = tMonGroup.nTask9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask9_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask9
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask9_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["TaskQuality"] = 5
rwtTask[tANuoTeDaoMercenaryTask.TaskId9_5]["AwardGroupId"] = tAwardGroup.nTask9



--联盟通缉令
--品质D
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task10]
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["AcceptDialogId"] = tDialog.nAccept_Task10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["KillMonsterGroup1"] = tMonGroup.nTask10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask10_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask10_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["TaskQuality"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_1]["AwardGroupId"] = tAwardGroup.nTask10
--品质C
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task10]
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["AcceptDialogId"] = tDialog.nAccept_Task10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["KillMonsterGroup1"] = tMonGroup.nTask10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask10_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask10_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["TaskQuality"] = 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_2]["AwardGroupId"] = tAwardGroup.nTask10
--品质B
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task10]
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["AcceptDialogId"] = tDialog.nAccept_Task10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["KillMonsterGroup1"] = tMonGroup.nTask10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask10_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask10_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["TaskQuality"] = 3
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_3]["AwardGroupId"] = tAwardGroup.nTask10
--品质A
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task10]
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["AcceptDialogId"] = tDialog.nAccept_Task10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["KillMonsterGroup1"] = tMonGroup.nTask10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask10_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask10_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["TaskQuality"] = 4
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_4]["AwardGroupId"] = tAwardGroup.nTask10
--品质S
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["Title"] = tLuaText[LANGUAGE_CONFIG][tTaskTitleId.Task10]
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["AcceptDialogId"] = tDialog.nAccept_Task10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["KillMonsterGroup1"] = tMonGroup.nTask10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["KillMonsterGroupCount1"] = 1
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["DynaNpcGroupGen"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["DynaNpcGroupGen"][1]["GenId"] = tMonGroup.nTask10_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["StartAutoWay"] = {}
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["StartAutoWay"]["FindWayGroupId"] = tMonGroup.nTask10
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["StartAutoWay"]["FindWayGenId"] =  tMonGroup.nTask10_GenId
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["TaskQuality"] = 5
rwtTask[tANuoTeDaoMercenaryTask.TaskId10_5]["AwardGroupId"] = tAwardGroup.nTask10

