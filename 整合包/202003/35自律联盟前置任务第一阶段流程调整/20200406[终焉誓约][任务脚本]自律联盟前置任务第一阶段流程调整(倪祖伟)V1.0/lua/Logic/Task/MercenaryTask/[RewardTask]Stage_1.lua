--region [RewardTask]Stage_1.lua
--Purpose:		悬赏任务第一期
--Creator: 		孟志远
--Created:		2019-02-26
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-04-01 $
--RCS-ID:		$Revision: 7 $
--endregion

--********************数据定义**************************
-------任务id-------
local tRewardTask = {}
--沙海苍鹰
tRewardTask.Task1 = 40132
--暗夜魔导师
tRewardTask.Task2 = 40133
--审判侍从
tRewardTask.Task3 = 40134
--荒漠领主
tRewardTask.Task4 = 40135
--迷梦蛛王
tRewardTask.Task5 = 40136
--梦魇女巫
tRewardTask.Task6 = 40137
--莽荒战神
tRewardTask.Task7 = 40138
--妖媚舞姬
tRewardTask.Task8 = 40139
--枯骨毒蜂
tRewardTask.Task9 = 40140
--骑士副官
tRewardTask.Task10 = 40141
--石翼暴君
tRewardTask.Task11 = 40142
--邪灵法师
tRewardTask.Task12 = 40143
--丧魂暴君
tRewardTask.Task13 = 40144
--秘巫使徒
tRewardTask.Task14 = 40145
--恶魔之子
tRewardTask.Task15 = 40146
--熊人首领
tRewardTask.Task16 = 40147
--战魂统领
tRewardTask.Task17 = 40148
--赤角狂兽
tRewardTask.Task18 = 40149
--爆炎男爵
tRewardTask.Task19 = 40150
--欲望男爵
tRewardTask.Task20 = 40151
--暮夜蜂王
tRewardTask.Task21 = 40152
--狂战指挥官
tRewardTask.Task22 = 40153
--尖啸游隼
tRewardTask.Task23 = 40154
--狂乱研究者
tRewardTask.Task24 = 40155
--暗幕蝎王
tRewardTask.Task25 = 40156
--深渊领主
tRewardTask.Task26 = 40157
--暗黑骑士长
tRewardTask.Task27 = 40158
--魅魔使徒
tRewardTask.Task28 = 40159
--铁骑领主
tRewardTask.Task29 = 40160
--枭鹰霸主
tRewardTask.Task30 = 40161



local tRewardTaskFinish = {}
--沙海苍鹰
tRewardTaskFinish.Task1 = 40162
--暗夜魔导师
tRewardTaskFinish.Task2 = 40163
--审判侍从
tRewardTaskFinish.Task3 = 40164
--荒漠领主
tRewardTaskFinish.Task4 = 40165
--迷梦蛛王
tRewardTaskFinish.Task5 = 40166
--梦魇女巫
tRewardTaskFinish.Task6 = 40167
--莽荒战神
tRewardTaskFinish.Task7 = 40168
--妖媚舞姬
tRewardTaskFinish.Task8 = 40169
--枯骨毒蜂
tRewardTaskFinish.Task9 = 40170
--骑士副官
tRewardTaskFinish.Task10 = 40171
--石翼暴君
tRewardTaskFinish.Task11 = 40172
--邪灵法师
tRewardTaskFinish.Task12 = 40173
--丧魂暴君
tRewardTaskFinish.Task13 = 40174
--秘巫使徒
tRewardTaskFinish.Task14 = 40175
--恶魔之子
tRewardTaskFinish.Task15 = 40176
--熊人首领
tRewardTaskFinish.Task16 = 40177
--战魂统领
tRewardTaskFinish.Task17 = 40178
--赤角狂兽
tRewardTaskFinish.Task18 = 40179
--爆炎男爵
tRewardTaskFinish.Task19 = 40180
--欲望男爵
tRewardTaskFinish.Task20 = 40181
--暮夜蜂王
tRewardTaskFinish.Task21 = 40182
--狂战指挥官
tRewardTaskFinish.Task22 = 40183
--尖啸游隼
tRewardTaskFinish.Task23 = 40184
--狂乱研究者
tRewardTaskFinish.Task24 = 40185
--暗幕蝎王
tRewardTaskFinish.Task25 = 40186
--深渊领主
tRewardTaskFinish.Task26 = 40187
--暗黑骑士长
tRewardTaskFinish.Task27 = 40188
--魅魔使徒
tRewardTaskFinish.Task28 = 40189
--铁骑领主
tRewardTaskFinish.Task29 = 40190
--枭鹰霸主
tRewardTaskFinish.Task30 = 40191


--接受任务对白
local tAcceptDialog = {}
--沙海苍鹰
tAcceptDialog.Task1 = 12301
--暗夜魔导师
tAcceptDialog.Task2 = 12302
--审判侍从
tAcceptDialog.Task3 = 12303
--荒漠领主
tAcceptDialog.Task4 = 12304
--迷梦蛛王
tAcceptDialog.Task5 = 12305
--梦魇女巫
tAcceptDialog.Task6 = 12306
--莽荒战神
tAcceptDialog.Task7 = 12307
--妖媚舞姬
tAcceptDialog.Task8 = 12308
--枯骨毒蜂
tAcceptDialog.Task9 = 12309
--骑士副官
tAcceptDialog.Task10 = 12310
--石翼暴君             
tAcceptDialog.Task11 = 12311
--邪灵法师             
tAcceptDialog.Task12 = 12312
--丧魂暴君             
tAcceptDialog.Task13 = 12313
--秘巫使徒             
tAcceptDialog.Task14 = 12314
--恶魔之子             
tAcceptDialog.Task15 = 12315
--熊人首领             
tAcceptDialog.Task16 = 12316
--战魂统领             
tAcceptDialog.Task17 = 12317
--赤角狂兽             
tAcceptDialog.Task18 = 12318
--爆炎男爵             
tAcceptDialog.Task19 = 12319
--欲望男爵             
tAcceptDialog.Task20 = 12320
--暮夜蜂王             
tAcceptDialog.Task21 = 12321
--狂战指挥官           
tAcceptDialog.Task22 = 12322
--尖啸游隼             
tAcceptDialog.Task23 = 12323
--狂乱研究者           
tAcceptDialog.Task24 = 12324
--暗幕蝎王             
tAcceptDialog.Task25 = 12325
--深渊领主             
tAcceptDialog.Task26 = 12326
--暗黑骑士长           
tAcceptDialog.Task27 = 12327
--魅魔使徒             
tAcceptDialog.Task28 = 12328
--铁骑领主             
tAcceptDialog.Task29 = 12329
--枭鹰霸主             
tAcceptDialog.Task30 = 12330

--完成任务对白
local tFinishDialog = {}
--沙海苍鹰
tFinishDialog.Task1 = 12331
--暗夜魔导师
tFinishDialog.Task2 = 12332
--审判侍从
tFinishDialog.Task3 = 12333
--荒漠领主
tFinishDialog.Task4 = 12334
--迷梦蛛王
tFinishDialog.Task5 = 12335
--梦魇女巫
tFinishDialog.Task6 = 12336
--莽荒战神
tFinishDialog.Task7 = 12337
--妖媚舞姬
tFinishDialog.Task8 = 12338
--枯骨毒蜂
tFinishDialog.Task9 = 12339
--骑士副官
tFinishDialog.Task10 = 12340
--石翼暴君
tFinishDialog.Task11 = 12341
--邪灵法师
tFinishDialog.Task12 = 12342
--丧魂暴君
tFinishDialog.Task13 = 12343
--秘巫使徒
tFinishDialog.Task14 = 12344
--恶魔之子
tFinishDialog.Task15 = 12345
--熊人首领
tFinishDialog.Task16 = 12346
--战魂统领
tFinishDialog.Task17 = 12347
--赤角狂兽
tFinishDialog.Task18 = 12348
--爆炎男爵
tFinishDialog.Task19 = 12349
--欲望男爵
tFinishDialog.Task20 = 12350
--暮夜蜂王
tFinishDialog.Task21 = 12351
--狂战指挥官
tFinishDialog.Task22 = 12352
--尖啸游隼
tFinishDialog.Task23 = 12353
--狂乱研究者
tFinishDialog.Task24 = 12354
--暗幕蝎王
tFinishDialog.Task25 = 12355
--深渊领主
tFinishDialog.Task26 = 12356
--暗黑骑士长
tFinishDialog.Task27 = 12357
--魅魔使徒
tFinishDialog.Task28 = 12358
--铁骑领主
tFinishDialog.Task29 = 12359
--枭鹰霸主
tFinishDialog.Task30 = 12360


----------第一场战斗前陷阱对白
local nBeforeBattleDialog_Task1 = 12361
--动画对白
local tCgDialog = {12720,12721}
--怪物战前对白
local nBeforeBattleDialog_Task11 = 12825
----------------NPCid----------------------
local tNpcId = {}

----铁臂安道夫(已有NPC)
--tNpcId[1] = 3005
--吉拉(已有NPC)
tNpcId[1] = 3042
----------------NPC组----------------------
--陷阱
local nTrap_1 = 30632
local nTrap_GenId_1 = 20010208

--NPC
local tNpcGroup = {}
local tNpcGroupGenId = {}

----铁臂安道夫(已有NPC)
--tNpcGroup[1] = 20112
--tNpcGroupGenId[1] = 2001655
--吉拉(已有NPC)
tNpcGroup[1] = 20114
tNpcGroupGenId[1] = 2001657

----------------monsterGroup----------------------
local tMonsterGroup = {}
local tMonsterGroupGenId = {}

--沙海苍鹰
tMonsterGroup.Task1 = 900469
--暗夜魔导师
tMonsterGroup.Task2 = 900470
--审判侍从
tMonsterGroup.Task3 = 900471
--荒漠领主
tMonsterGroup.Task4 = 900472
--迷梦蛛王
tMonsterGroup.Task5 = 900473
--梦魇女巫
tMonsterGroup.Task6 = 900474
--莽荒战神
tMonsterGroup.Task7 = 900475
--妖媚舞姬
tMonsterGroup.Task8 = 900476
--枯骨毒蜂
tMonsterGroup.Task9 = 900477
--骑士副官
tMonsterGroup.Task10 = 900478
--石翼暴君
tMonsterGroup.Task11 = 900479
--邪灵法师
tMonsterGroup.Task12 = 900480
--丧魂暴君
tMonsterGroup.Task13 = 900481
--秘巫使徒
tMonsterGroup.Task14 = 900482
--恶魔之子
tMonsterGroup.Task15 = 900483
--熊人首领
tMonsterGroup.Task16 = 900484
--战魂统领
tMonsterGroup.Task17 = 900485
--赤角狂兽
tMonsterGroup.Task18 = 900486
--爆炎男爵
tMonsterGroup.Task19 = 900487
--欲望男爵
tMonsterGroup.Task20 = 900488
--暮夜蜂王
tMonsterGroup.Task21 = 900489
--狂战指挥官
tMonsterGroup.Task22 = 900490
--尖啸游隼
tMonsterGroup.Task23 = 900491
--狂乱研究者 
tMonsterGroup.Task24 = 900492
--暗幕蝎王
tMonsterGroup.Task25 = 900493
--深渊领主
tMonsterGroup.Task26 = 900494
--暗黑骑士长
tMonsterGroup.Task27 = 900495
--魅魔使徒
tMonsterGroup.Task28 = 900496
--铁骑领主
tMonsterGroup.Task29 = 900497
--枭鹰霸主
tMonsterGroup.Task30 = 900498



--沙海苍鹰
tMonsterGroupGenId.Task1 = 20010209
--暗夜魔导师
tMonsterGroupGenId.Task2 = 20010210
--审判侍从
tMonsterGroupGenId.Task3 = 20010211
--荒漠领主
tMonsterGroupGenId.Task4 = 20010212
--迷梦蛛王
tMonsterGroupGenId.Task5 = 20010213
--梦魇女巫
tMonsterGroupGenId.Task6 = 20010214
--莽荒战神
tMonsterGroupGenId.Task7 = 20010215
--妖媚舞姬
tMonsterGroupGenId.Task8 = 20010216
--枯骨毒蜂
tMonsterGroupGenId.Task9 = 20010217
--骑士副官
tMonsterGroupGenId.Task10 = 20010218
--石翼暴君
tMonsterGroupGenId.Task11 = 20010219
--邪灵法师
tMonsterGroupGenId.Task12 = 20010220
--丧魂暴君
tMonsterGroupGenId.Task13 = 20010221
--秘巫使徒
tMonsterGroupGenId.Task14 = 20010222
--恶魔之子
tMonsterGroupGenId.Task15 = 20010223
--熊人首领
tMonsterGroupGenId.Task16 = 20010224
--战魂统领
tMonsterGroupGenId.Task17 = 20010225
--赤角狂兽
tMonsterGroupGenId.Task18 = 20010226
--爆炎男爵
tMonsterGroupGenId.Task19 = 20010227
--欲望男爵
tMonsterGroupGenId.Task20 = 20010228
--暮夜蜂王
tMonsterGroupGenId.Task21 = 20010229
--狂战指挥官
tMonsterGroupGenId.Task22 = 20010230
--尖啸游隼
tMonsterGroupGenId.Task23 = 20010231
--狂乱研究者
tMonsterGroupGenId.Task24 = 20010232
--暗幕蝎王
tMonsterGroupGenId.Task25 = 20010233
--深渊领主
tMonsterGroupGenId.Task26 = 20010234
--暗黑骑士长
tMonsterGroupGenId.Task27 = 20010235
--魅魔使徒
tMonsterGroupGenId.Task28 = 20010236
--铁骑领主
tMonsterGroupGenId.Task29 = 20010237
--枭鹰霸主
tMonsterGroupGenId.Task30 = 20010238
---------monsterid--------
----id:9000451-9000512
--local tMonster = {}

--需要替换野怪的悬赏怪genid
local tReplaceMonsterGroupGen = {}

tReplaceMonsterGroupGen.Task5 = 2001556
tReplaceMonsterGroupGen.Task8 = 2001563
tReplaceMonsterGroupGen.Task12 = 2001566
tReplaceMonsterGroupGen.Task15 = 2001553
tReplaceMonsterGroupGen.Task18 = 2001567
tReplaceMonsterGroupGen.Task21 = 2001564
tReplaceMonsterGroupGen.Task23 = 2001548
tReplaceMonsterGroupGen.Task27 = 2001565

--怪物组id
local tReplaceMonsterGroup = {}
tReplaceMonsterGroup.Task5 = 300046
tReplaceMonsterGroup.Task8 = 300073
tReplaceMonsterGroup.Task12 = 300076
tReplaceMonsterGroup.Task15 = 300032
tReplaceMonsterGroup.Task18 = 300078
tReplaceMonsterGroup.Task21 = 300074
tReplaceMonsterGroup.Task23 = 300025
tReplaceMonsterGroup.Task27 = 300075
----------奖励id------------
local tAwardId = {}

----通用任务奖励
--tAwardId.NormalTask = 2000387
--第一个任务奖励
tAwardId.Task1 = 2000388
tAwardId.Task2  = 2000493
tAwardId.Task3  = 2000494
tAwardId.Task4  = 2000495
tAwardId.Task5  = 2000496
tAwardId.Task6  = 2000497
tAwardId.Task7  = 2000498
tAwardId.Task8  = 2000499
tAwardId.Task9  = 2000500
tAwardId.Task10 = 2000501
tAwardId.Task11 = 2000502
tAwardId.Task12 = 2000503
tAwardId.Task13 = 2000504
tAwardId.Task14 = 2000505
tAwardId.Task15 = 2000506
tAwardId.Task16 = 2000507
tAwardId.Task17 = 2000508
tAwardId.Task18 = 2000509
tAwardId.Task19 = 2000510
tAwardId.Task20 = 2000511
tAwardId.Task21 = 2000512
tAwardId.Task22 = 2000513
tAwardId.Task23 = 2000514
tAwardId.Task24 = 2000515
tAwardId.Task25 = 2000516
tAwardId.Task26 = 2000517
tAwardId.Task27 = 2000518
tAwardId.Task28 = 2000519
tAwardId.Task29 = 2000520
tAwardId.Task30 = 2000521

--怪物奖励
tAwardId.MonsterGroup2 = 2000389
tAwardId.MonsterGroup3 = 2000390
tAwardId.MonsterGroup4 = 2000391
tAwardId.MonsterGroup5 = 2000392
tAwardId.MonsterGroup6 = 2000393
tAwardId.MonsterGroup7 = 2000394
tAwardId.MonsterGroup8 = 2000395
tAwardId.MonsterGroup9 = 2000396
tAwardId.MonsterGroup10 = 2000397
tAwardId.MonsterGroup11 = 2000398
tAwardId.MonsterGroup12 = 2000399
tAwardId.MonsterGroup13 = 2000400
tAwardId.MonsterGroup14 = 2000401
tAwardId.MonsterGroup15 = 2000402
tAwardId.MonsterGroup16 = 2000403
tAwardId.MonsterGroup17 = 2000404
tAwardId.MonsterGroup18 = 2000405
tAwardId.MonsterGroup19 = 2000406
tAwardId.MonsterGroup20 = 2000407
tAwardId.MonsterGroup21 = 2000408
tAwardId.MonsterGroup22 = 2000409
tAwardId.MonsterGroup23 = 2000410
tAwardId.MonsterGroup24 = 2000411
tAwardId.MonsterGroup25 = 2000412
tAwardId.MonsterGroup26 = 2000413
tAwardId.MonsterGroup27 = 2000414
tAwardId.MonsterGroup28 = 2000415
tAwardId.MonsterGroup29 = 2000416
tAwardId.MonsterGroup30 = 2000417

----------任务标题id------------
local tTaskTitle = {}
tTaskTitle.Task1 = tLuaText[LANGUAGE_CONFIG][21620]
tTaskTitle.Task2 = tLuaText[LANGUAGE_CONFIG][21621]
tTaskTitle.Task3 = tLuaText[LANGUAGE_CONFIG][21622]
tTaskTitle.Task4 = tLuaText[LANGUAGE_CONFIG][21623]
tTaskTitle.Task5 = tLuaText[LANGUAGE_CONFIG][21624]
tTaskTitle.Task6 = tLuaText[LANGUAGE_CONFIG][21625]
tTaskTitle.Task7 = tLuaText[LANGUAGE_CONFIG][21626]
tTaskTitle.Task8 = tLuaText[LANGUAGE_CONFIG][21627]
tTaskTitle.Task9 = tLuaText[LANGUAGE_CONFIG][21628]
tTaskTitle.Task10 = tLuaText[LANGUAGE_CONFIG][21629]
tTaskTitle.Task11 = tLuaText[LANGUAGE_CONFIG][21630]
tTaskTitle.Task12 = tLuaText[LANGUAGE_CONFIG][21631]
tTaskTitle.Task13 = tLuaText[LANGUAGE_CONFIG][21632]
tTaskTitle.Task14 = tLuaText[LANGUAGE_CONFIG][21633]
tTaskTitle.Task15 = tLuaText[LANGUAGE_CONFIG][21634]
tTaskTitle.Task16 = tLuaText[LANGUAGE_CONFIG][21635]
tTaskTitle.Task17 = tLuaText[LANGUAGE_CONFIG][21636]
tTaskTitle.Task18 = tLuaText[LANGUAGE_CONFIG][21637]
tTaskTitle.Task19 = tLuaText[LANGUAGE_CONFIG][21638]
tTaskTitle.Task20 = tLuaText[LANGUAGE_CONFIG][21639]
tTaskTitle.Task21 = tLuaText[LANGUAGE_CONFIG][21640]
tTaskTitle.Task22 = tLuaText[LANGUAGE_CONFIG][21641]
tTaskTitle.Task23 = tLuaText[LANGUAGE_CONFIG][21642]
tTaskTitle.Task24 = tLuaText[LANGUAGE_CONFIG][21643]
tTaskTitle.Task25 = tLuaText[LANGUAGE_CONFIG][21644]
tTaskTitle.Task26 = tLuaText[LANGUAGE_CONFIG][21645]
tTaskTitle.Task27 = tLuaText[LANGUAGE_CONFIG][21646]
tTaskTitle.Task28 = tLuaText[LANGUAGE_CONFIG][21647]
tTaskTitle.Task29 = tLuaText[LANGUAGE_CONFIG][21648]
tTaskTitle.Task30 = tLuaText[LANGUAGE_CONFIG][21649]

--提交任务通用标题
tTaskTitle.Submit = tLuaText[LANGUAGE_CONFIG][21815]

--------悬赏id------------
local tArrestId = {}
tArrestId.Task1  = 11
tArrestId.Task2  = 12
tArrestId.Task3  = 13
tArrestId.Task4  = 21
tArrestId.Task5  = 22
tArrestId.Task6  = 23
tArrestId.Task7  = 31
tArrestId.Task8  = 32
tArrestId.Task9  = 33
tArrestId.Task10 = 41
tArrestId.Task11 = 42
tArrestId.Task12 = 43
tArrestId.Task13 = 51
tArrestId.Task14 = 52
tArrestId.Task15 = 53
tArrestId.Task16 = 61
tArrestId.Task17 = 62
tArrestId.Task18 = 63
tArrestId.Task19 = 71
tArrestId.Task20 = 72
tArrestId.Task21 = 73
tArrestId.Task22 = 81
tArrestId.Task23 = 82
tArrestId.Task24 = 83
tArrestId.Task25 = 91
tArrestId.Task26 = 92
tArrestId.Task27 = 93
tArrestId.Task28 = 101
tArrestId.Task29 = 102
tArrestId.Task30 = 103

------***************************逻辑***************************----
--陷阱
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}  
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

------***************************杀怪任务***************************----
--沙海苍鹰
rwtTask[tRewardTask.Task1] = {}
rwtTask[tRewardTask.Task1]["Title"] = tTaskTitle.Task1
rwtTask[tRewardTask.Task1]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tRewardTask.Task1]["NextTaskId"] = tRewardTaskFinish.Task1
rwtTask[tRewardTask.Task1]["AcceptDialogId"] = tAcceptDialog.Task1
rwtTask[tRewardTask.Task1]["DialogId"] = nBeforeBattleDialog_Task1
rwtTask[tRewardTask.Task1]["ReqTrap1"] = nTrap_1

rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task1
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][2] = {}
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_1
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task1]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTask.Task1]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTask.Task1]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[tRewardTask.Task1]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_1

rwtTask[tRewardTask.Task1]["NotGetLeagueExp"] = 1
rwtTask[tRewardTask.Task1]["Awards"] = {}
rwtTask[tRewardTask.Task1]["Awards"]["Events"] = {}
rwtTask[tRewardTask.Task1]["Awards"]["Events"][1] = {}
rwtTask[tRewardTask.Task1]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtTask[tRewardTask.Task1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 1026
rwtTask[tRewardTask.Task1]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
--rwtTask[tRewardTask.Task1]["Awards"]["Events"][1]["OpenDialog"] = {}
--rwtTask[tRewardTask.Task1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 12720
--rwtTask[tRewardTask.Task1]["Awards"]["Events"][1]["DynCreate"] = {20010255,20010256}

--暗夜魔导师
rwtTask[tRewardTask.Task2] = {}
rwtTask[tRewardTask.Task2]["Title"] = tTaskTitle.Task2
rwtTask[tRewardTask.Task2]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task2]["NextTaskId"] = tRewardTaskFinish.Task2
rwtTask[tRewardTask.Task2]["AcceptDialogId"] = tAcceptDialog.Task2

rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task2
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task2]["KillMonsterGroup1" ]= tMonsterGroup.Task2

rwtTask[tRewardTask.Task2]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task2]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task2
rwtTask[tRewardTask.Task2]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task2

--审判侍从
rwtTask[tRewardTask.Task3] = {}
rwtTask[tRewardTask.Task3]["Title"] = tTaskTitle.Task3
rwtTask[tRewardTask.Task3]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task3]["NextTaskId"] = tRewardTaskFinish.Task3
rwtTask[tRewardTask.Task3]["AcceptDialogId"] = tAcceptDialog.Task3

rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task3
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task3]["KillMonsterGroup1" ]= tMonsterGroup.Task3

rwtTask[tRewardTask.Task3]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task3]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task3
rwtTask[tRewardTask.Task3]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task3


--荒漠领主纳伏
rwtTask[tRewardTask.Task4] = {}
rwtTask[tRewardTask.Task4]["Title"] = tTaskTitle.Task4
rwtTask[tRewardTask.Task4]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task4]["NextTaskId"] = tRewardTaskFinish.Task4
rwtTask[tRewardTask.Task4]["AcceptDialogId"] = tAcceptDialog.Task4

rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task4
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task4]["KillMonsterGroup1" ]= tMonsterGroup.Task4

rwtTask[tRewardTask.Task4]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task4]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task4
rwtTask[tRewardTask.Task4]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task4

--迷梦蛛王黛娜
rwtTask[tRewardTask.Task5] = {}
rwtTask[tRewardTask.Task5]["Title"] = tTaskTitle.Task5
rwtTask[tRewardTask.Task5]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task5]["NextTaskId"] = tRewardTaskFinish.Task5
rwtTask[tRewardTask.Task5]["AcceptDialogId"] = tAcceptDialog.Task5
rwtTask[tRewardTask.Task5]["AcceptDelDynaObj"] = tReplaceMonsterGroupGen.Task5

rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task5
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task5]["KillMonsterGroup1" ]= tMonsterGroup.Task5

rwtTask[tRewardTask.Task5]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task5]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task5
rwtTask[tRewardTask.Task5]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task5

--梦魇女巫薇拉
rwtTask[tRewardTask.Task6] = {}
rwtTask[tRewardTask.Task6]["Title"] = tTaskTitle.Task6
rwtTask[tRewardTask.Task6]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task6]["NextTaskId"] = tRewardTaskFinish.Task6
rwtTask[tRewardTask.Task6]["AcceptDialogId"] = tAcceptDialog.Task6

rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task6
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task6]["KillMonsterGroup1" ]= tMonsterGroup.Task6

rwtTask[tRewardTask.Task6]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task6]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task6]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task6
rwtTask[tRewardTask.Task6]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task6

--莽荒战神肖恩
rwtTask[tRewardTask.Task7] = {}
rwtTask[tRewardTask.Task7]["Title"] = tTaskTitle.Task7
rwtTask[tRewardTask.Task7]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task7]["NextTaskId"] = tRewardTaskFinish.Task7
rwtTask[tRewardTask.Task7]["AcceptDialogId"] = tAcceptDialog.Task7

rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task7
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task7]["KillMonsterGroup1" ]= tMonsterGroup.Task7

rwtTask[tRewardTask.Task7]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task7]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task7]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task7]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task7
rwtTask[tRewardTask.Task7]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task7

--妖媚舞姬凯琳
rwtTask[tRewardTask.Task8] = {}
rwtTask[tRewardTask.Task8]["Title"] = tTaskTitle.Task8
rwtTask[tRewardTask.Task8]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task8]["NextTaskId"] = tRewardTaskFinish.Task8
rwtTask[tRewardTask.Task8]["AcceptDialogId"] = tAcceptDialog.Task8
rwtTask[tRewardTask.Task8]["AcceptDelDynaObj"] = tReplaceMonsterGroupGen.Task8

rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task8
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task8]["KillMonsterGroup1" ]= tMonsterGroup.Task8

rwtTask[tRewardTask.Task8]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task8]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task8]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task8]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task8
rwtTask[tRewardTask.Task8]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task8

--枯骨毒蜂克莱儿
rwtTask[tRewardTask.Task9] = {}
rwtTask[tRewardTask.Task9]["Title"] = tTaskTitle.Task9
rwtTask[tRewardTask.Task9]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task9]["NextTaskId"] = tRewardTaskFinish.Task9
rwtTask[tRewardTask.Task9]["AcceptDialogId"] = tAcceptDialog.Task9

rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task9
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task9]["KillMonsterGroup1" ]= tMonsterGroup.Task9

rwtTask[tRewardTask.Task9]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task9]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task9]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task9]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task9
rwtTask[tRewardTask.Task9]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task9

--骑士副官索隆
rwtTask[tRewardTask.Task10] = {}
rwtTask[tRewardTask.Task10]["Title"] = tTaskTitle.Task10
rwtTask[tRewardTask.Task10]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task10]["NextTaskId"] = tRewardTaskFinish.Task10
rwtTask[tRewardTask.Task10]["AcceptDialogId"] = tAcceptDialog.Task10

rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task10
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task10]["KillMonsterGroup1" ]= tMonsterGroup.Task10

rwtTask[tRewardTask.Task10]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task10]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task10]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task10]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task10
rwtTask[tRewardTask.Task10]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task10

--石翼暴君沃冈
rwtTask[tRewardTask.Task11] = {}
rwtTask[tRewardTask.Task11]["Title"] = tTaskTitle.Task11
rwtTask[tRewardTask.Task11]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task11]["NextTaskId"] = tRewardTaskFinish.Task11
rwtTask[tRewardTask.Task11]["AcceptDialogId"] = tAcceptDialog.Task11

rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task11
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task11]["KillMonsterGroup1" ]= tMonsterGroup.Task11

rwtTask[tRewardTask.Task11]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task11]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task11]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task11]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task11
rwtTask[tRewardTask.Task11]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task11

--邪灵法师艾德
rwtTask[tRewardTask.Task12] = {}
rwtTask[tRewardTask.Task12]["Title"] = tTaskTitle.Task12
rwtTask[tRewardTask.Task12]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task12]["NextTaskId"] = tRewardTaskFinish.Task12
rwtTask[tRewardTask.Task12]["AcceptDialogId"] = tAcceptDialog.Task12
rwtTask[tRewardTask.Task12]["AcceptDelDynaObj"] = tReplaceMonsterGroupGen.Task12

rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task12
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task12]["KillMonsterGroup1" ]= tMonsterGroup.Task12

rwtTask[tRewardTask.Task12]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task12]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task12]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task12]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task12
rwtTask[tRewardTask.Task12]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task12

--丧魂暴君亚尔林
rwtTask[tRewardTask.Task13] = {}
rwtTask[tRewardTask.Task13]["Title"] = tTaskTitle.Task13
rwtTask[tRewardTask.Task13]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task13]["NextTaskId"] = tRewardTaskFinish.Task13
rwtTask[tRewardTask.Task13]["AcceptDialogId"] = tAcceptDialog.Task13

rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task13
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task13]["KillMonsterGroup1" ]= tMonsterGroup.Task13

rwtTask[tRewardTask.Task13]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task13]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task13]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task13]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task13
rwtTask[tRewardTask.Task13]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task13

--秘巫使徒洛兰
rwtTask[tRewardTask.Task14] = {}
rwtTask[tRewardTask.Task14]["Title"] = tTaskTitle.Task14
rwtTask[tRewardTask.Task14]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task14]["NextTaskId"] = tRewardTaskFinish.Task14
rwtTask[tRewardTask.Task14]["AcceptDialogId"] = tAcceptDialog.Task14

rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task14
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task14]["KillMonsterGroup1" ]= tMonsterGroup.Task14

rwtTask[tRewardTask.Task14]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task14]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task14]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task14]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task14
rwtTask[tRewardTask.Task14]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task14

--恶魔之子巴特莱
rwtTask[tRewardTask.Task15] = {}
rwtTask[tRewardTask.Task15]["Title"] = tTaskTitle.Task15
rwtTask[tRewardTask.Task15]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task15]["NextTaskId"] = tRewardTaskFinish.Task15
rwtTask[tRewardTask.Task15]["AcceptDialogId"] = tAcceptDialog.Task15
rwtTask[tRewardTask.Task15]["AcceptDelDynaObj"] = tReplaceMonsterGroupGen.Task15

rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task15
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task15]["KillMonsterGroup1" ]= tMonsterGroup.Task15

rwtTask[tRewardTask.Task15]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task15]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task15]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task15]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task15
rwtTask[tRewardTask.Task15]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task15

-- 熊人首领詹森
rwtTask[tRewardTask.Task16] = {}
rwtTask[tRewardTask.Task16]["Title"] = tTaskTitle.Task16
rwtTask[tRewardTask.Task16]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task16]["NextTaskId"] = tRewardTaskFinish.Task16
rwtTask[tRewardTask.Task16]["AcceptDialogId"] = tAcceptDialog.Task16

rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task16
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task16]["KillMonsterGroup1" ]= tMonsterGroup.Task16

rwtTask[tRewardTask.Task16]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task16]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task16]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task16]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task16
rwtTask[tRewardTask.Task16]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task16


--战魂统领马修
rwtTask[tRewardTask.Task17] = {}
rwtTask[tRewardTask.Task17]["Title"] = tTaskTitle.Task17
rwtTask[tRewardTask.Task17]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task17]["NextTaskId"] = tRewardTaskFinish.Task17
rwtTask[tRewardTask.Task17]["AcceptDialogId"] = tAcceptDialog.Task17

rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task17
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task17]["KillMonsterGroup1" ]= tMonsterGroup.Task17

rwtTask[tRewardTask.Task17]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task17]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task17]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task17]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task17
rwtTask[tRewardTask.Task17]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task17


--赤角狂兽
rwtTask[tRewardTask.Task18] = {}
rwtTask[tRewardTask.Task18]["Title"] = tTaskTitle.Task18
rwtTask[tRewardTask.Task18]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task18]["NextTaskId"] = tRewardTaskFinish.Task18
rwtTask[tRewardTask.Task18]["AcceptDialogId"] = tAcceptDialog.Task18
rwtTask[tRewardTask.Task18]["AcceptDelDynaObj"] = tReplaceMonsterGroupGen.Task18

rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task18
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task18]["KillMonsterGroup1" ]= tMonsterGroup.Task18

rwtTask[tRewardTask.Task18]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task18]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task18]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task18]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task18
rwtTask[tRewardTask.Task18]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task18



--爆炎男爵
rwtTask[tRewardTask.Task19] = {}
rwtTask[tRewardTask.Task19]["Title"] = tTaskTitle.Task19
rwtTask[tRewardTask.Task19]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task19]["NextTaskId"] = tRewardTaskFinish.Task19
rwtTask[tRewardTask.Task19]["AcceptDialogId"] = tAcceptDialog.Task19

rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task19
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task19]["KillMonsterGroup1" ]= tMonsterGroup.Task19

rwtTask[tRewardTask.Task19]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task19]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task19]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task19]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task19
rwtTask[tRewardTask.Task19]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task19



--欲望男爵
rwtTask[tRewardTask.Task20] = {}
rwtTask[tRewardTask.Task20]["Title"] = tTaskTitle.Task20
rwtTask[tRewardTask.Task20]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task20]["NextTaskId"] = tRewardTaskFinish.Task20
rwtTask[tRewardTask.Task20]["AcceptDialogId"] = tAcceptDialog.Task20

rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task20
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task20]["KillMonsterGroup1" ]= tMonsterGroup.Task20

rwtTask[tRewardTask.Task20]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task20]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task20]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task20]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task20
rwtTask[tRewardTask.Task20]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task20


-- 暮夜蜂王
rwtTask[tRewardTask.Task21] = {}
rwtTask[tRewardTask.Task21]["Title"] = tTaskTitle.Task21
rwtTask[tRewardTask.Task21]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task21]["NextTaskId"] = tRewardTaskFinish.Task21
rwtTask[tRewardTask.Task21]["AcceptDialogId"] = tAcceptDialog.Task21
rwtTask[tRewardTask.Task21]["AcceptDelDynaObj"] = tReplaceMonsterGroupGen.Task21

rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task21
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task21]["KillMonsterGroup1" ]= tMonsterGroup.Task21

rwtTask[tRewardTask.Task21]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task21]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task21]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task21]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task21
rwtTask[tRewardTask.Task21]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task21



--狂战指挥官
rwtTask[tRewardTask.Task22] = {}
rwtTask[tRewardTask.Task22]["Title"] = tTaskTitle.Task22
rwtTask[tRewardTask.Task22]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task22]["NextTaskId"] = tRewardTaskFinish.Task22
rwtTask[tRewardTask.Task22]["AcceptDialogId"] = tAcceptDialog.Task22

rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task22
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task22]["KillMonsterGroup1" ]= tMonsterGroup.Task22

rwtTask[tRewardTask.Task22]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task22]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task22]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task22]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task22
rwtTask[tRewardTask.Task22]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task22



--尖啸游隼
rwtTask[tRewardTask.Task23] = {}
rwtTask[tRewardTask.Task23]["Title"] = tTaskTitle.Task23
rwtTask[tRewardTask.Task23]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task23]["NextTaskId"] = tRewardTaskFinish.Task23
rwtTask[tRewardTask.Task23]["AcceptDialogId"] = tAcceptDialog.Task23
rwtTask[tRewardTask.Task23]["AcceptDelDynaObj"] = tReplaceMonsterGroupGen.Task23


rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task23
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task23]["KillMonsterGroup1" ]= tMonsterGroup.Task23

rwtTask[tRewardTask.Task23]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task23]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task23]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task23]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task23
rwtTask[tRewardTask.Task23]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task23



--狂乱研究者
rwtTask[tRewardTask.Task24] = {}
rwtTask[tRewardTask.Task24]["Title"] = tTaskTitle.Task24
rwtTask[tRewardTask.Task24]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task24]["NextTaskId"] = tRewardTaskFinish.Task24
rwtTask[tRewardTask.Task24]["AcceptDialogId"] = tAcceptDialog.Task24

rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task24
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task24]["KillMonsterGroup1" ]= tMonsterGroup.Task24

rwtTask[tRewardTask.Task24]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task24]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task24]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task24]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task24
rwtTask[tRewardTask.Task24]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task24



--暗幕蝎王
rwtTask[tRewardTask.Task25] = {}
rwtTask[tRewardTask.Task25]["Title"] = tTaskTitle.Task25
rwtTask[tRewardTask.Task25]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task25]["NextTaskId"] = tRewardTaskFinish.Task25
rwtTask[tRewardTask.Task25]["AcceptDialogId"] = tAcceptDialog.Task25

rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task25
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task25]["KillMonsterGroup1" ]= tMonsterGroup.Task25

rwtTask[tRewardTask.Task25]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task25]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task25]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task25]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task25
rwtTask[tRewardTask.Task25]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task25




--深渊领主
rwtTask[tRewardTask.Task26] = {}
rwtTask[tRewardTask.Task26]["Title"] = tTaskTitle.Task26
rwtTask[tRewardTask.Task26]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task26]["NextTaskId"] = tRewardTaskFinish.Task26
rwtTask[tRewardTask.Task26]["AcceptDialogId"] = tAcceptDialog.Task26

rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task26
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task26]["KillMonsterGroup1" ]= tMonsterGroup.Task26

rwtTask[tRewardTask.Task26]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task26]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task26]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task26]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task26
rwtTask[tRewardTask.Task26]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task26



-- 暗黑骑士长
rwtTask[tRewardTask.Task27] = {}
rwtTask[tRewardTask.Task27]["Title"] = tTaskTitle.Task27
rwtTask[tRewardTask.Task27]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task27]["NextTaskId"] = tRewardTaskFinish.Task27
rwtTask[tRewardTask.Task27]["AcceptDialogId"] = tAcceptDialog.Task27
rwtTask[tRewardTask.Task27]["AcceptDelDynaObj"] = tReplaceMonsterGroupGen.Task27

rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task27
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task27]["KillMonsterGroup1" ]= tMonsterGroup.Task27

rwtTask[tRewardTask.Task27]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task27]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task27]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task27]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task27
rwtTask[tRewardTask.Task27]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task27



--魅魔使徒
rwtTask[tRewardTask.Task28] = {}
rwtTask[tRewardTask.Task28]["Title"] = tTaskTitle.Task28
rwtTask[tRewardTask.Task28]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task28]["NextTaskId"] = tRewardTaskFinish.Task28
rwtTask[tRewardTask.Task28]["AcceptDialogId"] = tAcceptDialog.Task28

rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task28
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task28]["KillMonsterGroup1" ]= tMonsterGroup.Task28

rwtTask[tRewardTask.Task28]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task28]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task28]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task28]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task28
rwtTask[tRewardTask.Task28]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task28



--铁骑领主
rwtTask[tRewardTask.Task29] = {}
rwtTask[tRewardTask.Task29]["Title"] = tTaskTitle.Task29
rwtTask[tRewardTask.Task29]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task29]["NextTaskId"] = tRewardTaskFinish.Task29
rwtTask[tRewardTask.Task29]["AcceptDialogId"] = tAcceptDialog.Task29

rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task29
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task29]["KillMonsterGroup1" ]= tMonsterGroup.Task29

rwtTask[tRewardTask.Task29]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task29]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task29]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task29]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task29
rwtTask[tRewardTask.Task29]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task29



--枭鹰霸主
rwtTask[tRewardTask.Task30] = {}
rwtTask[tRewardTask.Task30]["Title"] = tTaskTitle.Task30
rwtTask[tRewardTask.Task30]["TaskType"] = CONST_TASK_TYPE.REWARD_KILLMONSTOR
rwtTask[tRewardTask.Task30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task30]["NextTaskId"] = tRewardTaskFinish.Task30
rwtTask[tRewardTask.Task30]["AcceptDialogId"] = tAcceptDialog.Task30

rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task30
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task30]["KillMonsterGroup1" ]= tMonsterGroup.Task30

rwtTask[tRewardTask.Task30]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task30]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task30]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tRewardTask.Task30]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task30
rwtTask[tRewardTask.Task30]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task30


------***************************回复NPC任务***************************----
--沙海苍鹰伊妮
rwtTask[tRewardTaskFinish.Task1] = {}
rwtTask[tRewardTaskFinish.Task1]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task1]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task1]["PreTaskId"] = tRewardTask.Task1
rwtTask[tRewardTaskFinish.Task1]["NextTaskId"] = 70519
rwtTask[tRewardTaskFinish.Task1]["DialogId"] = tFinishDialog.Task1
rwtTask[tRewardTaskFinish.Task1]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task1]["ArrestId"] = tArrestId.Task1

rwtTask[tRewardTaskFinish.Task1]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task1]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task1]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task1]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task1]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task1
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task1
rwtTask[tRewardTaskFinish.Task1]["FinalReward"] = 1


--暗夜魔导师特里
rwtTask[tRewardTaskFinish.Task2] = {}
rwtTask[tRewardTaskFinish.Task2]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task2]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task2]["PreTaskId"] = tRewardTask.Task2
rwtTask[tRewardTaskFinish.Task2]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task2]["DialogId"] = tFinishDialog.Task2

rwtTask[tRewardTaskFinish.Task2]["ArrestId"] = tArrestId.Task2

rwtTask[tRewardTaskFinish.Task2]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task2]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task2]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task2]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task2
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task2



--审判侍从伊戈尔
rwtTask[tRewardTaskFinish.Task3] = {}
rwtTask[tRewardTaskFinish.Task3]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task3]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task3]["PreTaskId"] = tRewardTask.Task3
rwtTask[tRewardTaskFinish.Task3]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task3]["DialogId"] = tFinishDialog.Task3

rwtTask[tRewardTaskFinish.Task3]["ArrestId"] = tArrestId.Task3

rwtTask[tRewardTaskFinish.Task3]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task3]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task3]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task3]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task3]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task3
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task3



--荒漠领主纳伏
rwtTask[tRewardTaskFinish.Task4] = {}
rwtTask[tRewardTaskFinish.Task4]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task4]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task4]["PreTaskId"] = tRewardTask.Task4
rwtTask[tRewardTaskFinish.Task4]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task4]["DialogId"] = tFinishDialog.Task4

rwtTask[tRewardTaskFinish.Task4]["ArrestId"] = tArrestId.Task4

rwtTask[tRewardTaskFinish.Task4]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task4]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task4]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task4]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task4]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task4
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task4



--迷梦蛛王黛娜
rwtTask[tRewardTaskFinish.Task5] = {}
rwtTask[tRewardTaskFinish.Task5]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task5]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task5]["PreTaskId"] = tRewardTask.Task5
rwtTask[tRewardTaskFinish.Task5]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task5]["DialogId"] = tFinishDialog.Task5

rwtTask[tRewardTaskFinish.Task5]["ArrestId"] = tArrestId.Task5

rwtTask[tRewardTaskFinish.Task5]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task5]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task5]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task5]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task5]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task5
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task5



--梦魇女巫薇拉
rwtTask[tRewardTaskFinish.Task6] = {}
rwtTask[tRewardTaskFinish.Task6]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task6]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task6]["PreTaskId"] = tRewardTask.Task6
rwtTask[tRewardTaskFinish.Task6]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task6]["DialogId"] = tFinishDialog.Task6

rwtTask[tRewardTaskFinish.Task6]["ArrestId"] = tArrestId.Task6

rwtTask[tRewardTaskFinish.Task6]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task6]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task6]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task6]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task6]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task6
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task6



--莽荒战神肖恩
rwtTask[tRewardTaskFinish.Task7] = {}
rwtTask[tRewardTaskFinish.Task7]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task7]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task7]["PreTaskId"] = tRewardTask.Task7
rwtTask[tRewardTaskFinish.Task7]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task7]["DialogId"] = tFinishDialog.Task7      

rwtTask[tRewardTaskFinish.Task7]["ArrestId"] = tArrestId.Task7 

rwtTask[tRewardTaskFinish.Task7]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task7]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task7]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task7]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task7]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task7
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task7



--妖媚舞姬凯琳
rwtTask[tRewardTaskFinish.Task8] = {}
rwtTask[tRewardTaskFinish.Task8]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task8]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task8]["PreTaskId"] = tRewardTask.Task8
rwtTask[tRewardTaskFinish.Task8]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task8]["DialogId"] = tFinishDialog.Task8      

rwtTask[tRewardTaskFinish.Task8]["ArrestId"] = tArrestId.Task8

rwtTask[tRewardTaskFinish.Task8]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task8]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task8]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task8]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task8]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task8
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task8



--枯骨毒蜂克莱儿
rwtTask[tRewardTaskFinish.Task9] = {}
rwtTask[tRewardTaskFinish.Task9]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task9]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task9]["PreTaskId"] = tRewardTask.Task9
rwtTask[tRewardTaskFinish.Task9]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task9]["DialogId"] = tFinishDialog.Task9      

rwtTask[tRewardTaskFinish.Task9]["ArrestId"] = tArrestId.Task9

rwtTask[tRewardTaskFinish.Task9]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task9]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task9]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task9]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task9]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task9
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task9



--骑士副官索隆
rwtTask[tRewardTaskFinish.Task10] = {}
rwtTask[tRewardTaskFinish.Task10]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task10]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task10]["PreTaskId"] = tRewardTask.Task10
rwtTask[tRewardTaskFinish.Task10]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task10]["DialogId"] = tFinishDialog.Task10    

rwtTask[tRewardTaskFinish.Task10]["ArrestId"] = tArrestId.Task10

rwtTask[tRewardTaskFinish.Task10]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task10]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task10]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task10]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task10]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task10
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task10



--石翼暴君沃冈
rwtTask[tRewardTaskFinish.Task11] = {}
rwtTask[tRewardTaskFinish.Task11]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task11]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task11]["PreTaskId"] = tRewardTask.Task11
rwtTask[tRewardTaskFinish.Task11]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task11]["DialogId"] = tFinishDialog.Task11      

rwtTask[tRewardTaskFinish.Task11]["ArrestId"] = tArrestId.Task11

rwtTask[tRewardTaskFinish.Task11]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task11]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task11]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task11]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task11]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task11]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task11
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task11



--邪灵法师艾德
rwtTask[tRewardTaskFinish.Task12] = {}
rwtTask[tRewardTaskFinish.Task12]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task12]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task12]["PreTaskId"] = tRewardTask.Task12
rwtTask[tRewardTaskFinish.Task12]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task12]["DialogId"] = tFinishDialog.Task12    

rwtTask[tRewardTaskFinish.Task12]["ArrestId"] = tArrestId.Task12

rwtTask[tRewardTaskFinish.Task12]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task12]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task12]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task12]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task12]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task12]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task12
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task12



--丧魂暴君亚尔林
rwtTask[tRewardTaskFinish.Task13] = {}
rwtTask[tRewardTaskFinish.Task13]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task13]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task13]["PreTaskId"] = tRewardTask.Task13
rwtTask[tRewardTaskFinish.Task13]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task13]["DialogId"] = tFinishDialog.Task13    

rwtTask[tRewardTaskFinish.Task13]["ArrestId"] = tArrestId.Task13

rwtTask[tRewardTaskFinish.Task13]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task13]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task13]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task13]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task13]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task13]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task13
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task13



--秘巫使徒洛兰
rwtTask[tRewardTaskFinish.Task14] = {}
rwtTask[tRewardTaskFinish.Task14]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task14]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task14]["PreTaskId"] = tRewardTask.Task14
rwtTask[tRewardTaskFinish.Task14]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task14]["DialogId"] = tFinishDialog.Task14    

rwtTask[tRewardTaskFinish.Task14]["ArrestId"] = tArrestId.Task14

rwtTask[tRewardTaskFinish.Task14]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task14]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task14]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task14]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task14]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task14]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task14
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task14



--恶魔之子巴特莱
rwtTask[tRewardTaskFinish.Task15] = {}
rwtTask[tRewardTaskFinish.Task15]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task15]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task15]["PreTaskId"] = tRewardTask.Task15
rwtTask[tRewardTaskFinish.Task15]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task15]["DialogId"] = tFinishDialog.Task15    

rwtTask[tRewardTaskFinish.Task15]["ArrestId"] = tArrestId.Task15

rwtTask[tRewardTaskFinish.Task15]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task15]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task15]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task15]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task15]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task15]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task15
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task15


--熊人首领
rwtTask[tRewardTaskFinish.Task16] = {}
rwtTask[tRewardTaskFinish.Task16]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task16]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task16]["PreTaskId"] = tRewardTask.Task16
rwtTask[tRewardTaskFinish.Task16]["DialogId"] = tFinishDialog.Task16
rwtTask[tRewardTaskFinish.Task16]["TaskNpc"] = tNpcId[1]  

rwtTask[tRewardTaskFinish.Task16]["ArrestId"] = tArrestId.Task16

rwtTask[tRewardTaskFinish.Task16]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task16]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task16]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task16]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task16]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task16]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task16
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task16


--战魂统领
rwtTask[tRewardTaskFinish.Task17] = {}
rwtTask[tRewardTaskFinish.Task17]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task17]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task17]["PreTaskId"] = tRewardTask.Task17
rwtTask[tRewardTaskFinish.Task17]["DialogId"] = tFinishDialog.Task17
rwtTask[tRewardTaskFinish.Task17]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task17]["ArrestId"] = tArrestId.Task17

rwtTask[tRewardTaskFinish.Task17]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task17]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task17]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task17]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task17]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task17]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task17
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task17


--赤角狂兽
rwtTask[tRewardTaskFinish.Task18] = {}
rwtTask[tRewardTaskFinish.Task18]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task18]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task18]["PreTaskId"] = tRewardTask.Task18
rwtTask[tRewardTaskFinish.Task18]["DialogId"] = tFinishDialog.Task18
rwtTask[tRewardTaskFinish.Task18]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task18]["ArrestId"] = tArrestId.Task18

rwtTask[tRewardTaskFinish.Task18]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task18]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task18]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task18]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task18]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task18]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task18
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task18


--爆炎男爵
rwtTask[tRewardTaskFinish.Task19] = {}
rwtTask[tRewardTaskFinish.Task19]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task19]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task19]["PreTaskId"] = tRewardTask.Task19
rwtTask[tRewardTaskFinish.Task19]["DialogId"] = tFinishDialog.Task19
rwtTask[tRewardTaskFinish.Task19]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task19]["ArrestId"] = tArrestId.Task19

rwtTask[tRewardTaskFinish.Task19]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task19]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task19]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task19]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task19]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task19]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task19
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task19


--欲望男爵
rwtTask[tRewardTaskFinish.Task20] = {}
rwtTask[tRewardTaskFinish.Task20]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task20]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task20]["PreTaskId"] = tRewardTask.Task20
rwtTask[tRewardTaskFinish.Task20]["DialogId"] = tFinishDialog.Task20
rwtTask[tRewardTaskFinish.Task20]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task20]["ArrestId"] = tArrestId.Task20

rwtTask[tRewardTaskFinish.Task20]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task20]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task20]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task20]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task20]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task20]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task20
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task20


--暮夜蜂王
rwtTask[tRewardTaskFinish.Task21] = {}
rwtTask[tRewardTaskFinish.Task21]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task21]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task21]["PreTaskId"] = tRewardTask.Task21
rwtTask[tRewardTaskFinish.Task21]["DialogId"] = tFinishDialog.Task21
rwtTask[tRewardTaskFinish.Task21]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task21]["ArrestId"] = tArrestId.Task21

rwtTask[tRewardTaskFinish.Task21]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task21]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task21]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task21]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task21]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task21]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task21
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task21

--狂战指挥官
rwtTask[tRewardTaskFinish.Task22] = {}
rwtTask[tRewardTaskFinish.Task22]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task22]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task22]["PreTaskId"] = tRewardTask.Task22
rwtTask[tRewardTaskFinish.Task22]["DialogId"] = tFinishDialog.Task22
rwtTask[tRewardTaskFinish.Task22]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task22]["ArrestId"] = tArrestId.Task22

rwtTask[tRewardTaskFinish.Task22]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task22]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task22]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task22]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task22]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task22]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task22
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task22

--尖啸游隼
rwtTask[tRewardTaskFinish.Task23] = {}
rwtTask[tRewardTaskFinish.Task23]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task23]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task23]["PreTaskId"] = tRewardTask.Task23
rwtTask[tRewardTaskFinish.Task23]["DialogId"] = tFinishDialog.Task23
rwtTask[tRewardTaskFinish.Task23]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task23]["ArrestId"] = tArrestId.Task23

rwtTask[tRewardTaskFinish.Task23]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task23]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task23]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task23]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task23]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task23]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task23
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task23

--狂乱研究者
rwtTask[tRewardTaskFinish.Task24] = {}
rwtTask[tRewardTaskFinish.Task24]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task24]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task24]["PreTaskId"] = tRewardTask.Task24
rwtTask[tRewardTaskFinish.Task24]["DialogId"] = tFinishDialog.Task24
rwtTask[tRewardTaskFinish.Task24]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task24]["ArrestId"] = tArrestId.Task24

rwtTask[tRewardTaskFinish.Task24]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task24]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task24]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task24]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task24]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task24]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task24
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task24

--暗幕蝎王
rwtTask[tRewardTaskFinish.Task25] = {}
rwtTask[tRewardTaskFinish.Task25]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task25]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task25]["PreTaskId"] = tRewardTask.Task25
rwtTask[tRewardTaskFinish.Task25]["DialogId"] = tFinishDialog.Task25
rwtTask[tRewardTaskFinish.Task25]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task25]["ArrestId"] = tArrestId.Task25

rwtTask[tRewardTaskFinish.Task25]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task25]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task25]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task25]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task25]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task25]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task25
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task25

--深渊领主
rwtTask[tRewardTaskFinish.Task26] = {}
rwtTask[tRewardTaskFinish.Task26]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task26]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task26]["PreTaskId"] = tRewardTask.Task26
rwtTask[tRewardTaskFinish.Task26]["DialogId"] = tFinishDialog.Task26
rwtTask[tRewardTaskFinish.Task26]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task26]["ArrestId"] = tArrestId.Task26

rwtTask[tRewardTaskFinish.Task26]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task26]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task26]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task26]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task26]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task26]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task26
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task26

--暗黑骑士长
rwtTask[tRewardTaskFinish.Task27] = {}
rwtTask[tRewardTaskFinish.Task27]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task27]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task27]["PreTaskId"] = tRewardTask.Task27
rwtTask[tRewardTaskFinish.Task27]["DialogId"] = tFinishDialog.Task27
rwtTask[tRewardTaskFinish.Task27]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task27]["ArrestId"] = tArrestId.Task27

rwtTask[tRewardTaskFinish.Task27]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task27]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task27]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task27]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task27]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task27]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task27
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task27

--魅魔使徒
rwtTask[tRewardTaskFinish.Task28] = {}
rwtTask[tRewardTaskFinish.Task28]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task28]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task28]["PreTaskId"] = tRewardTask.Task28
rwtTask[tRewardTaskFinish.Task28]["DialogId"] = tFinishDialog.Task28
rwtTask[tRewardTaskFinish.Task28]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task28]["ArrestId"] = tArrestId.Task28

rwtTask[tRewardTaskFinish.Task28]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task28]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task28]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task28]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task28]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task28]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task28
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task28

--铁骑领主
rwtTask[tRewardTaskFinish.Task29] = {}
rwtTask[tRewardTaskFinish.Task29]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task29]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task29]["PreTaskId"] = tRewardTask.Task29
rwtTask[tRewardTaskFinish.Task29]["DialogId"] = tFinishDialog.Task29
rwtTask[tRewardTaskFinish.Task29]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task29]["ArrestId"] = tArrestId.Task29

rwtTask[tRewardTaskFinish.Task29]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task29]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task29]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task29]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task29]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task29]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task29
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task29

--枭鹰霸主
rwtTask[tRewardTaskFinish.Task30] = {}
rwtTask[tRewardTaskFinish.Task30]["Title"] = tTaskTitle.Submit
rwtTask[tRewardTaskFinish.Task30]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task30]["PreTaskId"] = tRewardTask.Task30
rwtTask[tRewardTaskFinish.Task30]["DialogId"] = tFinishDialog.Task30
rwtTask[tRewardTaskFinish.Task30]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task30]["ArrestId"] = tArrestId.Task30

-- rwtTask[tRewardTaskFinish.Task30]["FinalReward"] = 1

rwtTask[tRewardTaskFinish.Task30]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task30]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task30]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task30]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task30]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task30]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task30
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task30



------测试函数，删除玩家身上的支线
----function rwTest_DeleteZhiXian()
----    local tTaskList = rwTaskGetListByType(CONST_TASK_TYPE.SIDE)
----    for i = 1,#tTaskList do
----        if rwTaskIsAccept(tTaskList[i]) then
----            rwTaskDelete(tTaskList[i])
----        end
----    end
----end


----测试函数，解锁全部传送阵
--function rwTest_UnlockAllChuanSongZhen()
--for i,v in pairs (CONST_TRANSFER_INDEX) do
--    rwSetTransferMask(v)
--end
--end


----测试函数，完成当前悬赏任务
--function rwTest_FinishlocalRewardTask()
--   local tTaskList = rwTaskGetListByType(CONST_TASK_TYPE.REWARD)
--    if tTaskList ~= nil and #tTaskList > 0 then
--        for i = 1,#tTaskList do
--            rwTaskSetData(tTaskList[i], 2, 2)
--        end
--    end
--end



