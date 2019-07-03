--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion
--迷雾森林佣兵任务id  20572  20606 
--迷雾森林佣兵委托任务标题id  21122  21128 

--迷雾森林佣兵任务  小镇id
local nDiTuID = 2003
local nMercenaryTownId = 200305

local tMiWuSenLinMercenaryTask = {}

--迷雾森林的情报
tMiWuSenLinMercenaryTask.TaskId1_1 = 20572
tMiWuSenLinMercenaryTask.TaskId1_2 = 20573
tMiWuSenLinMercenaryTask.TaskId1_3 = 20574
tMiWuSenLinMercenaryTask.TaskId1_4 = 20575
tMiWuSenLinMercenaryTask.TaskId1_5 = 20576
--搜救冒险者
tMiWuSenLinMercenaryTask.TaskId2_1 = 20577
tMiWuSenLinMercenaryTask.TaskId2_2 = 20578
tMiWuSenLinMercenaryTask.TaskId2_3 = 20579
tMiWuSenLinMercenaryTask.TaskId2_4 = 20580
tMiWuSenLinMercenaryTask.TaskId2_5 = 20581
--石刻谜团                              
tMiWuSenLinMercenaryTask.TaskId3_1 = 20582
tMiWuSenLinMercenaryTask.TaskId3_2 = 20583
tMiWuSenLinMercenaryTask.TaskId3_3 = 20584
tMiWuSenLinMercenaryTask.TaskId3_4 = 20585
tMiWuSenLinMercenaryTask.TaskId3_5 = 20586
--迷雾缉凶                              
tMiWuSenLinMercenaryTask.TaskId4_1 = 20587
tMiWuSenLinMercenaryTask.TaskId4_2 = 20588
tMiWuSenLinMercenaryTask.TaskId4_3 = 20589
tMiWuSenLinMercenaryTask.TaskId4_4 = 20590
tMiWuSenLinMercenaryTask.TaskId4_5 = 20591
--迷雾中的危急                          
tMiWuSenLinMercenaryTask.TaskId5_1 = 20592
tMiWuSenLinMercenaryTask.TaskId5_2 = 20593
tMiWuSenLinMercenaryTask.TaskId5_3 = 20594
tMiWuSenLinMercenaryTask.TaskId5_4 = 20595
tMiWuSenLinMercenaryTask.TaskId5_5 = 20596
--拯救冒险者                            
tMiWuSenLinMercenaryTask.TaskId6_1 = 20597
tMiWuSenLinMercenaryTask.TaskId6_2 = 20598
tMiWuSenLinMercenaryTask.TaskId6_3 = 20599
tMiWuSenLinMercenaryTask.TaskId6_4 = 20600
tMiWuSenLinMercenaryTask.TaskId6_5 = 20601
--联盟通缉令                           
tMiWuSenLinMercenaryTask.TaskId7_1 = 20602
tMiWuSenLinMercenaryTask.TaskId7_2 = 20603
tMiWuSenLinMercenaryTask.TaskId7_3 = 20604
tMiWuSenLinMercenaryTask.TaskId7_4 = 20605
tMiWuSenLinMercenaryTask.TaskId7_5 = 20606
--迷雾森林的奥秘                    
tMiWuSenLinMercenaryTask.TaskId8_1  = 20692
tMiWuSenLinMercenaryTask.TaskId8_2  = 20693
tMiWuSenLinMercenaryTask.TaskId8_3  = 20694
tMiWuSenLinMercenaryTask.TaskId8_4  = 20695
tMiWuSenLinMercenaryTask.TaskId8_5  = 20696
--迷雾夺命蜂                          
tMiWuSenLinMercenaryTask.TaskId9_1  = 20697
tMiWuSenLinMercenaryTask.TaskId9_2  = 20698
tMiWuSenLinMercenaryTask.TaskId9_3  = 20699
tMiWuSenLinMercenaryTask.TaskId9_4  = 20700
tMiWuSenLinMercenaryTask.TaskId9_5  = 20701
--隐匿的魔气                          
tMiWuSenLinMercenaryTask.TaskId10_1 = 20702
tMiWuSenLinMercenaryTask.TaskId10_2 = 20703
tMiWuSenLinMercenaryTask.TaskId10_3 = 20704
tMiWuSenLinMercenaryTask.TaskId10_4 = 20705
tMiWuSenLinMercenaryTask.TaskId10_5 = 20706

-------------NPCGroup
--蒙面狂徒      3428
--迷失鹿角兽    3429
--矮巨人指挥官  3430

--马尼奥
local nNpc_MaNiAo          = 3251
local nNpcGroup_MaNiAo     = 20294
local nNpcGroup_GenId_MaNiAo     = 2003017
--埃尔文
local nNpc_AiErWen          = 3256
local nNpcGroup_AiErWen     = 20295
local nNpcGroup_GenId_AiErWen     = 20030174
--迷路的冒险者 （搜救冒险者）
local nNpc_MaoXianZhe = 3427
local nNpcGroup_MaoXianZhe = 20433
local nNpcGroup_GenId_MaoXianZhe =  20030412 


--石碑 
local nCollect_ShiBei =   60231 
local nCollect_GenId_ShiBei = 20030413


-------------怪物数据
--感染的冒险者        蒙面狂徒
local nMonster_Fei = 9000267
local nMonsterGroup_Fei = 900350
local nMonsterGroup_GenId_Fei = 20030414
--鹿角怪              迷失鹿角兽
local nMonster_Lu = 9000268
local nMonsterGroup_Lu = 900351
local nMonsterGroup_GenId_Lu = 20030415
--寄居熊
local nMonster_Xiong = 9000269
local nMonsterGroup_Xiong = 900352
local nMonsterGroup_GenId_Xiong = 20030416
--矮巨人指挥官        矮巨人指挥官
local nMonster_Ai = 9000270
local nMonsterGroup_Ai = 900353
local nMonsterGroup_GenId_Ai = 20030417


local tMonster = {}
--蜂王
tMonster.nMonster_FengWang = 9000299
tMonster.nMonsterGroup_FengWang = 900380
tMonster.nMonsterGroup_GenId_FengWang = 20030512
--暗黑战魂
tMonster.nMonster_AnHeiZhanHun = 9000300
tMonster.nMonsterGroup_AnHeiZhanHun = 900381
tMonster.nMonsterGroup_GenId_AnHeiZhanHun = 20030513
-----------陷阱
local nTrap_4 = 30464 
local nTrap_GenId_4 = 20030418
local nTrap_5 = 30465
local nTrap_GenId_5 = 20030419
local nTrap_6 = 30466
local nTrap_GenId_6 = 20030420
local nTrap_7 = 30467
local nTrap_GenId_7 = 20030421
-------------对白Id  11379  11392 
--普通对白 
local nAcceptDialog_1 = 11379
local nAcceptDialog_2 = 11381
local nAcceptDialog_3 = 11383
local nAcceptDialog_4 = 11385
local nAcceptDialog_5 = 11387
local nAcceptDialog_6 = 11389
local nAcceptDialog_7 = 11391
local nAcceptDialog_8 =  11648
local nAcceptDialog_9 =  11650
local nAcceptDialog_10 =  11652

local nDialog_1 = 11380
local nDialog_2 = 11382
local nDialog_3 = 11384
--战前对白
local nDialog_4 = 11386
--战前对白
local nDialog_5 = 11388
local nDialog_6 = 11390
--战前对白
local nDialog_7 = 11392
local nDialog_8 =  11649
local nDialog_9 =  11651
local nDialog_10 =  11653

--初始化
--npc trap collect
rwtNpc[nNpc_MaoXianZhe] = rwtNpc[nNpc_MaoXianZhe] or {}
rwtNpcGroup[nNpcGroup_MaoXianZhe] = rwtNpcGroup[nNpcGroup_MaoXianZhe] or {}
rwtNpcGroup[nNpcGroup_MaoXianZhe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_MaoXianZhe]["NpcId"]= nNpc_MaoXianZhe

rwtNpcGroup[nTrap_4] = rwtNpcGroup[nTrap_4] or {} 
rwtNpcGroup[nTrap_4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_5] = rwtNpcGroup[nTrap_5] or {} 
rwtNpcGroup[nTrap_5]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_6] = rwtNpcGroup[nTrap_6] or {} 
rwtNpcGroup[nTrap_6]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_7] = rwtNpcGroup[nTrap_7] or {} 
rwtNpcGroup[nTrap_7]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nCollect_ShiBei] = rwtNpcGroup[nCollect_ShiBei] or {}
rwtNpcGroup[nCollect_ShiBei]["Type"] = CONST_NPCGROUP_TYPE.Collect


--迷雾森林的情报
--品质D
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["Title" ]= tLuaText[LANGUAGE_CONFIG][21122]
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["AcceptDialogId"] = nAcceptDialog_1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["DialogId"] = nDialog_1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["TaskNpc"] = nNpc_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["TaskQuality"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["AwardGroupId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_AiErWen

--品质C
--品质C
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["Title" ]= tLuaText[LANGUAGE_CONFIG][21122]
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["AcceptDialogId"] = nAcceptDialog_1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["DialogId"] = nDialog_1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["TaskNpc"] = nNpc_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["TaskQuality"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["AwardGroupId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_AiErWen
--品质B
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21122]
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["AcceptDialogId"] = nAcceptDialog_1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["DialogId"] = nDialog_1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["TaskNpc"] = nNpc_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["TaskQuality"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["AwardGroupId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_AiErWen
--品质A
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["Title" ]= tLuaText[LANGUAGE_CONFIG][21122]
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["AcceptDialogId"] = nAcceptDialog_1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["DialogId"] = nDialog_1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["TaskNpc"] = nNpc_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["TaskQuality"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["AwardGroupId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_AiErWen
--品质S
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["Title" ]= tLuaText[LANGUAGE_CONFIG][21122]
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["AcceptDialogId"] = nAcceptDialog_1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["DialogId"] = nDialog_1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["TaskNpc"] = nNpc_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["TaskQuality"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["AwardGroupId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_AiErWen

--搜救冒险者
--品质D
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["Title" ]= tLuaText[LANGUAGE_CONFIG][21123]
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["AcceptDialogId"] = nAcceptDialog_2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["DialogId"] = nDialog_2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["TaskNpc"] = nNpc_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["TaskQuality"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["AwardGroupId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_MaoXianZhe
--品质C
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["Title" ]= tLuaText[LANGUAGE_CONFIG][21123]
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["AcceptDialogId"] = nAcceptDialog_2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["DialogId"] = nDialog_2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["TaskNpc"] = nNpc_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["TaskQuality"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["AwardGroupId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_MaoXianZhe
--品质B
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21123]
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["AcceptDialogId"] = nAcceptDialog_2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["DialogId"] = nDialog_2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["TaskNpc"] = nNpc_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["TaskQuality"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["AwardGroupId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_MaoXianZhe
--品质A
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["Title" ]= tLuaText[LANGUAGE_CONFIG][21123]
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["AcceptDialogId"] = nAcceptDialog_2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["DialogId"] = nDialog_2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["TaskNpc"] = nNpc_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["TaskQuality"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["AwardGroupId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_MaoXianZhe
--品质S
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["Title" ]= tLuaText[LANGUAGE_CONFIG][21123]
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["AcceptDialogId"] = nAcceptDialog_2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["DialogId"] = nDialog_2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["TaskNpc"] = nNpc_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["TaskQuality"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["AwardGroupId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_MaoXianZhe
rwtTask[tMiWuSenLinMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_MaoXianZhe

--石刻谜团     
--品质D                         
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["Title" ]= tLuaText[LANGUAGE_CONFIG][21124]
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["AcceptDialogId"] = nAcceptDialog_3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["ReqCollectId1"] = nCollect_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["ReqCollectCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["DialogId"] = nDialog_3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["TaskQuality"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["AwardGroupId"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayGroupId"] = nCollect_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_ShiBei
--品质C
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["Title" ]= tLuaText[LANGUAGE_CONFIG][21124]
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["AcceptDialogId"] = nAcceptDialog_3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["ReqCollectId1"] = nCollect_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["ReqCollectCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["DialogId"] = nDialog_3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["TaskQuality"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["AwardGroupId"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayGroupId"] = nCollect_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_ShiBei
--品质B
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21124]
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["AcceptDialogId"] = nAcceptDialog_3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["ReqCollectId1"] = nCollect_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["ReqCollectCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["DialogId"] = nDialog_3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["TaskQuality"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["AwardGroupId"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayGroupId"] = nCollect_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_ShiBei
--品质A
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["Title" ]= tLuaText[LANGUAGE_CONFIG][21124]
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["AcceptDialogId"] = nAcceptDialog_3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["ReqCollectId1"] = nCollect_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["ReqCollectCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["DialogId"] = nDialog_3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["TaskQuality"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["AwardGroupId"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayGroupId"] = nCollect_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_ShiBei
--品质S
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["Title" ]= tLuaText[LANGUAGE_CONFIG][21124]
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["AcceptDialogId"] = nAcceptDialog_3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["ReqCollectId1"] = nCollect_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["ReqCollectCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["DialogId"] = nDialog_3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["TaskQuality"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["AwardGroupId"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayGroupId"] = nCollect_ShiBei
rwtTask[tMiWuSenLinMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_ShiBei
--迷雾缉凶     
--品质D                         
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["Title" ]= tLuaText[LANGUAGE_CONFIG][21125]
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["ReqTrap1"] = nTrap_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["AcceptDialogId"] = nAcceptDialog_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["KillMonsterGroup1"] = nMonsterGroup_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["TaskQuality"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["AwardGroupId"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][2]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Fei
--品质C
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["Title" ]= tLuaText[LANGUAGE_CONFIG][21125]
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["ReqTrap1"] = nTrap_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["AcceptDialogId"] = nAcceptDialog_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["KillMonsterGroup1"] = nMonsterGroup_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["TaskQuality"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["AwardGroupId"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][2]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Fei
--品质B
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21125]
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["ReqTrap1"] = nTrap_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["AcceptDialogId"] = nAcceptDialog_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["KillMonsterGroup1"] = nMonsterGroup_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["TaskQuality"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["AwardGroupId"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][2]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Fei
--品质A
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["Title" ]= tLuaText[LANGUAGE_CONFIG][21125]
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["ReqTrap1"] = nTrap_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["AcceptDialogId"] = nAcceptDialog_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["KillMonsterGroup1"] = nMonsterGroup_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["TaskQuality"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["AwardGroupId"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][2]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Fei
--品质S
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["Title" ]= tLuaText[LANGUAGE_CONFIG][21125]
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["ReqTrap1"] = nTrap_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["AcceptDialogId"] = nAcceptDialog_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["KillMonsterGroup1"] = nMonsterGroup_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["TaskQuality"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["AwardGroupId"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_4
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][2]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Fei
rwtTask[tMiWuSenLinMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Fei

--迷雾中的危急         
--品质D                 
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["Title" ]= tLuaText[LANGUAGE_CONFIG][21126]
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["ReqTrap1"] = nTrap_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["AcceptDialogId"] = nAcceptDialog_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["KillMonsterGroup1"] = nMonsterGroup_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["TaskQuality"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["AwardGroupId"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][2]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Lu
--品质C
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["Title" ]= tLuaText[LANGUAGE_CONFIG][21126]
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["ReqTrap1"] = nTrap_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["AcceptDialogId"] = nAcceptDialog_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["KillMonsterGroup1"] = nMonsterGroup_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["TaskQuality"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["AwardGroupId"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][2]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Lu
--品质B
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21126]
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["ReqTrap1"] = nTrap_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["AcceptDialogId"] = nAcceptDialog_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["KillMonsterGroup1"] = nMonsterGroup_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["TaskQuality"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["AwardGroupId"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][2]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Lu
--品质A
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["Title" ]= tLuaText[LANGUAGE_CONFIG][21126]
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["ReqTrap1"] = nTrap_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["AcceptDialogId"] = nAcceptDialog_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["KillMonsterGroup1"] = nMonsterGroup_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["TaskQuality"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["AwardGroupId"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][2]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Lu
--品质S
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["Title" ]= tLuaText[LANGUAGE_CONFIG][21126]
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["ReqTrap1"] = nTrap_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["AcceptDialogId"] = nAcceptDialog_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["KillMonsterGroup1"] = nMonsterGroup_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["TaskQuality"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["AwardGroupId"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_5
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][2]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Lu
rwtTask[tMiWuSenLinMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Lu

--拯救冒险者                            
--品质D
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["Title" ]= tLuaText[LANGUAGE_CONFIG][21127]
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["TaskNpc"] = nNpc_MaNiAo
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["DialogId"] = nDialog_6
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["MonsterGroupGenId"] = nMonsterGroup_GenId_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["AcceptDialogId"] = nAcceptDialog_6
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["KillMonsterGroup1"] = nMonsterGroup_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["TaskQuality"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["AwardGroupId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_MaNiAo
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_MaNiAo  

--品质C
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["Title" ]= tLuaText[LANGUAGE_CONFIG][21127]
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["TaskNpc"] = nNpc_MaNiAo
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["DialogId"] = nDialog_6
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["MonsterGroupGenId"] = nMonsterGroup_GenId_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["AcceptDialogId"] = nAcceptDialog_6
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["KillMonsterGroup1"] = nMonsterGroup_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["TaskQuality"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["AwardGroupId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_MaNiAo
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_MaNiAo  
--品质B
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21127]
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["TaskNpc"] = nNpc_MaNiAo
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["DialogId"] = nDialog_6
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["MonsterGroupGenId"] = nMonsterGroup_GenId_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["AcceptDialogId"] = nAcceptDialog_6
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["KillMonsterGroup1"] = nMonsterGroup_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["TaskQuality"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["AwardGroupId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_MaNiAo
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_MaNiAo  
--品质A
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["Title" ]= tLuaText[LANGUAGE_CONFIG][21127]
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["TaskNpc"] = nNpc_MaNiAo
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["DialogId"] = nDialog_6
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["MonsterGroupGenId"] = nMonsterGroup_GenId_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["AcceptDialogId"] = nAcceptDialog_6
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["KillMonsterGroup1"] = nMonsterGroup_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["TaskQuality"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["AwardGroupId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_MaNiAo
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_MaNiAo  
--品质S
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["Title" ]= tLuaText[LANGUAGE_CONFIG][21127]
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["TaskNpc"] = nNpc_MaNiAo
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["DialogId"] = nDialog_6
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["MonsterGroupGenId"] = nMonsterGroup_GenId_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["AcceptDialogId"] = nAcceptDialog_6
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["KillMonsterGroup1"] = nMonsterGroup_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["TaskQuality"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["AwardGroupId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Xiong
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_MaNiAo
rwtTask[tMiWuSenLinMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_MaNiAo  

--联盟通缉令  
--品质D
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["Title" ]= tLuaText[LANGUAGE_CONFIG][21128]
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["AcceptDialogId"] = nAcceptDialog_7
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["KillMonsterGroup1"] = nMonsterGroup_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["TaskQuality"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["AwardGroupId"] = 6
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Ai
--品质C
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["Title" ]= tLuaText[LANGUAGE_CONFIG][21128]
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["AcceptDialogId"] = nAcceptDialog_7
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["KillMonsterGroup1"] = nMonsterGroup_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["TaskQuality"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["AwardGroupId"] = 6
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Ai
--品质B
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21128]
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["AcceptDialogId"] = nAcceptDialog_7
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["KillMonsterGroup1"] = nMonsterGroup_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["TaskQuality"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["AwardGroupId"] = 6
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Ai
--品质A
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["Title" ]= tLuaText[LANGUAGE_CONFIG][21128]
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["AcceptDialogId"] = nAcceptDialog_7
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["KillMonsterGroup1"] = nMonsterGroup_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["TaskQuality"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["AwardGroupId"] = 6
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Ai
--品质S
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["Title" ]= tLuaText[LANGUAGE_CONFIG][21128]
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["AcceptDialogId"] = nAcceptDialog_7
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["KillMonsterGroup1"] = nMonsterGroup_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["KillMonsterGroupCount1"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["TaskQuality"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["AwardGroupId"] = 6
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Ai
rwtTask[tMiWuSenLinMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_Ai

--迷雾森林的奥秘D
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21377]
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["AcceptDialogId"] = nAcceptDialog_8
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["TaskQuality"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["AwardGroupId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["TaskNpc"] = nNpc_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["DialogId"] = nDialog_8
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_AiErWen


--迷雾森林的奥秘C
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21377]
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["AcceptDialogId"] = nAcceptDialog_8
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["TaskQuality"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["AwardGroupId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["TaskNpc"] = nNpc_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["DialogId"] = nDialog_8
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_AiErWen

--迷雾森林的奥秘B
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21377]
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["AcceptDialogId"] = nAcceptDialog_8
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["TaskQuality"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["AwardGroupId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["TaskNpc"] = nNpc_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["DialogId"] = nDialog_8
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_AiErWen

--迷雾森林的奥秘A
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21377]
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["AcceptDialogId"] = nAcceptDialog_8
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["TaskQuality"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["AwardGroupId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["TaskNpc"] = nNpc_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["DialogId"] = nDialog_8
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_AiErWen

--迷雾森林的奥秘S
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21377]
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["AcceptDialogId"] = nAcceptDialog_8
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["TaskQuality"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["AwardGroupId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["TaskNpc"] = nNpc_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["DialogId"] = nDialog_8
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
rwtTask[tMiWuSenLinMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_AiErWen

--迷雾夺命蜂D
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21378]
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["AcceptDialogId"] = nAcceptDialog_9
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["TaskQuality"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["AwardGroupId"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_FengWang
--rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["ReqTrap1"] =  nTrap_9
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_FengWang

--迷雾夺命蜂C
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21378]
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["AcceptDialogId"] = nAcceptDialog_9
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["TaskQuality"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["AwardGroupId"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_FengWang

--迷雾夺命蜂B
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21378]
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["AcceptDialogId"] = nAcceptDialog_9
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["TaskQuality"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["AwardGroupId"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_FengWang

--迷雾夺命蜂A
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21378]
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["AcceptDialogId"] = nAcceptDialog_9
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["TaskQuality"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["AwardGroupId"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_FengWang

--迷雾夺命蜂S
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21378]
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["AcceptDialogId"] = nAcceptDialog_9
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["TaskQuality"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["AwardGroupId"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_FengWang
rwtTask[tMiWuSenLinMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_FengWang

--隐匿的魔气D
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21379]
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["AcceptDialogId"] = nAcceptDialog_10
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["TaskQuality"] = 1
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["AwardGroupId"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_1]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun

--隐匿的魔气C
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21379]
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["AcceptDialogId"] = nAcceptDialog_10
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["TaskQuality"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["AwardGroupId"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_2]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun

--隐匿的魔气B
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21379]
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["AcceptDialogId"] = nAcceptDialog_10
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["TaskQuality"] = 3
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["AwardGroupId"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_3]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun

--隐匿的魔气A
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21379]
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["AcceptDialogId"] = nAcceptDialog_10
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["TaskQuality"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["AwardGroupId"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_4]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun

--隐匿的魔气S
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21379]
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["AcceptDialogId"] = nAcceptDialog_10
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["TaskQuality"] = 5
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["AwardGroupId"] = 4
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["DynaNpcGroupGen"][1]["MapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["StartAutoWay"] = {}
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["StartAutoWay"]["FindWayMapId"] = nDiTuID
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_AnHeiZhanHun
rwtTask[tMiWuSenLinMercenaryTask.TaskId10_5]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_AnHeiZhanHun
