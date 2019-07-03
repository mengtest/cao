
--地图ID
local nMapId = 2005

--任务ID
local tTask = {}
tTask.nFanRenIsYou_1 = 70095 --站住，举起手来
tTask.nFanRenIsYou_2 = 70096 --调查案发现场
tTask.nFanRenIsYou_3 = 70097 --前往赛文的住处
tTask.nFanRenIsYou_4 = 70098 --调查赛文
tTask.nFanRenIsYou_5 = 70099 --前往斯拜的住处
tTask.nFanRenIsYou_6 = 70100 --调查斯拜
tTask.nFanRenIsYou_7 = 70101 --讨论案情
tTask.nFanRenIsYou_8 = 70102 --真凶浮出水面
tTask.nFanRenIsYou_9 = 70103 --战胜真凶
tTask.nFanRenIsYou_10 =70104 --犯人就是他


--对话ID
local tDialog = {}
tDialog.nTask1 = 11660
tDialog.nTask2 = 11661
tDialog.nTask3 = 11662
tDialog.nTask4 = 11663
tDialog.nTask5 = 11664
tDialog.nTask6 = 11665
tDialog.nTask7 = 11666
tDialog.nTask8 = 11667
tDialog.nTask9 = 11668
tDialog.nTask10 = 11669

--陷阱ID
local tTrap = {}

tTrap.nTrap_SaiWen = 30521
tTrap.nTrap_GenId_SaiWen = 20050123
rwtNpcGroup[tTrap.nTrap_SaiWen] = rwtNpcGroup[tTrap.nTrap_SaiWen] or {} 
rwtNpcGroup[tTrap.nTrap_SaiWen]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_BaiSi = 30522
tTrap.nTrap_GenId_BaiSi = 20050124
rwtNpcGroup[tTrap.nTrap_BaiSi] = rwtNpcGroup[tTrap.nTrap_BaiSi] or {} 
rwtNpcGroup[tTrap.nTrap_BaiSi]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_AnQing = 30523
tTrap.nTrap_GenId_AnQing = 20050125
rwtNpcGroup[tTrap.nTrap_AnQing] = rwtNpcGroup[tTrap.nTrap_AnQing] or {} 
rwtNpcGroup[tTrap.nTrap_AnQing]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_XiongShou = 30524
tTrap.nTrap_GenId_XiongShou = 20050126
rwtNpcGroup[tTrap.nTrap_XiongShou] = rwtNpcGroup[tTrap.nTrap_XiongShou] or {} 
rwtNpcGroup[tTrap.nTrap_XiongShou]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_MonsterLuNi = 30525
tTrap.nTrap_GenId_MonsterLuNi = 20050127
rwtNpcGroup[tTrap.nTrap_MonsterLuNi] = rwtNpcGroup[tTrap.nTrap_MonsterLuNi] or {} 
rwtNpcGroup[tTrap.nTrap_MonsterLuNi]["Type"] = CONST_NPCGROUP_TYPE.Trap

-- --采集物ID
-- local tCollect= {}


-- --宝箱ID
-- local tTreasureBox= {}

--怪物ID
local tMonster = {}

tMonster.nMonster_LuNi = 9000303
tMonster.nMonsterGroup_LuNi = 900384
tMonster.nMonsterGroup_GenId_LuNi = 20050132

--NPCID
local tSingleNpc = {}

tSingleNpc.nNpc_ZAGLuoFu = 3560
tSingleNpc.nNpcGroup_ZAGLuoFu = 20514
tSingleNpc.nNpcGroup_GenId_ZAGLuoFu = 20050128
rwtNpc[tSingleNpc.nNpc_ZAGLuoFu] = rwtNpc[tSingleNpc.nNpc_ZAGLuoFu] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_ZAGLuoFu] = rwtNpcGroup[tSingleNpc.nNpcGroup_ZAGLuoFu] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_ZAGLuoFu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_ZAGLuoFu]["NpcId"] = tSingleNpc.nNpc_ZAGLuoFu

tSingleNpc.nNpc_AnFaXianChang = 3560
tSingleNpc.nNpcGroup_AnFaXianChang = 10021
tSingleNpc.nNpcGroup_GenId_AnFaXianChang = 20050131
rwtNpc[tSingleNpc.nNpc_AnFaXianChang] = rwtNpc[tSingleNpc.nNpc_AnFaXianChang] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_AnFaXianChang] = rwtNpcGroup[tSingleNpc.nNpcGroup_AnFaXianChang] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_AnFaXianChang]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_AnFaXianChang]["NpcId1"] = tSingleNpc.nNpc_AnFaXianChang

tSingleNpc.nNpc_SaiWen = 3561
tSingleNpc.nNpcGroup_SaiWen = 20515
tSingleNpc.nNpcGroup_GenId_SaiWen = 20050129
rwtNpc[tSingleNpc.nNpc_SaiWen] = rwtNpc[tSingleNpc.nNpc_SaiWen] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_SaiWen] = rwtNpcGroup[tSingleNpc.nNpcGroup_SaiWen] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_SaiWen]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_SaiWen]["NpcId"] = tSingleNpc.nNpc_SaiWen

tSingleNpc.nNpc_BaiSi = 3562
tSingleNpc.nNpcGroup_BaiSi = 20516
tSingleNpc.nNpcGroup_GenId_BaiSi = 20050130
rwtNpc[tSingleNpc.nNpc_BaiSi] = rwtNpc[tSingleNpc.nNpc_BaiSi] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_BaiSi] = rwtNpcGroup[tSingleNpc.nNpcGroup_BaiSi] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_BaiSi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_BaiSi]["NpcId"] = tSingleNpc.nNpc_BaiSi

--站住，举起手来
rwtTask[tTask.nFanRenIsYou_1] = {}
rwtTask[tTask.nFanRenIsYou_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21381]
rwtTask[tTask.nFanRenIsYou_1]["TaskType"] = CONST_TASK_TYPE.SIDE
-- rwtTask[tTask.nFanRenIsYou_1]["PreTaskId"] = start
rwtTask[tTask.nFanRenIsYou_1]["NextTaskId"] = tTask.nFanRenIsYou_2
rwtTask[tTask.nFanRenIsYou_1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nFanRenIsYou_1]["IsClickComplete"] = 0
rwtTask[tTask.nFanRenIsYou_1]["TaskNpc"] = tSingleNpc.nNpc_ZAGLuoFu
rwtTask[tTask.nFanRenIsYou_1]["DialogId"] = tDialog.nTask1
-- rwtTask[tTask.nFanRenIsYou_1]["StartAutoWay"] = {}
-- rwtTask[tTask.nFanRenIsYou_1]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tTask.nFanRenIsYou_1]["StartAutoWay"]["FindWayMapId"] = nMapId
-- rwtTask[tTask.nFanRenIsYou_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ZAGLuoFu
-- rwtTask[tTask.nFanRenIsYou_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ZAGLuoFu

--调查案发现场
rwtTask[tTask.nFanRenIsYou_2] = {}
rwtTask[tTask.nFanRenIsYou_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21381]
rwtTask[tTask.nFanRenIsYou_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nFanRenIsYou_2]["PreTaskId"] = tTask.nFanRenIsYou_1
rwtTask[tTask.nFanRenIsYou_2]["NextTaskId"] = tTask.nFanRenIsYou_3
rwtTask[tTask.nFanRenIsYou_2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tTask.nFanRenIsYou_2]["IsClickComplete"] = 0
--rwtTask[tTask.nFanRenIsYou_2]["TaskNpc"] = tSingleNpc.nNpc_AnFaXianChang
--rwtTask[tTask.nFanRenIsYou_2]["DialogId"] = tDialog.nTask2
rwtTask[tTask.nFanRenIsYou_2]["PassCopyMap1"] = {3077}
rwtTask[tTask.nFanRenIsYou_2]["PassCopyMapCount1"] = 1
rwtTask[tTask.nFanRenIsYou_2]["OpenCopyMap"] = 3077
rwtTask[tTask.nFanRenIsYou_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nFanRenIsYou_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nFanRenIsYou_2]["DynaNpcGroupGen"][1]["GenId"] = 20050133
rwtTask[tTask.nFanRenIsYou_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nFanRenIsYou_2]["StartAutoWay"] = {}
rwtTask[tTask.nFanRenIsYou_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nFanRenIsYou_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_2]["StartAutoWay"]["FindWayGroupId"] = 50048
rwtTask[tTask.nFanRenIsYou_2]["StartAutoWay"]["FindWayGenId"] = 20050133

--前往赛文的住处
rwtTask[tTask.nFanRenIsYou_3] = {}
rwtTask[tTask.nFanRenIsYou_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21381]
rwtTask[tTask.nFanRenIsYou_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nFanRenIsYou_3]["PreTaskId"] = tTask.nFanRenIsYou_2
rwtTask[tTask.nFanRenIsYou_3]["NextTaskId"] = tTask.nFanRenIsYou_4
rwtTask[tTask.nFanRenIsYou_3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nFanRenIsYou_3]["DialogId"]= tDialog.nTask3
rwtTask[tTask.nFanRenIsYou_3]["ReqTrap1"] = tTrap.nTrap_SaiWen
rwtTask[tTask.nFanRenIsYou_3]["IsClickComplete"] = 0
rwtTask[tTask.nFanRenIsYou_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nFanRenIsYou_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nFanRenIsYou_3]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_SaiWen
rwtTask[tTask.nFanRenIsYou_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nFanRenIsYou_3]["StartAutoWay"] = {}
rwtTask[tTask.nFanRenIsYou_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nFanRenIsYou_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_3]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_SaiWen
rwtTask[tTask.nFanRenIsYou_3]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_SaiWen

--调查赛文
rwtTask[tTask.nFanRenIsYou_4] = {}
rwtTask[tTask.nFanRenIsYou_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21381]
rwtTask[tTask.nFanRenIsYou_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nFanRenIsYou_4]["PreTaskId"] = tTask.nFanRenIsYou_3
rwtTask[tTask.nFanRenIsYou_4]["NextTaskId"] = tTask.nFanRenIsYou_5
rwtTask[tTask.nFanRenIsYou_4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nFanRenIsYou_4]["IsClickComplete"] = 0
rwtTask[tTask.nFanRenIsYou_4]["TaskNpc"] = tSingleNpc.nNpc_SaiWen
rwtTask[tTask.nFanRenIsYou_4]["DialogId"] = tDialog.nTask4
rwtTask[tTask.nFanRenIsYou_4]["StartAutoWay"] = {}
rwtTask[tTask.nFanRenIsYou_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nFanRenIsYou_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_SaiWen
rwtTask[tTask.nFanRenIsYou_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_SaiWen

--前往斯拜的住处
rwtTask[tTask.nFanRenIsYou_5] = {}
rwtTask[tTask.nFanRenIsYou_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21381]
rwtTask[tTask.nFanRenIsYou_5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nFanRenIsYou_5]["PreTaskId"] = tTask.nFanRenIsYou_4
rwtTask[tTask.nFanRenIsYou_5]["NextTaskId"] = tTask.nFanRenIsYou_6
rwtTask[tTask.nFanRenIsYou_5]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nFanRenIsYou_5]["DialogId"]= tDialog.nTask5
rwtTask[tTask.nFanRenIsYou_5]["ReqTrap1"] = tTrap.nTrap_BaiSi
rwtTask[tTask.nFanRenIsYou_5]["IsClickComplete"] = 0
rwtTask[tTask.nFanRenIsYou_5]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nFanRenIsYou_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nFanRenIsYou_5]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_BaiSi
rwtTask[tTask.nFanRenIsYou_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nFanRenIsYou_5]["StartAutoWay"] = {}
rwtTask[tTask.nFanRenIsYou_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nFanRenIsYou_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_5]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_BaiSi
rwtTask[tTask.nFanRenIsYou_5]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_BaiSi

--调查斯拜
rwtTask[tTask.nFanRenIsYou_6] = {}
rwtTask[tTask.nFanRenIsYou_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21381]
rwtTask[tTask.nFanRenIsYou_6]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nFanRenIsYou_6]["PreTaskId"] = tTask.nFanRenIsYou_5
rwtTask[tTask.nFanRenIsYou_6]["NextTaskId"] = tTask.nFanRenIsYou_7
rwtTask[tTask.nFanRenIsYou_6]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nFanRenIsYou_6]["IsClickComplete"] = 0
rwtTask[tTask.nFanRenIsYou_6]["TaskNpc"] = tSingleNpc.nNpc_BaiSi
rwtTask[tTask.nFanRenIsYou_6]["DialogId"] = tDialog.nTask6
rwtTask[tTask.nFanRenIsYou_6]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nFanRenIsYou_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nFanRenIsYou_6]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_BaiSi
rwtTask[tTask.nFanRenIsYou_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nFanRenIsYou_6]["StartAutoWay"] = {}
rwtTask[tTask.nFanRenIsYou_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nFanRenIsYou_6]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_6]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_BaiSi
rwtTask[tTask.nFanRenIsYou_6]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_BaiSi

--讨论案情
rwtTask[tTask.nFanRenIsYou_7] = {}
rwtTask[tTask.nFanRenIsYou_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21381]
rwtTask[tTask.nFanRenIsYou_7]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nFanRenIsYou_7]["PreTaskId"] = tTask.nFanRenIsYou_6
rwtTask[tTask.nFanRenIsYou_7]["NextTaskId"] = tTask.nFanRenIsYou_8
rwtTask[tTask.nFanRenIsYou_7]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nFanRenIsYou_7]["DialogId"]= tDialog.nTask7
rwtTask[tTask.nFanRenIsYou_7]["ReqTrap1"] = tTrap.nTrap_AnQing
rwtTask[tTask.nFanRenIsYou_7]["IsClickComplete"] = 0
rwtTask[tTask.nFanRenIsYou_7]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nFanRenIsYou_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nFanRenIsYou_7]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_AnQing
rwtTask[tTask.nFanRenIsYou_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nFanRenIsYou_7]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nFanRenIsYou_7]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_BaiSi
rwtTask[tTask.nFanRenIsYou_7]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nFanRenIsYou_7]["StartAutoWay"] = {}
rwtTask[tTask.nFanRenIsYou_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nFanRenIsYou_7]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_7]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_AnQing
rwtTask[tTask.nFanRenIsYou_7]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_AnQing

--真凶浮出水面
rwtTask[tTask.nFanRenIsYou_8] = {}
rwtTask[tTask.nFanRenIsYou_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21381]
rwtTask[tTask.nFanRenIsYou_8]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nFanRenIsYou_8]["PreTaskId"] = tTask.nFanRenIsYou_7
rwtTask[tTask.nFanRenIsYou_8]["NextTaskId"] = tTask.nFanRenIsYou_9
rwtTask[tTask.nFanRenIsYou_8]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tTask.nFanRenIsYou_8]["DialogId"]= tDialog.nTask8
rwtTask[tTask.nFanRenIsYou_8]["DialogId"]= 11673
rwtTask[tTask.nFanRenIsYou_8]["ReqTrap1"] = tTrap.nTrap_XiongShou
rwtTask[tTask.nFanRenIsYou_8]["IsClickComplete"] = 0
rwtTask[tTask.nFanRenIsYou_8]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nFanRenIsYou_8]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nFanRenIsYou_8]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_XiongShou
rwtTask[tTask.nFanRenIsYou_8]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nFanRenIsYou_8]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nFanRenIsYou_8]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_BaiSi
rwtTask[tTask.nFanRenIsYou_8]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nFanRenIsYou_8]["StartAutoWay"] = {}
rwtTask[tTask.nFanRenIsYou_8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nFanRenIsYou_8]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_8]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_XiongShou
rwtTask[tTask.nFanRenIsYou_8]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_XiongShou

--战胜真凶
rwtTask[tTask.nFanRenIsYou_9] = {}
rwtTask[tTask.nFanRenIsYou_9]["Title"] = tLuaText[LANGUAGE_CONFIG][21381]
rwtTask[tTask.nFanRenIsYou_9]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nFanRenIsYou_9]["PreTaskId"] = tTask.nFanRenIsYou_8
rwtTask[tTask.nFanRenIsYou_9]["NextTaskId"] = tTask.nFanRenIsYou_10
rwtTask[tTask.nFanRenIsYou_9]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nFanRenIsYou_9]["IsClickComplete"] = 0
rwtTask[tTask.nFanRenIsYou_9]["KillMonsterGroup1"] = tMonster.nMonsterGroup_LuNi
rwtTask[tTask.nFanRenIsYou_9]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_LuNi
rwtTask[tTask.nFanRenIsYou_9]["ReqTrap1"] = tTrap.nTrap_MonsterLuNi
rwtTask[tTask.nFanRenIsYou_9]["DialogId"] = tDialog.nTask9
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_LuNi
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_MonsterLuNi
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_BaiSi
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_9]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nFanRenIsYou_9]["StartAutoWay"] = {}
rwtTask[tTask.nFanRenIsYou_9]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nFanRenIsYou_9]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_9]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_LuNi
rwtTask[tTask.nFanRenIsYou_9]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_LuNi

--犯人就是他
rwtTask[tTask.nFanRenIsYou_10] = {}
rwtTask[tTask.nFanRenIsYou_10]["Title"] = tLuaText[LANGUAGE_CONFIG][21381]
rwtTask[tTask.nFanRenIsYou_10]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nFanRenIsYou_10]["PreTaskId"] = tTask.nFanRenIsYou_9
rwtTask[tTask.nFanRenIsYou_10]["NextTaskId"] = nil
rwtTask[tTask.nFanRenIsYou_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nFanRenIsYou_10]["IsClickComplete"] = 0
rwtTask[tTask.nFanRenIsYou_10]["ReqTrap1"] = tTrap.nTrap_MonsterLuNi
rwtTask[tTask.nFanRenIsYou_10]["DialogId"] = tDialog.nTask10
rwtTask[tTask.nFanRenIsYou_10]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nFanRenIsYou_10]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nFanRenIsYou_10]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_BaiSi
rwtTask[tTask.nFanRenIsYou_10]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nFanRenIsYou_10]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nFanRenIsYou_10]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_MonsterLuNi
rwtTask[tTask.nFanRenIsYou_10]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_10]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nFanRenIsYou_10]["StartAutoWay"] = {}
rwtTask[tTask.nFanRenIsYou_10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nFanRenIsYou_10]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nFanRenIsYou_10]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nTrap_MonsterLuNi
rwtTask[tTask.nFanRenIsYou_10]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nTrap_GenId_MonsterLuNi
rwtTask[tTask.nFanRenIsYou_10]["Awards"] = {}
rwtTask[tTask.nFanRenIsYou_10]["Awards"]["Events"] = {}
rwtTask[tTask.nFanRenIsYou_10]["Awards"]["Events"][1] = {}
rwtTask[tTask.nFanRenIsYou_10]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nFanRenIsYou_10]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nFanRenIsYou_10]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000219
rwtTask[tTask.nFanRenIsYou_10]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nFanRenIsYou_10]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nFanRenIsYou_10
