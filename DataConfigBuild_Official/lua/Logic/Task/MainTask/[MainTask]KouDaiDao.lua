--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--口袋岛主线
--date:2019/03/19
--by:mzy

--endregion


----***************************数据定义***************************----
-------------------任务ID-----------------
local tMainTask = {}
--前置任务
tMainTask.PreTask = 10596
--后续任务
tMainTask.NextTask = 10655



--口袋岛，抵达
tMainTask.Task1 = 10625      --抵达口袋岛
tMainTask.Task2 = 10626      --嘀——机器人呀
tMainTask.Task25  = 10650      --调查铁皮镇
tMainTask.Task26  = 10651      --调查铁皮镇
--tMainTask.Task27  = 10652      --调查铁皮镇
tMainTask.Task3 = 10627      --调查铁皮镇
--代号浮士德  
tMainTask.Task4 = 10628      --意外的发现
tMainTask.Task5 = 10629      --询问浮士德72
tMainTask.Task6 = 10630      --拉响战斗警备
tMainTask.Task7 = 10631      --一根筋的浮士德72
tMainTask.Task8 = 10632      --启动抹杀命令
--光的指引    
tMainTask.Task9  = 10633      --温丽的推测
tMainTask.Task10 = 10634      --调查线索
tMainTask.Task11 = 10635      --调查线索
tMainTask.Task12 = 10636      --跟随光的指引
tMainTask.Task13 = 10637      --调查线索
tMainTask.Task14 = 10638      --光的背后
--最后的话    
tMainTask.Task15 = 10639      --调查线索
tMainTask.Task16 = 10640      --小心，有伏击
tMainTask.Task17 = 10641      --调查线索
--博士的意志  
tMainTask.Task18 = 10642      --激活浮士德72
tMainTask.Task30 = 10675      --达到54级
tMainTask.Task19 = 10643      --前往黄金立方
--说个秘密给你听
tMainTask.Task28 = 10653      --讨论下一步计划
tMainTask.Task29 = 10654      --圣界“内讧”
tMainTask.Task20 = 10644      --兰奇的秘密
tMainTask.Task21 = 10645      --机器人的眼泪
--动员大会    
tMainTask.Task22 = 10646      --浮士德72的决定
tMainTask.Task23 = 10647      --联军集结
tMainTask.Task24 = 10648      --女王的宣言

-------------------对白ID-----------------
local tDialogId = {}

--口袋岛，抵达
tDialogId.Task1  = 12173      --抵达口袋岛
tDialogId.Task2  = 12174      --嘀——机器人呀
tDialogId.Task25  = 12205      --调查铁皮镇
tDialogId.Task26  = 12206      --调查铁皮镇
--tDialogId.Task27  = 12207      --调查铁皮镇
tDialogId.Task3  = 12175      --调查铁皮镇
--代号浮士德
tDialogId.Task4  = 12176      --意外的发现
tDialogId.Task5  = 12177      --询问浮士德72
tDialogId.Task6  = 12178      --拉响战斗警备
tDialogId.Task7  = 12179      --一根筋的浮士德72
tDialogId.Task8  = 12180      --启动抹杀命令
--光的指引
tDialogId.Task9  = 12181      --温丽的推测
tDialogId.Task10 = 12182      --调查线索
tDialogId.Task11 = 12183      --调查线索
tDialogId.Task12 = 12184      --跟随光的指引
tDialogId.Task13 = 12185      --调查线索
tDialogId.Task14 = 12186      --光的背后
--最后的话
--tDialogId.Task15 = 12187      --调查线索
tDialogId.Task16 = 12188      --小心，有伏击
tDialogId.Task17 = 12189      --调查线索
--博士的意志
tDialogId.Task18 = 12190      --激活浮士德72
tDialogId.LockLev = 12270       --未达到等级对白
tDialogId.UnLockLev = 12271     --达成等级对白
tDialogId.Task19 = 12191      --前往黄金立方
--说个秘密给你听
tDialogId.Task28 = 12208      --讨论下一步计划
tDialogId.Task29 = 12209      --圣界“内讧”
tDialogId.Task20 = 12192      --兰奇的秘密
tDialogId.Task21 = 12193      --机器人的眼泪
--动员大会
tDialogId.Task22 = 12194      --浮士德72的决定
tDialogId.Task23 = 12195      --联军集结
tDialogId.Task24 = 12196      --女王的宣言

--采集前对白
tDialogId.BeforeCollect_Task17 = 12207
--战后对白
tDialogId.AfterBattle_Task16 = 12268
--激活浮士德动画对白
tDialogId.Oper_Task18 = 12269


-------------NPC群组------------
--陷阱
local tTrap = {}
local tTrapGenId = {}

--任务1陷阱
tTrap.Trap1 = 30598
tTrapGenId.Trap1 = 20050200
--任务2陷阱
tTrap.Trap2 = 30599
tTrapGenId.Trap2 = 20050201
--任务7陷阱
tTrap.Trap3 = 30600
tTrapGenId.Trap3 = 20050202
--任务8陷阱
tTrap.Trap4 = 30601
tTrapGenId.Trap4 = 20050203
--任务9陷阱
tTrap.Trap5 = 30602
tTrapGenId.Trap5 = 20050204
--任务12陷阱
tTrap.Trap6 = 30603
tTrapGenId.Trap6 = 20050205
--任务14陷阱
tTrap.Trap7 = 30604
tTrapGenId.Trap7 = 20050206
--任务16陷阱
tTrap.Trap8 = 30605
tTrapGenId.Trap8 = 20050207
--任务23陷阱
tTrap.Trap9 = 30606
tTrapGenId.Trap9 = 20050208
--任务28、29陷阱
tTrap.Trap10 = 30615
tTrapGenId.Trap10 = 20050247



--NPC
local tSingleNpc = {}
local tSingleNpcGenId = {}
--浮士德72(永久NPC)
tSingleNpc.Npc1 = 20593
tSingleNpcGenId.Npc1 = 20050209
--浮士德72(说个秘密给你听)
tSingleNpc.Npc2 = 20594
tSingleNpcGenId.Npc2 = 20050210
--夜崎隐
tSingleNpc.Npc3 = 20595
tSingleNpcGenId.Npc3 = 20050211

--浮士德18
tSingleNpc.Npc4 = 20640
tSingleNpcGenId.Npc4 = 20050248
--浮士德63
tSingleNpc.Npc5 = 20641
tSingleNpcGenId.Npc5 = 20050249
--浮士德18
tSingleNpc.Npc6 = 20642
tSingleNpcGenId.Npc6 = 20050250
--浮士德46
tSingleNpc.Npc7 = 20643
tSingleNpcGenId.Npc7 = 20050251
--塔蕾娅
tSingleNpc.Npc8 = 20644
tSingleNpcGenId.Npc8 = 20050252
--葛莱蒂丝
tSingleNpc.Npc9 = 20645
tSingleNpcGenId.Npc9 = 20050253
--泰雷
tSingleNpc.Npc10 = 20646
tSingleNpcGenId.Npc10 = 20050254
--纳雅卫兵
tSingleNpc.Npc11 = 20647
tSingleNpcGenId.Npc11 = 20050255
--纳雅卫兵
tSingleNpc.Npc12 = 20648
tSingleNpcGenId.Npc12 = 20050256
--纳雅卫兵
tSingleNpc.Npc13 = 20649
tSingleNpcGenId.Npc13 = 20050257
--纳雅卫兵
tSingleNpc.Npc14 = 20650
tSingleNpcGenId.Npc14 = 20050258
--纳雅卫兵
tSingleNpc.Npc15 = 20651
tSingleNpcGenId.Npc15 = 20050259
--纳雅卫兵
tSingleNpc.Npc16 = 20652
tSingleNpcGenId.Npc16 = 20050260
--卫兵
tSingleNpc.Npc17 = 20653
tSingleNpcGenId.Npc17 = 20050261
--卫兵
tSingleNpc.Npc18 = 20654
tSingleNpcGenId.Npc18 = 20050262
--精灵战士
tSingleNpc.Npc19 = 20655
tSingleNpcGenId.Npc19 = 20050263
--精灵战士
tSingleNpc.Npc20 = 20656
tSingleNpcGenId.Npc20 = 20050264
--精灵弓箭手
tSingleNpc.Npc21 = 20657
tSingleNpcGenId.Npc21 = 20050265
--精灵弓箭手
tSingleNpc.Npc22 = 20658
tSingleNpcGenId.Npc22 = 20050266


--采集物
local tCollect = {}
local tCollectGenId = {}
--调查铁皮镇
tCollect.Collect1 = 60337
tCollectGenId.Collect1 = 20050212
--调查线索1
tCollect.Collect2 = 60338
tCollectGenId.Collect2 = 20050213
--调查线索2
tCollect.Collect3 = 60339
tCollectGenId.Collect3 = 20050214
--调查线索3
tCollect.Collect4 = 60340
tCollectGenId.Collect4 = 20050215
--调查线索4
tCollect.Collect5 = 60341
tCollectGenId.Collect5 = 20050216

--调查铁皮镇（Task25）
tCollect.Collect6 = 60356
tCollectGenId.Collect6 = 20050267

--调查铁皮镇（Task26）
tCollect.Collect7 = 60357
tCollectGenId.Collect7 = 20050268

----调查铁皮镇（Task27）
--tCollect.Collect8 = 60358
--tCollectGenId.Collect8 = 20050269


-------------NPC------------
local tNpc = {}

--浮士德72（已有NPC）
tNpc.Npc1 = 3638
--夜崎隐
tNpc.Npc2 = 3674
--安德烈博士
tNpc.Npc3 = 3676
--黑龙翼兵
tNpc.Npc99 = 3677

--浮士德18(已有)
tNpc.Npc4 = 3678
--浮士德63(已有)
tNpc.Npc5 = 3680
--浮士德18(已有)
tNpc.Npc6 = 3678
--浮士德46(已有)
tNpc.Npc7 = 3679
--塔蕾娅(已有)
tNpc.Npc8 = 3398


-------------monsterGroup------------
local tMonsterGroup = {}
local tMonsterGroupGenId = {}

--浮士德72
tMonsterGroup.MonsterGroup1 = 900454
tMonsterGroupGenId.MonsterGroup1 = 20050217
--机械石像鬼
tMonsterGroup.MonsterGroup2 = 900455
tMonsterGroupGenId.MonsterGroup2 = 20050218
--袭击者
tMonsterGroup.MonsterGroup3 = 900456
tMonsterGroupGenId.MonsterGroup3 = 20050219
--摩尼耶
tMonsterGroup.MonsterGroup4 = 900457
tMonsterGroupGenId.MonsterGroup4 = 20050220

-------------monster------------
local tMonster = {}
--浮士德72
tMonster.Monster1 = 9000432
--机械石像鬼
tMonster.Monster2 = 9000433
--袭击者
tMonster.Monster3 = 9000434
--摩尼耶
tMonster.Monster4 = 9000435


-------------奖励id------------
local tAwardId = {}

--口袋岛，抵达
tAwardId.Task3 = 2000380
--代号浮士德
tAwardId.Task8 = 2000381
--光的指引
tAwardId.Task14 = 2000382
--最后的话
tAwardId.Task17 = 2000383
--博士的意志
tAwardId.Task19 = 2000384
--说个秘密给你听
tAwardId.Task21 = 2000385
--动员大会
tAwardId.Task24 = 2000386

-------------其他------------
--坐标
local tPos = {}

--博士的家
tPos.BoShi = "16.11,13.51,-318.79 "
--黄金立方
tPos.HuangJin = "83.63,29.94,-371.38"

--副本
--博士的家
local nCopyMap_BoShi = 3090
local nCopyMap_BoShi_GenId = 3090011
--黄金立方
local nCopyMap_HuangJin = 3085
--*****************************逻辑****************************
--陷阱
rwtNpcGroup[tTrap.Trap1] = rwtNpcGroup[tTrap.Trap1] or {}
rwtNpcGroup[tTrap.Trap1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.Trap2] = rwtNpcGroup[tTrap.Trap2] or {}
rwtNpcGroup[tTrap.Trap2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.Trap3] = rwtNpcGroup[tTrap.Trap3] or {}
rwtNpcGroup[tTrap.Trap3]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.Trap4] = rwtNpcGroup[tTrap.Trap4] or {}
rwtNpcGroup[tTrap.Trap4]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.Trap5] = rwtNpcGroup[tTrap.Trap5] or {}
rwtNpcGroup[tTrap.Trap5]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.Trap6] = rwtNpcGroup[tTrap.Trap6] or {}
rwtNpcGroup[tTrap.Trap6]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.Trap7] = rwtNpcGroup[tTrap.Trap7] or {}
rwtNpcGroup[tTrap.Trap7]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.Trap8] = rwtNpcGroup[tTrap.Trap8] or {}
rwtNpcGroup[tTrap.Trap8]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.Trap9] = rwtNpcGroup[tTrap.Trap9] or {}
rwtNpcGroup[tTrap.Trap9]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.Trap10] = rwtNpcGroup[tTrap.Trap10] or {}
rwtNpcGroup[tTrap.Trap10]["Type"] = CONST_NPCGROUP_TYPE.Trap

--SingleNpc
--浮士德72
rwtNpcGroup[tSingleNpc.Npc1] = rwtNpcGroup[tSingleNpc.Npc1] or {}     
rwtNpcGroup[tSingleNpc.Npc1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Npc1]["NpcId"]= tNpc.Npc1
--浮士德72
rwtNpcGroup[tSingleNpc.Npc2] = rwtNpcGroup[tSingleNpc.Npc2] or {}     
rwtNpcGroup[tSingleNpc.Npc2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Npc2]["NpcId"]= tNpc.Npc1
--夜崎隐
rwtNpcGroup[tSingleNpc.Npc3] = rwtNpcGroup[tSingleNpc.Npc3] or {}     
rwtNpcGroup[tSingleNpc.Npc3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Npc3]["NpcId"]= tNpc.Npc2
--浮士德18
rwtNpcGroup[tSingleNpc.Npc4] = rwtNpcGroup[tSingleNpc.Npc4] or {}     
rwtNpcGroup[tSingleNpc.Npc4]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Npc4]["NpcId"]= tNpc.Npc4
--浮士德63
rwtNpcGroup[tSingleNpc.Npc5] = rwtNpcGroup[tSingleNpc.Npc5] or {}     
rwtNpcGroup[tSingleNpc.Npc5]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Npc5]["NpcId"]= tNpc.Npc5
--浮士德18
rwtNpcGroup[tSingleNpc.Npc6] = rwtNpcGroup[tSingleNpc.Npc6] or {}     
rwtNpcGroup[tSingleNpc.Npc6]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Npc6]["NpcId"]= tNpc.Npc6
--浮士德46
rwtNpcGroup[tSingleNpc.Npc7] = rwtNpcGroup[tSingleNpc.Npc7] or {}     
rwtNpcGroup[tSingleNpc.Npc7]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Npc7]["NpcId"]= tNpc.Npc7
--塔蕾娅
rwtNpcGroup[tSingleNpc.Npc8] = rwtNpcGroup[tSingleNpc.Npc8] or {}     
rwtNpcGroup[tSingleNpc.Npc8]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Npc8]["NpcId"]= tNpc.Npc8

--采集物
--调查铁皮镇4
rwtNpcGroup[tCollect.Collect1] = rwtNpcGroup[tCollect.Collect1] or {} 
rwtNpcGroup[tCollect.Collect1]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[tCollect.Collect1]["DialogId"] = tDialogId.Task3
--调查线索1
rwtNpcGroup[tCollect.Collect2] = rwtNpcGroup[tCollect.Collect2] or {} 
rwtNpcGroup[tCollect.Collect2]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[tCollect.Collect2]["DialogId"] = tDialogId.Task10
--调查线索2
rwtNpcGroup[tCollect.Collect3] = rwtNpcGroup[tCollect.Collect3] or {} 
rwtNpcGroup[tCollect.Collect3]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[tCollect.Collect3]["DialogId"] = tDialogId.Task11
--调查线索3
rwtNpcGroup[tCollect.Collect4] = rwtNpcGroup[tCollect.Collect4] or {} 
rwtNpcGroup[tCollect.Collect4]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[tCollect.Collect4]["DialogId"] = tDialogId.Task13
--调查线索4
rwtNpcGroup[tCollect.Collect5] = rwtNpcGroup[tCollect.Collect5] or {} 
rwtNpcGroup[tCollect.Collect5]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.Collect5]["DialogId"] = tDialogId.BeforeCollect_Task17
--调查铁皮镇1
rwtNpcGroup[tCollect.Collect6] = rwtNpcGroup[tCollect.Collect6] or {} 
rwtNpcGroup[tCollect.Collect6]["Type"] = CONST_NPCGROUP_TYPE.Collect
--调查铁皮镇2
rwtNpcGroup[tCollect.Collect7] = rwtNpcGroup[tCollect.Collect7] or {} 
rwtNpcGroup[tCollect.Collect7]["Type"] = CONST_NPCGROUP_TYPE.Collect
----调查铁皮镇3
--rwtNpcGroup[tCollect.Collect8] = rwtNpcGroup[tCollect.Collect8] or {} 
--rwtNpcGroup[tCollect.Collect8]["Type"] = CONST_NPCGROUP_TYPE.Collect

--NPC
--浮士德72
rwtNpc[tNpc.Npc1] = rwtNpc[tNpc.Npc1] or {}
--夜崎隐
rwtNpc[tNpc.Npc2] = rwtNpc[tNpc.Npc2] or {}

--浮士德18(已有)
rwtNpc[tNpc.Npc4] = rwtNpc[tNpc.Npc4] or {}
--浮士德63(已有)
rwtNpc[tNpc.Npc5] = rwtNpc[tNpc.Npc5] or {}
--浮士德18(已有)
rwtNpc[tNpc.Npc6] = rwtNpc[tNpc.Npc6] or {}
--浮士德46(已有)
rwtNpc[tNpc.Npc7] = rwtNpc[tNpc.Npc7] or {}

----***************************任务***************************----

------------------口袋岛，抵达----------------------
--抵达口袋岛
rwtTask[tMainTask.Task1] = {}
rwtTask[tMainTask.Task1]["Title"]= tLuaText[LANGUAGE_CONFIG][21579]
rwtTask[tMainTask.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMainTask.Task1]["PreTaskId"] = tMainTask.PreTask
rwtTask[tMainTask.Task1]["NextTaskId"]= tMainTask.Task2
rwtTask[tMainTask.Task1]["DialogId"]= tDialogId.Task1
rwtTask[tMainTask.Task1]["ReqTrap1"] = tTrap.Trap1
rwtTask[tMainTask.Task1]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task1]["DynaNpcGroupGen"][1]["GenId"] = tTrapGenId.Trap1
rwtTask[tMainTask.Task1]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainTask.Task1]["StartAutoWay"] = {}
rwtTask[tMainTask.Task1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task1]["StartAutoWay"]["FindWayGroupId"] = tTrap.Trap1
rwtTask[tMainTask.Task1]["StartAutoWay"]["FindWayGenId"] = tTrapGenId.Trap1
rwtTask[tMainTask.Task1]["OpenTransfer"] = CONST_TRANSFER_INDEX.KOUDAIDAO
rwtTask[tMainTask.Task1]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10183]


--嘀——机器人呀
rwtTask[tMainTask.Task2] = {}
rwtTask[tMainTask.Task2]["Title"]= tLuaText[LANGUAGE_CONFIG][21579]
rwtTask[tMainTask.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMainTask.Task2]["PreTaskId"] = tMainTask.Task1
rwtTask[tMainTask.Task2]["NextTaskId"]= tMainTask.Task25
rwtTask[tMainTask.Task2]["DialogId"]= tDialogId.Task2
rwtTask[tMainTask.Task2]["AutoTaskDialog"] = tDialogId.Task2
rwtTask[tMainTask.Task2]["ReqTrap1"] = tTrap.Trap2
rwtTask[tMainTask.Task2]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task2]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task2]["DynaNpcGroupGen"][1]["GenId"] = tTrapGenId.Trap2
rwtTask[tMainTask.Task2]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tMainTask.Task2]["StartAutoWay"] = {}
--rwtTask[tMainTask.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMainTask.Task2]["StartAutoWay"]["FindWayMapId"] = 2005
--rwtTask[tMainTask.Task2]["StartAutoWay"]["FindWayGroupId"] = tTrap.Trap2
--rwtTask[tMainTask.Task2]["StartAutoWay"]["FindWayGenId"] = tTrapGenId.Trap2

--调查铁皮镇
rwtTask[tMainTask.Task25] = {}
rwtTask[tMainTask.Task25]["Title"] = tLuaText[LANGUAGE_CONFIG][21579]
rwtTask[tMainTask.Task25]["PreTaskId"] = tMainTask.Task2
rwtTask[tMainTask.Task25]["NextTaskId"] = tMainTask.Task26
rwtTask[tMainTask.Task25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMainTask.Task25]["DialogId"] = tDialogId.Task25
rwtTask[tMainTask.Task25]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task25]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task25]["DynaNpcGroupGen"][1]["GenId"] = tCollectGenId.Collect6
rwtTask[tMainTask.Task25]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task25]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
                      
rwtTask[tMainTask.Task25]["ReqCollectId1"] = tCollect.Collect6
rwtTask[tMainTask.Task25]["ReqCollectCount1"] = 1
                      
rwtTask[tMainTask.Task25]["StartAutoWay"] = {}
rwtTask[tMainTask.Task25]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task25]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task25]["StartAutoWay"]["FindWayGroupId"] = tCollect.Collect6
rwtTask[tMainTask.Task25]["StartAutoWay"]["FindWayGenId"] = tCollectGenId.Collect6

--调查铁皮镇
rwtTask[tMainTask.Task26] = {}
rwtTask[tMainTask.Task26]["Title"] = tLuaText[LANGUAGE_CONFIG][21579]
rwtTask[tMainTask.Task26]["PreTaskId"] = tMainTask.Task25
rwtTask[tMainTask.Task26]["NextTaskId"] = tMainTask.Task3
rwtTask[tMainTask.Task26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMainTask.Task26]["DialogId"] = tDialogId.Task26
rwtTask[tMainTask.Task26]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task26]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task26]["DynaNpcGroupGen"][1]["GenId"] = tCollectGenId.Collect7
rwtTask[tMainTask.Task26]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
                      
rwtTask[tMainTask.Task26]["ReqCollectId1"] = tCollect.Collect7
rwtTask[tMainTask.Task26]["ReqCollectCount1"] = 1
                      
rwtTask[tMainTask.Task26]["StartAutoWay"] = {}
rwtTask[tMainTask.Task26]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task26]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task26]["StartAutoWay"]["FindWayGroupId"] = tCollect.Collect7
rwtTask[tMainTask.Task26]["StartAutoWay"]["FindWayGenId"] = tCollectGenId.Collect7

----调查铁皮镇
--rwtTask[tMainTask.Task27] = {}
--rwtTask[tMainTask.Task27]["Title"] = tLuaText[LANGUAGE_CONFIG][21579]
--rwtTask[tMainTask.Task27]["PreTaskId"] = tMainTask.Task26
--rwtTask[tMainTask.Task27]["NextTaskId"] = tMainTask.Task3
--rwtTask[tMainTask.Task27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[tMainTask.Task27]["DynaNpcGroupGen"] = {}
--rwtTask[tMainTask.Task27]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMainTask.Task27]["DynaNpcGroupGen"][1]["GenId"] = tCollectGenId.Collect8
--rwtTask[tMainTask.Task27]["DynaNpcGroupGen"][1]["MapId"] = 2005
--rwtTask[tMainTask.Task27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--rwtTask[tMainTask.Task27]["ReqCollectId1"] = tCollect.Collect8
--rwtTask[tMainTask.Task27]["ReqCollectCount1"] = 1

--rwtTask[tMainTask.Task27]["StartAutoWay"] = {}
--rwtTask[tMainTask.Task27]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMainTask.Task27]["StartAutoWay"]["FindWayMapId"] = 2005
--rwtTask[tMainTask.Task27]["StartAutoWay"]["FindWayGroupId"] = tCollect.Collect8
--rwtTask[tMainTask.Task27]["StartAutoWay"]["FindWayGenId"] = tCollectGenId.Collect8

--调查铁皮镇
rwtTask[tMainTask.Task3] = {}
rwtTask[tMainTask.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][21579]
rwtTask[tMainTask.Task3]["PreTaskId"] = tMainTask.Task26
rwtTask[tMainTask.Task3]["NextTaskId"] = tMainTask.Task4
rwtTask[tMainTask.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMainTask.Task3]["DialogId"] = tDialogId.Task3
rwtTask[tMainTask.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task3]["DynaNpcGroupGen"][1]["GenId"] = tCollectGenId.Collect1
rwtTask[tMainTask.Task3]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
                      
rwtTask[tMainTask.Task3]["ReqCollectId1"] = tCollect.Collect1
rwtTask[tMainTask.Task3]["ReqCollectCount1"] = 1

rwtTask[tMainTask.Task3]["StartAutoWay"] = {}
rwtTask[tMainTask.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task3]["StartAutoWay"]["FindWayGroupId"] = tCollect.Collect1
rwtTask[tMainTask.Task3]["StartAutoWay"]["FindWayGenId"] = tCollectGenId.Collect1

rwtTask[tMainTask.Task3]["Awards"] = {}
rwtTask[tMainTask.Task3]["Awards"]["Events"] = {}
rwtTask[tMainTask.Task3]["Awards"]["Events"][1] = {}
rwtTask[tMainTask.Task3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMainTask.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMainTask.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task3
rwtTask[tMainTask.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMainTask.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMainTask.Task3

----------------------代号浮士德----------------------
--意外的发现
rwtTask[tMainTask.Task4] = {}
rwtTask[tMainTask.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][21580]
rwtTask[tMainTask.Task4]["PreTaskId"] = tMainTask.Task3
rwtTask[tMainTask.Task4]["NextTaskId"] = tMainTask.Task5
rwtTask[tMainTask.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainTask.Task4]["DialogId"] = tDialogId.Task4
rwtTask[tMainTask.Task4]["TaskNpc"] = tNpc.Npc1
                      
rwtTask[tMainTask.Task4]["StartAutoWay"] = {}
rwtTask[tMainTask.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.Npc1
rwtTask[tMainTask.Task4]["StartAutoWay"]["FindWayGenId"] = tSingleNpcGenId.Npc1


--询问浮士德72
rwtTask[tMainTask.Task5] = {}
rwtTask[tMainTask.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][21580]
rwtTask[tMainTask.Task5]["PreTaskId"] = tMainTask.Task4
rwtTask[tMainTask.Task5]["NextTaskId"] = tMainTask.Task6
rwtTask[tMainTask.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainTask.Task5]["DialogId"] = tDialogId.Task5
rwtTask[tMainTask.Task5]["TaskNpc"] = tNpc.Npc1
                      
rwtTask[tMainTask.Task5]["StartAutoWay"] = {}
rwtTask[tMainTask.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.Npc1
rwtTask[tMainTask.Task5]["StartAutoWay"]["FindWayGenId"] = tSingleNpcGenId.Npc1


--拉响战斗警备
rwtTask[tMainTask.Task6] = {}
rwtTask[tMainTask.Task6]["Title"] =tLuaText[LANGUAGE_CONFIG][21580]
rwtTask[tMainTask.Task6]["PreTaskId"] = tMainTask.Task5
rwtTask[tMainTask.Task6]["NextTaskId"] =tMainTask.Task7
rwtTask[tMainTask.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMainTask.Task6]["DialogId"] = tDialogId.Task6
rwtTask[tMainTask.Task6]["TaskNpc"] = tNpc.Npc1

rwtTask[tMainTask.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task6]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.MonsterGroup1
rwtTask[tMainTask.Task6]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tMainTask.Task6]["MonsterGroupGenId"] = tMonsterGroupGenId.MonsterGroup1
rwtTask[tMainTask.Task6]["KillMonsterGroup1" ]= tMonsterGroup.MonsterGroup1

rwtTask[tMainTask.Task6]["StartAutoWay"] = {}
rwtTask[tMainTask.Task6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task6]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task6]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.Npc1
rwtTask[tMainTask.Task6]["StartAutoWay"]["FindWayGenId"] = tSingleNpcGenId.Npc1

--一根筋的浮士德72
rwtTask[tMainTask.Task7] = {}
rwtTask[tMainTask.Task7]["Title"]= tLuaText[LANGUAGE_CONFIG][21580]
rwtTask[tMainTask.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMainTask.Task7]["PreTaskId"] = tMainTask.Task6
rwtTask[tMainTask.Task7]["NextTaskId"]= tMainTask.Task8
rwtTask[tMainTask.Task7]["DialogId"]= tDialogId.Task7
rwtTask[tMainTask.Task7]["AutoTaskDialog"] = tDialogId.Task7
rwtTask[tMainTask.Task7]["ReqTrap1"] = tTrap.Trap3
rwtTask[tMainTask.Task7]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task7]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task7]["DynaNpcGroupGen"][1]["GenId"] = tTrapGenId.Trap3
rwtTask[tMainTask.Task7]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--启动抹杀命令
rwtTask[tMainTask.Task8] = {}
rwtTask[tMainTask.Task8]["Title"] =tLuaText[LANGUAGE_CONFIG][21580]
rwtTask[tMainTask.Task8]["PreTaskId"] = tMainTask.Task7
rwtTask[tMainTask.Task8]["NextTaskId"] =tMainTask.Task9
rwtTask[tMainTask.Task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMainTask.Task8]["DialogId"] = tDialogId.Task8
rwtTask[tMainTask.Task8]["ReqTrap1"] = tTrap.Trap4
rwtTask[tMainTask.Task8]["AutoTaskDialog"] = tDialogId.Task8
                      
rwtTask[tMainTask.Task8]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task8]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task8]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.MonsterGroup1
rwtTask[tMainTask.Task8]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tMainTask.Task8]["DynaNpcGroupGen"][2] = {}
rwtTask[tMainTask.Task8]["DynaNpcGroupGen"][2]["GenId"] = tTrapGenId.Trap4
rwtTask[tMainTask.Task8]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tMainTask.Task8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
                      
rwtTask[tMainTask.Task8]["MonsterGroupGenId"] = tMonsterGroupGenId.MonsterGroup2
rwtTask[tMainTask.Task8]["KillMonsterGroup1" ]= tMonsterGroup.MonsterGroup2
 
rwtTask[tMainTask.Task8]["Awards"] = {}
rwtTask[tMainTask.Task8]["Awards"]["Events"] = {}
rwtTask[tMainTask.Task8]["Awards"]["Events"][1] = {}
rwtTask[tMainTask.Task8]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMainTask.Task8]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMainTask.Task8]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task8 
rwtTask[tMainTask.Task8]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMainTask.Task8]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMainTask.Task8 
                
--rwtTask[tMainTask.Task8]["StartAutoWay"] = {}
--rwtTask[tMainTask.Task8]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMainTask.Task8]["StartAutoWay"]["FindWayMapId"] = 2005
--rwtTask[tMainTask.Task8]["StartAutoWay"]["FindWayGroupId"] = tTrap.Trap4
--rwtTask[tMainTask.Task8]["StartAutoWay"]["FindWayGenId"] = tTrapGenId.Trap4
------------------------光的指引----------------------
--温丽的推测
rwtTask[tMainTask.Task9] = {}
rwtTask[tMainTask.Task9]["Title"]= tLuaText[LANGUAGE_CONFIG][21581]
rwtTask[tMainTask.Task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMainTask.Task9]["PreTaskId"] = tMainTask.Task8
rwtTask[tMainTask.Task9]["NextTaskId"]= tMainTask.Task10
rwtTask[tMainTask.Task9]["DialogId"]= tDialogId.Task9
rwtTask[tMainTask.Task9]["ReqTrap1"] = tTrap.Trap5
rwtTask[tMainTask.Task9]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task9]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task9]["DynaNpcGroupGen"][1]["GenId"] = tTrapGenId.Trap5
rwtTask[tMainTask.Task9]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainTask.Task9]["StartAutoWay"] = {}
rwtTask[tMainTask.Task9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task9]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task9]["StartAutoWay"]["FindWayGroupId"] = tTrap.Trap5
rwtTask[tMainTask.Task9]["StartAutoWay"]["FindWayGenId"] = tTrapGenId.Trap5

--调查线索
rwtTask[tMainTask.Task10] = {}
rwtTask[tMainTask.Task10]["Title"] = tLuaText[LANGUAGE_CONFIG][21581]
rwtTask[tMainTask.Task10]["PreTaskId"] = tMainTask.Task9
rwtTask[tMainTask.Task10]["NextTaskId"] = tMainTask.Task11
rwtTask[tMainTask.Task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMainTask.Task10]["DialogId"] = tDialogId.Task10
rwtTask[tMainTask.Task10]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task10]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task10]["DynaNpcGroupGen"][1]["GenId"] = tCollectGenId.Collect2
rwtTask[tMainTask.Task10]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
                      
rwtTask[tMainTask.Task10]["ReqCollectId1"] = tCollect.Collect2
rwtTask[tMainTask.Task10]["ReqCollectCount1"] = 1
                      
rwtTask[tMainTask.Task10]["StartAutoWay"] = {}
rwtTask[tMainTask.Task10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task10]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task10]["StartAutoWay"]["FindWayGroupId"] = tCollect.Collect2
rwtTask[tMainTask.Task10]["StartAutoWay"]["FindWayGenId"] = tCollectGenId.Collect2

--调查线索
rwtTask[tMainTask.Task11] = {}
rwtTask[tMainTask.Task11]["Title"] = tLuaText[LANGUAGE_CONFIG][21581]
rwtTask[tMainTask.Task11]["PreTaskId"] = tMainTask.Task10
rwtTask[tMainTask.Task11]["NextTaskId"] = tMainTask.Task12
rwtTask[tMainTask.Task11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMainTask.Task11]["DialogId"] = tDialogId.Task11
rwtTask[tMainTask.Task11]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task11]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task11]["DynaNpcGroupGen"][1]["GenId"] = tCollectGenId.Collect3
rwtTask[tMainTask.Task11]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
                       
rwtTask[tMainTask.Task11]["ReqCollectId1"] = tCollect.Collect3
rwtTask[tMainTask.Task11]["ReqCollectCount1"] = 1
                       
rwtTask[tMainTask.Task11]["StartAutoWay"] = {}
rwtTask[tMainTask.Task11]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task11]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task11]["StartAutoWay"]["FindWayGroupId"] = tCollect.Collect3
rwtTask[tMainTask.Task11]["StartAutoWay"]["FindWayGenId"] = tCollectGenId.Collect3

--跟随光的指引
rwtTask[tMainTask.Task12] = {}
rwtTask[tMainTask.Task12]["Title"] =tLuaText[LANGUAGE_CONFIG][21581]
rwtTask[tMainTask.Task12]["PreTaskId"] = tMainTask.Task11
rwtTask[tMainTask.Task12]["NextTaskId"] =tMainTask.Task13
rwtTask[tMainTask.Task12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMainTask.Task12]["DialogId"] = tDialogId.Task12
rwtTask[tMainTask.Task12]["ReqTrap1"] = tTrap.Trap6
rwtTask[tMainTask.Task12]["AutoTaskDialog"] = tDialogId.Task12
                      
rwtTask[tMainTask.Task12]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task12]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task12]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.MonsterGroup3
rwtTask[tMainTask.Task12]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tMainTask.Task12]["DynaNpcGroupGen"][2] = {}
rwtTask[tMainTask.Task12]["DynaNpcGroupGen"][2]["GenId"] = tTrapGenId.Trap6
rwtTask[tMainTask.Task12]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tMainTask.Task12]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
                      
rwtTask[tMainTask.Task12]["MonsterGroupGenId"] = tMonsterGroupGenId.MonsterGroup3
rwtTask[tMainTask.Task12]["KillMonsterGroup1" ]= tMonsterGroup.MonsterGroup3

--调查线索
rwtTask[tMainTask.Task13] = {}
rwtTask[tMainTask.Task13]["Title"] = tLuaText[LANGUAGE_CONFIG][21581]
rwtTask[tMainTask.Task13]["PreTaskId"] = tMainTask.Task12
rwtTask[tMainTask.Task13]["NextTaskId"] = tMainTask.Task14
rwtTask[tMainTask.Task13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMainTask.Task13]["DialogId"] = tDialogId.Task13
rwtTask[tMainTask.Task13]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task13]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task13]["DynaNpcGroupGen"][1]["GenId"] = tCollectGenId.Collect4
rwtTask[tMainTask.Task13]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
                       
rwtTask[tMainTask.Task13]["ReqCollectId1"] = tCollect.Collect4
rwtTask[tMainTask.Task13]["ReqCollectCount1"] = 1
                       
rwtTask[tMainTask.Task13]["StartAutoWay"] = {}
rwtTask[tMainTask.Task13]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task13]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task13]["StartAutoWay"]["FindWayGroupId"] = tCollect.Collect4
rwtTask[tMainTask.Task13]["StartAutoWay"]["FindWayGenId"] = tCollectGenId.Collect4

--光的背后
rwtTask[tMainTask.Task14] = {}
rwtTask[tMainTask.Task14]["Title"]= tLuaText[LANGUAGE_CONFIG][21581]
rwtTask[tMainTask.Task14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMainTask.Task14]["PreTaskId"] = tMainTask.Task13
rwtTask[tMainTask.Task14]["NextTaskId"]= tMainTask.Task15
rwtTask[tMainTask.Task14]["DialogId"]= tDialogId.Task14
rwtTask[tMainTask.Task14]["AutoTaskDialog"] = tDialogId.Task14
rwtTask[tMainTask.Task14]["ReqTrap1"] = tTrap.Trap7
rwtTask[tMainTask.Task14]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task14]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task14]["DynaNpcGroupGen"][1]["GenId"] = tTrapGenId.Trap7
rwtTask[tMainTask.Task14]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tMainTask.Task14]["UnlockCopyMap1"] = nCopyMap_BoShi

rwtTask[tMainTask.Task14]["Awards"] = {}
rwtTask[tMainTask.Task14]["Awards"]["Events"] = {}
rwtTask[tMainTask.Task14]["Awards"]["Events"][1] = {}
rwtTask[tMainTask.Task14]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMainTask.Task14]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMainTask.Task14]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task14
rwtTask[tMainTask.Task14]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMainTask.Task14]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMainTask.Task14

------------------------最后的话----------------------
--调查线索
rwtTask[tMainTask.Task15] = {}
rwtTask[tMainTask.Task15]["Title"] = tLuaText[LANGUAGE_CONFIG][21582]
rwtTask[tMainTask.Task15]["PreTaskId"] = tMainTask.Task14
rwtTask[tMainTask.Task15]["NextTaskId"] = tMainTask.Task16
rwtTask[tMainTask.Task15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tMainTask.Task15]["OpenCopyMap"] = nCopyMap_BoShi
rwtTask[tMainTask.Task15]["IsClickComplete"] = 1
rwtTask[tMainTask.Task15]["PassCopyMap1"] = nCopyMap_BoShi
rwtTask[tMainTask.Task15]["PassCopyMapCount1"] = 1
                      
rwtTask[tMainTask.Task15]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task15]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task15]["DynaNpcGroupGen"][1]["GenId"] = nCopyMap_BoShi_GenId
rwtTask[tMainTask.Task15]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
                       
rwtTask[tMainTask.Task15]["StartAutoWay"] = {}
rwtTask[tMainTask.Task15]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMainTask.Task15]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task15]["StartAutoWay"]["FindWayPos"] = tPos.BoShi

--小心，有伏击
rwtTask[tMainTask.Task16] = {}
rwtTask[tMainTask.Task16]["Title"] =tLuaText[LANGUAGE_CONFIG][21582]
rwtTask[tMainTask.Task16]["PreTaskId"] = tMainTask.Task15
rwtTask[tMainTask.Task16]["NextTaskId"] =tMainTask.Task17
rwtTask[tMainTask.Task16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMainTask.Task16]["DialogId"] = tDialogId.Task16
rwtTask[tMainTask.Task16]["ReqTrap1"] = tTrap.Trap8
                      
rwtTask[tMainTask.Task16]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task16]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task16]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.MonsterGroup4
rwtTask[tMainTask.Task16]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tMainTask.Task16]["DynaNpcGroupGen"][2] = {}
rwtTask[tMainTask.Task16]["DynaNpcGroupGen"][2]["GenId"] = tTrapGenId.Trap8
rwtTask[tMainTask.Task16]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tMainTask.Task16]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
                      
rwtTask[tMainTask.Task16]["MonsterGroupGenId"] = tMonsterGroupGenId.MonsterGroup4
rwtTask[tMainTask.Task16]["KillMonsterGroup1" ]= tMonsterGroup.MonsterGroup4
                      
rwtTask[tMainTask.Task16]["StartAutoWay"] = {}
rwtTask[tMainTask.Task16]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMainTask.Task16]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task16]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.MonsterGroup4
rwtTask[tMainTask.Task16]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.MonsterGroup4

--调查线索
rwtTask[tMainTask.Task17] = {}
rwtTask[tMainTask.Task17]["Title"] = tLuaText[LANGUAGE_CONFIG][21582]
rwtTask[tMainTask.Task17]["PreTaskId"] = tMainTask.Task16
rwtTask[tMainTask.Task17]["NextTaskId"] = tMainTask.Task18
rwtTask[tMainTask.Task17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMainTask.Task17]["DialogId"] = tDialogId.Task17
rwtTask[tMainTask.Task17]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task17]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task17]["DynaNpcGroupGen"][1]["GenId"] = tCollectGenId.Collect5
rwtTask[tMainTask.Task17]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
                       
rwtTask[tMainTask.Task17]["ReqCollectId1"] = tCollect.Collect5
rwtTask[tMainTask.Task17]["ReqCollectCount1"] = 1
                       
rwtTask[tMainTask.Task17]["StartAutoWay"] = {}
rwtTask[tMainTask.Task17]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task17]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task17]["StartAutoWay"]["FindWayGroupId"] = tCollect.Collect5
rwtTask[tMainTask.Task17]["StartAutoWay"]["FindWayGenId"] = tCollectGenId.Collect5

rwtTask[tMainTask.Task17]["Awards"] = {}
rwtTask[tMainTask.Task17]["Awards"]["Events"] = {}
rwtTask[tMainTask.Task17]["Awards"]["Events"][1] = {}
rwtTask[tMainTask.Task17]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMainTask.Task17]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMainTask.Task17]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task17
rwtTask[tMainTask.Task17]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMainTask.Task17]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMainTask.Task17

------------------------博士的意志----------------------
--激活浮士德72
rwtTask[tMainTask.Task18] = {}
rwtTask[tMainTask.Task18]["Title"] = tLuaText[LANGUAGE_CONFIG][21583]
rwtTask[tMainTask.Task18]["PreTaskId"] = tMainTask.Task17
rwtTask[tMainTask.Task18]["NextTaskId"] = tMainTask.Task30
rwtTask[tMainTask.Task18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainTask.Task18]["DialogId"] = tDialogId.Task18
rwtTask[tMainTask.Task18]["TaskNpc"] = tNpc.Npc1

rwtTask[tMainTask.Task18]["UnlockCopyMap1"] = nCopyMap_HuangJin
                      
rwtTask[tMainTask.Task18]["StartAutoWay"] = {}
rwtTask[tMainTask.Task18]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task18]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task18]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.Npc1
rwtTask[tMainTask.Task18]["StartAutoWay"]["FindWayGenId"] = tSingleNpcGenId.Npc1

--达到54级
rwtTask[tMainTask.Task30] = {}
rwtTask[tMainTask.Task30]["Title"] = tLuaText[LANGUAGE_CONFIG][21583]
rwtTask[tMainTask.Task30]["PreTaskId"] = tMainTask.Task18
rwtTask[tMainTask.Task30]["NextTaskId"] = tMainTask.Task19
rwtTask[tMainTask.Task30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
rwtTask[tMainTask.Task30]["NeedLevel"] = 54
rwtTask[tMainTask.Task30]["LackDialogId"] = tDialogId.LockLev
rwtTask[tMainTask.Task30]["DialogId"] = tDialogId.UnLockLev

--前往黄金立方
rwtTask[tMainTask.Task19] = {}
rwtTask[tMainTask.Task19]["Title"] = tLuaText[LANGUAGE_CONFIG][21583]
rwtTask[tMainTask.Task19]["PreTaskId"] = tMainTask.Task30
rwtTask[tMainTask.Task19]["NextTaskId"] = tMainTask.Task28
rwtTask[tMainTask.Task19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tMainTask.Task19]["OpenCopyMap"] = nCopyMap_HuangJin
rwtTask[tMainTask.Task19]["IsClickComplete"] = 1
rwtTask[tMainTask.Task19]["PassCopyMap1"] = nCopyMap_HuangJin
rwtTask[tMainTask.Task19]["PassCopyMapCount1"] = 1

rwtTask[tMainTask.Task19]["StartAutoWay"] = {}
rwtTask[tMainTask.Task19]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMainTask.Task19]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task19]["StartAutoWay"]["FindWayPos"] = tPos.HuangJin

rwtTask[tMainTask.Task19]["Awards"] = {}
rwtTask[tMainTask.Task19]["Awards"]["Events"] = {}
rwtTask[tMainTask.Task19]["Awards"]["Events"][1] = {}
rwtTask[tMainTask.Task19]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMainTask.Task19]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMainTask.Task19]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task19
rwtTask[tMainTask.Task19]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMainTask.Task19]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMainTask.Task19

------------------------说个秘密给你听----------------------
--讨论下一步计划
rwtTask[tMainTask.Task28] = {}
rwtTask[tMainTask.Task28]["Title"] =tLuaText[LANGUAGE_CONFIG][21584]
rwtTask[tMainTask.Task28]["PreTaskId"] = tMainTask.Task19
rwtTask[tMainTask.Task28]["NextTaskId"] =tMainTask.Task29
rwtTask[tMainTask.Task28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMainTask.Task28]["DialogId"] = tDialogId.Task28
rwtTask[tMainTask.Task28]["ReqTrap1"] = tTrap.Trap10
                      
rwtTask[tMainTask.Task28]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task28]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task28]["DynaNpcGroupGen"][1]["GenId"] = tTrapGenId.Trap10
rwtTask[tMainTask.Task28]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
           
rwtTask[tMainTask.Task28]["StartAutoWay"] = {}
rwtTask[tMainTask.Task28]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task28]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task28]["StartAutoWay"]["FindWayGroupId"] = tTrap.Trap10
rwtTask[tMainTask.Task28]["StartAutoWay"]["FindWayGenId"] = tTrapGenId.Trap10

--圣界“内讧”
rwtTask[tMainTask.Task29] = {}
rwtTask[tMainTask.Task29]["Title"] =tLuaText[LANGUAGE_CONFIG][21584]
rwtTask[tMainTask.Task29]["PreTaskId"] = tMainTask.Task28
rwtTask[tMainTask.Task29]["NextTaskId"] =tMainTask.Task20
rwtTask[tMainTask.Task29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMainTask.Task29]["DialogId"] = tDialogId.Task29
rwtTask[tMainTask.Task29]["ReqTrap1"] = tTrap.Trap10

rwtTask[tMainTask.Task29]["AutoTaskDialog"] = tDialogId.Task29
                       
rwtTask[tMainTask.Task29]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task29]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task29]["DynaNpcGroupGen"][1]["GenId"] = tTrapGenId.Trap10
rwtTask[tMainTask.Task29]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task29]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

--rwtTask[tMainTask.Task29]["StartAutoWay"] = {}
--rwtTask[tMainTask.Task29]["StartAutoWay"]["FindWayTypeId"] = 0
--rwtTask[tMainTask.Task29]["StartAutoWay"]["FindWayMapId"] = 2005
--rwtTask[tMainTask.Task29]["StartAutoWay"]["FindWayGroupId"] = tTrap.Trap10
--rwtTask[tMainTask.Task29]["StartAutoWay"]["FindWayGenId"] = tTrapGenId.Trap10

--兰奇的秘密
rwtTask[tMainTask.Task20] = {}
rwtTask[tMainTask.Task20]["Title"] = tLuaText[LANGUAGE_CONFIG][21584]
rwtTask[tMainTask.Task20]["PreTaskId"] = tMainTask.Task19
rwtTask[tMainTask.Task20]["NextTaskId"] = tMainTask.Task21
rwtTask[tMainTask.Task20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainTask.Task20]["DialogId"] = tDialogId.Task20
rwtTask[tMainTask.Task20]["TaskNpc"] = tNpc.Npc2
                       
rwtTask[tMainTask.Task20]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task20]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task20]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpcGenId.Npc3
rwtTask[tMainTask.Task20]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
                       
rwtTask[tMainTask.Task20]["StartAutoWay"] = {}
rwtTask[tMainTask.Task20]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task20]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task20]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.Npc3
rwtTask[tMainTask.Task20]["StartAutoWay"]["FindWayGenId"] = tSingleNpcGenId.Npc3


--机器人的眼泪
rwtTask[tMainTask.Task21] = {}
rwtTask[tMainTask.Task21]["Title"] = tLuaText[LANGUAGE_CONFIG][21584]
rwtTask[tMainTask.Task21]["PreTaskId"] = tMainTask.Task20
rwtTask[tMainTask.Task21]["NextTaskId"] = tMainTask.Task22
rwtTask[tMainTask.Task21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainTask.Task21]["DialogId"] = tDialogId.Task21
rwtTask[tMainTask.Task21]["TaskNpc"] = tNpc.Npc1
                       
rwtTask[tMainTask.Task21]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task21]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task21]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpcGenId.Npc2
rwtTask[tMainTask.Task21]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
                      
                      
rwtTask[tMainTask.Task21]["StartAutoWay"] = {}
rwtTask[tMainTask.Task21]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task21]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task21]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.Npc2
rwtTask[tMainTask.Task21]["StartAutoWay"]["FindWayGenId"] = tSingleNpcGenId.Npc2

rwtTask[tMainTask.Task21]["Awards"] = {}
rwtTask[tMainTask.Task21]["Awards"]["Events"] = {}
rwtTask[tMainTask.Task21]["Awards"]["Events"][1] = {}
rwtTask[tMainTask.Task21]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMainTask.Task21]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMainTask.Task21]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task21
rwtTask[tMainTask.Task21]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMainTask.Task21]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMainTask.Task21
------------------------动员大会----------------------
--浮士德72的决定
rwtTask[tMainTask.Task22] = {}
rwtTask[tMainTask.Task22]["Title"] = tLuaText[LANGUAGE_CONFIG][21585]
rwtTask[tMainTask.Task22]["PreTaskId"] = tMainTask.Task21
rwtTask[tMainTask.Task22]["NextTaskId"] = tMainTask.Task23
rwtTask[tMainTask.Task22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainTask.Task22]["DialogId"] = tDialogId.Task22
rwtTask[tMainTask.Task22]["TaskNpc"] = tNpc.Npc1

rwtTask[tMainTask.Task22]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task22]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task22]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpcGenId.Npc2
rwtTask[tMainTask.Task22]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
                      
                       
rwtTask[tMainTask.Task22]["StartAutoWay"] = {}
rwtTask[tMainTask.Task22]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task22]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task22]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.Npc2
rwtTask[tMainTask.Task22]["StartAutoWay"]["FindWayGenId"] = tSingleNpcGenId.Npc2

--联军集结
rwtTask[tMainTask.Task23] = {}
rwtTask[tMainTask.Task23]["Title"]= tLuaText[LANGUAGE_CONFIG][21585]
rwtTask[tMainTask.Task23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainTask.Task23]["PreTaskId"] = tMainTask.Task22
rwtTask[tMainTask.Task23]["NextTaskId"]= tMainTask.Task24
rwtTask[tMainTask.Task23]["DialogId"]= tDialogId.Task23
rwtTask[tMainTask.Task23]["TaskNpc"] = tNpc.Npc8

rwtTask[tMainTask.Task23]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpcGenId.Npc8
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][2] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpcGenId.Npc9
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][3] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpcGenId.Npc9
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][3]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][4] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][4]["GenId"] = tSingleNpcGenId.Npc10
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][4]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][5] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][5]["GenId"] = tSingleNpcGenId.Npc11
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][5]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][6] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][6]["GenId"] = tSingleNpcGenId.Npc12
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][6]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][6]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][7] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][7]["GenId"] = tSingleNpcGenId.Npc13
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][7]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][7]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][8] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][8]["GenId"] = tSingleNpcGenId.Npc14
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][8]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][8]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][9] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][9]["GenId"] = tSingleNpcGenId.Npc15
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][9]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][9]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][10] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][10]["GenId"] = tSingleNpcGenId.Npc16
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][10]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][10]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][11] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][11]["GenId"] = tSingleNpcGenId.Npc17
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][11]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][11]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][12] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][12]["GenId"] = tSingleNpcGenId.Npc18
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][12]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][12]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][13] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][13]["GenId"] = tSingleNpcGenId.Npc19
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][13]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][13]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][14] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][14]["GenId"] = tSingleNpcGenId.Npc20
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][14]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][14]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][15] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][15]["GenId"] = tSingleNpcGenId.Npc21
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][15]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][15]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][16] = {}
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][16]["GenId"] = tSingleNpcGenId.Npc22
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][16]["MapId"] = 2005
rwtTask[tMainTask.Task23]["DynaNpcGroupGen"][16]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tMainTask.Task23]["StartAutoWay"] = {}
rwtTask[tMainTask.Task23]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task23]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task23]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.Npc8
rwtTask[tMainTask.Task23]["StartAutoWay"]["FindWayGenId"] = tSingleNpcGenId.Npc8

--女王的宣言
rwtTask[tMainTask.Task24] = {}
rwtTask[tMainTask.Task24]["Title"]= tLuaText[LANGUAGE_CONFIG][21585]
rwtTask[tMainTask.Task24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainTask.Task24]["PreTaskId"] = tMainTask.Task23
rwtTask[tMainTask.Task24]["NextTaskId"]= tMainTask.NextTask
rwtTask[tMainTask.Task24]["DialogId"]= tDialogId.Task24
rwtTask[tMainTask.Task24]["TaskNpc"] = tNpc.Npc8
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpcGenId.Npc8
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][2] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpcGenId.Npc9
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][3] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpcGenId.Npc10
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][3]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][4] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][4]["GenId"] = tSingleNpcGenId.Npc11
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][4]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][5] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][5]["GenId"] = tSingleNpcGenId.Npc12
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][5]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][6] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][6]["GenId"] = tSingleNpcGenId.Npc13
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][6]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][6]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][7] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][7]["GenId"] = tSingleNpcGenId.Npc14
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][7]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][7]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][8] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][8]["GenId"] = tSingleNpcGenId.Npc15
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][8]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][8]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][9] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][9]["GenId"] = tSingleNpcGenId.Npc16
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][9]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][9]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][10] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][10]["GenId"] = tSingleNpcGenId.Npc17
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][10]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][10]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][11] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][11]["GenId"] = tSingleNpcGenId.Npc18
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][11]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][11]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][12] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][12]["GenId"] = tSingleNpcGenId.Npc19
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][12]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][12]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][13] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][13]["GenId"] = tSingleNpcGenId.Npc20
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][13]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][13]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][14] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][14]["GenId"] = tSingleNpcGenId.Npc21
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][14]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][14]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][15] = {}
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][15]["GenId"] = tSingleNpcGenId.Npc22
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][15]["MapId"] = 2005
rwtTask[tMainTask.Task24]["DynaNpcGroupGen"][15]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tMainTask.Task24]["StartAutoWay"] = {}
rwtTask[tMainTask.Task24]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainTask.Task24]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tMainTask.Task24]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.Npc8
rwtTask[tMainTask.Task24]["StartAutoWay"]["FindWayGenId"] = tSingleNpcGenId.Npc8

rwtTask[tMainTask.Task24]["Awards"] = {}
rwtTask[tMainTask.Task24]["Awards"]["Events"] = {}
rwtTask[tMainTask.Task24]["Awards"]["Events"][1] = {}
rwtTask[tMainTask.Task24]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMainTask.Task24]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMainTask.Task24]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task24
rwtTask[tMainTask.Task24]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMainTask.Task24]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMainTask.Task24
rwtTask[tMainTask.Task24]["OpenMercenaryTask"] = {}
rwtTask[tMainTask.Task24]["OpenMercenaryTask"]["AreaId"] = 2005
rwtTask[tMainTask.Task24]["OpenMercenaryTask"]["TownId"] = 200505--解锁口袋岛佣兵


