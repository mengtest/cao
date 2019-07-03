--冒险者营地佣兵任务
local nMercenaryTownId = 200301


--数据


-------------新增佣兵委托任务
local tMaoXianZheYingDiMercenaryTask = {}

--费米的信
tMaoXianZheYingDiMercenaryTask.TaskId1_1 = 20472
tMaoXianZheYingDiMercenaryTask.TaskId1_2 = 20473
tMaoXianZheYingDiMercenaryTask.TaskId1_3 = 20474
tMaoXianZheYingDiMercenaryTask.TaskId1_4 = 20475
tMaoXianZheYingDiMercenaryTask.TaskId1_5 = 20476

--冒险者的物资
tMaoXianZheYingDiMercenaryTask.TaskId2_1 = 20477
tMaoXianZheYingDiMercenaryTask.TaskId2_2 = 20478
tMaoXianZheYingDiMercenaryTask.TaskId2_3 = 20479
tMaoXianZheYingDiMercenaryTask.TaskId2_4 = 20480
tMaoXianZheYingDiMercenaryTask.TaskId2_5 = 20481

--珍贵的药材
tMaoXianZheYingDiMercenaryTask.TaskId3_1 = 20482
tMaoXianZheYingDiMercenaryTask.TaskId3_2 = 20483
tMaoXianZheYingDiMercenaryTask.TaskId3_3 = 20484
tMaoXianZheYingDiMercenaryTask.TaskId3_4 = 20485
tMaoXianZheYingDiMercenaryTask.TaskId3_5 = 20486


--驱逐泪目狼人
tMaoXianZheYingDiMercenaryTask.TaskId4_1 = 20487
tMaoXianZheYingDiMercenaryTask.TaskId4_2 = 20488
tMaoXianZheYingDiMercenaryTask.TaskId4_3 = 20489
tMaoXianZheYingDiMercenaryTask.TaskId4_4 = 20490
tMaoXianZheYingDiMercenaryTask.TaskId4_5 = 20491



--化解冲突
tMaoXianZheYingDiMercenaryTask.TaskId5_1 = 20492
tMaoXianZheYingDiMercenaryTask.TaskId5_2 = 20493
tMaoXianZheYingDiMercenaryTask.TaskId5_3 = 20494
tMaoXianZheYingDiMercenaryTask.TaskId5_4 = 20495
tMaoXianZheYingDiMercenaryTask.TaskId5_5 = 20496

--联盟通缉令
tMaoXianZheYingDiMercenaryTask.TaskId6_1 = 20497
tMaoXianZheYingDiMercenaryTask.TaskId6_2 = 20498
tMaoXianZheYingDiMercenaryTask.TaskId6_3 = 20499
tMaoXianZheYingDiMercenaryTask.TaskId6_4 = 20500
tMaoXianZheYingDiMercenaryTask.TaskId6_5 = 20501

--运送飞艇配件
tMaoXianZheYingDiMercenaryTask.TaskId7_1 = 20707
tMaoXianZheYingDiMercenaryTask.TaskId7_2 = 20708
tMaoXianZheYingDiMercenaryTask.TaskId7_3 = 20709
tMaoXianZheYingDiMercenaryTask.TaskId7_4 = 20710
tMaoXianZheYingDiMercenaryTask.TaskId7_5 = 20711

--修缮营地帐篷
tMaoXianZheYingDiMercenaryTask.TaskId8_1 = 20712
tMaoXianZheYingDiMercenaryTask.TaskId8_2 = 20713
tMaoXianZheYingDiMercenaryTask.TaskId8_3 = 20714
tMaoXianZheYingDiMercenaryTask.TaskId8_4 = 20715
tMaoXianZheYingDiMercenaryTask.TaskId8_5 = 20716

--驱赶劫掠者
tMaoXianZheYingDiMercenaryTask.TaskId9_1 = 20717
tMaoXianZheYingDiMercenaryTask.TaskId9_2 = 20718
tMaoXianZheYingDiMercenaryTask.TaskId9_3 = 20719
tMaoXianZheYingDiMercenaryTask.TaskId9_4 = 20720
tMaoXianZheYingDiMercenaryTask.TaskId9_5 = 20721






-------------NPCGroup

local nTrap_BattleByTearWolf1 = 30463
local nTrap_BattleByTearWolf1_GenId = 20030395


local nCollect_YaoCai1 = 60225
local nCollect_YaoCai1_GenId = 20030396
local nCollect_ZhangPeng1 = 60296
local nCollect_ZhangPeng1_GenId = 20030515

local s_Pos_YaoCai1 = "-21.25,-0.01,11.99"

-------------怪物数据

local nMonster_TearWolf1 = 9000252
local nMonster_TearWolf2 = 9000253
local nMonster_NvWu1 = 9000254
local nMonster_BuLouWarrior1 = 9000255
local nMonster_QieLue1 = 9000301

local nMonsterGroup_TearWolf1 = 900335
local nMonsterGroup_TearWolf2 = 900336
local nMonsterGroup_NvWu1 = 900337
local nMonsterGroup_BuLouWarrior1 = 900338
local nMonsterGroup_QieLue1 = 900382

local nMonsterGroup_TearWolf1_GenId = 20030397
local nMonsterGroup_TearWolf2_GenId = 20030398
local nMonsterGroup_NvWu1_GenId = 20030399
local nMonsterGroup_BuLouWarrior1_GenId = 20030400
local nMonsterGroup_QieLue1_GenId = 20030516


-------------对白Id

local nAcceptDialog_MiEr1 = 11334
local nAcceptDialog_AiNiEr1 = 11335
local nAcceptDialog_CaiJi1 = 11336
local nAcceptDialog_TearWolf1 = 11337
local nAcceptDialog_NvWu1 = 11338
local nAcceptDialog_BuLouWarrior1 = 11339
local nAcceptDialog_FTzhixing1 = 11619
local nAcceptDialog_CaiJi2 = 11621
local nAcceptDialog_QieLue1 = 11623

local nDialog_MiEr1 = 11315
local nDialog_TearWolf1 = 11316
local nDialog_AiNiEr1 = 11317
local nDialog_FTzhixing1 = 11620
local nDialog_CaiJi2 = 11622
local nDialog_QieLue1 = 11624

local nBattleFirstDialog_TearWolf1 = 11340
local nBattleFirstDialog_NvWu1 = 11341
local nBattleFirstDialog_BuLouWarrior1 = 11342
local nBeforeCaiJi_Dialog = 11625

-------------配置

rwtNpcGroup[nTrap_BattleByTearWolf1] = rwtNpcGroup[nTrap_BattleByTearWolf1] or {}
rwtNpcGroup[nTrap_BattleByTearWolf1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_BattleByTearWolf1]["DelTrap"] = 1
rwtNpcGroup[nTrap_BattleByTearWolf1]["Awards"] = {}
rwtNpcGroup[nTrap_BattleByTearWolf1]["Awards"]["Events"] = {}
rwtNpcGroup[nTrap_BattleByTearWolf1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_BattleByTearWolf1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nTrap_BattleByTearWolf1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_TearWolf1


rwtDialog[nDialog_TearWolf1] = rwtDialog[nDialog_TearWolf1] or {}
rwtDialog[nDialog_TearWolf1]["DialogEndInit"] = {}
rwtDialog[nDialog_TearWolf1]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialog_TearWolf1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialog_TearWolf1]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[nDialog_TearWolf1]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGroup_TearWolf1_GenId


rwtNpcGroup[nCollect_YaoCai1] = rwtNpcGroup[nCollect_YaoCai1] or {}
rwtNpcGroup[nCollect_YaoCai1]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[nCollect_ZhangPeng1] = rwtNpcGroup[nCollect_ZhangPeng1] or {}
rwtNpcGroup[nCollect_ZhangPeng1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_ZhangPeng1]["DialogId"] = nBeforeCaiJi_Dialog

-------------任务

--费米的信
--品质D
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["Title" ]= tLuaText[LANGUAGE_CONFIG][21044]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["AcceptDialogId"] = nAcceptDialog_MiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["DialogId"] = nDialog_MiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["TaskNpc"] = 3118
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["TaskQuality"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayGroupId"] = 20202
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayGenId"] = 20030132
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_1]["AwardGroupId"] = 1
--品质C
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["Title" ]= tLuaText[LANGUAGE_CONFIG][21044]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["AcceptDialogId"] = nAcceptDialog_MiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["DialogId"] = nDialog_MiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["TaskNpc"] = 3118
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["TaskQuality"] = 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayGroupId"] = 20202
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayGenId"] = 20030132
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_2]["AwardGroupId"] = 1
--品质B
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21044]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["AcceptDialogId"] = nAcceptDialog_MiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["DialogId"] = nDialog_MiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["TaskNpc"] = 3118
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["TaskQuality"] = 3
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayGroupId"] = 20202
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayGenId"] = 20030132
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_3]["AwardGroupId"] = 1
--品质A
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["Title" ]= tLuaText[LANGUAGE_CONFIG][21044]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["AcceptDialogId"] = nAcceptDialog_MiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["DialogId"] = nDialog_MiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["TaskNpc"] = 3118
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["TaskQuality"] = 4
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayGroupId"] = 20202
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayGenId"] = 20030132
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_4]["AwardGroupId"] = 1
--品质S
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["Title" ]= tLuaText[LANGUAGE_CONFIG][21044]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["AcceptDialogId"] = nAcceptDialog_MiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["DialogId"] = nDialog_MiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["TaskNpc"] = 3118
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["TaskQuality"] = 5
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayGroupId"] = 20202
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayGenId"] = 20030132
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId1_5]["AwardGroupId"] = 1


--冒险者的物资
--品质D
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["Title" ]= tLuaText[LANGUAGE_CONFIG][21045]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["AcceptDialogId"] = nAcceptDialog_AiNiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["DialogId"] = nDialog_AiNiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["TaskNpc"] = 3142
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["TaskQuality"] = 1
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["DynaNpcGroupGen"] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_BattleByTearWolf1_GenId
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["DynaNpcGroupGen"][1]["MapId"] = 2003
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["DynaNpcGroupGen"][2] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_TearWolf1_GenId
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["DynaNpcGroupGen"][2]["MapId"] = 2003
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayPos"] = "-8.14,0.11,-48.31"

rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_1]["AwardGroupId"] = 2
--品质C
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["Title" ]= tLuaText[LANGUAGE_CONFIG][21045]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["AcceptDialogId"] = nAcceptDialog_AiNiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["DialogId"] = nDialog_AiNiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["TaskNpc"] = 3142
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["TaskQuality"] = 2
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["DynaNpcGroupGen"] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_BattleByTearWolf1_GenId
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["DynaNpcGroupGen"][1]["MapId"] = 2003
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["DynaNpcGroupGen"][2] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_TearWolf1_GenId
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["DynaNpcGroupGen"][2]["MapId"] = 2003
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayPos"] = "-8.14,0.11,-48.31"
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_2]["AwardGroupId"] = 2
--品质B
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21045]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["AcceptDialogId"] = nAcceptDialog_AiNiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["DialogId"] = nDialog_AiNiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["TaskNpc"] = 3142
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["TaskQuality"] = 3
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["DynaNpcGroupGen"] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_BattleByTearWolf1_GenId
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["DynaNpcGroupGen"][1]["MapId"] = 2003
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["DynaNpcGroupGen"][2] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_TearWolf1_GenId
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["DynaNpcGroupGen"][2]["MapId"] = 2003
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayPos"] = "-8.14,0.11,-48.31"
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_3]["AwardGroupId"] = 2
--品质A
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["Title" ]= tLuaText[LANGUAGE_CONFIG][21045]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["AcceptDialogId"] = nAcceptDialog_AiNiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["DialogId"] = nDialog_AiNiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["TaskNpc"] = 3142
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["TaskQuality"] = 4
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["DynaNpcGroupGen"] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["DynaNpcGroupGen"][1]["GenId"] = nTrap_BattleByTearWolf1_GenId
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["DynaNpcGroupGen"][1]["MapId"] = 2003
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["DynaNpcGroupGen"][2] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_TearWolf1_GenId
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["DynaNpcGroupGen"][2]["MapId"] = 2003
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayPos"] = "-8.14,0.11,-48.31"
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_4]["AwardGroupId"] = 2
--品质S
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["Title" ]= tLuaText[LANGUAGE_CONFIG][21045]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["AcceptDialogId"] = nAcceptDialog_AiNiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["DialogId"] = nDialog_AiNiEr1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["TaskNpc"] = 3142
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["TaskQuality"] = 5
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["DynaNpcGroupGen"] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["DynaNpcGroupGen"][1]["GenId"] = nTrap_BattleByTearWolf1_GenId
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["DynaNpcGroupGen"][1]["MapId"] = 2003
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["DynaNpcGroupGen"][2] = {}
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_TearWolf1_GenId
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["DynaNpcGroupGen"][2]["MapId"] = 2003
--rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayPos"] = "-8.14,0.11,-48.31"
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId2_5]["AwardGroupId"] = 2

--珍贵的药材
--品质D
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21046]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["AcceptDialogId"] = nAcceptDialog_CaiJi1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["ReqCollectId1"] = nCollect_YaoCai1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["ReqCollectCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["TaskQuality"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["DynaNpcGroupGen"][1]["GenId"] = nCollect_YaoCai1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayGroupId"] = nCollect_YaoCai1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayGenId"] = nCollect_YaoCai1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_1]["AwardGroupId"] = 3
--品质C
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21046]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["AcceptDialogId"] = nAcceptDialog_CaiJi1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["ReqCollectId1"] = nCollect_YaoCai1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["ReqCollectCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["TaskQuality"] = 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["DynaNpcGroupGen"][1]["GenId"] = nCollect_YaoCai1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayGroupId"] = nCollect_YaoCai1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayGenId"] = nCollect_YaoCai1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_2]["AwardGroupId"] = 3
--品质B
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21046]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["AcceptDialogId"] = nAcceptDialog_CaiJi1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["ReqCollectId1"] = nCollect_YaoCai1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["ReqCollectCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["TaskQuality"] = 3
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["DynaNpcGroupGen"][1]["GenId"] = nCollect_YaoCai1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayGroupId"] = nCollect_YaoCai1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayGenId"] = nCollect_YaoCai1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_3]["AwardGroupId"] = 3
--品质A
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21046]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["AcceptDialogId"] = nAcceptDialog_CaiJi1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["ReqCollectId1"] = nCollect_YaoCai1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["ReqCollectCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["TaskQuality"] = 4
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["DynaNpcGroupGen"][1]["GenId"] = nCollect_YaoCai1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayGroupId"] = nCollect_YaoCai1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayGenId"] = nCollect_YaoCai1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_4]["AwardGroupId"] = 3
--品质S
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21046]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["AcceptDialogId"] = nAcceptDialog_CaiJi1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["ReqCollectId1"] = nCollect_YaoCai1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["ReqCollectCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["TaskQuality"] = 5
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["DynaNpcGroupGen"][1]["GenId"] = nCollect_YaoCai1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayGroupId"] = nCollect_YaoCai1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayGenId"] = nCollect_YaoCai1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId3_5]["AwardGroupId"] = 3

--驱逐泪目狼人
--品质D
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21047]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["AcceptDialogId"] = nAcceptDialog_TearWolf1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["KillMonsterGroup1"] = nMonsterGroup_TearWolf2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["TaskQuality"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_TearWolf2_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_TearWolf2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_TearWolf2_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_1]["AwardGroupId"] = 4
--品质C
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21047]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["AcceptDialogId"] = nAcceptDialog_TearWolf1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["KillMonsterGroup1"] = nMonsterGroup_TearWolf2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["TaskQuality"] = 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_TearWolf2_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_TearWolf2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_TearWolf2_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_2]["AwardGroupId"] = 4
--品质B
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21047]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["AcceptDialogId"] = nAcceptDialog_TearWolf1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["KillMonsterGroup1"] = nMonsterGroup_TearWolf2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["TaskQuality"] = 3
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_TearWolf2_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_TearWolf2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_TearWolf2_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_3]["AwardGroupId"] = 4
--品质A
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21047]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["AcceptDialogId"] = nAcceptDialog_TearWolf1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["KillMonsterGroup1"] = nMonsterGroup_TearWolf2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["TaskQuality"] = 4
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_TearWolf2_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_TearWolf2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_TearWolf2_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_4]["AwardGroupId"] = 4
--品质S
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21047]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["AcceptDialogId"] = nAcceptDialog_TearWolf1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["KillMonsterGroup1"] = nMonsterGroup_TearWolf2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["TaskQuality"] = 5
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_TearWolf2_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_TearWolf2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_TearWolf2_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId4_5]["AwardGroupId"] = 4


--化解冲突
--品质D
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21048]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["AcceptDialogId"] = nAcceptDialog_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["KillMonsterGroup1"] = nMonsterGroup_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["TaskQuality"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NvWu1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NvWu1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_1]["AwardGroupId"] = 5
--品质C
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21048]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["AcceptDialogId"] = nAcceptDialog_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["KillMonsterGroup1"] = nMonsterGroup_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["TaskQuality"] = 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NvWu1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NvWu1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_2]["AwardGroupId"] = 5
--品质B
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21048]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["AcceptDialogId"] = nAcceptDialog_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["KillMonsterGroup1"] = nMonsterGroup_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["TaskQuality"] = 3
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NvWu1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NvWu1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_3]["AwardGroupId"] = 5
--品质A
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21048]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["AcceptDialogId"] = nAcceptDialog_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["KillMonsterGroup1"] = nMonsterGroup_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["TaskQuality"] = 4
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NvWu1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NvWu1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_4]["AwardGroupId"] = 5
--品质S
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21048]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["AcceptDialogId"] = nAcceptDialog_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["KillMonsterGroup1"] = nMonsterGroup_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["TaskQuality"] = 5
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NvWu1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NvWu1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NvWu1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId5_5]["AwardGroupId"] = 5

--联盟通缉令
--品质D
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21049]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["AcceptDialogId"] = nAcceptDialog_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["KillMonsterGroup1"] = nMonsterGroup_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["TaskQuality"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_BuLouWarrior1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_BuLouWarrior1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_1]["AwardGroupId"] = 6
--品质C
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21049]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["AcceptDialogId"] = nAcceptDialog_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["KillMonsterGroup1"] = nMonsterGroup_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["TaskQuality"] = 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_BuLouWarrior1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_BuLouWarrior1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_2]["AwardGroupId"] = 6
--品质B
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21049]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["AcceptDialogId"] = nAcceptDialog_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["KillMonsterGroup1"] = nMonsterGroup_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["TaskQuality"] = 3
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_BuLouWarrior1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_BuLouWarrior1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_3]["AwardGroupId"] = 6
--品质A
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21049]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["AcceptDialogId"] = nAcceptDialog_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["KillMonsterGroup1"] = nMonsterGroup_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["TaskQuality"] = 4
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_BuLouWarrior1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_BuLouWarrior1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_4]["AwardGroupId"] = 6
--品质S
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21049]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["AcceptDialogId"] = nAcceptDialog_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["KillMonsterGroup1"] = nMonsterGroup_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["TaskQuality"] = 5
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_BuLouWarrior1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_BuLouWarrior1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_BuLouWarrior1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId6_5]["AwardGroupId"] = 6




--运送飞艇配件
--品质D
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21358]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["AcceptDialogId"] = nAcceptDialog_FTzhixing1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["DialogId"] = nDialog_FTzhixing1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["TaskNpc"] = 3495
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["TaskQuality"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayGroupId"] = 20482
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayGenId"] =  20030483
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_1]["AwardGroupId"] = 1
--品质C
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21358]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["AcceptDialogId"] = nAcceptDialog_FTzhixing1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["DialogId"] = nDialog_FTzhixing1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["TaskNpc"] = 3495
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["TaskQuality"] = 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayGroupId"] = 20482
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayGenId"] =  20030483
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_2]["AwardGroupId"] = 1
--品质B
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21358]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["AcceptDialogId"] = nAcceptDialog_FTzhixing1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["DialogId"] = nDialog_FTzhixing1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["TaskNpc"] = 3495
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["TaskQuality"] = 3
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayGroupId"] = 20482
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayGenId"] =  20030483
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_3]["AwardGroupId"] = 1
--品质A
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21358]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["AcceptDialogId"] = nAcceptDialog_FTzhixing1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["DialogId"] = nDialog_FTzhixing1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["TaskNpc"] = 3495
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["TaskQuality"] = 4
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayGroupId"] = 20482
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayGenId"] =  20030483
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_4]["AwardGroupId"] = 1
--品质S
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21358]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["AcceptDialogId"] = nAcceptDialog_FTzhixing1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["DialogId"] = nDialog_FTzhixing1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["TaskNpc"] = 3495
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["TaskQuality"] = 5
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayGroupId"] = 20482
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayGenId"] =  20030483
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId7_5]["AwardGroupId"] = 1





--修缮营地帐篷
--品质D
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21359]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["AcceptDialogId"] = nAcceptDialog_CaiJi2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["ReqCollectId1"] = nCollect_ZhangPeng1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["ReqCollectCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["DialogId"] = nDialog_CaiJi2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["TaskQuality"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["DynaNpcGroupGen"][1]["GenId"] = nCollect_ZhangPeng1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayGroupId"] = nCollect_ZhangPeng1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayGenId"] = nCollect_ZhangPeng1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_1]["AwardGroupId"] = 2
--品质C
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21359]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["AcceptDialogId"] = nAcceptDialog_CaiJi2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["ReqCollectId1"] = nCollect_ZhangPeng1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["ReqCollectCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["DialogId"] = nDialog_CaiJi2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["TaskQuality"] = 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["DynaNpcGroupGen"][1]["GenId"] = nCollect_ZhangPeng1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayGroupId"] = nCollect_ZhangPeng1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayGenId"] = nCollect_ZhangPeng1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_2]["AwardGroupId"] = 2
--品质B
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21359]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["AcceptDialogId"] = nAcceptDialog_CaiJi2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["ReqCollectId1"] = nCollect_ZhangPeng1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["ReqCollectCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["DialogId"] = nDialog_CaiJi2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["TaskQuality"] = 3
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["DynaNpcGroupGen"][1]["GenId"] = nCollect_ZhangPeng1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayGroupId"] = nCollect_ZhangPeng1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayGenId"] = nCollect_ZhangPeng1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_3]["AwardGroupId"] = 2
--品质A
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21359]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["AcceptDialogId"] = nAcceptDialog_CaiJi2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["ReqCollectId1"] = nCollect_ZhangPeng1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["ReqCollectCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["DialogId"] = nDialog_CaiJi2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["TaskQuality"] = 4
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["DynaNpcGroupGen"][1]["GenId"] = nCollect_ZhangPeng1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayGroupId"] = nCollect_ZhangPeng1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayGenId"] = nCollect_ZhangPeng1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_4]["AwardGroupId"] = 2
--品质S
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21359]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["AcceptDialogId"] = nAcceptDialog_CaiJi2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["ReqCollectId1"] = nCollect_ZhangPeng1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["ReqCollectCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["DialogId"] = nDialog_CaiJi2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["TaskQuality"] = 5
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["DynaNpcGroupGen"][1]["GenId"] = nCollect_ZhangPeng1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayGroupId"] = nCollect_ZhangPeng1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayGenId"] = nCollect_ZhangPeng1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId8_5]["AwardGroupId"] = 2





--驱赶劫掠者
--品质D
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21360]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["AcceptDialogId"] = nAcceptDialog_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["KillMonsterGroup1"] = nMonsterGroup_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["MonsterGroupGenId"] = nMonsterGroup_QieLue1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["DialogId"] = nDialog_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["TaskNpc"] = 3139
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["TaskQuality"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_QieLue1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayGroupId"] = 20181
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayGenId"] =  20030043
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_1]["AwardGroupId"] = 3
--品质C
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21360]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["AcceptDialogId"] = nAcceptDialog_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["KillMonsterGroup1"] = nMonsterGroup_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["MonsterGroupGenId"] = nMonsterGroup_QieLue1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["DialogId"] = nDialog_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["TaskNpc"] = 3139
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["TaskQuality"] = 2
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_QieLue1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayGroupId"] = 20181
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayGenId"] =  20030043
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_2]["AwardGroupId"] = 3
--品质B
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21360]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["AcceptDialogId"] = nAcceptDialog_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["KillMonsterGroup1"] = nMonsterGroup_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["MonsterGroupGenId"] = nMonsterGroup_QieLue1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["DialogId"] = nDialog_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["TaskNpc"] = 3139
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["TaskQuality"] = 3
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_QieLue1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayGroupId"] = 20181
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayGenId"] =  20030043
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_3]["AwardGroupId"] = 3
--品质A
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21360]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["AcceptDialogId"] = nAcceptDialog_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["KillMonsterGroup1"] = nMonsterGroup_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["MonsterGroupGenId"] = nMonsterGroup_QieLue1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["DialogId"] = nDialog_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["TaskNpc"] = 3139
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["TaskQuality"] = 4
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_QieLue1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayGroupId"] = 20181
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayGenId"] =  20030043
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_4]["AwardGroupId"] = 3
--品质S
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21360]
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["AcceptDialogId"] = nAcceptDialog_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["KillMonsterGroup1"] = nMonsterGroup_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["KillMonsterGroupCount1"] = 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["MonsterGroupGenId"] = nMonsterGroup_QieLue1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["DialogId"] = nDialog_QieLue1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["TaskNpc"] = 3139
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["TaskQuality"] = 5
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_QieLue1_GenId
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["StartAutoWay"] = {}
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayGroupId"] = 20181
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayGenId"] =  20030043
rwtTask[tMaoXianZheYingDiMercenaryTask.TaskId9_5]["AwardGroupId"] = 3
