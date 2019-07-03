--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion

--地图ID
local nMapId = 2004
local nMapId_WangGong = 2006
local nMapId_ZlLM = 1001
--任务ID   50317  50336   
local tTask = {}
tTask.nTianKongCheng1   = 50317--前往执行巡查工作
tTask.nTianKongCheng1_1 = 50318--动画1
tTask.nTianKongCheng1_2 = 50319--前往受伤卫兵处
tTask.nTianKongCheng1_3 = 50320--告知纳雅卫队长情况
tTask.nTianKongCheng1_4 = 50321--查看纳雅秘箱情况
tTask.nTianKongCheng1_5 = 50322--前往下个秘箱处
tTask.nTianKongCheng1_8 = 50337--前往下个秘箱处 新增对话任务
tTask.nTianKongCheng1_6 = 50323--回报纳雅卫队长
tTask.nTianKongCheng1_7 = 50324--返回联盟交接任务


tTask.nTianKongCheng2_1 = 50325--动画2
tTask.nTianKongCheng2_2 = 50326--前往查看情况
tTask.nTianKongCheng2_3 = 50327--战胜纳雅卫兵
tTask.nTianKongCheng2_13 = 50338--新增对话任务
tTask.nTianKongCheng2_4 = 50328--前往掠夺者处
tTask.nTianKongCheng2_5 = 50329--与卫兵队长解释
tTask.nTianKongCheng2_6 = 50330--与塔雷娅对话
tTask.nTianKongCheng2_7 = 50331--返回联盟交接任务
tTask.nTianKongCheng2_8 = 50332--战胜偷窃的掠夺者
tTask.nTianKongCheng2_9 = 50333--与塔雷娅对话
tTask.nTianKongCheng2_10= 50334 --前往卫兵队长处
tTask.nTianKongCheng2_11= 50335 --将能源核心归还女王
tTask.nTianKongCheng2_12= 50336 --返回联盟交接任务


--对话ID
local tDialog = {}
tDialog.nTask1 = 12272
tDialog.nTask1_1 = 12263            --动画
tDialog.nTask1_2 = 12277
tDialog.nTask1_3 = 12278
tDialog.nTask1_4 = 12279
tDialog.nTask1_5 = 12280
tDialog.nTask1_6 = 12282
tDialog.nTask1_7 = 12283
tDialog.nTask2_1 = 12264            --动画
tDialog.nTask2_2 = 12285
tDialog.nTask2_3 = 12286
tDialog.nTask2_4 = 12288
tDialog.nTask2_5 = 12289
tDialog.nTask2_6 = 12291
tDialog.nTask2_7 = 12292
tDialog.nTask2_8 = 12294
tDialog.nTask2_9 = 12296
tDialog.nTask2_10 = 12297
tDialog.nTask2_11 = 12299
tDialog.nTask2_12 = 12300

--GenId 20040090  20040109 
--陷阱ID 30624  30631 
local tTrap = {}

tTrap.nTrap_Task1 = 30624
tTrap.nTrap_GenId_Task1 = 20040090
rwtNpcGroup[tTrap.nTrap_Task1] = rwtNpcGroup[tTrap.nTrap_Task1] or {} 
rwtNpcGroup[tTrap.nTrap_Task1]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task1_2 = 30625
tTrap.nTrap_GenId_Task1_2 = 20040091
rwtNpcGroup[tTrap.nTrap_Task1_2] = rwtNpcGroup[tTrap.nTrap_Task1_2] or {} 
rwtNpcGroup[tTrap.nTrap_Task1_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task1_5 = 30629
tTrap.nTrap_GenId_Task1_5 = 20040107
rwtNpcGroup[tTrap.nTrap_Task1_5] = rwtNpcGroup[tTrap.nTrap_Task1_5] or {} 
rwtNpcGroup[tTrap.nTrap_Task1_5]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task2_2 = 30626
tTrap.nTrap_GenId_Task2_2 = 20040092
rwtNpcGroup[tTrap.nTrap_Task2_2] = rwtNpcGroup[tTrap.nTrap_Task2_2] or {} 
rwtNpcGroup[tTrap.nTrap_Task2_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task2_4 = 30630
tTrap.nTrap_GenId_Task2_4 = 20040109
rwtNpcGroup[tTrap.nTrap_Task2_4] = rwtNpcGroup[tTrap.nTrap_Task2_4] or {} 
rwtNpcGroup[tTrap.nTrap_Task2_4]["Type"] = CONST_NPCGROUP_TYPE.Trap


tTrap.nTrap_Task2_5 = 30627
tTrap.nTrap_GenId_Task2_5 = 20040093
rwtNpcGroup[tTrap.nTrap_Task2_5] = rwtNpcGroup[tTrap.nTrap_Task2_5] or {} 
rwtNpcGroup[tTrap.nTrap_Task2_5]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task2_10 = 30628
tTrap.nTrap_GenId_Task2_10 = 20040094
rwtNpcGroup[tTrap.nTrap_Task2_10] = rwtNpcGroup[tTrap.nTrap_Task2_10] or {} 
rwtNpcGroup[tTrap.nTrap_Task2_10]["Type"] = CONST_NPCGROUP_TYPE.Trap

--采集物ID 60359  60360 
local tCollect= {}

tCollect.nCollect_Box_1 = 60359
tCollect.nCollect_GenId_Box_1 = 20040095
rwtNpcGroup[tCollect.nCollect_Box_1] = rwtNpcGroup[tCollect.nCollect_Box_1] or {} 
rwtNpcGroup[tCollect.nCollect_Box_1]["Type"] = CONST_NPCGROUP_TYPE.Collect

tCollect.nCollect_Box_2 = 60360
tCollect.nCollect_GenId_Box_2 = 20040096
rwtNpcGroup[tCollect.nCollect_Box_2] = rwtNpcGroup[tCollect.nCollect_Box_2] or {} 
rwtNpcGroup[tCollect.nCollect_Box_2]["Type"] = CONST_NPCGROUP_TYPE.Collect

--宝箱ID
local tTreasureBox= {}

--怪物ID  9000444  9000450   怪物组 900464  900468 
local tMonster = {}

tMonster.nMonster_JBoShi = 9000444
tMonster.nMonsterGroup_JBoShi = 900464
tMonster.nMonsterGroup_GenId_JBoShi = 20040097

tMonster.nMonster_NaYaWeiBing = 9000445
tMonster.nMonsterGroup_NaYaWeiBing = 900465
tMonster.nMonsterGroup_GenId_NaYaWeiBing = 20040098

tMonster.nMonster_WeiBingDuiZhang = 9000446
tMonster.nMonsterGroup_WeiBingDuiZhang = 900466
tMonster.nMonsterGroup_GenId_WeiBingDuiZhang = 20040099

tMonster.nMonster_LueDuoZhe = 9000447
tMonster.nMonsterGroup_LueDuoZhe = 900467
tMonster.nMonsterGroup_GenId_LueDuoZhe = 20040100

tMonster.nMonster_LueDuoZhe_2 = 9000448
tMonster.nMonsterGroup_LueDuoZhe_2 = 900468
tMonster.nMonsterGroup_GenId_LueDuoZhe_2 = 20040101

--NPCID  3738  3742    npc组 20719  20726 
local tSingleNpc = {}

tSingleNpc.nNpc_ShouShangWeiBing = 3408
tSingleNpc.nNpcGroup_ShouShangWeiBing = 20719
tSingleNpc.nNpcGroup_GenId_ShouShangWeiBing = 20040102
rwtNpc[tSingleNpc.nNpc_ShouShangWeiBing] = rwtNpc[tSingleNpc.nNpc_ShouShangWeiBing] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_ShouShangWeiBing] = rwtNpcGroup[tSingleNpc.nNpcGroup_ShouShangWeiBing] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_ShouShangWeiBing]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_ShouShangWeiBing]["NpcId"] = tSingleNpc.nNpc_ShouShangWeiBing

tSingleNpc.nNpc_NaYaWeiDuiZhang = 3659
tSingleNpc.nNpcGroup_NaYaWeiDuiZhang = 20720
tSingleNpc.nNpcGroup_GenId_NaYaWeiDuiZhang = 20040103
rwtNpc[tSingleNpc.nNpc_NaYaWeiDuiZhang] = rwtNpc[tSingleNpc.nNpc_NaYaWeiDuiZhang] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiDuiZhang] = rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiDuiZhang] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiDuiZhang]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiDuiZhang]["NpcId"] = tSingleNpc.nNpc_NaYaWeiDuiZhang

tSingleNpc.nNpc_BiDuoMao = 3080
tSingleNpc.nNpcGroup_BiDuoMao = 20115
tSingleNpc.nNpcGroup_GenId_BiDuoMao = 2001658

--tSingleNpc.nNpc_NaYaWeiBing_2 = nil
tSingleNpc.nNpcGroup_NaYaWeiBing_2 = 20721
tSingleNpc.nNpcGroup_GenId_NaYaWeiBing_2 = 20040104
--rwtNpc[tSingleNpc.nNpc_NaYaWeiBing_2] = rwtNpc[tSingleNpc.nNpc_NaYaWeiBing_2] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiBing_2] = rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiBing_2] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiBing_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiBing_2]["NpcId"] = tSingleNpc.nNpc_NaYaWeiBing_2

--tSingleNpc.nNpc_NaYaWeiBing_3 = nil
tSingleNpc.nNpcGroup_NaYaWeiBing_3 = 20722
tSingleNpc.nNpcGroup_GenId_NaYaWeiBing_3 = 20040105
--rwtNpc[tSingleNpc.nNpc_NaYaWeiBing_3] = rwtNpc[tSingleNpc.nNpc_NaYaWeiBing_3] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiBing_3] = rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiBing_3] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiBing_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiBing_3]["NpcId"] = tSingleNpc.nNpc_NaYaWeiBing_3

tSingleNpc.nNpc_LueDuoZhe = 3740
tSingleNpc.nNpcGroup_LueDuoZhe = 20723
tSingleNpc.nNpcGroup_GenId_LueDuoZhe = 20040106
rwtNpc[tSingleNpc.nNpc_LueDuoZhe] = rwtNpc[tSingleNpc.nNpc_LueDuoZhe] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_LueDuoZhe] = rwtNpcGroup[tSingleNpc.nNpcGroup_LueDuoZhe] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_LueDuoZhe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_LueDuoZhe]["NpcId"] = tSingleNpc.nNpc_LueDuoZhe

tSingleNpc.nNpc_TaLeiYa = 3398
tSingleNpc.nNpcGroup_TaLeiYa = 20420
tSingleNpc.nNpcGroup_GenId_TaLeiYa = 20040002

tSingleNpc.nNpc_NaYaWeiDuiZhang_2 = 3659
tSingleNpc.nNpcGroup_NaYaWeiDuiZhang_2 = 20724
tSingleNpc.nNpcGroup_GenId_NaYaWeiDuiZhang_2 = 20040108
rwtNpc[tSingleNpc.nNpc_NaYaWeiDuiZhang_2] = rwtNpc[tSingleNpc.nNpc_NaYaWeiDuiZhang_2] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiDuiZhang_2] = rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiDuiZhang_2] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiDuiZhang_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_NaYaWeiDuiZhang_2]["NpcId"] = tSingleNpc.nNpc_NaYaWeiDuiZhang_2


--前往执行巡查工作
rwtTask[tTask.nTianKongCheng1] = {}
rwtTask[tTask.nTianKongCheng1]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng1]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tTask.nTianKongCheng1]["NextTaskId"] = tTask.nTianKongCheng1_1
rwtTask[tTask.nTianKongCheng1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[tTask.nTianKongCheng1]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng1]["AcceptDialogId"] = tDialog.nTask1
rwtTask[tTask.nTianKongCheng1]["ReqTrap1"] = tTrap.nTrap_Task1
rwtTask[tTask.nTianKongCheng1]["PatrolFirstTask"] = 1
rwtTask[tTask.nTianKongCheng1]["PatrolAfterTask"] ={tTask.nTianKongCheng1_1,tTask.nTianKongCheng2_1}
rwtTask[tTask.nTianKongCheng1]["PatrolTaskAreaId"] = 2005
rwtTask[tTask.nTianKongCheng1]["PatrolTaskTownId"] = 200502
rwtTask[tTask.nTianKongCheng1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng1]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task1
rwtTask[tTask.nTianKongCheng1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTianKongCheng1]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nTianKongCheng1]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task1
rwtTask[tTask.nTianKongCheng1]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task1

--动画1
rwtTask[tTask.nTianKongCheng1_1] = {}
rwtTask[tTask.nTianKongCheng1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng1_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng1_1]["NextTaskId"] = tTask.nTianKongCheng1_2
rwtTask[tTask.nTianKongCheng1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nTianKongCheng1_1]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng1_1]["ReqTrap1"] = tTrap.nTrap_Task1
rwtTask[tTask.nTianKongCheng1_1]["AcceptDialogId"] = tDialog.nTask1_1
rwtTask[tTask.nTianKongCheng1_1]["DialogId"] = tDialog.nTask1_1
rwtTask[tTask.nTianKongCheng1_1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng1_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng1_1]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task1
rwtTask[tTask.nTianKongCheng1_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nTianKongCheng1_1]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nTianKongCheng1_1]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouShangWeiBing
--rwtTask[tTask.nTianKongCheng1_1]["DynaNpcGroupGen"][2]["MapId"] = nMapId
--rwtTask[tTask.nTianKongCheng1_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tTask.nTianKongCheng1_1]["StartAutoWay"] = {}
--rwtTask[tTask.nTianKongCheng1_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nTianKongCheng1_1]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tTask.nTianKongCheng1_1]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task1
--rwtTask[tTask.nTianKongCheng1_1]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task1

--前往受伤卫兵处
rwtTask[tTask.nTianKongCheng1_2] = {}
rwtTask[tTask.nTianKongCheng1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng1_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng1_2]["NextTaskId"] = tTask.nTianKongCheng1_3
rwtTask[tTask.nTianKongCheng1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nTianKongCheng1_2]["IsClickComplete"] = 0
--rwtTask[tTask.nTianKongCheng1_2]["TaskNpc"] = tSingleNpc.nNpc_ShouShangWeiBing
rwtTask[tTask.nTianKongCheng1_2]["ReqTrap1"] = tTrap.nTrap_Task1_2
rwtTask[tTask.nTianKongCheng1_2]["DialogId"] = tDialog.nTask1_2
rwtTask[tTask.nTianKongCheng1_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng1_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng1_2]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouShangWeiBing
rwtTask[tTask.nTianKongCheng1_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTianKongCheng1_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng1_2]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task1_2
rwtTask[tTask.nTianKongCheng1_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng1_2]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng1_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng1_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ShouShangWeiBing
rwtTask[tTask.nTianKongCheng1_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ShouShangWeiBing

--告知纳雅卫队长情况
rwtTask[tTask.nTianKongCheng1_3] = {}
rwtTask[tTask.nTianKongCheng1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng1_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng1_3]["NextTaskId"] = tTask.nTianKongCheng1_4
rwtTask[tTask.nTianKongCheng1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTianKongCheng1_3]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng1_3]["TaskNpc"] = tSingleNpc.nNpc_NaYaWeiDuiZhang
rwtTask[tTask.nTianKongCheng1_3]["DialogId"] = tDialog.nTask1_3
rwtTask[tTask.nTianKongCheng1_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng1_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng1_3]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiDuiZhang
rwtTask[tTask.nTianKongCheng1_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng1_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng1_3]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouShangWeiBing
rwtTask[tTask.nTianKongCheng1_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng1_3]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng1_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng1_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_NaYaWeiDuiZhang
rwtTask[tTask.nTianKongCheng1_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiDuiZhang

--查看纳雅秘箱情况
rwtTask[tTask.nTianKongCheng1_4] = {}
rwtTask[tTask.nTianKongCheng1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng1_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng1_4]["NextTaskId"] = tTask.nTianKongCheng1_5
rwtTask[tTask.nTianKongCheng1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tTask.nTianKongCheng1_4]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng1_4]["ReqCollectId1"] = tCollect.nCollect_Box_1
rwtTask[tTask.nTianKongCheng1_4]["ReqCollectOnceNum"] = 1
rwtTask[tTask.nTianKongCheng1_4]["ReqCollectCount1"] = 1
rwtTask[tTask.nTianKongCheng1_4]["DialogId"] = tDialog.nTask1_4
rwtTask[tTask.nTianKongCheng1_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng1_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng1_4]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_Box_1
rwtTask[tTask.nTianKongCheng1_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nTianKongCheng1_4]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nTianKongCheng1_4]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiDuiZhang
--rwtTask[tTask.nTianKongCheng1_4]["DynaNpcGroupGen"][2]["MapId"] = nMapId
--rwtTask[tTask.nTianKongCheng1_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng1_4]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng1_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng1_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_4]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_Box_1
rwtTask[tTask.nTianKongCheng1_4]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_Box_1

--前往下个秘箱处  
rwtTask[tTask.nTianKongCheng1_5] = {}
rwtTask[tTask.nTianKongCheng1_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng1_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng1_5]["NextTaskId"] = tTask.nTianKongCheng1_8
rwtTask[tTask.nTianKongCheng1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTianKongCheng1_5]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng1_5]["KillMonsterGroup1"] = tMonster.nMonsterGroup_JBoShi
rwtTask[tTask.nTianKongCheng1_5]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_JBoShi
rwtTask[tTask.nTianKongCheng1_5]["ReqTrap1"] = tTrap.nTrap_Task1_5
rwtTask[tTask.nTianKongCheng1_5]["DialogId"] = tDialog.nTask1_5
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_JBoShi
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"][2]["GenId"] = tCollect.nCollect_GenId_Box_2
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"][3]["GenId"] = tTrap.nTrap_GenId_Task1_5
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_5]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng1_5]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng1_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nTianKongCheng1_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_5]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_JBoShi
rwtTask[tTask.nTianKongCheng1_5]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_JBoShi

--前往下个秘箱处  新增对白任务
rwtTask[tTask.nTianKongCheng1_8] = {}
rwtTask[tTask.nTianKongCheng1_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng1_8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng1_8]["NextTaskId"] = tTask.nTianKongCheng1_6
rwtTask[tTask.nTianKongCheng1_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nTianKongCheng1_8]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng1_8]["ReqTrap1"] = tTrap.nTrap_Task1_5
rwtTask[tTask.nTianKongCheng1_8]["AutoTaskDialog"] = 12281
rwtTask[tTask.nTianKongCheng1_8]["DialogId"] = 12281
rwtTask[tTask.nTianKongCheng1_8]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng1_8]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng1_8]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_JBoShi
rwtTask[tTask.nTianKongCheng1_8]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng1_8]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng1_8]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task1_5
rwtTask[tTask.nTianKongCheng1_8]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete


--回报纳雅卫队长
rwtTask[tTask.nTianKongCheng1_6] = {}
rwtTask[tTask.nTianKongCheng1_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng1_6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng1_6]["NextTaskId"] = tTask.nTianKongCheng1_7
rwtTask[tTask.nTianKongCheng1_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTianKongCheng1_6]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng1_6]["TaskNpc"] = tSingleNpc.nNpc_NaYaWeiDuiZhang
rwtTask[tTask.nTianKongCheng1_6]["DialogId"] = tDialog.nTask1_6
rwtTask[tTask.nTianKongCheng1_6]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng1_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng1_6]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiDuiZhang
rwtTask[tTask.nTianKongCheng1_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng1_6]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng1_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng1_6]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nTianKongCheng1_6]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_NaYaWeiDuiZhang
rwtTask[tTask.nTianKongCheng1_6]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiDuiZhang

--返回联盟交接任务
rwtTask[tTask.nTianKongCheng1_7] = {}
rwtTask[tTask.nTianKongCheng1_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng1_7]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tTask.nTianKongCheng1_7]["NextTaskId"] = tTask.nTianKongCheng2_1
rwtTask[tTask.nTianKongCheng1_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTianKongCheng1_7]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng1_7]["TaskNpc"] = tSingleNpc.nNpc_BiDuoMao
rwtTask[tTask.nTianKongCheng1_7]["DialogId"] = tDialog.nTask1_7
rwtTask[tTask.nTianKongCheng1_7]["PatrolLastTask"] = 1
--rwtTask[tTask.nTianKongCheng1_7]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nTianKongCheng1_7]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nTianKongCheng1_7]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiDuiZhang
--rwtTask[tTask.nTianKongCheng1_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[tTask.nTianKongCheng1_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng1_7]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng1_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng1_7]["StartAutoWay"]["FindWayMapId"] = nMapId_ZlLM
rwtTask[tTask.nTianKongCheng1_7]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_BiDuoMao
rwtTask[tTask.nTianKongCheng1_7]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_BiDuoMao

--动画2
rwtTask[tTask.nTianKongCheng2_1] = {}
rwtTask[tTask.nTianKongCheng2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng2_1]["NextTaskId"] = tTask.nTianKongCheng2_2
rwtTask[tTask.nTianKongCheng2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nTianKongCheng2_1]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_1]["ReqTrap1"] = tTrap.nTrap_Task1
rwtTask[tTask.nTianKongCheng2_1]["AcceptDialogId"] = tDialog.nTask2_1
rwtTask[tTask.nTianKongCheng2_1]["DialogId"] = tDialog.nTask2_1
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task1
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][2]["GenId"] = tMonster.nMonsterGroup_GenId_NaYaWeiBing
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiBing_2
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][4] = {}
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][4]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiBing_3
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][4]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][5] = {}
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][5]["GenId"] = tSingleNpc.nNpcGroup_GenId_LueDuoZhe
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][5]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_1]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nTianKongCheng2_1]["StartAutoWay"] = {}
--rwtTask[tTask.nTianKongCheng2_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nTianKongCheng2_1]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tTask.nTianKongCheng2_1]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task1
--rwtTask[tTask.nTianKongCheng2_1]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task1

--前往查看情况
rwtTask[tTask.nTianKongCheng2_2] = {}
rwtTask[tTask.nTianKongCheng2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_2]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tTask.nTianKongCheng2_2]["NextTaskId"] = tTask.nTianKongCheng2_3
rwtTask[tTask.nTianKongCheng2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tTask.nTianKongCheng2_2]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_2]["OptionTask1"] = tTask.nTianKongCheng2_3
rwtTask[tTask.nTianKongCheng2_2]["OptionTask2"] = tTask.nTianKongCheng2_8
rwtTask[tTask.nTianKongCheng2_2]["ReqTrap1"] = tTrap.nTrap_Task2_2
rwtTask[tTask.nTianKongCheng2_2]["DialogId"] = tDialog.nTask2_2
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task2_2
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][2]["GenId"] = tMonster.nMonsterGroup_GenId_NaYaWeiBing
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiBing_2
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][4] = {}
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][4]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiBing_3
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][4]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_2]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTianKongCheng2_2]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng2_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng2_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_2]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task2_2
rwtTask[tTask.nTianKongCheng2_2]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task2_2

--战胜纳雅卫兵
rwtTask[tTask.nTianKongCheng2_3] = {}
rwtTask[tTask.nTianKongCheng2_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng2_3]["NextTaskId"] = tTask.nTianKongCheng2_13
rwtTask[tTask.nTianKongCheng2_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTianKongCheng2_3]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_3]["KillMonsterGroup1"] = tMonster.nMonsterGroup_NaYaWeiBing
rwtTask[tTask.nTianKongCheng2_3]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_NaYaWeiBing
rwtTask[tTask.nTianKongCheng2_3]["ReqTrap1"] = tTrap.nTrap_Task2_2
rwtTask[tTask.nTianKongCheng2_3]["AcceptDialogId"] = tDialog.nTask2_3
rwtTask[tTask.nTianKongCheng2_3]["DialogId"] = tDialog.nTask2_3
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_NaYaWeiBing
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiBing_2
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiBing_3
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][4] = {}
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][4]["GenId"] = tTrap.nTrap_GenId_Task2_2
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][4]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_3]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nTianKongCheng2_3]["StartAutoWay"] = {}
--rwtTask[tTask.nTianKongCheng2_3]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nTianKongCheng2_3]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tTask.nTianKongCheng2_3]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task2_2
--rwtTask[tTask.nTianKongCheng2_3]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task2_2
--战胜纳雅卫兵新增对白任务
rwtTask[tTask.nTianKongCheng2_13] = {}
rwtTask[tTask.nTianKongCheng2_13]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_13]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng2_13]["NextTaskId"] = tTask.nTianKongCheng2_4
rwtTask[tTask.nTianKongCheng2_13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nTianKongCheng2_13]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_13]["KillMonsterGroup1"] = tMonster.nMonsterGroup_NaYaWeiBing
rwtTask[tTask.nTianKongCheng2_13]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_NaYaWeiBing
rwtTask[tTask.nTianKongCheng2_13]["ReqTrap1"] = tTrap.nTrap_Task2_2
rwtTask[tTask.nTianKongCheng2_13]["AutoTaskDialog"] = 12287
rwtTask[tTask.nTianKongCheng2_13]["DialogId"] = 12287
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_NaYaWeiBing
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiBing_2
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiBing_3
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][4] = {}
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][4]["GenId"] = tTrap.nTrap_GenId_Task2_2
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][4]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_13]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--前往掠夺者处
rwtTask[tTask.nTianKongCheng2_4] = {}
rwtTask[tTask.nTianKongCheng2_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng2_4]["NextTaskId"] = tTask.nTianKongCheng2_5
rwtTask[tTask.nTianKongCheng2_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nTianKongCheng2_4]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_4]["ReqTrap1"] = tTrap.nTrap_Task2_4
--rwtTask[tTask.nTianKongCheng2_4]["TaskNpc"] = tSingleNpc.nNpc_LueDuoZhe
rwtTask[tTask.nTianKongCheng2_4]["DialogId"] = tDialog.nTask2_4
rwtTask[tTask.nTianKongCheng2_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng2_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng2_4]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_LueDuoZhe
rwtTask[tTask.nTianKongCheng2_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng2_4]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task2_4
rwtTask[tTask.nTianKongCheng2_4]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_4]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng2_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng2_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LueDuoZhe
rwtTask[tTask.nTianKongCheng2_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LueDuoZhe

--与卫兵队长解释
rwtTask[tTask.nTianKongCheng2_5] = {}
rwtTask[tTask.nTianKongCheng2_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng2_5]["NextTaskId"] = tTask.nTianKongCheng2_6
rwtTask[tTask.nTianKongCheng2_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTianKongCheng2_5]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_5]["KillMonsterGroup1"] = tMonster.nMonsterGroup_WeiBingDuiZhang
rwtTask[tTask.nTianKongCheng2_5]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_WeiBingDuiZhang
rwtTask[tTask.nTianKongCheng2_5]["ReqTrap1"] = tTrap.nTrap_Task2_5
rwtTask[tTask.nTianKongCheng2_5]["DialogId"] = tDialog.nTask2_5
rwtTask[tTask.nTianKongCheng2_5]["AcceptDialogId"] = 12362
rwtTask[tTask.nTianKongCheng2_5]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng2_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng2_5]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_WeiBingDuiZhang
rwtTask[tTask.nTianKongCheng2_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_5]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng2_5]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task2_5
rwtTask[tTask.nTianKongCheng2_5]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_5]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng2_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nTianKongCheng2_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_5]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_WeiBingDuiZhang
rwtTask[tTask.nTianKongCheng2_5]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_WeiBingDuiZhang

--与塔雷娅对话
rwtTask[tTask.nTianKongCheng2_6] = {}
rwtTask[tTask.nTianKongCheng2_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng2_6]["NextTaskId"] = tTask.nTianKongCheng2_7
rwtTask[tTask.nTianKongCheng2_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTianKongCheng2_6]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_6]["TaskNpc"] = tSingleNpc.nNpc_TaLeiYa
rwtTask[tTask.nTianKongCheng2_6]["AcceptDialogId"] = 12290
rwtTask[tTask.nTianKongCheng2_6]["DialogId"] = tDialog.nTask2_6
rwtTask[tTask.nTianKongCheng2_6]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng2_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng2_6]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_WeiBingDuiZhang
rwtTask[tTask.nTianKongCheng2_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_6]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng2_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng2_6]["StartAutoWay"]["FindWayMapId"] = nMapId_WangGong
rwtTask[tTask.nTianKongCheng2_6]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_TaLeiYa
rwtTask[tTask.nTianKongCheng2_6]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_TaLeiYa

--返回联盟交接任务
rwtTask[tTask.nTianKongCheng2_7] = {}
rwtTask[tTask.nTianKongCheng2_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_7]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tTask.nTianKongCheng2_7]["NextTaskId"] = tTask.nTianKongCheng2_8
rwtTask[tTask.nTianKongCheng2_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTianKongCheng2_7]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_7]["TaskNpc"] = tSingleNpc.nNpc_BiDuoMao
rwtTask[tTask.nTianKongCheng2_7]["DialogId"] = tDialog.nTask2_7
rwtTask[tTask.nTianKongCheng2_7]["PatrolLastTask"] = 1
rwtTask[tTask.nTianKongCheng2_7]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng2_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng2_7]["StartAutoWay"]["FindWayMapId"] = nMapId_ZlLM
rwtTask[tTask.nTianKongCheng2_7]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_BiDuoMao
rwtTask[tTask.nTianKongCheng2_7]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_BiDuoMao

--战胜偷窃的掠夺者
rwtTask[tTask.nTianKongCheng2_8] = {}
rwtTask[tTask.nTianKongCheng2_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng2_8]["NextTaskId"] = tTask.nTianKongCheng2_9
rwtTask[tTask.nTianKongCheng2_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTianKongCheng2_8]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_8]["KillMonsterGroup1"] = tMonster.nMonsterGroup_LueDuoZhe
rwtTask[tTask.nTianKongCheng2_8]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_LueDuoZhe
--rwtTask[tTask.nTianKongCheng2_8]["ReqTrap1"] = tTrap.nTrap_
--rwtTask[tTask.nTianKongCheng2_8]["TaskNpc"] = tSingleNpc.nNpc_LueDuoZhe
rwtTask[tTask.nTianKongCheng2_8]["ReqTrap1"] = tTrap.nTrap_Task2_4
rwtTask[tTask.nTianKongCheng2_8]["AcceptDialogId"] = 12293
rwtTask[tTask.nTianKongCheng2_8]["DialogId"] = tDialog.nTask2_8
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_LueDuoZhe
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_LueDuoZhe
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][3]["GenId"] = tMonster.nMonsterGroup_GenId_NaYaWeiBing
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][4] = {}
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][4]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiBing_2
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][4]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][5] = {}
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][5]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiBing_3
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][5]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][6] = {}
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][6]["GenId"] = tTrap.nTrap_GenId_Task2_4
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][6]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_8]["DynaNpcGroupGen"][6]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_8]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng2_8]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nTianKongCheng2_8]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_8]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_LueDuoZhe
rwtTask[tTask.nTianKongCheng2_8]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_LueDuoZhe

--与塔雷娅对话
rwtTask[tTask.nTianKongCheng2_9] = {}
rwtTask[tTask.nTianKongCheng2_9]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_9]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng2_9]["NextTaskId"] = tTask.nTianKongCheng2_10
rwtTask[tTask.nTianKongCheng2_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTianKongCheng2_9]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_9]["TaskNpc"] = tSingleNpc.nNpc_TaLeiYa
rwtTask[tTask.nTianKongCheng2_9]["AcceptDialogId"] = 12295
rwtTask[tTask.nTianKongCheng2_9]["DialogId"] = tDialog.nTask2_9
rwtTask[tTask.nTianKongCheng2_9]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng2_9]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng2_9]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_NaYaWeiDuiZhang_2
rwtTask[tTask.nTianKongCheng2_9]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_9]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng2_9]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_LueDuoZhe
rwtTask[tTask.nTianKongCheng2_9]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_9]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_9]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng2_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng2_9]["StartAutoWay"]["FindWayMapId"] = nMapId_WangGong
rwtTask[tTask.nTianKongCheng2_9]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_TaLeiYa
rwtTask[tTask.nTianKongCheng2_9]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_TaLeiYa

--前往卫兵队长处
rwtTask[tTask.nTianKongCheng2_10] = {}
rwtTask[tTask.nTianKongCheng2_10]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_10]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng2_10]["NextTaskId"] = tTask.nTianKongCheng2_11
rwtTask[tTask.nTianKongCheng2_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTianKongCheng2_10]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_10]["KillMonsterGroup1"] = tMonster.nMonsterGroup_LueDuoZhe_2
rwtTask[tTask.nTianKongCheng2_10]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_LueDuoZhe_2
rwtTask[tTask.nTianKongCheng2_10]["ReqTrap1"] = tTrap.nTrap_Task2_10
rwtTask[tTask.nTianKongCheng2_10]["DialogId"] = tDialog.nTask2_10
rwtTask[tTask.nTianKongCheng2_10]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTianKongCheng2_10]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTianKongCheng2_10]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_LueDuoZhe_2
rwtTask[tTask.nTianKongCheng2_10]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_10]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTianKongCheng2_10]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task2_10
rwtTask[tTask.nTianKongCheng2_10]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_10]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTianKongCheng2_10]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng2_10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng2_10]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nTianKongCheng2_10]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task2_10
rwtTask[tTask.nTianKongCheng2_10]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task2_10

--将能源核心归还女王
rwtTask[tTask.nTianKongCheng2_11] = {}
rwtTask[tTask.nTianKongCheng2_11]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_11]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nTianKongCheng2_11]["NextTaskId"] = tTask.nTianKongCheng2_12
rwtTask[tTask.nTianKongCheng2_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTianKongCheng2_11]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_11]["TaskNpc"] = tSingleNpc.nNpc_TaLeiYa
rwtTask[tTask.nTianKongCheng2_11]["AcceptDialogId"] = 12298
rwtTask[tTask.nTianKongCheng2_11]["DialogId"] = tDialog.nTask2_11
rwtTask[tTask.nTianKongCheng2_11]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng2_11]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng2_11]["StartAutoWay"]["FindWayMapId"] = nMapId_WangGong
rwtTask[tTask.nTianKongCheng2_11]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_TaLeiYa
rwtTask[tTask.nTianKongCheng2_11]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_TaLeiYa

--返回联盟交接任务
rwtTask[tTask.nTianKongCheng2_12] = {}
rwtTask[tTask.nTianKongCheng2_12]["Title"] = tLuaText[LANGUAGE_CONFIG][21619]
rwtTask[tTask.nTianKongCheng2_12]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tTask.nTianKongCheng2_12]["NextTaskId"] = End
rwtTask[tTask.nTianKongCheng2_12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTianKongCheng2_12]["IsClickComplete"] = 0
rwtTask[tTask.nTianKongCheng2_12]["TaskNpc"] = tSingleNpc.nNpc_BiDuoMao
rwtTask[tTask.nTianKongCheng2_12]["PatrolLastTask"] = 1
rwtTask[tTask.nTianKongCheng2_12]["DialogId"] = tDialog.nTask2_12
rwtTask[tTask.nTianKongCheng2_12]["StartAutoWay"] = {}
rwtTask[tTask.nTianKongCheng2_12]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTianKongCheng2_12]["StartAutoWay"]["FindWayMapId"] = nMapId_ZlLM
rwtTask[tTask.nTianKongCheng2_12]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_BiDuoMao
rwtTask[tTask.nTianKongCheng2_12]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_BiDuoMao
