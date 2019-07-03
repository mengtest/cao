
--第二片区自律联盟佣兵巡查任务（永夜森林）
--By:LHW

------------------------------------------MainID

local tPatrol = {}
tPatrol.nMapId = 2003
tPatrol.nTownId = 200304

------------------------------------------TaskID

tPatrol.nTask1 = 50084 --前往执行巡查工作


--巡查线1 暗精灵首领的指令

tPatrol.nAfterTask1 = 50143	--前往执行巡查工作
tPatrol.nAfterTask1_1 = 50085 --和暗精灵首领对话
tPatrol.nAfterTask1_2 = 50086 --前往暗精灵卫兵处
tPatrol.nAfterTask1_3 = 50087 --回复暗精灵首领
tPatrol.nAfterTask1_4 = 50270 --追击神秘人
tPatrol.nAfterTask1_5 = 50271 --捡起神秘册子
tPatrol.nAfterTask1_6 = 50088 --返回联盟交接任务

--巡查线2 木匠的麻烦

tPatrol.nAfterTask2 = 50144	--前往执行巡查工作
tPatrol.nAfterTask2_1 = 50089 --到木匠达罗斯家门口
tPatrol.nAfterTask2_2 = 50090 --击败萤火熊
tPatrol.nAfterTask2_3 = 50091 --和木匠达罗斯对话
tPatrol.nAfterTask2_4 = 50092 --返回联盟交接任务

------------------------------------------NPCResId

tPatrol.nNpcRes_BiDuoMao = 3080

tPatrol.nNpcRes_AnJingLing = 3164
tPatrol.nNpcRes_AnJingLing_WB = 3165
tPatrol.nNpcRes_DaLuoSi = 3167

------------------------------------------GroupID & GenID

--Trap

--永夜巡查点
tPatrol.nGroupId_Trap_Bg = 30369
tPatrol.nGenId_Trap_Bg = 20030348 

--追击神秘人地点
tPatrol.nGroupId_Trap_SM = 30489
tPatrol.nGenId_Trap_SM =  20030479

rwtNpcGroup[tPatrol.nGroupId_Trap_Bg] = rwtNpcGroup[tPatrol.nGroupId_Trap_Bg] or {} 
rwtNpcGroup[tPatrol.nGroupId_Trap_Bg]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tPatrol.nGroupId_Trap_SM] = rwtNpcGroup[tPatrol.nGroupId_Trap_SM] or {} 
rwtNpcGroup[tPatrol.nGroupId_Trap_SM]["Type"] = CONST_NPCGROUP_TYPE.Trap


--Monster

--受惊的僵尸
tPatrol.nGroupId_Mon_JS = 900289
tPatrol.nGenId_Mon_JS = 20030350 

--萤火熊
tPatrol.nGroupId_Mon_Bear = 900288
tPatrol.nGenId_Mon_Bear = 20030349

--Collect

--神秘册子
tPatrol.nGroupId_Collect_Cezi = 60270
tPatrol.nGenId_Collect_Cezi = 20030480

rwtNpcGroup[tPatrol.nGroupId_Collect_Cezi] = rwtNpcGroup[tPatrol.nGroupId_Collect_Cezi] or {} 
rwtNpcGroup[tPatrol.nGroupId_Collect_Cezi]["Type"] = CONST_NPCGROUP_TYPE.Collect

------------------------------------------DialogId

--Trap
--巡查开始对白
local nDialogId_Trap_XunChaBegin = 10957

--scene
local nDialogId1 = 11095
local nDialogId2 = 11096

local nDialogId_Trap_SM = 11460
local nDialogId_Collect_Cezi = 11461

local nDialogId_Npc_AnJingLing_1 = 10958
local nDialogId_Npc_AnJingLing_2 = 10959
local nDialogId_Npc_AnJingLingWB_1 = 10960
local nDialogId_Npc_AnJingLingWB_2 = 10961


local nDialogId_Npc_BiDuoMao_1 = 10962
local nDialogId_Npc_BiDuoMao_2 = 10963

local nDialogId_Npc_DaLuoSi_1 = 10964
local nDialogId_Npc_DaLuoSi_2 = 10965
local nDialogId_Npc_DaLuoSi_3 = 10966
local nDialogId_Npc_DaLuoSi_4 = 10967


------------------------------------------CG

local cg_XunCha_1 = 3409
local cg_XunCha_2 = 3410

------------------------------------------MainTaskList

rwtTask[tPatrol.nTask1] = {}
rwtTask[tPatrol.nTask1]["Title"] = tLuaText[LANGUAGE_CONFIG][20957]
rwtTask[tPatrol.nTask1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nTask1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[tPatrol.nTask1]["AcceptDialogId"] = nDialogId_Trap_XunChaBegin
rwtTask[tPatrol.nTask1]["ReqTrap1"] = tPatrol.nGroupId_Trap_Bg
rwtTask[tPatrol.nTask1]["PatrolFirstTask"] = 1
rwtTask[tPatrol.nTask1]["PatrolAfterTask"] = {tPatrol.nAfterTask1,tPatrol.nAfterTask2}
rwtTask[tPatrol.nTask1]["PatrolTaskAreaId"] = tPatrol.nMapId
rwtTask[tPatrol.nTask1]["PatrolTaskTownId"] = tPatrol.nTownId
rwtTask[tPatrol.nTask1]["DynaNpcGroupGen"] = {}
rwtTask[tPatrol.nTask1]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrol.nTask1]["DynaNpcGroupGen"][1]["GenId"] = tPatrol.nGenId_Trap_Bg
rwtTask[tPatrol.nTask1]["DynaNpcGroupGen"][1]["MapId"] = tPatrol.nMapId
rwtTask[tPatrol.nTask1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tPatrol.nTask1]["StartAutoWay"] = {}
rwtTask[tPatrol.nTask1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrol.nTask1]["StartAutoWay"]["FindWayMapId"] = tPatrol.nMapId
rwtTask[tPatrol.nTask1]["StartAutoWay"]["FindWayGroupId"] = tPatrol.nGroupId_Trap_Bg
rwtTask[tPatrol.nTask1]["StartAutoWay"]["FindWayGenId"] = tPatrol.nGenId_Trap_Bg

------------------------------------------TaskList[1]
rwtTask[tPatrol.nAfterTask1] = {}
rwtTask[tPatrol.nAfterTask1]["Title"] = tLuaText[LANGUAGE_CONFIG][20958]
rwtTask[tPatrol.nAfterTask1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nAfterTask1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrol.nAfterTask1]["NextTaskId"] = tPatrol.nAfterTask1_1
rwtTask[tPatrol.nAfterTask1]["DialogId"] = nDialogId1
rwtTask[tPatrol.nAfterTask1]["ReqTrap1"] = tPatrol.nGroupId_Trap_Bg
rwtTask[tPatrol.nAfterTask1]["DynaNpcGroupGen"] = {}
rwtTask[tPatrol.nAfterTask1]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrol.nAfterTask1]["DynaNpcGroupGen"][1]["GenId"] = tPatrol.nGenId_Trap_Bg
rwtTask[tPatrol.nAfterTask1]["DynaNpcGroupGen"][1]["MapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrol.nAfterTask1]["StartAutoWay"] = {}
rwtTask[tPatrol.nAfterTask1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrol.nAfterTask1]["StartAutoWay"]["FindWayMapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask1]["StartAutoWay"]["FindWayGroupId"] = tPatrol.nGroupId_Trap_Bg
rwtTask[tPatrol.nAfterTask1]["StartAutoWay"]["FindWayGenId"] = tPatrol.nGenId_Trap_Bg

rwtTask[tPatrol.nAfterTask1_1] = {}
rwtTask[tPatrol.nAfterTask1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20959]
rwtTask[tPatrol.nAfterTask1_1]["NextTaskId"] = tPatrol.nAfterTask1_2
rwtTask[tPatrol.nAfterTask1_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nAfterTask1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrol.nAfterTask1_1]["TaskNpc"] = tPatrol.nNpcRes_AnJingLing
rwtTask[tPatrol.nAfterTask1_1]["DialogId"] = nDialogId_Npc_AnJingLing_1
--rwtTask[tPatrol.nAfterTask1_1]["PatrolCg"] = cg_XunCha_1
rwtTask[tPatrol.nAfterTask1_1]["StartAutoWay"] = {}
rwtTask[tPatrol.nAfterTask1_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrol.nAfterTask1_1]["StartAutoWay"]["FindWayMapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask1_1]["StartAutoWay"]["FindWayGroupId"] = 20206
rwtTask[tPatrol.nAfterTask1_1]["StartAutoWay"]["FindWayGenId"] = 20030157

rwtTask[tPatrol.nAfterTask1_2] = {}
rwtTask[tPatrol.nAfterTask1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20960]
rwtTask[tPatrol.nAfterTask1_2]["NextTaskId"] = tPatrol.nAfterTask1_3
rwtTask[tPatrol.nAfterTask1_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nAfterTask1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tPatrol.nAfterTask1_2]["TaskNpc"] = tPatrol.nNpcRes_AnJingLing_WB
rwtTask[tPatrol.nAfterTask1_2]["DialogId"] = nDialogId_Npc_AnJingLingWB_1
rwtTask[tPatrol.nAfterTask1_2]["DynaNpcGroupGen"] = {}
rwtTask[tPatrol.nAfterTask1_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrol.nAfterTask1_2]["DynaNpcGroupGen"][1]["GenId"] = tPatrol.nGenId_Mon_JS
rwtTask[tPatrol.nAfterTask1_2]["DynaNpcGroupGen"][1]["MapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrol.nAfterTask1_2]["MonsterGroupGenId"] = tPatrol.nGenId_Mon_JS
rwtTask[tPatrol.nAfterTask1_2]["KillMonsterGroup1"]= tPatrol.nGroupId_Mon_JS
rwtTask[tPatrol.nAfterTask1_2]["StartAutoWay"] = {}
rwtTask[tPatrol.nAfterTask1_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrol.nAfterTask1_2]["StartAutoWay"]["FindWayMapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask1_2]["StartAutoWay"]["FindWayGroupId"] = 20207
rwtTask[tPatrol.nAfterTask1_2]["StartAutoWay"]["FindWayGenId"] = 20030158

rwtTask[tPatrol.nAfterTask1_3] = {}
rwtTask[tPatrol.nAfterTask1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20961]
rwtTask[tPatrol.nAfterTask1_3]["NextTaskId"] = tPatrol.nAfterTask1_4
rwtTask[tPatrol.nAfterTask1_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nAfterTask1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrol.nAfterTask1_3]["AcceptDialogId"] = nDialogId_Npc_AnJingLingWB_2
rwtTask[tPatrol.nAfterTask1_3]["TaskNpc"] = tPatrol.nNpcRes_AnJingLing
rwtTask[tPatrol.nAfterTask1_3]["DialogId"] = nDialogId_Npc_AnJingLing_2
rwtTask[tPatrol.nAfterTask1_3]["StartAutoWay"] = {}
rwtTask[tPatrol.nAfterTask1_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrol.nAfterTask1_3]["StartAutoWay"]["FindWayMapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask1_3]["StartAutoWay"]["FindWayGroupId"] = 20206
rwtTask[tPatrol.nAfterTask1_3]["StartAutoWay"]["FindWayGenId"] = 20030157

rwtTask[tPatrol.nAfterTask1_4] = {}
rwtTask[tPatrol.nAfterTask1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21277]
rwtTask[tPatrol.nAfterTask1_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nAfterTask1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrol.nAfterTask1_4]["NextTaskId"] = tPatrol.nAfterTask1_5
rwtTask[tPatrol.nAfterTask1_4]["DialogId"] = nDialogId_Trap_SM
rwtTask[tPatrol.nAfterTask1_4]["ReqTrap1"] = tPatrol.nGroupId_Trap_SM
rwtTask[tPatrol.nAfterTask1_4]["DynaNpcGroupGen"] = {}
rwtTask[tPatrol.nAfterTask1_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrol.nAfterTask1_4]["DynaNpcGroupGen"][1]["GenId"] = tPatrol.nGenId_Trap_SM
rwtTask[tPatrol.nAfterTask1_4]["DynaNpcGroupGen"][1]["MapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask1_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrol.nAfterTask1_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrol.nAfterTask1_4]["DynaNpcGroupGen"][2]["GenId"] = 20030500
rwtTask[tPatrol.nAfterTask1_4]["DynaNpcGroupGen"][2]["MapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask1_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrol.nAfterTask1_4]["StartAutoWay"] = {}
rwtTask[tPatrol.nAfterTask1_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrol.nAfterTask1_4]["StartAutoWay"]["FindWayMapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask1_4]["StartAutoWay"]["FindWayGroupId"] = tPatrol.nGroupId_Trap_SM
rwtTask[tPatrol.nAfterTask1_4]["StartAutoWay"]["FindWayGenId"] = tPatrol.nGenId_Trap_SM

rwtTask[tPatrol.nAfterTask1_5] = {}
rwtTask[tPatrol.nAfterTask1_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21278]
rwtTask[tPatrol.nAfterTask1_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nAfterTask1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tPatrol.nAfterTask1_5]["NextTaskId"] = tPatrol.nAfterTask1_6
rwtTask[tPatrol.nAfterTask1_5]["ReqCollectId1"] = tPatrol.nGroupId_Collect_Cezi
rwtTask[tPatrol.nAfterTask1_5]["ReqCollectCount1"] = 1
rwtTask[tPatrol.nAfterTask1_5]["DialogId"] = nDialogId_Collect_Cezi
rwtTask[tPatrol.nAfterTask1_5]["DynaNpcGroupGen"] = {}
rwtTask[tPatrol.nAfterTask1_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrol.nAfterTask1_5]["DynaNpcGroupGen"][1]["GenId"] = tPatrol.nGenId_Collect_Cezi
rwtTask[tPatrol.nAfterTask1_5]["DynaNpcGroupGen"][1]["MapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask1_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrol.nAfterTask1_5]["StartAutoWay"] = {}
rwtTask[tPatrol.nAfterTask1_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrol.nAfterTask1_5]["StartAutoWay"]["FindWayMapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask1_5]["StartAutoWay"]["FindWayGroupId"] = tPatrol.nGroupId_Collect_Cezi
rwtTask[tPatrol.nAfterTask1_5]["StartAutoWay"]["FindWayGenId"] = tPatrol.nGenId_Collect_Cezi

rwtTask[tPatrol.nAfterTask1_6] = {}
rwtTask[tPatrol.nAfterTask1_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20962]
rwtTask[tPatrol.nAfterTask1_6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nAfterTask1_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrol.nAfterTask1_6]["TaskNpc"] = tPatrol.nNpcRes_BiDuoMao
rwtTask[tPatrol.nAfterTask1_6]["DialogId"] = nDialogId_Npc_BiDuoMao_1
rwtTask[tPatrol.nAfterTask1_6]["PatrolLastTask"] = 1
rwtTask[tPatrol.nAfterTask1_6]["StartAutoWay"] = {}
rwtTask[tPatrol.nAfterTask1_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrol.nAfterTask1_6]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[tPatrol.nAfterTask1_6]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[tPatrol.nAfterTask1_6]["StartAutoWay"]["FindWayGenId"] = 2001658

------------------------------------------TaskList[2]

rwtTask[tPatrol.nAfterTask2] = {}
rwtTask[tPatrol.nAfterTask2]["Title"] = tLuaText[LANGUAGE_CONFIG][20963]
rwtTask[tPatrol.nAfterTask2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nAfterTask2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrol.nAfterTask2]["NextTaskId"] = tPatrol.nAfterTask2_1
rwtTask[tPatrol.nAfterTask2]["DialogId"] = nDialogId2
rwtTask[tPatrol.nAfterTask2]["ReqTrap1"] = tPatrol.nGroupId_Trap_Bg
rwtTask[tPatrol.nAfterTask2]["DynaNpcGroupGen"] = {}
rwtTask[tPatrol.nAfterTask2]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrol.nAfterTask2]["DynaNpcGroupGen"][1]["GenId"] = tPatrol.nGenId_Trap_Bg
rwtTask[tPatrol.nAfterTask2]["DynaNpcGroupGen"][1]["MapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrol.nAfterTask2]["StartAutoWay"] = {}
rwtTask[tPatrol.nAfterTask2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrol.nAfterTask2]["StartAutoWay"]["FindWayMapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask2]["StartAutoWay"]["FindWayGroupId"] = tPatrol.nGroupId_Trap_Bg
rwtTask[tPatrol.nAfterTask2]["StartAutoWay"]["FindWayGenId"] = tPatrol.nGenId_Trap_Bg

rwtTask[tPatrol.nAfterTask2_1] = {}
rwtTask[tPatrol.nAfterTask2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20964]
rwtTask[tPatrol.nAfterTask2_1]["NextTaskId"] = tPatrol.nAfterTask2_2
rwtTask[tPatrol.nAfterTask2_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nAfterTask2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrol.nAfterTask2_1]["TaskNpc"] = tPatrol.nNpcRes_DaLuoSi
rwtTask[tPatrol.nAfterTask2_1]["DialogId"] = nDialogId_Npc_DaLuoSi_1
--rwtTask[tPatrol.nAfterTask2_1]["PatrolCg"] = cg_XunCha_2
rwtTask[tPatrol.nAfterTask2_1]["StartAutoWay"] = {}
rwtTask[tPatrol.nAfterTask2_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrol.nAfterTask2_1]["StartAutoWay"]["FindWayMapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask2_1]["StartAutoWay"]["FindWayGroupId"] = 20209
rwtTask[tPatrol.nAfterTask2_1]["StartAutoWay"]["FindWayGenId"] = 20030159

rwtTask[tPatrol.nAfterTask2_2] = {}
rwtTask[tPatrol.nAfterTask2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20965]
rwtTask[tPatrol.nAfterTask2_2]["NextTaskId"] = tPatrol.nAfterTask2_3
rwtTask[tPatrol.nAfterTask2_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nAfterTask2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tPatrol.nAfterTask2_2]["TaskNpc"] = tPatrol.nNpcRes_DaLuoSi
rwtTask[tPatrol.nAfterTask2_2]["DialogId"] = nDialogId_Npc_DaLuoSi_2
rwtTask[tPatrol.nAfterTask2_2]["DynaNpcGroupGen"] = {}
rwtTask[tPatrol.nAfterTask2_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrol.nAfterTask2_2]["DynaNpcGroupGen"][1]["GenId"] = tPatrol.nGenId_Mon_Bear
rwtTask[tPatrol.nAfterTask2_2]["DynaNpcGroupGen"][1]["MapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask2_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrol.nAfterTask2_2]["MonsterGroupGenId"] = tPatrol.nGenId_Mon_Bear
rwtTask[tPatrol.nAfterTask2_2]["KillMonsterGroup1"] = tPatrol.nGroupId_Mon_Bear
rwtTask[tPatrol.nAfterTask2_2]["AcceptBattleGenId"] = tPatrol.nGenId_Mon_Bear

rwtTask[tPatrol.nAfterTask2_3] = {}
rwtTask[tPatrol.nAfterTask2_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20966]
rwtTask[tPatrol.nAfterTask2_3]["NextTaskId"] = tPatrol.nAfterTask2_4
rwtTask[tPatrol.nAfterTask2_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nAfterTask2_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrol.nAfterTask2_3]["AcceptDialogId"] = nDialogId_Npc_DaLuoSi_3
rwtTask[tPatrol.nAfterTask2_3]["TaskNpc"] = tPatrol.nNpcRes_DaLuoSi
rwtTask[tPatrol.nAfterTask2_3]["DialogId"] = nDialogId_Npc_DaLuoSi_4
rwtTask[tPatrol.nAfterTask2_3]["StartAutoWay"] = {}
rwtTask[tPatrol.nAfterTask2_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrol.nAfterTask2_3]["StartAutoWay"]["FindWayMapId"] = tPatrol.nMapId
rwtTask[tPatrol.nAfterTask2_3]["StartAutoWay"]["FindWayGroupId"] = 20209
rwtTask[tPatrol.nAfterTask2_3]["StartAutoWay"]["FindWayGenId"] = 20030159

rwtTask[tPatrol.nAfterTask2_4] = {}
rwtTask[tPatrol.nAfterTask2_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20967]
rwtTask[tPatrol.nAfterTask2_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrol.nAfterTask2_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrol.nAfterTask2_4]["TaskNpc"] = tPatrol.nNpcRes_BiDuoMao
rwtTask[tPatrol.nAfterTask2_4]["DialogId"] = nDialogId_Npc_BiDuoMao_2
rwtTask[tPatrol.nAfterTask2_4]["PatrolLastTask"] = 1
rwtTask[tPatrol.nAfterTask2_4]["StartAutoWay"] = {}
rwtTask[tPatrol.nAfterTask2_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrol.nAfterTask2_4]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[tPatrol.nAfterTask2_4]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[tPatrol.nAfterTask2_4]["StartAutoWay"]["FindWayGenId"] = 2001658